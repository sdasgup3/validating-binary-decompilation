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

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40fc80.fastlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x99da04_type = type <{ [4 x i8] }>
@G_0x99da04= global %G_0x99da04_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x99da08_type = type <{ [4 x i8] }>
@G_0x99da08= global %G_0x99da08_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x57a16e_type = type <{ [8 x i8] }>
@G__0x57a16e= global %G__0x57a16e_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57a4be_type = type <{ [8 x i8] }>
@G__0x57a4be= global %G__0x57a4be_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57a4f4_type = type <{ [8 x i8] }>
@G__0x57a4f4= global %G__0x57a4f4_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xa7f430_type = type <{ [8 x i8] }>
@G__0xa7f430= global %G__0xa7f430_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @accuratelib(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .accuratelib:	 RIP: 412080	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 412080	 Bytes: 1
  %loadMem_412080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412080 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412080)
  store %struct.Memory* %call_412080, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 412081	 Bytes: 3
  %loadMem_412081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412081 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412081)
  store %struct.Memory* %call_412081, %struct.Memory** %MEMORY

  ; Code: subq $0x90, %rsp	 RIP: 412084	 Bytes: 7
  %loadMem_412084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412084 = call %struct.Memory* @routine_subq__0x90___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412084)
  store %struct.Memory* %call_412084, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x8(%rbp)	 RIP: 41208b	 Bytes: 3
  %loadMem_41208b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41208b = call %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41208b)
  store %struct.Memory* %call_41208b, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0xc(%rbp)	 RIP: 41208e	 Bytes: 3
  %loadMem_41208e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41208e = call %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41208e)
  store %struct.Memory* %call_41208e, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x10(%rbp)	 RIP: 412091	 Bytes: 3
  %loadMem_412091 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412091 = call %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412091)
  store %struct.Memory* %call_412091, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x18(%rbp)	 RIP: 412094	 Bytes: 4
  %loadMem_412094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412094 = call %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412094)
  store %struct.Memory* %call_412094, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 412098	 Bytes: 7
  %loadMem_412098 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412098 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412098)
  store %struct.Memory* %call_412098, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x44(%rbp)	 RIP: 41209f	 Bytes: 7
  %loadMem_41209f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41209f = call %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41209f)
  store %struct.Memory* %call_41209f, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4120a6	 Bytes: 4
  %loadMem_4120a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120a6 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120a6)
  store %struct.Memory* %call_4120a6, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %edx	 RIP: 4120aa	 Bytes: 8
  %loadMem_4120aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120aa = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120aa)
  store %struct.Memory* %call_4120aa, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 4120b2	 Bytes: 3
  %loadMem_4120b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120b2 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120b2)
  store %struct.Memory* %call_4120b2, %struct.Memory** %MEMORY

  ; Code: jne .L_4120c0	 RIP: 4120b5	 Bytes: 6
  %loadMem_4120b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120b5 = call %struct.Memory* @routine_jne_.L_4120c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120b5, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4120b5, %struct.Memory** %MEMORY

  %loadBr_4120b5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4120b5 = icmp eq i8 %loadBr_4120b5, 1
  br i1 %cmpBr_4120b5, label %block_.L_4120c0, label %block_4120bb

block_4120bb:
  ; Code: jmpq .L_412119	 RIP: 4120bb	 Bytes: 5
  %loadMem_4120bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120bb = call %struct.Memory* @routine_jmpq_.L_412119(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120bb, i64 94, i64 5)
  store %struct.Memory* %call_4120bb, %struct.Memory** %MEMORY

  br label %block_.L_412119

  ; Code: .L_4120c0:	 RIP: 4120c0	 Bytes: 0
block_.L_4120c0:

  ; Code: movq $0x57a16e, %rdi	 RIP: 4120c0	 Bytes: 10
  %loadMem_4120c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120c0 = call %struct.Memory* @routine_movq__0x57a16e___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120c0)
  store %struct.Memory* %call_4120c0, %struct.Memory** %MEMORY

  ; Code: movl $0x6d1, %esi	 RIP: 4120ca	 Bytes: 5
  %loadMem_4120ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120ca = call %struct.Memory* @routine_movl__0x6d1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120ca)
  store %struct.Memory* %call_4120ca, %struct.Memory** %MEMORY

  ; Code: movq $0x57a4be, %rdx	 RIP: 4120cf	 Bytes: 10
  %loadMem_4120cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120cf = call %struct.Memory* @routine_movq__0x57a4be___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120cf)
  store %struct.Memory* %call_4120cf, %struct.Memory** %MEMORY

  ; Code: movl $0x14, %eax	 RIP: 4120d9	 Bytes: 5
  %loadMem_4120d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120d9 = call %struct.Memory* @routine_movl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120d9)
  store %struct.Memory* %call_4120d9, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 4120de	 Bytes: 3
  %loadMem_4120de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120de = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120de)
  store %struct.Memory* %call_4120de, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x60(%rbp)	 RIP: 4120e1	 Bytes: 3
  %loadMem_4120e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120e1 = call %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120e1)
  store %struct.Memory* %call_4120e1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 4120e4	 Bytes: 2
  %loadMem_4120e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120e4 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120e4)
  store %struct.Memory* %call_4120e4, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x68(%rbp)	 RIP: 4120e6	 Bytes: 4
  %loadMem_4120e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120e6 = call %struct.Memory* @routine_movq__rdx__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120e6)
  store %struct.Memory* %call_4120e6, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4120ea	 Bytes: 1
  %loadMem_4120ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120ea = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120ea)
  store %struct.Memory* %call_4120ea, %struct.Memory** %MEMORY

  ; Code: movl -0x60(%rbp), %ecx	 RIP: 4120eb	 Bytes: 3
  %loadMem_4120eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120eb = call %struct.Memory* @routine_movl_MINUS0x60__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120eb)
  store %struct.Memory* %call_4120eb, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 4120ee	 Bytes: 2
  %loadMem_4120ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120ee = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120ee)
  store %struct.Memory* %call_4120ee, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4120f0	 Bytes: 3
  %loadMem_4120f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120f0 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120f0)
  store %struct.Memory* %call_4120f0, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %r8d	 RIP: 4120f3	 Bytes: 4
  %loadMem_4120f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120f3 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120f3)
  store %struct.Memory* %call_4120f3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6c(%rbp)	 RIP: 4120f7	 Bytes: 3
  %loadMem_4120f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120f7 = call %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120f7)
  store %struct.Memory* %call_4120f7, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %eax	 RIP: 4120fa	 Bytes: 3
  %loadMem_4120fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120fa = call %struct.Memory* @routine_movl__r8d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120fa)
  store %struct.Memory* %call_4120fa, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4120fd	 Bytes: 1
  %loadMem_4120fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120fd = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120fd)
  store %struct.Memory* %call_4120fd, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 4120fe	 Bytes: 2
  %loadMem_4120fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4120fe = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4120fe)
  store %struct.Memory* %call_4120fe, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 412100	 Bytes: 3
  %loadMem_412100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412100 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412100)
  store %struct.Memory* %call_412100, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %r9	 RIP: 412103	 Bytes: 4
  %loadMem_412103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412103 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412103)
  store %struct.Memory* %call_412103, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x70(%rbp)	 RIP: 412107	 Bytes: 3
  %loadMem_412107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412107 = call %struct.Memory* @routine_movl__edx__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412107)
  store %struct.Memory* %call_412107, %struct.Memory** %MEMORY

  ; Code: movq %r9, %rdx	 RIP: 41210a	 Bytes: 3
  %loadMem_41210a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41210a = call %struct.Memory* @routine_movq__r9___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41210a)
  store %struct.Memory* %call_41210a, %struct.Memory** %MEMORY

  ; Code: movl -0x6c(%rbp), %ecx	 RIP: 41210d	 Bytes: 3
  %loadMem_41210d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41210d = call %struct.Memory* @routine_movl_MINUS0x6c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41210d)
  store %struct.Memory* %call_41210d, %struct.Memory** %MEMORY

  ; Code: movl -0x70(%rbp), %r8d	 RIP: 412110	 Bytes: 4
  %loadMem_412110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412110 = call %struct.Memory* @routine_movl_MINUS0x70__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412110)
  store %struct.Memory* %call_412110, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 412114	 Bytes: 5
  %loadMem1_412114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_412114 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_412114, i64 262012, i64 5, i64 5)
  store %struct.Memory* %call1_412114, %struct.Memory** %MEMORY

  %loadMem2_412114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_412114 = load i64, i64* %3
  %call2_412114 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_412114, %struct.Memory* %loadMem2_412114)
  store %struct.Memory* %call2_412114, %struct.Memory** %MEMORY

  ; Code: .L_412119:	 RIP: 412119	 Bytes: 0
  br label %block_.L_412119
block_.L_412119:

  ; Code: cmpl $0x1, -0xc(%rbp)	 RIP: 412119	 Bytes: 4
  %loadMem_412119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412119 = call %struct.Memory* @routine_cmpl__0x1__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412119)
  store %struct.Memory* %call_412119, %struct.Memory** %MEMORY

  ; Code: je .L_41212d	 RIP: 41211d	 Bytes: 6
  %loadMem_41211d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41211d = call %struct.Memory* @routine_je_.L_41212d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41211d, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_41211d, %struct.Memory** %MEMORY

  %loadBr_41211d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41211d = icmp eq i8 %loadBr_41211d, 1
  br i1 %cmpBr_41211d, label %block_.L_41212d, label %block_412123

block_412123:
  ; Code: cmpl $0x2, -0xc(%rbp)	 RIP: 412123	 Bytes: 4
  %loadMem_412123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412123 = call %struct.Memory* @routine_cmpl__0x2__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412123)
  store %struct.Memory* %call_412123, %struct.Memory** %MEMORY

  ; Code: jne .L_412132	 RIP: 412127	 Bytes: 6
  %loadMem_412127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412127 = call %struct.Memory* @routine_jne_.L_412132(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412127, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_412127, %struct.Memory** %MEMORY

  %loadBr_412127 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412127 = icmp eq i8 %loadBr_412127, 1
  br i1 %cmpBr_412127, label %block_.L_412132, label %block_.L_41212d

  ; Code: .L_41212d:	 RIP: 41212d	 Bytes: 0
block_.L_41212d:

  ; Code: jmpq .L_412197	 RIP: 41212d	 Bytes: 5
  %loadMem_41212d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41212d = call %struct.Memory* @routine_jmpq_.L_412197(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41212d, i64 106, i64 5)
  store %struct.Memory* %call_41212d, %struct.Memory** %MEMORY

  br label %block_.L_412197

  ; Code: .L_412132:	 RIP: 412132	 Bytes: 0
block_.L_412132:

  ; Code: movq $0x57a16e, %rdi	 RIP: 412132	 Bytes: 10
  %loadMem_412132 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412132 = call %struct.Memory* @routine_movq__0x57a16e___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412132)
  store %struct.Memory* %call_412132, %struct.Memory** %MEMORY

  ; Code: movl $0x6d2, %esi	 RIP: 41213c	 Bytes: 5
  %loadMem_41213c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41213c = call %struct.Memory* @routine_movl__0x6d2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41213c)
  store %struct.Memory* %call_41213c, %struct.Memory** %MEMORY

  ; Code: movq $0x57a4f4, %rdx	 RIP: 412141	 Bytes: 10
  %loadMem_412141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412141 = call %struct.Memory* @routine_movq__0x57a4f4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412141)
  store %struct.Memory* %call_412141, %struct.Memory** %MEMORY

  ; Code: movl $0x14, %eax	 RIP: 41214b	 Bytes: 5
  %loadMem_41214b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41214b = call %struct.Memory* @routine_movl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41214b)
  store %struct.Memory* %call_41214b, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 412150	 Bytes: 3
  %loadMem_412150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412150 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412150)
  store %struct.Memory* %call_412150, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x74(%rbp)	 RIP: 412153	 Bytes: 3
  %loadMem_412153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412153 = call %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412153)
  store %struct.Memory* %call_412153, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 412156	 Bytes: 2
  %loadMem_412156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412156 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412156)
  store %struct.Memory* %call_412156, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x80(%rbp)	 RIP: 412158	 Bytes: 4
  %loadMem_412158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412158 = call %struct.Memory* @routine_movq__rdx__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412158)
  store %struct.Memory* %call_412158, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 41215c	 Bytes: 1
  %loadMem_41215c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41215c = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41215c)
  store %struct.Memory* %call_41215c, %struct.Memory** %MEMORY

  ; Code: movl -0x74(%rbp), %ecx	 RIP: 41215d	 Bytes: 3
  %loadMem_41215d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41215d = call %struct.Memory* @routine_movl_MINUS0x74__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41215d)
  store %struct.Memory* %call_41215d, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 412160	 Bytes: 2
  %loadMem_412160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412160 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412160)
  store %struct.Memory* %call_412160, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 412162	 Bytes: 3
  %loadMem_412162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412162 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412162)
  store %struct.Memory* %call_412162, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %r8d	 RIP: 412165	 Bytes: 4
  %loadMem_412165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412165 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412165)
  store %struct.Memory* %call_412165, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x84(%rbp)	 RIP: 412169	 Bytes: 6
  %loadMem_412169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412169 = call %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412169)
  store %struct.Memory* %call_412169, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %eax	 RIP: 41216f	 Bytes: 3
  %loadMem_41216f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41216f = call %struct.Memory* @routine_movl__r8d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41216f)
  store %struct.Memory* %call_41216f, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 412172	 Bytes: 1
  %loadMem_412172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412172 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412172)
  store %struct.Memory* %call_412172, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 412173	 Bytes: 2
  %loadMem_412173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412173 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412173)
  store %struct.Memory* %call_412173, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 412175	 Bytes: 3
  %loadMem_412175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412175 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412175)
  store %struct.Memory* %call_412175, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %r9	 RIP: 412178	 Bytes: 4
  %loadMem_412178 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412178 = call %struct.Memory* @routine_movq_MINUS0x80__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412178)
  store %struct.Memory* %call_412178, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x88(%rbp)	 RIP: 41217c	 Bytes: 6
  %loadMem_41217c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41217c = call %struct.Memory* @routine_movl__edx__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41217c)
  store %struct.Memory* %call_41217c, %struct.Memory** %MEMORY

  ; Code: movq %r9, %rdx	 RIP: 412182	 Bytes: 3
  %loadMem_412182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412182 = call %struct.Memory* @routine_movq__r9___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412182)
  store %struct.Memory* %call_412182, %struct.Memory** %MEMORY

  ; Code: movl -0x84(%rbp), %ecx	 RIP: 412185	 Bytes: 6
  %loadMem_412185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412185 = call %struct.Memory* @routine_movl_MINUS0x84__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412185)
  store %struct.Memory* %call_412185, %struct.Memory** %MEMORY

  ; Code: movl -0x88(%rbp), %r8d	 RIP: 41218b	 Bytes: 7
  %loadMem_41218b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41218b = call %struct.Memory* @routine_movl_MINUS0x88__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41218b)
  store %struct.Memory* %call_41218b, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 412192	 Bytes: 5
  %loadMem1_412192 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_412192 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_412192, i64 261886, i64 5, i64 5)
  store %struct.Memory* %call1_412192, %struct.Memory** %MEMORY

  %loadMem2_412192 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_412192 = load i64, i64* %3
  %call2_412192 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_412192, %struct.Memory* %loadMem2_412192)
  store %struct.Memory* %call2_412192, %struct.Memory** %MEMORY

  ; Code: .L_412197:	 RIP: 412197	 Bytes: 0
  br label %block_.L_412197
block_.L_412197:

  ; Code: cmpq $0x0, -0x18(%rbp)	 RIP: 412197	 Bytes: 5
  %loadMem_412197 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412197 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412197)
  store %struct.Memory* %call_412197, %struct.Memory** %MEMORY

  ; Code: jne .L_4121cc	 RIP: 41219c	 Bytes: 6
  %loadMem_41219c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41219c = call %struct.Memory* @routine_jne_.L_4121cc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41219c, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_41219c, %struct.Memory** %MEMORY

  %loadBr_41219c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41219c = icmp eq i8 %loadBr_41219c, 1
  br i1 %cmpBr_41219c, label %block_.L_4121cc, label %block_4121a2

