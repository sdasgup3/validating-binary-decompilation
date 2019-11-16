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

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_44cb30.owl_does_attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_434680.add_owl_attack_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_44c3c0.owl_does_defend(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4347a0.add_owl_defense_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_41fc30.is_same_dragon(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_413b00.chainlinks(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_44d3c0.owl_substantial(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_470130.liberty_of_dragon(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_43baf0.min_eyes(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_470290.update_status(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_470500.add_appropriate_semeai_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_43b1a0.eye_move_urgency(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_46bc30.safe_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0xab0f24_type = type <{ [4 x i8] }>
@G_0xab0f24= global %G_0xab0f24_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xab0fe0_type = type <{ [8 x i8] }>
@G_0xab0fe0= global %G_0xab0fe0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x58062f_type = type <{ [8 x i8] }>
@G__0x58062f= global %G__0x58062f_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x580658_type = type <{ [8 x i8] }>
@G__0x580658= global %G__0x580658_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x580685_type = type <{ [8 x i8] }>
@G__0x580685= global %G__0x580685_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x5806b3_type = type <{ [8 x i8] }>
@G__0x5806b3= global %G__0x5806b3_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x5806e5_type = type <{ [8 x i8] }>
@G__0x5806e5= global %G__0x5806e5_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x580718_type = type <{ [8 x i8] }>
@G__0x580718= global %G__0x580718_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xb0eff0_type = type <{ [8 x i8] }>
@G__0xb0eff0= global %G__0xb0eff0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xb4bd20_type = type <{ [8 x i8] }>
@G__0xb4bd20= global %G__0xb4bd20_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @analyze_semeai(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .analyze_semeai:	 RIP: 46edd0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 46edd0	 Bytes: 1
  %loadMem_46edd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46edd0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46edd0)
  store %struct.Memory* %call_46edd0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 46edd1	 Bytes: 3
  %loadMem_46edd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46edd1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46edd1)
  store %struct.Memory* %call_46edd1, %struct.Memory** %MEMORY

  ; Code: subq $0x300, %rsp	 RIP: 46edd4	 Bytes: 7
  %loadMem_46edd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46edd4 = call %struct.Memory* @routine_subq__0x300___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46edd4)
  store %struct.Memory* %call_46edd4, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 46eddb	 Bytes: 3
  %loadMem_46eddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46eddb = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46eddb)
  store %struct.Memory* %call_46eddb, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x8(%rbp)	 RIP: 46edde	 Bytes: 3
  %loadMem_46edde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46edde = call %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46edde)
  store %struct.Memory* %call_46edde, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0xc(%rbp)	 RIP: 46ede1	 Bytes: 7
  %loadMem_46ede1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ede1 = call %struct.Memory* @routine_movl__0x1__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ede1)
  store %struct.Memory* %call_46ede1, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x10(%rbp)	 RIP: 46ede8	 Bytes: 7
  %loadMem_46ede8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ede8 = call %struct.Memory* @routine_movl__0x1__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ede8)
  store %struct.Memory* %call_46ede8, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 46edef	 Bytes: 7
  %loadMem_46edef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46edef = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46edef)
  store %struct.Memory* %call_46edef, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 46edf6	 Bytes: 7
  %loadMem_46edf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46edf6 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46edf6)
  store %struct.Memory* %call_46edf6, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 46edfd	 Bytes: 7
  %loadMem_46edfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46edfd = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46edfd)
  store %struct.Memory* %call_46edfd, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 46ee04	 Bytes: 4
  %loadMem_46ee04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ee04 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ee04)
  store %struct.Memory* %call_46ee04, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %esi	 RIP: 46ee08	 Bytes: 8
  %loadMem_46ee08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ee08 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ee08)
  store %struct.Memory* %call_46ee08, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x20(%rbp)	 RIP: 46ee10	 Bytes: 3
  %loadMem_46ee10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ee10 = call %struct.Memory* @routine_movl__esi__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ee10)
  store %struct.Memory* %call_46ee10, %struct.Memory** %MEMORY

  ; Code: movl $0x3, -0x24(%rbp)	 RIP: 46ee13	 Bytes: 7
  %loadMem_46ee13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ee13 = call %struct.Memory* @routine_movl__0x3__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ee13)
  store %struct.Memory* %call_46ee13, %struct.Memory** %MEMORY

  ; Code: movl $0x3, -0x28(%rbp)	 RIP: 46ee1a	 Bytes: 7
  %loadMem_46ee1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ee1a = call %struct.Memory* @routine_movl__0x3__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ee1a)
  store %struct.Memory* %call_46ee1a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 46ee21	 Bytes: 7
  %loadMem_46ee21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ee21 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ee21)
  store %struct.Memory* %call_46ee21, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 46ee28	 Bytes: 7
  %loadMem_46ee28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ee28 = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ee28)
  store %struct.Memory* %call_46ee28, %struct.Memory** %MEMORY

  ; Code: movl 0xab0f24, %esi	 RIP: 46ee2f	 Bytes: 7
  %loadMem_46ee2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ee2f = call %struct.Memory* @routine_movl_0xab0f24___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ee2f)
  store %struct.Memory* %call_46ee2f, %struct.Memory** %MEMORY

  ; Code: andl $0x40, %esi	 RIP: 46ee36	 Bytes: 3
  %loadMem_46ee36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ee36 = call %struct.Memory* @routine_andl__0x40___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ee36)
  store %struct.Memory* %call_46ee36, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %esi	 RIP: 46ee39	 Bytes: 3
  %loadMem_46ee39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ee39 = call %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ee39)
  store %struct.Memory* %call_46ee39, %struct.Memory** %MEMORY

  ; Code: jne .L_46ee47	 RIP: 46ee3c	 Bytes: 6
  %loadMem_46ee3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ee3c = call %struct.Memory* @routine_jne_.L_46ee47(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ee3c, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_46ee3c, %struct.Memory** %MEMORY

  %loadBr_46ee3c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46ee3c = icmp eq i8 %loadBr_46ee3c, 1
  br i1 %cmpBr_46ee3c, label %block_.L_46ee47, label %block_46ee42

block_46ee42:
  ; Code: jmpq .L_46ee64	 RIP: 46ee42	 Bytes: 5
  %loadMem_46ee42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ee42 = call %struct.Memory* @routine_jmpq_.L_46ee64(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ee42, i64 34, i64 5)
  store %struct.Memory* %call_46ee42, %struct.Memory** %MEMORY

  br label %block_.L_46ee64

  ; Code: .L_46ee47:	 RIP: 46ee47	 Bytes: 0
block_.L_46ee47:

  ; Code: movq $0x58062f, %rdi	 RIP: 46ee47	 Bytes: 10
  %loadMem_46ee47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ee47 = call %struct.Memory* @routine_movq__0x58062f___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ee47)
  store %struct.Memory* %call_46ee47, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 46ee51	 Bytes: 3
  %loadMem_46ee51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ee51 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ee51)
  store %struct.Memory* %call_46ee51, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 46ee54	 Bytes: 3
  %loadMem_46ee54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ee54 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ee54)
  store %struct.Memory* %call_46ee54, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 46ee57	 Bytes: 2
  %loadMem_46ee57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ee57 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ee57)
  store %struct.Memory* %call_46ee57, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 46ee59	 Bytes: 5
  %loadMem1_46ee59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46ee59 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46ee59, i64 -118953, i64 5, i64 5)
  store %struct.Memory* %call1_46ee59, %struct.Memory** %MEMORY

  %loadMem2_46ee59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46ee59 = load i64, i64* %3
  %call2_46ee59 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_46ee59, %struct.Memory* %loadMem2_46ee59)
  store %struct.Memory* %call2_46ee59, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2e0(%rbp)	 RIP: 46ee5e	 Bytes: 6
  %loadMem_46ee5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ee5e = call %struct.Memory* @routine_movl__eax__MINUS0x2e0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ee5e)
  store %struct.Memory* %call_46ee5e, %struct.Memory** %MEMORY

  ; Code: .L_46ee64:	 RIP: 46ee64	 Bytes: 0
  br label %block_.L_46ee64
block_.L_46ee64:

  ; Code: movq $0xb4bd20, %rax	 RIP: 46ee64	 Bytes: 10
  %loadMem_46ee64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ee64 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ee64)
  store %struct.Memory* %call_46ee64, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 46ee6e	 Bytes: 4
  %loadMem_46ee6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ee6e = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ee6e)
  store %struct.Memory* %call_46ee6e, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46ee72	 Bytes: 4
  %loadMem_46ee72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ee72 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ee72)
  store %struct.Memory* %call_46ee72, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46ee76	 Bytes: 3
  %loadMem_46ee76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ee76 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ee76)
  store %struct.Memory* %call_46ee76, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x1c(%rax)	 RIP: 46ee79	 Bytes: 4
  %loadMem_46ee79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ee79 = call %struct.Memory* @routine_cmpl__0x2__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ee79)
  store %struct.Memory* %call_46ee79, %struct.Memory** %MEMORY

  ; Code: jne .L_46efa7	 RIP: 46ee7d	 Bytes: 6
  %loadMem_46ee7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ee7d = call %struct.Memory* @routine_jne_.L_46efa7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ee7d, i8* %BRANCH_TAKEN, i64 298, i64 6, i64 6)
  store %struct.Memory* %call_46ee7d, %struct.Memory** %MEMORY

  %loadBr_46ee7d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46ee7d = icmp eq i8 %loadBr_46ee7d, 1
  br i1 %cmpBr_46ee7d, label %block_.L_46efa7, label %block_46ee83

block_46ee83:
  ; Code: movq $0xb4bd20, %rax	 RIP: 46ee83	 Bytes: 10
  %loadMem_46ee83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ee83 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ee83)
  store %struct.Memory* %call_46ee83, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 46ee8d	 Bytes: 4
  %loadMem_46ee8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ee8d = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ee8d)
  store %struct.Memory* %call_46ee8d, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46ee91	 Bytes: 4
  %loadMem_46ee91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ee91 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ee91)
  store %struct.Memory* %call_46ee91, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46ee95	 Bytes: 3
  %loadMem_46ee95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ee95 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ee95)
  store %struct.Memory* %call_46ee95, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x1c(%rax)	 RIP: 46ee98	 Bytes: 4
  %loadMem_46ee98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ee98 = call %struct.Memory* @routine_cmpl__0x2__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ee98)
  store %struct.Memory* %call_46ee98, %struct.Memory** %MEMORY

  ; Code: jne .L_46efa7	 RIP: 46ee9c	 Bytes: 6
  %loadMem_46ee9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ee9c = call %struct.Memory* @routine_jne_.L_46efa7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ee9c, i8* %BRANCH_TAKEN, i64 267, i64 6, i64 6)
  store %struct.Memory* %call_46ee9c, %struct.Memory** %MEMORY

  %loadBr_46ee9c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46ee9c = icmp eq i8 %loadBr_46ee9c, 1
  br i1 %cmpBr_46ee9c, label %block_.L_46efa7, label %block_46eea2

block_46eea2:
  ; Code: movq $0xb4bd20, %rax	 RIP: 46eea2	 Bytes: 10
  %loadMem_46eea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46eea2 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46eea2)
  store %struct.Memory* %call_46eea2, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 46eeac	 Bytes: 4
  %loadMem_46eeac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46eeac = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46eeac)
  store %struct.Memory* %call_46eeac, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46eeb0	 Bytes: 4
  %loadMem_46eeb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46eeb0 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46eeb0)
  store %struct.Memory* %call_46eeb0, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 46eeb4	 Bytes: 3
  %loadMem_46eeb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46eeb4 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46eeb4)
  store %struct.Memory* %call_46eeb4, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 46eeb7	 Bytes: 3
  %loadMem_46eeb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46eeb7 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46eeb7)
  store %struct.Memory* %call_46eeb7, %struct.Memory** %MEMORY

  ; Code: movl 0x20(%rdx), %esi	 RIP: 46eeba	 Bytes: 3
  %loadMem_46eeba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46eeba = call %struct.Memory* @routine_movl_0x20__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46eeba)
  store %struct.Memory* %call_46eeba, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 46eebd	 Bytes: 4
  %loadMem_46eebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46eebd = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46eebd)
  store %struct.Memory* %call_46eebd, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46eec1	 Bytes: 4
  %loadMem_46eec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46eec1 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46eec1)
  store %struct.Memory* %call_46eec1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46eec5	 Bytes: 3
  %loadMem_46eec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46eec5 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46eec5)
  store %struct.Memory* %call_46eec5, %struct.Memory** %MEMORY

  ; Code: cmpl 0x30(%rax), %esi	 RIP: 46eec8	 Bytes: 3
  %loadMem_46eec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46eec8 = call %struct.Memory* @routine_cmpl_0x30__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46eec8)
  store %struct.Memory* %call_46eec8, %struct.Memory** %MEMORY

  ; Code: jne .L_46eed6	 RIP: 46eecb	 Bytes: 6
  %loadMem_46eecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46eecb = call %struct.Memory* @routine_jne_.L_46eed6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46eecb, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_46eecb, %struct.Memory** %MEMORY

  %loadBr_46eecb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46eecb = icmp eq i8 %loadBr_46eecb, 1
  br i1 %cmpBr_46eecb, label %block_.L_46eed6, label %block_46eed1

block_46eed1:
  ; Code: jmpq .L_470124	 RIP: 46eed1	 Bytes: 5
  %loadMem_46eed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46eed1 = call %struct.Memory* @routine_jmpq_.L_470124(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46eed1, i64 4691, i64 5)
  store %struct.Memory* %call_46eed1, %struct.Memory** %MEMORY

  br label %block_.L_470124

  ; Code: .L_46eed6:	 RIP: 46eed6	 Bytes: 0
block_.L_46eed6:

  ; Code: movq $0xb4bd20, %rax	 RIP: 46eed6	 Bytes: 10
  %loadMem_46eed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46eed6 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46eed6)
  store %struct.Memory* %call_46eed6, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 46eee0	 Bytes: 4
  %loadMem_46eee0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46eee0 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46eee0)
  store %struct.Memory* %call_46eee0, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46eee4	 Bytes: 4
  %loadMem_46eee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46eee4 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46eee4)
  store %struct.Memory* %call_46eee4, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46eee8	 Bytes: 3
  %loadMem_46eee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46eee8 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46eee8)
  store %struct.Memory* %call_46eee8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x30(%rax)	 RIP: 46eeeb	 Bytes: 4
  %loadMem_46eeeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46eeeb = call %struct.Memory* @routine_cmpl__0x0__0x30__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46eeeb)
  store %struct.Memory* %call_46eeeb, %struct.Memory** %MEMORY

  ; Code: je .L_46efa2	 RIP: 46eeef	 Bytes: 6
  %loadMem_46eeef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46eeef = call %struct.Memory* @routine_je_.L_46efa2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46eeef, i8* %BRANCH_TAKEN, i64 179, i64 6, i64 6)
  store %struct.Memory* %call_46eeef, %struct.Memory** %MEMORY

  %loadBr_46eeef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46eeef = icmp eq i8 %loadBr_46eeef, 1
  br i1 %cmpBr_46eeef, label %block_.L_46efa2, label %block_46eef5

block_46eef5:
  ; Code: xorl %eax, %eax	 RIP: 46eef5	 Bytes: 2
  %loadMem_46eef5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46eef5 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46eef5)
  store %struct.Memory* %call_46eef5, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 46eef7	 Bytes: 2
  %loadMem_46eef7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46eef7 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46eef7)
  store %struct.Memory* %call_46eef7, %struct.Memory** %MEMORY

  ; Code: movq $0xb4bd20, %rcx	 RIP: 46eef9	 Bytes: 10
  %loadMem_46eef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46eef9 = call %struct.Memory* @routine_movq__0xb4bd20___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46eef9)
  store %struct.Memory* %call_46eef9, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rsi	 RIP: 46ef03	 Bytes: 4
  %loadMem_46ef03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ef03 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ef03)
  store %struct.Memory* %call_46ef03, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rsi, %rsi	 RIP: 46ef07	 Bytes: 4
  %loadMem_46ef07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ef07 = call %struct.Memory* @routine_imulq__0x4c___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ef07)
  store %struct.Memory* %call_46ef07, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 46ef0b	 Bytes: 3
  %loadMem_46ef0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ef0b = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ef0b)
  store %struct.Memory* %call_46ef0b, %struct.Memory** %MEMORY

  ; Code: movl 0x30(%rcx), %edi	 RIP: 46ef0e	 Bytes: 3
  %loadMem_46ef0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ef0e = call %struct.Memory* @routine_movl_0x30__rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ef0e)
  store %struct.Memory* %call_46ef0e, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 46ef11	 Bytes: 3
  %loadMem_46ef11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ef11 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ef11)
  store %struct.Memory* %call_46ef11, %struct.Memory** %MEMORY

  ; Code: callq .owl_does_attack	 RIP: 46ef14	 Bytes: 5
  %loadMem1_46ef14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46ef14 = call %struct.Memory* @routine_callq_.owl_does_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46ef14, i64 -140260, i64 5, i64 5)
  store %struct.Memory* %call1_46ef14, %struct.Memory** %MEMORY

  %loadMem2_46ef14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46ef14 = load i64, i64* %3
  %call2_46ef14 = call %struct.Memory* @sub_44cb30.owl_does_attack(%struct.State* %0, i64  %loadPC_46ef14, %struct.Memory* %loadMem2_46ef14)
  store %struct.Memory* %call2_46ef14, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 46ef19	 Bytes: 3
  %loadMem_46ef19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ef19 = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ef19)
  store %struct.Memory* %call_46ef19, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x38(%rbp)	 RIP: 46ef1c	 Bytes: 4
  %loadMem_46ef1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ef1c = call %struct.Memory* @routine_cmpl__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ef1c)
  store %struct.Memory* %call_46ef1c, %struct.Memory** %MEMORY

  ; Code: je .L_46ef9d	 RIP: 46ef20	 Bytes: 6
  %loadMem_46ef20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ef20 = call %struct.Memory* @routine_je_.L_46ef9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ef20, i8* %BRANCH_TAKEN, i64 125, i64 6, i64 6)
  store %struct.Memory* %call_46ef20, %struct.Memory** %MEMORY

  %loadBr_46ef20 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46ef20 = icmp eq i8 %loadBr_46ef20, 1
  br i1 %cmpBr_46ef20, label %block_.L_46ef9d, label %block_46ef26

block_46ef26:
  ; Code: movq $0xb4bd20, %rax	 RIP: 46ef26	 Bytes: 10
  %loadMem_46ef26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ef26 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ef26)
  store %struct.Memory* %call_46ef26, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 46ef30	 Bytes: 4
  %loadMem_46ef30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ef30 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ef30)
  store %struct.Memory* %call_46ef30, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46ef34	 Bytes: 4
  %loadMem_46ef34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ef34 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ef34)
  store %struct.Memory* %call_46ef34, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46ef38	 Bytes: 3
  %loadMem_46ef38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ef38 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ef38)
  store %struct.Memory* %call_46ef38, %struct.Memory** %MEMORY

  ; Code: movl 0x30(%rax), %edi	 RIP: 46ef3b	 Bytes: 3
  %loadMem_46ef3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ef3b = call %struct.Memory* @routine_movl_0x30__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ef3b)
  store %struct.Memory* %call_46ef3b, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 46ef3e	 Bytes: 3
  %loadMem_46ef3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ef3e = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ef3e)
  store %struct.Memory* %call_46ef3e, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %edx	 RIP: 46ef41	 Bytes: 3
  %loadMem_46ef41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ef41 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ef41)
  store %struct.Memory* %call_46ef41, %struct.Memory** %MEMORY

  ; Code: callq .add_owl_attack_move	 RIP: 46ef44	 Bytes: 5
  %loadMem1_46ef44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46ef44 = call %struct.Memory* @routine_callq_.add_owl_attack_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46ef44, i64 -239812, i64 5, i64 5)
  store %struct.Memory* %call1_46ef44, %struct.Memory** %MEMORY

  %loadMem2_46ef44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46ef44 = load i64, i64* %3
  %call2_46ef44 = call %struct.Memory* @sub_434680.add_owl_attack_move(%struct.State* %0, i64  %loadPC_46ef44, %struct.Memory* %loadMem2_46ef44)
  store %struct.Memory* %call2_46ef44, %struct.Memory** %MEMORY

  ; Code: movl 0xab0f24, %edx	 RIP: 46ef49	 Bytes: 7
  %loadMem_46ef49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ef49 = call %struct.Memory* @routine_movl_0xab0f24___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ef49)
  store %struct.Memory* %call_46ef49, %struct.Memory** %MEMORY

  ; Code: andl $0x40, %edx	 RIP: 46ef50	 Bytes: 3
  %loadMem_46ef50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ef50 = call %struct.Memory* @routine_andl__0x40___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ef50)
  store %struct.Memory* %call_46ef50, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 46ef53	 Bytes: 3
  %loadMem_46ef53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ef53 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ef53)
  store %struct.Memory* %call_46ef53, %struct.Memory** %MEMORY

  ; Code: jne .L_46ef61	 RIP: 46ef56	 Bytes: 6
  %loadMem_46ef56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ef56 = call %struct.Memory* @routine_jne_.L_46ef61(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ef56, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_46ef56, %struct.Memory** %MEMORY

  %loadBr_46ef56 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46ef56 = icmp eq i8 %loadBr_46ef56, 1
  br i1 %cmpBr_46ef56, label %block_.L_46ef61, label %block_46ef5c

block_46ef5c:
  ; Code: jmpq .L_46ef96	 RIP: 46ef5c	 Bytes: 5
  %loadMem_46ef5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ef5c = call %struct.Memory* @routine_jmpq_.L_46ef96(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ef5c, i64 58, i64 5)
  store %struct.Memory* %call_46ef5c, %struct.Memory** %MEMORY

  br label %block_.L_46ef96

  ; Code: .L_46ef61:	 RIP: 46ef61	 Bytes: 0
block_.L_46ef61:

  ; Code: movq $0x580658, %rdi	 RIP: 46ef61	 Bytes: 10
  %loadMem_46ef61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ef61 = call %struct.Memory* @routine_movq__0x580658___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ef61)
  store %struct.Memory* %call_46ef61, %struct.Memory** %MEMORY

  ; Code: movq $0xb4bd20, %rax	 RIP: 46ef6b	 Bytes: 10
  %loadMem_46ef6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ef6b = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ef6b)
  store %struct.Memory* %call_46ef6b, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 46ef75	 Bytes: 3
  %loadMem_46ef75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ef75 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ef75)
  store %struct.Memory* %call_46ef75, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 46ef78	 Bytes: 4
  %loadMem_46ef78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ef78 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ef78)
  store %struct.Memory* %call_46ef78, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46ef7c	 Bytes: 4
  %loadMem_46ef7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ef7c = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ef7c)
  store %struct.Memory* %call_46ef7c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46ef80	 Bytes: 3
  %loadMem_46ef80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ef80 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ef80)
  store %struct.Memory* %call_46ef80, %struct.Memory** %MEMORY

  ; Code: movl 0x30(%rax), %edx	 RIP: 46ef83	 Bytes: 3
  %loadMem_46ef83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ef83 = call %struct.Memory* @routine_movl_0x30__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ef83)
  store %struct.Memory* %call_46ef83, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %ecx	 RIP: 46ef86	 Bytes: 3
  %loadMem_46ef86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ef86 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ef86)
  store %struct.Memory* %call_46ef86, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 46ef89	 Bytes: 2
  %loadMem_46ef89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ef89 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ef89)
  store %struct.Memory* %call_46ef89, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 46ef8b	 Bytes: 5
  %loadMem1_46ef8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46ef8b = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46ef8b, i64 -119259, i64 5, i64 5)
  store %struct.Memory* %call1_46ef8b, %struct.Memory** %MEMORY

  %loadMem2_46ef8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46ef8b = load i64, i64* %3
  %call2_46ef8b = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_46ef8b, %struct.Memory* %loadMem2_46ef8b)
  store %struct.Memory* %call2_46ef8b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2e4(%rbp)	 RIP: 46ef90	 Bytes: 6
  %loadMem_46ef90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ef90 = call %struct.Memory* @routine_movl__eax__MINUS0x2e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ef90)
  store %struct.Memory* %call_46ef90, %struct.Memory** %MEMORY

  ; Code: .L_46ef96:	 RIP: 46ef96	 Bytes: 0
  br label %block_.L_46ef96
block_.L_46ef96:

  ; Code: movl $0x1, -0x30(%rbp)	 RIP: 46ef96	 Bytes: 7
  %loadMem_46ef96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ef96 = call %struct.Memory* @routine_movl__0x1__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ef96)
  store %struct.Memory* %call_46ef96, %struct.Memory** %MEMORY

  ; Code: .L_46ef9d:	 RIP: 46ef9d	 Bytes: 0
  br label %block_.L_46ef9d
block_.L_46ef9d:

  ; Code: jmpq .L_46efa2	 RIP: 46ef9d	 Bytes: 5
  %loadMem_46ef9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ef9d = call %struct.Memory* @routine_jmpq_.L_46efa2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ef9d, i64 5, i64 5)
  store %struct.Memory* %call_46ef9d, %struct.Memory** %MEMORY

  br label %block_.L_46efa2

  ; Code: .L_46efa2:	 RIP: 46efa2	 Bytes: 0
block_.L_46efa2:

  ; Code: jmpq .L_46efa7	 RIP: 46efa2	 Bytes: 5
  %loadMem_46efa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46efa2 = call %struct.Memory* @routine_jmpq_.L_46efa7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46efa2, i64 5, i64 5)
  store %struct.Memory* %call_46efa2, %struct.Memory** %MEMORY

  br label %block_.L_46efa7

  ; Code: .L_46efa7:	 RIP: 46efa7	 Bytes: 0
block_.L_46efa7:

  ; Code: movq $0xb4bd20, %rax	 RIP: 46efa7	 Bytes: 10
  %loadMem_46efa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46efa7 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46efa7)
  store %struct.Memory* %call_46efa7, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 46efb1	 Bytes: 4
  %loadMem_46efb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46efb1 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46efb1)
  store %struct.Memory* %call_46efb1, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46efb5	 Bytes: 4
  %loadMem_46efb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46efb5 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46efb5)
  store %struct.Memory* %call_46efb5, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46efb9	 Bytes: 3
  %loadMem_46efb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46efb9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46efb9)
  store %struct.Memory* %call_46efb9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x1c(%rax)	 RIP: 46efbc	 Bytes: 4
  %loadMem_46efbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46efbc = call %struct.Memory* @routine_cmpl__0x2__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46efbc)
  store %struct.Memory* %call_46efbc, %struct.Memory** %MEMORY

  ; Code: je .L_46efe5	 RIP: 46efc0	 Bytes: 6
  %loadMem_46efc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46efc0 = call %struct.Memory* @routine_je_.L_46efe5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46efc0, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_46efc0, %struct.Memory** %MEMORY

  %loadBr_46efc0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46efc0 = icmp eq i8 %loadBr_46efc0, 1
  br i1 %cmpBr_46efc0, label %block_.L_46efe5, label %block_46efc6

block_46efc6:
  ; Code: movq $0xb4bd20, %rax	 RIP: 46efc6	 Bytes: 10
  %loadMem_46efc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46efc6 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46efc6)
  store %struct.Memory* %call_46efc6, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 46efd0	 Bytes: 4
  %loadMem_46efd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46efd0 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46efd0)
  store %struct.Memory* %call_46efd0, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46efd4	 Bytes: 4
  %loadMem_46efd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46efd4 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46efd4)
  store %struct.Memory* %call_46efd4, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46efd8	 Bytes: 3
  %loadMem_46efd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46efd8 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46efd8)
  store %struct.Memory* %call_46efd8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x1c(%rax)	 RIP: 46efdb	 Bytes: 4
  %loadMem_46efdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46efdb = call %struct.Memory* @routine_cmpl__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46efdb)
  store %struct.Memory* %call_46efdb, %struct.Memory** %MEMORY

  ; Code: jne .L_46f205	 RIP: 46efdf	 Bytes: 6
  %loadMem_46efdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46efdf = call %struct.Memory* @routine_jne_.L_46f205(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46efdf, i8* %BRANCH_TAKEN, i64 550, i64 6, i64 6)
  store %struct.Memory* %call_46efdf, %struct.Memory** %MEMORY

  %loadBr_46efdf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46efdf = icmp eq i8 %loadBr_46efdf, 1
  br i1 %cmpBr_46efdf, label %block_.L_46f205, label %block_.L_46efe5

  ; Code: .L_46efe5:	 RIP: 46efe5	 Bytes: 0
block_.L_46efe5:

  ; Code: movq $0xb4bd20, %rax	 RIP: 46efe5	 Bytes: 10
  %loadMem_46efe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46efe5 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46efe5)
  store %struct.Memory* %call_46efe5, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 46efef	 Bytes: 4
  %loadMem_46efef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46efef = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46efef)
  store %struct.Memory* %call_46efef, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46eff3	 Bytes: 4
  %loadMem_46eff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46eff3 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46eff3)
  store %struct.Memory* %call_46eff3, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46eff7	 Bytes: 3
  %loadMem_46eff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46eff7 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46eff7)
  store %struct.Memory* %call_46eff7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x1c(%rax)	 RIP: 46effa	 Bytes: 4
  %loadMem_46effa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46effa = call %struct.Memory* @routine_cmpl__0x2__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46effa)
  store %struct.Memory* %call_46effa, %struct.Memory** %MEMORY

  ; Code: jne .L_46f205	 RIP: 46effe	 Bytes: 6
  %loadMem_46effe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46effe = call %struct.Memory* @routine_jne_.L_46f205(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46effe, i8* %BRANCH_TAKEN, i64 519, i64 6, i64 6)
  store %struct.Memory* %call_46effe, %struct.Memory** %MEMORY

  %loadBr_46effe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46effe = icmp eq i8 %loadBr_46effe, 1
  br i1 %cmpBr_46effe, label %block_.L_46f205, label %block_46f004

block_46f004:
  ; Code: movq $0xb4bd20, %rax	 RIP: 46f004	 Bytes: 10
  %loadMem_46f004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f004 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f004)
  store %struct.Memory* %call_46f004, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 46f00e	 Bytes: 4
  %loadMem_46f00e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f00e = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f00e)
  store %struct.Memory* %call_46f00e, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46f012	 Bytes: 4
  %loadMem_46f012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f012 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f012)
  store %struct.Memory* %call_46f012, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 46f016	 Bytes: 3
  %loadMem_46f016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f016 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f016)
  store %struct.Memory* %call_46f016, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 46f019	 Bytes: 3
  %loadMem_46f019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f019 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f019)
  store %struct.Memory* %call_46f019, %struct.Memory** %MEMORY

  ; Code: movl 0x20(%rdx), %esi	 RIP: 46f01c	 Bytes: 3
  %loadMem_46f01c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f01c = call %struct.Memory* @routine_movl_0x20__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f01c)
  store %struct.Memory* %call_46f01c, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 46f01f	 Bytes: 4
  %loadMem_46f01f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f01f = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f01f)
  store %struct.Memory* %call_46f01f, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46f023	 Bytes: 4
  %loadMem_46f023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f023 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f023)
  store %struct.Memory* %call_46f023, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46f027	 Bytes: 3
  %loadMem_46f027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f027 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f027)
  store %struct.Memory* %call_46f027, %struct.Memory** %MEMORY

  ; Code: cmpl 0x30(%rax), %esi	 RIP: 46f02a	 Bytes: 3
  %loadMem_46f02a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f02a = call %struct.Memory* @routine_cmpl_0x30__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f02a)
  store %struct.Memory* %call_46f02a, %struct.Memory** %MEMORY

  ; Code: jne .L_46f038	 RIP: 46f02d	 Bytes: 6
  %loadMem_46f02d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f02d = call %struct.Memory* @routine_jne_.L_46f038(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f02d, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_46f02d, %struct.Memory** %MEMORY

  %loadBr_46f02d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f02d = icmp eq i8 %loadBr_46f02d, 1
  br i1 %cmpBr_46f02d, label %block_.L_46f038, label %block_46f033

block_46f033:
  ; Code: jmpq .L_470124	 RIP: 46f033	 Bytes: 5
  %loadMem_46f033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f033 = call %struct.Memory* @routine_jmpq_.L_470124(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f033, i64 4337, i64 5)
  store %struct.Memory* %call_46f033, %struct.Memory** %MEMORY

  br label %block_.L_470124

  ; Code: .L_46f038:	 RIP: 46f038	 Bytes: 0
block_.L_46f038:

  ; Code: movq $0xb4bd20, %rax	 RIP: 46f038	 Bytes: 10
  %loadMem_46f038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f038 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f038)
  store %struct.Memory* %call_46f038, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 46f042	 Bytes: 4
  %loadMem_46f042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f042 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f042)
  store %struct.Memory* %call_46f042, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46f046	 Bytes: 4
  %loadMem_46f046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f046 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f046)
  store %struct.Memory* %call_46f046, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46f04a	 Bytes: 3
  %loadMem_46f04a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f04a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f04a)
  store %struct.Memory* %call_46f04a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x20(%rax)	 RIP: 46f04d	 Bytes: 4
  %loadMem_46f04d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f04d = call %struct.Memory* @routine_cmpl__0x0__0x20__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f04d)
  store %struct.Memory* %call_46f04d, %struct.Memory** %MEMORY

  ; Code: je .L_46f200	 RIP: 46f051	 Bytes: 6
  %loadMem_46f051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f051 = call %struct.Memory* @routine_je_.L_46f200(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f051, i8* %BRANCH_TAKEN, i64 431, i64 6, i64 6)
  store %struct.Memory* %call_46f051, %struct.Memory** %MEMORY

  %loadBr_46f051 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f051 = icmp eq i8 %loadBr_46f051, 1
  br i1 %cmpBr_46f051, label %block_.L_46f200, label %block_46f057

block_46f057:
  ; Code: xorl %eax, %eax	 RIP: 46f057	 Bytes: 2
  %loadMem_46f057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f057 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f057)
  store %struct.Memory* %call_46f057, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 46f059	 Bytes: 2
  %loadMem_46f059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f059 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f059)
  store %struct.Memory* %call_46f059, %struct.Memory** %MEMORY

  ; Code: movq $0xb4bd20, %rcx	 RIP: 46f05b	 Bytes: 10
  %loadMem_46f05b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f05b = call %struct.Memory* @routine_movq__0xb4bd20___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f05b)
  store %struct.Memory* %call_46f05b, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rsi	 RIP: 46f065	 Bytes: 4
  %loadMem_46f065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f065 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f065)
  store %struct.Memory* %call_46f065, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rsi, %rsi	 RIP: 46f069	 Bytes: 4
  %loadMem_46f069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f069 = call %struct.Memory* @routine_imulq__0x4c___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f069)
  store %struct.Memory* %call_46f069, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 46f06d	 Bytes: 3
  %loadMem_46f06d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f06d = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f06d)
  store %struct.Memory* %call_46f06d, %struct.Memory** %MEMORY

  ; Code: movl 0x20(%rcx), %edi	 RIP: 46f070	 Bytes: 3
  %loadMem_46f070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f070 = call %struct.Memory* @routine_movl_0x20__rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f070)
  store %struct.Memory* %call_46f070, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 46f073	 Bytes: 3
  %loadMem_46f073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f073 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f073)
  store %struct.Memory* %call_46f073, %struct.Memory** %MEMORY

  ; Code: callq .owl_does_defend	 RIP: 46f076	 Bytes: 5
  %loadMem1_46f076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46f076 = call %struct.Memory* @routine_callq_.owl_does_defend(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46f076, i64 -142518, i64 5, i64 5)
  store %struct.Memory* %call1_46f076, %struct.Memory** %MEMORY

  %loadMem2_46f076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46f076 = load i64, i64* %3
  %call2_46f076 = call %struct.Memory* @sub_44c3c0.owl_does_defend(%struct.State* %0, i64  %loadPC_46f076, %struct.Memory* %loadMem2_46f076)
  store %struct.Memory* %call2_46f076, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 46f07b	 Bytes: 3
  %loadMem_46f07b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f07b = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f07b)
  store %struct.Memory* %call_46f07b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x3c(%rbp)	 RIP: 46f07e	 Bytes: 4
  %loadMem_46f07e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f07e = call %struct.Memory* @routine_cmpl__0x0__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f07e)
  store %struct.Memory* %call_46f07e, %struct.Memory** %MEMORY

  ; Code: je .L_46f1fb	 RIP: 46f082	 Bytes: 6
  %loadMem_46f082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f082 = call %struct.Memory* @routine_je_.L_46f1fb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f082, i8* %BRANCH_TAKEN, i64 377, i64 6, i64 6)
  store %struct.Memory* %call_46f082, %struct.Memory** %MEMORY

  %loadBr_46f082 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f082 = icmp eq i8 %loadBr_46f082, 1
  br i1 %cmpBr_46f082, label %block_.L_46f1fb, label %block_46f088