block_4121a2:
  ; Code: xorl %edx, %edx	 RIP: 4121a2	 Bytes: 2
  %loadMem_4121a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4121a2 = call %struct.Memory* @routine_xorl__edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4121a2)
  store %struct.Memory* %call_4121a2, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edi	 RIP: 4121a4	 Bytes: 3
  %loadMem_4121a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4121a4 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4121a4)
  store %struct.Memory* %call_4121a4, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %esi	 RIP: 4121a7	 Bytes: 3
  %loadMem_4121a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4121a7 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4121a7)
  store %struct.Memory* %call_4121a7, %struct.Memory** %MEMORY

  ; Code: callq .fastlib	 RIP: 4121aa	 Bytes: 5
  %loadMem1_4121aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4121aa = call %struct.Memory* @routine_callq_.fastlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4121aa, i64 -9514, i64 5, i64 5)
  store %struct.Memory* %call1_4121aa, %struct.Memory** %MEMORY

  %loadMem2_4121aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4121aa = load i64, i64* %3
  %call2_4121aa = call %struct.Memory* @sub_40fc80.fastlib(%struct.State* %0, i64  %loadPC_4121aa, %struct.Memory* %loadMem2_4121aa)
  store %struct.Memory* %call2_4121aa, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 4121af	 Bytes: 3
  %loadMem_4121af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4121af = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4121af)
  store %struct.Memory* %call_4121af, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x48(%rbp)	 RIP: 4121b2	 Bytes: 4
  %loadMem_4121b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4121b2 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4121b2)
  store %struct.Memory* %call_4121b2, %struct.Memory** %MEMORY

  ; Code: jl .L_4121c7	 RIP: 4121b6	 Bytes: 6
  %loadMem_4121b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4121b6 = call %struct.Memory* @routine_jl_.L_4121c7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4121b6, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_4121b6, %struct.Memory** %MEMORY

  %loadBr_4121b6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4121b6 = icmp eq i8 %loadBr_4121b6, 1
  br i1 %cmpBr_4121b6, label %block_.L_4121c7, label %block_4121bc

block_4121bc:
  ; Code: movl -0x48(%rbp), %eax	 RIP: 4121bc	 Bytes: 3
  %loadMem_4121bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4121bc = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4121bc)
  store %struct.Memory* %call_4121bc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 4121bf	 Bytes: 3
  %loadMem_4121bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4121bf = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4121bf)
  store %struct.Memory* %call_4121bf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_412a94	 RIP: 4121c2	 Bytes: 5
  %loadMem_4121c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4121c2 = call %struct.Memory* @routine_jmpq_.L_412a94(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4121c2, i64 2258, i64 5)
  store %struct.Memory* %call_4121c2, %struct.Memory** %MEMORY

  br label %block_.L_412a94

  ; Code: .L_4121c7:	 RIP: 4121c7	 Bytes: 0
block_.L_4121c7:

  ; Code: jmpq .L_4121cc	 RIP: 4121c7	 Bytes: 5
  %loadMem_4121c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4121c7 = call %struct.Memory* @routine_jmpq_.L_4121cc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4121c7, i64 5, i64 5)
  store %struct.Memory* %call_4121c7, %struct.Memory** %MEMORY

  br label %block_.L_4121cc

  ; Code: .L_4121cc:	 RIP: 4121cc	 Bytes: 0
block_.L_4121cc:

  ; Code: movl 0x99da08, %eax	 RIP: 4121cc	 Bytes: 7
  %loadMem_4121cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4121cc = call %struct.Memory* @routine_movl_0x99da08___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4121cc)
  store %struct.Memory* %call_4121cc, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4121d3	 Bytes: 3
  %loadMem_4121d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4121d3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4121d3)
  store %struct.Memory* %call_4121d3, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x99da08	 RIP: 4121d6	 Bytes: 7
  %loadMem_4121d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4121d6 = call %struct.Memory* @routine_movl__eax__0x99da08(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4121d6)
  store %struct.Memory* %call_4121d6, %struct.Memory** %MEMORY

  ; Code: movl 0x99da04, %eax	 RIP: 4121dd	 Bytes: 7
  %loadMem_4121dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4121dd = call %struct.Memory* @routine_movl_0x99da04___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4121dd)
  store %struct.Memory* %call_4121dd, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4121e4	 Bytes: 3
  %loadMem_4121e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4121e4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4121e4)
  store %struct.Memory* %call_4121e4, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x99da04	 RIP: 4121e7	 Bytes: 7
  %loadMem_4121e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4121e7 = call %struct.Memory* @routine_movl__eax__0x99da04(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4121e7)
  store %struct.Memory* %call_4121e7, %struct.Memory** %MEMORY

  ; Code: movl 0x99da04, %eax	 RIP: 4121ee	 Bytes: 7
  %loadMem_4121ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4121ee = call %struct.Memory* @routine_movl_0x99da04___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4121ee)
  store %struct.Memory* %call_4121ee, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4121f5	 Bytes: 4
  %loadMem_4121f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4121f5 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4121f5)
  store %struct.Memory* %call_4121f5, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xaaadb0(,%rcx,4)	 RIP: 4121f9	 Bytes: 7
  %loadMem_4121f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4121f9 = call %struct.Memory* @routine_movl__eax__0xaaadb0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4121f9)
  store %struct.Memory* %call_4121f9, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 412200	 Bytes: 7
  %loadMem_412200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412200 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412200)
  store %struct.Memory* %call_412200, %struct.Memory** %MEMORY

  ; Code: .L_412207:	 RIP: 412207	 Bytes: 0
  br label %block_.L_412207
block_.L_412207:

  ; Code: cmpl $0x4, -0x1c(%rbp)	 RIP: 412207	 Bytes: 4
  %loadMem_412207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412207 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412207)
  store %struct.Memory* %call_412207, %struct.Memory** %MEMORY

  ; Code: jge .L_4126d0	 RIP: 41220b	 Bytes: 6
  %loadMem_41220b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41220b = call %struct.Memory* @routine_jge_.L_4126d0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41220b, i8* %BRANCH_TAKEN, i64 1221, i64 6, i64 6)
  store %struct.Memory* %call_41220b, %struct.Memory** %MEMORY

  %loadBr_41220b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41220b = icmp eq i8 %loadBr_41220b, 1
  br i1 %cmpBr_41220b, label %block_.L_4126d0, label %block_412211

block_412211:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 412211	 Bytes: 3
  %loadMem_412211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412211 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412211)
  store %struct.Memory* %call_412211, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 412214	 Bytes: 4
  %loadMem_412214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412214 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412214)
  store %struct.Memory* %call_412214, %struct.Memory** %MEMORY

  ; Code: addl 0x7ae1b0(,%rcx,4), %eax	 RIP: 412218	 Bytes: 7
  %loadMem_412218 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412218 = call %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412218)
  store %struct.Memory* %call_412218, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 41221f	 Bytes: 3
  %loadMem_41221f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41221f = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41221f)
  store %struct.Memory* %call_41221f, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 412222	 Bytes: 4
  %loadMem_412222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412222 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412222)
  store %struct.Memory* %call_412222, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 412226	 Bytes: 8
  %loadMem_412226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412226 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412226)
  store %struct.Memory* %call_412226, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41222e	 Bytes: 3
  %loadMem_41222e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41222e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41222e)
  store %struct.Memory* %call_41222e, %struct.Memory** %MEMORY

  ; Code: jne .L_41229f	 RIP: 412231	 Bytes: 6
  %loadMem_412231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412231 = call %struct.Memory* @routine_jne_.L_41229f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412231, i8* %BRANCH_TAKEN, i64 110, i64 6, i64 6)
  store %struct.Memory* %call_412231, %struct.Memory** %MEMORY

  %loadBr_412231 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412231 = icmp eq i8 %loadBr_412231, 1
  br i1 %cmpBr_412231, label %block_.L_41229f, label %block_412237

block_412237:
  ; Code: movslq -0x4c(%rbp), %rax	 RIP: 412237	 Bytes: 4
  %loadMem_412237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412237 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412237)
  store %struct.Memory* %call_412237, %struct.Memory** %MEMORY

  ; Code: movl 0xaaadb0(,%rax,4), %ecx	 RIP: 41223b	 Bytes: 7
  %loadMem_41223b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41223b = call %struct.Memory* @routine_movl_0xaaadb0___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41223b)
  store %struct.Memory* %call_41223b, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da04, %ecx	 RIP: 412242	 Bytes: 7
  %loadMem_412242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412242 = call %struct.Memory* @routine_cmpl_0x99da04___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412242)
  store %struct.Memory* %call_412242, %struct.Memory** %MEMORY

  ; Code: je .L_41229f	 RIP: 412249	 Bytes: 6
  %loadMem_412249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412249 = call %struct.Memory* @routine_je_.L_41229f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412249, i8* %BRANCH_TAKEN, i64 86, i64 6, i64 6)
  store %struct.Memory* %call_412249, %struct.Memory** %MEMORY

  %loadBr_412249 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412249 = icmp eq i8 %loadBr_412249, 1
  br i1 %cmpBr_412249, label %block_.L_41229f, label %block_41224f

block_41224f:
  ; Code: cmpq $0x0, -0x18(%rbp)	 RIP: 41224f	 Bytes: 5
  %loadMem_41224f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41224f = call %struct.Memory* @routine_cmpq__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41224f)
  store %struct.Memory* %call_41224f, %struct.Memory** %MEMORY

  ; Code: je .L_412268	 RIP: 412254	 Bytes: 6
  %loadMem_412254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412254 = call %struct.Memory* @routine_je_.L_412268(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412254, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_412254, %struct.Memory** %MEMORY

  %loadBr_412254 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412254 = icmp eq i8 %loadBr_412254, 1
  br i1 %cmpBr_412254, label %block_.L_412268, label %block_41225a

block_41225a:
  ; Code: movl -0x4c(%rbp), %eax	 RIP: 41225a	 Bytes: 3
  %loadMem_41225a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41225a = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41225a)
  store %struct.Memory* %call_41225a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 41225d	 Bytes: 4
  %loadMem_41225d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41225d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41225d)
  store %struct.Memory* %call_41225d, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 412261	 Bytes: 4
  %loadMem_412261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412261 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412261)
  store %struct.Memory* %call_412261, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 412265	 Bytes: 3
  %loadMem_412265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412265 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412265)
  store %struct.Memory* %call_412265, %struct.Memory** %MEMORY

  ; Code: .L_412268:	 RIP: 412268	 Bytes: 0
  br label %block_.L_412268
block_.L_412268:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 412268	 Bytes: 3
  %loadMem_412268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412268 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412268)
  store %struct.Memory* %call_412268, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41226b	 Bytes: 3
  %loadMem_41226b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41226b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41226b)
  store %struct.Memory* %call_41226b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 41226e	 Bytes: 3
  %loadMem_41226e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41226e = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41226e)
  store %struct.Memory* %call_41226e, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 412271	 Bytes: 3
  %loadMem_412271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412271 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412271)
  store %struct.Memory* %call_412271, %struct.Memory** %MEMORY

  ; Code: cmpl -0x10(%rbp), %eax	 RIP: 412274	 Bytes: 3
  %loadMem_412274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412274 = call %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412274)
  store %struct.Memory* %call_412274, %struct.Memory** %MEMORY

  ; Code: jl .L_412288	 RIP: 412277	 Bytes: 6
  %loadMem_412277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412277 = call %struct.Memory* @routine_jl_.L_412288(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412277, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_412277, %struct.Memory** %MEMORY

  %loadBr_412277 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412277 = icmp eq i8 %loadBr_412277, 1
  br i1 %cmpBr_412277, label %block_.L_412288, label %block_41227d

block_41227d:
  ; Code: movl -0x24(%rbp), %eax	 RIP: 41227d	 Bytes: 3
  %loadMem_41227d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41227d = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41227d)
  store %struct.Memory* %call_41227d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 412280	 Bytes: 3
  %loadMem_412280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412280 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412280)
  store %struct.Memory* %call_412280, %struct.Memory** %MEMORY

  ; Code: jmpq .L_412a94	 RIP: 412283	 Bytes: 5
  %loadMem_412283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412283 = call %struct.Memory* @routine_jmpq_.L_412a94(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412283, i64 2065, i64 5)
  store %struct.Memory* %call_412283, %struct.Memory** %MEMORY

  br label %block_.L_412a94

  ; Code: .L_412288:	 RIP: 412288	 Bytes: 0
block_.L_412288:

  ; Code: movl 0x99da04, %eax	 RIP: 412288	 Bytes: 7
  %loadMem_412288 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412288 = call %struct.Memory* @routine_movl_0x99da04___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412288)
  store %struct.Memory* %call_412288, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 41228f	 Bytes: 4
  %loadMem_41228f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41228f = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41228f)
  store %struct.Memory* %call_41228f, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xaaadb0(,%rcx,4)	 RIP: 412293	 Bytes: 7
  %loadMem_412293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412293 = call %struct.Memory* @routine_movl__eax__0xaaadb0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412293)
  store %struct.Memory* %call_412293, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4126bd	 RIP: 41229a	 Bytes: 5
  %loadMem_41229a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41229a = call %struct.Memory* @routine_jmpq_.L_4126bd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41229a, i64 1059, i64 5)
  store %struct.Memory* %call_41229a, %struct.Memory** %MEMORY

  br label %block_.L_4126bd

  ; Code: .L_41229f:	 RIP: 41229f	 Bytes: 0
block_.L_41229f:

  ; Code: movslq -0x4c(%rbp), %rax	 RIP: 41229f	 Bytes: 4
  %loadMem_41229f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41229f = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41229f)
  store %struct.Memory* %call_41229f, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 4122a3	 Bytes: 8
  %loadMem_4122a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122a3 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122a3)
  store %struct.Memory* %call_4122a3, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %ecx	 RIP: 4122ab	 Bytes: 3
  %loadMem_4122ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122ab = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122ab)
  store %struct.Memory* %call_4122ab, %struct.Memory** %MEMORY

  ; Code: jne .L_412658	 RIP: 4122ae	 Bytes: 6
  %loadMem_4122ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122ae = call %struct.Memory* @routine_jne_.L_412658(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122ae, i8* %BRANCH_TAKEN, i64 938, i64 6, i64 6)
  store %struct.Memory* %call_4122ae, %struct.Memory** %MEMORY

  %loadBr_4122ae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4122ae = icmp eq i8 %loadBr_4122ae, 1
  br i1 %cmpBr_4122ae, label %block_.L_412658, label %block_4122b4

block_4122b4:
  ; Code: movq $0xa7f430, %rax	 RIP: 4122b4	 Bytes: 10
  %loadMem_4122b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122b4 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122b4)
  store %struct.Memory* %call_4122b4, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 4122be	 Bytes: 4
  %loadMem_4122be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122be = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122be)
  store %struct.Memory* %call_4122be, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rcx,4), %rcx	 RIP: 4122c2	 Bytes: 8
  %loadMem_4122c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122c2 = call %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122c2)
  store %struct.Memory* %call_4122c2, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 4122ca	 Bytes: 7
  %loadMem_4122ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122ca = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122ca)
  store %struct.Memory* %call_4122ca, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4122d1	 Bytes: 3
  %loadMem_4122d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122d1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122d1)
  store %struct.Memory* %call_4122d1, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %edx	 RIP: 4122d4	 Bytes: 6
  %loadMem_4122d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122d4 = call %struct.Memory* @routine_movl_0x2e4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122d4)
  store %struct.Memory* %call_4122d4, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %edx	 RIP: 4122da	 Bytes: 7
  %loadMem_4122da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122da = call %struct.Memory* @routine_cmpl_0x99da08___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122da)
  store %struct.Memory* %call_4122da, %struct.Memory** %MEMORY

  ; Code: je .L_412658	 RIP: 4122e1	 Bytes: 6
  %loadMem_4122e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122e1 = call %struct.Memory* @routine_je_.L_412658(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122e1, i8* %BRANCH_TAKEN, i64 887, i64 6, i64 6)
  store %struct.Memory* %call_4122e1, %struct.Memory** %MEMORY

  %loadBr_4122e1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4122e1 = icmp eq i8 %loadBr_4122e1, 1
  br i1 %cmpBr_4122e1, label %block_.L_412658, label %block_4122e7

block_4122e7:
  ; Code: movq $0xa7f430, %rax	 RIP: 4122e7	 Bytes: 10
  %loadMem_4122e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122e7 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122e7)
  store %struct.Memory* %call_4122e7, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 4122f1	 Bytes: 4
  %loadMem_4122f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122f1 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122f1)
  store %struct.Memory* %call_4122f1, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rcx,4), %rcx	 RIP: 4122f5	 Bytes: 8
  %loadMem_4122f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122f5 = call %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122f5)
  store %struct.Memory* %call_4122f5, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 4122fd	 Bytes: 7
  %loadMem_4122fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4122fd = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4122fd)
  store %struct.Memory* %call_4122fd, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 412304	 Bytes: 3
  %loadMem_412304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412304 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412304)
  store %struct.Memory* %call_412304, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x58(%rbp)	 RIP: 412307	 Bytes: 4
  %loadMem_412307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412307 = call %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412307)
  store %struct.Memory* %call_412307, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rax	 RIP: 41230b	 Bytes: 4
  %loadMem_41230b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41230b = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41230b)
  store %struct.Memory* %call_41230b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x14, 0xc(%rax)	 RIP: 41230f	 Bytes: 4
  %loadMem_41230f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41230f = call %struct.Memory* @routine_cmpl__0x14__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41230f)
  store %struct.Memory* %call_41230f, %struct.Memory** %MEMORY

  ; Code: jle .L_412323	 RIP: 412313	 Bytes: 6
  %loadMem_412313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412313 = call %struct.Memory* @routine_jle_.L_412323(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412313, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_412313, %struct.Memory** %MEMORY

  %loadBr_412313 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412313 = icmp eq i8 %loadBr_412313, 1
  br i1 %cmpBr_412313, label %block_.L_412323, label %block_412319

block_412319:
  ; Code: cmpl $0x13, -0x10(%rbp)	 RIP: 412319	 Bytes: 4
  %loadMem_412319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412319 = call %struct.Memory* @routine_cmpl__0x13__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412319)
  store %struct.Memory* %call_412319, %struct.Memory** %MEMORY

  ; Code: jg .L_4123d9	 RIP: 41231d	 Bytes: 6
  %loadMem_41231d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41231d = call %struct.Memory* @routine_jg_.L_4123d9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41231d, i8* %BRANCH_TAKEN, i64 188, i64 6, i64 6)
  store %struct.Memory* %call_41231d, %struct.Memory** %MEMORY

  %loadBr_41231d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41231d = icmp eq i8 %loadBr_41231d, 1
  br i1 %cmpBr_41231d, label %block_.L_4123d9, label %block_.L_412323

  ; Code: .L_412323:	 RIP: 412323	 Bytes: 0