block_46f088:
  ; Code: movq $0xb4bd20, %rax	 RIP: 46f088	 Bytes: 10
  %loadMem_46f088 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f088 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f088)
  store %struct.Memory* %call_46f088, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 46f092	 Bytes: 4
  %loadMem_46f092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f092 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f092)
  store %struct.Memory* %call_46f092, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46f096	 Bytes: 4
  %loadMem_46f096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f096 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f096)
  store %struct.Memory* %call_46f096, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46f09a	 Bytes: 3
  %loadMem_46f09a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f09a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f09a)
  store %struct.Memory* %call_46f09a, %struct.Memory** %MEMORY

  ; Code: movl 0x20(%rax), %edi	 RIP: 46f09d	 Bytes: 3
  %loadMem_46f09d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f09d = call %struct.Memory* @routine_movl_0x20__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f09d)
  store %struct.Memory* %call_46f09d, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 46f0a0	 Bytes: 3
  %loadMem_46f0a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f0a0 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f0a0)
  store %struct.Memory* %call_46f0a0, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %edx	 RIP: 46f0a3	 Bytes: 3
  %loadMem_46f0a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f0a3 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f0a3)
  store %struct.Memory* %call_46f0a3, %struct.Memory** %MEMORY

  ; Code: callq .add_owl_defense_move	 RIP: 46f0a6	 Bytes: 5
  %loadMem1_46f0a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46f0a6 = call %struct.Memory* @routine_callq_.add_owl_defense_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46f0a6, i64 -239878, i64 5, i64 5)
  store %struct.Memory* %call1_46f0a6, %struct.Memory** %MEMORY

  %loadMem2_46f0a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46f0a6 = load i64, i64* %3
  %call2_46f0a6 = call %struct.Memory* @sub_4347a0.add_owl_defense_move(%struct.State* %0, i64  %loadPC_46f0a6, %struct.Memory* %loadMem2_46f0a6)
  store %struct.Memory* %call2_46f0a6, %struct.Memory** %MEMORY

  ; Code: movl 0xab0f24, %edx	 RIP: 46f0ab	 Bytes: 7
  %loadMem_46f0ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f0ab = call %struct.Memory* @routine_movl_0xab0f24___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f0ab)
  store %struct.Memory* %call_46f0ab, %struct.Memory** %MEMORY

  ; Code: andl $0x40, %edx	 RIP: 46f0b2	 Bytes: 3
  %loadMem_46f0b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f0b2 = call %struct.Memory* @routine_andl__0x40___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f0b2)
  store %struct.Memory* %call_46f0b2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 46f0b5	 Bytes: 3
  %loadMem_46f0b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f0b5 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f0b5)
  store %struct.Memory* %call_46f0b5, %struct.Memory** %MEMORY

  ; Code: jne .L_46f0c3	 RIP: 46f0b8	 Bytes: 6
  %loadMem_46f0b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f0b8 = call %struct.Memory* @routine_jne_.L_46f0c3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f0b8, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_46f0b8, %struct.Memory** %MEMORY

  %loadBr_46f0b8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f0b8 = icmp eq i8 %loadBr_46f0b8, 1
  br i1 %cmpBr_46f0b8, label %block_.L_46f0c3, label %block_46f0be

block_46f0be:
  ; Code: jmpq .L_46f0f8	 RIP: 46f0be	 Bytes: 5
  %loadMem_46f0be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f0be = call %struct.Memory* @routine_jmpq_.L_46f0f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f0be, i64 58, i64 5)
  store %struct.Memory* %call_46f0be, %struct.Memory** %MEMORY

  br label %block_.L_46f0f8

  ; Code: .L_46f0c3:	 RIP: 46f0c3	 Bytes: 0
block_.L_46f0c3:

  ; Code: movq $0x580685, %rdi	 RIP: 46f0c3	 Bytes: 10
  %loadMem_46f0c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f0c3 = call %struct.Memory* @routine_movq__0x580685___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f0c3)
  store %struct.Memory* %call_46f0c3, %struct.Memory** %MEMORY

  ; Code: movq $0xb4bd20, %rax	 RIP: 46f0cd	 Bytes: 10
  %loadMem_46f0cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f0cd = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f0cd)
  store %struct.Memory* %call_46f0cd, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 46f0d7	 Bytes: 3
  %loadMem_46f0d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f0d7 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f0d7)
  store %struct.Memory* %call_46f0d7, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 46f0da	 Bytes: 4
  %loadMem_46f0da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f0da = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f0da)
  store %struct.Memory* %call_46f0da, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46f0de	 Bytes: 4
  %loadMem_46f0de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f0de = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f0de)
  store %struct.Memory* %call_46f0de, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46f0e2	 Bytes: 3
  %loadMem_46f0e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f0e2 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f0e2)
  store %struct.Memory* %call_46f0e2, %struct.Memory** %MEMORY

  ; Code: movl 0x20(%rax), %edx	 RIP: 46f0e5	 Bytes: 3
  %loadMem_46f0e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f0e5 = call %struct.Memory* @routine_movl_0x20__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f0e5)
  store %struct.Memory* %call_46f0e5, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %ecx	 RIP: 46f0e8	 Bytes: 3
  %loadMem_46f0e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f0e8 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f0e8)
  store %struct.Memory* %call_46f0e8, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 46f0eb	 Bytes: 2
  %loadMem_46f0eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f0eb = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f0eb)
  store %struct.Memory* %call_46f0eb, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 46f0ed	 Bytes: 5
  %loadMem1_46f0ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46f0ed = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46f0ed, i64 -119613, i64 5, i64 5)
  store %struct.Memory* %call1_46f0ed, %struct.Memory** %MEMORY

  %loadMem2_46f0ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46f0ed = load i64, i64* %3
  %call2_46f0ed = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_46f0ed, %struct.Memory* %loadMem2_46f0ed)
  store %struct.Memory* %call2_46f0ed, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2e8(%rbp)	 RIP: 46f0f2	 Bytes: 6
  %loadMem_46f0f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f0f2 = call %struct.Memory* @routine_movl__eax__MINUS0x2e8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f0f2)
  store %struct.Memory* %call_46f0f2, %struct.Memory** %MEMORY

  ; Code: .L_46f0f8:	 RIP: 46f0f8	 Bytes: 0
  br label %block_.L_46f0f8
block_.L_46f0f8:

  ; Code: movq $0xb4bd20, %rax	 RIP: 46f0f8	 Bytes: 10
  %loadMem_46f0f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f0f8 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f0f8)
  store %struct.Memory* %call_46f0f8, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 46f102	 Bytes: 4
  %loadMem_46f102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f102 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f102)
  store %struct.Memory* %call_46f102, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46f106	 Bytes: 4
  %loadMem_46f106 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f106 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f106)
  store %struct.Memory* %call_46f106, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46f10a	 Bytes: 3
  %loadMem_46f10a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f10a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f10a)
  store %struct.Memory* %call_46f10a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x1c(%rax)	 RIP: 46f10d	 Bytes: 4
  %loadMem_46f10d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f10d = call %struct.Memory* @routine_cmpl__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f10d)
  store %struct.Memory* %call_46f10d, %struct.Memory** %MEMORY

  ; Code: jne .L_46f1f4	 RIP: 46f111	 Bytes: 6
  %loadMem_46f111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f111 = call %struct.Memory* @routine_jne_.L_46f1f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f111, i8* %BRANCH_TAKEN, i64 227, i64 6, i64 6)
  store %struct.Memory* %call_46f111, %struct.Memory** %MEMORY

  %loadBr_46f111 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f111 = icmp eq i8 %loadBr_46f111, 1
  br i1 %cmpBr_46f111, label %block_.L_46f1f4, label %block_46f117

block_46f117:
  ; Code: movl $0x15, -0x40(%rbp)	 RIP: 46f117	 Bytes: 7
  %loadMem_46f117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f117 = call %struct.Memory* @routine_movl__0x15__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f117)
  store %struct.Memory* %call_46f117, %struct.Memory** %MEMORY

  ; Code: .L_46f11e:	 RIP: 46f11e	 Bytes: 0
  br label %block_.L_46f11e
block_.L_46f11e:

  ; Code: cmpl $0x190, -0x40(%rbp)	 RIP: 46f11e	 Bytes: 7
  %loadMem_46f11e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f11e = call %struct.Memory* @routine_cmpl__0x190__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f11e)
  store %struct.Memory* %call_46f11e, %struct.Memory** %MEMORY

  ; Code: jge .L_46f1bd	 RIP: 46f125	 Bytes: 6
  %loadMem_46f125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f125 = call %struct.Memory* @routine_jge_.L_46f1bd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f125, i8* %BRANCH_TAKEN, i64 152, i64 6, i64 6)
  store %struct.Memory* %call_46f125, %struct.Memory** %MEMORY

  %loadBr_46f125 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f125 = icmp eq i8 %loadBr_46f125, 1
  br i1 %cmpBr_46f125, label %block_.L_46f1bd, label %block_46f12b

block_46f12b:
  ; Code: movslq -0x40(%rbp), %rax	 RIP: 46f12b	 Bytes: 4
  %loadMem_46f12b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f12b = call %struct.Memory* @routine_movslq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f12b)
  store %struct.Memory* %call_46f12b, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 46f12f	 Bytes: 8
  %loadMem_46f12f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f12f = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f12f)
  store %struct.Memory* %call_46f12f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 46f137	 Bytes: 3
  %loadMem_46f137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f137 = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f137)
  store %struct.Memory* %call_46f137, %struct.Memory** %MEMORY

  ; Code: jne .L_46f145	 RIP: 46f13a	 Bytes: 6
  %loadMem_46f13a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f13a = call %struct.Memory* @routine_jne_.L_46f145(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f13a, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_46f13a, %struct.Memory** %MEMORY

  %loadBr_46f13a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f13a = icmp eq i8 %loadBr_46f13a, 1
  br i1 %cmpBr_46f13a, label %block_.L_46f145, label %block_46f140

block_46f140:
  ; Code: jmpq .L_46f1af	 RIP: 46f140	 Bytes: 5
  %loadMem_46f140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f140 = call %struct.Memory* @routine_jmpq_.L_46f1af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f140, i64 111, i64 5)
  store %struct.Memory* %call_46f140, %struct.Memory** %MEMORY

  br label %block_.L_46f1af

  ; Code: .L_46f145:	 RIP: 46f145	 Bytes: 0
block_.L_46f145:

  ; Code: movslq -0x40(%rbp), %rax	 RIP: 46f145	 Bytes: 4
  %loadMem_46f145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f145 = call %struct.Memory* @routine_movslq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f145)
  store %struct.Memory* %call_46f145, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 46f149	 Bytes: 8
  %loadMem_46f149 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f149 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f149)
  store %struct.Memory* %call_46f149, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 46f151	 Bytes: 4
  %loadMem_46f151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f151 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f151)
  store %struct.Memory* %call_46f151, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %edx	 RIP: 46f155	 Bytes: 8
  %loadMem_46f155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f155 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f155)
  store %struct.Memory* %call_46f155, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 46f15d	 Bytes: 2
  %loadMem_46f15d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f15d = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f15d)
  store %struct.Memory* %call_46f15d, %struct.Memory** %MEMORY

  ; Code: jne .L_46f1aa	 RIP: 46f15f	 Bytes: 6
  %loadMem_46f15f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f15f = call %struct.Memory* @routine_jne_.L_46f1aa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f15f, i8* %BRANCH_TAKEN, i64 75, i64 6, i64 6)
  store %struct.Memory* %call_46f15f, %struct.Memory** %MEMORY

  %loadBr_46f15f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f15f = icmp eq i8 %loadBr_46f15f, 1
  br i1 %cmpBr_46f15f, label %block_.L_46f1aa, label %block_46f165

block_46f165:
  ; Code: movl -0x40(%rbp), %edi	 RIP: 46f165	 Bytes: 3
  %loadMem_46f165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f165 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f165)
  store %struct.Memory* %call_46f165, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 46f168	 Bytes: 3
  %loadMem_46f168 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f168 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f168)
  store %struct.Memory* %call_46f168, %struct.Memory** %MEMORY

  ; Code: callq .is_same_dragon	 RIP: 46f16b	 Bytes: 5
  %loadMem1_46f16b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46f16b = call %struct.Memory* @routine_callq_.is_same_dragon(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46f16b, i64 -324923, i64 5, i64 5)
  store %struct.Memory* %call1_46f16b, %struct.Memory** %MEMORY

  %loadMem2_46f16b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46f16b = load i64, i64* %3
  %call2_46f16b = call %struct.Memory* @sub_41fc30.is_same_dragon(%struct.State* %0, i64  %loadPC_46f16b, %struct.Memory* %loadMem2_46f16b)
  store %struct.Memory* %call2_46f16b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46f170	 Bytes: 3
  %loadMem_46f170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f170 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f170)
  store %struct.Memory* %call_46f170, %struct.Memory** %MEMORY

  ; Code: je .L_46f1aa	 RIP: 46f173	 Bytes: 6
  %loadMem_46f173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f173 = call %struct.Memory* @routine_je_.L_46f1aa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f173, i8* %BRANCH_TAKEN, i64 55, i64 6, i64 6)
  store %struct.Memory* %call_46f173, %struct.Memory** %MEMORY

  %loadBr_46f173 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f173 = icmp eq i8 %loadBr_46f173, 1
  br i1 %cmpBr_46f173, label %block_.L_46f1aa, label %block_46f179

block_46f179:
  ; Code: movq $0xb4bd20, %rax	 RIP: 46f179	 Bytes: 10
  %loadMem_46f179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f179 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f179)
  store %struct.Memory* %call_46f179, %struct.Memory** %MEMORY

  ; Code: movslq -0x40(%rbp), %rcx	 RIP: 46f183	 Bytes: 4
  %loadMem_46f183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f183 = call %struct.Memory* @routine_movslq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f183)
  store %struct.Memory* %call_46f183, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46f187	 Bytes: 4
  %loadMem_46f187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f187 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f187)
  store %struct.Memory* %call_46f187, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 46f18b	 Bytes: 3
  %loadMem_46f18b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f18b = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f18b)
  store %struct.Memory* %call_46f18b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 46f18e	 Bytes: 3
  %loadMem_46f18e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f18e = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f18e)
  store %struct.Memory* %call_46f18e, %struct.Memory** %MEMORY

  ; Code: movl $0x2, 0x1c(%rdx)	 RIP: 46f191	 Bytes: 7
  %loadMem_46f191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f191 = call %struct.Memory* @routine_movl__0x2__0x1c__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f191)
  store %struct.Memory* %call_46f191, %struct.Memory** %MEMORY

  ; Code: movslq -0x40(%rbp), %rcx	 RIP: 46f198	 Bytes: 4
  %loadMem_46f198 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f198 = call %struct.Memory* @routine_movslq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f198)
  store %struct.Memory* %call_46f198, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46f19c	 Bytes: 4
  %loadMem_46f19c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f19c = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f19c)
  store %struct.Memory* %call_46f19c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46f1a0	 Bytes: 3
  %loadMem_46f1a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f1a0 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f1a0)
  store %struct.Memory* %call_46f1a0, %struct.Memory** %MEMORY

  ; Code: movl $0x2, 0x40(%rax)	 RIP: 46f1a3	 Bytes: 7
  %loadMem_46f1a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f1a3 = call %struct.Memory* @routine_movl__0x2__0x40__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f1a3)
  store %struct.Memory* %call_46f1a3, %struct.Memory** %MEMORY

  ; Code: .L_46f1aa:	 RIP: 46f1aa	 Bytes: 0
  br label %block_.L_46f1aa
block_.L_46f1aa:

  ; Code: jmpq .L_46f1af	 RIP: 46f1aa	 Bytes: 5
  %loadMem_46f1aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f1aa = call %struct.Memory* @routine_jmpq_.L_46f1af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f1aa, i64 5, i64 5)
  store %struct.Memory* %call_46f1aa, %struct.Memory** %MEMORY

  br label %block_.L_46f1af

  ; Code: .L_46f1af:	 RIP: 46f1af	 Bytes: 0
block_.L_46f1af:

  ; Code: movl -0x40(%rbp), %eax	 RIP: 46f1af	 Bytes: 3
  %loadMem_46f1af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f1af = call %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f1af)
  store %struct.Memory* %call_46f1af, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46f1b2	 Bytes: 3
  %loadMem_46f1b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f1b2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f1b2)
  store %struct.Memory* %call_46f1b2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40(%rbp)	 RIP: 46f1b5	 Bytes: 3
  %loadMem_46f1b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f1b5 = call %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f1b5)
  store %struct.Memory* %call_46f1b5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46f11e	 RIP: 46f1b8	 Bytes: 5
  %loadMem_46f1b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f1b8 = call %struct.Memory* @routine_jmpq_.L_46f11e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f1b8, i64 -154, i64 5)
  store %struct.Memory* %call_46f1b8, %struct.Memory** %MEMORY

  br label %block_.L_46f11e

  ; Code: .L_46f1bd:	 RIP: 46f1bd	 Bytes: 0
block_.L_46f1bd:

  ; Code: movl 0xab0f24, %eax	 RIP: 46f1bd	 Bytes: 7
  %loadMem_46f1bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f1bd = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f1bd)
  store %struct.Memory* %call_46f1bd, %struct.Memory** %MEMORY

  ; Code: andl $0x40, %eax	 RIP: 46f1c4	 Bytes: 3
  %loadMem_46f1c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f1c4 = call %struct.Memory* @routine_andl__0x40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f1c4)
  store %struct.Memory* %call_46f1c4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46f1c7	 Bytes: 3
  %loadMem_46f1c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f1c7 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f1c7)
  store %struct.Memory* %call_46f1c7, %struct.Memory** %MEMORY

  ; Code: jne .L_46f1d5	 RIP: 46f1ca	 Bytes: 6
  %loadMem_46f1ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f1ca = call %struct.Memory* @routine_jne_.L_46f1d5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f1ca, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_46f1ca, %struct.Memory** %MEMORY

  %loadBr_46f1ca = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f1ca = icmp eq i8 %loadBr_46f1ca, 1
  br i1 %cmpBr_46f1ca, label %block_.L_46f1d5, label %block_46f1d0

block_46f1d0:
  ; Code: jmpq .L_46f1ef	 RIP: 46f1d0	 Bytes: 5
  %loadMem_46f1d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f1d0 = call %struct.Memory* @routine_jmpq_.L_46f1ef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f1d0, i64 31, i64 5)
  store %struct.Memory* %call_46f1d0, %struct.Memory** %MEMORY

  br label %block_.L_46f1ef

  ; Code: .L_46f1d5:	 RIP: 46f1d5	 Bytes: 0
block_.L_46f1d5:

  ; Code: movq $0x5806b3, %rdi	 RIP: 46f1d5	 Bytes: 10
  %loadMem_46f1d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f1d5 = call %struct.Memory* @routine_movq__0x5806b3___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f1d5)
  store %struct.Memory* %call_46f1d5, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 46f1df	 Bytes: 3
  %loadMem_46f1df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f1df = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f1df)
  store %struct.Memory* %call_46f1df, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 46f1e2	 Bytes: 2
  %loadMem_46f1e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f1e2 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f1e2)
  store %struct.Memory* %call_46f1e2, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 46f1e4	 Bytes: 5
  %loadMem1_46f1e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46f1e4 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46f1e4, i64 -119860, i64 5, i64 5)
  store %struct.Memory* %call1_46f1e4, %struct.Memory** %MEMORY

  %loadMem2_46f1e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46f1e4 = load i64, i64* %3
  %call2_46f1e4 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_46f1e4, %struct.Memory* %loadMem2_46f1e4)
  store %struct.Memory* %call2_46f1e4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2ec(%rbp)	 RIP: 46f1e9	 Bytes: 6
  %loadMem_46f1e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f1e9 = call %struct.Memory* @routine_movl__eax__MINUS0x2ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f1e9)
  store %struct.Memory* %call_46f1e9, %struct.Memory** %MEMORY

  ; Code: .L_46f1ef:	 RIP: 46f1ef	 Bytes: 0
  br label %block_.L_46f1ef
block_.L_46f1ef:

  ; Code: jmpq .L_46f1f4	 RIP: 46f1ef	 Bytes: 5
  %loadMem_46f1ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f1ef = call %struct.Memory* @routine_jmpq_.L_46f1f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f1ef, i64 5, i64 5)
  store %struct.Memory* %call_46f1ef, %struct.Memory** %MEMORY

  br label %block_.L_46f1f4

  ; Code: .L_46f1f4:	 RIP: 46f1f4	 Bytes: 0
block_.L_46f1f4:

  ; Code: movl $0x1, -0x30(%rbp)	 RIP: 46f1f4	 Bytes: 7
  %loadMem_46f1f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f1f4 = call %struct.Memory* @routine_movl__0x1__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f1f4)
  store %struct.Memory* %call_46f1f4, %struct.Memory** %MEMORY

  ; Code: .L_46f1fb:	 RIP: 46f1fb	 Bytes: 0
  br label %block_.L_46f1fb
block_.L_46f1fb:

  ; Code: jmpq .L_46f200	 RIP: 46f1fb	 Bytes: 5
  %loadMem_46f1fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f1fb = call %struct.Memory* @routine_jmpq_.L_46f200(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f1fb, i64 5, i64 5)
  store %struct.Memory* %call_46f1fb, %struct.Memory** %MEMORY

  br label %block_.L_46f200

  ; Code: .L_46f200:	 RIP: 46f200	 Bytes: 0
block_.L_46f200:

  ; Code: jmpq .L_46f205	 RIP: 46f200	 Bytes: 5
  %loadMem_46f200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f200 = call %struct.Memory* @routine_jmpq_.L_46f205(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f200, i64 5, i64 5)
  store %struct.Memory* %call_46f200, %struct.Memory** %MEMORY

  br label %block_.L_46f205

  ; Code: .L_46f205:	 RIP: 46f205	 Bytes: 0
block_.L_46f205:

  ; Code: cmpl $0x0, -0x30(%rbp)	 RIP: 46f205	 Bytes: 4
  %loadMem_46f205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f205 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f205)
  store %struct.Memory* %call_46f205, %struct.Memory** %MEMORY

  ; Code: je .L_46f243	 RIP: 46f209	 Bytes: 6
  %loadMem_46f209 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f209 = call %struct.Memory* @routine_je_.L_46f243(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f209, i8* %BRANCH_TAKEN, i64 58, i64 6, i64 6)
  store %struct.Memory* %call_46f209, %struct.Memory** %MEMORY

  %loadBr_46f209 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f209 = icmp eq i8 %loadBr_46f209, 1
  br i1 %cmpBr_46f209, label %block_.L_46f243, label %block_46f20f

block_46f20f:
  ; Code: movl 0xab0f24, %eax	 RIP: 46f20f	 Bytes: 7
  %loadMem_46f20f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f20f = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f20f)
  store %struct.Memory* %call_46f20f, %struct.Memory** %MEMORY

  ; Code: andl $0x40, %eax	 RIP: 46f216	 Bytes: 3
  %loadMem_46f216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f216 = call %struct.Memory* @routine_andl__0x40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f216)
  store %struct.Memory* %call_46f216, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46f219	 Bytes: 3
  %loadMem_46f219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f219 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f219)
  store %struct.Memory* %call_46f219, %struct.Memory** %MEMORY

  ; Code: jne .L_46f227	 RIP: 46f21c	 Bytes: 6
  %loadMem_46f21c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f21c = call %struct.Memory* @routine_jne_.L_46f227(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f21c, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_46f21c, %struct.Memory** %MEMORY

  %loadBr_46f21c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f21c = icmp eq i8 %loadBr_46f21c, 1
  br i1 %cmpBr_46f21c, label %block_.L_46f227, label %block_46f222

block_46f222:
  ; Code: jmpq .L_46f23e	 RIP: 46f222	 Bytes: 5
  %loadMem_46f222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f222 = call %struct.Memory* @routine_jmpq_.L_46f23e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f222, i64 28, i64 5)
  store %struct.Memory* %call_46f222, %struct.Memory** %MEMORY

  br label %block_.L_46f23e

  ; Code: .L_46f227:	 RIP: 46f227	 Bytes: 0
block_.L_46f227:

  ; Code: movq $0x5806e5, %rdi	 RIP: 46f227	 Bytes: 10
  %loadMem_46f227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f227 = call %struct.Memory* @routine_movq__0x5806e5___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f227)
  store %struct.Memory* %call_46f227, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 46f231	 Bytes: 2
  %loadMem_46f231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f231 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f231)
  store %struct.Memory* %call_46f231, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 46f233	 Bytes: 5
  %loadMem1_46f233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46f233 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46f233, i64 -119939, i64 5, i64 5)
  store %struct.Memory* %call1_46f233, %struct.Memory** %MEMORY

  %loadMem2_46f233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46f233 = load i64, i64* %3
  %call2_46f233 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_46f233, %struct.Memory* %loadMem2_46f233)
  store %struct.Memory* %call2_46f233, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2f0(%rbp)	 RIP: 46f238	 Bytes: 6
  %loadMem_46f238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f238 = call %struct.Memory* @routine_movl__eax__MINUS0x2f0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f238)
  store %struct.Memory* %call_46f238, %struct.Memory** %MEMORY

  ; Code: .L_46f23e:	 RIP: 46f23e	 Bytes: 0
  br label %block_.L_46f23e
block_.L_46f23e:

  ; Code: jmpq .L_470124	 RIP: 46f23e	 Bytes: 5
  %loadMem_46f23e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f23e = call %struct.Memory* @routine_jmpq_.L_470124(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f23e, i64 3814, i64 5)
  store %struct.Memory* %call_46f23e, %struct.Memory** %MEMORY

  br label %block_.L_470124

  ; Code: .L_46f243:	 RIP: 46f243	 Bytes: 0
block_.L_46f243:

  ; Code: movl $0x15, -0x34(%rbp)	 RIP: 46f243	 Bytes: 7
  %loadMem_46f243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f243 = call %struct.Memory* @routine_movl__0x15__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f243)
  store %struct.Memory* %call_46f243, %struct.Memory** %MEMORY

  ; Code: .L_46f24a:	 RIP: 46f24a	 Bytes: 0
  br label %block_.L_46f24a
block_.L_46f24a:

  ; Code: cmpl $0x190, -0x34(%rbp)	 RIP: 46f24a	 Bytes: 7
  %loadMem_46f24a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f24a = call %struct.Memory* @routine_cmpl__0x190__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f24a)
  store %struct.Memory* %call_46f24a, %struct.Memory** %MEMORY

  ; Code: jge .L_46f400	 RIP: 46f251	 Bytes: 6
  %loadMem_46f251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f251 = call %struct.Memory* @routine_jge_.L_46f400(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f251, i8* %BRANCH_TAKEN, i64 431, i64 6, i64 6)
  store %struct.Memory* %call_46f251, %struct.Memory** %MEMORY

  %loadBr_46f251 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f251 = icmp eq i8 %loadBr_46f251, 1
  br i1 %cmpBr_46f251, label %block_.L_46f400, label %block_46f257

block_46f257:
  ; Code: movslq -0x34(%rbp), %rax	 RIP: 46f257	 Bytes: 4
  %loadMem_46f257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f257 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f257)
  store %struct.Memory* %call_46f257, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 46f25b	 Bytes: 8
  %loadMem_46f25b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f25b = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f25b)
  store %struct.Memory* %call_46f25b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 46f263	 Bytes: 3
  %loadMem_46f263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f263 = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f263)
  store %struct.Memory* %call_46f263, %struct.Memory** %MEMORY

  ; Code: jne .L_46f271	 RIP: 46f266	 Bytes: 6
  %loadMem_46f266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f266 = call %struct.Memory* @routine_jne_.L_46f271(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f266, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_46f266, %struct.Memory** %MEMORY

  %loadBr_46f266 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f266 = icmp eq i8 %loadBr_46f266, 1
  br i1 %cmpBr_46f266, label %block_.L_46f271, label %block_46f26c

block_46f26c:
  ; Code: jmpq .L_46f3f2	 RIP: 46f26c	 Bytes: 5
  %loadMem_46f26c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f26c = call %struct.Memory* @routine_jmpq_.L_46f3f2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f26c, i64 390, i64 5)
  store %struct.Memory* %call_46f26c, %struct.Memory** %MEMORY

  br label %block_.L_46f3f2

  ; Code: .L_46f271:	 RIP: 46f271	 Bytes: 0
block_.L_46f271:

  ; Code: movq $0xb0eff0, %rax	 RIP: 46f271	 Bytes: 10
  %loadMem_46f271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f271 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f271)
  store %struct.Memory* %call_46f271, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 46f27b	 Bytes: 4
  %loadMem_46f27b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f27b = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f27b)
  store %struct.Memory* %call_46f27b, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 46f27f	 Bytes: 7
  %loadMem_46f27f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f27f = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f27f)
  store %struct.Memory* %call_46f27f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46f286	 Bytes: 3
  %loadMem_46f286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f286 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f286)
  store %struct.Memory* %call_46f286, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 46f289	 Bytes: 3
  %loadMem_46f289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f289 = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f289)
  store %struct.Memory* %call_46f289, %struct.Memory** %MEMORY

  ; Code: cmpl -0x34(%rbp), %edx	 RIP: 46f28c	 Bytes: 3
  %loadMem_46f28c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f28c = call %struct.Memory* @routine_cmpl_MINUS0x34__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f28c)
  store %struct.Memory* %call_46f28c, %struct.Memory** %MEMORY

  ; Code: jne .L_46f3ed	 RIP: 46f28f	 Bytes: 6
  %loadMem_46f28f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f28f = call %struct.Memory* @routine_jne_.L_46f3ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f28f, i8* %BRANCH_TAKEN, i64 350, i64 6, i64 6)
  store %struct.Memory* %call_46f28f, %struct.Memory** %MEMORY

  %loadBr_46f28f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f28f = icmp eq i8 %loadBr_46f28f, 1
  br i1 %cmpBr_46f28f, label %block_.L_46f3ed, label %block_46f295

block_46f295:
  ; Code: movq $0xb0eff0, %rax	 RIP: 46f295	 Bytes: 10
  %loadMem_46f295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f295 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f295)
  store %struct.Memory* %call_46f295, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 46f29f	 Bytes: 4
  %loadMem_46f29f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f29f = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f29f)
  store %struct.Memory* %call_46f29f, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 46f2a3	 Bytes: 7
  %loadMem_46f2a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f2a3 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f2a3)
  store %struct.Memory* %call_46f2a3, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46f2aa	 Bytes: 3
  %loadMem_46f2aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f2aa = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f2aa)
  store %struct.Memory* %call_46f2aa, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, 0x64(%rax)	 RIP: 46f2ad	 Bytes: 4
  %loadMem_46f2ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f2ad = call %struct.Memory* @routine_cmpl__0x5__0x64__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f2ad)
  store %struct.Memory* %call_46f2ad, %struct.Memory** %MEMORY

  ; Code: jne .L_46f3ed	 RIP: 46f2b1	 Bytes: 6
  %loadMem_46f2b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f2b1 = call %struct.Memory* @routine_jne_.L_46f3ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f2b1, i8* %BRANCH_TAKEN, i64 316, i64 6, i64 6)
  store %struct.Memory* %call_46f2b1, %struct.Memory** %MEMORY

  %loadBr_46f2b1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f2b1 = icmp eq i8 %loadBr_46f2b1, 1
  br i1 %cmpBr_46f2b1, label %block_.L_46f3ed, label %block_46f2b7

block_46f2b7:
  ; Code: movq $0xb4bd20, %rax	 RIP: 46f2b7	 Bytes: 10
  %loadMem_46f2b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f2b7 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f2b7)
  store %struct.Memory* %call_46f2b7, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 46f2c1	 Bytes: 4
  %loadMem_46f2c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f2c1 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f2c1)
  store %struct.Memory* %call_46f2c1, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46f2c5	 Bytes: 4
  %loadMem_46f2c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f2c5 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f2c5)
  store %struct.Memory* %call_46f2c5, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46f2c9	 Bytes: 3
  %loadMem_46f2c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f2c9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f2c9)
  store %struct.Memory* %call_46f2c9, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %edx	 RIP: 46f2cc	 Bytes: 3
  %loadMem_46f2cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f2cc = call %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f2cc)
  store %struct.Memory* %call_46f2cc, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %edx	 RIP: 46f2cf	 Bytes: 3
  %loadMem_46f2cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f2cf = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f2cf)
  store %struct.Memory* %call_46f2cf, %struct.Memory** %MEMORY

  ; Code: je .L_46f2f9	 RIP: 46f2d2	 Bytes: 6
  %loadMem_46f2d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f2d2 = call %struct.Memory* @routine_je_.L_46f2f9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f2d2, i8* %BRANCH_TAKEN, i64 39, i64 6, i64 6)
  store %struct.Memory* %call_46f2d2, %struct.Memory** %MEMORY

  %loadBr_46f2d2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f2d2 = icmp eq i8 %loadBr_46f2d2, 1
  br i1 %cmpBr_46f2d2, label %block_.L_46f2f9, label %block_46f2d8

block_46f2d8:
  ; Code: movq $0xb4bd20, %rax	 RIP: 46f2d8	 Bytes: 10
  %loadMem_46f2d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f2d8 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f2d8)
  store %struct.Memory* %call_46f2d8, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 46f2e2	 Bytes: 4
  %loadMem_46f2e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f2e2 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f2e2)
  store %struct.Memory* %call_46f2e2, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46f2e6	 Bytes: 4
  %loadMem_46f2e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f2e6 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f2e6)
  store %struct.Memory* %call_46f2e6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46f2ea	 Bytes: 3
  %loadMem_46f2ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f2ea = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f2ea)
  store %struct.Memory* %call_46f2ea, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %edx	 RIP: 46f2ed	 Bytes: 3
  %loadMem_46f2ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f2ed = call %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f2ed)
  store %struct.Memory* %call_46f2ed, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %edx	 RIP: 46f2f0	 Bytes: 3
  %loadMem_46f2f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f2f0 = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f2f0)
  store %struct.Memory* %call_46f2f0, %struct.Memory** %MEMORY

  ; Code: jne .L_46f3e8	 RIP: 46f2f3	 Bytes: 6
  %loadMem_46f2f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f2f3 = call %struct.Memory* @routine_jne_.L_46f3e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f2f3, i8* %BRANCH_TAKEN, i64 245, i64 6, i64 6)
  store %struct.Memory* %call_46f2f3, %struct.Memory** %MEMORY

  %loadBr_46f2f3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f2f3 = icmp eq i8 %loadBr_46f2f3, 1
  br i1 %cmpBr_46f2f3, label %block_.L_46f3e8, label %block_.L_46f2f9

  ; Code: .L_46f2f9:	 RIP: 46f2f9	 Bytes: 0
block_.L_46f2f9:

  ; Code: leaq -0x2d0(%rbp), %rsi	 RIP: 46f2f9	 Bytes: 7
  %loadMem_46f2f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f2f9 = call %struct.Memory* @routine_leaq_MINUS0x2d0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f2f9)
  store %struct.Memory* %call_46f2f9, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edi	 RIP: 46f300	 Bytes: 3
  %loadMem_46f300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f300 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f300)
  store %struct.Memory* %call_46f300, %struct.Memory** %MEMORY

  ; Code: callq .chainlinks	 RIP: 46f303	 Bytes: 5
  %loadMem1_46f303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46f303 = call %struct.Memory* @routine_callq_.chainlinks(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46f303, i64 -374787, i64 5, i64 5)
  store %struct.Memory* %call1_46f303, %struct.Memory** %MEMORY

  %loadMem2_46f303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46f303 = load i64, i64* %3
  %call2_46f303 = call %struct.Memory* @sub_413b00.chainlinks(%struct.State* %0, i64  %loadPC_46f303, %struct.Memory* %loadMem2_46f303)
  store %struct.Memory* %call2_46f303, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x44(%rbp)	 RIP: 46f308	 Bytes: 3
  %loadMem_46f308 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f308 = call %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f308)
  store %struct.Memory* %call_46f308, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2d4(%rbp)	 RIP: 46f30b	 Bytes: 10
  %loadMem_46f30b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f30b = call %struct.Memory* @routine_movl__0x0__MINUS0x2d4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f30b)
  store %struct.Memory* %call_46f30b, %struct.Memory** %MEMORY

  ; Code: .L_46f315:	 RIP: 46f315	 Bytes: 0
  br label %block_.L_46f315
block_.L_46f315:

  ; Code: movl -0x2d4(%rbp), %eax	 RIP: 46f315	 Bytes: 6
  %loadMem_46f315 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f315 = call %struct.Memory* @routine_movl_MINUS0x2d4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f315)
  store %struct.Memory* %call_46f315, %struct.Memory** %MEMORY

  ; Code: cmpl -0x44(%rbp), %eax	 RIP: 46f31b	 Bytes: 3
  %loadMem_46f31b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f31b = call %struct.Memory* @routine_cmpl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f31b)
  store %struct.Memory* %call_46f31b, %struct.Memory** %MEMORY

  ; Code: jge .L_46f3e3	 RIP: 46f31e	 Bytes: 6
  %loadMem_46f31e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f31e = call %struct.Memory* @routine_jge_.L_46f3e3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f31e, i8* %BRANCH_TAKEN, i64 197, i64 6, i64 6)
  store %struct.Memory* %call_46f31e, %struct.Memory** %MEMORY

  %loadBr_46f31e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f31e = icmp eq i8 %loadBr_46f31e, 1
  br i1 %cmpBr_46f31e, label %block_.L_46f3e3, label %block_46f324

block_46f324:
  ; Code: movq $0xb4bd20, %rax	 RIP: 46f324	 Bytes: 10
  %loadMem_46f324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f324 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f324)
  store %struct.Memory* %call_46f324, %struct.Memory** %MEMORY

  ; Code: movslq -0x2d4(%rbp), %rcx	 RIP: 46f32e	 Bytes: 7
  %loadMem_46f32e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f32e = call %struct.Memory* @routine_movslq_MINUS0x2d4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f32e)
  store %struct.Memory* %call_46f32e, %struct.Memory** %MEMORY

  ; Code: movl -0x2d0(%rbp,%rcx,4), %edx	 RIP: 46f335	 Bytes: 7
  %loadMem_46f335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f335 = call %struct.Memory* @routine_movl_MINUS0x2d0__rbp__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f335)
  store %struct.Memory* %call_46f335, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x2d8(%rbp)	 RIP: 46f33c	 Bytes: 6
  %loadMem_46f33c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f33c = call %struct.Memory* @routine_movl__edx__MINUS0x2d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f33c)
  store %struct.Memory* %call_46f33c, %struct.Memory** %MEMORY

  ; Code: movslq -0x2d8(%rbp), %rcx	 RIP: 46f342	 Bytes: 7
  %loadMem_46f342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f342 = call %struct.Memory* @routine_movslq_MINUS0x2d8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f342)
  store %struct.Memory* %call_46f342, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46f349	 Bytes: 4
  %loadMem_46f349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f349 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f349)
  store %struct.Memory* %call_46f349, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46f34d	 Bytes: 3
  %loadMem_46f34d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f34d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f34d)
  store %struct.Memory* %call_46f34d, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %edx	 RIP: 46f350	 Bytes: 3
  %loadMem_46f350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f350 = call %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f350)
  store %struct.Memory* %call_46f350, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %edx	 RIP: 46f353	 Bytes: 3
  %loadMem_46f353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f353 = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f353)
  store %struct.Memory* %call_46f353, %struct.Memory** %MEMORY

  ; Code: je .L_46f380	 RIP: 46f356	 Bytes: 6
  %loadMem_46f356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f356 = call %struct.Memory* @routine_je_.L_46f380(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f356, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_46f356, %struct.Memory** %MEMORY

  %loadBr_46f356 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f356 = icmp eq i8 %loadBr_46f356, 1
  br i1 %cmpBr_46f356, label %block_.L_46f380, label %block_46f35c

block_46f35c:
  ; Code: movq $0xb4bd20, %rax	 RIP: 46f35c	 Bytes: 10
  %loadMem_46f35c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f35c = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f35c)
  store %struct.Memory* %call_46f35c, %struct.Memory** %MEMORY

  ; Code: movslq -0x2d8(%rbp), %rcx	 RIP: 46f366	 Bytes: 7
  %loadMem_46f366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f366 = call %struct.Memory* @routine_movslq_MINUS0x2d8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f366)
  store %struct.Memory* %call_46f366, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46f36d	 Bytes: 4
  %loadMem_46f36d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f36d = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f36d)
  store %struct.Memory* %call_46f36d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46f371	 Bytes: 3
  %loadMem_46f371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f371 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f371)
  store %struct.Memory* %call_46f371, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %edx	 RIP: 46f374	 Bytes: 3
  %loadMem_46f374 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f374 = call %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f374)
  store %struct.Memory* %call_46f374, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %edx	 RIP: 46f377	 Bytes: 3
  %loadMem_46f377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f377 = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f377)
  store %struct.Memory* %call_46f377, %struct.Memory** %MEMORY

  ; Code: jne .L_46f3ca	 RIP: 46f37a	 Bytes: 6
  %loadMem_46f37a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f37a = call %struct.Memory* @routine_jne_.L_46f3ca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f37a, i8* %BRANCH_TAKEN, i64 80, i64 6, i64 6)
  store %struct.Memory* %call_46f37a, %struct.Memory** %MEMORY

  %loadBr_46f37a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f37a = icmp eq i8 %loadBr_46f37a, 1
  br i1 %cmpBr_46f37a, label %block_.L_46f3ca, label %block_.L_46f380

  ; Code: .L_46f380:	 RIP: 46f380	 Bytes: 0
block_.L_46f380:

  ; Code: movl -0x34(%rbp), %edi	 RIP: 46f380	 Bytes: 3
  %loadMem_46f380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f380 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f380)
  store %struct.Memory* %call_46f380, %struct.Memory** %MEMORY

  ; Code: callq .owl_substantial	 RIP: 46f383	 Bytes: 5
  %loadMem1_46f383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46f383 = call %struct.Memory* @routine_callq_.owl_substantial(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46f383, i64 -139203, i64 5, i64 5)
  store %struct.Memory* %call1_46f383, %struct.Memory** %MEMORY

  %loadMem2_46f383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46f383 = load i64, i64* %3
  %call2_46f383 = call %struct.Memory* @sub_44d3c0.owl_substantial(%struct.State* %0, i64  %loadPC_46f383, %struct.Memory* %loadMem2_46f383)
  store %struct.Memory* %call2_46f383, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46f388	 Bytes: 3
  %loadMem_46f388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f388 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f388)
  store %struct.Memory* %call_46f388, %struct.Memory** %MEMORY

  ; Code: je .L_46f3c5	 RIP: 46f38b	 Bytes: 6
  %loadMem_46f38b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f38b = call %struct.Memory* @routine_je_.L_46f3c5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f38b, i8* %BRANCH_TAKEN, i64 58, i64 6, i64 6)
  store %struct.Memory* %call_46f38b, %struct.Memory** %MEMORY

  %loadBr_46f38b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f38b = icmp eq i8 %loadBr_46f38b, 1
  br i1 %cmpBr_46f38b, label %block_.L_46f3c5, label %block_46f391

block_46f391:
  ; Code: movl 0xab0f24, %eax	 RIP: 46f391	 Bytes: 7
  %loadMem_46f391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f391 = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f391)
  store %struct.Memory* %call_46f391, %struct.Memory** %MEMORY

  ; Code: andl $0x40, %eax	 RIP: 46f398	 Bytes: 3
  %loadMem_46f398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f398 = call %struct.Memory* @routine_andl__0x40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f398)
  store %struct.Memory* %call_46f398, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46f39b	 Bytes: 3
  %loadMem_46f39b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f39b = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f39b)
  store %struct.Memory* %call_46f39b, %struct.Memory** %MEMORY

  ; Code: jne .L_46f3a9	 RIP: 46f39e	 Bytes: 6
  %loadMem_46f39e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f39e = call %struct.Memory* @routine_jne_.L_46f3a9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f39e, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_46f39e, %struct.Memory** %MEMORY

  %loadBr_46f39e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f39e = icmp eq i8 %loadBr_46f39e, 1
  br i1 %cmpBr_46f39e, label %block_.L_46f3a9, label %block_46f3a4

block_46f3a4:
  ; Code: jmpq .L_46f3c0	 RIP: 46f3a4	 Bytes: 5
  %loadMem_46f3a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f3a4 = call %struct.Memory* @routine_jmpq_.L_46f3c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f3a4, i64 28, i64 5)
  store %struct.Memory* %call_46f3a4, %struct.Memory** %MEMORY

  br label %block_.L_46f3c0

  ; Code: .L_46f3a9:	 RIP: 46f3a9	 Bytes: 0
block_.L_46f3a9:

  ; Code: movq $0x580718, %rdi	 RIP: 46f3a9	 Bytes: 10
  %loadMem_46f3a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f3a9 = call %struct.Memory* @routine_movq__0x580718___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f3a9)
  store %struct.Memory* %call_46f3a9, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 46f3b3	 Bytes: 2
  %loadMem_46f3b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f3b3 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f3b3)
  store %struct.Memory* %call_46f3b3, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 46f3b5	 Bytes: 5
  %loadMem1_46f3b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46f3b5 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46f3b5, i64 -120325, i64 5, i64 5)
  store %struct.Memory* %call1_46f3b5, %struct.Memory** %MEMORY

  %loadMem2_46f3b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46f3b5 = load i64, i64* %3
  %call2_46f3b5 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_46f3b5, %struct.Memory* %loadMem2_46f3b5)
  store %struct.Memory* %call2_46f3b5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2f4(%rbp)	 RIP: 46f3ba	 Bytes: 6
  %loadMem_46f3ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f3ba = call %struct.Memory* @routine_movl__eax__MINUS0x2f4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f3ba)
  store %struct.Memory* %call_46f3ba, %struct.Memory** %MEMORY

  ; Code: .L_46f3c0:	 RIP: 46f3c0	 Bytes: 0
  br label %block_.L_46f3c0
block_.L_46f3c0:

  ; Code: jmpq .L_470124	 RIP: 46f3c0	 Bytes: 5
  %loadMem_46f3c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f3c0 = call %struct.Memory* @routine_jmpq_.L_470124(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f3c0, i64 3428, i64 5)
  store %struct.Memory* %call_46f3c0, %struct.Memory** %MEMORY

  br label %block_.L_470124

  ; Code: .L_46f3c5:	 RIP: 46f3c5	 Bytes: 0
block_.L_46f3c5:

  ; Code: jmpq .L_46f3ca	 RIP: 46f3c5	 Bytes: 5
  %loadMem_46f3c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f3c5 = call %struct.Memory* @routine_jmpq_.L_46f3ca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f3c5, i64 5, i64 5)
  store %struct.Memory* %call_46f3c5, %struct.Memory** %MEMORY

  br label %block_.L_46f3ca

  ; Code: .L_46f3ca:	 RIP: 46f3ca	 Bytes: 0
block_.L_46f3ca:

  ; Code: jmpq .L_46f3cf	 RIP: 46f3ca	 Bytes: 5
  %loadMem_46f3ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f3ca = call %struct.Memory* @routine_jmpq_.L_46f3cf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f3ca, i64 5, i64 5)
  store %struct.Memory* %call_46f3ca, %struct.Memory** %MEMORY

  br label %block_.L_46f3cf

  ; Code: .L_46f3cf:	 RIP: 46f3cf	 Bytes: 0
block_.L_46f3cf:

  ; Code: movl -0x2d4(%rbp), %eax	 RIP: 46f3cf	 Bytes: 6
  %loadMem_46f3cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f3cf = call %struct.Memory* @routine_movl_MINUS0x2d4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f3cf)
  store %struct.Memory* %call_46f3cf, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46f3d5	 Bytes: 3
  %loadMem_46f3d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f3d5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f3d5)
  store %struct.Memory* %call_46f3d5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2d4(%rbp)	 RIP: 46f3d8	 Bytes: 6
  %loadMem_46f3d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f3d8 = call %struct.Memory* @routine_movl__eax__MINUS0x2d4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f3d8)
  store %struct.Memory* %call_46f3d8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46f315	 RIP: 46f3de	 Bytes: 5
  %loadMem_46f3de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f3de = call %struct.Memory* @routine_jmpq_.L_46f315(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f3de, i64 -201, i64 5)
  store %struct.Memory* %call_46f3de, %struct.Memory** %MEMORY

  br label %block_.L_46f315

  ; Code: .L_46f3e3:	 RIP: 46f3e3	 Bytes: 0
block_.L_46f3e3:

  ; Code: jmpq .L_46f3e8	 RIP: 46f3e3	 Bytes: 5
  %loadMem_46f3e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f3e3 = call %struct.Memory* @routine_jmpq_.L_46f3e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f3e3, i64 5, i64 5)
  store %struct.Memory* %call_46f3e3, %struct.Memory** %MEMORY

  br label %block_.L_46f3e8

  ; Code: .L_46f3e8:	 RIP: 46f3e8	 Bytes: 0
block_.L_46f3e8:

  ; Code: jmpq .L_46f3ed	 RIP: 46f3e8	 Bytes: 5
  %loadMem_46f3e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f3e8 = call %struct.Memory* @routine_jmpq_.L_46f3ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f3e8, i64 5, i64 5)
  store %struct.Memory* %call_46f3e8, %struct.Memory** %MEMORY

  br label %block_.L_46f3ed

  ; Code: .L_46f3ed:	 RIP: 46f3ed	 Bytes: 0
block_.L_46f3ed:

  ; Code: jmpq .L_46f3f2	 RIP: 46f3ed	 Bytes: 5
  %loadMem_46f3ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f3ed = call %struct.Memory* @routine_jmpq_.L_46f3f2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f3ed, i64 5, i64 5)
  store %struct.Memory* %call_46f3ed, %struct.Memory** %MEMORY

  br label %block_.L_46f3f2

  ; Code: .L_46f3f2:	 RIP: 46f3f2	 Bytes: 0
block_.L_46f3f2:

  ; Code: movl -0x34(%rbp), %eax	 RIP: 46f3f2	 Bytes: 3
  %loadMem_46f3f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f3f2 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f3f2)
  store %struct.Memory* %call_46f3f2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46f3f5	 Bytes: 3
  %loadMem_46f3f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f3f5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f3f5)
  store %struct.Memory* %call_46f3f5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 46f3f8	 Bytes: 3
  %loadMem_46f3f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f3f8 = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f3f8)
  store %struct.Memory* %call_46f3f8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46f24a	 RIP: 46f3fb	 Bytes: 5
  %loadMem_46f3fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f3fb = call %struct.Memory* @routine_jmpq_.L_46f24a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f3fb, i64 -433, i64 5)
  store %struct.Memory* %call_46f3fb, %struct.Memory** %MEMORY

  br label %block_.L_46f24a

  ; Code: .L_46f400:	 RIP: 46f400	 Bytes: 0
block_.L_46f400:

  ; Code: movl $0x15, -0x34(%rbp)	 RIP: 46f400	 Bytes: 7
  %loadMem_46f400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f400 = call %struct.Memory* @routine_movl__0x15__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f400)
  store %struct.Memory* %call_46f400, %struct.Memory** %MEMORY

  ; Code: .L_46f407:	 RIP: 46f407	 Bytes: 0
  br label %block_.L_46f407
block_.L_46f407:

  ; Code: cmpl $0x190, -0x34(%rbp)	 RIP: 46f407	 Bytes: 7
  %loadMem_46f407 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f407 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f407)
  store %struct.Memory* %call_46f407, %struct.Memory** %MEMORY

  ; Code: jge .L_46f493	 RIP: 46f40e	 Bytes: 6
  %loadMem_46f40e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f40e = call %struct.Memory* @routine_jge_.L_46f493(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f40e, i8* %BRANCH_TAKEN, i64 133, i64 6, i64 6)
  store %struct.Memory* %call_46f40e, %struct.Memory** %MEMORY

  %loadBr_46f40e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f40e = icmp eq i8 %loadBr_46f40e, 1
  br i1 %cmpBr_46f40e, label %block_.L_46f493, label %block_46f414

block_46f414:
  ; Code: movslq -0x34(%rbp), %rax	 RIP: 46f414	 Bytes: 4
  %loadMem_46f414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f414 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f414)
  store %struct.Memory* %call_46f414, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 46f418	 Bytes: 8
  %loadMem_46f418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f418 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f418)
  store %struct.Memory* %call_46f418, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 46f420	 Bytes: 3
  %loadMem_46f420 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f420 = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f420)
  store %struct.Memory* %call_46f420, %struct.Memory** %MEMORY

  ; Code: je .L_46f480	 RIP: 46f423	 Bytes: 6
  %loadMem_46f423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f423 = call %struct.Memory* @routine_je_.L_46f480(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f423, i8* %BRANCH_TAKEN, i64 93, i64 6, i64 6)
  store %struct.Memory* %call_46f423, %struct.Memory** %MEMORY

  %loadBr_46f423 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f423 = icmp eq i8 %loadBr_46f423, 1
  br i1 %cmpBr_46f423, label %block_.L_46f480, label %block_46f429

block_46f429:
  ; Code: movl -0x34(%rbp), %edi	 RIP: 46f429	 Bytes: 3
  %loadMem_46f429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f429 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f429)
  store %struct.Memory* %call_46f429, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 46f42c	 Bytes: 3
  %loadMem_46f42c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f42c = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f42c)
  store %struct.Memory* %call_46f42c, %struct.Memory** %MEMORY

  ; Code: callq .is_same_dragon	 RIP: 46f42f	 Bytes: 5
  %loadMem1_46f42f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46f42f = call %struct.Memory* @routine_callq_.is_same_dragon(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46f42f, i64 -325631, i64 5, i64 5)
  store %struct.Memory* %call1_46f42f, %struct.Memory** %MEMORY

  %loadMem2_46f42f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46f42f = load i64, i64* %3
  %call2_46f42f = call %struct.Memory* @sub_41fc30.is_same_dragon(%struct.State* %0, i64  %loadPC_46f42f, %struct.Memory* %loadMem2_46f42f)
  store %struct.Memory* %call2_46f42f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46f434	 Bytes: 3
  %loadMem_46f434 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f434 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f434)
  store %struct.Memory* %call_46f434, %struct.Memory** %MEMORY

  ; Code: jne .L_46f451	 RIP: 46f437	 Bytes: 6
  %loadMem_46f437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f437 = call %struct.Memory* @routine_jne_.L_46f451(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f437, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_46f437, %struct.Memory** %MEMORY

  %loadBr_46f437 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f437 = icmp eq i8 %loadBr_46f437, 1
  br i1 %cmpBr_46f437, label %block_.L_46f451, label %block_46f43d

block_46f43d:
  ; Code: movl -0x34(%rbp), %edi	 RIP: 46f43d	 Bytes: 3
  %loadMem_46f43d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f43d = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f43d)
  store %struct.Memory* %call_46f43d, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 46f440	 Bytes: 3
  %loadMem_46f440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f440 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f440)
  store %struct.Memory* %call_46f440, %struct.Memory** %MEMORY

  ; Code: callq .is_same_dragon	 RIP: 46f443	 Bytes: 5
  %loadMem1_46f443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46f443 = call %struct.Memory* @routine_callq_.is_same_dragon(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46f443, i64 -325651, i64 5, i64 5)
  store %struct.Memory* %call1_46f443, %struct.Memory** %MEMORY

  %loadMem2_46f443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46f443 = load i64, i64* %3
  %call2_46f443 = call %struct.Memory* @sub_41fc30.is_same_dragon(%struct.State* %0, i64  %loadPC_46f443, %struct.Memory* %loadMem2_46f443)
  store %struct.Memory* %call2_46f443, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46f448	 Bytes: 3
  %loadMem_46f448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f448 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f448)
  store %struct.Memory* %call_46f448, %struct.Memory** %MEMORY

  ; Code: je .L_46f480	 RIP: 46f44b	 Bytes: 6
  %loadMem_46f44b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f44b = call %struct.Memory* @routine_je_.L_46f480(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f44b, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_46f44b, %struct.Memory** %MEMORY

  %loadBr_46f44b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f44b = icmp eq i8 %loadBr_46f44b, 1
  br i1 %cmpBr_46f44b, label %block_.L_46f480, label %block_.L_46f451

  ; Code: .L_46f451:	 RIP: 46f451	 Bytes: 0
block_.L_46f451:

  ; Code: movq $0xb4bd20, %rax	 RIP: 46f451	 Bytes: 10
  %loadMem_46f451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f451 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f451)
  store %struct.Memory* %call_46f451, %struct.Memory** %MEMORY

  ; Code: movq 0xab0fe0, %rcx	 RIP: 46f45b	 Bytes: 8
  %loadMem_46f45b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f45b = call %struct.Memory* @routine_movq_0xab0fe0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f45b)
  store %struct.Memory* %call_46f45b, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rdx	 RIP: 46f463	 Bytes: 4
  %loadMem_46f463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f463 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f463)
  store %struct.Memory* %call_46f463, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rdx, %rdx	 RIP: 46f467	 Bytes: 4
  %loadMem_46f467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f467 = call %struct.Memory* @routine_imulq__0x4c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f467)
  store %struct.Memory* %call_46f467, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 46f46b	 Bytes: 3
  %loadMem_46f46b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f46b = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f46b)
  store %struct.Memory* %call_46f46b, %struct.Memory** %MEMORY

  ; Code: movslq 0x4(%rax), %rax	 RIP: 46f46e	 Bytes: 4
  %loadMem_46f46e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f46e = call %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f46e)
  store %struct.Memory* %call_46f46e, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, %rax, %rax	 RIP: 46f472	 Bytes: 4
  %loadMem_46f472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f472 = call %struct.Memory* @routine_imulq__0x68___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f472)
  store %struct.Memory* %call_46f472, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rcx	 RIP: 46f476	 Bytes: 3
  %loadMem_46f476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f476 = call %struct.Memory* @routine_addq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f476)
  store %struct.Memory* %call_46f476, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x58(%rcx)	 RIP: 46f479	 Bytes: 7
  %loadMem_46f479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f479 = call %struct.Memory* @routine_movl__0x1__0x58__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f479)
  store %struct.Memory* %call_46f479, %struct.Memory** %MEMORY

  ; Code: .L_46f480:	 RIP: 46f480	 Bytes: 0
  br label %block_.L_46f480
block_.L_46f480:

  ; Code: jmpq .L_46f485	 RIP: 46f480	 Bytes: 5
  %loadMem_46f480 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f480 = call %struct.Memory* @routine_jmpq_.L_46f485(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f480, i64 5, i64 5)
  store %struct.Memory* %call_46f480, %struct.Memory** %MEMORY

  br label %block_.L_46f485

  ; Code: .L_46f485:	 RIP: 46f485	 Bytes: 0
block_.L_46f485:

  ; Code: movl -0x34(%rbp), %eax	 RIP: 46f485	 Bytes: 3
  %loadMem_46f485 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f485 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f485)
  store %struct.Memory* %call_46f485, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46f488	 Bytes: 3
  %loadMem_46f488 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f488 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f488)
  store %struct.Memory* %call_46f488, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 46f48b	 Bytes: 3
  %loadMem_46f48b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f48b = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f48b)
  store %struct.Memory* %call_46f48b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46f407	 RIP: 46f48e	 Bytes: 5
  %loadMem_46f48e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f48e = call %struct.Memory* @routine_jmpq_.L_46f407(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f48e, i64 -135, i64 5)
  store %struct.Memory* %call_46f48e, %struct.Memory** %MEMORY

  br label %block_.L_46f407

  ; Code: .L_46f493:	 RIP: 46f493	 Bytes: 0
block_.L_46f493:

  ; Code: movl $0x15, -0x34(%rbp)	 RIP: 46f493	 Bytes: 7
  %loadMem_46f493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f493 = call %struct.Memory* @routine_movl__0x15__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f493)
  store %struct.Memory* %call_46f493, %struct.Memory** %MEMORY

  ; Code: .L_46f49a:	 RIP: 46f49a	 Bytes: 0
  br label %block_.L_46f49a
block_.L_46f49a:

  ; Code: cmpl $0x190, -0x34(%rbp)	 RIP: 46f49a	 Bytes: 7
  %loadMem_46f49a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f49a = call %struct.Memory* @routine_cmpl__0x190__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f49a)
  store %struct.Memory* %call_46f49a, %struct.Memory** %MEMORY

  ; Code: jge .L_46f5fb	 RIP: 46f4a1	 Bytes: 6
  %loadMem_46f4a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f4a1 = call %struct.Memory* @routine_jge_.L_46f5fb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f4a1, i8* %BRANCH_TAKEN, i64 346, i64 6, i64 6)
  store %struct.Memory* %call_46f4a1, %struct.Memory** %MEMORY

  %loadBr_46f4a1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f4a1 = icmp eq i8 %loadBr_46f4a1, 1
  br i1 %cmpBr_46f4a1, label %block_.L_46f5fb, label %block_46f4a7

block_46f4a7:
  ; Code: movslq -0x34(%rbp), %rax	 RIP: 46f4a7	 Bytes: 4
  %loadMem_46f4a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f4a7 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f4a7)
  store %struct.Memory* %call_46f4a7, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 46f4ab	 Bytes: 8
  %loadMem_46f4ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f4ab = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f4ab)
  store %struct.Memory* %call_46f4ab, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 46f4b3	 Bytes: 3
  %loadMem_46f4b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f4b3 = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f4b3)
  store %struct.Memory* %call_46f4b3, %struct.Memory** %MEMORY

  ; Code: jne .L_46f4c1	 RIP: 46f4b6	 Bytes: 6
  %loadMem_46f4b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f4b6 = call %struct.Memory* @routine_jne_.L_46f4c1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f4b6, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_46f4b6, %struct.Memory** %MEMORY

  %loadBr_46f4b6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f4b6 = icmp eq i8 %loadBr_46f4b6, 1
  br i1 %cmpBr_46f4b6, label %block_.L_46f4c1, label %block_46f4bc

block_46f4bc:
  ; Code: jmpq .L_46f5ed	 RIP: 46f4bc	 Bytes: 5
  %loadMem_46f4bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f4bc = call %struct.Memory* @routine_jmpq_.L_46f5ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f4bc, i64 305, i64 5)
  store %struct.Memory* %call_46f4bc, %struct.Memory** %MEMORY

  br label %block_.L_46f5ed

  ; Code: .L_46f4c1:	 RIP: 46f4c1	 Bytes: 0
block_.L_46f4c1:

  ; Code: movslq -0x34(%rbp), %rax	 RIP: 46f4c1	 Bytes: 4
  %loadMem_46f4c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f4c1 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f4c1)
  store %struct.Memory* %call_46f4c1, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 46f4c5	 Bytes: 8
  %loadMem_46f4c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f4c5 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f4c5)
  store %struct.Memory* %call_46f4c5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %ecx	 RIP: 46f4cd	 Bytes: 3
  %loadMem_46f4cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f4cd = call %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f4cd)
  store %struct.Memory* %call_46f4cd, %struct.Memory** %MEMORY

  ; Code: je .L_46f4eb	 RIP: 46f4d0	 Bytes: 6
  %loadMem_46f4d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f4d0 = call %struct.Memory* @routine_je_.L_46f4eb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f4d0, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_46f4d0, %struct.Memory** %MEMORY

  %loadBr_46f4d0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f4d0 = icmp eq i8 %loadBr_46f4d0, 1
  br i1 %cmpBr_46f4d0, label %block_.L_46f4eb, label %block_46f4d6

block_46f4d6:
  ; Code: movslq -0x34(%rbp), %rax	 RIP: 46f4d6	 Bytes: 4
  %loadMem_46f4d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f4d6 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f4d6)
  store %struct.Memory* %call_46f4d6, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 46f4da	 Bytes: 8
  %loadMem_46f4da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f4da = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f4da)
  store %struct.Memory* %call_46f4da, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %ecx	 RIP: 46f4e2	 Bytes: 3
  %loadMem_46f4e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f4e2 = call %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f4e2)
  store %struct.Memory* %call_46f4e2, %struct.Memory** %MEMORY

  ; Code: jne .L_46f54e	 RIP: 46f4e5	 Bytes: 6
  %loadMem_46f4e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f4e5 = call %struct.Memory* @routine_jne_.L_46f54e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f4e5, i8* %BRANCH_TAKEN, i64 105, i64 6, i64 6)
  store %struct.Memory* %call_46f4e5, %struct.Memory** %MEMORY

  %loadBr_46f4e5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f4e5 = icmp eq i8 %loadBr_46f4e5, 1
  br i1 %cmpBr_46f4e5, label %block_.L_46f54e, label %block_.L_46f4eb

  ; Code: .L_46f4eb:	 RIP: 46f4eb	 Bytes: 0
block_.L_46f4eb:

  ; Code: movq $0xb0eff0, %rax	 RIP: 46f4eb	 Bytes: 10
  %loadMem_46f4eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f4eb = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f4eb)
  store %struct.Memory* %call_46f4eb, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 46f4f5	 Bytes: 4
  %loadMem_46f4f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f4f5 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f4f5)
  store %struct.Memory* %call_46f4f5, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 46f4f9	 Bytes: 7
  %loadMem_46f4f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f4f9 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f4f9)
  store %struct.Memory* %call_46f4f9, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46f500	 Bytes: 3
  %loadMem_46f500 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f500 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f500)
  store %struct.Memory* %call_46f500, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 46f503	 Bytes: 3
  %loadMem_46f503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f503 = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f503)
  store %struct.Memory* %call_46f503, %struct.Memory** %MEMORY

  ; Code: cmpl -0x34(%rbp), %edx	 RIP: 46f506	 Bytes: 3
  %loadMem_46f506 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f506 = call %struct.Memory* @routine_cmpl_MINUS0x34__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f506)
  store %struct.Memory* %call_46f506, %struct.Memory** %MEMORY

  ; Code: jne .L_46f54e	 RIP: 46f509	 Bytes: 6
  %loadMem_46f509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f509 = call %struct.Memory* @routine_jne_.L_46f54e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f509, i8* %BRANCH_TAKEN, i64 69, i64 6, i64 6)
  store %struct.Memory* %call_46f509, %struct.Memory** %MEMORY

  %loadBr_46f509 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f509 = icmp eq i8 %loadBr_46f509, 1
  br i1 %cmpBr_46f509, label %block_.L_46f54e, label %block_46f50f

block_46f50f:
  ; Code: movl -0x34(%rbp), %edi	 RIP: 46f50f	 Bytes: 3
  %loadMem_46f50f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f50f = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f50f)
  store %struct.Memory* %call_46f50f, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 46f512	 Bytes: 3
  %loadMem_46f512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f512 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f512)
  store %struct.Memory* %call_46f512, %struct.Memory** %MEMORY

  ; Code: callq .is_same_dragon	 RIP: 46f515	 Bytes: 5
  %loadMem1_46f515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46f515 = call %struct.Memory* @routine_callq_.is_same_dragon(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46f515, i64 -325861, i64 5, i64 5)
  store %struct.Memory* %call1_46f515, %struct.Memory** %MEMORY

  %loadMem2_46f515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46f515 = load i64, i64* %3
  %call2_46f515 = call %struct.Memory* @sub_41fc30.is_same_dragon(%struct.State* %0, i64  %loadPC_46f515, %struct.Memory* %loadMem2_46f515)
  store %struct.Memory* %call2_46f515, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46f51a	 Bytes: 3
  %loadMem_46f51a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f51a = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f51a)
  store %struct.Memory* %call_46f51a, %struct.Memory** %MEMORY

  ; Code: je .L_46f52c	 RIP: 46f51d	 Bytes: 6
  %loadMem_46f51d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f51d = call %struct.Memory* @routine_je_.L_46f52c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f51d, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_46f51d, %struct.Memory** %MEMORY

  %loadBr_46f51d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f51d = icmp eq i8 %loadBr_46f51d, 1
  br i1 %cmpBr_46f51d, label %block_.L_46f52c, label %block_46f523

block_46f523:
  ; Code: movl -0xc(%rbp), %eax	 RIP: 46f523	 Bytes: 3
  %loadMem_46f523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f523 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f523)
  store %struct.Memory* %call_46f523, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 46f526	 Bytes: 3
  %loadMem_46f526 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f526 = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f526)
  store %struct.Memory* %call_46f526, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 46f529	 Bytes: 3
  %loadMem_46f529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f529 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f529)
  store %struct.Memory* %call_46f529, %struct.Memory** %MEMORY

  ; Code: .L_46f52c:	 RIP: 46f52c	 Bytes: 0
  br label %block_.L_46f52c
block_.L_46f52c:

  ; Code: movl -0x34(%rbp), %edi	 RIP: 46f52c	 Bytes: 3
  %loadMem_46f52c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f52c = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f52c)
  store %struct.Memory* %call_46f52c, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 46f52f	 Bytes: 3
  %loadMem_46f52f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f52f = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f52f)
  store %struct.Memory* %call_46f52f, %struct.Memory** %MEMORY

  ; Code: callq .is_same_dragon	 RIP: 46f532	 Bytes: 5
  %loadMem1_46f532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46f532 = call %struct.Memory* @routine_callq_.is_same_dragon(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46f532, i64 -325890, i64 5, i64 5)
  store %struct.Memory* %call1_46f532, %struct.Memory** %MEMORY

  %loadMem2_46f532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46f532 = load i64, i64* %3
  %call2_46f532 = call %struct.Memory* @sub_41fc30.is_same_dragon(%struct.State* %0, i64  %loadPC_46f532, %struct.Memory* %loadMem2_46f532)
  store %struct.Memory* %call2_46f532, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46f537	 Bytes: 3
  %loadMem_46f537 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f537 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f537)
  store %struct.Memory* %call_46f537, %struct.Memory** %MEMORY

  ; Code: je .L_46f549	 RIP: 46f53a	 Bytes: 6
  %loadMem_46f53a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f53a = call %struct.Memory* @routine_je_.L_46f549(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f53a, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_46f53a, %struct.Memory** %MEMORY

  %loadBr_46f53a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f53a = icmp eq i8 %loadBr_46f53a, 1
  br i1 %cmpBr_46f53a, label %block_.L_46f549, label %block_46f540

block_46f540:
  ; Code: movl -0x10(%rbp), %eax	 RIP: 46f540	 Bytes: 3
  %loadMem_46f540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f540 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f540)
  store %struct.Memory* %call_46f540, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 46f543	 Bytes: 3
  %loadMem_46f543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f543 = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f543)
  store %struct.Memory* %call_46f543, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 46f546	 Bytes: 3
  %loadMem_46f546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f546 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f546)
  store %struct.Memory* %call_46f546, %struct.Memory** %MEMORY

  ; Code: .L_46f549:	 RIP: 46f549	 Bytes: 0
  br label %block_.L_46f549
block_.L_46f549:

  ; Code: jmpq .L_46f5e8	 RIP: 46f549	 Bytes: 5
  %loadMem_46f549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f549 = call %struct.Memory* @routine_jmpq_.L_46f5e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f549, i64 159, i64 5)
  store %struct.Memory* %call_46f549, %struct.Memory** %MEMORY

  br label %block_.L_46f5e8

  ; Code: .L_46f54e:	 RIP: 46f54e	 Bytes: 0
block_.L_46f54e:

  ; Code: movslq -0x34(%rbp), %rax	 RIP: 46f54e	 Bytes: 4
  %loadMem_46f54e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f54e = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f54e)
  store %struct.Memory* %call_46f54e, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 46f552	 Bytes: 8
  %loadMem_46f552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f552 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f552)
  store %struct.Memory* %call_46f552, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 46f55a	 Bytes: 3
  %loadMem_46f55a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f55a = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f55a)
  store %struct.Memory* %call_46f55a, %struct.Memory** %MEMORY

  ; Code: jne .L_46f5e3	 RIP: 46f55d	 Bytes: 6
  %loadMem_46f55d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f55d = call %struct.Memory* @routine_jne_.L_46f5e3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f55d, i8* %BRANCH_TAKEN, i64 134, i64 6, i64 6)
  store %struct.Memory* %call_46f55d, %struct.Memory** %MEMORY

  %loadBr_46f55d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f55d = icmp eq i8 %loadBr_46f55d, 1
  br i1 %cmpBr_46f55d, label %block_.L_46f5e3, label %block_46f563

block_46f563:
  ; Code: movl -0x34(%rbp), %edi	 RIP: 46f563	 Bytes: 3
  %loadMem_46f563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f563 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f563)
  store %struct.Memory* %call_46f563, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 46f566	 Bytes: 3
  %loadMem_46f566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f566 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f566)
  store %struct.Memory* %call_46f566, %struct.Memory** %MEMORY

  ; Code: callq .liberty_of_dragon	 RIP: 46f569	 Bytes: 5
  %loadMem1_46f569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46f569 = call %struct.Memory* @routine_callq_.liberty_of_dragon(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46f569, i64 3015, i64 5, i64 5)
  store %struct.Memory* %call1_46f569, %struct.Memory** %MEMORY

  %loadMem2_46f569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46f569 = load i64, i64* %3
  %call2_46f569 = call %struct.Memory* @sub_470130.liberty_of_dragon(%struct.State* %0, i64  %loadPC_46f569, %struct.Memory* %loadMem2_46f569)
  store %struct.Memory* %call2_46f569, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46f56e	 Bytes: 3
  %loadMem_46f56e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f56e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f56e)
  store %struct.Memory* %call_46f56e, %struct.Memory** %MEMORY

  ; Code: je .L_46f5bc	 RIP: 46f571	 Bytes: 6
  %loadMem_46f571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f571 = call %struct.Memory* @routine_je_.L_46f5bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f571, i8* %BRANCH_TAKEN, i64 75, i64 6, i64 6)
  store %struct.Memory* %call_46f571, %struct.Memory** %MEMORY

  %loadBr_46f571 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f571 = icmp eq i8 %loadBr_46f571, 1
  br i1 %cmpBr_46f571, label %block_.L_46f5bc, label %block_46f577

block_46f577:
  ; Code: movl -0x10(%rbp), %eax	 RIP: 46f577	 Bytes: 3
  %loadMem_46f577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f577 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f577)
  store %struct.Memory* %call_46f577, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46f57a	 Bytes: 3
  %loadMem_46f57a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f57a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f57a)
  store %struct.Memory* %call_46f57a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 46f57d	 Bytes: 3
  %loadMem_46f57d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f57d = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f57d)
  store %struct.Memory* %call_46f57d, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edi	 RIP: 46f580	 Bytes: 3
  %loadMem_46f580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f580 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f580)
  store %struct.Memory* %call_46f580, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 46f583	 Bytes: 3
  %loadMem_46f583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f583 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f583)
  store %struct.Memory* %call_46f583, %struct.Memory** %MEMORY

  ; Code: callq .liberty_of_dragon	 RIP: 46f586	 Bytes: 5
  %loadMem1_46f586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46f586 = call %struct.Memory* @routine_callq_.liberty_of_dragon(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46f586, i64 2986, i64 5, i64 5)
  store %struct.Memory* %call1_46f586, %struct.Memory** %MEMORY

  %loadMem2_46f586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46f586 = load i64, i64* %3
  %call2_46f586 = call %struct.Memory* @sub_470130.liberty_of_dragon(%struct.State* %0, i64  %loadPC_46f586, %struct.Memory* %loadMem2_46f586)
  store %struct.Memory* %call2_46f586, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46f58b	 Bytes: 3
  %loadMem_46f58b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f58b = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f58b)
  store %struct.Memory* %call_46f58b, %struct.Memory** %MEMORY

  ; Code: je .L_46f5b1	 RIP: 46f58e	 Bytes: 6
  %loadMem_46f58e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f58e = call %struct.Memory* @routine_je_.L_46f5b1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f58e, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_46f58e, %struct.Memory** %MEMORY

  %loadBr_46f58e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f58e = icmp eq i8 %loadBr_46f58e, 1
  br i1 %cmpBr_46f58e, label %block_.L_46f5b1, label %block_46f594

block_46f594:
  ; Code: movl -0x14(%rbp), %eax	 RIP: 46f594	 Bytes: 3
  %loadMem_46f594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f594 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f594)
  store %struct.Memory* %call_46f594, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46f597	 Bytes: 3
  %loadMem_46f597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f597 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f597)
  store %struct.Memory* %call_46f597, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 46f59a	 Bytes: 3
  %loadMem_46f59a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f59a = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f59a)
  store %struct.Memory* %call_46f59a, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 46f59d	 Bytes: 3
  %loadMem_46f59d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f59d = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f59d)
  store %struct.Memory* %call_46f59d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46f5a0	 Bytes: 3
  %loadMem_46f5a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f5a0 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f5a0)
  store %struct.Memory* %call_46f5a0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 46f5a3	 Bytes: 3
  %loadMem_46f5a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f5a3 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f5a3)
  store %struct.Memory* %call_46f5a3, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 46f5a6	 Bytes: 3
  %loadMem_46f5a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f5a6 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f5a6)
  store %struct.Memory* %call_46f5a6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 46f5a9	 Bytes: 3
  %loadMem_46f5a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f5a9 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f5a9)
  store %struct.Memory* %call_46f5a9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46f5b7	 RIP: 46f5ac	 Bytes: 5
  %loadMem_46f5ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f5ac = call %struct.Memory* @routine_jmpq_.L_46f5b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f5ac, i64 11, i64 5)
  store %struct.Memory* %call_46f5ac, %struct.Memory** %MEMORY

  br label %block_.L_46f5b7

  ; Code: .L_46f5b1:	 RIP: 46f5b1	 Bytes: 0