block_.L_412323:

  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 412323	 Bytes: 7
  %loadMem_412323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412323 = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412323)
  store %struct.Memory* %call_412323, %struct.Memory** %MEMORY

  ; Code: .L_41232a:	 RIP: 41232a	 Bytes: 0
  br label %block_.L_41232a
block_.L_41232a:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 41232a	 Bytes: 3
  %loadMem_41232a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41232a = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41232a)
  store %struct.Memory* %call_41232a, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rcx	 RIP: 41232d	 Bytes: 4
  %loadMem_41232d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41232d = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41232d)
  store %struct.Memory* %call_41232d, %struct.Memory** %MEMORY

  ; Code: cmpl 0xc(%rcx), %eax	 RIP: 412331	 Bytes: 3
  %loadMem_412331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412331 = call %struct.Memory* @routine_cmpl_0xc__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412331)
  store %struct.Memory* %call_412331, %struct.Memory** %MEMORY

  ; Code: jge .L_4123d4	 RIP: 412334	 Bytes: 6
  %loadMem_412334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412334 = call %struct.Memory* @routine_jge_.L_4123d4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412334, i8* %BRANCH_TAKEN, i64 160, i64 6, i64 6)
  store %struct.Memory* %call_412334, %struct.Memory** %MEMORY

  %loadBr_412334 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412334 = icmp eq i8 %loadBr_412334, 1
  br i1 %cmpBr_412334, label %block_.L_4123d4, label %block_41233a

block_41233a:
  ; Code: movq -0x58(%rbp), %rax	 RIP: 41233a	 Bytes: 4
  %loadMem_41233a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41233a = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41233a)
  store %struct.Memory* %call_41233a, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 41233e	 Bytes: 4
  %loadMem_41233e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41233e = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41233e)
  store %struct.Memory* %call_41233e, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rax,%rcx,4), %edx	 RIP: 412342	 Bytes: 4
  %loadMem_412342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412342 = call %struct.Memory* @routine_movl_0x10__rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412342)
  store %struct.Memory* %call_412342, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x28(%rbp)	 RIP: 412346	 Bytes: 3
  %loadMem_412346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412346 = call %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412346)
  store %struct.Memory* %call_412346, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rax	 RIP: 412349	 Bytes: 4
  %loadMem_412349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412349 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412349)
  store %struct.Memory* %call_412349, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %edx	 RIP: 41234d	 Bytes: 8
  %loadMem_41234d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41234d = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41234d)
  store %struct.Memory* %call_41234d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 412355	 Bytes: 3
  %loadMem_412355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412355 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412355)
  store %struct.Memory* %call_412355, %struct.Memory** %MEMORY

  ; Code: jne .L_4123c1	 RIP: 412358	 Bytes: 6
  %loadMem_412358 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412358 = call %struct.Memory* @routine_jne_.L_4123c1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412358, i8* %BRANCH_TAKEN, i64 105, i64 6, i64 6)
  store %struct.Memory* %call_412358, %struct.Memory** %MEMORY

  %loadBr_412358 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412358 = icmp eq i8 %loadBr_412358, 1
  br i1 %cmpBr_412358, label %block_.L_4123c1, label %block_41235e

block_41235e:
  ; Code: movslq -0x28(%rbp), %rax	 RIP: 41235e	 Bytes: 4
  %loadMem_41235e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41235e = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41235e)
  store %struct.Memory* %call_41235e, %struct.Memory** %MEMORY

  ; Code: movl 0xaaadb0(,%rax,4), %ecx	 RIP: 412362	 Bytes: 7
  %loadMem_412362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412362 = call %struct.Memory* @routine_movl_0xaaadb0___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412362)
  store %struct.Memory* %call_412362, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da04, %ecx	 RIP: 412369	 Bytes: 7
  %loadMem_412369 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412369 = call %struct.Memory* @routine_cmpl_0x99da04___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412369)
  store %struct.Memory* %call_412369, %struct.Memory** %MEMORY

  ; Code: je .L_4123c1	 RIP: 412370	 Bytes: 6
  %loadMem_412370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412370 = call %struct.Memory* @routine_je_.L_4123c1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412370, i8* %BRANCH_TAKEN, i64 81, i64 6, i64 6)
  store %struct.Memory* %call_412370, %struct.Memory** %MEMORY

  %loadBr_412370 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412370 = icmp eq i8 %loadBr_412370, 1
  br i1 %cmpBr_412370, label %block_.L_4123c1, label %block_412376

block_412376:
  ; Code: cmpq $0x0, -0x18(%rbp)	 RIP: 412376	 Bytes: 5
  %loadMem_412376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412376 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412376)
  store %struct.Memory* %call_412376, %struct.Memory** %MEMORY

  ; Code: je .L_41238f	 RIP: 41237b	 Bytes: 6
  %loadMem_41237b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41237b = call %struct.Memory* @routine_je_.L_41238f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41237b, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_41237b, %struct.Memory** %MEMORY

  %loadBr_41237b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41237b = icmp eq i8 %loadBr_41237b, 1
  br i1 %cmpBr_41237b, label %block_.L_41238f, label %block_412381

block_412381:
  ; Code: movl -0x28(%rbp), %eax	 RIP: 412381	 Bytes: 3
  %loadMem_412381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412381 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412381)
  store %struct.Memory* %call_412381, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 412384	 Bytes: 4
  %loadMem_412384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412384 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412384)
  store %struct.Memory* %call_412384, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 412388	 Bytes: 4
  %loadMem_412388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412388 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412388)
  store %struct.Memory* %call_412388, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 41238c	 Bytes: 3
  %loadMem_41238c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41238c = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41238c)
  store %struct.Memory* %call_41238c, %struct.Memory** %MEMORY

  ; Code: .L_41238f:	 RIP: 41238f	 Bytes: 0
  br label %block_.L_41238f
block_.L_41238f:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 41238f	 Bytes: 3
  %loadMem_41238f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41238f = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41238f)
  store %struct.Memory* %call_41238f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 412392	 Bytes: 3
  %loadMem_412392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412392 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412392)
  store %struct.Memory* %call_412392, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 412395	 Bytes: 3
  %loadMem_412395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412395 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412395)
  store %struct.Memory* %call_412395, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 412398	 Bytes: 3
  %loadMem_412398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412398 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412398)
  store %struct.Memory* %call_412398, %struct.Memory** %MEMORY

  ; Code: cmpl -0x10(%rbp), %eax	 RIP: 41239b	 Bytes: 3
  %loadMem_41239b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41239b = call %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41239b)
  store %struct.Memory* %call_41239b, %struct.Memory** %MEMORY

  ; Code: jl .L_4123af	 RIP: 41239e	 Bytes: 6
  %loadMem_41239e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41239e = call %struct.Memory* @routine_jl_.L_4123af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41239e, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_41239e, %struct.Memory** %MEMORY

  %loadBr_41239e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41239e = icmp eq i8 %loadBr_41239e, 1
  br i1 %cmpBr_41239e, label %block_.L_4123af, label %block_4123a4

block_4123a4:
  ; Code: movl -0x24(%rbp), %eax	 RIP: 4123a4	 Bytes: 3
  %loadMem_4123a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123a4 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123a4)
  store %struct.Memory* %call_4123a4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 4123a7	 Bytes: 3
  %loadMem_4123a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123a7 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123a7)
  store %struct.Memory* %call_4123a7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_412a94	 RIP: 4123aa	 Bytes: 5
  %loadMem_4123aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123aa = call %struct.Memory* @routine_jmpq_.L_412a94(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123aa, i64 1770, i64 5)
  store %struct.Memory* %call_4123aa, %struct.Memory** %MEMORY

  br label %block_.L_412a94

  ; Code: .L_4123af:	 RIP: 4123af	 Bytes: 0
block_.L_4123af:

  ; Code: movl 0x99da04, %eax	 RIP: 4123af	 Bytes: 7
  %loadMem_4123af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123af = call %struct.Memory* @routine_movl_0x99da04___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123af)
  store %struct.Memory* %call_4123af, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 4123b6	 Bytes: 4
  %loadMem_4123b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123b6 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123b6)
  store %struct.Memory* %call_4123b6, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xaaadb0(,%rcx,4)	 RIP: 4123ba	 Bytes: 7
  %loadMem_4123ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123ba = call %struct.Memory* @routine_movl__eax__0xaaadb0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123ba)
  store %struct.Memory* %call_4123ba, %struct.Memory** %MEMORY

  ; Code: .L_4123c1:	 RIP: 4123c1	 Bytes: 0
  br label %block_.L_4123c1
block_.L_4123c1:

  ; Code: jmpq .L_4123c6	 RIP: 4123c1	 Bytes: 5
  %loadMem_4123c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123c1 = call %struct.Memory* @routine_jmpq_.L_4123c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123c1, i64 5, i64 5)
  store %struct.Memory* %call_4123c1, %struct.Memory** %MEMORY

  br label %block_.L_4123c6

  ; Code: .L_4123c6:	 RIP: 4123c6	 Bytes: 0
block_.L_4123c6:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4123c6	 Bytes: 3
  %loadMem_4123c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123c6 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123c6)
  store %struct.Memory* %call_4123c6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4123c9	 Bytes: 3
  %loadMem_4123c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123c9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123c9)
  store %struct.Memory* %call_4123c9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 4123cc	 Bytes: 3
  %loadMem_4123cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123cc = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123cc)
  store %struct.Memory* %call_4123cc, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41232a	 RIP: 4123cf	 Bytes: 5
  %loadMem_4123cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123cf = call %struct.Memory* @routine_jmpq_.L_41232a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123cf, i64 -165, i64 5)
  store %struct.Memory* %call_4123cf, %struct.Memory** %MEMORY

  br label %block_.L_41232a

  ; Code: .L_4123d4:	 RIP: 4123d4	 Bytes: 0
block_.L_4123d4:

  ; Code: jmpq .L_412626	 RIP: 4123d4	 Bytes: 5
  %loadMem_4123d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123d4 = call %struct.Memory* @routine_jmpq_.L_412626(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123d4, i64 594, i64 5)
  store %struct.Memory* %call_4123d4, %struct.Memory** %MEMORY

  br label %block_.L_412626

  ; Code: .L_4123d9:	 RIP: 4123d9	 Bytes: 0
block_.L_4123d9:

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 4123d9	 Bytes: 3
  %loadMem_4123d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123d9 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123d9)
  store %struct.Memory* %call_4123d9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5c(%rbp)	 RIP: 4123dc	 Bytes: 3
  %loadMem_4123dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123dc = call %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123dc)
  store %struct.Memory* %call_4123dc, %struct.Memory** %MEMORY

  ; Code: .L_4123df:	 RIP: 4123df	 Bytes: 0
  br label %block_.L_4123df
block_.L_4123df:

  ; Code: movl -0x5c(%rbp), %eax	 RIP: 4123df	 Bytes: 3
  %loadMem_4123df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123df = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123df)
  store %struct.Memory* %call_4123df, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4123e2	 Bytes: 3
  %loadMem_4123e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123e2 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123e2)
  store %struct.Memory* %call_4123e2, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4123e5	 Bytes: 3
  %loadMem_4123e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123e5 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123e5)
  store %struct.Memory* %call_4123e5, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4123e8	 Bytes: 8
  %loadMem_4123e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123e8 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123e8)
  store %struct.Memory* %call_4123e8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4123f0	 Bytes: 3
  %loadMem_4123f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123f0 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123f0)
  store %struct.Memory* %call_4123f0, %struct.Memory** %MEMORY

  ; Code: jne .L_412469	 RIP: 4123f3	 Bytes: 6
  %loadMem_4123f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123f3 = call %struct.Memory* @routine_jne_.L_412469(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123f3, i8* %BRANCH_TAKEN, i64 118, i64 6, i64 6)
  store %struct.Memory* %call_4123f3, %struct.Memory** %MEMORY

  %loadBr_4123f3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4123f3 = icmp eq i8 %loadBr_4123f3, 1
  br i1 %cmpBr_4123f3, label %block_.L_412469, label %block_4123f9

block_4123f9:
  ; Code: movl -0x5c(%rbp), %eax	 RIP: 4123f9	 Bytes: 3
  %loadMem_4123f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123f9 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123f9)
  store %struct.Memory* %call_4123f9, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4123fc	 Bytes: 3
  %loadMem_4123fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123fc = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123fc)
  store %struct.Memory* %call_4123fc, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4123ff	 Bytes: 3
  %loadMem_4123ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4123ff = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4123ff)
  store %struct.Memory* %call_4123ff, %struct.Memory** %MEMORY

  ; Code: movl 0xaaadb0(,%rcx,4), %eax	 RIP: 412402	 Bytes: 7
  %loadMem_412402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412402 = call %struct.Memory* @routine_movl_0xaaadb0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412402)
  store %struct.Memory* %call_412402, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da04, %eax	 RIP: 412409	 Bytes: 7
  %loadMem_412409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412409 = call %struct.Memory* @routine_cmpl_0x99da04___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412409)
  store %struct.Memory* %call_412409, %struct.Memory** %MEMORY

  ; Code: je .L_412469	 RIP: 412410	 Bytes: 6
  %loadMem_412410 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412410 = call %struct.Memory* @routine_je_.L_412469(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412410, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_412410, %struct.Memory** %MEMORY

  %loadBr_412410 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412410 = icmp eq i8 %loadBr_412410, 1
  br i1 %cmpBr_412410, label %block_.L_412469, label %block_412416

block_412416:
  ; Code: cmpq $0x0, -0x18(%rbp)	 RIP: 412416	 Bytes: 5
  %loadMem_412416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412416 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412416)
  store %struct.Memory* %call_412416, %struct.Memory** %MEMORY

  ; Code: je .L_412432	 RIP: 41241b	 Bytes: 6
  %loadMem_41241b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41241b = call %struct.Memory* @routine_je_.L_412432(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41241b, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_41241b, %struct.Memory** %MEMORY

  %loadBr_41241b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41241b = icmp eq i8 %loadBr_41241b, 1
  br i1 %cmpBr_41241b, label %block_.L_412432, label %block_412421

block_412421:
  ; Code: movl -0x5c(%rbp), %eax	 RIP: 412421	 Bytes: 3
  %loadMem_412421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412421 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412421)
  store %struct.Memory* %call_412421, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 412424	 Bytes: 3
  %loadMem_412424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412424 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412424)
  store %struct.Memory* %call_412424, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 412427	 Bytes: 4
  %loadMem_412427 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412427 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412427)
  store %struct.Memory* %call_412427, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 41242b	 Bytes: 4
  %loadMem_41242b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41242b = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41242b)
  store %struct.Memory* %call_41242b, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 41242f	 Bytes: 3
  %loadMem_41242f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41242f = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41242f)
  store %struct.Memory* %call_41242f, %struct.Memory** %MEMORY

  ; Code: .L_412432:	 RIP: 412432	 Bytes: 0
  br label %block_.L_412432
block_.L_412432:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 412432	 Bytes: 3
  %loadMem_412432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412432 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412432)
  store %struct.Memory* %call_412432, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 412435	 Bytes: 3
  %loadMem_412435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412435 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412435)
  store %struct.Memory* %call_412435, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 412438	 Bytes: 3
  %loadMem_412438 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412438 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412438)
  store %struct.Memory* %call_412438, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 41243b	 Bytes: 3
  %loadMem_41243b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41243b = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41243b)
  store %struct.Memory* %call_41243b, %struct.Memory** %MEMORY

  ; Code: cmpl -0x10(%rbp), %eax	 RIP: 41243e	 Bytes: 3
  %loadMem_41243e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41243e = call %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41243e)
  store %struct.Memory* %call_41243e, %struct.Memory** %MEMORY

  ; Code: jl .L_412452	 RIP: 412441	 Bytes: 6
  %loadMem_412441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412441 = call %struct.Memory* @routine_jl_.L_412452(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412441, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_412441, %struct.Memory** %MEMORY

  %loadBr_412441 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412441 = icmp eq i8 %loadBr_412441, 1
  br i1 %cmpBr_412441, label %block_.L_412452, label %block_412447

block_412447:
  ; Code: movl -0x24(%rbp), %eax	 RIP: 412447	 Bytes: 3
  %loadMem_412447 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412447 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412447)
  store %struct.Memory* %call_412447, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 41244a	 Bytes: 3
  %loadMem_41244a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41244a = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41244a)
  store %struct.Memory* %call_41244a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_412a94	 RIP: 41244d	 Bytes: 5
  %loadMem_41244d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41244d = call %struct.Memory* @routine_jmpq_.L_412a94(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41244d, i64 1607, i64 5)
  store %struct.Memory* %call_41244d, %struct.Memory** %MEMORY

  br label %block_.L_412a94

  ; Code: .L_412452:	 RIP: 412452	 Bytes: 0