block_.L_46f5b1:

  ; Code: movl -0x34(%rbp), %eax	 RIP: 46f5b1	 Bytes: 3
  %loadMem_46f5b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f5b1 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f5b1)
  store %struct.Memory* %call_46f5b1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 46f5b4	 Bytes: 3
  %loadMem_46f5b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f5b4 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f5b4)
  store %struct.Memory* %call_46f5b4, %struct.Memory** %MEMORY

  ; Code: .L_46f5b7:	 RIP: 46f5b7	 Bytes: 0
  br label %block_.L_46f5b7
block_.L_46f5b7:

  ; Code: jmpq .L_46f5de	 RIP: 46f5b7	 Bytes: 5
  %loadMem_46f5b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f5b7 = call %struct.Memory* @routine_jmpq_.L_46f5de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f5b7, i64 39, i64 5)
  store %struct.Memory* %call_46f5b7, %struct.Memory** %MEMORY

  br label %block_.L_46f5de

  ; Code: .L_46f5bc:	 RIP: 46f5bc	 Bytes: 0
block_.L_46f5bc:

  ; Code: movl -0x34(%rbp), %edi	 RIP: 46f5bc	 Bytes: 3
  %loadMem_46f5bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f5bc = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f5bc)
  store %struct.Memory* %call_46f5bc, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 46f5bf	 Bytes: 3
  %loadMem_46f5bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f5bf = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f5bf)
  store %struct.Memory* %call_46f5bf, %struct.Memory** %MEMORY

  ; Code: callq .liberty_of_dragon	 RIP: 46f5c2	 Bytes: 5
  %loadMem1_46f5c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46f5c2 = call %struct.Memory* @routine_callq_.liberty_of_dragon(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46f5c2, i64 2926, i64 5, i64 5)
  store %struct.Memory* %call1_46f5c2, %struct.Memory** %MEMORY

  %loadMem2_46f5c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46f5c2 = load i64, i64* %3
  %call2_46f5c2 = call %struct.Memory* @sub_470130.liberty_of_dragon(%struct.State* %0, i64  %loadPC_46f5c2, %struct.Memory* %loadMem2_46f5c2)
  store %struct.Memory* %call2_46f5c2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46f5c7	 Bytes: 3
  %loadMem_46f5c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f5c7 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f5c7)
  store %struct.Memory* %call_46f5c7, %struct.Memory** %MEMORY

  ; Code: je .L_46f5d9	 RIP: 46f5ca	 Bytes: 6
  %loadMem_46f5ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f5ca = call %struct.Memory* @routine_je_.L_46f5d9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f5ca, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_46f5ca, %struct.Memory** %MEMORY

  %loadBr_46f5ca = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f5ca = icmp eq i8 %loadBr_46f5ca, 1
  br i1 %cmpBr_46f5ca, label %block_.L_46f5d9, label %block_46f5d0

block_46f5d0:
  ; Code: movl -0xc(%rbp), %eax	 RIP: 46f5d0	 Bytes: 3
  %loadMem_46f5d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f5d0 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f5d0)
  store %struct.Memory* %call_46f5d0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46f5d3	 Bytes: 3
  %loadMem_46f5d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f5d3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f5d3)
  store %struct.Memory* %call_46f5d3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 46f5d6	 Bytes: 3
  %loadMem_46f5d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f5d6 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f5d6)
  store %struct.Memory* %call_46f5d6, %struct.Memory** %MEMORY

  ; Code: .L_46f5d9:	 RIP: 46f5d9	 Bytes: 0
  br label %block_.L_46f5d9
block_.L_46f5d9:

  ; Code: jmpq .L_46f5de	 RIP: 46f5d9	 Bytes: 5
  %loadMem_46f5d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f5d9 = call %struct.Memory* @routine_jmpq_.L_46f5de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f5d9, i64 5, i64 5)
  store %struct.Memory* %call_46f5d9, %struct.Memory** %MEMORY

  br label %block_.L_46f5de

  ; Code: .L_46f5de:	 RIP: 46f5de	 Bytes: 0
block_.L_46f5de:

  ; Code: jmpq .L_46f5e3	 RIP: 46f5de	 Bytes: 5
  %loadMem_46f5de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f5de = call %struct.Memory* @routine_jmpq_.L_46f5e3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f5de, i64 5, i64 5)
  store %struct.Memory* %call_46f5de, %struct.Memory** %MEMORY

  br label %block_.L_46f5e3

  ; Code: .L_46f5e3:	 RIP: 46f5e3	 Bytes: 0
block_.L_46f5e3:

  ; Code: jmpq .L_46f5e8	 RIP: 46f5e3	 Bytes: 5
  %loadMem_46f5e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f5e3 = call %struct.Memory* @routine_jmpq_.L_46f5e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f5e3, i64 5, i64 5)
  store %struct.Memory* %call_46f5e3, %struct.Memory** %MEMORY

  br label %block_.L_46f5e8

  ; Code: .L_46f5e8:	 RIP: 46f5e8	 Bytes: 0
block_.L_46f5e8:

  ; Code: jmpq .L_46f5ed	 RIP: 46f5e8	 Bytes: 5
  %loadMem_46f5e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f5e8 = call %struct.Memory* @routine_jmpq_.L_46f5ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f5e8, i64 5, i64 5)
  store %struct.Memory* %call_46f5e8, %struct.Memory** %MEMORY

  br label %block_.L_46f5ed

  ; Code: .L_46f5ed:	 RIP: 46f5ed	 Bytes: 0
block_.L_46f5ed:

  ; Code: movl -0x34(%rbp), %eax	 RIP: 46f5ed	 Bytes: 3
  %loadMem_46f5ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f5ed = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f5ed)
  store %struct.Memory* %call_46f5ed, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46f5f0	 Bytes: 3
  %loadMem_46f5f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f5f0 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f5f0)
  store %struct.Memory* %call_46f5f0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 46f5f3	 Bytes: 3
  %loadMem_46f5f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f5f3 = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f5f3)
  store %struct.Memory* %call_46f5f3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46f49a	 RIP: 46f5f6	 Bytes: 5
  %loadMem_46f5f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f5f6 = call %struct.Memory* @routine_jmpq_.L_46f49a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f5f6, i64 -348, i64 5)
  store %struct.Memory* %call_46f5f6, %struct.Memory** %MEMORY

  br label %block_.L_46f49a

  ; Code: .L_46f5fb:	 RIP: 46f5fb	 Bytes: 0
block_.L_46f5fb:

  ; Code: movq $0xb4bd20, %rax	 RIP: 46f5fb	 Bytes: 10
  %loadMem_46f5fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f5fb = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f5fb)
  store %struct.Memory* %call_46f5fb, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 46f605	 Bytes: 4
  %loadMem_46f605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f605 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f605)
  store %struct.Memory* %call_46f605, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46f609	 Bytes: 4
  %loadMem_46f609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f609 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f609)
  store %struct.Memory* %call_46f609, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46f60d	 Bytes: 3
  %loadMem_46f60d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f60d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f60d)
  store %struct.Memory* %call_46f60d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x1c(%rax)	 RIP: 46f610	 Bytes: 4
  %loadMem_46f610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f610 = call %struct.Memory* @routine_cmpl__0x2__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f610)
  store %struct.Memory* %call_46f610, %struct.Memory** %MEMORY

  ; Code: jne .L_46f66b	 RIP: 46f614	 Bytes: 6
  %loadMem_46f614 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f614 = call %struct.Memory* @routine_jne_.L_46f66b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f614, i8* %BRANCH_TAKEN, i64 87, i64 6, i64 6)
  store %struct.Memory* %call_46f614, %struct.Memory** %MEMORY

  %loadBr_46f614 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f614 = icmp eq i8 %loadBr_46f614, 1
  br i1 %cmpBr_46f614, label %block_.L_46f66b, label %block_46f61a

block_46f61a:
  ; Code: movq $0xb4bd20, %rax	 RIP: 46f61a	 Bytes: 10
  %loadMem_46f61a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f61a = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f61a)
  store %struct.Memory* %call_46f61a, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 46f624	 Bytes: 4
  %loadMem_46f624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f624 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f624)
  store %struct.Memory* %call_46f624, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46f628	 Bytes: 4
  %loadMem_46f628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f628 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f628)
  store %struct.Memory* %call_46f628, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46f62c	 Bytes: 3
  %loadMem_46f62c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f62c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f62c)
  store %struct.Memory* %call_46f62c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x20(%rax)	 RIP: 46f62f	 Bytes: 4
  %loadMem_46f62f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f62f = call %struct.Memory* @routine_cmpl__0x0__0x20__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f62f)
  store %struct.Memory* %call_46f62f, %struct.Memory** %MEMORY

  ; Code: je .L_46f66b	 RIP: 46f633	 Bytes: 6
  %loadMem_46f633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f633 = call %struct.Memory* @routine_je_.L_46f66b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f633, i8* %BRANCH_TAKEN, i64 56, i64 6, i64 6)
  store %struct.Memory* %call_46f633, %struct.Memory** %MEMORY

  %loadBr_46f633 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f633 = icmp eq i8 %loadBr_46f633, 1
  br i1 %cmpBr_46f633, label %block_.L_46f66b, label %block_46f639

block_46f639:
  ; Code: movq $0xb4bd20, %rax	 RIP: 46f639	 Bytes: 10
  %loadMem_46f639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f639 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f639)
  store %struct.Memory* %call_46f639, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 46f643	 Bytes: 4
  %loadMem_46f643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f643 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f643)
  store %struct.Memory* %call_46f643, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46f647	 Bytes: 4
  %loadMem_46f647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f647 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f647)
  store %struct.Memory* %call_46f647, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46f64b	 Bytes: 3
  %loadMem_46f64b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f64b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f64b)
  store %struct.Memory* %call_46f64b, %struct.Memory** %MEMORY

  ; Code: movl 0x20(%rax), %edi	 RIP: 46f64e	 Bytes: 3
  %loadMem_46f64e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f64e = call %struct.Memory* @routine_movl_0x20__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f64e)
  store %struct.Memory* %call_46f64e, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 46f651	 Bytes: 3
  %loadMem_46f651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f651 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f651)
  store %struct.Memory* %call_46f651, %struct.Memory** %MEMORY

  ; Code: callq .liberty_of_string	 RIP: 46f654	 Bytes: 5
  %loadMem1_46f654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46f654 = call %struct.Memory* @routine_callq_.liberty_of_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46f654, i64 -371620, i64 5, i64 5)
  store %struct.Memory* %call1_46f654, %struct.Memory** %MEMORY

  %loadMem2_46f654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46f654 = load i64, i64* %3
  %call2_46f654 = call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* %0, i64  %loadPC_46f654, %struct.Memory* %loadMem2_46f654)
  store %struct.Memory* %call2_46f654, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46f659	 Bytes: 3
  %loadMem_46f659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f659 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f659)
  store %struct.Memory* %call_46f659, %struct.Memory** %MEMORY

  ; Code: jne .L_46f66b	 RIP: 46f65c	 Bytes: 6
  %loadMem_46f65c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f65c = call %struct.Memory* @routine_jne_.L_46f66b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f65c, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_46f65c, %struct.Memory** %MEMORY

  %loadBr_46f65c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f65c = icmp eq i8 %loadBr_46f65c, 1
  br i1 %cmpBr_46f65c, label %block_.L_46f66b, label %block_46f662

block_46f662:
  ; Code: movl -0xc(%rbp), %eax	 RIP: 46f662	 Bytes: 3
  %loadMem_46f662 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f662 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f662)
  store %struct.Memory* %call_46f662, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46f665	 Bytes: 3
  %loadMem_46f665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f665 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f665)
  store %struct.Memory* %call_46f665, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 46f668	 Bytes: 3
  %loadMem_46f668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f668 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f668)
  store %struct.Memory* %call_46f668, %struct.Memory** %MEMORY

  ; Code: .L_46f66b:	 RIP: 46f66b	 Bytes: 0
  br label %block_.L_46f66b
block_.L_46f66b:

  ; Code: movq $0xb4bd20, %rax	 RIP: 46f66b	 Bytes: 10
  %loadMem_46f66b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f66b = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f66b)
  store %struct.Memory* %call_46f66b, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 46f675	 Bytes: 4
  %loadMem_46f675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f675 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f675)
  store %struct.Memory* %call_46f675, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46f679	 Bytes: 4
  %loadMem_46f679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f679 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f679)
  store %struct.Memory* %call_46f679, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46f67d	 Bytes: 3
  %loadMem_46f67d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f67d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f67d)
  store %struct.Memory* %call_46f67d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x1c(%rax)	 RIP: 46f680	 Bytes: 4
  %loadMem_46f680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f680 = call %struct.Memory* @routine_cmpl__0x2__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f680)
  store %struct.Memory* %call_46f680, %struct.Memory** %MEMORY

  ; Code: jne .L_46f6db	 RIP: 46f684	 Bytes: 6
  %loadMem_46f684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f684 = call %struct.Memory* @routine_jne_.L_46f6db(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f684, i8* %BRANCH_TAKEN, i64 87, i64 6, i64 6)
  store %struct.Memory* %call_46f684, %struct.Memory** %MEMORY

  %loadBr_46f684 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f684 = icmp eq i8 %loadBr_46f684, 1
  br i1 %cmpBr_46f684, label %block_.L_46f6db, label %block_46f68a

block_46f68a:
  ; Code: movq $0xb4bd20, %rax	 RIP: 46f68a	 Bytes: 10
  %loadMem_46f68a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f68a = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f68a)
  store %struct.Memory* %call_46f68a, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 46f694	 Bytes: 4
  %loadMem_46f694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f694 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f694)
  store %struct.Memory* %call_46f694, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46f698	 Bytes: 4
  %loadMem_46f698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f698 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f698)
  store %struct.Memory* %call_46f698, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46f69c	 Bytes: 3
  %loadMem_46f69c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f69c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f69c)
  store %struct.Memory* %call_46f69c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x20(%rax)	 RIP: 46f69f	 Bytes: 4
  %loadMem_46f69f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f69f = call %struct.Memory* @routine_cmpl__0x0__0x20__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f69f)
  store %struct.Memory* %call_46f69f, %struct.Memory** %MEMORY

  ; Code: je .L_46f6db	 RIP: 46f6a3	 Bytes: 6
  %loadMem_46f6a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f6a3 = call %struct.Memory* @routine_je_.L_46f6db(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f6a3, i8* %BRANCH_TAKEN, i64 56, i64 6, i64 6)
  store %struct.Memory* %call_46f6a3, %struct.Memory** %MEMORY

  %loadBr_46f6a3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f6a3 = icmp eq i8 %loadBr_46f6a3, 1
  br i1 %cmpBr_46f6a3, label %block_.L_46f6db, label %block_46f6a9

block_46f6a9:
  ; Code: movq $0xb4bd20, %rax	 RIP: 46f6a9	 Bytes: 10
  %loadMem_46f6a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f6a9 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f6a9)
  store %struct.Memory* %call_46f6a9, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 46f6b3	 Bytes: 4
  %loadMem_46f6b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f6b3 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f6b3)
  store %struct.Memory* %call_46f6b3, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46f6b7	 Bytes: 4
  %loadMem_46f6b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f6b7 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f6b7)
  store %struct.Memory* %call_46f6b7, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46f6bb	 Bytes: 3
  %loadMem_46f6bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f6bb = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f6bb)
  store %struct.Memory* %call_46f6bb, %struct.Memory** %MEMORY

  ; Code: movl 0x20(%rax), %edi	 RIP: 46f6be	 Bytes: 3
  %loadMem_46f6be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f6be = call %struct.Memory* @routine_movl_0x20__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f6be)
  store %struct.Memory* %call_46f6be, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 46f6c1	 Bytes: 3
  %loadMem_46f6c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f6c1 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f6c1)
  store %struct.Memory* %call_46f6c1, %struct.Memory** %MEMORY

  ; Code: callq .liberty_of_string	 RIP: 46f6c4	 Bytes: 5
  %loadMem1_46f6c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46f6c4 = call %struct.Memory* @routine_callq_.liberty_of_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46f6c4, i64 -371732, i64 5, i64 5)
  store %struct.Memory* %call1_46f6c4, %struct.Memory** %MEMORY

  %loadMem2_46f6c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46f6c4 = load i64, i64* %3
  %call2_46f6c4 = call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* %0, i64  %loadPC_46f6c4, %struct.Memory* %loadMem2_46f6c4)
  store %struct.Memory* %call2_46f6c4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46f6c9	 Bytes: 3
  %loadMem_46f6c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f6c9 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f6c9)
  store %struct.Memory* %call_46f6c9, %struct.Memory** %MEMORY

  ; Code: jne .L_46f6db	 RIP: 46f6cc	 Bytes: 6
  %loadMem_46f6cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f6cc = call %struct.Memory* @routine_jne_.L_46f6db(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f6cc, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_46f6cc, %struct.Memory** %MEMORY

  %loadBr_46f6cc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f6cc = icmp eq i8 %loadBr_46f6cc, 1
  br i1 %cmpBr_46f6cc, label %block_.L_46f6db, label %block_46f6d2

block_46f6d2:
  ; Code: movl -0x10(%rbp), %eax	 RIP: 46f6d2	 Bytes: 3
  %loadMem_46f6d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f6d2 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f6d2)
  store %struct.Memory* %call_46f6d2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46f6d5	 Bytes: 3
  %loadMem_46f6d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f6d5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f6d5)
  store %struct.Memory* %call_46f6d5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 46f6d8	 Bytes: 3
  %loadMem_46f6d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f6d8 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f6d8)
  store %struct.Memory* %call_46f6d8, %struct.Memory** %MEMORY

  ; Code: .L_46f6db:	 RIP: 46f6db	 Bytes: 0
  br label %block_.L_46f6db
block_.L_46f6db:

  ; Code: movq $0xb4bd20, %rax	 RIP: 46f6db	 Bytes: 10
  %loadMem_46f6db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f6db = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f6db)
  store %struct.Memory* %call_46f6db, %struct.Memory** %MEMORY

  ; Code: movq 0xab0fe0, %rcx	 RIP: 46f6e5	 Bytes: 8
  %loadMem_46f6e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f6e5 = call %struct.Memory* @routine_movq_0xab0fe0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f6e5)
  store %struct.Memory* %call_46f6e5, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 46f6ed	 Bytes: 4
  %loadMem_46f6ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f6ed = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f6ed)
  store %struct.Memory* %call_46f6ed, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rdx, %rdx	 RIP: 46f6f1	 Bytes: 4
  %loadMem_46f6f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f6f1 = call %struct.Memory* @routine_imulq__0x4c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f6f1)
  store %struct.Memory* %call_46f6f1, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 46f6f5	 Bytes: 3
  %loadMem_46f6f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f6f5 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f6f5)
  store %struct.Memory* %call_46f6f5, %struct.Memory** %MEMORY

  ; Code: movslq 0x4(%rax), %rax	 RIP: 46f6f8	 Bytes: 4
  %loadMem_46f6f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f6f8 = call %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f6f8)
  store %struct.Memory* %call_46f6f8, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, %rax, %rax	 RIP: 46f6fc	 Bytes: 4
  %loadMem_46f6fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f6fc = call %struct.Memory* @routine_imulq__0x68___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f6fc)
  store %struct.Memory* %call_46f6fc, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rcx	 RIP: 46f700	 Bytes: 3
  %loadMem_46f700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f700 = call %struct.Memory* @routine_addq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f700)
  store %struct.Memory* %call_46f700, %struct.Memory** %MEMORY

  ; Code: addq $0x4c, %rcx	 RIP: 46f703	 Bytes: 4
  %loadMem_46f703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f703 = call %struct.Memory* @routine_addq__0x4c___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f703)
  store %struct.Memory* %call_46f703, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 46f707	 Bytes: 3
  %loadMem_46f707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f707 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f707)
  store %struct.Memory* %call_46f707, %struct.Memory** %MEMORY

  ; Code: callq .min_eyes	 RIP: 46f70a	 Bytes: 5
  %loadMem1_46f70a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46f70a = call %struct.Memory* @routine_callq_.min_eyes(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46f70a, i64 -211994, i64 5, i64 5)
  store %struct.Memory* %call1_46f70a, %struct.Memory** %MEMORY

  %loadMem2_46f70a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46f70a = load i64, i64* %3
  %call2_46f70a = call %struct.Memory* @sub_43baf0.min_eyes(%struct.State* %0, i64  %loadPC_46f70a, %struct.Memory* %loadMem2_46f70a)
  store %struct.Memory* %call2_46f70a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46f70f	 Bytes: 3
  %loadMem_46f70f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f70f = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f70f)
  store %struct.Memory* %call_46f70f, %struct.Memory** %MEMORY

  ; Code: jne .L_46f90c	 RIP: 46f712	 Bytes: 6
  %loadMem_46f712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f712 = call %struct.Memory* @routine_jne_.L_46f90c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f712, i8* %BRANCH_TAKEN, i64 506, i64 6, i64 6)
  store %struct.Memory* %call_46f712, %struct.Memory** %MEMORY

  %loadBr_46f712 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f712 = icmp eq i8 %loadBr_46f712, 1
  br i1 %cmpBr_46f712, label %block_.L_46f90c, label %block_46f718

block_46f718:
  ; Code: movq $0xb4bd20, %rax	 RIP: 46f718	 Bytes: 10
  %loadMem_46f718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f718 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f718)
  store %struct.Memory* %call_46f718, %struct.Memory** %MEMORY

  ; Code: movq 0xab0fe0, %rcx	 RIP: 46f722	 Bytes: 8
  %loadMem_46f722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f722 = call %struct.Memory* @routine_movq_0xab0fe0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f722)
  store %struct.Memory* %call_46f722, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 46f72a	 Bytes: 4
  %loadMem_46f72a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f72a = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f72a)
  store %struct.Memory* %call_46f72a, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rdx, %rdx	 RIP: 46f72e	 Bytes: 4
  %loadMem_46f72e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f72e = call %struct.Memory* @routine_imulq__0x4c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f72e)
  store %struct.Memory* %call_46f72e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 46f732	 Bytes: 3
  %loadMem_46f732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f732 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f732)
  store %struct.Memory* %call_46f732, %struct.Memory** %MEMORY

  ; Code: movslq 0x4(%rax), %rax	 RIP: 46f735	 Bytes: 4
  %loadMem_46f735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f735 = call %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f735)
  store %struct.Memory* %call_46f735, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, %rax, %rax	 RIP: 46f739	 Bytes: 4
  %loadMem_46f739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f739 = call %struct.Memory* @routine_imulq__0x68___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f739)
  store %struct.Memory* %call_46f739, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rcx	 RIP: 46f73d	 Bytes: 3
  %loadMem_46f73d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f73d = call %struct.Memory* @routine_addq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f73d)
  store %struct.Memory* %call_46f73d, %struct.Memory** %MEMORY

  ; Code: addq $0x4c, %rcx	 RIP: 46f740	 Bytes: 4
  %loadMem_46f740 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f740 = call %struct.Memory* @routine_addq__0x4c___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f740)
  store %struct.Memory* %call_46f740, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 46f744	 Bytes: 3
  %loadMem_46f744 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f744 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f744)
  store %struct.Memory* %call_46f744, %struct.Memory** %MEMORY

  ; Code: callq .min_eyes	 RIP: 46f747	 Bytes: 5
  %loadMem1_46f747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46f747 = call %struct.Memory* @routine_callq_.min_eyes(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46f747, i64 -212055, i64 5, i64 5)
  store %struct.Memory* %call1_46f747, %struct.Memory** %MEMORY

  %loadMem2_46f747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46f747 = load i64, i64* %3
  %call2_46f747 = call %struct.Memory* @sub_43baf0.min_eyes(%struct.State* %0, i64  %loadPC_46f747, %struct.Memory* %loadMem2_46f747)
  store %struct.Memory* %call2_46f747, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46f74c	 Bytes: 3
  %loadMem_46f74c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f74c = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f74c)
  store %struct.Memory* %call_46f74c, %struct.Memory** %MEMORY

  ; Code: jne .L_46f90c	 RIP: 46f74f	 Bytes: 6
  %loadMem_46f74f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f74f = call %struct.Memory* @routine_jne_.L_46f90c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f74f, i8* %BRANCH_TAKEN, i64 445, i64 6, i64 6)
  store %struct.Memory* %call_46f74f, %struct.Memory** %MEMORY

  %loadBr_46f74f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f74f = icmp eq i8 %loadBr_46f74f, 1
  br i1 %cmpBr_46f74f, label %block_.L_46f90c, label %block_46f755

block_46f755:
  ; Code: cmpl $0x0, -0x14(%rbp)	 RIP: 46f755	 Bytes: 4
  %loadMem_46f755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f755 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f755)
  store %struct.Memory* %call_46f755, %struct.Memory** %MEMORY

  ; Code: jne .L_46f7ce	 RIP: 46f759	 Bytes: 6
  %loadMem_46f759 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f759 = call %struct.Memory* @routine_jne_.L_46f7ce(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f759, i8* %BRANCH_TAKEN, i64 117, i64 6, i64 6)
  store %struct.Memory* %call_46f759, %struct.Memory** %MEMORY

  %loadBr_46f759 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f759 = icmp eq i8 %loadBr_46f759, 1
  br i1 %cmpBr_46f759, label %block_.L_46f7ce, label %block_46f75f

block_46f75f:
  ; Code: movl -0xc(%rbp), %eax	 RIP: 46f75f	 Bytes: 3
  %loadMem_46f75f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f75f = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f75f)
  store %struct.Memory* %call_46f75f, %struct.Memory** %MEMORY

  ; Code: cmpl -0x10(%rbp), %eax	 RIP: 46f762	 Bytes: 3
  %loadMem_46f762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f762 = call %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f762)
  store %struct.Memory* %call_46f762, %struct.Memory** %MEMORY

  ; Code: jle .L_46f787	 RIP: 46f765	 Bytes: 6
  %loadMem_46f765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f765 = call %struct.Memory* @routine_jle_.L_46f787(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f765, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_46f765, %struct.Memory** %MEMORY

  %loadBr_46f765 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f765 = icmp eq i8 %loadBr_46f765, 1
  br i1 %cmpBr_46f765, label %block_.L_46f787, label %block_46f76b

block_46f76b:
  ; Code: movl $0x1, -0x24(%rbp)	 RIP: 46f76b	 Bytes: 7
  %loadMem_46f76b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f76b = call %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f76b)
  store %struct.Memory* %call_46f76b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 46f772	 Bytes: 7
  %loadMem_46f772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f772 = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f772)
  store %struct.Memory* %call_46f772, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 46f779	 Bytes: 3
  %loadMem_46f779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f779 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f779)
  store %struct.Memory* %call_46f779, %struct.Memory** %MEMORY

  ; Code: subl -0x10(%rbp), %eax	 RIP: 46f77c	 Bytes: 3
  %loadMem_46f77c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f77c = call %struct.Memory* @routine_subl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f77c)
  store %struct.Memory* %call_46f77c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 46f77f	 Bytes: 3
  %loadMem_46f77f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f77f = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f77f)
  store %struct.Memory* %call_46f77f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46f7c9	 RIP: 46f782	 Bytes: 5
  %loadMem_46f782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f782 = call %struct.Memory* @routine_jmpq_.L_46f7c9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f782, i64 71, i64 5)
  store %struct.Memory* %call_46f782, %struct.Memory** %MEMORY

  br label %block_.L_46f7c9

  ; Code: .L_46f787:	 RIP: 46f787	 Bytes: 0
block_.L_46f787:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 46f787	 Bytes: 3
  %loadMem_46f787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f787 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f787)
  store %struct.Memory* %call_46f787, %struct.Memory** %MEMORY

  ; Code: cmpl -0x10(%rbp), %eax	 RIP: 46f78a	 Bytes: 3
  %loadMem_46f78a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f78a = call %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f78a)
  store %struct.Memory* %call_46f78a, %struct.Memory** %MEMORY

  ; Code: jge .L_46f7af	 RIP: 46f78d	 Bytes: 6
  %loadMem_46f78d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f78d = call %struct.Memory* @routine_jge_.L_46f7af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f78d, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_46f78d, %struct.Memory** %MEMORY

  %loadBr_46f78d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f78d = icmp eq i8 %loadBr_46f78d, 1
  br i1 %cmpBr_46f78d, label %block_.L_46f7af, label %block_46f793

block_46f793:
  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 46f793	 Bytes: 7
  %loadMem_46f793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f793 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f793)
  store %struct.Memory* %call_46f793, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x28(%rbp)	 RIP: 46f79a	 Bytes: 7
  %loadMem_46f79a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f79a = call %struct.Memory* @routine_movl__0x1__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f79a)
  store %struct.Memory* %call_46f79a, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %eax	 RIP: 46f7a1	 Bytes: 3
  %loadMem_46f7a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f7a1 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f7a1)
  store %struct.Memory* %call_46f7a1, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 46f7a4	 Bytes: 3
  %loadMem_46f7a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f7a4 = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f7a4)
  store %struct.Memory* %call_46f7a4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 46f7a7	 Bytes: 3
  %loadMem_46f7a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f7a7 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f7a7)
  store %struct.Memory* %call_46f7a7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46f7c4	 RIP: 46f7aa	 Bytes: 5
  %loadMem_46f7aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f7aa = call %struct.Memory* @routine_jmpq_.L_46f7c4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f7aa, i64 26, i64 5)
  store %struct.Memory* %call_46f7aa, %struct.Memory** %MEMORY

  br label %block_.L_46f7c4

  ; Code: .L_46f7af:	 RIP: 46f7af	 Bytes: 0
block_.L_46f7af:

  ; Code: movl $0x2, -0x24(%rbp)	 RIP: 46f7af	 Bytes: 7
  %loadMem_46f7af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f7af = call %struct.Memory* @routine_movl__0x2__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f7af)
  store %struct.Memory* %call_46f7af, %struct.Memory** %MEMORY

  ; Code: movl $0x2, -0x28(%rbp)	 RIP: 46f7b6	 Bytes: 7
  %loadMem_46f7b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f7b6 = call %struct.Memory* @routine_movl__0x2__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f7b6)
  store %struct.Memory* %call_46f7b6, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 46f7bd	 Bytes: 7
  %loadMem_46f7bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f7bd = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f7bd)
  store %struct.Memory* %call_46f7bd, %struct.Memory** %MEMORY

  ; Code: .L_46f7c4:	 RIP: 46f7c4	 Bytes: 0
  br label %block_.L_46f7c4
block_.L_46f7c4:

  ; Code: jmpq .L_46f7c9	 RIP: 46f7c4	 Bytes: 5
  %loadMem_46f7c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f7c4 = call %struct.Memory* @routine_jmpq_.L_46f7c9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f7c4, i64 5, i64 5)
  store %struct.Memory* %call_46f7c4, %struct.Memory** %MEMORY

  br label %block_.L_46f7c9

  ; Code: .L_46f7c9:	 RIP: 46f7c9	 Bytes: 0
block_.L_46f7c9:

  ; Code: jmpq .L_46f907	 RIP: 46f7c9	 Bytes: 5
  %loadMem_46f7c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f7c9 = call %struct.Memory* @routine_jmpq_.L_46f907(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f7c9, i64 318, i64 5)
  store %struct.Memory* %call_46f7c9, %struct.Memory** %MEMORY

  br label %block_.L_46f907

  ; Code: .L_46f7ce:	 RIP: 46f7ce	 Bytes: 0
block_.L_46f7ce:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 46f7ce	 Bytes: 3
  %loadMem_46f7ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f7ce = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f7ce)
  store %struct.Memory* %call_46f7ce, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %ecx	 RIP: 46f7d1	 Bytes: 3
  %loadMem_46f7d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f7d1 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f7d1)
  store %struct.Memory* %call_46f7d1, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %ecx	 RIP: 46f7d4	 Bytes: 3
  %loadMem_46f7d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f7d4 = call %struct.Memory* @routine_addl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f7d4)
  store %struct.Memory* %call_46f7d4, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 46f7d7	 Bytes: 3
  %loadMem_46f7d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f7d7 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f7d7)
  store %struct.Memory* %call_46f7d7, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 46f7da	 Bytes: 2
  %loadMem_46f7da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f7da = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f7da)
  store %struct.Memory* %call_46f7da, %struct.Memory** %MEMORY

  ; Code: jne .L_46f820	 RIP: 46f7dc	 Bytes: 6
  %loadMem_46f7dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f7dc = call %struct.Memory* @routine_jne_.L_46f820(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f7dc, i8* %BRANCH_TAKEN, i64 68, i64 6, i64 6)
  store %struct.Memory* %call_46f7dc, %struct.Memory** %MEMORY

  %loadBr_46f7dc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f7dc = icmp eq i8 %loadBr_46f7dc, 1
  br i1 %cmpBr_46f7dc, label %block_.L_46f820, label %block_46f7e2

block_46f7e2:
  ; Code: cmpl $0x0, -0xc(%rbp)	 RIP: 46f7e2	 Bytes: 4
  %loadMem_46f7e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f7e2 = call %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f7e2)
  store %struct.Memory* %call_46f7e2, %struct.Memory** %MEMORY

  ; Code: jne .L_46f806	 RIP: 46f7e6	 Bytes: 6
  %loadMem_46f7e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f7e6 = call %struct.Memory* @routine_jne_.L_46f806(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f7e6, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_46f7e6, %struct.Memory** %MEMORY

  %loadBr_46f7e6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f7e6 = icmp eq i8 %loadBr_46f7e6, 1
  br i1 %cmpBr_46f7e6, label %block_.L_46f806, label %block_46f7ec

block_46f7ec:
  ; Code: movl $0x2, -0x24(%rbp)	 RIP: 46f7ec	 Bytes: 7
  %loadMem_46f7ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f7ec = call %struct.Memory* @routine_movl__0x2__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f7ec)
  store %struct.Memory* %call_46f7ec, %struct.Memory** %MEMORY

  ; Code: movl $0x2, -0x28(%rbp)	 RIP: 46f7f3	 Bytes: 7
  %loadMem_46f7f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f7f3 = call %struct.Memory* @routine_movl__0x2__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f7f3)
  store %struct.Memory* %call_46f7f3, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 46f7fa	 Bytes: 7
  %loadMem_46f7fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f7fa = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f7fa)
  store %struct.Memory* %call_46f7fa, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46f81b	 RIP: 46f801	 Bytes: 5
  %loadMem_46f801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f801 = call %struct.Memory* @routine_jmpq_.L_46f81b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f801, i64 26, i64 5)
  store %struct.Memory* %call_46f801, %struct.Memory** %MEMORY

  br label %block_.L_46f81b

  ; Code: .L_46f806:	 RIP: 46f806	 Bytes: 0
block_.L_46f806:

  ; Code: movl $0x1, -0x24(%rbp)	 RIP: 46f806	 Bytes: 7
  %loadMem_46f806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f806 = call %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f806)
  store %struct.Memory* %call_46f806, %struct.Memory** %MEMORY

  ; Code: movl $0x2, -0x28(%rbp)	 RIP: 46f80d	 Bytes: 7
  %loadMem_46f80d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f80d = call %struct.Memory* @routine_movl__0x2__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f80d)
  store %struct.Memory* %call_46f80d, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 46f814	 Bytes: 7
  %loadMem_46f814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f814 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f814)
  store %struct.Memory* %call_46f814, %struct.Memory** %MEMORY

  ; Code: .L_46f81b:	 RIP: 46f81b	 Bytes: 0
  br label %block_.L_46f81b
block_.L_46f81b:

  ; Code: jmpq .L_46f902	 RIP: 46f81b	 Bytes: 5
  %loadMem_46f81b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f81b = call %struct.Memory* @routine_jmpq_.L_46f902(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f81b, i64 231, i64 5)
  store %struct.Memory* %call_46f81b, %struct.Memory** %MEMORY

  br label %block_.L_46f902

  ; Code: .L_46f820:	 RIP: 46f820	 Bytes: 0
block_.L_46f820:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 46f820	 Bytes: 3
  %loadMem_46f820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f820 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f820)
  store %struct.Memory* %call_46f820, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %ecx	 RIP: 46f823	 Bytes: 3
  %loadMem_46f823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f823 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f823)
  store %struct.Memory* %call_46f823, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %ecx	 RIP: 46f826	 Bytes: 3
  %loadMem_46f826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f826 = call %struct.Memory* @routine_addl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f826)
  store %struct.Memory* %call_46f826, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 46f829	 Bytes: 3
  %loadMem_46f829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f829 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f829)
  store %struct.Memory* %call_46f829, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 46f82c	 Bytes: 2
  %loadMem_46f82c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f82c = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f82c)
  store %struct.Memory* %call_46f82c, %struct.Memory** %MEMORY

  ; Code: jge .L_46f862	 RIP: 46f82e	 Bytes: 6
  %loadMem_46f82e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f82e = call %struct.Memory* @routine_jge_.L_46f862(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f82e, i8* %BRANCH_TAKEN, i64 52, i64 6, i64 6)
  store %struct.Memory* %call_46f82e, %struct.Memory** %MEMORY

  %loadBr_46f82e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f82e = icmp eq i8 %loadBr_46f82e, 1
  br i1 %cmpBr_46f82e, label %block_.L_46f862, label %block_46f834

block_46f834:
  ; Code: movl -0x10(%rbp), %eax	 RIP: 46f834	 Bytes: 3
  %loadMem_46f834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f834 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f834)
  store %struct.Memory* %call_46f834, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 46f837	 Bytes: 3
  %loadMem_46f837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f837 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f837)
  store %struct.Memory* %call_46f837, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %ecx	 RIP: 46f83a	 Bytes: 3
  %loadMem_46f83a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f83a = call %struct.Memory* @routine_addl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f83a)
  store %struct.Memory* %call_46f83a, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 46f83d	 Bytes: 3
  %loadMem_46f83d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f83d = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f83d)
  store %struct.Memory* %call_46f83d, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 46f840	 Bytes: 2
  %loadMem_46f840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f840 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f840)
  store %struct.Memory* %call_46f840, %struct.Memory** %MEMORY

  ; Code: jge .L_46f862	 RIP: 46f842	 Bytes: 6
  %loadMem_46f842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f842 = call %struct.Memory* @routine_jge_.L_46f862(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f842, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_46f842, %struct.Memory** %MEMORY

  %loadBr_46f842 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f842 = icmp eq i8 %loadBr_46f842, 1
  br i1 %cmpBr_46f842, label %block_.L_46f862, label %block_46f848

block_46f848:
  ; Code: movl $0x1, -0x24(%rbp)	 RIP: 46f848	 Bytes: 7
  %loadMem_46f848 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f848 = call %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f848)
  store %struct.Memory* %call_46f848, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x28(%rbp)	 RIP: 46f84f	 Bytes: 7
  %loadMem_46f84f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f84f = call %struct.Memory* @routine_movl__0x1__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f84f)
  store %struct.Memory* %call_46f84f, %struct.Memory** %MEMORY

  ; Code: movl $0x3e8, -0x2c(%rbp)	 RIP: 46f856	 Bytes: 7
  %loadMem_46f856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f856 = call %struct.Memory* @routine_movl__0x3e8__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f856)
  store %struct.Memory* %call_46f856, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46f8fd	 RIP: 46f85d	 Bytes: 5
  %loadMem_46f85d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f85d = call %struct.Memory* @routine_jmpq_.L_46f8fd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f85d, i64 160, i64 5)
  store %struct.Memory* %call_46f85d, %struct.Memory** %MEMORY

  br label %block_.L_46f8fd

  ; Code: .L_46f862:	 RIP: 46f862	 Bytes: 0
block_.L_46f862:

  ; Code: cmpl $0x0, -0x14(%rbp)	 RIP: 46f862	 Bytes: 4
  %loadMem_46f862 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f862 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f862)
  store %struct.Memory* %call_46f862, %struct.Memory** %MEMORY

  ; Code: jle .L_46f8be	 RIP: 46f866	 Bytes: 6
  %loadMem_46f866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f866 = call %struct.Memory* @routine_jle_.L_46f8be(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f866, i8* %BRANCH_TAKEN, i64 88, i64 6, i64 6)
  store %struct.Memory* %call_46f866, %struct.Memory** %MEMORY

  %loadBr_46f866 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f866 = icmp eq i8 %loadBr_46f866, 1
  br i1 %cmpBr_46f866, label %block_.L_46f8be, label %block_46f86c

block_46f86c:
  ; Code: movl -0x10(%rbp), %eax	 RIP: 46f86c	 Bytes: 3
  %loadMem_46f86c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f86c = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f86c)
  store %struct.Memory* %call_46f86c, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 46f86f	 Bytes: 3
  %loadMem_46f86f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f86f = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f86f)
  store %struct.Memory* %call_46f86f, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %ecx	 RIP: 46f872	 Bytes: 3
  %loadMem_46f872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f872 = call %struct.Memory* @routine_addl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f872)
  store %struct.Memory* %call_46f872, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 46f875	 Bytes: 3
  %loadMem_46f875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f875 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f875)
  store %struct.Memory* %call_46f875, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 46f878	 Bytes: 2
  %loadMem_46f878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f878 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f878)
  store %struct.Memory* %call_46f878, %struct.Memory** %MEMORY

  ; Code: jne .L_46f8be	 RIP: 46f87a	 Bytes: 6
  %loadMem_46f87a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f87a = call %struct.Memory* @routine_jne_.L_46f8be(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f87a, i8* %BRANCH_TAKEN, i64 68, i64 6, i64 6)
  store %struct.Memory* %call_46f87a, %struct.Memory** %MEMORY

  %loadBr_46f87a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f87a = icmp eq i8 %loadBr_46f87a, 1
  br i1 %cmpBr_46f87a, label %block_.L_46f8be, label %block_46f880

block_46f880:
  ; Code: cmpl $0x0, -0x10(%rbp)	 RIP: 46f880	 Bytes: 4
  %loadMem_46f880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f880 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f880)
  store %struct.Memory* %call_46f880, %struct.Memory** %MEMORY

  ; Code: jne .L_46f8a4	 RIP: 46f884	 Bytes: 6
  %loadMem_46f884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f884 = call %struct.Memory* @routine_jne_.L_46f8a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f884, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_46f884, %struct.Memory** %MEMORY

  %loadBr_46f884 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f884 = icmp eq i8 %loadBr_46f884, 1
  br i1 %cmpBr_46f884, label %block_.L_46f8a4, label %block_46f88a

block_46f88a:
  ; Code: movl $0x2, -0x24(%rbp)	 RIP: 46f88a	 Bytes: 7
  %loadMem_46f88a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f88a = call %struct.Memory* @routine_movl__0x2__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f88a)
  store %struct.Memory* %call_46f88a, %struct.Memory** %MEMORY

  ; Code: movl $0x2, -0x28(%rbp)	 RIP: 46f891	 Bytes: 7
  %loadMem_46f891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f891 = call %struct.Memory* @routine_movl__0x2__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f891)
  store %struct.Memory* %call_46f891, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 46f898	 Bytes: 7
  %loadMem_46f898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f898 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f898)
  store %struct.Memory* %call_46f898, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46f8b9	 RIP: 46f89f	 Bytes: 5
  %loadMem_46f89f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f89f = call %struct.Memory* @routine_jmpq_.L_46f8b9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f89f, i64 26, i64 5)
  store %struct.Memory* %call_46f89f, %struct.Memory** %MEMORY

  br label %block_.L_46f8b9

  ; Code: .L_46f8a4:	 RIP: 46f8a4	 Bytes: 0
block_.L_46f8a4:

  ; Code: movl $0x2, -0x24(%rbp)	 RIP: 46f8a4	 Bytes: 7
  %loadMem_46f8a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f8a4 = call %struct.Memory* @routine_movl__0x2__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f8a4)
  store %struct.Memory* %call_46f8a4, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x28(%rbp)	 RIP: 46f8ab	 Bytes: 7
  %loadMem_46f8ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f8ab = call %struct.Memory* @routine_movl__0x1__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f8ab)
  store %struct.Memory* %call_46f8ab, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 46f8b2	 Bytes: 7
  %loadMem_46f8b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f8b2 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f8b2)
  store %struct.Memory* %call_46f8b2, %struct.Memory** %MEMORY

  ; Code: .L_46f8b9:	 RIP: 46f8b9	 Bytes: 0
  br label %block_.L_46f8b9
block_.L_46f8b9:

  ; Code: jmpq .L_46f8f8	 RIP: 46f8b9	 Bytes: 5
  %loadMem_46f8b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f8b9 = call %struct.Memory* @routine_jmpq_.L_46f8f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f8b9, i64 63, i64 5)
  store %struct.Memory* %call_46f8b9, %struct.Memory** %MEMORY

  br label %block_.L_46f8f8

  ; Code: .L_46f8be:	 RIP: 46f8be	 Bytes: 0
block_.L_46f8be:

  ; Code: cmpl $0x0, -0x14(%rbp)	 RIP: 46f8be	 Bytes: 4
  %loadMem_46f8be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f8be = call %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f8be)
  store %struct.Memory* %call_46f8be, %struct.Memory** %MEMORY

  ; Code: jle .L_46f8f3	 RIP: 46f8c2	 Bytes: 6
  %loadMem_46f8c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f8c2 = call %struct.Memory* @routine_jle_.L_46f8f3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f8c2, i8* %BRANCH_TAKEN, i64 49, i64 6, i64 6)
  store %struct.Memory* %call_46f8c2, %struct.Memory** %MEMORY

  %loadBr_46f8c2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f8c2 = icmp eq i8 %loadBr_46f8c2, 1
  br i1 %cmpBr_46f8c2, label %block_.L_46f8f3, label %block_46f8c8

block_46f8c8:
  ; Code: movl -0x10(%rbp), %eax	 RIP: 46f8c8	 Bytes: 3
  %loadMem_46f8c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f8c8 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f8c8)
  store %struct.Memory* %call_46f8c8, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 46f8cb	 Bytes: 3
  %loadMem_46f8cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f8cb = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f8cb)
  store %struct.Memory* %call_46f8cb, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %ecx	 RIP: 46f8ce	 Bytes: 3
  %loadMem_46f8ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f8ce = call %struct.Memory* @routine_addl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f8ce)
  store %struct.Memory* %call_46f8ce, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 46f8d1	 Bytes: 2
  %loadMem_46f8d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f8d1 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f8d1)
  store %struct.Memory* %call_46f8d1, %struct.Memory** %MEMORY

  ; Code: jle .L_46f8f3	 RIP: 46f8d3	 Bytes: 6
  %loadMem_46f8d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f8d3 = call %struct.Memory* @routine_jle_.L_46f8f3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f8d3, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_46f8d3, %struct.Memory** %MEMORY

  %loadBr_46f8d3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f8d3 = icmp eq i8 %loadBr_46f8d3, 1
  br i1 %cmpBr_46f8d3, label %block_.L_46f8f3, label %block_46f8d9

block_46f8d9:
  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 46f8d9	 Bytes: 7
  %loadMem_46f8d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f8d9 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f8d9)
  store %struct.Memory* %call_46f8d9, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x28(%rbp)	 RIP: 46f8e0	 Bytes: 7
  %loadMem_46f8e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f8e0 = call %struct.Memory* @routine_movl__0x1__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f8e0)
  store %struct.Memory* %call_46f8e0, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %eax	 RIP: 46f8e7	 Bytes: 3
  %loadMem_46f8e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f8e7 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f8e7)
  store %struct.Memory* %call_46f8e7, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 46f8ea	 Bytes: 3
  %loadMem_46f8ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f8ea = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f8ea)
  store %struct.Memory* %call_46f8ea, %struct.Memory** %MEMORY

  ; Code: subl -0x14(%rbp), %eax	 RIP: 46f8ed	 Bytes: 3
  %loadMem_46f8ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f8ed = call %struct.Memory* @routine_subl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f8ed)
  store %struct.Memory* %call_46f8ed, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 46f8f0	 Bytes: 3
  %loadMem_46f8f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f8f0 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f8f0)
  store %struct.Memory* %call_46f8f0, %struct.Memory** %MEMORY

  ; Code: .L_46f8f3:	 RIP: 46f8f3	 Bytes: 0
  br label %block_.L_46f8f3
block_.L_46f8f3:

  ; Code: jmpq .L_46f8f8	 RIP: 46f8f3	 Bytes: 5
  %loadMem_46f8f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f8f3 = call %struct.Memory* @routine_jmpq_.L_46f8f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f8f3, i64 5, i64 5)
  store %struct.Memory* %call_46f8f3, %struct.Memory** %MEMORY

  br label %block_.L_46f8f8

  ; Code: .L_46f8f8:	 RIP: 46f8f8	 Bytes: 0
block_.L_46f8f8:

  ; Code: jmpq .L_46f8fd	 RIP: 46f8f8	 Bytes: 5
  %loadMem_46f8f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f8f8 = call %struct.Memory* @routine_jmpq_.L_46f8fd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f8f8, i64 5, i64 5)
  store %struct.Memory* %call_46f8f8, %struct.Memory** %MEMORY

  br label %block_.L_46f8fd

  ; Code: .L_46f8fd:	 RIP: 46f8fd	 Bytes: 0
block_.L_46f8fd:

  ; Code: jmpq .L_46f902	 RIP: 46f8fd	 Bytes: 5
  %loadMem_46f8fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f8fd = call %struct.Memory* @routine_jmpq_.L_46f902(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f8fd, i64 5, i64 5)
  store %struct.Memory* %call_46f8fd, %struct.Memory** %MEMORY

  br label %block_.L_46f902

  ; Code: .L_46f902:	 RIP: 46f902	 Bytes: 0
block_.L_46f902:

  ; Code: jmpq .L_46f907	 RIP: 46f902	 Bytes: 5
  %loadMem_46f902 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f902 = call %struct.Memory* @routine_jmpq_.L_46f907(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f902, i64 5, i64 5)
  store %struct.Memory* %call_46f902, %struct.Memory** %MEMORY

  br label %block_.L_46f907

  ; Code: .L_46f907:	 RIP: 46f907	 Bytes: 0
block_.L_46f907:

  ; Code: jmpq .L_46f90c	 RIP: 46f907	 Bytes: 5
  %loadMem_46f907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f907 = call %struct.Memory* @routine_jmpq_.L_46f90c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f907, i64 5, i64 5)
  store %struct.Memory* %call_46f907, %struct.Memory** %MEMORY

  br label %block_.L_46f90c

  ; Code: .L_46f90c:	 RIP: 46f90c	 Bytes: 0
block_.L_46f90c:

  ; Code: movq $0xb4bd20, %rax	 RIP: 46f90c	 Bytes: 10
  %loadMem_46f90c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f90c = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f90c)
  store %struct.Memory* %call_46f90c, %struct.Memory** %MEMORY

  ; Code: movq 0xab0fe0, %rcx	 RIP: 46f916	 Bytes: 8
  %loadMem_46f916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f916 = call %struct.Memory* @routine_movq_0xab0fe0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f916)
  store %struct.Memory* %call_46f916, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 46f91e	 Bytes: 4
  %loadMem_46f91e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f91e = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f91e)
  store %struct.Memory* %call_46f91e, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rdx, %rdx	 RIP: 46f922	 Bytes: 4
  %loadMem_46f922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f922 = call %struct.Memory* @routine_imulq__0x4c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f922)
  store %struct.Memory* %call_46f922, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 46f926	 Bytes: 3
  %loadMem_46f926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f926 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f926)
  store %struct.Memory* %call_46f926, %struct.Memory** %MEMORY

  ; Code: movslq 0x4(%rax), %rax	 RIP: 46f929	 Bytes: 4
  %loadMem_46f929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f929 = call %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f929)
  store %struct.Memory* %call_46f929, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, %rax, %rax	 RIP: 46f92d	 Bytes: 4
  %loadMem_46f92d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f92d = call %struct.Memory* @routine_imulq__0x68___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f92d)
  store %struct.Memory* %call_46f92d, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rcx	 RIP: 46f931	 Bytes: 3
  %loadMem_46f931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f931 = call %struct.Memory* @routine_addq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f931)
  store %struct.Memory* %call_46f931, %struct.Memory** %MEMORY

  ; Code: addq $0x4c, %rcx	 RIP: 46f934	 Bytes: 4
  %loadMem_46f934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f934 = call %struct.Memory* @routine_addq__0x4c___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f934)
  store %struct.Memory* %call_46f934, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 46f938	 Bytes: 3
  %loadMem_46f938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f938 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f938)
  store %struct.Memory* %call_46f938, %struct.Memory** %MEMORY

  ; Code: callq .min_eyes	 RIP: 46f93b	 Bytes: 5
  %loadMem1_46f93b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46f93b = call %struct.Memory* @routine_callq_.min_eyes(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46f93b, i64 -212555, i64 5, i64 5)
  store %struct.Memory* %call1_46f93b, %struct.Memory** %MEMORY

  %loadMem2_46f93b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46f93b = load i64, i64* %3
  %call2_46f93b = call %struct.Memory* @sub_43baf0.min_eyes(%struct.State* %0, i64  %loadPC_46f93b, %struct.Memory* %loadMem2_46f93b)
  store %struct.Memory* %call2_46f93b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46f940	 Bytes: 3
  %loadMem_46f940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f940 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f940)
  store %struct.Memory* %call_46f940, %struct.Memory** %MEMORY

  ; Code: jle .L_46fadf	 RIP: 46f943	 Bytes: 6
  %loadMem_46f943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f943 = call %struct.Memory* @routine_jle_.L_46fadf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f943, i8* %BRANCH_TAKEN, i64 412, i64 6, i64 6)
  store %struct.Memory* %call_46f943, %struct.Memory** %MEMORY

  %loadBr_46f943 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f943 = icmp eq i8 %loadBr_46f943, 1
  br i1 %cmpBr_46f943, label %block_.L_46fadf, label %block_46f949

block_46f949:
  ; Code: movq $0xb4bd20, %rax	 RIP: 46f949	 Bytes: 10
  %loadMem_46f949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f949 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f949)
  store %struct.Memory* %call_46f949, %struct.Memory** %MEMORY

  ; Code: movq 0xab0fe0, %rcx	 RIP: 46f953	 Bytes: 8
  %loadMem_46f953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f953 = call %struct.Memory* @routine_movq_0xab0fe0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f953)
  store %struct.Memory* %call_46f953, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 46f95b	 Bytes: 4
  %loadMem_46f95b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f95b = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f95b)
  store %struct.Memory* %call_46f95b, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rdx, %rdx	 RIP: 46f95f	 Bytes: 4
  %loadMem_46f95f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f95f = call %struct.Memory* @routine_imulq__0x4c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f95f)
  store %struct.Memory* %call_46f95f, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 46f963	 Bytes: 3
  %loadMem_46f963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f963 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f963)
  store %struct.Memory* %call_46f963, %struct.Memory** %MEMORY

  ; Code: movslq 0x4(%rax), %rax	 RIP: 46f966	 Bytes: 4
  %loadMem_46f966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f966 = call %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f966)
  store %struct.Memory* %call_46f966, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, %rax, %rax	 RIP: 46f96a	 Bytes: 4
  %loadMem_46f96a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f96a = call %struct.Memory* @routine_imulq__0x68___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f96a)
  store %struct.Memory* %call_46f96a, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rcx	 RIP: 46f96e	 Bytes: 3
  %loadMem_46f96e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f96e = call %struct.Memory* @routine_addq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f96e)
  store %struct.Memory* %call_46f96e, %struct.Memory** %MEMORY

  ; Code: addq $0x4c, %rcx	 RIP: 46f971	 Bytes: 4
  %loadMem_46f971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f971 = call %struct.Memory* @routine_addq__0x4c___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f971)
  store %struct.Memory* %call_46f971, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 46f975	 Bytes: 3
  %loadMem_46f975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f975 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f975)
  store %struct.Memory* %call_46f975, %struct.Memory** %MEMORY

  ; Code: callq .min_eyes	 RIP: 46f978	 Bytes: 5
  %loadMem1_46f978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46f978 = call %struct.Memory* @routine_callq_.min_eyes(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46f978, i64 -212616, i64 5, i64 5)
  store %struct.Memory* %call1_46f978, %struct.Memory** %MEMORY

  %loadMem2_46f978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46f978 = load i64, i64* %3
  %call2_46f978 = call %struct.Memory* @sub_43baf0.min_eyes(%struct.State* %0, i64  %loadPC_46f978, %struct.Memory* %loadMem2_46f978)
  store %struct.Memory* %call2_46f978, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46f97d	 Bytes: 3
  %loadMem_46f97d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f97d = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f97d)
  store %struct.Memory* %call_46f97d, %struct.Memory** %MEMORY

  ; Code: jle .L_46fadf	 RIP: 46f980	 Bytes: 6
  %loadMem_46f980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f980 = call %struct.Memory* @routine_jle_.L_46fadf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f980, i8* %BRANCH_TAKEN, i64 351, i64 6, i64 6)
  store %struct.Memory* %call_46f980, %struct.Memory** %MEMORY

  %loadBr_46f980 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f980 = icmp eq i8 %loadBr_46f980, 1
  br i1 %cmpBr_46f980, label %block_.L_46fadf, label %block_46f986

block_46f986:
  ; Code: movl -0xc(%rbp), %eax	 RIP: 46f986	 Bytes: 3
  %loadMem_46f986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f986 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f986)
  store %struct.Memory* %call_46f986, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %ecx	 RIP: 46f989	 Bytes: 3
  %loadMem_46f989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f989 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f989)
  store %struct.Memory* %call_46f989, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %ecx	 RIP: 46f98c	 Bytes: 3
  %loadMem_46f98c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f98c = call %struct.Memory* @routine_addl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f98c)
  store %struct.Memory* %call_46f98c, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 46f98f	 Bytes: 2
  %loadMem_46f98f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f98f = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f98f)
  store %struct.Memory* %call_46f98f, %struct.Memory** %MEMORY

  ; Code: jle .L_46f9b6	 RIP: 46f991	 Bytes: 6
  %loadMem_46f991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f991 = call %struct.Memory* @routine_jle_.L_46f9b6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f991, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_46f991, %struct.Memory** %MEMORY

  %loadBr_46f991 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f991 = icmp eq i8 %loadBr_46f991, 1
  br i1 %cmpBr_46f991, label %block_.L_46f9b6, label %block_46f997

block_46f997:
  ; Code: movl $0x1, -0x24(%rbp)	 RIP: 46f997	 Bytes: 7
  %loadMem_46f997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f997 = call %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f997)
  store %struct.Memory* %call_46f997, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 46f99e	 Bytes: 7
  %loadMem_46f99e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f99e = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f99e)
  store %struct.Memory* %call_46f99e, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 46f9a5	 Bytes: 3
  %loadMem_46f9a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f9a5 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f9a5)
  store %struct.Memory* %call_46f9a5, %struct.Memory** %MEMORY

  ; Code: subl -0x10(%rbp), %eax	 RIP: 46f9a8	 Bytes: 3
  %loadMem_46f9a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f9a8 = call %struct.Memory* @routine_subl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f9a8)
  store %struct.Memory* %call_46f9a8, %struct.Memory** %MEMORY

  ; Code: subl -0x14(%rbp), %eax	 RIP: 46f9ab	 Bytes: 3
  %loadMem_46f9ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f9ab = call %struct.Memory* @routine_subl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f9ab)
  store %struct.Memory* %call_46f9ab, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 46f9ae	 Bytes: 3
  %loadMem_46f9ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f9ae = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f9ae)
  store %struct.Memory* %call_46f9ae, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46fada	 RIP: 46f9b1	 Bytes: 5
  %loadMem_46f9b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f9b1 = call %struct.Memory* @routine_jmpq_.L_46fada(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f9b1, i64 297, i64 5)
  store %struct.Memory* %call_46f9b1, %struct.Memory** %MEMORY

  br label %block_.L_46fada

  ; Code: .L_46f9b6:	 RIP: 46f9b6	 Bytes: 0
block_.L_46f9b6:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 46f9b6	 Bytes: 3
  %loadMem_46f9b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f9b6 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f9b6)
  store %struct.Memory* %call_46f9b6, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 46f9b9	 Bytes: 3
  %loadMem_46f9b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f9b9 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f9b9)
  store %struct.Memory* %call_46f9b9, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %ecx	 RIP: 46f9bc	 Bytes: 3
  %loadMem_46f9bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f9bc = call %struct.Memory* @routine_addl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f9bc)
  store %struct.Memory* %call_46f9bc, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 46f9bf	 Bytes: 2
  %loadMem_46f9bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f9bf = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f9bf)
  store %struct.Memory* %call_46f9bf, %struct.Memory** %MEMORY

  ; Code: jle .L_46f9e6	 RIP: 46f9c1	 Bytes: 6
  %loadMem_46f9c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f9c1 = call %struct.Memory* @routine_jle_.L_46f9e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f9c1, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_46f9c1, %struct.Memory** %MEMORY

  %loadBr_46f9c1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f9c1 = icmp eq i8 %loadBr_46f9c1, 1
  br i1 %cmpBr_46f9c1, label %block_.L_46f9e6, label %block_46f9c7

block_46f9c7:
  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 46f9c7	 Bytes: 7
  %loadMem_46f9c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f9c7 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f9c7)
  store %struct.Memory* %call_46f9c7, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x28(%rbp)	 RIP: 46f9ce	 Bytes: 7
  %loadMem_46f9ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f9ce = call %struct.Memory* @routine_movl__0x1__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f9ce)
  store %struct.Memory* %call_46f9ce, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %eax	 RIP: 46f9d5	 Bytes: 3
  %loadMem_46f9d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f9d5 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f9d5)
  store %struct.Memory* %call_46f9d5, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 46f9d8	 Bytes: 3
  %loadMem_46f9d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f9d8 = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f9d8)
  store %struct.Memory* %call_46f9d8, %struct.Memory** %MEMORY

  ; Code: subl -0x14(%rbp), %eax	 RIP: 46f9db	 Bytes: 3
  %loadMem_46f9db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f9db = call %struct.Memory* @routine_subl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f9db)
  store %struct.Memory* %call_46f9db, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 46f9de	 Bytes: 3
  %loadMem_46f9de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f9de = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f9de)
  store %struct.Memory* %call_46f9de, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46fad5	 RIP: 46f9e1	 Bytes: 5
  %loadMem_46f9e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f9e1 = call %struct.Memory* @routine_jmpq_.L_46fad5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f9e1, i64 244, i64 5)
  store %struct.Memory* %call_46f9e1, %struct.Memory** %MEMORY

  br label %block_.L_46fad5

  ; Code: .L_46f9e6:	 RIP: 46f9e6	 Bytes: 0
block_.L_46f9e6:

  ; Code: cmpl $0x0, -0x14(%rbp)	 RIP: 46f9e6	 Bytes: 4
  %loadMem_46f9e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f9e6 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f9e6)
  store %struct.Memory* %call_46f9e6, %struct.Memory** %MEMORY

  ; Code: jne .L_46fa16	 RIP: 46f9ea	 Bytes: 6
  %loadMem_46f9ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f9ea = call %struct.Memory* @routine_jne_.L_46fa16(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f9ea, i8* %BRANCH_TAKEN, i64 44, i64 6, i64 6)
  store %struct.Memory* %call_46f9ea, %struct.Memory** %MEMORY

  %loadBr_46f9ea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f9ea = icmp eq i8 %loadBr_46f9ea, 1
  br i1 %cmpBr_46f9ea, label %block_.L_46fa16, label %block_46f9f0

block_46f9f0:
  ; Code: movl -0xc(%rbp), %eax	 RIP: 46f9f0	 Bytes: 3
  %loadMem_46f9f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f9f0 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f9f0)
  store %struct.Memory* %call_46f9f0, %struct.Memory** %MEMORY

  ; Code: cmpl -0x10(%rbp), %eax	 RIP: 46f9f3	 Bytes: 3
  %loadMem_46f9f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f9f3 = call %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f9f3)
  store %struct.Memory* %call_46f9f3, %struct.Memory** %MEMORY

  ; Code: jne .L_46fa16	 RIP: 46f9f6	 Bytes: 6
  %loadMem_46f9f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f9f6 = call %struct.Memory* @routine_jne_.L_46fa16(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f9f6, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_46f9f6, %struct.Memory** %MEMORY

  %loadBr_46f9f6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46f9f6 = icmp eq i8 %loadBr_46f9f6, 1
  br i1 %cmpBr_46f9f6, label %block_.L_46fa16, label %block_46f9fc

block_46f9fc:
  ; Code: movl $0x2, -0x24(%rbp)	 RIP: 46f9fc	 Bytes: 7
  %loadMem_46f9fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46f9fc = call %struct.Memory* @routine_movl__0x2__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46f9fc)
  store %struct.Memory* %call_46f9fc, %struct.Memory** %MEMORY

  ; Code: movl $0x2, -0x28(%rbp)	 RIP: 46fa03	 Bytes: 7
  %loadMem_46fa03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa03 = call %struct.Memory* @routine_movl__0x2__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa03)
  store %struct.Memory* %call_46fa03, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 46fa0a	 Bytes: 7
  %loadMem_46fa0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa0a = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa0a)
  store %struct.Memory* %call_46fa0a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46fad0	 RIP: 46fa11	 Bytes: 5
  %loadMem_46fa11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa11 = call %struct.Memory* @routine_jmpq_.L_46fad0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa11, i64 191, i64 5)
  store %struct.Memory* %call_46fa11, %struct.Memory** %MEMORY

  br label %block_.L_46fad0

  ; Code: .L_46fa16:	 RIP: 46fa16	 Bytes: 0
block_.L_46fa16:

  ; Code: cmpl $0x0, -0x14(%rbp)	 RIP: 46fa16	 Bytes: 4
  %loadMem_46fa16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa16 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa16)
  store %struct.Memory* %call_46fa16, %struct.Memory** %MEMORY

  ; Code: jle .L_46fa4b	 RIP: 46fa1a	 Bytes: 6
  %loadMem_46fa1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa1a = call %struct.Memory* @routine_jle_.L_46fa4b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa1a, i8* %BRANCH_TAKEN, i64 49, i64 6, i64 6)
  store %struct.Memory* %call_46fa1a, %struct.Memory** %MEMORY

  %loadBr_46fa1a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46fa1a = icmp eq i8 %loadBr_46fa1a, 1
  br i1 %cmpBr_46fa1a, label %block_.L_46fa4b, label %block_46fa20

block_46fa20:
  ; Code: movl -0xc(%rbp), %eax	 RIP: 46fa20	 Bytes: 3
  %loadMem_46fa20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa20 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa20)
  store %struct.Memory* %call_46fa20, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 46fa23	 Bytes: 3
  %loadMem_46fa23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa23 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa23)
  store %struct.Memory* %call_46fa23, %struct.Memory** %MEMORY

  ; Code: addl -0x10(%rbp), %ecx	 RIP: 46fa26	 Bytes: 3
  %loadMem_46fa26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa26 = call %struct.Memory* @routine_addl_MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa26)
  store %struct.Memory* %call_46fa26, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 46fa29	 Bytes: 2
  %loadMem_46fa29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa29 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa29)
  store %struct.Memory* %call_46fa29, %struct.Memory** %MEMORY

  ; Code: jne .L_46fa4b	 RIP: 46fa2b	 Bytes: 6
  %loadMem_46fa2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa2b = call %struct.Memory* @routine_jne_.L_46fa4b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa2b, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_46fa2b, %struct.Memory** %MEMORY

  %loadBr_46fa2b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46fa2b = icmp eq i8 %loadBr_46fa2b, 1
  br i1 %cmpBr_46fa2b, label %block_.L_46fa4b, label %block_46fa31

block_46fa31:
  ; Code: movl $0x1, -0x24(%rbp)	 RIP: 46fa31	 Bytes: 7
  %loadMem_46fa31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa31 = call %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa31)
  store %struct.Memory* %call_46fa31, %struct.Memory** %MEMORY

  ; Code: movl $0x2, -0x28(%rbp)	 RIP: 46fa38	 Bytes: 7
  %loadMem_46fa38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa38 = call %struct.Memory* @routine_movl__0x2__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa38)
  store %struct.Memory* %call_46fa38, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 46fa3f	 Bytes: 7
  %loadMem_46fa3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa3f = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa3f)
  store %struct.Memory* %call_46fa3f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46facb	 RIP: 46fa46	 Bytes: 5
  %loadMem_46fa46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa46 = call %struct.Memory* @routine_jmpq_.L_46facb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa46, i64 133, i64 5)
  store %struct.Memory* %call_46fa46, %struct.Memory** %MEMORY

  br label %block_.L_46facb

  ; Code: .L_46fa4b:	 RIP: 46fa4b	 Bytes: 0
block_.L_46fa4b:

  ; Code: cmpl $0x0, -0x14(%rbp)	 RIP: 46fa4b	 Bytes: 4
  %loadMem_46fa4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa4b = call %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa4b)
  store %struct.Memory* %call_46fa4b, %struct.Memory** %MEMORY

  ; Code: jle .L_46fa91	 RIP: 46fa4f	 Bytes: 6
  %loadMem_46fa4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa4f = call %struct.Memory* @routine_jle_.L_46fa91(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa4f, i8* %BRANCH_TAKEN, i64 66, i64 6, i64 6)
  store %struct.Memory* %call_46fa4f, %struct.Memory** %MEMORY

  %loadBr_46fa4f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46fa4f = icmp eq i8 %loadBr_46fa4f, 1
  br i1 %cmpBr_46fa4f, label %block_.L_46fa91, label %block_46fa55

block_46fa55:
  ; Code: movl -0xc(%rbp), %eax	 RIP: 46fa55	 Bytes: 3
  %loadMem_46fa55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa55 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa55)
  store %struct.Memory* %call_46fa55, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 46fa58	 Bytes: 3
  %loadMem_46fa58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa58 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa58)
  store %struct.Memory* %call_46fa58, %struct.Memory** %MEMORY

  ; Code: addl -0x10(%rbp), %ecx	 RIP: 46fa5b	 Bytes: 3
  %loadMem_46fa5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa5b = call %struct.Memory* @routine_addl_MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa5b)
  store %struct.Memory* %call_46fa5b, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 46fa5e	 Bytes: 2
  %loadMem_46fa5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa5e = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa5e)
  store %struct.Memory* %call_46fa5e, %struct.Memory** %MEMORY

  ; Code: jge .L_46fa91	 RIP: 46fa60	 Bytes: 6
  %loadMem_46fa60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa60 = call %struct.Memory* @routine_jge_.L_46fa91(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa60, i8* %BRANCH_TAKEN, i64 49, i64 6, i64 6)
  store %struct.Memory* %call_46fa60, %struct.Memory** %MEMORY

  %loadBr_46fa60 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46fa60 = icmp eq i8 %loadBr_46fa60, 1
  br i1 %cmpBr_46fa60, label %block_.L_46fa91, label %block_46fa66

block_46fa66:
  ; Code: movl -0x10(%rbp), %eax	 RIP: 46fa66	 Bytes: 3
  %loadMem_46fa66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa66 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa66)
  store %struct.Memory* %call_46fa66, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 46fa69	 Bytes: 3
  %loadMem_46fa69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa69 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa69)
  store %struct.Memory* %call_46fa69, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %ecx	 RIP: 46fa6c	 Bytes: 3
  %loadMem_46fa6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa6c = call %struct.Memory* @routine_addl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa6c)
  store %struct.Memory* %call_46fa6c, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 46fa6f	 Bytes: 2
  %loadMem_46fa6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa6f = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa6f)
  store %struct.Memory* %call_46fa6f, %struct.Memory** %MEMORY

  ; Code: jge .L_46fa91	 RIP: 46fa71	 Bytes: 6
  %loadMem_46fa71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa71 = call %struct.Memory* @routine_jge_.L_46fa91(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa71, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_46fa71, %struct.Memory** %MEMORY

  %loadBr_46fa71 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46fa71 = icmp eq i8 %loadBr_46fa71, 1
  br i1 %cmpBr_46fa71, label %block_.L_46fa91, label %block_46fa77

block_46fa77:
  ; Code: movl $0x1, -0x24(%rbp)	 RIP: 46fa77	 Bytes: 7
  %loadMem_46fa77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa77 = call %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa77)
  store %struct.Memory* %call_46fa77, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x28(%rbp)	 RIP: 46fa7e	 Bytes: 7
  %loadMem_46fa7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa7e = call %struct.Memory* @routine_movl__0x1__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa7e)
  store %struct.Memory* %call_46fa7e, %struct.Memory** %MEMORY

  ; Code: movl $0x3e8, -0x2c(%rbp)	 RIP: 46fa85	 Bytes: 7
  %loadMem_46fa85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa85 = call %struct.Memory* @routine_movl__0x3e8__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa85)
  store %struct.Memory* %call_46fa85, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46fac6	 RIP: 46fa8c	 Bytes: 5
  %loadMem_46fa8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa8c = call %struct.Memory* @routine_jmpq_.L_46fac6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa8c, i64 58, i64 5)
  store %struct.Memory* %call_46fa8c, %struct.Memory** %MEMORY

  br label %block_.L_46fac6

  ; Code: .L_46fa91:	 RIP: 46fa91	 Bytes: 0
block_.L_46fa91:

  ; Code: cmpl $0x0, -0x14(%rbp)	 RIP: 46fa91	 Bytes: 4
  %loadMem_46fa91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa91 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa91)
  store %struct.Memory* %call_46fa91, %struct.Memory** %MEMORY

  ; Code: jle .L_46fac1	 RIP: 46fa95	 Bytes: 6
  %loadMem_46fa95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa95 = call %struct.Memory* @routine_jle_.L_46fac1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa95, i8* %BRANCH_TAKEN, i64 44, i64 6, i64 6)
  store %struct.Memory* %call_46fa95, %struct.Memory** %MEMORY

  %loadBr_46fa95 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46fa95 = icmp eq i8 %loadBr_46fa95, 1
  br i1 %cmpBr_46fa95, label %block_.L_46fac1, label %block_46fa9b

block_46fa9b:
  ; Code: movl -0x10(%rbp), %eax	 RIP: 46fa9b	 Bytes: 3
  %loadMem_46fa9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa9b = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa9b)
  store %struct.Memory* %call_46fa9b, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 46fa9e	 Bytes: 3
  %loadMem_46fa9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fa9e = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fa9e)
  store %struct.Memory* %call_46fa9e, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %ecx	 RIP: 46faa1	 Bytes: 3
  %loadMem_46faa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46faa1 = call %struct.Memory* @routine_addl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46faa1)
  store %struct.Memory* %call_46faa1, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 46faa4	 Bytes: 2
  %loadMem_46faa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46faa4 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46faa4)
  store %struct.Memory* %call_46faa4, %struct.Memory** %MEMORY

  ; Code: jne .L_46fac1	 RIP: 46faa6	 Bytes: 6
  %loadMem_46faa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46faa6 = call %struct.Memory* @routine_jne_.L_46fac1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46faa6, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_46faa6, %struct.Memory** %MEMORY

  %loadBr_46faa6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46faa6 = icmp eq i8 %loadBr_46faa6, 1
  br i1 %cmpBr_46faa6, label %block_.L_46fac1, label %block_46faac