block_.L_412452:

  ; Code: movl 0x99da04, %eax	 RIP: 412452	 Bytes: 7
  %loadMem_412452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412452 = call %struct.Memory* @routine_movl_0x99da04___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412452)
  store %struct.Memory* %call_412452, %struct.Memory** %MEMORY

  ; Code: movl -0x5c(%rbp), %ecx	 RIP: 412459	 Bytes: 3
  %loadMem_412459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412459 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412459)
  store %struct.Memory* %call_412459, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 41245c	 Bytes: 3
  %loadMem_41245c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41245c = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41245c)
  store %struct.Memory* %call_41245c, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 41245f	 Bytes: 3
  %loadMem_41245f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41245f = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41245f)
  store %struct.Memory* %call_41245f, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xaaadb0(,%rdx,4)	 RIP: 412462	 Bytes: 7
  %loadMem_412462 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412462 = call %struct.Memory* @routine_movl__eax__0xaaadb0___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412462)
  store %struct.Memory* %call_412462, %struct.Memory** %MEMORY

  ; Code: .L_412469:	 RIP: 412469	 Bytes: 0
  br label %block_.L_412469
block_.L_412469:

  ; Code: movl -0x5c(%rbp), %eax	 RIP: 412469	 Bytes: 3
  %loadMem_412469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412469 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412469)
  store %struct.Memory* %call_412469, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 41246c	 Bytes: 3
  %loadMem_41246c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41246c = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41246c)
  store %struct.Memory* %call_41246c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 41246f	 Bytes: 3
  %loadMem_41246f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41246f = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41246f)
  store %struct.Memory* %call_41246f, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 412472	 Bytes: 8
  %loadMem_412472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412472 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412472)
  store %struct.Memory* %call_412472, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41247a	 Bytes: 3
  %loadMem_41247a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41247a = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41247a)
  store %struct.Memory* %call_41247a, %struct.Memory** %MEMORY

  ; Code: jne .L_4124f3	 RIP: 41247d	 Bytes: 6
  %loadMem_41247d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41247d = call %struct.Memory* @routine_jne_.L_4124f3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41247d, i8* %BRANCH_TAKEN, i64 118, i64 6, i64 6)
  store %struct.Memory* %call_41247d, %struct.Memory** %MEMORY

  %loadBr_41247d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41247d = icmp eq i8 %loadBr_41247d, 1
  br i1 %cmpBr_41247d, label %block_.L_4124f3, label %block_412483

block_412483:
  ; Code: movl -0x5c(%rbp), %eax	 RIP: 412483	 Bytes: 3
  %loadMem_412483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412483 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412483)
  store %struct.Memory* %call_412483, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 412486	 Bytes: 3
  %loadMem_412486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412486 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412486)
  store %struct.Memory* %call_412486, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 412489	 Bytes: 3
  %loadMem_412489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412489 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412489)
  store %struct.Memory* %call_412489, %struct.Memory** %MEMORY

  ; Code: movl 0xaaadb0(,%rcx,4), %eax	 RIP: 41248c	 Bytes: 7
  %loadMem_41248c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41248c = call %struct.Memory* @routine_movl_0xaaadb0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41248c)
  store %struct.Memory* %call_41248c, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da04, %eax	 RIP: 412493	 Bytes: 7
  %loadMem_412493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412493 = call %struct.Memory* @routine_cmpl_0x99da04___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412493)
  store %struct.Memory* %call_412493, %struct.Memory** %MEMORY

  ; Code: je .L_4124f3	 RIP: 41249a	 Bytes: 6
  %loadMem_41249a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41249a = call %struct.Memory* @routine_je_.L_4124f3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41249a, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_41249a, %struct.Memory** %MEMORY

  %loadBr_41249a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41249a = icmp eq i8 %loadBr_41249a, 1
  br i1 %cmpBr_41249a, label %block_.L_4124f3, label %block_4124a0

block_4124a0:
  ; Code: cmpq $0x0, -0x18(%rbp)	 RIP: 4124a0	 Bytes: 5
  %loadMem_4124a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124a0 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124a0)
  store %struct.Memory* %call_4124a0, %struct.Memory** %MEMORY

  ; Code: je .L_4124bc	 RIP: 4124a5	 Bytes: 6
  %loadMem_4124a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124a5 = call %struct.Memory* @routine_je_.L_4124bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124a5, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_4124a5, %struct.Memory** %MEMORY

  %loadBr_4124a5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4124a5 = icmp eq i8 %loadBr_4124a5, 1
  br i1 %cmpBr_4124a5, label %block_.L_4124bc, label %block_4124ab

block_4124ab:
  ; Code: movl -0x5c(%rbp), %eax	 RIP: 4124ab	 Bytes: 3
  %loadMem_4124ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124ab = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124ab)
  store %struct.Memory* %call_4124ab, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4124ae	 Bytes: 3
  %loadMem_4124ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124ae = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124ae)
  store %struct.Memory* %call_4124ae, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4124b1	 Bytes: 4
  %loadMem_4124b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124b1 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124b1)
  store %struct.Memory* %call_4124b1, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4124b5	 Bytes: 4
  %loadMem_4124b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124b5 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124b5)
  store %struct.Memory* %call_4124b5, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 4124b9	 Bytes: 3
  %loadMem_4124b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124b9 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124b9)
  store %struct.Memory* %call_4124b9, %struct.Memory** %MEMORY

  ; Code: .L_4124bc:	 RIP: 4124bc	 Bytes: 0
  br label %block_.L_4124bc
block_.L_4124bc:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4124bc	 Bytes: 3
  %loadMem_4124bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124bc = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124bc)
  store %struct.Memory* %call_4124bc, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4124bf	 Bytes: 3
  %loadMem_4124bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124bf = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124bf)
  store %struct.Memory* %call_4124bf, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 4124c2	 Bytes: 3
  %loadMem_4124c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124c2 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124c2)
  store %struct.Memory* %call_4124c2, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4124c5	 Bytes: 3
  %loadMem_4124c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124c5 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124c5)
  store %struct.Memory* %call_4124c5, %struct.Memory** %MEMORY

  ; Code: cmpl -0x10(%rbp), %eax	 RIP: 4124c8	 Bytes: 3
  %loadMem_4124c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124c8 = call %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124c8)
  store %struct.Memory* %call_4124c8, %struct.Memory** %MEMORY

  ; Code: jl .L_4124dc	 RIP: 4124cb	 Bytes: 6
  %loadMem_4124cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124cb = call %struct.Memory* @routine_jl_.L_4124dc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124cb, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_4124cb, %struct.Memory** %MEMORY

  %loadBr_4124cb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4124cb = icmp eq i8 %loadBr_4124cb, 1
  br i1 %cmpBr_4124cb, label %block_.L_4124dc, label %block_4124d1

block_4124d1:
  ; Code: movl -0x24(%rbp), %eax	 RIP: 4124d1	 Bytes: 3
  %loadMem_4124d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124d1 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124d1)
  store %struct.Memory* %call_4124d1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 4124d4	 Bytes: 3
  %loadMem_4124d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124d4 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124d4)
  store %struct.Memory* %call_4124d4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_412a94	 RIP: 4124d7	 Bytes: 5
  %loadMem_4124d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124d7 = call %struct.Memory* @routine_jmpq_.L_412a94(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124d7, i64 1469, i64 5)
  store %struct.Memory* %call_4124d7, %struct.Memory** %MEMORY

  br label %block_.L_412a94

  ; Code: .L_4124dc:	 RIP: 4124dc	 Bytes: 0
block_.L_4124dc:

  ; Code: movl 0x99da04, %eax	 RIP: 4124dc	 Bytes: 7
  %loadMem_4124dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124dc = call %struct.Memory* @routine_movl_0x99da04___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124dc)
  store %struct.Memory* %call_4124dc, %struct.Memory** %MEMORY

  ; Code: movl -0x5c(%rbp), %ecx	 RIP: 4124e3	 Bytes: 3
  %loadMem_4124e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124e3 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124e3)
  store %struct.Memory* %call_4124e3, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 4124e6	 Bytes: 3
  %loadMem_4124e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124e6 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124e6)
  store %struct.Memory* %call_4124e6, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4124e9	 Bytes: 3
  %loadMem_4124e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124e9 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124e9)
  store %struct.Memory* %call_4124e9, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xaaadb0(,%rdx,4)	 RIP: 4124ec	 Bytes: 7
  %loadMem_4124ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124ec = call %struct.Memory* @routine_movl__eax__0xaaadb0___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124ec)
  store %struct.Memory* %call_4124ec, %struct.Memory** %MEMORY

  ; Code: .L_4124f3:	 RIP: 4124f3	 Bytes: 0
  br label %block_.L_4124f3
block_.L_4124f3:

  ; Code: movl -0x5c(%rbp), %eax	 RIP: 4124f3	 Bytes: 3
  %loadMem_4124f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124f3 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124f3)
  store %struct.Memory* %call_4124f3, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4124f6	 Bytes: 3
  %loadMem_4124f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124f6 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124f6)
  store %struct.Memory* %call_4124f6, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4124f9	 Bytes: 3
  %loadMem_4124f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124f9 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124f9)
  store %struct.Memory* %call_4124f9, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4124fc	 Bytes: 8
  %loadMem_4124fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4124fc = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4124fc)
  store %struct.Memory* %call_4124fc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 412504	 Bytes: 3
  %loadMem_412504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412504 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412504)
  store %struct.Memory* %call_412504, %struct.Memory** %MEMORY

  ; Code: jne .L_41257d	 RIP: 412507	 Bytes: 6
  %loadMem_412507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412507 = call %struct.Memory* @routine_jne_.L_41257d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412507, i8* %BRANCH_TAKEN, i64 118, i64 6, i64 6)
  store %struct.Memory* %call_412507, %struct.Memory** %MEMORY

  %loadBr_412507 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412507 = icmp eq i8 %loadBr_412507, 1
  br i1 %cmpBr_412507, label %block_.L_41257d, label %block_41250d

block_41250d:
  ; Code: movl -0x5c(%rbp), %eax	 RIP: 41250d	 Bytes: 3
  %loadMem_41250d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41250d = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41250d)
  store %struct.Memory* %call_41250d, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 412510	 Bytes: 3
  %loadMem_412510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412510 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412510)
  store %struct.Memory* %call_412510, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 412513	 Bytes: 3
  %loadMem_412513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412513 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412513)
  store %struct.Memory* %call_412513, %struct.Memory** %MEMORY

  ; Code: movl 0xaaadb0(,%rcx,4), %eax	 RIP: 412516	 Bytes: 7
  %loadMem_412516 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412516 = call %struct.Memory* @routine_movl_0xaaadb0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412516)
  store %struct.Memory* %call_412516, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da04, %eax	 RIP: 41251d	 Bytes: 7
  %loadMem_41251d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41251d = call %struct.Memory* @routine_cmpl_0x99da04___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41251d)
  store %struct.Memory* %call_41251d, %struct.Memory** %MEMORY

  ; Code: je .L_41257d	 RIP: 412524	 Bytes: 6
  %loadMem_412524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412524 = call %struct.Memory* @routine_je_.L_41257d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412524, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_412524, %struct.Memory** %MEMORY

  %loadBr_412524 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412524 = icmp eq i8 %loadBr_412524, 1
  br i1 %cmpBr_412524, label %block_.L_41257d, label %block_41252a

block_41252a:
  ; Code: cmpq $0x0, -0x18(%rbp)	 RIP: 41252a	 Bytes: 5
  %loadMem_41252a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41252a = call %struct.Memory* @routine_cmpq__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41252a)
  store %struct.Memory* %call_41252a, %struct.Memory** %MEMORY

  ; Code: je .L_412546	 RIP: 41252f	 Bytes: 6
  %loadMem_41252f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41252f = call %struct.Memory* @routine_je_.L_412546(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41252f, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_41252f, %struct.Memory** %MEMORY

  %loadBr_41252f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41252f = icmp eq i8 %loadBr_41252f, 1
  br i1 %cmpBr_41252f, label %block_.L_412546, label %block_412535

block_412535:
  ; Code: movl -0x5c(%rbp), %eax	 RIP: 412535	 Bytes: 3
  %loadMem_412535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412535 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412535)
  store %struct.Memory* %call_412535, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 412538	 Bytes: 3
  %loadMem_412538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412538 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412538)
  store %struct.Memory* %call_412538, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 41253b	 Bytes: 4
  %loadMem_41253b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41253b = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41253b)
  store %struct.Memory* %call_41253b, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 41253f	 Bytes: 4
  %loadMem_41253f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41253f = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41253f)
  store %struct.Memory* %call_41253f, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 412543	 Bytes: 3
  %loadMem_412543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412543 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412543)
  store %struct.Memory* %call_412543, %struct.Memory** %MEMORY

  ; Code: .L_412546:	 RIP: 412546	 Bytes: 0
  br label %block_.L_412546
block_.L_412546:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 412546	 Bytes: 3
  %loadMem_412546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412546 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412546)
  store %struct.Memory* %call_412546, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 412549	 Bytes: 3
  %loadMem_412549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412549 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412549)
  store %struct.Memory* %call_412549, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 41254c	 Bytes: 3
  %loadMem_41254c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41254c = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41254c)
  store %struct.Memory* %call_41254c, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 41254f	 Bytes: 3
  %loadMem_41254f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41254f = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41254f)
  store %struct.Memory* %call_41254f, %struct.Memory** %MEMORY

  ; Code: cmpl -0x10(%rbp), %eax	 RIP: 412552	 Bytes: 3
  %loadMem_412552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412552 = call %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412552)
  store %struct.Memory* %call_412552, %struct.Memory** %MEMORY

  ; Code: jl .L_412566	 RIP: 412555	 Bytes: 6
  %loadMem_412555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412555 = call %struct.Memory* @routine_jl_.L_412566(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412555, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_412555, %struct.Memory** %MEMORY

  %loadBr_412555 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412555 = icmp eq i8 %loadBr_412555, 1
  br i1 %cmpBr_412555, label %block_.L_412566, label %block_41255b

block_41255b:
  ; Code: movl -0x24(%rbp), %eax	 RIP: 41255b	 Bytes: 3
  %loadMem_41255b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41255b = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41255b)
  store %struct.Memory* %call_41255b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 41255e	 Bytes: 3
  %loadMem_41255e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41255e = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41255e)
  store %struct.Memory* %call_41255e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_412a94	 RIP: 412561	 Bytes: 5
  %loadMem_412561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412561 = call %struct.Memory* @routine_jmpq_.L_412a94(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412561, i64 1331, i64 5)
  store %struct.Memory* %call_412561, %struct.Memory** %MEMORY

  br label %block_.L_412a94

  ; Code: .L_412566:	 RIP: 412566	 Bytes: 0
block_.L_412566:

  ; Code: movl 0x99da04, %eax	 RIP: 412566	 Bytes: 7
  %loadMem_412566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412566 = call %struct.Memory* @routine_movl_0x99da04___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412566)
  store %struct.Memory* %call_412566, %struct.Memory** %MEMORY

  ; Code: movl -0x5c(%rbp), %ecx	 RIP: 41256d	 Bytes: 3
  %loadMem_41256d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41256d = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41256d)
  store %struct.Memory* %call_41256d, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %ecx	 RIP: 412570	 Bytes: 3
  %loadMem_412570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412570 = call %struct.Memory* @routine_subl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412570)
  store %struct.Memory* %call_412570, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 412573	 Bytes: 3
  %loadMem_412573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412573 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412573)
  store %struct.Memory* %call_412573, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xaaadb0(,%rdx,4)	 RIP: 412576	 Bytes: 7
  %loadMem_412576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412576 = call %struct.Memory* @routine_movl__eax__0xaaadb0___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412576)
  store %struct.Memory* %call_412576, %struct.Memory** %MEMORY

  ; Code: .L_41257d:	 RIP: 41257d	 Bytes: 0
  br label %block_.L_41257d
block_.L_41257d:

  ; Code: movl -0x5c(%rbp), %eax	 RIP: 41257d	 Bytes: 3
  %loadMem_41257d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41257d = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41257d)
  store %struct.Memory* %call_41257d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 412580	 Bytes: 3
  %loadMem_412580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412580 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412580)
  store %struct.Memory* %call_412580, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 412583	 Bytes: 3
  %loadMem_412583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412583 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412583)
  store %struct.Memory* %call_412583, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 412586	 Bytes: 8
  %loadMem_412586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412586 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412586)
  store %struct.Memory* %call_412586, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41258e	 Bytes: 3
  %loadMem_41258e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41258e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41258e)
  store %struct.Memory* %call_41258e, %struct.Memory** %MEMORY

  ; Code: jne .L_412607	 RIP: 412591	 Bytes: 6
  %loadMem_412591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412591 = call %struct.Memory* @routine_jne_.L_412607(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412591, i8* %BRANCH_TAKEN, i64 118, i64 6, i64 6)
  store %struct.Memory* %call_412591, %struct.Memory** %MEMORY

  %loadBr_412591 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412591 = icmp eq i8 %loadBr_412591, 1
  br i1 %cmpBr_412591, label %block_.L_412607, label %block_412597