block_46faac:
  ; Code: movl $0x2, -0x24(%rbp)	 RIP: 46faac	 Bytes: 7
  %loadMem_46faac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46faac = call %struct.Memory* @routine_movl__0x2__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46faac)
  store %struct.Memory* %call_46faac, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x28(%rbp)	 RIP: 46fab3	 Bytes: 7
  %loadMem_46fab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fab3 = call %struct.Memory* @routine_movl__0x1__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fab3)
  store %struct.Memory* %call_46fab3, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 46faba	 Bytes: 7
  %loadMem_46faba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46faba = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46faba)
  store %struct.Memory* %call_46faba, %struct.Memory** %MEMORY

  ; Code: .L_46fac1:	 RIP: 46fac1	 Bytes: 0
  br label %block_.L_46fac1
block_.L_46fac1:

  ; Code: jmpq .L_46fac6	 RIP: 46fac1	 Bytes: 5
  %loadMem_46fac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fac1 = call %struct.Memory* @routine_jmpq_.L_46fac6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fac1, i64 5, i64 5)
  store %struct.Memory* %call_46fac1, %struct.Memory** %MEMORY

  br label %block_.L_46fac6

  ; Code: .L_46fac6:	 RIP: 46fac6	 Bytes: 0
block_.L_46fac6:

  ; Code: jmpq .L_46facb	 RIP: 46fac6	 Bytes: 5
  %loadMem_46fac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fac6 = call %struct.Memory* @routine_jmpq_.L_46facb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fac6, i64 5, i64 5)
  store %struct.Memory* %call_46fac6, %struct.Memory** %MEMORY

  br label %block_.L_46facb

  ; Code: .L_46facb:	 RIP: 46facb	 Bytes: 0
block_.L_46facb:

  ; Code: jmpq .L_46fad0	 RIP: 46facb	 Bytes: 5
  %loadMem_46facb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46facb = call %struct.Memory* @routine_jmpq_.L_46fad0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46facb, i64 5, i64 5)
  store %struct.Memory* %call_46facb, %struct.Memory** %MEMORY

  br label %block_.L_46fad0

  ; Code: .L_46fad0:	 RIP: 46fad0	 Bytes: 0
block_.L_46fad0:

  ; Code: jmpq .L_46fad5	 RIP: 46fad0	 Bytes: 5
  %loadMem_46fad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fad0 = call %struct.Memory* @routine_jmpq_.L_46fad5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fad0, i64 5, i64 5)
  store %struct.Memory* %call_46fad0, %struct.Memory** %MEMORY

  br label %block_.L_46fad5

  ; Code: .L_46fad5:	 RIP: 46fad5	 Bytes: 0
block_.L_46fad5:

  ; Code: jmpq .L_46fada	 RIP: 46fad5	 Bytes: 5
  %loadMem_46fad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fad5 = call %struct.Memory* @routine_jmpq_.L_46fada(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fad5, i64 5, i64 5)
  store %struct.Memory* %call_46fad5, %struct.Memory** %MEMORY

  br label %block_.L_46fada

  ; Code: .L_46fada:	 RIP: 46fada	 Bytes: 0
block_.L_46fada:

  ; Code: jmpq .L_46fadf	 RIP: 46fada	 Bytes: 5
  %loadMem_46fada = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fada = call %struct.Memory* @routine_jmpq_.L_46fadf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fada, i64 5, i64 5)
  store %struct.Memory* %call_46fada, %struct.Memory** %MEMORY

  br label %block_.L_46fadf

  ; Code: .L_46fadf:	 RIP: 46fadf	 Bytes: 0
block_.L_46fadf:

  ; Code: movq $0xb4bd20, %rax	 RIP: 46fadf	 Bytes: 10
  %loadMem_46fadf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fadf = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fadf)
  store %struct.Memory* %call_46fadf, %struct.Memory** %MEMORY

  ; Code: movq 0xab0fe0, %rcx	 RIP: 46fae9	 Bytes: 8
  %loadMem_46fae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fae9 = call %struct.Memory* @routine_movq_0xab0fe0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fae9)
  store %struct.Memory* %call_46fae9, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 46faf1	 Bytes: 4
  %loadMem_46faf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46faf1 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46faf1)
  store %struct.Memory* %call_46faf1, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rdx, %rdx	 RIP: 46faf5	 Bytes: 4
  %loadMem_46faf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46faf5 = call %struct.Memory* @routine_imulq__0x4c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46faf5)
  store %struct.Memory* %call_46faf5, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 46faf9	 Bytes: 3
  %loadMem_46faf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46faf9 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46faf9)
  store %struct.Memory* %call_46faf9, %struct.Memory** %MEMORY

  ; Code: movslq 0x4(%rax), %rax	 RIP: 46fafc	 Bytes: 4
  %loadMem_46fafc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fafc = call %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fafc)
  store %struct.Memory* %call_46fafc, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, %rax, %rax	 RIP: 46fb00	 Bytes: 4
  %loadMem_46fb00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb00 = call %struct.Memory* @routine_imulq__0x68___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb00)
  store %struct.Memory* %call_46fb00, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rcx	 RIP: 46fb04	 Bytes: 3
  %loadMem_46fb04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb04 = call %struct.Memory* @routine_addq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb04)
  store %struct.Memory* %call_46fb04, %struct.Memory** %MEMORY

  ; Code: addq $0x4c, %rcx	 RIP: 46fb07	 Bytes: 4
  %loadMem_46fb07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb07 = call %struct.Memory* @routine_addq__0x4c___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb07)
  store %struct.Memory* %call_46fb07, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 46fb0b	 Bytes: 3
  %loadMem_46fb0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb0b = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb0b)
  store %struct.Memory* %call_46fb0b, %struct.Memory** %MEMORY

  ; Code: callq .min_eyes	 RIP: 46fb0e	 Bytes: 5
  %loadMem1_46fb0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46fb0e = call %struct.Memory* @routine_callq_.min_eyes(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46fb0e, i64 -213022, i64 5, i64 5)
  store %struct.Memory* %call1_46fb0e, %struct.Memory** %MEMORY

  %loadMem2_46fb0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46fb0e = load i64, i64* %3
  %call2_46fb0e = call %struct.Memory* @sub_43baf0.min_eyes(%struct.State* %0, i64  %loadPC_46fb0e, %struct.Memory* %loadMem2_46fb0e)
  store %struct.Memory* %call2_46fb0e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46fb13	 Bytes: 3
  %loadMem_46fb13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb13 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb13)
  store %struct.Memory* %call_46fb13, %struct.Memory** %MEMORY

  ; Code: jle .L_46fbe3	 RIP: 46fb16	 Bytes: 6
  %loadMem_46fb16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb16 = call %struct.Memory* @routine_jle_.L_46fbe3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb16, i8* %BRANCH_TAKEN, i64 205, i64 6, i64 6)
  store %struct.Memory* %call_46fb16, %struct.Memory** %MEMORY

  %loadBr_46fb16 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46fb16 = icmp eq i8 %loadBr_46fb16, 1
  br i1 %cmpBr_46fb16, label %block_.L_46fbe3, label %block_46fb1c

block_46fb1c:
  ; Code: movq $0xb4bd20, %rax	 RIP: 46fb1c	 Bytes: 10
  %loadMem_46fb1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb1c = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb1c)
  store %struct.Memory* %call_46fb1c, %struct.Memory** %MEMORY

  ; Code: movq 0xab0fe0, %rcx	 RIP: 46fb26	 Bytes: 8
  %loadMem_46fb26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb26 = call %struct.Memory* @routine_movq_0xab0fe0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb26)
  store %struct.Memory* %call_46fb26, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 46fb2e	 Bytes: 4
  %loadMem_46fb2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb2e = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb2e)
  store %struct.Memory* %call_46fb2e, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rdx, %rdx	 RIP: 46fb32	 Bytes: 4
  %loadMem_46fb32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb32 = call %struct.Memory* @routine_imulq__0x4c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb32)
  store %struct.Memory* %call_46fb32, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 46fb36	 Bytes: 3
  %loadMem_46fb36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb36 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb36)
  store %struct.Memory* %call_46fb36, %struct.Memory** %MEMORY

  ; Code: movslq 0x4(%rax), %rax	 RIP: 46fb39	 Bytes: 4
  %loadMem_46fb39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb39 = call %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb39)
  store %struct.Memory* %call_46fb39, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, %rax, %rax	 RIP: 46fb3d	 Bytes: 4
  %loadMem_46fb3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb3d = call %struct.Memory* @routine_imulq__0x68___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb3d)
  store %struct.Memory* %call_46fb3d, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rcx	 RIP: 46fb41	 Bytes: 3
  %loadMem_46fb41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb41 = call %struct.Memory* @routine_addq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb41)
  store %struct.Memory* %call_46fb41, %struct.Memory** %MEMORY

  ; Code: addq $0x4c, %rcx	 RIP: 46fb44	 Bytes: 4
  %loadMem_46fb44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb44 = call %struct.Memory* @routine_addq__0x4c___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb44)
  store %struct.Memory* %call_46fb44, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 46fb48	 Bytes: 3
  %loadMem_46fb48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb48 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb48)
  store %struct.Memory* %call_46fb48, %struct.Memory** %MEMORY

  ; Code: callq .min_eyes	 RIP: 46fb4b	 Bytes: 5
  %loadMem1_46fb4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46fb4b = call %struct.Memory* @routine_callq_.min_eyes(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46fb4b, i64 -213083, i64 5, i64 5)
  store %struct.Memory* %call1_46fb4b, %struct.Memory** %MEMORY

  %loadMem2_46fb4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46fb4b = load i64, i64* %3
  %call2_46fb4b = call %struct.Memory* @sub_43baf0.min_eyes(%struct.State* %0, i64  %loadPC_46fb4b, %struct.Memory* %loadMem2_46fb4b)
  store %struct.Memory* %call2_46fb4b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46fb50	 Bytes: 3
  %loadMem_46fb50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb50 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb50)
  store %struct.Memory* %call_46fb50, %struct.Memory** %MEMORY

  ; Code: jne .L_46fbe3	 RIP: 46fb53	 Bytes: 6
  %loadMem_46fb53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb53 = call %struct.Memory* @routine_jne_.L_46fbe3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb53, i8* %BRANCH_TAKEN, i64 144, i64 6, i64 6)
  store %struct.Memory* %call_46fb53, %struct.Memory** %MEMORY

  %loadBr_46fb53 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46fb53 = icmp eq i8 %loadBr_46fb53, 1
  br i1 %cmpBr_46fb53, label %block_.L_46fbe3, label %block_46fb59

block_46fb59:
  ; Code: movl -0xc(%rbp), %eax	 RIP: 46fb59	 Bytes: 3
  %loadMem_46fb59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb59 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb59)
  store %struct.Memory* %call_46fb59, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 46fb5c	 Bytes: 3
  %loadMem_46fb5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb5c = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb5c)
  store %struct.Memory* %call_46fb5c, %struct.Memory** %MEMORY

  ; Code: addl -0x10(%rbp), %ecx	 RIP: 46fb5f	 Bytes: 3
  %loadMem_46fb5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb5f = call %struct.Memory* @routine_addl_MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb5f)
  store %struct.Memory* %call_46fb5f, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 46fb62	 Bytes: 2
  %loadMem_46fb62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb62 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb62)
  store %struct.Memory* %call_46fb62, %struct.Memory** %MEMORY

  ; Code: jle .L_46fb89	 RIP: 46fb64	 Bytes: 6
  %loadMem_46fb64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb64 = call %struct.Memory* @routine_jle_.L_46fb89(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb64, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_46fb64, %struct.Memory** %MEMORY

  %loadBr_46fb64 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46fb64 = icmp eq i8 %loadBr_46fb64, 1
  br i1 %cmpBr_46fb64, label %block_.L_46fb89, label %block_46fb6a

block_46fb6a:
  ; Code: movl $0x1, -0x24(%rbp)	 RIP: 46fb6a	 Bytes: 7
  %loadMem_46fb6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb6a = call %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb6a)
  store %struct.Memory* %call_46fb6a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 46fb71	 Bytes: 7
  %loadMem_46fb71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb71 = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb71)
  store %struct.Memory* %call_46fb71, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 46fb78	 Bytes: 3
  %loadMem_46fb78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb78 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb78)
  store %struct.Memory* %call_46fb78, %struct.Memory** %MEMORY

  ; Code: subl -0x14(%rbp), %eax	 RIP: 46fb7b	 Bytes: 3
  %loadMem_46fb7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb7b = call %struct.Memory* @routine_subl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb7b)
  store %struct.Memory* %call_46fb7b, %struct.Memory** %MEMORY

  ; Code: subl -0x10(%rbp), %eax	 RIP: 46fb7e	 Bytes: 3
  %loadMem_46fb7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb7e = call %struct.Memory* @routine_subl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb7e)
  store %struct.Memory* %call_46fb7e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 46fb81	 Bytes: 3
  %loadMem_46fb81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb81 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb81)
  store %struct.Memory* %call_46fb81, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46fbde	 RIP: 46fb84	 Bytes: 5
  %loadMem_46fb84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb84 = call %struct.Memory* @routine_jmpq_.L_46fbde(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb84, i64 90, i64 5)
  store %struct.Memory* %call_46fb84, %struct.Memory** %MEMORY

  br label %block_.L_46fbde

  ; Code: .L_46fb89:	 RIP: 46fb89	 Bytes: 0
block_.L_46fb89:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 46fb89	 Bytes: 3
  %loadMem_46fb89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb89 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb89)
  store %struct.Memory* %call_46fb89, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %eax	 RIP: 46fb8c	 Bytes: 3
  %loadMem_46fb8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb8c = call %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb8c)
  store %struct.Memory* %call_46fb8c, %struct.Memory** %MEMORY

  ; Code: cmpl -0x10(%rbp), %eax	 RIP: 46fb8f	 Bytes: 3
  %loadMem_46fb8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb8f = call %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb8f)
  store %struct.Memory* %call_46fb8f, %struct.Memory** %MEMORY

  ; Code: jne .L_46fbab	 RIP: 46fb92	 Bytes: 6
  %loadMem_46fb92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb92 = call %struct.Memory* @routine_jne_.L_46fbab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb92, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_46fb92, %struct.Memory** %MEMORY

  %loadBr_46fb92 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46fb92 = icmp eq i8 %loadBr_46fb92, 1
  br i1 %cmpBr_46fb92, label %block_.L_46fbab, label %block_46fb98

block_46fb98:
  ; Code: movl $0x2, -0x24(%rbp)	 RIP: 46fb98	 Bytes: 7
  %loadMem_46fb98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb98 = call %struct.Memory* @routine_movl__0x2__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb98)
  store %struct.Memory* %call_46fb98, %struct.Memory** %MEMORY

  ; Code: movl $0x2, -0x28(%rbp)	 RIP: 46fb9f	 Bytes: 7
  %loadMem_46fb9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fb9f = call %struct.Memory* @routine_movl__0x2__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fb9f)
  store %struct.Memory* %call_46fb9f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46fbd9	 RIP: 46fba6	 Bytes: 5
  %loadMem_46fba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fba6 = call %struct.Memory* @routine_jmpq_.L_46fbd9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fba6, i64 51, i64 5)
  store %struct.Memory* %call_46fba6, %struct.Memory** %MEMORY

  br label %block_.L_46fbd9

  ; Code: .L_46fbab:	 RIP: 46fbab	 Bytes: 0
block_.L_46fbab:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 46fbab	 Bytes: 3
  %loadMem_46fbab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fbab = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fbab)
  store %struct.Memory* %call_46fbab, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %eax	 RIP: 46fbae	 Bytes: 3
  %loadMem_46fbae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fbae = call %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fbae)
  store %struct.Memory* %call_46fbae, %struct.Memory** %MEMORY

  ; Code: cmpl -0x10(%rbp), %eax	 RIP: 46fbb1	 Bytes: 3
  %loadMem_46fbb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fbb1 = call %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fbb1)
  store %struct.Memory* %call_46fbb1, %struct.Memory** %MEMORY

  ; Code: jge .L_46fbd4	 RIP: 46fbb4	 Bytes: 6
  %loadMem_46fbb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fbb4 = call %struct.Memory* @routine_jge_.L_46fbd4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fbb4, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_46fbb4, %struct.Memory** %MEMORY

  %loadBr_46fbb4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46fbb4 = icmp eq i8 %loadBr_46fbb4, 1
  br i1 %cmpBr_46fbb4, label %block_.L_46fbd4, label %block_46fbba

block_46fbba:
  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 46fbba	 Bytes: 7
  %loadMem_46fbba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fbba = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fbba)
  store %struct.Memory* %call_46fbba, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x28(%rbp)	 RIP: 46fbc1	 Bytes: 7
  %loadMem_46fbc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fbc1 = call %struct.Memory* @routine_movl__0x1__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fbc1)
  store %struct.Memory* %call_46fbc1, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 46fbc8	 Bytes: 3
  %loadMem_46fbc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fbc8 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fbc8)
  store %struct.Memory* %call_46fbc8, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %eax	 RIP: 46fbcb	 Bytes: 3
  %loadMem_46fbcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fbcb = call %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fbcb)
  store %struct.Memory* %call_46fbcb, %struct.Memory** %MEMORY

  ; Code: subl -0x10(%rbp), %eax	 RIP: 46fbce	 Bytes: 3
  %loadMem_46fbce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fbce = call %struct.Memory* @routine_subl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fbce)
  store %struct.Memory* %call_46fbce, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 46fbd1	 Bytes: 3
  %loadMem_46fbd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fbd1 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fbd1)
  store %struct.Memory* %call_46fbd1, %struct.Memory** %MEMORY

  ; Code: .L_46fbd4:	 RIP: 46fbd4	 Bytes: 0
  br label %block_.L_46fbd4
block_.L_46fbd4:

  ; Code: jmpq .L_46fbd9	 RIP: 46fbd4	 Bytes: 5
  %loadMem_46fbd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fbd4 = call %struct.Memory* @routine_jmpq_.L_46fbd9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fbd4, i64 5, i64 5)
  store %struct.Memory* %call_46fbd4, %struct.Memory** %MEMORY

  br label %block_.L_46fbd9

  ; Code: .L_46fbd9:	 RIP: 46fbd9	 Bytes: 0
block_.L_46fbd9:

  ; Code: jmpq .L_46fbde	 RIP: 46fbd9	 Bytes: 5
  %loadMem_46fbd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fbd9 = call %struct.Memory* @routine_jmpq_.L_46fbde(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fbd9, i64 5, i64 5)
  store %struct.Memory* %call_46fbd9, %struct.Memory** %MEMORY

  br label %block_.L_46fbde

  ; Code: .L_46fbde:	 RIP: 46fbde	 Bytes: 0
block_.L_46fbde:

  ; Code: jmpq .L_46fbe3	 RIP: 46fbde	 Bytes: 5
  %loadMem_46fbde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fbde = call %struct.Memory* @routine_jmpq_.L_46fbe3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fbde, i64 5, i64 5)
  store %struct.Memory* %call_46fbde, %struct.Memory** %MEMORY

  br label %block_.L_46fbe3

  ; Code: .L_46fbe3:	 RIP: 46fbe3	 Bytes: 0
block_.L_46fbe3:

  ; Code: movq $0xb4bd20, %rax	 RIP: 46fbe3	 Bytes: 10
  %loadMem_46fbe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fbe3 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fbe3)
  store %struct.Memory* %call_46fbe3, %struct.Memory** %MEMORY

  ; Code: movq 0xab0fe0, %rcx	 RIP: 46fbed	 Bytes: 8
  %loadMem_46fbed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fbed = call %struct.Memory* @routine_movq_0xab0fe0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fbed)
  store %struct.Memory* %call_46fbed, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 46fbf5	 Bytes: 4
  %loadMem_46fbf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fbf5 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fbf5)
  store %struct.Memory* %call_46fbf5, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rdx, %rdx	 RIP: 46fbf9	 Bytes: 4
  %loadMem_46fbf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fbf9 = call %struct.Memory* @routine_imulq__0x4c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fbf9)
  store %struct.Memory* %call_46fbf9, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 46fbfd	 Bytes: 3
  %loadMem_46fbfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fbfd = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fbfd)
  store %struct.Memory* %call_46fbfd, %struct.Memory** %MEMORY

  ; Code: movslq 0x4(%rax), %rax	 RIP: 46fc00	 Bytes: 4
  %loadMem_46fc00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc00 = call %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc00)
  store %struct.Memory* %call_46fc00, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, %rax, %rax	 RIP: 46fc04	 Bytes: 4
  %loadMem_46fc04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc04 = call %struct.Memory* @routine_imulq__0x68___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc04)
  store %struct.Memory* %call_46fc04, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rcx	 RIP: 46fc08	 Bytes: 3
  %loadMem_46fc08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc08 = call %struct.Memory* @routine_addq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc08)
  store %struct.Memory* %call_46fc08, %struct.Memory** %MEMORY

  ; Code: addq $0x4c, %rcx	 RIP: 46fc0b	 Bytes: 4
  %loadMem_46fc0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc0b = call %struct.Memory* @routine_addq__0x4c___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc0b)
  store %struct.Memory* %call_46fc0b, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 46fc0f	 Bytes: 3
  %loadMem_46fc0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc0f = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc0f)
  store %struct.Memory* %call_46fc0f, %struct.Memory** %MEMORY

  ; Code: callq .min_eyes	 RIP: 46fc12	 Bytes: 5
  %loadMem1_46fc12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46fc12 = call %struct.Memory* @routine_callq_.min_eyes(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46fc12, i64 -213282, i64 5, i64 5)
  store %struct.Memory* %call1_46fc12, %struct.Memory** %MEMORY

  %loadMem2_46fc12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46fc12 = load i64, i64* %3
  %call2_46fc12 = call %struct.Memory* @sub_43baf0.min_eyes(%struct.State* %0, i64  %loadPC_46fc12, %struct.Memory* %loadMem2_46fc12)
  store %struct.Memory* %call2_46fc12, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46fc17	 Bytes: 3
  %loadMem_46fc17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc17 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc17)
  store %struct.Memory* %call_46fc17, %struct.Memory** %MEMORY

  ; Code: jne .L_46fcec	 RIP: 46fc1a	 Bytes: 6
  %loadMem_46fc1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc1a = call %struct.Memory* @routine_jne_.L_46fcec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc1a, i8* %BRANCH_TAKEN, i64 210, i64 6, i64 6)
  store %struct.Memory* %call_46fc1a, %struct.Memory** %MEMORY

  %loadBr_46fc1a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46fc1a = icmp eq i8 %loadBr_46fc1a, 1
  br i1 %cmpBr_46fc1a, label %block_.L_46fcec, label %block_46fc20

block_46fc20:
  ; Code: movq $0xb4bd20, %rax	 RIP: 46fc20	 Bytes: 10
  %loadMem_46fc20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc20 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc20)
  store %struct.Memory* %call_46fc20, %struct.Memory** %MEMORY

  ; Code: movq 0xab0fe0, %rcx	 RIP: 46fc2a	 Bytes: 8
  %loadMem_46fc2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc2a = call %struct.Memory* @routine_movq_0xab0fe0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc2a)
  store %struct.Memory* %call_46fc2a, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 46fc32	 Bytes: 4
  %loadMem_46fc32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc32 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc32)
  store %struct.Memory* %call_46fc32, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rdx, %rdx	 RIP: 46fc36	 Bytes: 4
  %loadMem_46fc36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc36 = call %struct.Memory* @routine_imulq__0x4c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc36)
  store %struct.Memory* %call_46fc36, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 46fc3a	 Bytes: 3
  %loadMem_46fc3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc3a = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc3a)
  store %struct.Memory* %call_46fc3a, %struct.Memory** %MEMORY

  ; Code: movslq 0x4(%rax), %rax	 RIP: 46fc3d	 Bytes: 4
  %loadMem_46fc3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc3d = call %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc3d)
  store %struct.Memory* %call_46fc3d, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, %rax, %rax	 RIP: 46fc41	 Bytes: 4
  %loadMem_46fc41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc41 = call %struct.Memory* @routine_imulq__0x68___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc41)
  store %struct.Memory* %call_46fc41, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rcx	 RIP: 46fc45	 Bytes: 3
  %loadMem_46fc45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc45 = call %struct.Memory* @routine_addq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc45)
  store %struct.Memory* %call_46fc45, %struct.Memory** %MEMORY

  ; Code: addq $0x4c, %rcx	 RIP: 46fc48	 Bytes: 4
  %loadMem_46fc48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc48 = call %struct.Memory* @routine_addq__0x4c___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc48)
  store %struct.Memory* %call_46fc48, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 46fc4c	 Bytes: 3
  %loadMem_46fc4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc4c = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc4c)
  store %struct.Memory* %call_46fc4c, %struct.Memory** %MEMORY

  ; Code: callq .min_eyes	 RIP: 46fc4f	 Bytes: 5
  %loadMem1_46fc4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46fc4f = call %struct.Memory* @routine_callq_.min_eyes(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46fc4f, i64 -213343, i64 5, i64 5)
  store %struct.Memory* %call1_46fc4f, %struct.Memory** %MEMORY

  %loadMem2_46fc4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46fc4f = load i64, i64* %3
  %call2_46fc4f = call %struct.Memory* @sub_43baf0.min_eyes(%struct.State* %0, i64  %loadPC_46fc4f, %struct.Memory* %loadMem2_46fc4f)
  store %struct.Memory* %call2_46fc4f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46fc54	 Bytes: 3
  %loadMem_46fc54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc54 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc54)
  store %struct.Memory* %call_46fc54, %struct.Memory** %MEMORY

  ; Code: jle .L_46fcec	 RIP: 46fc57	 Bytes: 6
  %loadMem_46fc57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc57 = call %struct.Memory* @routine_jle_.L_46fcec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc57, i8* %BRANCH_TAKEN, i64 149, i64 6, i64 6)
  store %struct.Memory* %call_46fc57, %struct.Memory** %MEMORY

  %loadBr_46fc57 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46fc57 = icmp eq i8 %loadBr_46fc57, 1
  br i1 %cmpBr_46fc57, label %block_.L_46fcec, label %block_46fc5d

block_46fc5d:
  ; Code: movl -0x10(%rbp), %eax	 RIP: 46fc5d	 Bytes: 3
  %loadMem_46fc5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc5d = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc5d)
  store %struct.Memory* %call_46fc5d, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %eax	 RIP: 46fc60	 Bytes: 3
  %loadMem_46fc60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc60 = call %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc60)
  store %struct.Memory* %call_46fc60, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 46fc63	 Bytes: 3
  %loadMem_46fc63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc63 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc63)
  store %struct.Memory* %call_46fc63, %struct.Memory** %MEMORY

  ; Code: jle .L_46fc8b	 RIP: 46fc66	 Bytes: 6
  %loadMem_46fc66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc66 = call %struct.Memory* @routine_jle_.L_46fc8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc66, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_46fc66, %struct.Memory** %MEMORY

  %loadBr_46fc66 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46fc66 = icmp eq i8 %loadBr_46fc66, 1
  br i1 %cmpBr_46fc66, label %block_.L_46fc8b, label %block_46fc6c

block_46fc6c:
  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 46fc6c	 Bytes: 7
  %loadMem_46fc6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc6c = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc6c)
  store %struct.Memory* %call_46fc6c, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x28(%rbp)	 RIP: 46fc73	 Bytes: 7
  %loadMem_46fc73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc73 = call %struct.Memory* @routine_movl__0x1__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc73)
  store %struct.Memory* %call_46fc73, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %eax	 RIP: 46fc7a	 Bytes: 3
  %loadMem_46fc7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc7a = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc7a)
  store %struct.Memory* %call_46fc7a, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %eax	 RIP: 46fc7d	 Bytes: 3
  %loadMem_46fc7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc7d = call %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc7d)
  store %struct.Memory* %call_46fc7d, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 46fc80	 Bytes: 3
  %loadMem_46fc80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc80 = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc80)
  store %struct.Memory* %call_46fc80, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 46fc83	 Bytes: 3
  %loadMem_46fc83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc83 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc83)
  store %struct.Memory* %call_46fc83, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46fce7	 RIP: 46fc86	 Bytes: 5
  %loadMem_46fc86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc86 = call %struct.Memory* @routine_jmpq_.L_46fce7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc86, i64 97, i64 5)
  store %struct.Memory* %call_46fc86, %struct.Memory** %MEMORY

  br label %block_.L_46fce7

  ; Code: .L_46fc8b:	 RIP: 46fc8b	 Bytes: 0
block_.L_46fc8b:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 46fc8b	 Bytes: 3
  %loadMem_46fc8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc8b = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc8b)
  store %struct.Memory* %call_46fc8b, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %eax	 RIP: 46fc8e	 Bytes: 3
  %loadMem_46fc8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc8e = call %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc8e)
  store %struct.Memory* %call_46fc8e, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 46fc91	 Bytes: 3
  %loadMem_46fc91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc91 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc91)
  store %struct.Memory* %call_46fc91, %struct.Memory** %MEMORY

  ; Code: jne .L_46fcb4	 RIP: 46fc94	 Bytes: 6
  %loadMem_46fc94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc94 = call %struct.Memory* @routine_jne_.L_46fcb4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc94, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_46fc94, %struct.Memory** %MEMORY

  %loadBr_46fc94 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46fc94 = icmp eq i8 %loadBr_46fc94, 1
  br i1 %cmpBr_46fc94, label %block_.L_46fcb4, label %block_46fc9a

block_46fc9a:
  ; Code: movl $0x2, -0x24(%rbp)	 RIP: 46fc9a	 Bytes: 7
  %loadMem_46fc9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fc9a = call %struct.Memory* @routine_movl__0x2__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fc9a)
  store %struct.Memory* %call_46fc9a, %struct.Memory** %MEMORY

  ; Code: movl $0x2, -0x28(%rbp)	 RIP: 46fca1	 Bytes: 7
  %loadMem_46fca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fca1 = call %struct.Memory* @routine_movl__0x2__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fca1)
  store %struct.Memory* %call_46fca1, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 46fca8	 Bytes: 7
  %loadMem_46fca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fca8 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fca8)
  store %struct.Memory* %call_46fca8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46fce2	 RIP: 46fcaf	 Bytes: 5
  %loadMem_46fcaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fcaf = call %struct.Memory* @routine_jmpq_.L_46fce2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fcaf, i64 51, i64 5)
  store %struct.Memory* %call_46fcaf, %struct.Memory** %MEMORY

  br label %block_.L_46fce2

  ; Code: .L_46fcb4:	 RIP: 46fcb4	 Bytes: 0
block_.L_46fcb4:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 46fcb4	 Bytes: 3
  %loadMem_46fcb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fcb4 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fcb4)
  store %struct.Memory* %call_46fcb4, %struct.Memory** %MEMORY

  ; Code: addl -0x14(%rbp), %eax	 RIP: 46fcb7	 Bytes: 3
  %loadMem_46fcb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fcb7 = call %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fcb7)
  store %struct.Memory* %call_46fcb7, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 46fcba	 Bytes: 3
  %loadMem_46fcba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fcba = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fcba)
  store %struct.Memory* %call_46fcba, %struct.Memory** %MEMORY

  ; Code: jle .L_46fcdd	 RIP: 46fcbd	 Bytes: 6
  %loadMem_46fcbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fcbd = call %struct.Memory* @routine_jle_.L_46fcdd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fcbd, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_46fcbd, %struct.Memory** %MEMORY

  %loadBr_46fcbd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46fcbd = icmp eq i8 %loadBr_46fcbd, 1
  br i1 %cmpBr_46fcbd, label %block_.L_46fcdd, label %block_46fcc3

block_46fcc3:
  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 46fcc3	 Bytes: 7
  %loadMem_46fcc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fcc3 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fcc3)
  store %struct.Memory* %call_46fcc3, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x28(%rbp)	 RIP: 46fcca	 Bytes: 7
  %loadMem_46fcca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fcca = call %struct.Memory* @routine_movl__0x1__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fcca)
  store %struct.Memory* %call_46fcca, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %eax	 RIP: 46fcd1	 Bytes: 3
  %loadMem_46fcd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fcd1 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fcd1)
  store %struct.Memory* %call_46fcd1, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 46fcd4	 Bytes: 3
  %loadMem_46fcd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fcd4 = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fcd4)
  store %struct.Memory* %call_46fcd4, %struct.Memory** %MEMORY

  ; Code: subl -0x14(%rbp), %eax	 RIP: 46fcd7	 Bytes: 3
  %loadMem_46fcd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fcd7 = call %struct.Memory* @routine_subl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fcd7)
  store %struct.Memory* %call_46fcd7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 46fcda	 Bytes: 3
  %loadMem_46fcda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fcda = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fcda)
  store %struct.Memory* %call_46fcda, %struct.Memory** %MEMORY

  ; Code: .L_46fcdd:	 RIP: 46fcdd	 Bytes: 0
  br label %block_.L_46fcdd
block_.L_46fcdd:

  ; Code: jmpq .L_46fce2	 RIP: 46fcdd	 Bytes: 5
  %loadMem_46fcdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fcdd = call %struct.Memory* @routine_jmpq_.L_46fce2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fcdd, i64 5, i64 5)
  store %struct.Memory* %call_46fcdd, %struct.Memory** %MEMORY

  br label %block_.L_46fce2

  ; Code: .L_46fce2:	 RIP: 46fce2	 Bytes: 0
block_.L_46fce2:

  ; Code: jmpq .L_46fce7	 RIP: 46fce2	 Bytes: 5
  %loadMem_46fce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fce2 = call %struct.Memory* @routine_jmpq_.L_46fce7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fce2, i64 5, i64 5)
  store %struct.Memory* %call_46fce2, %struct.Memory** %MEMORY

  br label %block_.L_46fce7

  ; Code: .L_46fce7:	 RIP: 46fce7	 Bytes: 0
block_.L_46fce7:

  ; Code: jmpq .L_46fcec	 RIP: 46fce7	 Bytes: 5
  %loadMem_46fce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fce7 = call %struct.Memory* @routine_jmpq_.L_46fcec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fce7, i64 5, i64 5)
  store %struct.Memory* %call_46fce7, %struct.Memory** %MEMORY

  br label %block_.L_46fcec

  ; Code: .L_46fcec:	 RIP: 46fcec	 Bytes: 0
block_.L_46fcec:

  ; Code: movq $0xb4bd20, %rax	 RIP: 46fcec	 Bytes: 10
  %loadMem_46fcec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fcec = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fcec)
  store %struct.Memory* %call_46fcec, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 46fcf6	 Bytes: 4
  %loadMem_46fcf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fcf6 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fcf6)
  store %struct.Memory* %call_46fcf6, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46fcfa	 Bytes: 4
  %loadMem_46fcfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fcfa = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fcfa)
  store %struct.Memory* %call_46fcfa, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46fcfe	 Bytes: 3
  %loadMem_46fcfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fcfe = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fcfe)
  store %struct.Memory* %call_46fcfe, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x1c(%rax)	 RIP: 46fd01	 Bytes: 4
  %loadMem_46fd01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fd01 = call %struct.Memory* @routine_cmpl__0x2__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fd01)
  store %struct.Memory* %call_46fd01, %struct.Memory** %MEMORY

  ; Code: je .L_46fd73	 RIP: 46fd05	 Bytes: 6
  %loadMem_46fd05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fd05 = call %struct.Memory* @routine_je_.L_46fd73(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fd05, i8* %BRANCH_TAKEN, i64 110, i64 6, i64 6)
  store %struct.Memory* %call_46fd05, %struct.Memory** %MEMORY

  %loadBr_46fd05 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46fd05 = icmp eq i8 %loadBr_46fd05, 1
  br i1 %cmpBr_46fd05, label %block_.L_46fd73, label %block_46fd0b

block_46fd0b:
  ; Code: cmpl $0x1, -0x24(%rbp)	 RIP: 46fd0b	 Bytes: 4
  %loadMem_46fd0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fd0b = call %struct.Memory* @routine_cmpl__0x1__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fd0b)
  store %struct.Memory* %call_46fd0b, %struct.Memory** %MEMORY

  ; Code: jne .L_46fd2c	 RIP: 46fd0f	 Bytes: 6
  %loadMem_46fd0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fd0f = call %struct.Memory* @routine_jne_.L_46fd2c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fd0f, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_46fd0f, %struct.Memory** %MEMORY

  %loadBr_46fd0f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46fd0f = icmp eq i8 %loadBr_46fd0f, 1
  br i1 %cmpBr_46fd0f, label %block_.L_46fd2c, label %block_46fd15

block_46fd15:
  ; Code: movl $0x1, %esi	 RIP: 46fd15	 Bytes: 5
  %loadMem_46fd15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fd15 = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fd15)
  store %struct.Memory* %call_46fd15, %struct.Memory** %MEMORY

  ; Code: movl $0x7, %edx	 RIP: 46fd1a	 Bytes: 5
  %loadMem_46fd1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fd1a = call %struct.Memory* @routine_movl__0x7___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fd1a)
  store %struct.Memory* %call_46fd1a, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edi	 RIP: 46fd1f	 Bytes: 3
  %loadMem_46fd1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fd1f = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fd1f)
  store %struct.Memory* %call_46fd1f, %struct.Memory** %MEMORY

  ; Code: callq .update_status	 RIP: 46fd22	 Bytes: 5
  %loadMem1_46fd22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46fd22 = call %struct.Memory* @routine_callq_.update_status(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46fd22, i64 1390, i64 5, i64 5)
  store %struct.Memory* %call1_46fd22, %struct.Memory** %MEMORY

  %loadMem2_46fd22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46fd22 = load i64, i64* %3
  %call2_46fd22 = call %struct.Memory* @sub_470290.update_status(%struct.State* %0, i64  %loadPC_46fd22, %struct.Memory* %loadMem2_46fd22)
  store %struct.Memory* %call2_46fd22, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46fd6e	 RIP: 46fd27	 Bytes: 5
  %loadMem_46fd27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fd27 = call %struct.Memory* @routine_jmpq_.L_46fd6e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fd27, i64 71, i64 5)
  store %struct.Memory* %call_46fd27, %struct.Memory** %MEMORY

  br label %block_.L_46fd6e

  ; Code: .L_46fd2c:	 RIP: 46fd2c	 Bytes: 0