block_412597:
  ; Code: movl -0x5c(%rbp), %eax	 RIP: 412597	 Bytes: 3
  %loadMem_412597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412597 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412597)
  store %struct.Memory* %call_412597, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41259a	 Bytes: 3
  %loadMem_41259a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41259a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41259a)
  store %struct.Memory* %call_41259a, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 41259d	 Bytes: 3
  %loadMem_41259d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41259d = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41259d)
  store %struct.Memory* %call_41259d, %struct.Memory** %MEMORY

  ; Code: movl 0xaaadb0(,%rcx,4), %eax	 RIP: 4125a0	 Bytes: 7
  %loadMem_4125a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125a0 = call %struct.Memory* @routine_movl_0xaaadb0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125a0)
  store %struct.Memory* %call_4125a0, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da04, %eax	 RIP: 4125a7	 Bytes: 7
  %loadMem_4125a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125a7 = call %struct.Memory* @routine_cmpl_0x99da04___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125a7)
  store %struct.Memory* %call_4125a7, %struct.Memory** %MEMORY

  ; Code: je .L_412607	 RIP: 4125ae	 Bytes: 6
  %loadMem_4125ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125ae = call %struct.Memory* @routine_je_.L_412607(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125ae, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_4125ae, %struct.Memory** %MEMORY

  %loadBr_4125ae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4125ae = icmp eq i8 %loadBr_4125ae, 1
  br i1 %cmpBr_4125ae, label %block_.L_412607, label %block_4125b4

block_4125b4:
  ; Code: cmpq $0x0, -0x18(%rbp)	 RIP: 4125b4	 Bytes: 5
  %loadMem_4125b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125b4 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125b4)
  store %struct.Memory* %call_4125b4, %struct.Memory** %MEMORY

  ; Code: je .L_4125d0	 RIP: 4125b9	 Bytes: 6
  %loadMem_4125b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125b9 = call %struct.Memory* @routine_je_.L_4125d0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125b9, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_4125b9, %struct.Memory** %MEMORY

  %loadBr_4125b9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4125b9 = icmp eq i8 %loadBr_4125b9, 1
  br i1 %cmpBr_4125b9, label %block_.L_4125d0, label %block_4125bf

block_4125bf:
  ; Code: movl -0x5c(%rbp), %eax	 RIP: 4125bf	 Bytes: 3
  %loadMem_4125bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125bf = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125bf)
  store %struct.Memory* %call_4125bf, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4125c2	 Bytes: 3
  %loadMem_4125c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125c2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125c2)
  store %struct.Memory* %call_4125c2, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4125c5	 Bytes: 4
  %loadMem_4125c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125c5 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125c5)
  store %struct.Memory* %call_4125c5, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4125c9	 Bytes: 4
  %loadMem_4125c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125c9 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125c9)
  store %struct.Memory* %call_4125c9, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 4125cd	 Bytes: 3
  %loadMem_4125cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125cd = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125cd)
  store %struct.Memory* %call_4125cd, %struct.Memory** %MEMORY

  ; Code: .L_4125d0:	 RIP: 4125d0	 Bytes: 0
  br label %block_.L_4125d0
block_.L_4125d0:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4125d0	 Bytes: 3
  %loadMem_4125d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125d0 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125d0)
  store %struct.Memory* %call_4125d0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4125d3	 Bytes: 3
  %loadMem_4125d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125d3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125d3)
  store %struct.Memory* %call_4125d3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 4125d6	 Bytes: 3
  %loadMem_4125d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125d6 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125d6)
  store %struct.Memory* %call_4125d6, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4125d9	 Bytes: 3
  %loadMem_4125d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125d9 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125d9)
  store %struct.Memory* %call_4125d9, %struct.Memory** %MEMORY

  ; Code: cmpl -0x10(%rbp), %eax	 RIP: 4125dc	 Bytes: 3
  %loadMem_4125dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125dc = call %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125dc)
  store %struct.Memory* %call_4125dc, %struct.Memory** %MEMORY

  ; Code: jl .L_4125f0	 RIP: 4125df	 Bytes: 6
  %loadMem_4125df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125df = call %struct.Memory* @routine_jl_.L_4125f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125df, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_4125df, %struct.Memory** %MEMORY

  %loadBr_4125df = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4125df = icmp eq i8 %loadBr_4125df, 1
  br i1 %cmpBr_4125df, label %block_.L_4125f0, label %block_4125e5

block_4125e5:
  ; Code: movl -0x24(%rbp), %eax	 RIP: 4125e5	 Bytes: 3
  %loadMem_4125e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125e5 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125e5)
  store %struct.Memory* %call_4125e5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 4125e8	 Bytes: 3
  %loadMem_4125e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125e8 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125e8)
  store %struct.Memory* %call_4125e8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_412a94	 RIP: 4125eb	 Bytes: 5
  %loadMem_4125eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125eb = call %struct.Memory* @routine_jmpq_.L_412a94(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125eb, i64 1193, i64 5)
  store %struct.Memory* %call_4125eb, %struct.Memory** %MEMORY

  br label %block_.L_412a94

  ; Code: .L_4125f0:	 RIP: 4125f0	 Bytes: 0
block_.L_4125f0:

  ; Code: movl 0x99da04, %eax	 RIP: 4125f0	 Bytes: 7
  %loadMem_4125f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125f0 = call %struct.Memory* @routine_movl_0x99da04___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125f0)
  store %struct.Memory* %call_4125f0, %struct.Memory** %MEMORY

  ; Code: movl -0x5c(%rbp), %ecx	 RIP: 4125f7	 Bytes: 3
  %loadMem_4125f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125f7 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125f7)
  store %struct.Memory* %call_4125f7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4125fa	 Bytes: 3
  %loadMem_4125fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125fa = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125fa)
  store %struct.Memory* %call_4125fa, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4125fd	 Bytes: 3
  %loadMem_4125fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4125fd = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4125fd)
  store %struct.Memory* %call_4125fd, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xaaadb0(,%rdx,4)	 RIP: 412600	 Bytes: 7
  %loadMem_412600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412600 = call %struct.Memory* @routine_movl__eax__0xaaadb0___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412600)
  store %struct.Memory* %call_412600, %struct.Memory** %MEMORY

  ; Code: .L_412607:	 RIP: 412607	 Bytes: 0
  br label %block_.L_412607
block_.L_412607:

  ; Code: movslq -0x5c(%rbp), %rax	 RIP: 412607	 Bytes: 4
  %loadMem_412607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412607 = call %struct.Memory* @routine_movslq_MINUS0x5c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412607)
  store %struct.Memory* %call_412607, %struct.Memory** %MEMORY

  ; Code: movl 0xaaba30(,%rax,4), %ecx	 RIP: 41260b	 Bytes: 7
  %loadMem_41260b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41260b = call %struct.Memory* @routine_movl_0xaaba30___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41260b)
  store %struct.Memory* %call_41260b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x5c(%rbp)	 RIP: 412612	 Bytes: 3
  %loadMem_412612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412612 = call %struct.Memory* @routine_movl__ecx__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412612)
  store %struct.Memory* %call_412612, %struct.Memory** %MEMORY

  ; Code: movl -0x5c(%rbp), %eax	 RIP: 412615	 Bytes: 3
  %loadMem_412615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412615 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412615)
  store %struct.Memory* %call_412615, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4c(%rbp), %eax	 RIP: 412618	 Bytes: 3
  %loadMem_412618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412618 = call %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412618)
  store %struct.Memory* %call_412618, %struct.Memory** %MEMORY

  ; Code: jne .L_4123df	 RIP: 41261b	 Bytes: 6
  %loadMem_41261b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41261b = call %struct.Memory* @routine_jne_.L_4123df(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41261b, i8* %BRANCH_TAKEN, i64 -572, i64 6, i64 6)
  store %struct.Memory* %call_41261b, %struct.Memory** %MEMORY

  %loadBr_41261b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41261b = icmp eq i8 %loadBr_41261b, 1
  br i1 %cmpBr_41261b, label %block_.L_4123df, label %block_412621

block_412621:
  ; Code: jmpq .L_412626	 RIP: 412621	 Bytes: 5
  %loadMem_412621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412621 = call %struct.Memory* @routine_jmpq_.L_412626(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412621, i64 5, i64 5)
  store %struct.Memory* %call_412621, %struct.Memory** %MEMORY

  br label %block_.L_412626

  ; Code: .L_412626:	 RIP: 412626	 Bytes: 0
block_.L_412626:

  ; Code: movq $0xa7f430, %rax	 RIP: 412626	 Bytes: 10
  %loadMem_412626 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412626 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412626)
  store %struct.Memory* %call_412626, %struct.Memory** %MEMORY

  ; Code: movl 0x99da08, %ecx	 RIP: 412630	 Bytes: 7
  %loadMem_412630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412630 = call %struct.Memory* @routine_movl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412630)
  store %struct.Memory* %call_412630, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 412637	 Bytes: 4
  %loadMem_412637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412637 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412637)
  store %struct.Memory* %call_412637, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 41263b	 Bytes: 8
  %loadMem_41263b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41263b = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41263b)
  store %struct.Memory* %call_41263b, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 412643	 Bytes: 7
  %loadMem_412643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412643 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412643)
  store %struct.Memory* %call_412643, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41264a	 Bytes: 3
  %loadMem_41264a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41264a = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41264a)
  store %struct.Memory* %call_41264a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x2e4(%rax)	 RIP: 41264d	 Bytes: 6
  %loadMem_41264d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41264d = call %struct.Memory* @routine_movl__ecx__0x2e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41264d)
  store %struct.Memory* %call_41264d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4126b8	 RIP: 412653	 Bytes: 5
  %loadMem_412653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412653 = call %struct.Memory* @routine_jmpq_.L_4126b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412653, i64 101, i64 5)
  store %struct.Memory* %call_412653, %struct.Memory** %MEMORY

  br label %block_.L_4126b8

  ; Code: .L_412658:	 RIP: 412658	 Bytes: 0
block_.L_412658:

  ; Code: movl $0x3, %eax	 RIP: 412658	 Bytes: 5
  %loadMem_412658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412658 = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412658)
  store %struct.Memory* %call_412658, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 41265d	 Bytes: 4
  %loadMem_41265d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41265d = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41265d)
  store %struct.Memory* %call_41265d, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %edx	 RIP: 412661	 Bytes: 8
  %loadMem_412661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412661 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412661)
  store %struct.Memory* %call_412661, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 412669	 Bytes: 3
  %loadMem_412669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412669 = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412669)
  store %struct.Memory* %call_412669, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %edx	 RIP: 41266c	 Bytes: 2
  %loadMem_41266c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41266c = call %struct.Memory* @routine_cmpl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41266c)
  store %struct.Memory* %call_41266c, %struct.Memory** %MEMORY

  ; Code: jne .L_4126b3	 RIP: 41266e	 Bytes: 6
  %loadMem_41266e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41266e = call %struct.Memory* @routine_jne_.L_4126b3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41266e, i8* %BRANCH_TAKEN, i64 69, i64 6, i64 6)
  store %struct.Memory* %call_41266e, %struct.Memory** %MEMORY

  %loadBr_41266e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41266e = icmp eq i8 %loadBr_41266e, 1
  br i1 %cmpBr_41266e, label %block_.L_4126b3, label %block_412674

block_412674:
  ; Code: movq $0xa7f430, %rax	 RIP: 412674	 Bytes: 10
  %loadMem_412674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412674 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412674)
  store %struct.Memory* %call_412674, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 41267e	 Bytes: 4
  %loadMem_41267e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41267e = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41267e)
  store %struct.Memory* %call_41267e, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rcx,4), %rcx	 RIP: 412682	 Bytes: 8
  %loadMem_412682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412682 = call %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412682)
  store %struct.Memory* %call_412682, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 41268a	 Bytes: 7
  %loadMem_41268a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41268a = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41268a)
  store %struct.Memory* %call_41268a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 412691	 Bytes: 3
  %loadMem_412691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412691 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412691)
  store %struct.Memory* %call_412691, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xc(%rax)	 RIP: 412694	 Bytes: 4
  %loadMem_412694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412694 = call %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412694)
  store %struct.Memory* %call_412694, %struct.Memory** %MEMORY

  ; Code: jne .L_4126b3	 RIP: 412698	 Bytes: 6
  %loadMem_412698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412698 = call %struct.Memory* @routine_jne_.L_4126b3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412698, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_412698, %struct.Memory** %MEMORY

  %loadBr_412698 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412698 = icmp eq i8 %loadBr_412698, 1
  br i1 %cmpBr_412698, label %block_.L_4126b3, label %block_41269e

block_41269e:
  ; Code: movl -0x4c(%rbp), %eax	 RIP: 41269e	 Bytes: 3
  %loadMem_41269e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41269e = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41269e)
  store %struct.Memory* %call_41269e, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %ecx	 RIP: 4126a1	 Bytes: 3
  %loadMem_4126a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126a1 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126a1)
  store %struct.Memory* %call_4126a1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 4126a4	 Bytes: 2
  %loadMem_4126a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126a4 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126a4)
  store %struct.Memory* %call_4126a4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 4126a6	 Bytes: 3
  %loadMem_4126a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126a6 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126a6)
  store %struct.Memory* %call_4126a6, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x44(%rbp)	 RIP: 4126a9	 Bytes: 3
  %loadMem_4126a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126a9 = call %struct.Memory* @routine_movl__edx__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126a9)
  store %struct.Memory* %call_4126a9, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 4126ac	 Bytes: 3
  %loadMem_4126ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126ac = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126ac)
  store %struct.Memory* %call_4126ac, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40(%rbp,%rsi,4)	 RIP: 4126af	 Bytes: 4
  %loadMem_4126af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126af = call %struct.Memory* @routine_movl__eax__MINUS0x40__rbp__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126af)
  store %struct.Memory* %call_4126af, %struct.Memory** %MEMORY

  ; Code: .L_4126b3:	 RIP: 4126b3	 Bytes: 0
  br label %block_.L_4126b3
block_.L_4126b3:

  ; Code: jmpq .L_4126b8	 RIP: 4126b3	 Bytes: 5
  %loadMem_4126b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126b3 = call %struct.Memory* @routine_jmpq_.L_4126b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126b3, i64 5, i64 5)
  store %struct.Memory* %call_4126b3, %struct.Memory** %MEMORY

  br label %block_.L_4126b8

  ; Code: .L_4126b8:	 RIP: 4126b8	 Bytes: 0
block_.L_4126b8:

  ; Code: jmpq .L_4126bd	 RIP: 4126b8	 Bytes: 5
  %loadMem_4126b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126b8 = call %struct.Memory* @routine_jmpq_.L_4126bd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126b8, i64 5, i64 5)
  store %struct.Memory* %call_4126b8, %struct.Memory** %MEMORY

  br label %block_.L_4126bd

  ; Code: .L_4126bd:	 RIP: 4126bd	 Bytes: 0
block_.L_4126bd:

  ; Code: jmpq .L_4126c2	 RIP: 4126bd	 Bytes: 5
  %loadMem_4126bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126bd = call %struct.Memory* @routine_jmpq_.L_4126c2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126bd, i64 5, i64 5)
  store %struct.Memory* %call_4126bd, %struct.Memory** %MEMORY

  br label %block_.L_4126c2

  ; Code: .L_4126c2:	 RIP: 4126c2	 Bytes: 0
block_.L_4126c2:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4126c2	 Bytes: 3
  %loadMem_4126c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126c2 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126c2)
  store %struct.Memory* %call_4126c2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4126c5	 Bytes: 3
  %loadMem_4126c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126c5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126c5)
  store %struct.Memory* %call_4126c5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 4126c8	 Bytes: 3
  %loadMem_4126c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126c8 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126c8)
  store %struct.Memory* %call_4126c8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_412207	 RIP: 4126cb	 Bytes: 5
  %loadMem_4126cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126cb = call %struct.Memory* @routine_jmpq_.L_412207(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126cb, i64 -1220, i64 5)
  store %struct.Memory* %call_4126cb, %struct.Memory** %MEMORY

  br label %block_.L_412207

  ; Code: .L_4126d0:	 RIP: 4126d0	 Bytes: 0
block_.L_4126d0:

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 4126d0	 Bytes: 7
  %loadMem_4126d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126d0 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126d0)
  store %struct.Memory* %call_4126d0, %struct.Memory** %MEMORY

  ; Code: .L_4126d7:	 RIP: 4126d7	 Bytes: 0
  br label %block_.L_4126d7
block_.L_4126d7:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4126d7	 Bytes: 3
  %loadMem_4126d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126d7 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126d7)
  store %struct.Memory* %call_4126d7, %struct.Memory** %MEMORY

  ; Code: cmpl -0x44(%rbp), %eax	 RIP: 4126da	 Bytes: 3
  %loadMem_4126da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126da = call %struct.Memory* @routine_cmpl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126da)
  store %struct.Memory* %call_4126da, %struct.Memory** %MEMORY

  ; Code: jge .L_412a8e	 RIP: 4126dd	 Bytes: 6
  %loadMem_4126dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126dd = call %struct.Memory* @routine_jge_.L_412a8e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126dd, i8* %BRANCH_TAKEN, i64 945, i64 6, i64 6)
  store %struct.Memory* %call_4126dd, %struct.Memory** %MEMORY

  %loadBr_4126dd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4126dd = icmp eq i8 %loadBr_4126dd, 1
  br i1 %cmpBr_4126dd, label %block_.L_412a8e, label %block_4126e3

block_4126e3:
  ; Code: movslq -0x1c(%rbp), %rax	 RIP: 4126e3	 Bytes: 4
  %loadMem_4126e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126e3 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126e3)
  store %struct.Memory* %call_4126e3, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp,%rax,4), %ecx	 RIP: 4126e7	 Bytes: 4
  %loadMem_4126e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126e7 = call %struct.Memory* @routine_movl_MINUS0x40__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126e7)
  store %struct.Memory* %call_4126e7, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 4126eb	 Bytes: 3
  %loadMem_4126eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126eb = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126eb)
  store %struct.Memory* %call_4126eb, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 4126ee	 Bytes: 3
  %loadMem_4126ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126ee = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126ee)
  store %struct.Memory* %call_4126ee, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 4126f1	 Bytes: 3
  %loadMem_4126f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126f1 = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126f1)
  store %struct.Memory* %call_4126f1, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 4126f4	 Bytes: 3
  %loadMem_4126f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126f4 = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126f4)
  store %struct.Memory* %call_4126f4, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 4126f7	 Bytes: 8
  %loadMem_4126f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126f7 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126f7)
  store %struct.Memory* %call_4126f7, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %ecx	 RIP: 4126ff	 Bytes: 3
  %loadMem_4126ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4126ff = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4126ff)
  store %struct.Memory* %call_4126ff, %struct.Memory** %MEMORY

  ; Code: jne .L_412740	 RIP: 412702	 Bytes: 6
  %loadMem_412702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412702 = call %struct.Memory* @routine_jne_.L_412740(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412702, i8* %BRANCH_TAKEN, i64 62, i64 6, i64 6)
  store %struct.Memory* %call_412702, %struct.Memory** %MEMORY

  %loadBr_412702 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412702 = icmp eq i8 %loadBr_412702, 1
  br i1 %cmpBr_412702, label %block_.L_412740, label %block_412708

block_412708:
  ; Code: movq $0xa7f430, %rax	 RIP: 412708	 Bytes: 10
  %loadMem_412708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412708 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412708)
  store %struct.Memory* %call_412708, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 412712	 Bytes: 3
  %loadMem_412712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412712 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412712)
  store %struct.Memory* %call_412712, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 412715	 Bytes: 3
  %loadMem_412715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412715 = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412715)
  store %struct.Memory* %call_412715, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 412718	 Bytes: 3
  %loadMem_412718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412718 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412718)
  store %struct.Memory* %call_412718, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 41271b	 Bytes: 8
  %loadMem_41271b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41271b = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41271b)
  store %struct.Memory* %call_41271b, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 412723	 Bytes: 7
  %loadMem_412723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412723 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412723)
  store %struct.Memory* %call_412723, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41272a	 Bytes: 3
  %loadMem_41272a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41272a = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41272a)
  store %struct.Memory* %call_41272a, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %ecx	 RIP: 41272d	 Bytes: 6
  %loadMem_41272d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41272d = call %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41272d)
  store %struct.Memory* %call_41272d, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %ecx	 RIP: 412733	 Bytes: 7
  %loadMem_412733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412733 = call %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412733)
  store %struct.Memory* %call_412733, %struct.Memory** %MEMORY

  ; Code: je .L_412874	 RIP: 41273a	 Bytes: 6
  %loadMem_41273a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41273a = call %struct.Memory* @routine_je_.L_412874(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41273a, i8* %BRANCH_TAKEN, i64 314, i64 6, i64 6)
  store %struct.Memory* %call_41273a, %struct.Memory** %MEMORY

  %loadBr_41273a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41273a = icmp eq i8 %loadBr_41273a, 1
  br i1 %cmpBr_41273a, label %block_.L_412874, label %block_.L_412740

  ; Code: .L_412740:	 RIP: 412740	 Bytes: 0
block_.L_412740:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 412740	 Bytes: 3
  %loadMem_412740 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412740 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412740)
  store %struct.Memory* %call_412740, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 412743	 Bytes: 3
  %loadMem_412743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412743 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412743)
  store %struct.Memory* %call_412743, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 412746	 Bytes: 3
  %loadMem_412746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412746 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412746)
  store %struct.Memory* %call_412746, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 412749	 Bytes: 8
  %loadMem_412749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412749 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412749)
  store %struct.Memory* %call_412749, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 412751	 Bytes: 3
  %loadMem_412751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412751 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412751)
  store %struct.Memory* %call_412751, %struct.Memory** %MEMORY

  ; Code: jne .L_412792	 RIP: 412754	 Bytes: 6
  %loadMem_412754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412754 = call %struct.Memory* @routine_jne_.L_412792(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412754, i8* %BRANCH_TAKEN, i64 62, i64 6, i64 6)
  store %struct.Memory* %call_412754, %struct.Memory** %MEMORY

  %loadBr_412754 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412754 = icmp eq i8 %loadBr_412754, 1
  br i1 %cmpBr_412754, label %block_.L_412792, label %block_41275a

block_41275a:
  ; Code: movq $0xa7f430, %rax	 RIP: 41275a	 Bytes: 10
  %loadMem_41275a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41275a = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41275a)
  store %struct.Memory* %call_41275a, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 412764	 Bytes: 3
  %loadMem_412764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412764 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412764)
  store %struct.Memory* %call_412764, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 412767	 Bytes: 3
  %loadMem_412767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412767 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412767)
  store %struct.Memory* %call_412767, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 41276a	 Bytes: 3
  %loadMem_41276a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41276a = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41276a)
  store %struct.Memory* %call_41276a, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 41276d	 Bytes: 8
  %loadMem_41276d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41276d = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41276d)
  store %struct.Memory* %call_41276d, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 412775	 Bytes: 7
  %loadMem_412775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412775 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412775)
  store %struct.Memory* %call_412775, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41277c	 Bytes: 3
  %loadMem_41277c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41277c = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41277c)
  store %struct.Memory* %call_41277c, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %ecx	 RIP: 41277f	 Bytes: 6
  %loadMem_41277f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41277f = call %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41277f)
  store %struct.Memory* %call_41277f, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %ecx	 RIP: 412785	 Bytes: 7
  %loadMem_412785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412785 = call %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412785)
  store %struct.Memory* %call_412785, %struct.Memory** %MEMORY

  ; Code: je .L_412874	 RIP: 41278c	 Bytes: 6
  %loadMem_41278c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41278c = call %struct.Memory* @routine_je_.L_412874(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41278c, i8* %BRANCH_TAKEN, i64 232, i64 6, i64 6)
  store %struct.Memory* %call_41278c, %struct.Memory** %MEMORY

  %loadBr_41278c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41278c = icmp eq i8 %loadBr_41278c, 1
  br i1 %cmpBr_41278c, label %block_.L_412874, label %block_.L_412792

  ; Code: .L_412792:	 RIP: 412792	 Bytes: 0
block_.L_412792:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 412792	 Bytes: 3
  %loadMem_412792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412792 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412792)
  store %struct.Memory* %call_412792, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 412795	 Bytes: 3
  %loadMem_412795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412795 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412795)
  store %struct.Memory* %call_412795, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 412798	 Bytes: 3
  %loadMem_412798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412798 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412798)
  store %struct.Memory* %call_412798, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 41279b	 Bytes: 8
  %loadMem_41279b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41279b = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41279b)
  store %struct.Memory* %call_41279b, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4127a3	 Bytes: 3
  %loadMem_4127a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4127a3 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4127a3)
  store %struct.Memory* %call_4127a3, %struct.Memory** %MEMORY

  ; Code: jne .L_4127e4	 RIP: 4127a6	 Bytes: 6
  %loadMem_4127a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4127a6 = call %struct.Memory* @routine_jne_.L_4127e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4127a6, i8* %BRANCH_TAKEN, i64 62, i64 6, i64 6)
  store %struct.Memory* %call_4127a6, %struct.Memory** %MEMORY

  %loadBr_4127a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4127a6 = icmp eq i8 %loadBr_4127a6, 1
  br i1 %cmpBr_4127a6, label %block_.L_4127e4, label %block_4127ac

block_4127ac:
  ; Code: movq $0xa7f430, %rax	 RIP: 4127ac	 Bytes: 10
  %loadMem_4127ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4127ac = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4127ac)
  store %struct.Memory* %call_4127ac, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 4127b6	 Bytes: 3
  %loadMem_4127b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4127b6 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4127b6)
  store %struct.Memory* %call_4127b6, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %ecx	 RIP: 4127b9	 Bytes: 3
  %loadMem_4127b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4127b9 = call %struct.Memory* @routine_subl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4127b9)
  store %struct.Memory* %call_4127b9, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4127bc	 Bytes: 3
  %loadMem_4127bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4127bc = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4127bc)
  store %struct.Memory* %call_4127bc, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 4127bf	 Bytes: 8
  %loadMem_4127bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4127bf = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4127bf)
  store %struct.Memory* %call_4127bf, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 4127c7	 Bytes: 7
  %loadMem_4127c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4127c7 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4127c7)
  store %struct.Memory* %call_4127c7, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4127ce	 Bytes: 3
  %loadMem_4127ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4127ce = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4127ce)
  store %struct.Memory* %call_4127ce, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %ecx	 RIP: 4127d1	 Bytes: 6
  %loadMem_4127d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4127d1 = call %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4127d1)
  store %struct.Memory* %call_4127d1, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %ecx	 RIP: 4127d7	 Bytes: 7
  %loadMem_4127d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4127d7 = call %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4127d7)
  store %struct.Memory* %call_4127d7, %struct.Memory** %MEMORY

  ; Code: je .L_412874	 RIP: 4127de	 Bytes: 6
  %loadMem_4127de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4127de = call %struct.Memory* @routine_je_.L_412874(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4127de, i8* %BRANCH_TAKEN, i64 150, i64 6, i64 6)
  store %struct.Memory* %call_4127de, %struct.Memory** %MEMORY

  %loadBr_4127de = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4127de = icmp eq i8 %loadBr_4127de, 1
  br i1 %cmpBr_4127de, label %block_.L_412874, label %block_.L_4127e4

  ; Code: .L_4127e4:	 RIP: 4127e4	 Bytes: 0
block_.L_4127e4:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 4127e4	 Bytes: 3
  %loadMem_4127e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4127e4 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4127e4)
  store %struct.Memory* %call_4127e4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4127e7	 Bytes: 3
  %loadMem_4127e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4127e7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4127e7)
  store %struct.Memory* %call_4127e7, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4127ea	 Bytes: 3
  %loadMem_4127ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4127ea = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4127ea)
  store %struct.Memory* %call_4127ea, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4127ed	 Bytes: 8
  %loadMem_4127ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4127ed = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4127ed)
  store %struct.Memory* %call_4127ed, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4127f5	 Bytes: 3
  %loadMem_4127f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4127f5 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4127f5)
  store %struct.Memory* %call_4127f5, %struct.Memory** %MEMORY

  ; Code: jne .L_412836	 RIP: 4127f8	 Bytes: 6
  %loadMem_4127f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4127f8 = call %struct.Memory* @routine_jne_.L_412836(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4127f8, i8* %BRANCH_TAKEN, i64 62, i64 6, i64 6)
  store %struct.Memory* %call_4127f8, %struct.Memory** %MEMORY

  %loadBr_4127f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4127f8 = icmp eq i8 %loadBr_4127f8, 1
  br i1 %cmpBr_4127f8, label %block_.L_412836, label %block_4127fe

block_4127fe:
  ; Code: movq $0xa7f430, %rax	 RIP: 4127fe	 Bytes: 10
  %loadMem_4127fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4127fe = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4127fe)
  store %struct.Memory* %call_4127fe, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 412808	 Bytes: 3
  %loadMem_412808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412808 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412808)
  store %struct.Memory* %call_412808, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 41280b	 Bytes: 3
  %loadMem_41280b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41280b = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41280b)
  store %struct.Memory* %call_41280b, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 41280e	 Bytes: 3
  %loadMem_41280e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41280e = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41280e)
  store %struct.Memory* %call_41280e, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 412811	 Bytes: 8
  %loadMem_412811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412811 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412811)
  store %struct.Memory* %call_412811, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 412819	 Bytes: 7
  %loadMem_412819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412819 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412819)
  store %struct.Memory* %call_412819, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 412820	 Bytes: 3
  %loadMem_412820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412820 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412820)
  store %struct.Memory* %call_412820, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %ecx	 RIP: 412823	 Bytes: 6
  %loadMem_412823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412823 = call %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412823)
  store %struct.Memory* %call_412823, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %ecx	 RIP: 412829	 Bytes: 7
  %loadMem_412829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412829 = call %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412829)
  store %struct.Memory* %call_412829, %struct.Memory** %MEMORY

  ; Code: je .L_412874	 RIP: 412830	 Bytes: 6
  %loadMem_412830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412830 = call %struct.Memory* @routine_je_.L_412874(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412830, i8* %BRANCH_TAKEN, i64 68, i64 6, i64 6)
  store %struct.Memory* %call_412830, %struct.Memory** %MEMORY

  %loadBr_412830 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412830 = icmp eq i8 %loadBr_412830, 1
  br i1 %cmpBr_412830, label %block_.L_412874, label %block_.L_412836

  ; Code: .L_412836:	 RIP: 412836	 Bytes: 0
block_.L_412836:

  ; Code: cmpq $0x0, -0x18(%rbp)	 RIP: 412836	 Bytes: 5
  %loadMem_412836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412836 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412836)
  store %struct.Memory* %call_412836, %struct.Memory** %MEMORY

  ; Code: je .L_41284f	 RIP: 41283b	 Bytes: 6
  %loadMem_41283b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41283b = call %struct.Memory* @routine_je_.L_41284f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41283b, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_41283b, %struct.Memory** %MEMORY

  %loadBr_41283b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41283b = icmp eq i8 %loadBr_41283b, 1
  br i1 %cmpBr_41283b, label %block_.L_41284f, label %block_412841

block_412841:
  ; Code: movl -0x28(%rbp), %eax	 RIP: 412841	 Bytes: 3
  %loadMem_412841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412841 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412841)
  store %struct.Memory* %call_412841, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 412844	 Bytes: 4
  %loadMem_412844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412844 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412844)
  store %struct.Memory* %call_412844, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 412848	 Bytes: 4
  %loadMem_412848 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412848 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412848)
  store %struct.Memory* %call_412848, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 41284c	 Bytes: 3
  %loadMem_41284c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41284c = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41284c)
  store %struct.Memory* %call_41284c, %struct.Memory** %MEMORY

  ; Code: .L_41284f:	 RIP: 41284f	 Bytes: 0
  br label %block_.L_41284f
block_.L_41284f:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 41284f	 Bytes: 3
  %loadMem_41284f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41284f = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41284f)
  store %struct.Memory* %call_41284f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 412852	 Bytes: 3
  %loadMem_412852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412852 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412852)
  store %struct.Memory* %call_412852, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 412855	 Bytes: 3
  %loadMem_412855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412855 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412855)
  store %struct.Memory* %call_412855, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 412858	 Bytes: 3
  %loadMem_412858 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412858 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412858)
  store %struct.Memory* %call_412858, %struct.Memory** %MEMORY

  ; Code: cmpl -0x10(%rbp), %eax	 RIP: 41285b	 Bytes: 3
  %loadMem_41285b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41285b = call %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41285b)
  store %struct.Memory* %call_41285b, %struct.Memory** %MEMORY

  ; Code: jl .L_41286f	 RIP: 41285e	 Bytes: 6
  %loadMem_41285e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41285e = call %struct.Memory* @routine_jl_.L_41286f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41285e, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_41285e, %struct.Memory** %MEMORY

  %loadBr_41285e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41285e = icmp eq i8 %loadBr_41285e, 1
  br i1 %cmpBr_41285e, label %block_.L_41286f, label %block_412864

block_412864:
  ; Code: movl -0x24(%rbp), %eax	 RIP: 412864	 Bytes: 3
  %loadMem_412864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412864 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412864)
  store %struct.Memory* %call_412864, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 412867	 Bytes: 3
  %loadMem_412867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412867 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412867)
  store %struct.Memory* %call_412867, %struct.Memory** %MEMORY

  ; Code: jmpq .L_412a94	 RIP: 41286a	 Bytes: 5
  %loadMem_41286a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41286a = call %struct.Memory* @routine_jmpq_.L_412a94(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41286a, i64 554, i64 5)
  store %struct.Memory* %call_41286a, %struct.Memory** %MEMORY

  br label %block_.L_412a94

  ; Code: .L_41286f:	 RIP: 41286f	 Bytes: 0