block_.L_46fd2c:

  ; Code: cmpl $0x2, -0x24(%rbp)	 RIP: 46fd2c	 Bytes: 4
  %loadMem_46fd2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fd2c = call %struct.Memory* @routine_cmpl__0x2__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fd2c)
  store %struct.Memory* %call_46fd2c, %struct.Memory** %MEMORY

  ; Code: jne .L_46fd4c	 RIP: 46fd30	 Bytes: 6
  %loadMem_46fd30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fd30 = call %struct.Memory* @routine_jne_.L_46fd4c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fd30, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_46fd30, %struct.Memory** %MEMORY

  %loadBr_46fd30 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46fd30 = icmp eq i8 %loadBr_46fd30, 1
  br i1 %cmpBr_46fd30, label %block_.L_46fd4c, label %block_46fd36

block_46fd36:
  ; Code: movl $0x2, %eax	 RIP: 46fd36	 Bytes: 5
  %loadMem_46fd36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fd36 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fd36)
  store %struct.Memory* %call_46fd36, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edi	 RIP: 46fd3b	 Bytes: 3
  %loadMem_46fd3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fd3b = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fd3b)
  store %struct.Memory* %call_46fd3b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 46fd3e	 Bytes: 2
  %loadMem_46fd3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fd3e = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fd3e)
  store %struct.Memory* %call_46fd3e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 46fd40	 Bytes: 2
  %loadMem_46fd40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fd40 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fd40)
  store %struct.Memory* %call_46fd40, %struct.Memory** %MEMORY

  ; Code: callq .update_status	 RIP: 46fd42	 Bytes: 5
  %loadMem1_46fd42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46fd42 = call %struct.Memory* @routine_callq_.update_status(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46fd42, i64 1358, i64 5, i64 5)
  store %struct.Memory* %call1_46fd42, %struct.Memory** %MEMORY

  %loadMem2_46fd42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46fd42 = load i64, i64* %3
  %call2_46fd42 = call %struct.Memory* @sub_470290.update_status(%struct.State* %0, i64  %loadPC_46fd42, %struct.Memory* %loadMem2_46fd42)
  store %struct.Memory* %call2_46fd42, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46fd69	 RIP: 46fd47	 Bytes: 5
  %loadMem_46fd47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fd47 = call %struct.Memory* @routine_jmpq_.L_46fd69(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fd47, i64 34, i64 5)
  store %struct.Memory* %call_46fd47, %struct.Memory** %MEMORY

  br label %block_.L_46fd69

  ; Code: .L_46fd4c:	 RIP: 46fd4c	 Bytes: 0
block_.L_46fd4c:

  ; Code: cmpl $0x0, -0x24(%rbp)	 RIP: 46fd4c	 Bytes: 4
  %loadMem_46fd4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fd4c = call %struct.Memory* @routine_cmpl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fd4c)
  store %struct.Memory* %call_46fd4c, %struct.Memory** %MEMORY

  ; Code: jne .L_46fd64	 RIP: 46fd50	 Bytes: 6
  %loadMem_46fd50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fd50 = call %struct.Memory* @routine_jne_.L_46fd64(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fd50, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_46fd50, %struct.Memory** %MEMORY

  %loadBr_46fd50 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46fd50 = icmp eq i8 %loadBr_46fd50, 1
  br i1 %cmpBr_46fd50, label %block_.L_46fd64, label %block_46fd56

block_46fd56:
  ; Code: xorl %eax, %eax	 RIP: 46fd56	 Bytes: 2
  %loadMem_46fd56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fd56 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fd56)
  store %struct.Memory* %call_46fd56, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edi	 RIP: 46fd58	 Bytes: 3
  %loadMem_46fd58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fd58 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fd58)
  store %struct.Memory* %call_46fd58, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 46fd5b	 Bytes: 2
  %loadMem_46fd5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fd5b = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fd5b)
  store %struct.Memory* %call_46fd5b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 46fd5d	 Bytes: 2
  %loadMem_46fd5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fd5d = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fd5d)
  store %struct.Memory* %call_46fd5d, %struct.Memory** %MEMORY

  ; Code: callq .update_status	 RIP: 46fd5f	 Bytes: 5
  %loadMem1_46fd5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46fd5f = call %struct.Memory* @routine_callq_.update_status(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46fd5f, i64 1329, i64 5, i64 5)
  store %struct.Memory* %call1_46fd5f, %struct.Memory** %MEMORY

  %loadMem2_46fd5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46fd5f = load i64, i64* %3
  %call2_46fd5f = call %struct.Memory* @sub_470290.update_status(%struct.State* %0, i64  %loadPC_46fd5f, %struct.Memory* %loadMem2_46fd5f)
  store %struct.Memory* %call2_46fd5f, %struct.Memory** %MEMORY

  ; Code: .L_46fd64:	 RIP: 46fd64	 Bytes: 0
  br label %block_.L_46fd64
block_.L_46fd64:

  ; Code: jmpq .L_46fd69	 RIP: 46fd64	 Bytes: 5
  %loadMem_46fd64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fd64 = call %struct.Memory* @routine_jmpq_.L_46fd69(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fd64, i64 5, i64 5)
  store %struct.Memory* %call_46fd64, %struct.Memory** %MEMORY

  br label %block_.L_46fd69

  ; Code: .L_46fd69:	 RIP: 46fd69	 Bytes: 0
block_.L_46fd69:

  ; Code: jmpq .L_46fd6e	 RIP: 46fd69	 Bytes: 5
  %loadMem_46fd69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fd69 = call %struct.Memory* @routine_jmpq_.L_46fd6e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fd69, i64 5, i64 5)
  store %struct.Memory* %call_46fd69, %struct.Memory** %MEMORY

  br label %block_.L_46fd6e

  ; Code: .L_46fd6e:	 RIP: 46fd6e	 Bytes: 0
block_.L_46fd6e:

  ; Code: jmpq .L_46fd73	 RIP: 46fd6e	 Bytes: 5
  %loadMem_46fd6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fd6e = call %struct.Memory* @routine_jmpq_.L_46fd73(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fd6e, i64 5, i64 5)
  store %struct.Memory* %call_46fd6e, %struct.Memory** %MEMORY

  br label %block_.L_46fd73

  ; Code: .L_46fd73:	 RIP: 46fd73	 Bytes: 0
block_.L_46fd73:

  ; Code: cmpl $0x1, -0x28(%rbp)	 RIP: 46fd73	 Bytes: 4
  %loadMem_46fd73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fd73 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fd73)
  store %struct.Memory* %call_46fd73, %struct.Memory** %MEMORY

  ; Code: jne .L_46fd94	 RIP: 46fd77	 Bytes: 6
  %loadMem_46fd77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fd77 = call %struct.Memory* @routine_jne_.L_46fd94(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fd77, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_46fd77, %struct.Memory** %MEMORY

  %loadBr_46fd77 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46fd77 = icmp eq i8 %loadBr_46fd77, 1
  br i1 %cmpBr_46fd77, label %block_.L_46fd94, label %block_46fd7d

block_46fd7d:
  ; Code: movl $0x1, %esi	 RIP: 46fd7d	 Bytes: 5
  %loadMem_46fd7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fd7d = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fd7d)
  store %struct.Memory* %call_46fd7d, %struct.Memory** %MEMORY

  ; Code: movl $0x7, %edx	 RIP: 46fd82	 Bytes: 5
  %loadMem_46fd82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fd82 = call %struct.Memory* @routine_movl__0x7___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fd82)
  store %struct.Memory* %call_46fd82, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edi	 RIP: 46fd87	 Bytes: 3
  %loadMem_46fd87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fd87 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fd87)
  store %struct.Memory* %call_46fd87, %struct.Memory** %MEMORY

  ; Code: callq .update_status	 RIP: 46fd8a	 Bytes: 5
  %loadMem1_46fd8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46fd8a = call %struct.Memory* @routine_callq_.update_status(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46fd8a, i64 1286, i64 5, i64 5)
  store %struct.Memory* %call1_46fd8a, %struct.Memory** %MEMORY

  %loadMem2_46fd8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46fd8a = load i64, i64* %3
  %call2_46fd8a = call %struct.Memory* @sub_470290.update_status(%struct.State* %0, i64  %loadPC_46fd8a, %struct.Memory* %loadMem2_46fd8a)
  store %struct.Memory* %call2_46fd8a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46fdd6	 RIP: 46fd8f	 Bytes: 5
  %loadMem_46fd8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fd8f = call %struct.Memory* @routine_jmpq_.L_46fdd6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fd8f, i64 71, i64 5)
  store %struct.Memory* %call_46fd8f, %struct.Memory** %MEMORY

  br label %block_.L_46fdd6

  ; Code: .L_46fd94:	 RIP: 46fd94	 Bytes: 0
block_.L_46fd94:

  ; Code: cmpl $0x2, -0x28(%rbp)	 RIP: 46fd94	 Bytes: 4
  %loadMem_46fd94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fd94 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fd94)
  store %struct.Memory* %call_46fd94, %struct.Memory** %MEMORY

  ; Code: jne .L_46fdb4	 RIP: 46fd98	 Bytes: 6
  %loadMem_46fd98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fd98 = call %struct.Memory* @routine_jne_.L_46fdb4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fd98, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_46fd98, %struct.Memory** %MEMORY

  %loadBr_46fd98 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46fd98 = icmp eq i8 %loadBr_46fd98, 1
  br i1 %cmpBr_46fd98, label %block_.L_46fdb4, label %block_46fd9e

block_46fd9e:
  ; Code: movl $0x2, %eax	 RIP: 46fd9e	 Bytes: 5
  %loadMem_46fd9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fd9e = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fd9e)
  store %struct.Memory* %call_46fd9e, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edi	 RIP: 46fda3	 Bytes: 3
  %loadMem_46fda3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fda3 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fda3)
  store %struct.Memory* %call_46fda3, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 46fda6	 Bytes: 2
  %loadMem_46fda6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fda6 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fda6)
  store %struct.Memory* %call_46fda6, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 46fda8	 Bytes: 2
  %loadMem_46fda8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fda8 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fda8)
  store %struct.Memory* %call_46fda8, %struct.Memory** %MEMORY

  ; Code: callq .update_status	 RIP: 46fdaa	 Bytes: 5
  %loadMem1_46fdaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46fdaa = call %struct.Memory* @routine_callq_.update_status(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46fdaa, i64 1254, i64 5, i64 5)
  store %struct.Memory* %call1_46fdaa, %struct.Memory** %MEMORY

  %loadMem2_46fdaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46fdaa = load i64, i64* %3
  %call2_46fdaa = call %struct.Memory* @sub_470290.update_status(%struct.State* %0, i64  %loadPC_46fdaa, %struct.Memory* %loadMem2_46fdaa)
  store %struct.Memory* %call2_46fdaa, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46fdd1	 RIP: 46fdaf	 Bytes: 5
  %loadMem_46fdaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fdaf = call %struct.Memory* @routine_jmpq_.L_46fdd1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fdaf, i64 34, i64 5)
  store %struct.Memory* %call_46fdaf, %struct.Memory** %MEMORY

  br label %block_.L_46fdd1

  ; Code: .L_46fdb4:	 RIP: 46fdb4	 Bytes: 0
block_.L_46fdb4:

  ; Code: cmpl $0x0, -0x28(%rbp)	 RIP: 46fdb4	 Bytes: 4
  %loadMem_46fdb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fdb4 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fdb4)
  store %struct.Memory* %call_46fdb4, %struct.Memory** %MEMORY

  ; Code: jne .L_46fdcc	 RIP: 46fdb8	 Bytes: 6
  %loadMem_46fdb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fdb8 = call %struct.Memory* @routine_jne_.L_46fdcc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fdb8, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_46fdb8, %struct.Memory** %MEMORY

  %loadBr_46fdb8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46fdb8 = icmp eq i8 %loadBr_46fdb8, 1
  br i1 %cmpBr_46fdb8, label %block_.L_46fdcc, label %block_46fdbe

block_46fdbe:
  ; Code: xorl %eax, %eax	 RIP: 46fdbe	 Bytes: 2
  %loadMem_46fdbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fdbe = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fdbe)
  store %struct.Memory* %call_46fdbe, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edi	 RIP: 46fdc0	 Bytes: 3
  %loadMem_46fdc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fdc0 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fdc0)
  store %struct.Memory* %call_46fdc0, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 46fdc3	 Bytes: 2
  %loadMem_46fdc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fdc3 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fdc3)
  store %struct.Memory* %call_46fdc3, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 46fdc5	 Bytes: 2
  %loadMem_46fdc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fdc5 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fdc5)
  store %struct.Memory* %call_46fdc5, %struct.Memory** %MEMORY

  ; Code: callq .update_status	 RIP: 46fdc7	 Bytes: 5
  %loadMem1_46fdc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46fdc7 = call %struct.Memory* @routine_callq_.update_status(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46fdc7, i64 1225, i64 5, i64 5)
  store %struct.Memory* %call1_46fdc7, %struct.Memory** %MEMORY

  %loadMem2_46fdc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46fdc7 = load i64, i64* %3
  %call2_46fdc7 = call %struct.Memory* @sub_470290.update_status(%struct.State* %0, i64  %loadPC_46fdc7, %struct.Memory* %loadMem2_46fdc7)
  store %struct.Memory* %call2_46fdc7, %struct.Memory** %MEMORY

  ; Code: .L_46fdcc:	 RIP: 46fdcc	 Bytes: 0
  br label %block_.L_46fdcc
block_.L_46fdcc:

  ; Code: jmpq .L_46fdd1	 RIP: 46fdcc	 Bytes: 5
  %loadMem_46fdcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fdcc = call %struct.Memory* @routine_jmpq_.L_46fdd1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fdcc, i64 5, i64 5)
  store %struct.Memory* %call_46fdcc, %struct.Memory** %MEMORY

  br label %block_.L_46fdd1

  ; Code: .L_46fdd1:	 RIP: 46fdd1	 Bytes: 0
block_.L_46fdd1:

  ; Code: jmpq .L_46fdd6	 RIP: 46fdd1	 Bytes: 5
  %loadMem_46fdd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fdd1 = call %struct.Memory* @routine_jmpq_.L_46fdd6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fdd1, i64 5, i64 5)
  store %struct.Memory* %call_46fdd1, %struct.Memory** %MEMORY

  br label %block_.L_46fdd6

  ; Code: .L_46fdd6:	 RIP: 46fdd6	 Bytes: 0
block_.L_46fdd6:

  ; Code: cmpl $0x2, -0x24(%rbp)	 RIP: 46fdd6	 Bytes: 4
  %loadMem_46fdd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fdd6 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fdd6)
  store %struct.Memory* %call_46fdd6, %struct.Memory** %MEMORY

  ; Code: je .L_46fdea	 RIP: 46fdda	 Bytes: 6
  %loadMem_46fdda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fdda = call %struct.Memory* @routine_je_.L_46fdea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fdda, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_46fdda, %struct.Memory** %MEMORY

  %loadBr_46fdda = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46fdda = icmp eq i8 %loadBr_46fdda, 1
  br i1 %cmpBr_46fdda, label %block_.L_46fdea, label %block_46fde0

block_46fde0:
  ; Code: cmpl $0x2, -0x28(%rbp)	 RIP: 46fde0	 Bytes: 4
  %loadMem_46fde0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fde0 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fde0)
  store %struct.Memory* %call_46fde0, %struct.Memory** %MEMORY

  ; Code: jne .L_470124	 RIP: 46fde4	 Bytes: 6
  %loadMem_46fde4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fde4 = call %struct.Memory* @routine_jne_.L_470124(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fde4, i8* %BRANCH_TAKEN, i64 832, i64 6, i64 6)
  store %struct.Memory* %call_46fde4, %struct.Memory** %MEMORY

  %loadBr_46fde4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46fde4 = icmp eq i8 %loadBr_46fde4, 1
  br i1 %cmpBr_46fde4, label %block_.L_470124, label %block_.L_46fdea

  ; Code: .L_46fdea:	 RIP: 46fdea	 Bytes: 0
block_.L_46fdea:

  ; Code: movq $0xb4bd20, %rax	 RIP: 46fdea	 Bytes: 10
  %loadMem_46fdea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fdea = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fdea)
  store %struct.Memory* %call_46fdea, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2dc(%rbp)	 RIP: 46fdf4	 Bytes: 10
  %loadMem_46fdf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fdf4 = call %struct.Memory* @routine_movl__0x0__MINUS0x2dc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fdf4)
  store %struct.Memory* %call_46fdf4, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 46fdfe	 Bytes: 4
  %loadMem_46fdfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fdfe = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fdfe)
  store %struct.Memory* %call_46fdfe, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46fe02	 Bytes: 4
  %loadMem_46fe02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fe02 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fe02)
  store %struct.Memory* %call_46fe02, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46fe06	 Bytes: 3
  %loadMem_46fe06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fe06 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fe06)
  store %struct.Memory* %call_46fe06, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x1c(%rax)	 RIP: 46fe09	 Bytes: 4
  %loadMem_46fe09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fe09 = call %struct.Memory* @routine_cmpl__0x2__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fe09)
  store %struct.Memory* %call_46fe09, %struct.Memory** %MEMORY

  ; Code: jne .L_46fe65	 RIP: 46fe0d	 Bytes: 6
  %loadMem_46fe0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fe0d = call %struct.Memory* @routine_jne_.L_46fe65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fe0d, i8* %BRANCH_TAKEN, i64 88, i64 6, i64 6)
  store %struct.Memory* %call_46fe0d, %struct.Memory** %MEMORY

  %loadBr_46fe0d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46fe0d = icmp eq i8 %loadBr_46fe0d, 1
  br i1 %cmpBr_46fe0d, label %block_.L_46fe65, label %block_46fe13

block_46fe13:
  ; Code: movq $0xb4bd20, %rax	 RIP: 46fe13	 Bytes: 10
  %loadMem_46fe13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fe13 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fe13)
  store %struct.Memory* %call_46fe13, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 46fe1d	 Bytes: 4
  %loadMem_46fe1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fe1d = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fe1d)
  store %struct.Memory* %call_46fe1d, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46fe21	 Bytes: 4
  %loadMem_46fe21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fe21 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fe21)
  store %struct.Memory* %call_46fe21, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46fe25	 Bytes: 3
  %loadMem_46fe25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fe25 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fe25)
  store %struct.Memory* %call_46fe25, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x30(%rax)	 RIP: 46fe28	 Bytes: 4
  %loadMem_46fe28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fe28 = call %struct.Memory* @routine_cmpl__0x0__0x30__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fe28)
  store %struct.Memory* %call_46fe28, %struct.Memory** %MEMORY

  ; Code: je .L_46fe65	 RIP: 46fe2c	 Bytes: 6
  %loadMem_46fe2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fe2c = call %struct.Memory* @routine_je_.L_46fe65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fe2c, i8* %BRANCH_TAKEN, i64 57, i64 6, i64 6)
  store %struct.Memory* %call_46fe2c, %struct.Memory** %MEMORY

  %loadBr_46fe2c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46fe2c = icmp eq i8 %loadBr_46fe2c, 1
  br i1 %cmpBr_46fe2c, label %block_.L_46fe65, label %block_46fe32

block_46fe32:
  ; Code: movq $0xb4bd20, %rax	 RIP: 46fe32	 Bytes: 10
  %loadMem_46fe32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fe32 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fe32)
  store %struct.Memory* %call_46fe32, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 46fe3c	 Bytes: 4
  %loadMem_46fe3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fe3c = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fe3c)
  store %struct.Memory* %call_46fe3c, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46fe40	 Bytes: 4
  %loadMem_46fe40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fe40 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fe40)
  store %struct.Memory* %call_46fe40, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46fe44	 Bytes: 3
  %loadMem_46fe44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fe44 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fe44)
  store %struct.Memory* %call_46fe44, %struct.Memory** %MEMORY

  ; Code: movl 0x30(%rax), %edi	 RIP: 46fe47	 Bytes: 3
  %loadMem_46fe47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fe47 = call %struct.Memory* @routine_movl_0x30__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fe47)
  store %struct.Memory* %call_46fe47, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 46fe4a	 Bytes: 3
  %loadMem_46fe4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fe4a = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fe4a)
  store %struct.Memory* %call_46fe4a, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 46fe4d	 Bytes: 3
  %loadMem_46fe4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fe4d = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fe4d)
  store %struct.Memory* %call_46fe4d, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 46fe50	 Bytes: 3
  %loadMem_46fe50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fe50 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fe50)
  store %struct.Memory* %call_46fe50, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %r8d	 RIP: 46fe53	 Bytes: 4
  %loadMem_46fe53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fe53 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fe53)
  store %struct.Memory* %call_46fe53, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %r9d	 RIP: 46fe57	 Bytes: 4
  %loadMem_46fe57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fe57 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fe57)
  store %struct.Memory* %call_46fe57, %struct.Memory** %MEMORY

  ; Code: callq .add_appropriate_semeai_moves	 RIP: 46fe5b	 Bytes: 5
  %loadMem1_46fe5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46fe5b = call %struct.Memory* @routine_callq_.add_appropriate_semeai_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46fe5b, i64 1701, i64 5, i64 5)
  store %struct.Memory* %call1_46fe5b, %struct.Memory** %MEMORY

  %loadMem2_46fe5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46fe5b = load i64, i64* %3
  %call2_46fe5b = call %struct.Memory* @sub_470500.add_appropriate_semeai_moves(%struct.State* %0, i64  %loadPC_46fe5b, %struct.Memory* %loadMem2_46fe5b)
  store %struct.Memory* %call2_46fe5b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47011f	 RIP: 46fe60	 Bytes: 5
  %loadMem_46fe60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fe60 = call %struct.Memory* @routine_jmpq_.L_47011f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fe60, i64 703, i64 5)
  store %struct.Memory* %call_46fe60, %struct.Memory** %MEMORY

  br label %block_.L_47011f

  ; Code: .L_46fe65:	 RIP: 46fe65	 Bytes: 0
block_.L_46fe65:

  ; Code: movq $0xb4bd20, %rax	 RIP: 46fe65	 Bytes: 10
  %loadMem_46fe65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fe65 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fe65)
  store %struct.Memory* %call_46fe65, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 46fe6f	 Bytes: 4
  %loadMem_46fe6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fe6f = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fe6f)
  store %struct.Memory* %call_46fe6f, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46fe73	 Bytes: 4
  %loadMem_46fe73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fe73 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fe73)
  store %struct.Memory* %call_46fe73, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46fe77	 Bytes: 3
  %loadMem_46fe77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fe77 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fe77)
  store %struct.Memory* %call_46fe77, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x1c(%rax)	 RIP: 46fe7a	 Bytes: 4
  %loadMem_46fe7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fe7a = call %struct.Memory* @routine_cmpl__0x2__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fe7a)
  store %struct.Memory* %call_46fe7a, %struct.Memory** %MEMORY

  ; Code: jne .L_46fed6	 RIP: 46fe7e	 Bytes: 6
  %loadMem_46fe7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fe7e = call %struct.Memory* @routine_jne_.L_46fed6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fe7e, i8* %BRANCH_TAKEN, i64 88, i64 6, i64 6)
  store %struct.Memory* %call_46fe7e, %struct.Memory** %MEMORY

  %loadBr_46fe7e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46fe7e = icmp eq i8 %loadBr_46fe7e, 1
  br i1 %cmpBr_46fe7e, label %block_.L_46fed6, label %block_46fe84

block_46fe84:
  ; Code: movq $0xb4bd20, %rax	 RIP: 46fe84	 Bytes: 10
  %loadMem_46fe84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fe84 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fe84)
  store %struct.Memory* %call_46fe84, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 46fe8e	 Bytes: 4
  %loadMem_46fe8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fe8e = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fe8e)
  store %struct.Memory* %call_46fe8e, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46fe92	 Bytes: 4
  %loadMem_46fe92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fe92 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fe92)
  store %struct.Memory* %call_46fe92, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46fe96	 Bytes: 3
  %loadMem_46fe96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fe96 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fe96)
  store %struct.Memory* %call_46fe96, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x20(%rax)	 RIP: 46fe99	 Bytes: 4
  %loadMem_46fe99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fe99 = call %struct.Memory* @routine_cmpl__0x0__0x20__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fe99)
  store %struct.Memory* %call_46fe99, %struct.Memory** %MEMORY

  ; Code: je .L_46fed6	 RIP: 46fe9d	 Bytes: 6
  %loadMem_46fe9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fe9d = call %struct.Memory* @routine_je_.L_46fed6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fe9d, i8* %BRANCH_TAKEN, i64 57, i64 6, i64 6)
  store %struct.Memory* %call_46fe9d, %struct.Memory** %MEMORY

  %loadBr_46fe9d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46fe9d = icmp eq i8 %loadBr_46fe9d, 1
  br i1 %cmpBr_46fe9d, label %block_.L_46fed6, label %block_46fea3

block_46fea3:
  ; Code: movq $0xb4bd20, %rax	 RIP: 46fea3	 Bytes: 10
  %loadMem_46fea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fea3 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fea3)
  store %struct.Memory* %call_46fea3, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 46fead	 Bytes: 4
  %loadMem_46fead = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fead = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fead)
  store %struct.Memory* %call_46fead, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46feb1	 Bytes: 4
  %loadMem_46feb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46feb1 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46feb1)
  store %struct.Memory* %call_46feb1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46feb5	 Bytes: 3
  %loadMem_46feb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46feb5 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46feb5)
  store %struct.Memory* %call_46feb5, %struct.Memory** %MEMORY

  ; Code: movl 0x20(%rax), %edi	 RIP: 46feb8	 Bytes: 3
  %loadMem_46feb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46feb8 = call %struct.Memory* @routine_movl_0x20__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46feb8)
  store %struct.Memory* %call_46feb8, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 46febb	 Bytes: 3
  %loadMem_46febb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46febb = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46febb)
  store %struct.Memory* %call_46febb, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 46febe	 Bytes: 3
  %loadMem_46febe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46febe = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46febe)
  store %struct.Memory* %call_46febe, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 46fec1	 Bytes: 3
  %loadMem_46fec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fec1 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fec1)
  store %struct.Memory* %call_46fec1, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %r8d	 RIP: 46fec4	 Bytes: 4
  %loadMem_46fec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fec4 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fec4)
  store %struct.Memory* %call_46fec4, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %r9d	 RIP: 46fec8	 Bytes: 4
  %loadMem_46fec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fec8 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fec8)
  store %struct.Memory* %call_46fec8, %struct.Memory** %MEMORY

  ; Code: callq .add_appropriate_semeai_moves	 RIP: 46fecc	 Bytes: 5
  %loadMem1_46fecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46fecc = call %struct.Memory* @routine_callq_.add_appropriate_semeai_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46fecc, i64 1588, i64 5, i64 5)
  store %struct.Memory* %call1_46fecc, %struct.Memory** %MEMORY

  %loadMem2_46fecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46fecc = load i64, i64* %3
  %call2_46fecc = call %struct.Memory* @sub_470500.add_appropriate_semeai_moves(%struct.State* %0, i64  %loadPC_46fecc, %struct.Memory* %loadMem2_46fecc)
  store %struct.Memory* %call2_46fecc, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47011a	 RIP: 46fed1	 Bytes: 5
  %loadMem_46fed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fed1 = call %struct.Memory* @routine_jmpq_.L_47011a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fed1, i64 585, i64 5)
  store %struct.Memory* %call_46fed1, %struct.Memory** %MEMORY

  br label %block_.L_47011a

  ; Code: .L_46fed6:	 RIP: 46fed6	 Bytes: 0
block_.L_46fed6:

  ; Code: cmpl $0x1, -0x14(%rbp)	 RIP: 46fed6	 Bytes: 4
  %loadMem_46fed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fed6 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fed6)
  store %struct.Memory* %call_46fed6, %struct.Memory** %MEMORY

  ; Code: jle .L_46ffe1	 RIP: 46feda	 Bytes: 6
  %loadMem_46feda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46feda = call %struct.Memory* @routine_jle_.L_46ffe1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46feda, i8* %BRANCH_TAKEN, i64 263, i64 6, i64 6)
  store %struct.Memory* %call_46feda, %struct.Memory** %MEMORY

  %loadBr_46feda = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46feda = icmp eq i8 %loadBr_46feda, 1
  br i1 %cmpBr_46feda, label %block_.L_46ffe1, label %block_46fee0

block_46fee0:
  ; Code: movq $0xb4bd20, %rax	 RIP: 46fee0	 Bytes: 10
  %loadMem_46fee0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fee0 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fee0)
  store %struct.Memory* %call_46fee0, %struct.Memory** %MEMORY

  ; Code: movq 0xab0fe0, %rcx	 RIP: 46feea	 Bytes: 8
  %loadMem_46feea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46feea = call %struct.Memory* @routine_movq_0xab0fe0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46feea)
  store %struct.Memory* %call_46feea, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 46fef2	 Bytes: 4
  %loadMem_46fef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fef2 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fef2)
  store %struct.Memory* %call_46fef2, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rdx, %rdx	 RIP: 46fef6	 Bytes: 4
  %loadMem_46fef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fef6 = call %struct.Memory* @routine_imulq__0x4c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fef6)
  store %struct.Memory* %call_46fef6, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 46fefa	 Bytes: 3
  %loadMem_46fefa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fefa = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fefa)
  store %struct.Memory* %call_46fefa, %struct.Memory** %MEMORY

  ; Code: movslq 0x4(%rax), %rax	 RIP: 46fefd	 Bytes: 4
  %loadMem_46fefd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fefd = call %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fefd)
  store %struct.Memory* %call_46fefd, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, %rax, %rax	 RIP: 46ff01	 Bytes: 4
  %loadMem_46ff01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ff01 = call %struct.Memory* @routine_imulq__0x68___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ff01)
  store %struct.Memory* %call_46ff01, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rcx	 RIP: 46ff05	 Bytes: 3
  %loadMem_46ff05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ff05 = call %struct.Memory* @routine_addq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ff05)
  store %struct.Memory* %call_46ff05, %struct.Memory** %MEMORY

  ; Code: addq $0x4c, %rcx	 RIP: 46ff08	 Bytes: 4
  %loadMem_46ff08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ff08 = call %struct.Memory* @routine_addq__0x4c___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ff08)
  store %struct.Memory* %call_46ff08, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 46ff0c	 Bytes: 3
  %loadMem_46ff0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ff0c = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ff0c)
  store %struct.Memory* %call_46ff0c, %struct.Memory** %MEMORY

  ; Code: callq .eye_move_urgency	 RIP: 46ff0f	 Bytes: 5
  %loadMem1_46ff0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46ff0f = call %struct.Memory* @routine_callq_.eye_move_urgency(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46ff0f, i64 -216431, i64 5, i64 5)
  store %struct.Memory* %call1_46ff0f, %struct.Memory** %MEMORY

  %loadMem2_46ff0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46ff0f = load i64, i64* %3
  %call2_46ff0f = call %struct.Memory* @sub_43b1a0.eye_move_urgency(%struct.State* %0, i64  %loadPC_46ff0f, %struct.Memory* %loadMem2_46ff0f)
  store %struct.Memory* %call2_46ff0f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46ff14	 Bytes: 3
  %loadMem_46ff14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ff14 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ff14)
  store %struct.Memory* %call_46ff14, %struct.Memory** %MEMORY

  ; Code: jle .L_46ff5e	 RIP: 46ff17	 Bytes: 6
  %loadMem_46ff17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ff17 = call %struct.Memory* @routine_jle_.L_46ff5e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ff17, i8* %BRANCH_TAKEN, i64 71, i64 6, i64 6)
  store %struct.Memory* %call_46ff17, %struct.Memory** %MEMORY

  %loadBr_46ff17 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46ff17 = icmp eq i8 %loadBr_46ff17, 1
  br i1 %cmpBr_46ff17, label %block_.L_46ff5e, label %block_46ff1d

block_46ff1d:
  ; Code: movq $0xb4bd20, %rax	 RIP: 46ff1d	 Bytes: 10
  %loadMem_46ff1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ff1d = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ff1d)
  store %struct.Memory* %call_46ff1d, %struct.Memory** %MEMORY

  ; Code: movq 0xab0fe0, %rcx	 RIP: 46ff27	 Bytes: 8
  %loadMem_46ff27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ff27 = call %struct.Memory* @routine_movq_0xab0fe0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ff27)
  store %struct.Memory* %call_46ff27, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 46ff2f	 Bytes: 4
  %loadMem_46ff2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ff2f = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ff2f)
  store %struct.Memory* %call_46ff2f, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rdx, %rdx	 RIP: 46ff33	 Bytes: 4
  %loadMem_46ff33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ff33 = call %struct.Memory* @routine_imulq__0x4c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ff33)
  store %struct.Memory* %call_46ff33, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 46ff37	 Bytes: 3
  %loadMem_46ff37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ff37 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ff37)
  store %struct.Memory* %call_46ff37, %struct.Memory** %MEMORY

  ; Code: movslq 0x4(%rax), %rax	 RIP: 46ff3a	 Bytes: 4
  %loadMem_46ff3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ff3a = call %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ff3a)
  store %struct.Memory* %call_46ff3a, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, %rax, %rax	 RIP: 46ff3e	 Bytes: 4
  %loadMem_46ff3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ff3e = call %struct.Memory* @routine_imulq__0x68___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ff3e)
  store %struct.Memory* %call_46ff3e, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rcx	 RIP: 46ff42	 Bytes: 3
  %loadMem_46ff42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ff42 = call %struct.Memory* @routine_addq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ff42)
  store %struct.Memory* %call_46ff42, %struct.Memory** %MEMORY

  ; Code: movl 0x50(%rcx), %edi	 RIP: 46ff45	 Bytes: 3
  %loadMem_46ff45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ff45 = call %struct.Memory* @routine_movl_0x50__rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ff45)
  store %struct.Memory* %call_46ff45, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 46ff48	 Bytes: 3
  %loadMem_46ff48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ff48 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ff48)
  store %struct.Memory* %call_46ff48, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 46ff4b	 Bytes: 3
  %loadMem_46ff4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ff4b = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ff4b)
  store %struct.Memory* %call_46ff4b, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 46ff4e	 Bytes: 3
  %loadMem_46ff4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ff4e = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ff4e)
  store %struct.Memory* %call_46ff4e, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %r8d	 RIP: 46ff51	 Bytes: 4
  %loadMem_46ff51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ff51 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ff51)
  store %struct.Memory* %call_46ff51, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %r9d	 RIP: 46ff55	 Bytes: 4
  %loadMem_46ff55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ff55 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ff55)
  store %struct.Memory* %call_46ff55, %struct.Memory** %MEMORY

  ; Code: callq .add_appropriate_semeai_moves	 RIP: 46ff59	 Bytes: 5
  %loadMem1_46ff59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46ff59 = call %struct.Memory* @routine_callq_.add_appropriate_semeai_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46ff59, i64 1447, i64 5, i64 5)
  store %struct.Memory* %call1_46ff59, %struct.Memory** %MEMORY

  %loadMem2_46ff59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46ff59 = load i64, i64* %3
  %call2_46ff59 = call %struct.Memory* @sub_470500.add_appropriate_semeai_moves(%struct.State* %0, i64  %loadPC_46ff59, %struct.Memory* %loadMem2_46ff59)
  store %struct.Memory* %call2_46ff59, %struct.Memory** %MEMORY

  ; Code: .L_46ff5e:	 RIP: 46ff5e	 Bytes: 0
  br label %block_.L_46ff5e
block_.L_46ff5e:

  ; Code: movq $0xb4bd20, %rax	 RIP: 46ff5e	 Bytes: 10
  %loadMem_46ff5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ff5e = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ff5e)
  store %struct.Memory* %call_46ff5e, %struct.Memory** %MEMORY

  ; Code: movq 0xab0fe0, %rcx	 RIP: 46ff68	 Bytes: 8
  %loadMem_46ff68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ff68 = call %struct.Memory* @routine_movq_0xab0fe0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ff68)
  store %struct.Memory* %call_46ff68, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 46ff70	 Bytes: 4
  %loadMem_46ff70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ff70 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ff70)
  store %struct.Memory* %call_46ff70, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rdx, %rdx	 RIP: 46ff74	 Bytes: 4
  %loadMem_46ff74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ff74 = call %struct.Memory* @routine_imulq__0x4c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ff74)
  store %struct.Memory* %call_46ff74, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 46ff78	 Bytes: 3
  %loadMem_46ff78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ff78 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ff78)
  store %struct.Memory* %call_46ff78, %struct.Memory** %MEMORY

  ; Code: movslq 0x4(%rax), %rax	 RIP: 46ff7b	 Bytes: 4
  %loadMem_46ff7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ff7b = call %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ff7b)
  store %struct.Memory* %call_46ff7b, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, %rax, %rax	 RIP: 46ff7f	 Bytes: 4
  %loadMem_46ff7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ff7f = call %struct.Memory* @routine_imulq__0x68___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ff7f)
  store %struct.Memory* %call_46ff7f, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rcx	 RIP: 46ff83	 Bytes: 3
  %loadMem_46ff83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ff83 = call %struct.Memory* @routine_addq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ff83)
  store %struct.Memory* %call_46ff83, %struct.Memory** %MEMORY

  ; Code: addq $0x4c, %rcx	 RIP: 46ff86	 Bytes: 4
  %loadMem_46ff86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ff86 = call %struct.Memory* @routine_addq__0x4c___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ff86)
  store %struct.Memory* %call_46ff86, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 46ff8a	 Bytes: 3
  %loadMem_46ff8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ff8a = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ff8a)
  store %struct.Memory* %call_46ff8a, %struct.Memory** %MEMORY

  ; Code: callq .eye_move_urgency	 RIP: 46ff8d	 Bytes: 5
  %loadMem1_46ff8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46ff8d = call %struct.Memory* @routine_callq_.eye_move_urgency(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46ff8d, i64 -216557, i64 5, i64 5)
  store %struct.Memory* %call1_46ff8d, %struct.Memory** %MEMORY

  %loadMem2_46ff8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46ff8d = load i64, i64* %3
  %call2_46ff8d = call %struct.Memory* @sub_43b1a0.eye_move_urgency(%struct.State* %0, i64  %loadPC_46ff8d, %struct.Memory* %loadMem2_46ff8d)
  store %struct.Memory* %call2_46ff8d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46ff92	 Bytes: 3
  %loadMem_46ff92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ff92 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ff92)
  store %struct.Memory* %call_46ff92, %struct.Memory** %MEMORY

  ; Code: je .L_46ffdc	 RIP: 46ff95	 Bytes: 6
  %loadMem_46ff95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ff95 = call %struct.Memory* @routine_je_.L_46ffdc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ff95, i8* %BRANCH_TAKEN, i64 71, i64 6, i64 6)
  store %struct.Memory* %call_46ff95, %struct.Memory** %MEMORY

  %loadBr_46ff95 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46ff95 = icmp eq i8 %loadBr_46ff95, 1
  br i1 %cmpBr_46ff95, label %block_.L_46ffdc, label %block_46ff9b