block_.L_41286f:

  ; Code: jmpq .L_412874	 RIP: 41286f	 Bytes: 5
  %loadMem_41286f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41286f = call %struct.Memory* @routine_jmpq_.L_412874(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41286f, i64 5, i64 5)
  store %struct.Memory* %call_41286f, %struct.Memory** %MEMORY

  br label %block_.L_412874

  ; Code: .L_412874:	 RIP: 412874	 Bytes: 0
block_.L_412874:

  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 412874	 Bytes: 7
  %loadMem_412874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412874 = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412874)
  store %struct.Memory* %call_412874, %struct.Memory** %MEMORY

  ; Code: .L_41287b:	 RIP: 41287b	 Bytes: 0
  br label %block_.L_41287b
block_.L_41287b:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 41287b	 Bytes: 3
  %loadMem_41287b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41287b = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41287b)
  store %struct.Memory* %call_41287b, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1c(%rbp), %eax	 RIP: 41287e	 Bytes: 3
  %loadMem_41287e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41287e = call %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41287e)
  store %struct.Memory* %call_41287e, %struct.Memory** %MEMORY

  ; Code: jge .L_4128c0	 RIP: 412881	 Bytes: 6
  %loadMem_412881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412881 = call %struct.Memory* @routine_jge_.L_4128c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412881, i8* %BRANCH_TAKEN, i64 63, i64 6, i64 6)
  store %struct.Memory* %call_412881, %struct.Memory** %MEMORY

  %loadBr_412881 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412881 = icmp eq i8 %loadBr_412881, 1
  br i1 %cmpBr_412881, label %block_.L_4128c0, label %block_412887

block_412887:
  ; Code: movslq -0x20(%rbp), %rax	 RIP: 412887	 Bytes: 4
  %loadMem_412887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412887 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412887)
  store %struct.Memory* %call_412887, %struct.Memory** %MEMORY

  ; Code: movslq -0x40(%rbp,%rax,4), %rax	 RIP: 41288b	 Bytes: 5
  %loadMem_41288b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41288b = call %struct.Memory* @routine_movslq_MINUS0x40__rbp__rax_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41288b)
  store %struct.Memory* %call_41288b, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rax,4), %ecx	 RIP: 412890	 Bytes: 7
  %loadMem_412890 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412890 = call %struct.Memory* @routine_movl_0xaab3f0___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412890)
  store %struct.Memory* %call_412890, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rax	 RIP: 412897	 Bytes: 4
  %loadMem_412897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412897 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412897)
  store %struct.Memory* %call_412897, %struct.Memory** %MEMORY

  ; Code: cmpl 0xaab3f0(,%rax,4), %ecx	 RIP: 41289b	 Bytes: 7
  %loadMem_41289b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41289b = call %struct.Memory* @routine_cmpl_0xaab3f0___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41289b)
  store %struct.Memory* %call_41289b, %struct.Memory** %MEMORY

  ; Code: jne .L_4128ad	 RIP: 4128a2	 Bytes: 6
  %loadMem_4128a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128a2 = call %struct.Memory* @routine_jne_.L_4128ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128a2, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4128a2, %struct.Memory** %MEMORY

  %loadBr_4128a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4128a2 = icmp eq i8 %loadBr_4128a2, 1
  br i1 %cmpBr_4128a2, label %block_.L_4128ad, label %block_4128a8

block_4128a8:
  ; Code: jmpq .L_4128c0	 RIP: 4128a8	 Bytes: 5
  %loadMem_4128a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128a8 = call %struct.Memory* @routine_jmpq_.L_4128c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128a8, i64 24, i64 5)
  store %struct.Memory* %call_4128a8, %struct.Memory** %MEMORY

  br label %block_.L_4128c0

  ; Code: .L_4128ad:	 RIP: 4128ad	 Bytes: 0
block_.L_4128ad:

  ; Code: jmpq .L_4128b2	 RIP: 4128ad	 Bytes: 5
  %loadMem_4128ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128ad = call %struct.Memory* @routine_jmpq_.L_4128b2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128ad, i64 5, i64 5)
  store %struct.Memory* %call_4128ad, %struct.Memory** %MEMORY

  br label %block_.L_4128b2

  ; Code: .L_4128b2:	 RIP: 4128b2	 Bytes: 0
block_.L_4128b2:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4128b2	 Bytes: 3
  %loadMem_4128b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128b2 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128b2)
  store %struct.Memory* %call_4128b2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4128b5	 Bytes: 3
  %loadMem_4128b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128b5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128b5)
  store %struct.Memory* %call_4128b5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 4128b8	 Bytes: 3
  %loadMem_4128b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128b8 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128b8)
  store %struct.Memory* %call_4128b8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41287b	 RIP: 4128bb	 Bytes: 5
  %loadMem_4128bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128bb = call %struct.Memory* @routine_jmpq_.L_41287b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128bb, i64 -64, i64 5)
  store %struct.Memory* %call_4128bb, %struct.Memory** %MEMORY

  br label %block_.L_41287b

  ; Code: .L_4128c0:	 RIP: 4128c0	 Bytes: 0
block_.L_4128c0:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4128c0	 Bytes: 3
  %loadMem_4128c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128c0 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128c0)
  store %struct.Memory* %call_4128c0, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1c(%rbp), %eax	 RIP: 4128c3	 Bytes: 3
  %loadMem_4128c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128c3 = call %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128c3)
  store %struct.Memory* %call_4128c3, %struct.Memory** %MEMORY

  ; Code: jne .L_412a7b	 RIP: 4128c6	 Bytes: 6
  %loadMem_4128c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128c6 = call %struct.Memory* @routine_jne_.L_412a7b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128c6, i8* %BRANCH_TAKEN, i64 437, i64 6, i64 6)
  store %struct.Memory* %call_4128c6, %struct.Memory** %MEMORY

  %loadBr_4128c6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4128c6 = icmp eq i8 %loadBr_4128c6, 1
  br i1 %cmpBr_4128c6, label %block_.L_412a7b, label %block_4128cc

block_4128cc:
  ; Code: jmpq .L_4128d1	 RIP: 4128cc	 Bytes: 5
  %loadMem_4128cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128cc = call %struct.Memory* @routine_jmpq_.L_4128d1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128cc, i64 5, i64 5)
  store %struct.Memory* %call_4128cc, %struct.Memory** %MEMORY

  br label %block_.L_4128d1

  ; Code: .L_4128d1:	 RIP: 4128d1	 Bytes: 0
block_.L_4128d1:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 4128d1	 Bytes: 3
  %loadMem_4128d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128d1 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128d1)
  store %struct.Memory* %call_4128d1, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4128d4	 Bytes: 3
  %loadMem_4128d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128d4 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128d4)
  store %struct.Memory* %call_4128d4, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4128d7	 Bytes: 3
  %loadMem_4128d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128d7 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128d7)
  store %struct.Memory* %call_4128d7, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4128da	 Bytes: 8
  %loadMem_4128da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128da = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128da)
  store %struct.Memory* %call_4128da, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4128e2	 Bytes: 3
  %loadMem_4128e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128e2 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128e2)
  store %struct.Memory* %call_4128e2, %struct.Memory** %MEMORY

  ; Code: jne .L_412923	 RIP: 4128e5	 Bytes: 6
  %loadMem_4128e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128e5 = call %struct.Memory* @routine_jne_.L_412923(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128e5, i8* %BRANCH_TAKEN, i64 62, i64 6, i64 6)
  store %struct.Memory* %call_4128e5, %struct.Memory** %MEMORY

  %loadBr_4128e5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4128e5 = icmp eq i8 %loadBr_4128e5, 1
  br i1 %cmpBr_4128e5, label %block_.L_412923, label %block_4128eb

block_4128eb:
  ; Code: movq $0xa7f430, %rax	 RIP: 4128eb	 Bytes: 10
  %loadMem_4128eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128eb = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128eb)
  store %struct.Memory* %call_4128eb, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 4128f5	 Bytes: 3
  %loadMem_4128f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128f5 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128f5)
  store %struct.Memory* %call_4128f5, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 4128f8	 Bytes: 3
  %loadMem_4128f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128f8 = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128f8)
  store %struct.Memory* %call_4128f8, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4128fb	 Bytes: 3
  %loadMem_4128fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128fb = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128fb)
  store %struct.Memory* %call_4128fb, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 4128fe	 Bytes: 8
  %loadMem_4128fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4128fe = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4128fe)
  store %struct.Memory* %call_4128fe, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 412906	 Bytes: 7
  %loadMem_412906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412906 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412906)
  store %struct.Memory* %call_412906, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41290d	 Bytes: 3
  %loadMem_41290d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41290d = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41290d)
  store %struct.Memory* %call_41290d, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %ecx	 RIP: 412910	 Bytes: 6
  %loadMem_412910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412910 = call %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412910)
  store %struct.Memory* %call_412910, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %ecx	 RIP: 412916	 Bytes: 7
  %loadMem_412916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412916 = call %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412916)
  store %struct.Memory* %call_412916, %struct.Memory** %MEMORY

  ; Code: je .L_412a19	 RIP: 41291d	 Bytes: 6
  %loadMem_41291d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41291d = call %struct.Memory* @routine_je_.L_412a19(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41291d, i8* %BRANCH_TAKEN, i64 252, i64 6, i64 6)
  store %struct.Memory* %call_41291d, %struct.Memory** %MEMORY

  %loadBr_41291d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41291d = icmp eq i8 %loadBr_41291d, 1
  br i1 %cmpBr_41291d, label %block_.L_412a19, label %block_.L_412923

  ; Code: .L_412923:	 RIP: 412923	 Bytes: 0
block_.L_412923:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 412923	 Bytes: 3
  %loadMem_412923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412923 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412923)
  store %struct.Memory* %call_412923, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 412926	 Bytes: 3
  %loadMem_412926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412926 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412926)
  store %struct.Memory* %call_412926, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 412929	 Bytes: 3
  %loadMem_412929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412929 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412929)
  store %struct.Memory* %call_412929, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 41292c	 Bytes: 8
  %loadMem_41292c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41292c = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41292c)
  store %struct.Memory* %call_41292c, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 412934	 Bytes: 3
  %loadMem_412934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412934 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412934)
  store %struct.Memory* %call_412934, %struct.Memory** %MEMORY

  ; Code: jne .L_412975	 RIP: 412937	 Bytes: 6
  %loadMem_412937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412937 = call %struct.Memory* @routine_jne_.L_412975(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412937, i8* %BRANCH_TAKEN, i64 62, i64 6, i64 6)
  store %struct.Memory* %call_412937, %struct.Memory** %MEMORY

  %loadBr_412937 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412937 = icmp eq i8 %loadBr_412937, 1
  br i1 %cmpBr_412937, label %block_.L_412975, label %block_41293d

block_41293d:
  ; Code: movq $0xa7f430, %rax	 RIP: 41293d	 Bytes: 10
  %loadMem_41293d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41293d = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41293d)
  store %struct.Memory* %call_41293d, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 412947	 Bytes: 3
  %loadMem_412947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412947 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412947)
  store %struct.Memory* %call_412947, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 41294a	 Bytes: 3
  %loadMem_41294a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41294a = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41294a)
  store %struct.Memory* %call_41294a, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 41294d	 Bytes: 3
  %loadMem_41294d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41294d = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41294d)
  store %struct.Memory* %call_41294d, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 412950	 Bytes: 8
  %loadMem_412950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412950 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412950)
  store %struct.Memory* %call_412950, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 412958	 Bytes: 7
  %loadMem_412958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412958 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412958)
  store %struct.Memory* %call_412958, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41295f	 Bytes: 3
  %loadMem_41295f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41295f = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41295f)
  store %struct.Memory* %call_41295f, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %ecx	 RIP: 412962	 Bytes: 6
  %loadMem_412962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412962 = call %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412962)
  store %struct.Memory* %call_412962, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %ecx	 RIP: 412968	 Bytes: 7
  %loadMem_412968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412968 = call %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412968)
  store %struct.Memory* %call_412968, %struct.Memory** %MEMORY

  ; Code: je .L_412a19	 RIP: 41296f	 Bytes: 6
  %loadMem_41296f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41296f = call %struct.Memory* @routine_je_.L_412a19(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41296f, i8* %BRANCH_TAKEN, i64 170, i64 6, i64 6)
  store %struct.Memory* %call_41296f, %struct.Memory** %MEMORY

  %loadBr_41296f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41296f = icmp eq i8 %loadBr_41296f, 1
  br i1 %cmpBr_41296f, label %block_.L_412a19, label %block_.L_412975

  ; Code: .L_412975:	 RIP: 412975	 Bytes: 0
block_.L_412975:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 412975	 Bytes: 3
  %loadMem_412975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412975 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412975)
  store %struct.Memory* %call_412975, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 412978	 Bytes: 3
  %loadMem_412978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412978 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412978)
  store %struct.Memory* %call_412978, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 41297b	 Bytes: 3
  %loadMem_41297b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41297b = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41297b)
  store %struct.Memory* %call_41297b, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 41297e	 Bytes: 8
  %loadMem_41297e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41297e = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41297e)
  store %struct.Memory* %call_41297e, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 412986	 Bytes: 3
  %loadMem_412986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412986 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412986)
  store %struct.Memory* %call_412986, %struct.Memory** %MEMORY

  ; Code: jne .L_4129c7	 RIP: 412989	 Bytes: 6
  %loadMem_412989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412989 = call %struct.Memory* @routine_jne_.L_4129c7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412989, i8* %BRANCH_TAKEN, i64 62, i64 6, i64 6)
  store %struct.Memory* %call_412989, %struct.Memory** %MEMORY

  %loadBr_412989 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412989 = icmp eq i8 %loadBr_412989, 1
  br i1 %cmpBr_412989, label %block_.L_4129c7, label %block_41298f

block_41298f:
  ; Code: movq $0xa7f430, %rax	 RIP: 41298f	 Bytes: 10
  %loadMem_41298f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41298f = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41298f)
  store %struct.Memory* %call_41298f, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 412999	 Bytes: 3
  %loadMem_412999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412999 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412999)
  store %struct.Memory* %call_412999, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %ecx	 RIP: 41299c	 Bytes: 3
  %loadMem_41299c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41299c = call %struct.Memory* @routine_subl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41299c)
  store %struct.Memory* %call_41299c, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 41299f	 Bytes: 3
  %loadMem_41299f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41299f = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41299f)
  store %struct.Memory* %call_41299f, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 4129a2	 Bytes: 8
  %loadMem_4129a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4129a2 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4129a2)
  store %struct.Memory* %call_4129a2, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 4129aa	 Bytes: 7
  %loadMem_4129aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4129aa = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4129aa)
  store %struct.Memory* %call_4129aa, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4129b1	 Bytes: 3
  %loadMem_4129b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4129b1 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4129b1)
  store %struct.Memory* %call_4129b1, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %ecx	 RIP: 4129b4	 Bytes: 6
  %loadMem_4129b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4129b4 = call %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4129b4)
  store %struct.Memory* %call_4129b4, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %ecx	 RIP: 4129ba	 Bytes: 7
  %loadMem_4129ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4129ba = call %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4129ba)
  store %struct.Memory* %call_4129ba, %struct.Memory** %MEMORY

  ; Code: je .L_412a19	 RIP: 4129c1	 Bytes: 6
  %loadMem_4129c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4129c1 = call %struct.Memory* @routine_je_.L_412a19(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4129c1, i8* %BRANCH_TAKEN, i64 88, i64 6, i64 6)
  store %struct.Memory* %call_4129c1, %struct.Memory** %MEMORY

  %loadBr_4129c1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4129c1 = icmp eq i8 %loadBr_4129c1, 1
  br i1 %cmpBr_4129c1, label %block_.L_412a19, label %block_.L_4129c7

  ; Code: .L_4129c7:	 RIP: 4129c7	 Bytes: 0
block_.L_4129c7:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 4129c7	 Bytes: 3
  %loadMem_4129c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4129c7 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4129c7)
  store %struct.Memory* %call_4129c7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4129ca	 Bytes: 3
  %loadMem_4129ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4129ca = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4129ca)
  store %struct.Memory* %call_4129ca, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4129cd	 Bytes: 3
  %loadMem_4129cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4129cd = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4129cd)
  store %struct.Memory* %call_4129cd, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4129d0	 Bytes: 8
  %loadMem_4129d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4129d0 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4129d0)
  store %struct.Memory* %call_4129d0, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4129d8	 Bytes: 3
  %loadMem_4129d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4129d8 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4129d8)
  store %struct.Memory* %call_4129d8, %struct.Memory** %MEMORY

  ; Code: jne .L_412a57	 RIP: 4129db	 Bytes: 6
  %loadMem_4129db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4129db = call %struct.Memory* @routine_jne_.L_412a57(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4129db, i8* %BRANCH_TAKEN, i64 124, i64 6, i64 6)
  store %struct.Memory* %call_4129db, %struct.Memory** %MEMORY

  %loadBr_4129db = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4129db = icmp eq i8 %loadBr_4129db, 1
  br i1 %cmpBr_4129db, label %block_.L_412a57, label %block_4129e1