block_46ff9b:
  ; Code: movq $0xb4bd20, %rax	 RIP: 46ff9b	 Bytes: 10
  %loadMem_46ff9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ff9b = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ff9b)
  store %struct.Memory* %call_46ff9b, %struct.Memory** %MEMORY

  ; Code: movq 0xab0fe0, %rcx	 RIP: 46ffa5	 Bytes: 8
  %loadMem_46ffa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ffa5 = call %struct.Memory* @routine_movq_0xab0fe0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ffa5)
  store %struct.Memory* %call_46ffa5, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 46ffad	 Bytes: 4
  %loadMem_46ffad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ffad = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ffad)
  store %struct.Memory* %call_46ffad, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rdx, %rdx	 RIP: 46ffb1	 Bytes: 4
  %loadMem_46ffb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ffb1 = call %struct.Memory* @routine_imulq__0x4c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ffb1)
  store %struct.Memory* %call_46ffb1, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 46ffb5	 Bytes: 3
  %loadMem_46ffb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ffb5 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ffb5)
  store %struct.Memory* %call_46ffb5, %struct.Memory** %MEMORY

  ; Code: movslq 0x4(%rax), %rax	 RIP: 46ffb8	 Bytes: 4
  %loadMem_46ffb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ffb8 = call %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ffb8)
  store %struct.Memory* %call_46ffb8, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, %rax, %rax	 RIP: 46ffbc	 Bytes: 4
  %loadMem_46ffbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ffbc = call %struct.Memory* @routine_imulq__0x68___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ffbc)
  store %struct.Memory* %call_46ffbc, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rcx	 RIP: 46ffc0	 Bytes: 3
  %loadMem_46ffc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ffc0 = call %struct.Memory* @routine_addq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ffc0)
  store %struct.Memory* %call_46ffc0, %struct.Memory** %MEMORY

  ; Code: movl 0x50(%rcx), %edi	 RIP: 46ffc3	 Bytes: 3
  %loadMem_46ffc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ffc3 = call %struct.Memory* @routine_movl_0x50__rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ffc3)
  store %struct.Memory* %call_46ffc3, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 46ffc6	 Bytes: 3
  %loadMem_46ffc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ffc6 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ffc6)
  store %struct.Memory* %call_46ffc6, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 46ffc9	 Bytes: 3
  %loadMem_46ffc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ffc9 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ffc9)
  store %struct.Memory* %call_46ffc9, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 46ffcc	 Bytes: 3
  %loadMem_46ffcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ffcc = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ffcc)
  store %struct.Memory* %call_46ffcc, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %r8d	 RIP: 46ffcf	 Bytes: 4
  %loadMem_46ffcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ffcf = call %struct.Memory* @routine_movl_MINUS0x28__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ffcf)
  store %struct.Memory* %call_46ffcf, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %r9d	 RIP: 46ffd3	 Bytes: 4
  %loadMem_46ffd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ffd3 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ffd3)
  store %struct.Memory* %call_46ffd3, %struct.Memory** %MEMORY

  ; Code: callq .add_appropriate_semeai_moves	 RIP: 46ffd7	 Bytes: 5
  %loadMem1_46ffd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46ffd7 = call %struct.Memory* @routine_callq_.add_appropriate_semeai_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46ffd7, i64 1321, i64 5, i64 5)
  store %struct.Memory* %call1_46ffd7, %struct.Memory** %MEMORY

  %loadMem2_46ffd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46ffd7 = load i64, i64* %3
  %call2_46ffd7 = call %struct.Memory* @sub_470500.add_appropriate_semeai_moves(%struct.State* %0, i64  %loadPC_46ffd7, %struct.Memory* %loadMem2_46ffd7)
  store %struct.Memory* %call2_46ffd7, %struct.Memory** %MEMORY

  ; Code: .L_46ffdc:	 RIP: 46ffdc	 Bytes: 0
  br label %block_.L_46ffdc
block_.L_46ffdc:

  ; Code: jmpq .L_470115	 RIP: 46ffdc	 Bytes: 5
  %loadMem_46ffdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ffdc = call %struct.Memory* @routine_jmpq_.L_470115(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ffdc, i64 313, i64 5)
  store %struct.Memory* %call_46ffdc, %struct.Memory** %MEMORY

  br label %block_.L_470115

  ; Code: .L_46ffe1:	 RIP: 46ffe1	 Bytes: 0
block_.L_46ffe1:

  ; Code: movl $0x15, -0x34(%rbp)	 RIP: 46ffe1	 Bytes: 7
  %loadMem_46ffe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ffe1 = call %struct.Memory* @routine_movl__0x15__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ffe1)
  store %struct.Memory* %call_46ffe1, %struct.Memory** %MEMORY

  ; Code: .L_46ffe8:	 RIP: 46ffe8	 Bytes: 0
  br label %block_.L_46ffe8
block_.L_46ffe8:

  ; Code: cmpl $0x190, -0x34(%rbp)	 RIP: 46ffe8	 Bytes: 7
  %loadMem_46ffe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ffe8 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ffe8)
  store %struct.Memory* %call_46ffe8, %struct.Memory** %MEMORY

  ; Code: jge .L_470081	 RIP: 46ffef	 Bytes: 6
  %loadMem_46ffef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ffef = call %struct.Memory* @routine_jge_.L_470081(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ffef, i8* %BRANCH_TAKEN, i64 146, i64 6, i64 6)
  store %struct.Memory* %call_46ffef, %struct.Memory** %MEMORY

  %loadBr_46ffef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46ffef = icmp eq i8 %loadBr_46ffef, 1
  br i1 %cmpBr_46ffef, label %block_.L_470081, label %block_46fff5

block_46fff5:
  ; Code: movslq -0x34(%rbp), %rax	 RIP: 46fff5	 Bytes: 4
  %loadMem_46fff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fff5 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fff5)
  store %struct.Memory* %call_46fff5, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 46fff9	 Bytes: 8
  %loadMem_46fff9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46fff9 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46fff9)
  store %struct.Memory* %call_46fff9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 470001	 Bytes: 3
  %loadMem_470001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_470001 = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_470001)
  store %struct.Memory* %call_470001, %struct.Memory** %MEMORY

  ; Code: jne .L_47000f	 RIP: 470004	 Bytes: 6
  %loadMem_470004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_470004 = call %struct.Memory* @routine_jne_.L_47000f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_470004, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_470004, %struct.Memory** %MEMORY

  %loadBr_470004 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_470004 = icmp eq i8 %loadBr_470004, 1
  br i1 %cmpBr_470004, label %block_.L_47000f, label %block_47000a

block_47000a:
  ; Code: jmpq .L_470073	 RIP: 47000a	 Bytes: 5
  %loadMem_47000a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47000a = call %struct.Memory* @routine_jmpq_.L_470073(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47000a, i64 105, i64 5)
  store %struct.Memory* %call_47000a, %struct.Memory** %MEMORY

  br label %block_.L_470073

  ; Code: .L_47000f:	 RIP: 47000f	 Bytes: 0
block_.L_47000f:

  ; Code: movl -0x34(%rbp), %edi	 RIP: 47000f	 Bytes: 3
  %loadMem_47000f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47000f = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47000f)
  store %struct.Memory* %call_47000f, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 470012	 Bytes: 3
  %loadMem_470012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_470012 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_470012)
  store %struct.Memory* %call_470012, %struct.Memory** %MEMORY

  ; Code: callq .liberty_of_dragon	 RIP: 470015	 Bytes: 5
  %loadMem1_470015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_470015 = call %struct.Memory* @routine_callq_.liberty_of_dragon(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_470015, i64 283, i64 5, i64 5)
  store %struct.Memory* %call1_470015, %struct.Memory** %MEMORY

  %loadMem2_470015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_470015 = load i64, i64* %3
  %call2_470015 = call %struct.Memory* @sub_470130.liberty_of_dragon(%struct.State* %0, i64  %loadPC_470015, %struct.Memory* %loadMem2_470015)
  store %struct.Memory* %call2_470015, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47001a	 Bytes: 3
  %loadMem_47001a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47001a = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47001a)
  store %struct.Memory* %call_47001a, %struct.Memory** %MEMORY

  ; Code: je .L_47006e	 RIP: 47001d	 Bytes: 6
  %loadMem_47001d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47001d = call %struct.Memory* @routine_je_.L_47006e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47001d, i8* %BRANCH_TAKEN, i64 81, i64 6, i64 6)
  store %struct.Memory* %call_47001d, %struct.Memory** %MEMORY

  %loadBr_47001d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47001d = icmp eq i8 %loadBr_47001d, 1
  br i1 %cmpBr_47001d, label %block_.L_47006e, label %block_470023

block_470023:
  ; Code: movl -0x34(%rbp), %edi	 RIP: 470023	 Bytes: 3
  %loadMem_470023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_470023 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_470023)
  store %struct.Memory* %call_470023, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 470026	 Bytes: 3
  %loadMem_470026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_470026 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_470026)
  store %struct.Memory* %call_470026, %struct.Memory** %MEMORY

  ; Code: callq .liberty_of_dragon	 RIP: 470029	 Bytes: 5
  %loadMem1_470029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_470029 = call %struct.Memory* @routine_callq_.liberty_of_dragon(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_470029, i64 263, i64 5, i64 5)
  store %struct.Memory* %call1_470029, %struct.Memory** %MEMORY

  %loadMem2_470029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_470029 = load i64, i64* %3
  %call2_470029 = call %struct.Memory* @sub_470130.liberty_of_dragon(%struct.State* %0, i64  %loadPC_470029, %struct.Memory* %loadMem2_470029)
  store %struct.Memory* %call2_470029, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47002e	 Bytes: 3
  %loadMem_47002e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47002e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47002e)
  store %struct.Memory* %call_47002e, %struct.Memory** %MEMORY

  ; Code: jne .L_47006e	 RIP: 470031	 Bytes: 6
  %loadMem_470031 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_470031 = call %struct.Memory* @routine_jne_.L_47006e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_470031, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_470031, %struct.Memory** %MEMORY

  %loadBr_470031 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_470031 = icmp eq i8 %loadBr_470031, 1
  br i1 %cmpBr_470031, label %block_.L_47006e, label %block_470037

block_470037:
  ; Code: movl -0x34(%rbp), %edi	 RIP: 470037	 Bytes: 3
  %loadMem_470037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_470037 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_470037)
  store %struct.Memory* %call_470037, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %esi	 RIP: 47003a	 Bytes: 3
  %loadMem_47003a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47003a = call %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47003a)
  store %struct.Memory* %call_47003a, %struct.Memory** %MEMORY

  ; Code: callq .safe_move	 RIP: 47003d	 Bytes: 5
  %loadMem1_47003d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47003d = call %struct.Memory* @routine_callq_.safe_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47003d, i64 -17421, i64 5, i64 5)
  store %struct.Memory* %call1_47003d, %struct.Memory** %MEMORY

  %loadMem2_47003d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47003d = load i64, i64* %3
  %call2_47003d = call %struct.Memory* @sub_46bc30.safe_move(%struct.State* %0, i64  %loadPC_47003d, %struct.Memory* %loadMem2_47003d)
  store %struct.Memory* %call2_47003d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 470042	 Bytes: 3
  %loadMem_470042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_470042 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_470042)
  store %struct.Memory* %call_470042, %struct.Memory** %MEMORY

  ; Code: je .L_47006e	 RIP: 470045	 Bytes: 6
  %loadMem_470045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_470045 = call %struct.Memory* @routine_je_.L_47006e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_470045, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_470045, %struct.Memory** %MEMORY

  %loadBr_470045 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_470045 = icmp eq i8 %loadBr_470045, 1
  br i1 %cmpBr_470045, label %block_.L_47006e, label %block_47004b

block_47004b:
  ; Code: movl -0x34(%rbp), %edi	 RIP: 47004b	 Bytes: 3
  %loadMem_47004b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47004b = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47004b)
  store %struct.Memory* %call_47004b, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 47004e	 Bytes: 3
  %loadMem_47004e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47004e = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47004e)
  store %struct.Memory* %call_47004e, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 470051	 Bytes: 3
  %loadMem_470051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_470051 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_470051)
  store %struct.Memory* %call_470051, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 470054	 Bytes: 3
  %loadMem_470054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_470054 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_470054)
  store %struct.Memory* %call_470054, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %r8d	 RIP: 470057	 Bytes: 4
  %loadMem_470057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_470057 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_470057)
  store %struct.Memory* %call_470057, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %r9d	 RIP: 47005b	 Bytes: 4
  %loadMem_47005b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47005b = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47005b)
  store %struct.Memory* %call_47005b, %struct.Memory** %MEMORY

  ; Code: callq .add_appropriate_semeai_moves	 RIP: 47005f	 Bytes: 5
  %loadMem1_47005f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47005f = call %struct.Memory* @routine_callq_.add_appropriate_semeai_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47005f, i64 1185, i64 5, i64 5)
  store %struct.Memory* %call1_47005f, %struct.Memory** %MEMORY

  %loadMem2_47005f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47005f = load i64, i64* %3
  %call2_47005f = call %struct.Memory* @sub_470500.add_appropriate_semeai_moves(%struct.State* %0, i64  %loadPC_47005f, %struct.Memory* %loadMem2_47005f)
  store %struct.Memory* %call2_47005f, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x2dc(%rbp)	 RIP: 470064	 Bytes: 10
  %loadMem_470064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_470064 = call %struct.Memory* @routine_movl__0x1__MINUS0x2dc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_470064)
  store %struct.Memory* %call_470064, %struct.Memory** %MEMORY

  ; Code: .L_47006e:	 RIP: 47006e	 Bytes: 0
  br label %block_.L_47006e
block_.L_47006e:

  ; Code: jmpq .L_470073	 RIP: 47006e	 Bytes: 5
  %loadMem_47006e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47006e = call %struct.Memory* @routine_jmpq_.L_470073(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47006e, i64 5, i64 5)
  store %struct.Memory* %call_47006e, %struct.Memory** %MEMORY

  br label %block_.L_470073

  ; Code: .L_470073:	 RIP: 470073	 Bytes: 0
block_.L_470073:

  ; Code: movl -0x34(%rbp), %eax	 RIP: 470073	 Bytes: 3
  %loadMem_470073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_470073 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_470073)
  store %struct.Memory* %call_470073, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 470076	 Bytes: 3
  %loadMem_470076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_470076 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_470076)
  store %struct.Memory* %call_470076, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 470079	 Bytes: 3
  %loadMem_470079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_470079 = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_470079)
  store %struct.Memory* %call_470079, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46ffe8	 RIP: 47007c	 Bytes: 5
  %loadMem_47007c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47007c = call %struct.Memory* @routine_jmpq_.L_46ffe8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47007c, i64 -148, i64 5)
  store %struct.Memory* %call_47007c, %struct.Memory** %MEMORY

  br label %block_.L_46ffe8

  ; Code: .L_470081:	 RIP: 470081	 Bytes: 0
block_.L_470081:

  ; Code: cmpl $0x0, -0x2dc(%rbp)	 RIP: 470081	 Bytes: 7
  %loadMem_470081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_470081 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x2dc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_470081)
  store %struct.Memory* %call_470081, %struct.Memory** %MEMORY

  ; Code: jne .L_470110	 RIP: 470088	 Bytes: 6
  %loadMem_470088 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_470088 = call %struct.Memory* @routine_jne_.L_470110(%struct.State* %0, i64  0, %struct.Memory* %loadMem_470088, i8* %BRANCH_TAKEN, i64 136, i64 6, i64 6)
  store %struct.Memory* %call_470088, %struct.Memory** %MEMORY

  %loadBr_470088 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_470088 = icmp eq i8 %loadBr_470088, 1
  br i1 %cmpBr_470088, label %block_.L_470110, label %block_47008e

block_47008e:
  ; Code: movl $0x15, -0x34(%rbp)	 RIP: 47008e	 Bytes: 7
  %loadMem_47008e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47008e = call %struct.Memory* @routine_movl__0x15__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47008e)
  store %struct.Memory* %call_47008e, %struct.Memory** %MEMORY

  ; Code: .L_470095:	 RIP: 470095	 Bytes: 0
  br label %block_.L_470095
block_.L_470095:

  ; Code: cmpl $0x190, -0x34(%rbp)	 RIP: 470095	 Bytes: 7
  %loadMem_470095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_470095 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_470095)
  store %struct.Memory* %call_470095, %struct.Memory** %MEMORY

  ; Code: jge .L_47010b	 RIP: 47009c	 Bytes: 6
  %loadMem_47009c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47009c = call %struct.Memory* @routine_jge_.L_47010b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47009c, i8* %BRANCH_TAKEN, i64 111, i64 6, i64 6)
  store %struct.Memory* %call_47009c, %struct.Memory** %MEMORY

  %loadBr_47009c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47009c = icmp eq i8 %loadBr_47009c, 1
  br i1 %cmpBr_47009c, label %block_.L_47010b, label %block_4700a2

block_4700a2:
  ; Code: movslq -0x34(%rbp), %rax	 RIP: 4700a2	 Bytes: 4
  %loadMem_4700a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4700a2 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4700a2)
  store %struct.Memory* %call_4700a2, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 4700a6	 Bytes: 8
  %loadMem_4700a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4700a6 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4700a6)
  store %struct.Memory* %call_4700a6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 4700ae	 Bytes: 3
  %loadMem_4700ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4700ae = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4700ae)
  store %struct.Memory* %call_4700ae, %struct.Memory** %MEMORY

  ; Code: je .L_4700f8	 RIP: 4700b1	 Bytes: 6
  %loadMem_4700b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4700b1 = call %struct.Memory* @routine_je_.L_4700f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4700b1, i8* %BRANCH_TAKEN, i64 71, i64 6, i64 6)
  store %struct.Memory* %call_4700b1, %struct.Memory** %MEMORY

  %loadBr_4700b1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4700b1 = icmp eq i8 %loadBr_4700b1, 1
  br i1 %cmpBr_4700b1, label %block_.L_4700f8, label %block_4700b7

block_4700b7:
  ; Code: movl -0x34(%rbp), %edi	 RIP: 4700b7	 Bytes: 3
  %loadMem_4700b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4700b7 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4700b7)
  store %struct.Memory* %call_4700b7, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 4700ba	 Bytes: 3
  %loadMem_4700ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4700ba = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4700ba)
  store %struct.Memory* %call_4700ba, %struct.Memory** %MEMORY

  ; Code: callq .liberty_of_dragon	 RIP: 4700bd	 Bytes: 5
  %loadMem1_4700bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4700bd = call %struct.Memory* @routine_callq_.liberty_of_dragon(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4700bd, i64 115, i64 5, i64 5)
  store %struct.Memory* %call1_4700bd, %struct.Memory** %MEMORY

  %loadMem2_4700bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4700bd = load i64, i64* %3
  %call2_4700bd = call %struct.Memory* @sub_470130.liberty_of_dragon(%struct.State* %0, i64  %loadPC_4700bd, %struct.Memory* %loadMem2_4700bd)
  store %struct.Memory* %call2_4700bd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4700c2	 Bytes: 3
  %loadMem_4700c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4700c2 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4700c2)
  store %struct.Memory* %call_4700c2, %struct.Memory** %MEMORY

  ; Code: je .L_4700f8	 RIP: 4700c5	 Bytes: 6
  %loadMem_4700c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4700c5 = call %struct.Memory* @routine_je_.L_4700f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4700c5, i8* %BRANCH_TAKEN, i64 51, i64 6, i64 6)
  store %struct.Memory* %call_4700c5, %struct.Memory** %MEMORY

  %loadBr_4700c5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4700c5 = icmp eq i8 %loadBr_4700c5, 1
  br i1 %cmpBr_4700c5, label %block_.L_4700f8, label %block_4700cb

block_4700cb:
  ; Code: movl -0x34(%rbp), %edi	 RIP: 4700cb	 Bytes: 3
  %loadMem_4700cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4700cb = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4700cb)
  store %struct.Memory* %call_4700cb, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %esi	 RIP: 4700ce	 Bytes: 3
  %loadMem_4700ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4700ce = call %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4700ce)
  store %struct.Memory* %call_4700ce, %struct.Memory** %MEMORY

  ; Code: callq .safe_move	 RIP: 4700d1	 Bytes: 5
  %loadMem1_4700d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4700d1 = call %struct.Memory* @routine_callq_.safe_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4700d1, i64 -17569, i64 5, i64 5)
  store %struct.Memory* %call1_4700d1, %struct.Memory** %MEMORY

  %loadMem2_4700d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4700d1 = load i64, i64* %3
  %call2_4700d1 = call %struct.Memory* @sub_46bc30.safe_move(%struct.State* %0, i64  %loadPC_4700d1, %struct.Memory* %loadMem2_4700d1)
  store %struct.Memory* %call2_4700d1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4700d6	 Bytes: 3
  %loadMem_4700d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4700d6 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4700d6)
  store %struct.Memory* %call_4700d6, %struct.Memory** %MEMORY

  ; Code: je .L_4700f8	 RIP: 4700d9	 Bytes: 6
  %loadMem_4700d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4700d9 = call %struct.Memory* @routine_je_.L_4700f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4700d9, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_4700d9, %struct.Memory** %MEMORY

  %loadBr_4700d9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4700d9 = icmp eq i8 %loadBr_4700d9, 1
  br i1 %cmpBr_4700d9, label %block_.L_4700f8, label %block_4700df

block_4700df:
  ; Code: movl -0x34(%rbp), %edi	 RIP: 4700df	 Bytes: 3
  %loadMem_4700df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4700df = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4700df)
  store %struct.Memory* %call_4700df, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 4700e2	 Bytes: 3
  %loadMem_4700e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4700e2 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4700e2)
  store %struct.Memory* %call_4700e2, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 4700e5	 Bytes: 3
  %loadMem_4700e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4700e5 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4700e5)
  store %struct.Memory* %call_4700e5, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 4700e8	 Bytes: 3
  %loadMem_4700e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4700e8 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4700e8)
  store %struct.Memory* %call_4700e8, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %r8d	 RIP: 4700eb	 Bytes: 4
  %loadMem_4700eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4700eb = call %struct.Memory* @routine_movl_MINUS0x28__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4700eb)
  store %struct.Memory* %call_4700eb, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %r9d	 RIP: 4700ef	 Bytes: 4
  %loadMem_4700ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4700ef = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4700ef)
  store %struct.Memory* %call_4700ef, %struct.Memory** %MEMORY

  ; Code: callq .add_appropriate_semeai_moves	 RIP: 4700f3	 Bytes: 5
  %loadMem1_4700f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4700f3 = call %struct.Memory* @routine_callq_.add_appropriate_semeai_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4700f3, i64 1037, i64 5, i64 5)
  store %struct.Memory* %call1_4700f3, %struct.Memory** %MEMORY

  %loadMem2_4700f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4700f3 = load i64, i64* %3
  %call2_4700f3 = call %struct.Memory* @sub_470500.add_appropriate_semeai_moves(%struct.State* %0, i64  %loadPC_4700f3, %struct.Memory* %loadMem2_4700f3)
  store %struct.Memory* %call2_4700f3, %struct.Memory** %MEMORY

  ; Code: .L_4700f8:	 RIP: 4700f8	 Bytes: 0
  br label %block_.L_4700f8
block_.L_4700f8:

  ; Code: jmpq .L_4700fd	 RIP: 4700f8	 Bytes: 5
  %loadMem_4700f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4700f8 = call %struct.Memory* @routine_jmpq_.L_4700fd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4700f8, i64 5, i64 5)
  store %struct.Memory* %call_4700f8, %struct.Memory** %MEMORY

  br label %block_.L_4700fd

  ; Code: .L_4700fd:	 RIP: 4700fd	 Bytes: 0
block_.L_4700fd:

  ; Code: movl -0x34(%rbp), %eax	 RIP: 4700fd	 Bytes: 3
  %loadMem_4700fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4700fd = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4700fd)
  store %struct.Memory* %call_4700fd, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 470100	 Bytes: 3
  %loadMem_470100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_470100 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_470100)
  store %struct.Memory* %call_470100, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 470103	 Bytes: 3
  %loadMem_470103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_470103 = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_470103)
  store %struct.Memory* %call_470103, %struct.Memory** %MEMORY

  ; Code: jmpq .L_470095	 RIP: 470106	 Bytes: 5
  %loadMem_470106 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_470106 = call %struct.Memory* @routine_jmpq_.L_470095(%struct.State* %0, i64  0, %struct.Memory* %loadMem_470106, i64 -113, i64 5)
  store %struct.Memory* %call_470106, %struct.Memory** %MEMORY

  br label %block_.L_470095

  ; Code: .L_47010b:	 RIP: 47010b	 Bytes: 0
block_.L_47010b:

  ; Code: jmpq .L_470110	 RIP: 47010b	 Bytes: 5
  %loadMem_47010b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47010b = call %struct.Memory* @routine_jmpq_.L_470110(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47010b, i64 5, i64 5)
  store %struct.Memory* %call_47010b, %struct.Memory** %MEMORY

  br label %block_.L_470110

  ; Code: .L_470110:	 RIP: 470110	 Bytes: 0
block_.L_470110:

  ; Code: jmpq .L_470115	 RIP: 470110	 Bytes: 5
  %loadMem_470110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_470110 = call %struct.Memory* @routine_jmpq_.L_470115(%struct.State* %0, i64  0, %struct.Memory* %loadMem_470110, i64 5, i64 5)
  store %struct.Memory* %call_470110, %struct.Memory** %MEMORY

  br label %block_.L_470115

  ; Code: .L_470115:	 RIP: 470115	 Bytes: 0
block_.L_470115:

  ; Code: jmpq .L_47011a	 RIP: 470115	 Bytes: 5
  %loadMem_470115 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_470115 = call %struct.Memory* @routine_jmpq_.L_47011a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_470115, i64 5, i64 5)
  store %struct.Memory* %call_470115, %struct.Memory** %MEMORY

  br label %block_.L_47011a

  ; Code: .L_47011a:	 RIP: 47011a	 Bytes: 0
block_.L_47011a:

  ; Code: jmpq .L_47011f	 RIP: 47011a	 Bytes: 5
  %loadMem_47011a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47011a = call %struct.Memory* @routine_jmpq_.L_47011f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47011a, i64 5, i64 5)
  store %struct.Memory* %call_47011a, %struct.Memory** %MEMORY

  br label %block_.L_47011f

  ; Code: .L_47011f:	 RIP: 47011f	 Bytes: 0
block_.L_47011f:

  ; Code: jmpq .L_470124	 RIP: 47011f	 Bytes: 5
  %loadMem_47011f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47011f = call %struct.Memory* @routine_jmpq_.L_470124(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47011f, i64 5, i64 5)
  store %struct.Memory* %call_47011f, %struct.Memory** %MEMORY

  br label %block_.L_470124

  ; Code: .L_470124:	 RIP: 470124	 Bytes: 0
block_.L_470124:

  ; Code: addq $0x300, %rsp	 RIP: 470124	 Bytes: 7
  %loadMem_470124 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_470124 = call %struct.Memory* @routine_addq__0x300___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_470124)
  store %struct.Memory* %call_470124, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 47012b	 Bytes: 1
  %loadMem_47012b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47012b = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47012b)
  store %struct.Memory* %call_47012b, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 47012c	 Bytes: 1
  %loadMem_47012c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47012c = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47012c)
  store %struct.Memory* %call_47012c, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_47012c
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

define %struct.Memory* @routine_subq__0x300___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 768)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x1__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x1__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 20
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = zext i8 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__esi__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x3__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x3__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0xab0f24___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0xab0f24_type* @G_0xab0f24 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = and i64 %4, %3
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

define %struct.Memory* @routine_andl__0x40___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 64)
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

define %struct.Memory* @routine_cmpl__0x0___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %ESI
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

define %struct.Memory* @routine_jne_.L_46ee47(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_46ee64(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x58062f___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x58062f_type* @G__0x58062f to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__0x0___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 0)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_callq_.gprintf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__eax__MINUS0x2e0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 736
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0xb4bd20_type* @G__0xb4bd20 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4
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

define %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 76)
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

define %struct.Memory* @routine_cmpl__0x2__0x1c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 28
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_46efa7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_addq__rcx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x20__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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

define %struct.Memory* @routine_cmpl_0x30__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 48
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_46eed6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_470124(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_cmpl__0x0__0x30__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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

define %struct.Memory* @routine_je_.L_46efa2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_xorl__eax___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__eax___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__0xb4bd20___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0xb4bd20_type* @G__0xb4bd20 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0x4c___rsi___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 76)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__rsi___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x30__rcx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_callq_.owl_does_attack(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_46ef9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_movl_0x30__rax____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.add_owl_attack_move(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl_0xab0f24___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0xab0f24_type* @G_0xab0f24 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_andl__0x40___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 64)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_jne_.L_46ef61(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_46ef96(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x580658___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x580658_type* @G__0x580658 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_movl_0x30__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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






define %struct.Memory* @routine_movl__eax__MINUS0x2e4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 740
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x1__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_46efa2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_46efa7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_je_.L_46efe5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_cmpl__0x0__0x1c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 28
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_46f205(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


































define %struct.Memory* @routine_jne_.L_46f038(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_cmpl__0x0__0x20__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_46f200(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl_0x20__rcx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_callq_.owl_does_defend(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_46f1fb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_movl_0x20__rax____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.add_owl_defense_move(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_jne_.L_46f0c3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_46f0f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x580685___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x580685_type* @G__0x580685 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_movl_0x20__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__eax__MINUS0x2e8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 744
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}












define %struct.Memory* @routine_jne_.L_46f1f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x15__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 21)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x190__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 400)
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

define %struct.Memory* @routine_jge_.L_46f1bd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movslq_MINUS0x40__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jne_.L_46f145(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_46f1af(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__edx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %EDX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_46f1aa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl_MINUS0x40__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_callq_.is_same_dragon(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_je_.L_46f1aa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movslq_MINUS0x40__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl__0x2__0x1c__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 28
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_movl__0x2__0x40__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_46f11e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0xab0f24_type* @G_0xab0f24 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_andl__0x40___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 64)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jne_.L_46f1d5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_46f1ef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x5806b3___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x5806b3_type* @G__0x5806b3 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x2ec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 748
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_46f1f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jmpq_.L_46f200(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_46f205(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_46f243(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_jne_.L_46f227(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_46f23e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x5806e5___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x5806e5_type* @G__0x5806e5 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x2f0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 752
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl__0x15__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 52
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 21)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x190__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 52
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 400)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_46f400(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_46f271(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_46f3f2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0xb0eff0_type* @G__0xb0eff0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 380)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_cmpl_MINUS0x34__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 52
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_46f3ed(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_cmpl__0x5__0x64__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 100
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 4
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_46f2f9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 8
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_46f3e8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x2d0__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 720
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.chainlinks(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x0__MINUS0x2d4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 724
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x2d4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 724
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jge_.L_46f3e3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movslq_MINUS0x2d4__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 724
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x2d0__rbp__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -720
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__edx__MINUS0x2d8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 728
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0x2d8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 728
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_je_.L_46f380(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_jne_.L_46f3ca(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_callq_.owl_substantial(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_je_.L_46f3c5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_jne_.L_46f3a9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_46f3c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x580718___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x580718_type* @G__0x580718 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x2f4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 756
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_jmpq_.L_46f3ca(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_46f3cf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__eax__MINUS0x2d4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 724
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_46f315(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_46f3e8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_46f3ed(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_46f24a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jge_.L_46f493(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_je_.L_46f480(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_jne_.L_46f451(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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













define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_0xab0fe0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0xab0fe0_type* @G_0xab0fe0 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_imulq__0x4c___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 76)
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


define %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_imulq__0x68___rax___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 104)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__rax___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x1__0x58__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 88
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_46f485(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_46f407(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jge_.L_46f5fb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_jne_.L_46f4c1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_46f5ed(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_46f4eb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jne_.L_46f54e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
























define %struct.Memory* @routine_je_.L_46f52c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 -1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_je_.L_46f549(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_46f5e8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_46f5e3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_callq_.liberty_of_dragon(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_je_.L_46f5bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
















define %struct.Memory* @routine_je_.L_46f5b1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_jmpq_.L_46f5b7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_46f5de(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_je_.L_46f5d9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_jmpq_.L_46f5e3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_jmpq_.L_46f49a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_jne_.L_46f66b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_je_.L_46f66b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_callq_.liberty_of_string(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






















define %struct.Memory* @routine_jne_.L_46f6db(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_je_.L_46f6db(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






























define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_addq__0x4c___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 76)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rcx___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_callq_.min_eyes(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_jne_.L_46f90c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






















define %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 20
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_46f7ce(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_46f787(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
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

define %struct.Memory* @routine_subl_MINUS0x10__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_jmpq_.L_46f7c9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jge_.L_46f7af(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x1__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
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




define %struct.Memory* @routine_jmpq_.L_46f7c4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x2__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x2__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_jmpq_.L_46f907(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_addl_MINUS0x14__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 20
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_jne_.L_46f820(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_46f806(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_jmpq_.L_46f81b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_46f902(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_jge_.L_46f862(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_movl__0x3e8__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1000)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_46f8fd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jle_.L_46f8be(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_jne_.L_46f8be(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_46f8a4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_jmpq_.L_46f8b9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_46f8f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jle_.L_46f8f3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




















define %struct.Memory* @routine_subl_MINUS0x14__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 20
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}












define %struct.Memory* @routine_jmpq_.L_46f90c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


























define %struct.Memory* @routine_jle_.L_46fadf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




































define %struct.Memory* @routine_jle_.L_46f9b6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_jmpq_.L_46fada(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_jle_.L_46f9e6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_jmpq_.L_46fad5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_46fa16(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_jmpq_.L_46fad0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jle_.L_46fa4b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x10__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_46fa4b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_jmpq_.L_46facb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jle_.L_46fa91(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_jge_.L_46fa91(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_addl_MINUS0xc__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}












define %struct.Memory* @routine_jmpq_.L_46fac6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jle_.L_46fac1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_jne_.L_46fac1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


















define %struct.Memory* @routine_jmpq_.L_46fadf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


























define %struct.Memory* @routine_jle_.L_46fbe3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


























define %struct.Memory* @routine_jne_.L_46fbe3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_jle_.L_46fb89(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_jmpq_.L_46fbde(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_addl_MINUS0x14__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 20
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_46fbab(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_jmpq_.L_46fbd9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jge_.L_46fbd4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


















define %struct.Memory* @routine_jmpq_.L_46fbe3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


























define %struct.Memory* @routine_jne_.L_46fcec(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


























define %struct.Memory* @routine_jle_.L_46fcec(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jle_.L_46fc8b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_jmpq_.L_46fce7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jne_.L_46fcb4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_jmpq_.L_46fce2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jle_.L_46fcdd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


















define %struct.Memory* @routine_jmpq_.L_46fcec(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_je_.L_46fd73(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_cmpl__0x1__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_46fd2c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 1)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x7___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 7)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.update_status(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_46fd6e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x2__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_46fd4c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x2___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 2)
  ret %struct.Memory* %11
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






define %struct.Memory* @routine_jmpq_.L_46fd69(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_46fd64(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
















define %struct.Memory* @routine_jmpq_.L_46fd73(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x1__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_46fd94(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_jmpq_.L_46fdd6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x2__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_46fdb4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_jmpq_.L_46fdd1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_46fdcc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


















define %struct.Memory* @routine_je_.L_46fdea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_jne_.L_470124(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movl__0x0__MINUS0x2dc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 732
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_jne_.L_46fe65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_je_.L_46fe65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl_MINUS0x28__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x2c__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 44
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_callq_.add_appropriate_semeai_moves(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_47011f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_jne_.L_46fed6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_je_.L_46fed6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
























define %struct.Memory* @routine_jmpq_.L_47011a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x1__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 20
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_46ffe1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






















define %struct.Memory* @routine_callq_.eye_move_urgency(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_jle_.L_46ff5e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


















define %struct.Memory* @routine_movl_0x50__rcx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






































define %struct.Memory* @routine_je_.L_46ffdc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
































define %struct.Memory* @routine_jmpq_.L_470115(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jge_.L_470081(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_jne_.L_47000f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_470073(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_je_.L_47006e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_jne_.L_47006e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.safe_move(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




















define %struct.Memory* @routine_movl__0x1__MINUS0x2dc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 732
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_jmpq_.L_46ffe8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x2dc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 732
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_470110(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_jge_.L_47010b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_je_.L_4700f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




































define %struct.Memory* @routine_jmpq_.L_4700fd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_470095(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_470110(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_addq__0x300___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 768)
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