block_4129e1:
  ; Code: movq $0xa7f430, %rax	 RIP: 4129e1	 Bytes: 10
  %loadMem_4129e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4129e1 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4129e1)
  store %struct.Memory* %call_4129e1, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 4129eb	 Bytes: 3
  %loadMem_4129eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4129eb = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4129eb)
  store %struct.Memory* %call_4129eb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4129ee	 Bytes: 3
  %loadMem_4129ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4129ee = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4129ee)
  store %struct.Memory* %call_4129ee, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4129f1	 Bytes: 3
  %loadMem_4129f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4129f1 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4129f1)
  store %struct.Memory* %call_4129f1, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 4129f4	 Bytes: 8
  %loadMem_4129f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4129f4 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4129f4)
  store %struct.Memory* %call_4129f4, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 4129fc	 Bytes: 7
  %loadMem_4129fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4129fc = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4129fc)
  store %struct.Memory* %call_4129fc, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 412a03	 Bytes: 3
  %loadMem_412a03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a03 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a03)
  store %struct.Memory* %call_412a03, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %ecx	 RIP: 412a06	 Bytes: 6
  %loadMem_412a06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a06 = call %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a06)
  store %struct.Memory* %call_412a06, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %ecx	 RIP: 412a0c	 Bytes: 7
  %loadMem_412a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a0c = call %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a0c)
  store %struct.Memory* %call_412a0c, %struct.Memory** %MEMORY

  ; Code: jne .L_412a57	 RIP: 412a13	 Bytes: 6
  %loadMem_412a13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a13 = call %struct.Memory* @routine_jne_.L_412a57(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a13, i8* %BRANCH_TAKEN, i64 68, i64 6, i64 6)
  store %struct.Memory* %call_412a13, %struct.Memory** %MEMORY

  %loadBr_412a13 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412a13 = icmp eq i8 %loadBr_412a13, 1
  br i1 %cmpBr_412a13, label %block_.L_412a57, label %block_.L_412a19

  ; Code: .L_412a19:	 RIP: 412a19	 Bytes: 0
block_.L_412a19:

  ; Code: cmpq $0x0, -0x18(%rbp)	 RIP: 412a19	 Bytes: 5
  %loadMem_412a19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a19 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a19)
  store %struct.Memory* %call_412a19, %struct.Memory** %MEMORY

  ; Code: je .L_412a32	 RIP: 412a1e	 Bytes: 6
  %loadMem_412a1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a1e = call %struct.Memory* @routine_je_.L_412a32(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a1e, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_412a1e, %struct.Memory** %MEMORY

  %loadBr_412a1e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412a1e = icmp eq i8 %loadBr_412a1e, 1
  br i1 %cmpBr_412a1e, label %block_.L_412a32, label %block_412a24

block_412a24:
  ; Code: movl -0x28(%rbp), %eax	 RIP: 412a24	 Bytes: 3
  %loadMem_412a24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a24 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a24)
  store %struct.Memory* %call_412a24, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 412a27	 Bytes: 4
  %loadMem_412a27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a27 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a27)
  store %struct.Memory* %call_412a27, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 412a2b	 Bytes: 4
  %loadMem_412a2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a2b = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a2b)
  store %struct.Memory* %call_412a2b, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 412a2f	 Bytes: 3
  %loadMem_412a2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a2f = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a2f)
  store %struct.Memory* %call_412a2f, %struct.Memory** %MEMORY

  ; Code: .L_412a32:	 RIP: 412a32	 Bytes: 0
  br label %block_.L_412a32
block_.L_412a32:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 412a32	 Bytes: 3
  %loadMem_412a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a32 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a32)
  store %struct.Memory* %call_412a32, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 412a35	 Bytes: 3
  %loadMem_412a35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a35 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a35)
  store %struct.Memory* %call_412a35, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 412a38	 Bytes: 3
  %loadMem_412a38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a38 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a38)
  store %struct.Memory* %call_412a38, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 412a3b	 Bytes: 3
  %loadMem_412a3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a3b = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a3b)
  store %struct.Memory* %call_412a3b, %struct.Memory** %MEMORY

  ; Code: cmpl -0x10(%rbp), %eax	 RIP: 412a3e	 Bytes: 3
  %loadMem_412a3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a3e = call %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a3e)
  store %struct.Memory* %call_412a3e, %struct.Memory** %MEMORY

  ; Code: jl .L_412a52	 RIP: 412a41	 Bytes: 6
  %loadMem_412a41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a41 = call %struct.Memory* @routine_jl_.L_412a52(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a41, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_412a41, %struct.Memory** %MEMORY

  %loadBr_412a41 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412a41 = icmp eq i8 %loadBr_412a41, 1
  br i1 %cmpBr_412a41, label %block_.L_412a52, label %block_412a47

block_412a47:
  ; Code: movl -0x24(%rbp), %eax	 RIP: 412a47	 Bytes: 3
  %loadMem_412a47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a47 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a47)
  store %struct.Memory* %call_412a47, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 412a4a	 Bytes: 3
  %loadMem_412a4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a4a = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a4a)
  store %struct.Memory* %call_412a4a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_412a94	 RIP: 412a4d	 Bytes: 5
  %loadMem_412a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a4d = call %struct.Memory* @routine_jmpq_.L_412a94(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a4d, i64 71, i64 5)
  store %struct.Memory* %call_412a4d, %struct.Memory** %MEMORY

  br label %block_.L_412a94

  ; Code: .L_412a52:	 RIP: 412a52	 Bytes: 0
block_.L_412a52:

  ; Code: jmpq .L_412a57	 RIP: 412a52	 Bytes: 5
  %loadMem_412a52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a52 = call %struct.Memory* @routine_jmpq_.L_412a57(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a52, i64 5, i64 5)
  store %struct.Memory* %call_412a52, %struct.Memory** %MEMORY

  br label %block_.L_412a57

  ; Code: .L_412a57:	 RIP: 412a57	 Bytes: 0
block_.L_412a57:

  ; Code: movslq -0x28(%rbp), %rax	 RIP: 412a57	 Bytes: 4
  %loadMem_412a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a57 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a57)
  store %struct.Memory* %call_412a57, %struct.Memory** %MEMORY

  ; Code: movl 0xaaba30(,%rax,4), %ecx	 RIP: 412a5b	 Bytes: 7
  %loadMem_412a5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a5b = call %struct.Memory* @routine_movl_0xaaba30___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a5b)
  store %struct.Memory* %call_412a5b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 412a62	 Bytes: 3
  %loadMem_412a62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a62 = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a62)
  store %struct.Memory* %call_412a62, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 412a65	 Bytes: 3
  %loadMem_412a65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a65 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a65)
  store %struct.Memory* %call_412a65, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 412a68	 Bytes: 4
  %loadMem_412a68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a68 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a68)
  store %struct.Memory* %call_412a68, %struct.Memory** %MEMORY

  ; Code: cmpl -0x40(%rbp,%rcx,4), %eax	 RIP: 412a6c	 Bytes: 4
  %loadMem_412a6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a6c = call %struct.Memory* @routine_cmpl_MINUS0x40__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a6c)
  store %struct.Memory* %call_412a6c, %struct.Memory** %MEMORY

  ; Code: jne .L_4128d1	 RIP: 412a70	 Bytes: 6
  %loadMem_412a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a70 = call %struct.Memory* @routine_jne_.L_4128d1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a70, i8* %BRANCH_TAKEN, i64 -415, i64 6, i64 6)
  store %struct.Memory* %call_412a70, %struct.Memory** %MEMORY

  %loadBr_412a70 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412a70 = icmp eq i8 %loadBr_412a70, 1
  br i1 %cmpBr_412a70, label %block_.L_4128d1, label %block_412a76

block_412a76:
  ; Code: jmpq .L_412a7b	 RIP: 412a76	 Bytes: 5
  %loadMem_412a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a76 = call %struct.Memory* @routine_jmpq_.L_412a7b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a76, i64 5, i64 5)
  store %struct.Memory* %call_412a76, %struct.Memory** %MEMORY

  br label %block_.L_412a7b

  ; Code: .L_412a7b:	 RIP: 412a7b	 Bytes: 0
block_.L_412a7b:

  ; Code: jmpq .L_412a80	 RIP: 412a7b	 Bytes: 5
  %loadMem_412a7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a7b = call %struct.Memory* @routine_jmpq_.L_412a80(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a7b, i64 5, i64 5)
  store %struct.Memory* %call_412a7b, %struct.Memory** %MEMORY

  br label %block_.L_412a80

  ; Code: .L_412a80:	 RIP: 412a80	 Bytes: 0
block_.L_412a80:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 412a80	 Bytes: 3
  %loadMem_412a80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a80 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a80)
  store %struct.Memory* %call_412a80, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 412a83	 Bytes: 3
  %loadMem_412a83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a83 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a83)
  store %struct.Memory* %call_412a83, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 412a86	 Bytes: 3
  %loadMem_412a86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a86 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a86)
  store %struct.Memory* %call_412a86, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4126d7	 RIP: 412a89	 Bytes: 5
  %loadMem_412a89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a89 = call %struct.Memory* @routine_jmpq_.L_4126d7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a89, i64 -946, i64 5)
  store %struct.Memory* %call_412a89, %struct.Memory** %MEMORY

  br label %block_.L_4126d7

  ; Code: .L_412a8e:	 RIP: 412a8e	 Bytes: 0
block_.L_412a8e:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 412a8e	 Bytes: 3
  %loadMem_412a8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a8e = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a8e)
  store %struct.Memory* %call_412a8e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 412a91	 Bytes: 3
  %loadMem_412a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a91 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a91)
  store %struct.Memory* %call_412a91, %struct.Memory** %MEMORY

  ; Code: .L_412a94:	 RIP: 412a94	 Bytes: 0
  br label %block_.L_412a94
block_.L_412a94:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 412a94	 Bytes: 3
  %loadMem_412a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a94 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a94)
  store %struct.Memory* %call_412a94, %struct.Memory** %MEMORY

  ; Code: addq $0x90, %rsp	 RIP: 412a97	 Bytes: 7
  %loadMem_412a97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a97 = call %struct.Memory* @routine_addq__0x90___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a97)
  store %struct.Memory* %call_412a97, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 412a9e	 Bytes: 1
  %loadMem_412a9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a9e = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a9e)
  store %struct.Memory* %call_412a9e, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 412a9f	 Bytes: 1
  %loadMem_412a9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_412a9f = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_412a9f)
  store %struct.Memory* %call_412a9f, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_412a9f
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

define %struct.Memory* @routine_subq__0x90___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 144)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 68
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = zext i8 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_cmpl__0x0___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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

define %struct.Memory* @routine_jne_.L_4120c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_412119(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x57a16e___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57a16e_type* @G__0x57a16e to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x6d1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 1745)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x57a4be___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57a4be_type* @G__0x57a4be to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x14___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 20)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rdx__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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
block_400488:
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


define %struct.Memory* @routine_movl_MINUS0x60__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
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
  %12 = add i64 %11, 2
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movl_MINUS0x8__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 108
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r8d___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0x68__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__r9___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movl_MINUS0x6c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x70__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 112
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_callq_.abortgo(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
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

define %struct.Memory* @routine_je_.L_41212d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_cmpl__0x2__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_412132(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_412197(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x6d2___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 1746)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x57a4f4___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57a4f4_type* @G__0x57a4f4 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 116
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movq__rdx__MINUS0x80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x74__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 116
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 132
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_movq_MINUS0x80__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0x88__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x84__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 132
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x88__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 136
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
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


define %struct.Memory* @routine_jne_.L_4121cc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = xor i64 %4, %3
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %2, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %7, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10) #22
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i32 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i32 %7, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_xorl__edx___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_callq_.fastlib(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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

define %struct.Memory* @routine_jl_.L_4121c7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jmpq_.L_412a94(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4121cc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_0x99da08___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x99da08_type* @G_0x99da08 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__eax__0x99da08(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x99da08_type* @G_0x99da08 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x99da04___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x99da04_type* @G_0x99da04 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__0x99da04(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x99da04_type* @G_0x99da04 to i64), i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movl__eax__0xaaadb0___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11185584
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
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


define %struct.Memory* @routine_cmpl__0x4__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
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

define %struct.Memory* @routine_jge_.L_4126d0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 8053168
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %15)
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


define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jne_.L_41229f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0xaaadb0___rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11185584
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_cmpl_0x99da04___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x99da04_type* @G_0x99da04 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_41229f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_je_.L_412268(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jl_.L_412288(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}














define %struct.Memory* @routine_jmpq_.L_4126bd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_412658(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0xa7f430_type* @G__0xa7f430 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 11187184
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %11)
  ret %struct.Memory* %14
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

define %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 744)
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x2e4__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 740
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_0x99da08___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x99da08_type* @G_0x99da08 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_412658(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0x14__0xc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 20)
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

define %struct.Memory* @routine_jle_.L_412323(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_cmpl__0x13__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 19)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_jg_.L_4123d9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_0xc__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_4123d4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x10__rax__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, 16
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %19)
  ret %struct.Memory* %22
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


define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jne_.L_4123c1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_je_.L_4123c1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_je_.L_41238f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


















define %struct.Memory* @routine_jl_.L_4123af(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
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




define %struct.Memory* @routine_jmpq_.L_4123c6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41232a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_412626(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0x14___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 20)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__eax___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_412469(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_movl_0xaaadb0___rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11185584
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_cmpl_0x99da04___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x99da04_type* @G_0x99da04 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_412469(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_je_.L_412432(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






















define %struct.Memory* @routine_jl_.L_412452(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_movl_MINUS0x5c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0x14___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 20)
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


define %struct.Memory* @routine_movl__eax__0xaaadb0___rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11185584
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}












define %struct.Memory* @routine_jne_.L_4124f3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_je_.L_4124f3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_je_.L_4124bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






















define %struct.Memory* @routine_jl_.L_4124dc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
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








define %struct.Memory* @routine_subl__0x14___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 20)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_jne_.L_41257d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_je_.L_41257d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_je_.L_412546(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






















define %struct.Memory* @routine_jl_.L_412566(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_subl__0x14___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 20)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_jne_.L_412607(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_je_.L_412607(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_je_.L_4125d0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






















define %struct.Memory* @routine_jl_.L_4125f0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
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






define %struct.Memory* @routine_movslq_MINUS0x5c__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0xaaba30___rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11188784
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__MINUS0x5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 76
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_4123df(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_movl_0x99da08___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x99da08_type* @G_0x99da08 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 11187184
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 744)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__rdx___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__0x2e4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 740
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4126b8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x3___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 3)
  ret %struct.Memory* %11
}





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %3 to i32
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7
  %9 = sub i32 %6, %8
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %2, align 8
  %11 = icmp ult i32 %6, %8
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %9, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14) #22
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %8, %6
  %21 = xor i32 %20, %9
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %9, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %9, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %6, 31
  %33 = lshr i32 %8, 31
  %34 = xor i32 %33, %32
  %35 = xor i32 %29, %32
  %36 = add   i32 %35, %34
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
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

define %struct.Memory* @routine_cmpl__eax___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %EDX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_4126b3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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


define %struct.Memory* @routine_movl__edx__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp__rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -64
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}






define %struct.Memory* @routine_jmpq_.L_4126c2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_412207(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_cmpl_MINUS0x44__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 68
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_412a8e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x40__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -64
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
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




define %struct.Memory* @routine_movslq__ecx___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_412740(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
















define %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 740
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x99da08_type* @G_0x99da08 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_412874(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jne_.L_412792(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
































define %struct.Memory* @routine_jne_.L_4127e4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
































define %struct.Memory* @routine_jne_.L_412836(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
























define %struct.Memory* @routine_je_.L_41284f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




















define %struct.Memory* @routine_jl_.L_41286f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_jmpq_.L_412874(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 28
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_4128c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x40__rbp__rax_4____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -64
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 5
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl_0xaab3f0___rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11187184
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_cmpl_0xaab3f0___rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = mul i64 %14, 4
  %16 = add i64 %15, 11187184
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jne_.L_4128ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_4128c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4128b2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_41287b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jne_.L_412a7b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_4128d1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_jne_.L_412923(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




















define %struct.Memory* @routine_je_.L_412a19(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_jne_.L_412975(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
































define %struct.Memory* @routine_jne_.L_4129c7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
































define %struct.Memory* @routine_jne_.L_412a57(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
























define %struct.Memory* @routine_je_.L_412a32(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




















define %struct.Memory* @routine_jl_.L_412a52(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_jmpq_.L_412a57(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_cmpl_MINUS0x40__rbp__rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %RBP
  %18 = load i64, i64* %RCX
  %19 = mul i64 %18, 4
  %20 = add i64 %17, -64
  %21 = add i64 %20, %19
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_jne_.L_4128d1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_412a7b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_412a80(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_4126d7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x90___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 144)
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

