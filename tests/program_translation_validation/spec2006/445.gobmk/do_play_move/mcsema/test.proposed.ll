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

declare %struct.Memory* @sub_40a360.do_remove_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40a5e0.do_commit_suicide(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_428b70.hashdata_invert_stone(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40a6c0.remove_liberty(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40a850.create_new_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40b1b0.extend_neighbor_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40c070.assimilate_neighbor_strings(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_428b10.hashdata_invert_ko(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x99da08_type = type <{ [4 x i8] }>
@G_0x99da08= global %G_0x99da08_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xa7f420_type = type <{ [8 x i8] }>
@G_0xa7f420= global %G_0xa7f420_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0xb6eec4_type = type <{ [4 x i8] }>
@G_0xb6eec4= global %G_0xb6eec4_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x57a16e_type = type <{ [8 x i8] }>
@G__0x57a16e= global %G__0x57a16e_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57c4d2_type = type <{ [8 x i8] }>
@G__0x57c4d2= global %G__0x57c4d2_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xa7f430_type = type <{ [8 x i8] }>
@G__0xa7f430= global %G__0xa7f430_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xafc500_type = type <{ [8 x i8] }>
@G__0xafc500= global %G__0xafc500_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xb89e60_type = type <{ [8 x i8] }>
@G__0xb89e60= global %G__0xb89e60_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @do_play_move(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .do_play_move:	 RIP: 409a10	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 409a10	 Bytes: 1
  %loadMem_409a10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a10 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a10)
  store %struct.Memory* %call_409a10, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 409a11	 Bytes: 3
  %loadMem_409a11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a11 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a11)
  store %struct.Memory* %call_409a11, %struct.Memory** %MEMORY

  ; Code: subq $0x30, %rsp	 RIP: 409a14	 Bytes: 4
  %loadMem_409a14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a14 = call %struct.Memory* @routine_subq__0x30___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a14)
  store %struct.Memory* %call_409a14, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %eax	 RIP: 409a18	 Bytes: 5
  %loadMem_409a18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a18 = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a18)
  store %struct.Memory* %call_409a18, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 409a1d	 Bytes: 3
  %loadMem_409a1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a1d = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a1d)
  store %struct.Memory* %call_409a1d, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x8(%rbp)	 RIP: 409a20	 Bytes: 3
  %loadMem_409a20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a20 = call %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a20)
  store %struct.Memory* %call_409a20, %struct.Memory** %MEMORY

  ; Code: subl -0x8(%rbp), %eax	 RIP: 409a23	 Bytes: 3
  %loadMem_409a23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a23 = call %struct.Memory* @routine_subl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a23)
  store %struct.Memory* %call_409a23, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 409a26	 Bytes: 3
  %loadMem_409a26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a26 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a26)
  store %struct.Memory* %call_409a26, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 409a29	 Bytes: 7
  %loadMem_409a29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a29 = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a29)
  store %struct.Memory* %call_409a29, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 409a30	 Bytes: 7
  %loadMem_409a30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a30 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a30)
  store %struct.Memory* %call_409a30, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 409a37	 Bytes: 7
  %loadMem_409a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a37 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a37)
  store %struct.Memory* %call_409a37, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, -0x1c(%rbp)	 RIP: 409a3e	 Bytes: 7
  %loadMem_409a3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a3e = call %struct.Memory* @routine_movl__0xffffffff__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a3e)
  store %struct.Memory* %call_409a3e, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 409a45	 Bytes: 3
  %loadMem_409a45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a45 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a45)
  store %struct.Memory* %call_409a45, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 409a48	 Bytes: 3
  %loadMem_409a48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a48 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a48)
  store %struct.Memory* %call_409a48, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 409a4b	 Bytes: 3
  %loadMem_409a4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a4b = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a4b)
  store %struct.Memory* %call_409a4b, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 409a4e	 Bytes: 3
  %loadMem_409a4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a4e = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a4e)
  store %struct.Memory* %call_409a4e, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 409a51	 Bytes: 3
  %loadMem_409a51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a51 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a51)
  store %struct.Memory* %call_409a51, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 409a54	 Bytes: 3
  %loadMem_409a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a54 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a54)
  store %struct.Memory* %call_409a54, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 409a57	 Bytes: 3
  %loadMem_409a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a57 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a57)
  store %struct.Memory* %call_409a57, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 409a5a	 Bytes: 3
  %loadMem_409a5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a5a = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a5a)
  store %struct.Memory* %call_409a5a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 409a5d	 Bytes: 3
  %loadMem_409a5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a5d = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a5d)
  store %struct.Memory* %call_409a5d, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 409a60	 Bytes: 3
  %loadMem_409a60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a60 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a60)
  store %struct.Memory* %call_409a60, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 409a63	 Bytes: 3
  %loadMem_409a63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a63 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a63)
  store %struct.Memory* %call_409a63, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 409a66	 Bytes: 3
  %loadMem_409a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a66 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a66)
  store %struct.Memory* %call_409a66, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 409a69	 Bytes: 4
  %loadMem_409a69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a69 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a69)
  store %struct.Memory* %call_409a69, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 409a6d	 Bytes: 8
  %loadMem_409a6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a6d = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a6d)
  store %struct.Memory* %call_409a6d, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 409a75	 Bytes: 3
  %loadMem_409a75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a75 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a75)
  store %struct.Memory* %call_409a75, %struct.Memory** %MEMORY

  ; Code: jne .L_409abe	 RIP: 409a78	 Bytes: 6
  %loadMem_409a78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a78 = call %struct.Memory* @routine_jne_.L_409abe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a78, i8* %BRANCH_TAKEN, i64 70, i64 6, i64 6)
  store %struct.Memory* %call_409a78, %struct.Memory** %MEMORY

  %loadBr_409a78 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409a78 = icmp eq i8 %loadBr_409a78, 1
  br i1 %cmpBr_409a78, label %block_.L_409abe, label %block_409a7e

block_409a7e:
  ; Code: movq $0xa7f430, %rax	 RIP: 409a7e	 Bytes: 10
  %loadMem_409a7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a7e = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a7e)
  store %struct.Memory* %call_409a7e, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 409a88	 Bytes: 4
  %loadMem_409a88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a88 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a88)
  store %struct.Memory* %call_409a88, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rcx,4), %rcx	 RIP: 409a8c	 Bytes: 8
  %loadMem_409a8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a8c = call %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a8c)
  store %struct.Memory* %call_409a8c, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 409a94	 Bytes: 7
  %loadMem_409a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a94 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a94)
  store %struct.Memory* %call_409a94, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 409a9b	 Bytes: 3
  %loadMem_409a9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a9b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a9b)
  store %struct.Memory* %call_409a9b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xc(%rax)	 RIP: 409a9e	 Bytes: 4
  %loadMem_409a9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409a9e = call %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409a9e)
  store %struct.Memory* %call_409a9e, %struct.Memory** %MEMORY

  ; Code: jne .L_409abe	 RIP: 409aa2	 Bytes: 6
  %loadMem_409aa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409aa2 = call %struct.Memory* @routine_jne_.L_409abe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409aa2, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_409aa2, %struct.Memory** %MEMORY

  %loadBr_409aa2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409aa2 = icmp eq i8 %loadBr_409aa2, 1
  br i1 %cmpBr_409aa2, label %block_.L_409abe, label %block_409aa8

block_409aa8:
  ; Code: movslq -0x20(%rbp), %rax	 RIP: 409aa8	 Bytes: 4
  %loadMem_409aa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409aa8 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409aa8)
  store %struct.Memory* %call_409aa8, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rax,4), %edi	 RIP: 409aac	 Bytes: 7
  %loadMem_409aac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409aac = call %struct.Memory* @routine_movl_0xaab3f0___rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409aac)
  store %struct.Memory* %call_409aac, %struct.Memory** %MEMORY

  ; Code: callq .do_remove_string	 RIP: 409ab3	 Bytes: 5
  %loadMem1_409ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_409ab3 = call %struct.Memory* @routine_callq_.do_remove_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_409ab3, i64 2221, i64 5, i64 5)
  store %struct.Memory* %call1_409ab3, %struct.Memory** %MEMORY

  %loadMem2_409ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_409ab3 = load i64, i64* %3
  %call2_409ab3 = call %struct.Memory* @sub_40a360.do_remove_string(%struct.State* %0, i64  %loadPC_409ab3, %struct.Memory* %loadMem2_409ab3)
  store %struct.Memory* %call2_409ab3, %struct.Memory** %MEMORY

  ; Code: addl -0x10(%rbp), %eax	 RIP: 409ab8	 Bytes: 3
  %loadMem_409ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ab8 = call %struct.Memory* @routine_addl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ab8)
  store %struct.Memory* %call_409ab8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 409abb	 Bytes: 3
  %loadMem_409abb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409abb = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409abb)
  store %struct.Memory* %call_409abb, %struct.Memory** %MEMORY

  ; Code: .L_409abe:	 RIP: 409abe	 Bytes: 0
  br label %block_.L_409abe
block_.L_409abe:

  ; Code: movslq -0x24(%rbp), %rax	 RIP: 409abe	 Bytes: 4
  %loadMem_409abe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409abe = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409abe)
  store %struct.Memory* %call_409abe, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 409ac2	 Bytes: 8
  %loadMem_409ac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ac2 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ac2)
  store %struct.Memory* %call_409ac2, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %ecx	 RIP: 409aca	 Bytes: 3
  %loadMem_409aca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409aca = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409aca)
  store %struct.Memory* %call_409aca, %struct.Memory** %MEMORY

  ; Code: jne .L_409b13	 RIP: 409acd	 Bytes: 6
  %loadMem_409acd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409acd = call %struct.Memory* @routine_jne_.L_409b13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409acd, i8* %BRANCH_TAKEN, i64 70, i64 6, i64 6)
  store %struct.Memory* %call_409acd, %struct.Memory** %MEMORY

  %loadBr_409acd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409acd = icmp eq i8 %loadBr_409acd, 1
  br i1 %cmpBr_409acd, label %block_.L_409b13, label %block_409ad3

block_409ad3:
  ; Code: movq $0xa7f430, %rax	 RIP: 409ad3	 Bytes: 10
  %loadMem_409ad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ad3 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ad3)
  store %struct.Memory* %call_409ad3, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 409add	 Bytes: 4
  %loadMem_409add = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409add = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409add)
  store %struct.Memory* %call_409add, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rcx,4), %rcx	 RIP: 409ae1	 Bytes: 8
  %loadMem_409ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ae1 = call %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ae1)
  store %struct.Memory* %call_409ae1, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 409ae9	 Bytes: 7
  %loadMem_409ae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ae9 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ae9)
  store %struct.Memory* %call_409ae9, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 409af0	 Bytes: 3
  %loadMem_409af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409af0 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409af0)
  store %struct.Memory* %call_409af0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xc(%rax)	 RIP: 409af3	 Bytes: 4
  %loadMem_409af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409af3 = call %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409af3)
  store %struct.Memory* %call_409af3, %struct.Memory** %MEMORY

  ; Code: jne .L_409b13	 RIP: 409af7	 Bytes: 6
  %loadMem_409af7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409af7 = call %struct.Memory* @routine_jne_.L_409b13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409af7, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_409af7, %struct.Memory** %MEMORY

  %loadBr_409af7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409af7 = icmp eq i8 %loadBr_409af7, 1
  br i1 %cmpBr_409af7, label %block_.L_409b13, label %block_409afd

block_409afd:
  ; Code: movslq -0x24(%rbp), %rax	 RIP: 409afd	 Bytes: 4
  %loadMem_409afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409afd = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409afd)
  store %struct.Memory* %call_409afd, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rax,4), %edi	 RIP: 409b01	 Bytes: 7
  %loadMem_409b01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b01 = call %struct.Memory* @routine_movl_0xaab3f0___rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b01)
  store %struct.Memory* %call_409b01, %struct.Memory** %MEMORY

  ; Code: callq .do_remove_string	 RIP: 409b08	 Bytes: 5
  %loadMem1_409b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_409b08 = call %struct.Memory* @routine_callq_.do_remove_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_409b08, i64 2136, i64 5, i64 5)
  store %struct.Memory* %call1_409b08, %struct.Memory** %MEMORY

  %loadMem2_409b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_409b08 = load i64, i64* %3
  %call2_409b08 = call %struct.Memory* @sub_40a360.do_remove_string(%struct.State* %0, i64  %loadPC_409b08, %struct.Memory* %loadMem2_409b08)
  store %struct.Memory* %call2_409b08, %struct.Memory** %MEMORY

  ; Code: addl -0x10(%rbp), %eax	 RIP: 409b0d	 Bytes: 3
  %loadMem_409b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b0d = call %struct.Memory* @routine_addl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b0d)
  store %struct.Memory* %call_409b0d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 409b10	 Bytes: 3
  %loadMem_409b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b10 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b10)
  store %struct.Memory* %call_409b10, %struct.Memory** %MEMORY

  ; Code: .L_409b13:	 RIP: 409b13	 Bytes: 0
  br label %block_.L_409b13
block_.L_409b13:

  ; Code: movslq -0x28(%rbp), %rax	 RIP: 409b13	 Bytes: 4
  %loadMem_409b13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b13 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b13)
  store %struct.Memory* %call_409b13, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 409b17	 Bytes: 8
  %loadMem_409b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b17 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b17)
  store %struct.Memory* %call_409b17, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %ecx	 RIP: 409b1f	 Bytes: 3
  %loadMem_409b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b1f = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b1f)
  store %struct.Memory* %call_409b1f, %struct.Memory** %MEMORY

  ; Code: jne .L_409b68	 RIP: 409b22	 Bytes: 6
  %loadMem_409b22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b22 = call %struct.Memory* @routine_jne_.L_409b68(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b22, i8* %BRANCH_TAKEN, i64 70, i64 6, i64 6)
  store %struct.Memory* %call_409b22, %struct.Memory** %MEMORY

  %loadBr_409b22 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409b22 = icmp eq i8 %loadBr_409b22, 1
  br i1 %cmpBr_409b22, label %block_.L_409b68, label %block_409b28

block_409b28:
  ; Code: movq $0xa7f430, %rax	 RIP: 409b28	 Bytes: 10
  %loadMem_409b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b28 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b28)
  store %struct.Memory* %call_409b28, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 409b32	 Bytes: 4
  %loadMem_409b32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b32 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b32)
  store %struct.Memory* %call_409b32, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rcx,4), %rcx	 RIP: 409b36	 Bytes: 8
  %loadMem_409b36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b36 = call %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b36)
  store %struct.Memory* %call_409b36, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 409b3e	 Bytes: 7
  %loadMem_409b3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b3e = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b3e)
  store %struct.Memory* %call_409b3e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 409b45	 Bytes: 3
  %loadMem_409b45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b45 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b45)
  store %struct.Memory* %call_409b45, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xc(%rax)	 RIP: 409b48	 Bytes: 4
  %loadMem_409b48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b48 = call %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b48)
  store %struct.Memory* %call_409b48, %struct.Memory** %MEMORY

  ; Code: jne .L_409b68	 RIP: 409b4c	 Bytes: 6
  %loadMem_409b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b4c = call %struct.Memory* @routine_jne_.L_409b68(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b4c, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_409b4c, %struct.Memory** %MEMORY

  %loadBr_409b4c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409b4c = icmp eq i8 %loadBr_409b4c, 1
  br i1 %cmpBr_409b4c, label %block_.L_409b68, label %block_409b52

block_409b52:
  ; Code: movslq -0x28(%rbp), %rax	 RIP: 409b52	 Bytes: 4
  %loadMem_409b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b52 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b52)
  store %struct.Memory* %call_409b52, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rax,4), %edi	 RIP: 409b56	 Bytes: 7
  %loadMem_409b56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b56 = call %struct.Memory* @routine_movl_0xaab3f0___rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b56)
  store %struct.Memory* %call_409b56, %struct.Memory** %MEMORY

  ; Code: callq .do_remove_string	 RIP: 409b5d	 Bytes: 5
  %loadMem1_409b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_409b5d = call %struct.Memory* @routine_callq_.do_remove_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_409b5d, i64 2051, i64 5, i64 5)
  store %struct.Memory* %call1_409b5d, %struct.Memory** %MEMORY

  %loadMem2_409b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_409b5d = load i64, i64* %3
  %call2_409b5d = call %struct.Memory* @sub_40a360.do_remove_string(%struct.State* %0, i64  %loadPC_409b5d, %struct.Memory* %loadMem2_409b5d)
  store %struct.Memory* %call2_409b5d, %struct.Memory** %MEMORY

  ; Code: addl -0x10(%rbp), %eax	 RIP: 409b62	 Bytes: 3
  %loadMem_409b62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b62 = call %struct.Memory* @routine_addl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b62)
  store %struct.Memory* %call_409b62, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 409b65	 Bytes: 3
  %loadMem_409b65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b65 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b65)
  store %struct.Memory* %call_409b65, %struct.Memory** %MEMORY

  ; Code: .L_409b68:	 RIP: 409b68	 Bytes: 0
  br label %block_.L_409b68
block_.L_409b68:

  ; Code: movslq -0x2c(%rbp), %rax	 RIP: 409b68	 Bytes: 4
  %loadMem_409b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b68 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b68)
  store %struct.Memory* %call_409b68, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 409b6c	 Bytes: 8
  %loadMem_409b6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b6c = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b6c)
  store %struct.Memory* %call_409b6c, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %ecx	 RIP: 409b74	 Bytes: 3
  %loadMem_409b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b74 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b74)
  store %struct.Memory* %call_409b74, %struct.Memory** %MEMORY

  ; Code: jne .L_409bbd	 RIP: 409b77	 Bytes: 6
  %loadMem_409b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b77 = call %struct.Memory* @routine_jne_.L_409bbd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b77, i8* %BRANCH_TAKEN, i64 70, i64 6, i64 6)
  store %struct.Memory* %call_409b77, %struct.Memory** %MEMORY

  %loadBr_409b77 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409b77 = icmp eq i8 %loadBr_409b77, 1
  br i1 %cmpBr_409b77, label %block_.L_409bbd, label %block_409b7d

block_409b7d:
  ; Code: movq $0xa7f430, %rax	 RIP: 409b7d	 Bytes: 10
  %loadMem_409b7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b7d = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b7d)
  store %struct.Memory* %call_409b7d, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 409b87	 Bytes: 4
  %loadMem_409b87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b87 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b87)
  store %struct.Memory* %call_409b87, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rcx,4), %rcx	 RIP: 409b8b	 Bytes: 8
  %loadMem_409b8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b8b = call %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b8b)
  store %struct.Memory* %call_409b8b, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 409b93	 Bytes: 7
  %loadMem_409b93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b93 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b93)
  store %struct.Memory* %call_409b93, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 409b9a	 Bytes: 3
  %loadMem_409b9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b9a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b9a)
  store %struct.Memory* %call_409b9a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xc(%rax)	 RIP: 409b9d	 Bytes: 4
  %loadMem_409b9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409b9d = call %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409b9d)
  store %struct.Memory* %call_409b9d, %struct.Memory** %MEMORY

  ; Code: jne .L_409bbd	 RIP: 409ba1	 Bytes: 6
  %loadMem_409ba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ba1 = call %struct.Memory* @routine_jne_.L_409bbd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ba1, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_409ba1, %struct.Memory** %MEMORY

  %loadBr_409ba1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409ba1 = icmp eq i8 %loadBr_409ba1, 1
  br i1 %cmpBr_409ba1, label %block_.L_409bbd, label %block_409ba7

block_409ba7:
  ; Code: movslq -0x2c(%rbp), %rax	 RIP: 409ba7	 Bytes: 4
  %loadMem_409ba7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ba7 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ba7)
  store %struct.Memory* %call_409ba7, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rax,4), %edi	 RIP: 409bab	 Bytes: 7
  %loadMem_409bab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409bab = call %struct.Memory* @routine_movl_0xaab3f0___rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409bab)
  store %struct.Memory* %call_409bab, %struct.Memory** %MEMORY

  ; Code: callq .do_remove_string	 RIP: 409bb2	 Bytes: 5
  %loadMem1_409bb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_409bb2 = call %struct.Memory* @routine_callq_.do_remove_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_409bb2, i64 1966, i64 5, i64 5)
  store %struct.Memory* %call1_409bb2, %struct.Memory** %MEMORY

  %loadMem2_409bb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_409bb2 = load i64, i64* %3
  %call2_409bb2 = call %struct.Memory* @sub_40a360.do_remove_string(%struct.State* %0, i64  %loadPC_409bb2, %struct.Memory* %loadMem2_409bb2)
  store %struct.Memory* %call2_409bb2, %struct.Memory** %MEMORY

  ; Code: addl -0x10(%rbp), %eax	 RIP: 409bb7	 Bytes: 3
  %loadMem_409bb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409bb7 = call %struct.Memory* @routine_addl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409bb7)
  store %struct.Memory* %call_409bb7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 409bba	 Bytes: 3
  %loadMem_409bba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409bba = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409bba)
  store %struct.Memory* %call_409bba, %struct.Memory** %MEMORY

  ; Code: .L_409bbd:	 RIP: 409bbd	 Bytes: 0
  br label %block_.L_409bbd
block_.L_409bbd:

  ; Code: cmpl $0x0, -0x10(%rbp)	 RIP: 409bbd	 Bytes: 4
  %loadMem_409bbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409bbd = call %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409bbd)
  store %struct.Memory* %call_409bbd, %struct.Memory** %MEMORY

  ; Code: jne .L_409d56	 RIP: 409bc1	 Bytes: 6
  %loadMem_409bc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409bc1 = call %struct.Memory* @routine_jne_.L_409d56(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409bc1, i8* %BRANCH_TAKEN, i64 405, i64 6, i64 6)
  store %struct.Memory* %call_409bc1, %struct.Memory** %MEMORY

  %loadBr_409bc1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409bc1 = icmp eq i8 %loadBr_409bc1, 1
  br i1 %cmpBr_409bc1, label %block_.L_409d56, label %block_409bc7

block_409bc7:
  ; Code: movslq -0x20(%rbp), %rax	 RIP: 409bc7	 Bytes: 4
  %loadMem_409bc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409bc7 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409bc7)
  store %struct.Memory* %call_409bc7, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 409bcb	 Bytes: 8
  %loadMem_409bcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409bcb = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409bcb)
  store %struct.Memory* %call_409bcb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 409bd3	 Bytes: 3
  %loadMem_409bd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409bd3 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409bd3)
  store %struct.Memory* %call_409bd3, %struct.Memory** %MEMORY

  ; Code: je .L_409c1b	 RIP: 409bd6	 Bytes: 6
  %loadMem_409bd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409bd6 = call %struct.Memory* @routine_je_.L_409c1b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409bd6, i8* %BRANCH_TAKEN, i64 69, i64 6, i64 6)
  store %struct.Memory* %call_409bd6, %struct.Memory** %MEMORY

  %loadBr_409bd6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409bd6 = icmp eq i8 %loadBr_409bd6, 1
  br i1 %cmpBr_409bd6, label %block_.L_409c1b, label %block_409bdc

block_409bdc:
  ; Code: movslq -0x20(%rbp), %rax	 RIP: 409bdc	 Bytes: 4
  %loadMem_409bdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409bdc = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409bdc)
  store %struct.Memory* %call_409bdc, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 409be0	 Bytes: 8
  %loadMem_409be0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409be0 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409be0)
  store %struct.Memory* %call_409be0, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %ecx	 RIP: 409be8	 Bytes: 3
  %loadMem_409be8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409be8 = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409be8)
  store %struct.Memory* %call_409be8, %struct.Memory** %MEMORY

  ; Code: jne .L_409c27	 RIP: 409beb	 Bytes: 6
  %loadMem_409beb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409beb = call %struct.Memory* @routine_jne_.L_409c27(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409beb, i8* %BRANCH_TAKEN, i64 60, i64 6, i64 6)
  store %struct.Memory* %call_409beb, %struct.Memory** %MEMORY

  %loadBr_409beb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409beb = icmp eq i8 %loadBr_409beb, 1
  br i1 %cmpBr_409beb, label %block_.L_409c27, label %block_409bf1

block_409bf1:
  ; Code: movq $0xa7f430, %rax	 RIP: 409bf1	 Bytes: 10
  %loadMem_409bf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409bf1 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409bf1)
  store %struct.Memory* %call_409bf1, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 409bfb	 Bytes: 4
  %loadMem_409bfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409bfb = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409bfb)
  store %struct.Memory* %call_409bfb, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rcx,4), %rcx	 RIP: 409bff	 Bytes: 8
  %loadMem_409bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409bff = call %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409bff)
  store %struct.Memory* %call_409bff, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 409c07	 Bytes: 7
  %loadMem_409c07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c07 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c07)
  store %struct.Memory* %call_409c07, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 409c0e	 Bytes: 3
  %loadMem_409c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c0e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c0e)
  store %struct.Memory* %call_409c0e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xc(%rax)	 RIP: 409c11	 Bytes: 4
  %loadMem_409c11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c11 = call %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c11)
  store %struct.Memory* %call_409c11, %struct.Memory** %MEMORY

  ; Code: jle .L_409c27	 RIP: 409c15	 Bytes: 6
  %loadMem_409c15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c15 = call %struct.Memory* @routine_jle_.L_409c27(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c15, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_409c15, %struct.Memory** %MEMORY

  %loadBr_409c15 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409c15 = icmp eq i8 %loadBr_409c15, 1
  br i1 %cmpBr_409c15, label %block_.L_409c27, label %block_.L_409c1b

  ; Code: .L_409c1b:	 RIP: 409c1b	 Bytes: 0
block_.L_409c1b:

  ; Code: movl $0x1, -0x18(%rbp)	 RIP: 409c1b	 Bytes: 7
  %loadMem_409c1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c1b = call %struct.Memory* @routine_movl__0x1__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c1b)
  store %struct.Memory* %call_409c1b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_409d51	 RIP: 409c22	 Bytes: 5
  %loadMem_409c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c22 = call %struct.Memory* @routine_jmpq_.L_409d51(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c22, i64 303, i64 5)
  store %struct.Memory* %call_409c22, %struct.Memory** %MEMORY

  br label %block_.L_409d51

  ; Code: .L_409c27:	 RIP: 409c27	 Bytes: 0
block_.L_409c27:

  ; Code: movslq -0x24(%rbp), %rax	 RIP: 409c27	 Bytes: 4
  %loadMem_409c27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c27 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c27)
  store %struct.Memory* %call_409c27, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 409c2b	 Bytes: 8
  %loadMem_409c2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c2b = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c2b)
  store %struct.Memory* %call_409c2b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 409c33	 Bytes: 3
  %loadMem_409c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c33 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c33)
  store %struct.Memory* %call_409c33, %struct.Memory** %MEMORY

  ; Code: je .L_409c7b	 RIP: 409c36	 Bytes: 6
  %loadMem_409c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c36 = call %struct.Memory* @routine_je_.L_409c7b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c36, i8* %BRANCH_TAKEN, i64 69, i64 6, i64 6)
  store %struct.Memory* %call_409c36, %struct.Memory** %MEMORY

  %loadBr_409c36 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409c36 = icmp eq i8 %loadBr_409c36, 1
  br i1 %cmpBr_409c36, label %block_.L_409c7b, label %block_409c3c

block_409c3c:
  ; Code: movslq -0x24(%rbp), %rax	 RIP: 409c3c	 Bytes: 4
  %loadMem_409c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c3c = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c3c)
  store %struct.Memory* %call_409c3c, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 409c40	 Bytes: 8
  %loadMem_409c40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c40 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c40)
  store %struct.Memory* %call_409c40, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %ecx	 RIP: 409c48	 Bytes: 3
  %loadMem_409c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c48 = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c48)
  store %struct.Memory* %call_409c48, %struct.Memory** %MEMORY

  ; Code: jne .L_409c87	 RIP: 409c4b	 Bytes: 6
  %loadMem_409c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c4b = call %struct.Memory* @routine_jne_.L_409c87(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c4b, i8* %BRANCH_TAKEN, i64 60, i64 6, i64 6)
  store %struct.Memory* %call_409c4b, %struct.Memory** %MEMORY

  %loadBr_409c4b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409c4b = icmp eq i8 %loadBr_409c4b, 1
  br i1 %cmpBr_409c4b, label %block_.L_409c87, label %block_409c51

block_409c51:
  ; Code: movq $0xa7f430, %rax	 RIP: 409c51	 Bytes: 10
  %loadMem_409c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c51 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c51)
  store %struct.Memory* %call_409c51, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 409c5b	 Bytes: 4
  %loadMem_409c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c5b = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c5b)
  store %struct.Memory* %call_409c5b, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rcx,4), %rcx	 RIP: 409c5f	 Bytes: 8
  %loadMem_409c5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c5f = call %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c5f)
  store %struct.Memory* %call_409c5f, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 409c67	 Bytes: 7
  %loadMem_409c67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c67 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c67)
  store %struct.Memory* %call_409c67, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 409c6e	 Bytes: 3
  %loadMem_409c6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c6e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c6e)
  store %struct.Memory* %call_409c6e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xc(%rax)	 RIP: 409c71	 Bytes: 4
  %loadMem_409c71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c71 = call %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c71)
  store %struct.Memory* %call_409c71, %struct.Memory** %MEMORY

  ; Code: jle .L_409c87	 RIP: 409c75	 Bytes: 6
  %loadMem_409c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c75 = call %struct.Memory* @routine_jle_.L_409c87(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c75, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_409c75, %struct.Memory** %MEMORY

  %loadBr_409c75 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409c75 = icmp eq i8 %loadBr_409c75, 1
  br i1 %cmpBr_409c75, label %block_.L_409c87, label %block_.L_409c7b

  ; Code: .L_409c7b:	 RIP: 409c7b	 Bytes: 0
block_.L_409c7b:

  ; Code: movl $0x1, -0x18(%rbp)	 RIP: 409c7b	 Bytes: 7
  %loadMem_409c7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c7b = call %struct.Memory* @routine_movl__0x1__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c7b)
  store %struct.Memory* %call_409c7b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_409d4c	 RIP: 409c82	 Bytes: 5
  %loadMem_409c82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c82 = call %struct.Memory* @routine_jmpq_.L_409d4c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c82, i64 202, i64 5)
  store %struct.Memory* %call_409c82, %struct.Memory** %MEMORY

  br label %block_.L_409d4c

  ; Code: .L_409c87:	 RIP: 409c87	 Bytes: 0
block_.L_409c87:

  ; Code: movslq -0x28(%rbp), %rax	 RIP: 409c87	 Bytes: 4
  %loadMem_409c87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c87 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c87)
  store %struct.Memory* %call_409c87, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 409c8b	 Bytes: 8
  %loadMem_409c8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c8b = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c8b)
  store %struct.Memory* %call_409c8b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 409c93	 Bytes: 3
  %loadMem_409c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c93 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c93)
  store %struct.Memory* %call_409c93, %struct.Memory** %MEMORY

  ; Code: je .L_409cdb	 RIP: 409c96	 Bytes: 6
  %loadMem_409c96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c96 = call %struct.Memory* @routine_je_.L_409cdb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c96, i8* %BRANCH_TAKEN, i64 69, i64 6, i64 6)
  store %struct.Memory* %call_409c96, %struct.Memory** %MEMORY

  %loadBr_409c96 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409c96 = icmp eq i8 %loadBr_409c96, 1
  br i1 %cmpBr_409c96, label %block_.L_409cdb, label %block_409c9c

block_409c9c:
  ; Code: movslq -0x28(%rbp), %rax	 RIP: 409c9c	 Bytes: 4
  %loadMem_409c9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409c9c = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409c9c)
  store %struct.Memory* %call_409c9c, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 409ca0	 Bytes: 8
  %loadMem_409ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ca0 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ca0)
  store %struct.Memory* %call_409ca0, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %ecx	 RIP: 409ca8	 Bytes: 3
  %loadMem_409ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ca8 = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ca8)
  store %struct.Memory* %call_409ca8, %struct.Memory** %MEMORY

  ; Code: jne .L_409ce7	 RIP: 409cab	 Bytes: 6
  %loadMem_409cab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409cab = call %struct.Memory* @routine_jne_.L_409ce7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409cab, i8* %BRANCH_TAKEN, i64 60, i64 6, i64 6)
  store %struct.Memory* %call_409cab, %struct.Memory** %MEMORY

  %loadBr_409cab = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409cab = icmp eq i8 %loadBr_409cab, 1
  br i1 %cmpBr_409cab, label %block_.L_409ce7, label %block_409cb1

block_409cb1:
  ; Code: movq $0xa7f430, %rax	 RIP: 409cb1	 Bytes: 10
  %loadMem_409cb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409cb1 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409cb1)
  store %struct.Memory* %call_409cb1, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 409cbb	 Bytes: 4
  %loadMem_409cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409cbb = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409cbb)
  store %struct.Memory* %call_409cbb, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rcx,4), %rcx	 RIP: 409cbf	 Bytes: 8
  %loadMem_409cbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409cbf = call %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409cbf)
  store %struct.Memory* %call_409cbf, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 409cc7	 Bytes: 7
  %loadMem_409cc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409cc7 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409cc7)
  store %struct.Memory* %call_409cc7, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 409cce	 Bytes: 3
  %loadMem_409cce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409cce = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409cce)
  store %struct.Memory* %call_409cce, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xc(%rax)	 RIP: 409cd1	 Bytes: 4
  %loadMem_409cd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409cd1 = call %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409cd1)
  store %struct.Memory* %call_409cd1, %struct.Memory** %MEMORY

  ; Code: jle .L_409ce7	 RIP: 409cd5	 Bytes: 6
  %loadMem_409cd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409cd5 = call %struct.Memory* @routine_jle_.L_409ce7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409cd5, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_409cd5, %struct.Memory** %MEMORY

  %loadBr_409cd5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409cd5 = icmp eq i8 %loadBr_409cd5, 1
  br i1 %cmpBr_409cd5, label %block_.L_409ce7, label %block_.L_409cdb

  ; Code: .L_409cdb:	 RIP: 409cdb	 Bytes: 0
block_.L_409cdb:

  ; Code: movl $0x1, -0x18(%rbp)	 RIP: 409cdb	 Bytes: 7
  %loadMem_409cdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409cdb = call %struct.Memory* @routine_movl__0x1__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409cdb)
  store %struct.Memory* %call_409cdb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_409d47	 RIP: 409ce2	 Bytes: 5
  %loadMem_409ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ce2 = call %struct.Memory* @routine_jmpq_.L_409d47(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ce2, i64 101, i64 5)
  store %struct.Memory* %call_409ce2, %struct.Memory** %MEMORY

  br label %block_.L_409d47

  ; Code: .L_409ce7:	 RIP: 409ce7	 Bytes: 0
block_.L_409ce7:

  ; Code: movslq -0x2c(%rbp), %rax	 RIP: 409ce7	 Bytes: 4
  %loadMem_409ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ce7 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ce7)
  store %struct.Memory* %call_409ce7, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 409ceb	 Bytes: 8
  %loadMem_409ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ceb = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ceb)
  store %struct.Memory* %call_409ceb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 409cf3	 Bytes: 3
  %loadMem_409cf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409cf3 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409cf3)
  store %struct.Memory* %call_409cf3, %struct.Memory** %MEMORY

  ; Code: je .L_409d3b	 RIP: 409cf6	 Bytes: 6
  %loadMem_409cf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409cf6 = call %struct.Memory* @routine_je_.L_409d3b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409cf6, i8* %BRANCH_TAKEN, i64 69, i64 6, i64 6)
  store %struct.Memory* %call_409cf6, %struct.Memory** %MEMORY

  %loadBr_409cf6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409cf6 = icmp eq i8 %loadBr_409cf6, 1
  br i1 %cmpBr_409cf6, label %block_.L_409d3b, label %block_409cfc

block_409cfc:
  ; Code: movslq -0x2c(%rbp), %rax	 RIP: 409cfc	 Bytes: 4
  %loadMem_409cfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409cfc = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409cfc)
  store %struct.Memory* %call_409cfc, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 409d00	 Bytes: 8
  %loadMem_409d00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d00 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d00)
  store %struct.Memory* %call_409d00, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %ecx	 RIP: 409d08	 Bytes: 3
  %loadMem_409d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d08 = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d08)
  store %struct.Memory* %call_409d08, %struct.Memory** %MEMORY

  ; Code: jne .L_409d42	 RIP: 409d0b	 Bytes: 6
  %loadMem_409d0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d0b = call %struct.Memory* @routine_jne_.L_409d42(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d0b, i8* %BRANCH_TAKEN, i64 55, i64 6, i64 6)
  store %struct.Memory* %call_409d0b, %struct.Memory** %MEMORY

  %loadBr_409d0b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409d0b = icmp eq i8 %loadBr_409d0b, 1
  br i1 %cmpBr_409d0b, label %block_.L_409d42, label %block_409d11

block_409d11:
  ; Code: movq $0xa7f430, %rax	 RIP: 409d11	 Bytes: 10
  %loadMem_409d11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d11 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d11)
  store %struct.Memory* %call_409d11, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 409d1b	 Bytes: 4
  %loadMem_409d1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d1b = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d1b)
  store %struct.Memory* %call_409d1b, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rcx,4), %rcx	 RIP: 409d1f	 Bytes: 8
  %loadMem_409d1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d1f = call %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d1f)
  store %struct.Memory* %call_409d1f, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 409d27	 Bytes: 7
  %loadMem_409d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d27 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d27)
  store %struct.Memory* %call_409d27, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 409d2e	 Bytes: 3
  %loadMem_409d2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d2e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d2e)
  store %struct.Memory* %call_409d2e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xc(%rax)	 RIP: 409d31	 Bytes: 4
  %loadMem_409d31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d31 = call %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d31)
  store %struct.Memory* %call_409d31, %struct.Memory** %MEMORY

  ; Code: jle .L_409d42	 RIP: 409d35	 Bytes: 6
  %loadMem_409d35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d35 = call %struct.Memory* @routine_jle_.L_409d42(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d35, i8* %BRANCH_TAKEN, i64 13, i64 6, i64 6)
  store %struct.Memory* %call_409d35, %struct.Memory** %MEMORY

  %loadBr_409d35 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409d35 = icmp eq i8 %loadBr_409d35, 1
  br i1 %cmpBr_409d35, label %block_.L_409d42, label %block_.L_409d3b

  ; Code: .L_409d3b:	 RIP: 409d3b	 Bytes: 0
block_.L_409d3b:

  ; Code: movl $0x1, -0x18(%rbp)	 RIP: 409d3b	 Bytes: 7
  %loadMem_409d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d3b = call %struct.Memory* @routine_movl__0x1__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d3b)
  store %struct.Memory* %call_409d3b, %struct.Memory** %MEMORY

  ; Code: .L_409d42:	 RIP: 409d42	 Bytes: 0
  br label %block_.L_409d42
block_.L_409d42:

  ; Code: jmpq .L_409d47	 RIP: 409d42	 Bytes: 5
  %loadMem_409d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d42 = call %struct.Memory* @routine_jmpq_.L_409d47(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d42, i64 5, i64 5)
  store %struct.Memory* %call_409d42, %struct.Memory** %MEMORY

  br label %block_.L_409d47

  ; Code: .L_409d47:	 RIP: 409d47	 Bytes: 0
block_.L_409d47:

  ; Code: jmpq .L_409d4c	 RIP: 409d47	 Bytes: 5
  %loadMem_409d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d47 = call %struct.Memory* @routine_jmpq_.L_409d4c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d47, i64 5, i64 5)
  store %struct.Memory* %call_409d47, %struct.Memory** %MEMORY

  br label %block_.L_409d4c

  ; Code: .L_409d4c:	 RIP: 409d4c	 Bytes: 0
block_.L_409d4c:

  ; Code: jmpq .L_409d51	 RIP: 409d4c	 Bytes: 5
  %loadMem_409d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d4c = call %struct.Memory* @routine_jmpq_.L_409d51(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d4c, i64 5, i64 5)
  store %struct.Memory* %call_409d4c, %struct.Memory** %MEMORY

  br label %block_.L_409d51

  ; Code: .L_409d51:	 RIP: 409d51	 Bytes: 0
block_.L_409d51:

  ; Code: jmpq .L_409d5d	 RIP: 409d51	 Bytes: 5
  %loadMem_409d51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d51 = call %struct.Memory* @routine_jmpq_.L_409d5d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d51, i64 12, i64 5)
  store %struct.Memory* %call_409d51, %struct.Memory** %MEMORY

  br label %block_.L_409d5d

  ; Code: .L_409d56:	 RIP: 409d56	 Bytes: 0
block_.L_409d56:

  ; Code: movl $0x1, -0x18(%rbp)	 RIP: 409d56	 Bytes: 7
  %loadMem_409d56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d56 = call %struct.Memory* @routine_movl__0x1__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d56)
  store %struct.Memory* %call_409d56, %struct.Memory** %MEMORY

  ; Code: .L_409d5d:	 RIP: 409d5d	 Bytes: 0
  br label %block_.L_409d5d
block_.L_409d5d:

  ; Code: cmpl $0x0, -0x18(%rbp)	 RIP: 409d5d	 Bytes: 4
  %loadMem_409d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d5d = call %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d5d)
  store %struct.Memory* %call_409d5d, %struct.Memory** %MEMORY

  ; Code: jne .L_409d81	 RIP: 409d61	 Bytes: 6
  %loadMem_409d61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d61 = call %struct.Memory* @routine_jne_.L_409d81(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d61, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_409d61, %struct.Memory** %MEMORY

  %loadBr_409d61 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409d61 = icmp eq i8 %loadBr_409d61, 1
  br i1 %cmpBr_409d61, label %block_.L_409d81, label %block_409d67

block_409d67:
  ; Code: cmpl $0x0, -0x10(%rbp)	 RIP: 409d67	 Bytes: 4
  %loadMem_409d67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d67 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d67)
  store %struct.Memory* %call_409d67, %struct.Memory** %MEMORY

  ; Code: jne .L_409d81	 RIP: 409d6b	 Bytes: 6
  %loadMem_409d6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d6b = call %struct.Memory* @routine_jne_.L_409d81(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d6b, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_409d6b, %struct.Memory** %MEMORY

  %loadBr_409d6b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409d6b = icmp eq i8 %loadBr_409d6b, 1
  br i1 %cmpBr_409d6b, label %block_.L_409d81, label %block_409d71

block_409d71:
  ; Code: movl -0x4(%rbp), %edi	 RIP: 409d71	 Bytes: 3
  %loadMem_409d71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d71 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d71)
  store %struct.Memory* %call_409d71, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 409d74	 Bytes: 3
  %loadMem_409d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d74 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d74)
  store %struct.Memory* %call_409d74, %struct.Memory** %MEMORY

  ; Code: callq .do_commit_suicide	 RIP: 409d77	 Bytes: 5
  %loadMem1_409d77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_409d77 = call %struct.Memory* @routine_callq_.do_commit_suicide(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_409d77, i64 2153, i64 5, i64 5)
  store %struct.Memory* %call1_409d77, %struct.Memory** %MEMORY

  %loadMem2_409d77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_409d77 = load i64, i64* %3
  %call2_409d77 = call %struct.Memory* @sub_40a5e0.do_commit_suicide(%struct.State* %0, i64  %loadPC_409d77, %struct.Memory* %loadMem2_409d77)
  store %struct.Memory* %call2_409d77, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40a34b	 RIP: 409d7c	 Bytes: 5
  %loadMem_409d7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d7c = call %struct.Memory* @routine_jmpq_.L_40a34b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d7c, i64 1487, i64 5)
  store %struct.Memory* %call_409d7c, %struct.Memory** %MEMORY

  br label %block_.L_40a34b

  ; Code: .L_409d81:	 RIP: 409d81	 Bytes: 0
block_.L_409d81:

  ; Code: jmpq .L_409d86	 RIP: 409d81	 Bytes: 5
  %loadMem_409d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d81 = call %struct.Memory* @routine_jmpq_.L_409d86(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d81, i64 5, i64 5)
  store %struct.Memory* %call_409d81, %struct.Memory** %MEMORY

  br label %block_.L_409d86

  ; Code: .L_409d86:	 RIP: 409d86	 Bytes: 0
block_.L_409d86:

  ; Code: movq $0xafc500, %rdi	 RIP: 409d86	 Bytes: 10
  %loadMem_409d86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d86 = call %struct.Memory* @routine_movq__0xafc500___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d86)
  store %struct.Memory* %call_409d86, %struct.Memory** %MEMORY

  ; Code: movq $0xb89e60, %rax	 RIP: 409d90	 Bytes: 10
  %loadMem_409d90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d90 = call %struct.Memory* @routine_movq__0xb89e60___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d90)
  store %struct.Memory* %call_409d90, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 409d9a	 Bytes: 4
  %loadMem_409d9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d9a = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d9a)
  store %struct.Memory* %call_409d9a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 409d9e	 Bytes: 3
  %loadMem_409d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409d9e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409d9e)
  store %struct.Memory* %call_409d9e, %struct.Memory** %MEMORY

  ; Code: movq 0xa7f420, %rcx	 RIP: 409da1	 Bytes: 8
  %loadMem_409da1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409da1 = call %struct.Memory* @routine_movq_0xa7f420___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409da1)
  store %struct.Memory* %call_409da1, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx)	 RIP: 409da9	 Bytes: 3
  %loadMem_409da9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409da9 = call %struct.Memory* @routine_movq__rax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409da9)
  store %struct.Memory* %call_409da9, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 409dac	 Bytes: 4
  %loadMem_409dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409dac = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409dac)
  store %struct.Memory* %call_409dac, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %edx	 RIP: 409db0	 Bytes: 8
  %loadMem_409db0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409db0 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409db0)
  store %struct.Memory* %call_409db0, %struct.Memory** %MEMORY

  ; Code: movq 0xa7f420, %rax	 RIP: 409db8	 Bytes: 8
  %loadMem_409db8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409db8 = call %struct.Memory* @routine_movq_0xa7f420___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409db8)
  store %struct.Memory* %call_409db8, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 409dc0	 Bytes: 3
  %loadMem_409dc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409dc0 = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409dc0)
  store %struct.Memory* %call_409dc0, %struct.Memory** %MEMORY

  ; Code: addq $0x10, %rcx	 RIP: 409dc3	 Bytes: 4
  %loadMem_409dc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409dc3 = call %struct.Memory* @routine_addq__0x10___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409dc3)
  store %struct.Memory* %call_409dc3, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0xa7f420	 RIP: 409dc7	 Bytes: 8
  %loadMem_409dc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409dc7 = call %struct.Memory* @routine_movq__rcx__0xa7f420(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409dc7)
  store %struct.Memory* %call_409dc7, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x8(%rax)	 RIP: 409dcf	 Bytes: 3
  %loadMem_409dcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409dcf = call %struct.Memory* @routine_movl__edx__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409dcf)
  store %struct.Memory* %call_409dcf, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 409dd2	 Bytes: 3
  %loadMem_409dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409dd2 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409dd2)
  store %struct.Memory* %call_409dd2, %struct.Memory** %MEMORY

  ; Code: movb %dl, %sil	 RIP: 409dd5	 Bytes: 3
  %loadMem_409dd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409dd5 = call %struct.Memory* @routine_movb__dl___sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409dd5)
  store %struct.Memory* %call_409dd5, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 409dd8	 Bytes: 4
  %loadMem_409dd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409dd8 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409dd8)
  store %struct.Memory* %call_409dd8, %struct.Memory** %MEMORY

  ; Code: movb %sil, 0xb89e60(,%rax,1)	 RIP: 409ddc	 Bytes: 8
  %loadMem_409ddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ddc = call %struct.Memory* @routine_movb__sil__0xb89e60___rax_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ddc)
  store %struct.Memory* %call_409ddc, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 409de4	 Bytes: 3
  %loadMem_409de4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409de4 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409de4)
  store %struct.Memory* %call_409de4, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 409de7	 Bytes: 3
  %loadMem_409de7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409de7 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409de7)
  store %struct.Memory* %call_409de7, %struct.Memory** %MEMORY

  ; Code: callq .hashdata_invert_stone	 RIP: 409dea	 Bytes: 5
  %loadMem1_409dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_409dea = call %struct.Memory* @routine_callq_.hashdata_invert_stone(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_409dea, i64 126342, i64 5, i64 5)
  store %struct.Memory* %call1_409dea, %struct.Memory** %MEMORY

  %loadMem2_409dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_409dea = load i64, i64* %3
  %call2_409dea = call %struct.Memory* @sub_428b70.hashdata_invert_stone(%struct.State* %0, i64  %loadPC_409dea, %struct.Memory* %loadMem2_409dea)
  store %struct.Memory* %call2_409dea, %struct.Memory** %MEMORY

  ; Code: movl 0x99da08, %eax	 RIP: 409def	 Bytes: 7
  %loadMem_409def = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409def = call %struct.Memory* @routine_movl_0x99da08___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409def)
  store %struct.Memory* %call_409def, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 409df6	 Bytes: 3
  %loadMem_409df6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409df6 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409df6)
  store %struct.Memory* %call_409df6, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x99da08	 RIP: 409df9	 Bytes: 7
  %loadMem_409df9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409df9 = call %struct.Memory* @routine_movl__eax__0x99da08(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409df9)
  store %struct.Memory* %call_409df9, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 409e00	 Bytes: 4
  %loadMem_409e00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e00 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e00)
  store %struct.Memory* %call_409e00, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 409e04	 Bytes: 8
  %loadMem_409e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e04 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e04)
  store %struct.Memory* %call_409e04, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 409e0c	 Bytes: 3
  %loadMem_409e0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e0c = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e0c)
  store %struct.Memory* %call_409e0c, %struct.Memory** %MEMORY

  ; Code: jne .L_409e91	 RIP: 409e0f	 Bytes: 6
  %loadMem_409e0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e0f = call %struct.Memory* @routine_jne_.L_409e91(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e0f, i8* %BRANCH_TAKEN, i64 130, i64 6, i64 6)
  store %struct.Memory* %call_409e0f, %struct.Memory** %MEMORY

  %loadBr_409e0f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409e0f = icmp eq i8 %loadBr_409e0f, 1
  br i1 %cmpBr_409e0f, label %block_.L_409e91, label %block_409e15

block_409e15:
  ; Code: movq $0xa7f430, %rax	 RIP: 409e15	 Bytes: 10
  %loadMem_409e15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e15 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e15)
  store %struct.Memory* %call_409e15, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 409e1f	 Bytes: 4
  %loadMem_409e1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e1f = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e1f)
  store %struct.Memory* %call_409e1f, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rcx,4), %rcx	 RIP: 409e23	 Bytes: 8
  %loadMem_409e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e23 = call %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e23)
  store %struct.Memory* %call_409e23, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 409e2b	 Bytes: 7
  %loadMem_409e2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e2b = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e2b)
  store %struct.Memory* %call_409e2b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 409e32	 Bytes: 3
  %loadMem_409e32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e32 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e32)
  store %struct.Memory* %call_409e32, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %edx	 RIP: 409e35	 Bytes: 6
  %loadMem_409e35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e35 = call %struct.Memory* @routine_movl_0x2e4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e35)
  store %struct.Memory* %call_409e35, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %edx	 RIP: 409e3b	 Bytes: 7
  %loadMem_409e3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e3b = call %struct.Memory* @routine_cmpl_0x99da08___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e3b)
  store %struct.Memory* %call_409e3b, %struct.Memory** %MEMORY

  ; Code: je .L_409e91	 RIP: 409e42	 Bytes: 6
  %loadMem_409e42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e42 = call %struct.Memory* @routine_je_.L_409e91(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e42, i8* %BRANCH_TAKEN, i64 79, i64 6, i64 6)
  store %struct.Memory* %call_409e42, %struct.Memory** %MEMORY

  %loadBr_409e42 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409e42 = icmp eq i8 %loadBr_409e42, 1
  br i1 %cmpBr_409e42, label %block_.L_409e91, label %block_409e48

block_409e48:
  ; Code: movq $0xa7f430, %rax	 RIP: 409e48	 Bytes: 10
  %loadMem_409e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e48 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e48)
  store %struct.Memory* %call_409e48, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 409e52	 Bytes: 3
  %loadMem_409e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e52 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e52)
  store %struct.Memory* %call_409e52, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 409e55	 Bytes: 3
  %loadMem_409e55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e55 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e55)
  store %struct.Memory* %call_409e55, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x14(%rbp)	 RIP: 409e58	 Bytes: 3
  %loadMem_409e58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e58 = call %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e58)
  store %struct.Memory* %call_409e58, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 409e5b	 Bytes: 4
  %loadMem_409e5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e5b = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e5b)
  store %struct.Memory* %call_409e5b, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 409e5f	 Bytes: 7
  %loadMem_409e5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e5f = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e5f)
  store %struct.Memory* %call_409e5f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1c(%rbp)	 RIP: 409e66	 Bytes: 3
  %loadMem_409e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e66 = call %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e66)
  store %struct.Memory* %call_409e66, %struct.Memory** %MEMORY

  ; Code: movl 0x99da08, %ecx	 RIP: 409e69	 Bytes: 7
  %loadMem_409e69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e69 = call %struct.Memory* @routine_movl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e69)
  store %struct.Memory* %call_409e69, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 409e70	 Bytes: 4
  %loadMem_409e70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e70 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e70)
  store %struct.Memory* %call_409e70, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 409e74	 Bytes: 8
  %loadMem_409e74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e74 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e74)
  store %struct.Memory* %call_409e74, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 409e7c	 Bytes: 7
  %loadMem_409e7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e7c = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e7c)
  store %struct.Memory* %call_409e7c, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 409e83	 Bytes: 3
  %loadMem_409e83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e83 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e83)
  store %struct.Memory* %call_409e83, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x2e4(%rax)	 RIP: 409e86	 Bytes: 6
  %loadMem_409e86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e86 = call %struct.Memory* @routine_movl__ecx__0x2e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e86)
  store %struct.Memory* %call_409e86, %struct.Memory** %MEMORY

  ; Code: jmpq .L_409f1e	 RIP: 409e8c	 Bytes: 5
  %loadMem_409e8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e8c = call %struct.Memory* @routine_jmpq_.L_409f1e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e8c, i64 146, i64 5)
  store %struct.Memory* %call_409e8c, %struct.Memory** %MEMORY

  br label %block_.L_409f1e

  ; Code: .L_409e91:	 RIP: 409e91	 Bytes: 0
block_.L_409e91:

  ; Code: movslq -0x20(%rbp), %rax	 RIP: 409e91	 Bytes: 4
  %loadMem_409e91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e91 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e91)
  store %struct.Memory* %call_409e91, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 409e95	 Bytes: 8
  %loadMem_409e95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e95 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e95)
  store %struct.Memory* %call_409e95, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %ecx	 RIP: 409e9d	 Bytes: 3
  %loadMem_409e9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409e9d = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409e9d)
  store %struct.Memory* %call_409e9d, %struct.Memory** %MEMORY

  ; Code: jne .L_409f19	 RIP: 409ea0	 Bytes: 6
  %loadMem_409ea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ea0 = call %struct.Memory* @routine_jne_.L_409f19(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ea0, i8* %BRANCH_TAKEN, i64 121, i64 6, i64 6)
  store %struct.Memory* %call_409ea0, %struct.Memory** %MEMORY

  %loadBr_409ea0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409ea0 = icmp eq i8 %loadBr_409ea0, 1
  br i1 %cmpBr_409ea0, label %block_.L_409f19, label %block_409ea6

block_409ea6:
  ; Code: movq $0xa7f430, %rax	 RIP: 409ea6	 Bytes: 10
  %loadMem_409ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ea6 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ea6)
  store %struct.Memory* %call_409ea6, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 409eb0	 Bytes: 4
  %loadMem_409eb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409eb0 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409eb0)
  store %struct.Memory* %call_409eb0, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rcx,4), %rcx	 RIP: 409eb4	 Bytes: 8
  %loadMem_409eb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409eb4 = call %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409eb4)
  store %struct.Memory* %call_409eb4, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 409ebc	 Bytes: 7
  %loadMem_409ebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ebc = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ebc)
  store %struct.Memory* %call_409ebc, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 409ec3	 Bytes: 3
  %loadMem_409ec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ec3 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ec3)
  store %struct.Memory* %call_409ec3, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %edx	 RIP: 409ec6	 Bytes: 6
  %loadMem_409ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ec6 = call %struct.Memory* @routine_movl_0x2e4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ec6)
  store %struct.Memory* %call_409ec6, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %edx	 RIP: 409ecc	 Bytes: 7
  %loadMem_409ecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ecc = call %struct.Memory* @routine_cmpl_0x99da08___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ecc)
  store %struct.Memory* %call_409ecc, %struct.Memory** %MEMORY

  ; Code: je .L_409f19	 RIP: 409ed3	 Bytes: 6
  %loadMem_409ed3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ed3 = call %struct.Memory* @routine_je_.L_409f19(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ed3, i8* %BRANCH_TAKEN, i64 70, i64 6, i64 6)
  store %struct.Memory* %call_409ed3, %struct.Memory** %MEMORY

  %loadBr_409ed3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409ed3 = icmp eq i8 %loadBr_409ed3, 1
  br i1 %cmpBr_409ed3, label %block_.L_409f19, label %block_409ed9

block_409ed9:
  ; Code: movslq -0x20(%rbp), %rax	 RIP: 409ed9	 Bytes: 4
  %loadMem_409ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ed9 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ed9)
  store %struct.Memory* %call_409ed9, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rax,4), %edi	 RIP: 409edd	 Bytes: 7
  %loadMem_409edd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409edd = call %struct.Memory* @routine_movl_0xaab3f0___rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409edd)
  store %struct.Memory* %call_409edd, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 409ee4	 Bytes: 3
  %loadMem_409ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ee4 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ee4)
  store %struct.Memory* %call_409ee4, %struct.Memory** %MEMORY

  ; Code: callq .remove_liberty	 RIP: 409ee7	 Bytes: 5
  %loadMem1_409ee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_409ee7 = call %struct.Memory* @routine_callq_.remove_liberty(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_409ee7, i64 2009, i64 5, i64 5)
  store %struct.Memory* %call1_409ee7, %struct.Memory** %MEMORY

  %loadMem2_409ee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_409ee7 = load i64, i64* %3
  %call2_409ee7 = call %struct.Memory* @sub_40a6c0.remove_liberty(%struct.State* %0, i64  %loadPC_409ee7, %struct.Memory* %loadMem2_409ee7)
  store %struct.Memory* %call2_409ee7, %struct.Memory** %MEMORY

  ; Code: movq $0xa7f430, %rax	 RIP: 409eec	 Bytes: 10
  %loadMem_409eec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409eec = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409eec)
  store %struct.Memory* %call_409eec, %struct.Memory** %MEMORY

  ; Code: movl 0x99da08, %esi	 RIP: 409ef6	 Bytes: 7
  %loadMem_409ef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ef6 = call %struct.Memory* @routine_movl_0x99da08___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ef6)
  store %struct.Memory* %call_409ef6, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 409efd	 Bytes: 4
  %loadMem_409efd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409efd = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409efd)
  store %struct.Memory* %call_409efd, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rcx,4), %rcx	 RIP: 409f01	 Bytes: 8
  %loadMem_409f01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f01 = call %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f01)
  store %struct.Memory* %call_409f01, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 409f09	 Bytes: 7
  %loadMem_409f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f09 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f09)
  store %struct.Memory* %call_409f09, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 409f10	 Bytes: 3
  %loadMem_409f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f10 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f10)
  store %struct.Memory* %call_409f10, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x2e4(%rax)	 RIP: 409f13	 Bytes: 6
  %loadMem_409f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f13 = call %struct.Memory* @routine_movl__esi__0x2e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f13)
  store %struct.Memory* %call_409f13, %struct.Memory** %MEMORY

  ; Code: .L_409f19:	 RIP: 409f19	 Bytes: 0
  br label %block_.L_409f19
block_.L_409f19:

  ; Code: jmpq .L_409f1e	 RIP: 409f19	 Bytes: 5
  %loadMem_409f19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f19 = call %struct.Memory* @routine_jmpq_.L_409f1e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f19, i64 5, i64 5)
  store %struct.Memory* %call_409f19, %struct.Memory** %MEMORY

  br label %block_.L_409f1e

  ; Code: .L_409f1e:	 RIP: 409f1e	 Bytes: 0
block_.L_409f1e:

  ; Code: movslq -0x24(%rbp), %rax	 RIP: 409f1e	 Bytes: 4
  %loadMem_409f1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f1e = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f1e)
  store %struct.Memory* %call_409f1e, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 409f22	 Bytes: 8
  %loadMem_409f22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f22 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f22)
  store %struct.Memory* %call_409f22, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %ecx	 RIP: 409f2a	 Bytes: 3
  %loadMem_409f2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f2a = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f2a)
  store %struct.Memory* %call_409f2a, %struct.Memory** %MEMORY

  ; Code: jne .L_409faf	 RIP: 409f2d	 Bytes: 6
  %loadMem_409f2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f2d = call %struct.Memory* @routine_jne_.L_409faf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f2d, i8* %BRANCH_TAKEN, i64 130, i64 6, i64 6)
  store %struct.Memory* %call_409f2d, %struct.Memory** %MEMORY

  %loadBr_409f2d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409f2d = icmp eq i8 %loadBr_409f2d, 1
  br i1 %cmpBr_409f2d, label %block_.L_409faf, label %block_409f33

block_409f33:
  ; Code: movq $0xa7f430, %rax	 RIP: 409f33	 Bytes: 10
  %loadMem_409f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f33 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f33)
  store %struct.Memory* %call_409f33, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 409f3d	 Bytes: 4
  %loadMem_409f3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f3d = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f3d)
  store %struct.Memory* %call_409f3d, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rcx,4), %rcx	 RIP: 409f41	 Bytes: 8
  %loadMem_409f41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f41 = call %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f41)
  store %struct.Memory* %call_409f41, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 409f49	 Bytes: 7
  %loadMem_409f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f49 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f49)
  store %struct.Memory* %call_409f49, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 409f50	 Bytes: 3
  %loadMem_409f50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f50 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f50)
  store %struct.Memory* %call_409f50, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %edx	 RIP: 409f53	 Bytes: 6
  %loadMem_409f53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f53 = call %struct.Memory* @routine_movl_0x2e4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f53)
  store %struct.Memory* %call_409f53, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %edx	 RIP: 409f59	 Bytes: 7
  %loadMem_409f59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f59 = call %struct.Memory* @routine_cmpl_0x99da08___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f59)
  store %struct.Memory* %call_409f59, %struct.Memory** %MEMORY

  ; Code: je .L_409faf	 RIP: 409f60	 Bytes: 6
  %loadMem_409f60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f60 = call %struct.Memory* @routine_je_.L_409faf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f60, i8* %BRANCH_TAKEN, i64 79, i64 6, i64 6)
  store %struct.Memory* %call_409f60, %struct.Memory** %MEMORY

  %loadBr_409f60 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409f60 = icmp eq i8 %loadBr_409f60, 1
  br i1 %cmpBr_409f60, label %block_.L_409faf, label %block_409f66

block_409f66:
  ; Code: movq $0xa7f430, %rax	 RIP: 409f66	 Bytes: 10
  %loadMem_409f66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f66 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f66)
  store %struct.Memory* %call_409f66, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 409f70	 Bytes: 3
  %loadMem_409f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f70 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f70)
  store %struct.Memory* %call_409f70, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 409f73	 Bytes: 3
  %loadMem_409f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f73 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f73)
  store %struct.Memory* %call_409f73, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x14(%rbp)	 RIP: 409f76	 Bytes: 3
  %loadMem_409f76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f76 = call %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f76)
  store %struct.Memory* %call_409f76, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 409f79	 Bytes: 4
  %loadMem_409f79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f79 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f79)
  store %struct.Memory* %call_409f79, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 409f7d	 Bytes: 7
  %loadMem_409f7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f7d = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f7d)
  store %struct.Memory* %call_409f7d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1c(%rbp)	 RIP: 409f84	 Bytes: 3
  %loadMem_409f84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f84 = call %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f84)
  store %struct.Memory* %call_409f84, %struct.Memory** %MEMORY

  ; Code: movl 0x99da08, %ecx	 RIP: 409f87	 Bytes: 7
  %loadMem_409f87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f87 = call %struct.Memory* @routine_movl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f87)
  store %struct.Memory* %call_409f87, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 409f8e	 Bytes: 4
  %loadMem_409f8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f8e = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f8e)
  store %struct.Memory* %call_409f8e, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 409f92	 Bytes: 8
  %loadMem_409f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f92 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f92)
  store %struct.Memory* %call_409f92, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 409f9a	 Bytes: 7
  %loadMem_409f9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409f9a = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409f9a)
  store %struct.Memory* %call_409f9a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 409fa1	 Bytes: 3
  %loadMem_409fa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409fa1 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409fa1)
  store %struct.Memory* %call_409fa1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x2e4(%rax)	 RIP: 409fa4	 Bytes: 6
  %loadMem_409fa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409fa4 = call %struct.Memory* @routine_movl__ecx__0x2e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409fa4)
  store %struct.Memory* %call_409fa4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40a03c	 RIP: 409faa	 Bytes: 5
  %loadMem_409faa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409faa = call %struct.Memory* @routine_jmpq_.L_40a03c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409faa, i64 146, i64 5)
  store %struct.Memory* %call_409faa, %struct.Memory** %MEMORY

  br label %block_.L_40a03c

  ; Code: .L_409faf:	 RIP: 409faf	 Bytes: 0
block_.L_409faf:

  ; Code: movslq -0x24(%rbp), %rax	 RIP: 409faf	 Bytes: 4
  %loadMem_409faf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409faf = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409faf)
  store %struct.Memory* %call_409faf, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 409fb3	 Bytes: 8
  %loadMem_409fb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409fb3 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409fb3)
  store %struct.Memory* %call_409fb3, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %ecx	 RIP: 409fbb	 Bytes: 3
  %loadMem_409fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409fbb = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409fbb)
  store %struct.Memory* %call_409fbb, %struct.Memory** %MEMORY

  ; Code: jne .L_40a037	 RIP: 409fbe	 Bytes: 6
  %loadMem_409fbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409fbe = call %struct.Memory* @routine_jne_.L_40a037(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409fbe, i8* %BRANCH_TAKEN, i64 121, i64 6, i64 6)
  store %struct.Memory* %call_409fbe, %struct.Memory** %MEMORY

  %loadBr_409fbe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409fbe = icmp eq i8 %loadBr_409fbe, 1
  br i1 %cmpBr_409fbe, label %block_.L_40a037, label %block_409fc4

block_409fc4:
  ; Code: movq $0xa7f430, %rax	 RIP: 409fc4	 Bytes: 10
  %loadMem_409fc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409fc4 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409fc4)
  store %struct.Memory* %call_409fc4, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 409fce	 Bytes: 4
  %loadMem_409fce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409fce = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409fce)
  store %struct.Memory* %call_409fce, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rcx,4), %rcx	 RIP: 409fd2	 Bytes: 8
  %loadMem_409fd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409fd2 = call %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409fd2)
  store %struct.Memory* %call_409fd2, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 409fda	 Bytes: 7
  %loadMem_409fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409fda = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409fda)
  store %struct.Memory* %call_409fda, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 409fe1	 Bytes: 3
  %loadMem_409fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409fe1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409fe1)
  store %struct.Memory* %call_409fe1, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %edx	 RIP: 409fe4	 Bytes: 6
  %loadMem_409fe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409fe4 = call %struct.Memory* @routine_movl_0x2e4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409fe4)
  store %struct.Memory* %call_409fe4, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %edx	 RIP: 409fea	 Bytes: 7
  %loadMem_409fea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409fea = call %struct.Memory* @routine_cmpl_0x99da08___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409fea)
  store %struct.Memory* %call_409fea, %struct.Memory** %MEMORY

  ; Code: je .L_40a037	 RIP: 409ff1	 Bytes: 6
  %loadMem_409ff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ff1 = call %struct.Memory* @routine_je_.L_40a037(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ff1, i8* %BRANCH_TAKEN, i64 70, i64 6, i64 6)
  store %struct.Memory* %call_409ff1, %struct.Memory** %MEMORY

  %loadBr_409ff1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_409ff1 = icmp eq i8 %loadBr_409ff1, 1
  br i1 %cmpBr_409ff1, label %block_.L_40a037, label %block_409ff7

block_409ff7:
  ; Code: movslq -0x24(%rbp), %rax	 RIP: 409ff7	 Bytes: 4
  %loadMem_409ff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ff7 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ff7)
  store %struct.Memory* %call_409ff7, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rax,4), %edi	 RIP: 409ffb	 Bytes: 7
  %loadMem_409ffb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_409ffb = call %struct.Memory* @routine_movl_0xaab3f0___rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_409ffb)
  store %struct.Memory* %call_409ffb, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 40a002	 Bytes: 3
  %loadMem_40a002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a002 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a002)
  store %struct.Memory* %call_40a002, %struct.Memory** %MEMORY

  ; Code: callq .remove_liberty	 RIP: 40a005	 Bytes: 5
  %loadMem1_40a005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40a005 = call %struct.Memory* @routine_callq_.remove_liberty(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40a005, i64 1723, i64 5, i64 5)
  store %struct.Memory* %call1_40a005, %struct.Memory** %MEMORY

  %loadMem2_40a005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40a005 = load i64, i64* %3
  %call2_40a005 = call %struct.Memory* @sub_40a6c0.remove_liberty(%struct.State* %0, i64  %loadPC_40a005, %struct.Memory* %loadMem2_40a005)
  store %struct.Memory* %call2_40a005, %struct.Memory** %MEMORY

  ; Code: movq $0xa7f430, %rax	 RIP: 40a00a	 Bytes: 10
  %loadMem_40a00a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a00a = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a00a)
  store %struct.Memory* %call_40a00a, %struct.Memory** %MEMORY

  ; Code: movl 0x99da08, %esi	 RIP: 40a014	 Bytes: 7
  %loadMem_40a014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a014 = call %struct.Memory* @routine_movl_0x99da08___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a014)
  store %struct.Memory* %call_40a014, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 40a01b	 Bytes: 4
  %loadMem_40a01b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a01b = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a01b)
  store %struct.Memory* %call_40a01b, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rcx,4), %rcx	 RIP: 40a01f	 Bytes: 8
  %loadMem_40a01f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a01f = call %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a01f)
  store %struct.Memory* %call_40a01f, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40a027	 Bytes: 7
  %loadMem_40a027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a027 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a027)
  store %struct.Memory* %call_40a027, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40a02e	 Bytes: 3
  %loadMem_40a02e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a02e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a02e)
  store %struct.Memory* %call_40a02e, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x2e4(%rax)	 RIP: 40a031	 Bytes: 6
  %loadMem_40a031 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a031 = call %struct.Memory* @routine_movl__esi__0x2e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a031)
  store %struct.Memory* %call_40a031, %struct.Memory** %MEMORY

  ; Code: .L_40a037:	 RIP: 40a037	 Bytes: 0
  br label %block_.L_40a037
block_.L_40a037:

  ; Code: jmpq .L_40a03c	 RIP: 40a037	 Bytes: 5
  %loadMem_40a037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a037 = call %struct.Memory* @routine_jmpq_.L_40a03c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a037, i64 5, i64 5)
  store %struct.Memory* %call_40a037, %struct.Memory** %MEMORY

  br label %block_.L_40a03c

  ; Code: .L_40a03c:	 RIP: 40a03c	 Bytes: 0
block_.L_40a03c:

  ; Code: movslq -0x28(%rbp), %rax	 RIP: 40a03c	 Bytes: 4
  %loadMem_40a03c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a03c = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a03c)
  store %struct.Memory* %call_40a03c, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 40a040	 Bytes: 8
  %loadMem_40a040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a040 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a040)
  store %struct.Memory* %call_40a040, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %ecx	 RIP: 40a048	 Bytes: 3
  %loadMem_40a048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a048 = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a048)
  store %struct.Memory* %call_40a048, %struct.Memory** %MEMORY

  ; Code: jne .L_40a0cd	 RIP: 40a04b	 Bytes: 6
  %loadMem_40a04b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a04b = call %struct.Memory* @routine_jne_.L_40a0cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a04b, i8* %BRANCH_TAKEN, i64 130, i64 6, i64 6)
  store %struct.Memory* %call_40a04b, %struct.Memory** %MEMORY

  %loadBr_40a04b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a04b = icmp eq i8 %loadBr_40a04b, 1
  br i1 %cmpBr_40a04b, label %block_.L_40a0cd, label %block_40a051

block_40a051:
  ; Code: movq $0xa7f430, %rax	 RIP: 40a051	 Bytes: 10
  %loadMem_40a051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a051 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a051)
  store %struct.Memory* %call_40a051, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 40a05b	 Bytes: 4
  %loadMem_40a05b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a05b = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a05b)
  store %struct.Memory* %call_40a05b, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rcx,4), %rcx	 RIP: 40a05f	 Bytes: 8
  %loadMem_40a05f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a05f = call %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a05f)
  store %struct.Memory* %call_40a05f, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40a067	 Bytes: 7
  %loadMem_40a067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a067 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a067)
  store %struct.Memory* %call_40a067, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40a06e	 Bytes: 3
  %loadMem_40a06e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a06e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a06e)
  store %struct.Memory* %call_40a06e, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %edx	 RIP: 40a071	 Bytes: 6
  %loadMem_40a071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a071 = call %struct.Memory* @routine_movl_0x2e4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a071)
  store %struct.Memory* %call_40a071, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %edx	 RIP: 40a077	 Bytes: 7
  %loadMem_40a077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a077 = call %struct.Memory* @routine_cmpl_0x99da08___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a077)
  store %struct.Memory* %call_40a077, %struct.Memory** %MEMORY

  ; Code: je .L_40a0cd	 RIP: 40a07e	 Bytes: 6
  %loadMem_40a07e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a07e = call %struct.Memory* @routine_je_.L_40a0cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a07e, i8* %BRANCH_TAKEN, i64 79, i64 6, i64 6)
  store %struct.Memory* %call_40a07e, %struct.Memory** %MEMORY

  %loadBr_40a07e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a07e = icmp eq i8 %loadBr_40a07e, 1
  br i1 %cmpBr_40a07e, label %block_.L_40a0cd, label %block_40a084

block_40a084:
  ; Code: movq $0xa7f430, %rax	 RIP: 40a084	 Bytes: 10
  %loadMem_40a084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a084 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a084)
  store %struct.Memory* %call_40a084, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 40a08e	 Bytes: 3
  %loadMem_40a08e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a08e = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a08e)
  store %struct.Memory* %call_40a08e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40a091	 Bytes: 3
  %loadMem_40a091 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a091 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a091)
  store %struct.Memory* %call_40a091, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x14(%rbp)	 RIP: 40a094	 Bytes: 3
  %loadMem_40a094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a094 = call %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a094)
  store %struct.Memory* %call_40a094, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 40a097	 Bytes: 4
  %loadMem_40a097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a097 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a097)
  store %struct.Memory* %call_40a097, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40a09b	 Bytes: 7
  %loadMem_40a09b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a09b = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a09b)
  store %struct.Memory* %call_40a09b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1c(%rbp)	 RIP: 40a0a2	 Bytes: 3
  %loadMem_40a0a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0a2 = call %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0a2)
  store %struct.Memory* %call_40a0a2, %struct.Memory** %MEMORY

  ; Code: movl 0x99da08, %ecx	 RIP: 40a0a5	 Bytes: 7
  %loadMem_40a0a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0a5 = call %struct.Memory* @routine_movl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0a5)
  store %struct.Memory* %call_40a0a5, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 40a0ac	 Bytes: 4
  %loadMem_40a0ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0ac = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0ac)
  store %struct.Memory* %call_40a0ac, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40a0b0	 Bytes: 8
  %loadMem_40a0b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0b0 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0b0)
  store %struct.Memory* %call_40a0b0, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40a0b8	 Bytes: 7
  %loadMem_40a0b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0b8 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0b8)
  store %struct.Memory* %call_40a0b8, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40a0bf	 Bytes: 3
  %loadMem_40a0bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0bf = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0bf)
  store %struct.Memory* %call_40a0bf, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x2e4(%rax)	 RIP: 40a0c2	 Bytes: 6
  %loadMem_40a0c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0c2 = call %struct.Memory* @routine_movl__ecx__0x2e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0c2)
  store %struct.Memory* %call_40a0c2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40a15a	 RIP: 40a0c8	 Bytes: 5
  %loadMem_40a0c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0c8 = call %struct.Memory* @routine_jmpq_.L_40a15a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0c8, i64 146, i64 5)
  store %struct.Memory* %call_40a0c8, %struct.Memory** %MEMORY

  br label %block_.L_40a15a

  ; Code: .L_40a0cd:	 RIP: 40a0cd	 Bytes: 0
block_.L_40a0cd:

  ; Code: movslq -0x28(%rbp), %rax	 RIP: 40a0cd	 Bytes: 4
  %loadMem_40a0cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0cd = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0cd)
  store %struct.Memory* %call_40a0cd, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 40a0d1	 Bytes: 8
  %loadMem_40a0d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0d1 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0d1)
  store %struct.Memory* %call_40a0d1, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %ecx	 RIP: 40a0d9	 Bytes: 3
  %loadMem_40a0d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0d9 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0d9)
  store %struct.Memory* %call_40a0d9, %struct.Memory** %MEMORY

  ; Code: jne .L_40a155	 RIP: 40a0dc	 Bytes: 6
  %loadMem_40a0dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0dc = call %struct.Memory* @routine_jne_.L_40a155(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0dc, i8* %BRANCH_TAKEN, i64 121, i64 6, i64 6)
  store %struct.Memory* %call_40a0dc, %struct.Memory** %MEMORY

  %loadBr_40a0dc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a0dc = icmp eq i8 %loadBr_40a0dc, 1
  br i1 %cmpBr_40a0dc, label %block_.L_40a155, label %block_40a0e2

block_40a0e2:
  ; Code: movq $0xa7f430, %rax	 RIP: 40a0e2	 Bytes: 10
  %loadMem_40a0e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0e2 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0e2)
  store %struct.Memory* %call_40a0e2, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 40a0ec	 Bytes: 4
  %loadMem_40a0ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0ec = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0ec)
  store %struct.Memory* %call_40a0ec, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rcx,4), %rcx	 RIP: 40a0f0	 Bytes: 8
  %loadMem_40a0f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0f0 = call %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0f0)
  store %struct.Memory* %call_40a0f0, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40a0f8	 Bytes: 7
  %loadMem_40a0f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0f8 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0f8)
  store %struct.Memory* %call_40a0f8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40a0ff	 Bytes: 3
  %loadMem_40a0ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a0ff = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a0ff)
  store %struct.Memory* %call_40a0ff, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %edx	 RIP: 40a102	 Bytes: 6
  %loadMem_40a102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a102 = call %struct.Memory* @routine_movl_0x2e4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a102)
  store %struct.Memory* %call_40a102, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %edx	 RIP: 40a108	 Bytes: 7
  %loadMem_40a108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a108 = call %struct.Memory* @routine_cmpl_0x99da08___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a108)
  store %struct.Memory* %call_40a108, %struct.Memory** %MEMORY

  ; Code: je .L_40a155	 RIP: 40a10f	 Bytes: 6
  %loadMem_40a10f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a10f = call %struct.Memory* @routine_je_.L_40a155(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a10f, i8* %BRANCH_TAKEN, i64 70, i64 6, i64 6)
  store %struct.Memory* %call_40a10f, %struct.Memory** %MEMORY

  %loadBr_40a10f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a10f = icmp eq i8 %loadBr_40a10f, 1
  br i1 %cmpBr_40a10f, label %block_.L_40a155, label %block_40a115

block_40a115:
  ; Code: movslq -0x28(%rbp), %rax	 RIP: 40a115	 Bytes: 4
  %loadMem_40a115 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a115 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a115)
  store %struct.Memory* %call_40a115, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rax,4), %edi	 RIP: 40a119	 Bytes: 7
  %loadMem_40a119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a119 = call %struct.Memory* @routine_movl_0xaab3f0___rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a119)
  store %struct.Memory* %call_40a119, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 40a120	 Bytes: 3
  %loadMem_40a120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a120 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a120)
  store %struct.Memory* %call_40a120, %struct.Memory** %MEMORY

  ; Code: callq .remove_liberty	 RIP: 40a123	 Bytes: 5
  %loadMem1_40a123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40a123 = call %struct.Memory* @routine_callq_.remove_liberty(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40a123, i64 1437, i64 5, i64 5)
  store %struct.Memory* %call1_40a123, %struct.Memory** %MEMORY

  %loadMem2_40a123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40a123 = load i64, i64* %3
  %call2_40a123 = call %struct.Memory* @sub_40a6c0.remove_liberty(%struct.State* %0, i64  %loadPC_40a123, %struct.Memory* %loadMem2_40a123)
  store %struct.Memory* %call2_40a123, %struct.Memory** %MEMORY

  ; Code: movq $0xa7f430, %rax	 RIP: 40a128	 Bytes: 10
  %loadMem_40a128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a128 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a128)
  store %struct.Memory* %call_40a128, %struct.Memory** %MEMORY

  ; Code: movl 0x99da08, %esi	 RIP: 40a132	 Bytes: 7
  %loadMem_40a132 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a132 = call %struct.Memory* @routine_movl_0x99da08___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a132)
  store %struct.Memory* %call_40a132, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 40a139	 Bytes: 4
  %loadMem_40a139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a139 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a139)
  store %struct.Memory* %call_40a139, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rcx,4), %rcx	 RIP: 40a13d	 Bytes: 8
  %loadMem_40a13d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a13d = call %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a13d)
  store %struct.Memory* %call_40a13d, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40a145	 Bytes: 7
  %loadMem_40a145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a145 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a145)
  store %struct.Memory* %call_40a145, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40a14c	 Bytes: 3
  %loadMem_40a14c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a14c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a14c)
  store %struct.Memory* %call_40a14c, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x2e4(%rax)	 RIP: 40a14f	 Bytes: 6
  %loadMem_40a14f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a14f = call %struct.Memory* @routine_movl__esi__0x2e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a14f)
  store %struct.Memory* %call_40a14f, %struct.Memory** %MEMORY

  ; Code: .L_40a155:	 RIP: 40a155	 Bytes: 0
  br label %block_.L_40a155
block_.L_40a155:

  ; Code: jmpq .L_40a15a	 RIP: 40a155	 Bytes: 5
  %loadMem_40a155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a155 = call %struct.Memory* @routine_jmpq_.L_40a15a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a155, i64 5, i64 5)
  store %struct.Memory* %call_40a155, %struct.Memory** %MEMORY

  br label %block_.L_40a15a

  ; Code: .L_40a15a:	 RIP: 40a15a	 Bytes: 0
block_.L_40a15a:

  ; Code: movslq -0x2c(%rbp), %rax	 RIP: 40a15a	 Bytes: 4
  %loadMem_40a15a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a15a = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a15a)
  store %struct.Memory* %call_40a15a, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 40a15e	 Bytes: 8
  %loadMem_40a15e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a15e = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a15e)
  store %struct.Memory* %call_40a15e, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %ecx	 RIP: 40a166	 Bytes: 3
  %loadMem_40a166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a166 = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a166)
  store %struct.Memory* %call_40a166, %struct.Memory** %MEMORY

  ; Code: jne .L_40a1be	 RIP: 40a169	 Bytes: 6
  %loadMem_40a169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a169 = call %struct.Memory* @routine_jne_.L_40a1be(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a169, i8* %BRANCH_TAKEN, i64 85, i64 6, i64 6)
  store %struct.Memory* %call_40a169, %struct.Memory** %MEMORY

  %loadBr_40a169 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a169 = icmp eq i8 %loadBr_40a169, 1
  br i1 %cmpBr_40a169, label %block_.L_40a1be, label %block_40a16f

block_40a16f:
  ; Code: movq $0xa7f430, %rax	 RIP: 40a16f	 Bytes: 10
  %loadMem_40a16f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a16f = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a16f)
  store %struct.Memory* %call_40a16f, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 40a179	 Bytes: 4
  %loadMem_40a179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a179 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a179)
  store %struct.Memory* %call_40a179, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rcx,4), %rcx	 RIP: 40a17d	 Bytes: 8
  %loadMem_40a17d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a17d = call %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a17d)
  store %struct.Memory* %call_40a17d, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40a185	 Bytes: 7
  %loadMem_40a185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a185 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a185)
  store %struct.Memory* %call_40a185, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40a18c	 Bytes: 3
  %loadMem_40a18c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a18c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a18c)
  store %struct.Memory* %call_40a18c, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %edx	 RIP: 40a18f	 Bytes: 6
  %loadMem_40a18f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a18f = call %struct.Memory* @routine_movl_0x2e4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a18f)
  store %struct.Memory* %call_40a18f, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %edx	 RIP: 40a195	 Bytes: 7
  %loadMem_40a195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a195 = call %struct.Memory* @routine_cmpl_0x99da08___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a195)
  store %struct.Memory* %call_40a195, %struct.Memory** %MEMORY

  ; Code: je .L_40a1be	 RIP: 40a19c	 Bytes: 6
  %loadMem_40a19c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a19c = call %struct.Memory* @routine_je_.L_40a1be(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a19c, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_40a19c, %struct.Memory** %MEMORY

  %loadBr_40a19c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a19c = icmp eq i8 %loadBr_40a19c, 1
  br i1 %cmpBr_40a19c, label %block_.L_40a1be, label %block_40a1a2

block_40a1a2:
  ; Code: movl -0x14(%rbp), %eax	 RIP: 40a1a2	 Bytes: 3
  %loadMem_40a1a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1a2 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1a2)
  store %struct.Memory* %call_40a1a2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40a1a5	 Bytes: 3
  %loadMem_40a1a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1a5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1a5)
  store %struct.Memory* %call_40a1a5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 40a1a8	 Bytes: 3
  %loadMem_40a1a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1a8 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1a8)
  store %struct.Memory* %call_40a1a8, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 40a1ab	 Bytes: 4
  %loadMem_40a1ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1ab = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1ab)
  store %struct.Memory* %call_40a1ab, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 40a1af	 Bytes: 7
  %loadMem_40a1af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1af = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1af)
  store %struct.Memory* %call_40a1af, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 40a1b6	 Bytes: 3
  %loadMem_40a1b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1b6 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1b6)
  store %struct.Memory* %call_40a1b6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40a21e	 RIP: 40a1b9	 Bytes: 5
  %loadMem_40a1b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1b9 = call %struct.Memory* @routine_jmpq_.L_40a21e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1b9, i64 101, i64 5)
  store %struct.Memory* %call_40a1b9, %struct.Memory** %MEMORY

  br label %block_.L_40a21e

  ; Code: .L_40a1be:	 RIP: 40a1be	 Bytes: 0
block_.L_40a1be:

  ; Code: movslq -0x2c(%rbp), %rax	 RIP: 40a1be	 Bytes: 4
  %loadMem_40a1be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1be = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1be)
  store %struct.Memory* %call_40a1be, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 40a1c2	 Bytes: 8
  %loadMem_40a1c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1c2 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1c2)
  store %struct.Memory* %call_40a1c2, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %ecx	 RIP: 40a1ca	 Bytes: 3
  %loadMem_40a1ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1ca = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1ca)
  store %struct.Memory* %call_40a1ca, %struct.Memory** %MEMORY

  ; Code: jne .L_40a219	 RIP: 40a1cd	 Bytes: 6
  %loadMem_40a1cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1cd = call %struct.Memory* @routine_jne_.L_40a219(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1cd, i8* %BRANCH_TAKEN, i64 76, i64 6, i64 6)
  store %struct.Memory* %call_40a1cd, %struct.Memory** %MEMORY

  %loadBr_40a1cd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a1cd = icmp eq i8 %loadBr_40a1cd, 1
  br i1 %cmpBr_40a1cd, label %block_.L_40a219, label %block_40a1d3

block_40a1d3:
  ; Code: movq $0xa7f430, %rax	 RIP: 40a1d3	 Bytes: 10
  %loadMem_40a1d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1d3 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1d3)
  store %struct.Memory* %call_40a1d3, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 40a1dd	 Bytes: 4
  %loadMem_40a1dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1dd = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1dd)
  store %struct.Memory* %call_40a1dd, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rcx,4), %rcx	 RIP: 40a1e1	 Bytes: 8
  %loadMem_40a1e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1e1 = call %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1e1)
  store %struct.Memory* %call_40a1e1, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40a1e9	 Bytes: 7
  %loadMem_40a1e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1e9 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1e9)
  store %struct.Memory* %call_40a1e9, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40a1f0	 Bytes: 3
  %loadMem_40a1f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1f0 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1f0)
  store %struct.Memory* %call_40a1f0, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %edx	 RIP: 40a1f3	 Bytes: 6
  %loadMem_40a1f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1f3 = call %struct.Memory* @routine_movl_0x2e4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1f3)
  store %struct.Memory* %call_40a1f3, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %edx	 RIP: 40a1f9	 Bytes: 7
  %loadMem_40a1f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a1f9 = call %struct.Memory* @routine_cmpl_0x99da08___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a1f9)
  store %struct.Memory* %call_40a1f9, %struct.Memory** %MEMORY

  ; Code: je .L_40a219	 RIP: 40a200	 Bytes: 6
  %loadMem_40a200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a200 = call %struct.Memory* @routine_je_.L_40a219(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a200, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_40a200, %struct.Memory** %MEMORY

  %loadBr_40a200 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a200 = icmp eq i8 %loadBr_40a200, 1
  br i1 %cmpBr_40a200, label %block_.L_40a219, label %block_40a206

block_40a206:
  ; Code: movslq -0x2c(%rbp), %rax	 RIP: 40a206	 Bytes: 4
  %loadMem_40a206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a206 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a206)
  store %struct.Memory* %call_40a206, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rax,4), %edi	 RIP: 40a20a	 Bytes: 7
  %loadMem_40a20a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a20a = call %struct.Memory* @routine_movl_0xaab3f0___rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a20a)
  store %struct.Memory* %call_40a20a, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 40a211	 Bytes: 3
  %loadMem_40a211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a211 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a211)
  store %struct.Memory* %call_40a211, %struct.Memory** %MEMORY

  ; Code: callq .remove_liberty	 RIP: 40a214	 Bytes: 5
  %loadMem1_40a214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40a214 = call %struct.Memory* @routine_callq_.remove_liberty(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40a214, i64 1196, i64 5, i64 5)
  store %struct.Memory* %call1_40a214, %struct.Memory** %MEMORY

  %loadMem2_40a214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40a214 = load i64, i64* %3
  %call2_40a214 = call %struct.Memory* @sub_40a6c0.remove_liberty(%struct.State* %0, i64  %loadPC_40a214, %struct.Memory* %loadMem2_40a214)
  store %struct.Memory* %call2_40a214, %struct.Memory** %MEMORY

  ; Code: .L_40a219:	 RIP: 40a219	 Bytes: 0
  br label %block_.L_40a219
block_.L_40a219:

  ; Code: jmpq .L_40a21e	 RIP: 40a219	 Bytes: 5
  %loadMem_40a219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a219 = call %struct.Memory* @routine_jmpq_.L_40a21e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a219, i64 5, i64 5)
  store %struct.Memory* %call_40a219, %struct.Memory** %MEMORY

  br label %block_.L_40a21e

  ; Code: .L_40a21e:	 RIP: 40a21e	 Bytes: 0
block_.L_40a21e:

  ; Code: cmpl $0x0, -0x14(%rbp)	 RIP: 40a21e	 Bytes: 4
  %loadMem_40a21e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a21e = call %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a21e)
  store %struct.Memory* %call_40a21e, %struct.Memory** %MEMORY

  ; Code: jne .L_40a235	 RIP: 40a222	 Bytes: 6
  %loadMem_40a222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a222 = call %struct.Memory* @routine_jne_.L_40a235(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a222, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_40a222, %struct.Memory** %MEMORY

  %loadBr_40a222 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a222 = icmp eq i8 %loadBr_40a222, 1
  br i1 %cmpBr_40a222, label %block_.L_40a235, label %block_40a228

block_40a228:
  ; Code: movl -0x4(%rbp), %edi	 RIP: 40a228	 Bytes: 3
  %loadMem_40a228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a228 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a228)
  store %struct.Memory* %call_40a228, %struct.Memory** %MEMORY

  ; Code: callq .create_new_string	 RIP: 40a22b	 Bytes: 5
  %loadMem1_40a22b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40a22b = call %struct.Memory* @routine_callq_.create_new_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40a22b, i64 1573, i64 5, i64 5)
  store %struct.Memory* %call1_40a22b, %struct.Memory** %MEMORY

  %loadMem2_40a22b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40a22b = load i64, i64* %3
  %call2_40a22b = call %struct.Memory* @sub_40a850.create_new_string(%struct.State* %0, i64  %loadPC_40a22b, %struct.Memory* %loadMem2_40a22b)
  store %struct.Memory* %call2_40a22b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40a293	 RIP: 40a230	 Bytes: 5
  %loadMem_40a230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a230 = call %struct.Memory* @routine_jmpq_.L_40a293(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a230, i64 99, i64 5)
  store %struct.Memory* %call_40a230, %struct.Memory** %MEMORY

  br label %block_.L_40a293

  ; Code: .L_40a235:	 RIP: 40a235	 Bytes: 0
block_.L_40a235:

  ; Code: cmpl $0x1, -0x14(%rbp)	 RIP: 40a235	 Bytes: 4
  %loadMem_40a235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a235 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a235)
  store %struct.Memory* %call_40a235, %struct.Memory** %MEMORY

  ; Code: jne .L_40a286	 RIP: 40a239	 Bytes: 6
  %loadMem_40a239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a239 = call %struct.Memory* @routine_jne_.L_40a286(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a239, i8* %BRANCH_TAKEN, i64 77, i64 6, i64 6)
  store %struct.Memory* %call_40a239, %struct.Memory** %MEMORY

  %loadBr_40a239 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a239 = icmp eq i8 %loadBr_40a239, 1
  br i1 %cmpBr_40a239, label %block_.L_40a286, label %block_40a23f

block_40a23f:
  ; Code: cmpl $0x0, -0x1c(%rbp)	 RIP: 40a23f	 Bytes: 4
  %loadMem_40a23f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a23f = call %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a23f)
  store %struct.Memory* %call_40a23f, %struct.Memory** %MEMORY

  ; Code: jl .L_40a24e	 RIP: 40a243	 Bytes: 6
  %loadMem_40a243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a243 = call %struct.Memory* @routine_jl_.L_40a24e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a243, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_40a243, %struct.Memory** %MEMORY

  %loadBr_40a243 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a243 = icmp eq i8 %loadBr_40a243, 1
  br i1 %cmpBr_40a243, label %block_.L_40a24e, label %block_40a249

block_40a249:
  ; Code: jmpq .L_40a276	 RIP: 40a249	 Bytes: 5
  %loadMem_40a249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a249 = call %struct.Memory* @routine_jmpq_.L_40a276(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a249, i64 45, i64 5)
  store %struct.Memory* %call_40a249, %struct.Memory** %MEMORY

  br label %block_.L_40a276

  ; Code: .L_40a24e:	 RIP: 40a24e	 Bytes: 0
block_.L_40a24e:

  ; Code: movq $0x57a16e, %rdi	 RIP: 40a24e	 Bytes: 10
  %loadMem_40a24e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a24e = call %struct.Memory* @routine_movq__0x57a16e___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a24e)
  store %struct.Memory* %call_40a24e, %struct.Memory** %MEMORY

  ; Code: movl $0xdaa, %esi	 RIP: 40a258	 Bytes: 5
  %loadMem_40a258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a258 = call %struct.Memory* @routine_movl__0xdaa___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a258)
  store %struct.Memory* %call_40a258, %struct.Memory** %MEMORY

  ; Code: movq $0x57c4d2, %rdx	 RIP: 40a25d	 Bytes: 10
  %loadMem_40a25d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a25d = call %struct.Memory* @routine_movq__0x57c4d2___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a25d)
  store %struct.Memory* %call_40a25d, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 40a267	 Bytes: 5
  %loadMem_40a267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a267 = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a267)
  store %struct.Memory* %call_40a267, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 40a26c	 Bytes: 2
  %loadMem_40a26c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a26c = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a26c)
  store %struct.Memory* %call_40a26c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 40a26e	 Bytes: 3
  %loadMem_40a26e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a26e = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a26e)
  store %struct.Memory* %call_40a26e, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 40a271	 Bytes: 5
  %loadMem1_40a271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40a271 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40a271, i64 294431, i64 5, i64 5)
  store %struct.Memory* %call1_40a271, %struct.Memory** %MEMORY

  %loadMem2_40a271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40a271 = load i64, i64* %3
  %call2_40a271 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_40a271, %struct.Memory* %loadMem2_40a271)
  store %struct.Memory* %call2_40a271, %struct.Memory** %MEMORY

  ; Code: .L_40a276:	 RIP: 40a276	 Bytes: 0
  br label %block_.L_40a276
block_.L_40a276:

  ; Code: movl -0x4(%rbp), %edi	 RIP: 40a276	 Bytes: 3
  %loadMem_40a276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a276 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a276)
  store %struct.Memory* %call_40a276, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %esi	 RIP: 40a279	 Bytes: 3
  %loadMem_40a279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a279 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a279)
  store %struct.Memory* %call_40a279, %struct.Memory** %MEMORY

  ; Code: callq .extend_neighbor_string	 RIP: 40a27c	 Bytes: 5
  %loadMem1_40a27c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40a27c = call %struct.Memory* @routine_callq_.extend_neighbor_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40a27c, i64 3892, i64 5, i64 5)
  store %struct.Memory* %call1_40a27c, %struct.Memory** %MEMORY

  %loadMem2_40a27c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40a27c = load i64, i64* %3
  %call2_40a27c = call %struct.Memory* @sub_40b1b0.extend_neighbor_string(%struct.State* %0, i64  %loadPC_40a27c, %struct.Memory* %loadMem2_40a27c)
  store %struct.Memory* %call2_40a27c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40a34b	 RIP: 40a281	 Bytes: 5
  %loadMem_40a281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a281 = call %struct.Memory* @routine_jmpq_.L_40a34b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a281, i64 202, i64 5)
  store %struct.Memory* %call_40a281, %struct.Memory** %MEMORY

  br label %block_.L_40a34b

  ; Code: .L_40a286:	 RIP: 40a286	 Bytes: 0
block_.L_40a286:

  ; Code: movl -0x4(%rbp), %edi	 RIP: 40a286	 Bytes: 3
  %loadMem_40a286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a286 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a286)
  store %struct.Memory* %call_40a286, %struct.Memory** %MEMORY

  ; Code: callq .assimilate_neighbor_strings	 RIP: 40a289	 Bytes: 5
  %loadMem1_40a289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40a289 = call %struct.Memory* @routine_callq_.assimilate_neighbor_strings(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40a289, i64 7655, i64 5, i64 5)
  store %struct.Memory* %call1_40a289, %struct.Memory** %MEMORY

  %loadMem2_40a289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40a289 = load i64, i64* %3
  %call2_40a289 = call %struct.Memory* @sub_40c070.assimilate_neighbor_strings(%struct.State* %0, i64  %loadPC_40a289, %struct.Memory* %loadMem2_40a289)
  store %struct.Memory* %call2_40a289, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40a34b	 RIP: 40a28e	 Bytes: 5
  %loadMem_40a28e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a28e = call %struct.Memory* @routine_jmpq_.L_40a34b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a28e, i64 189, i64 5)
  store %struct.Memory* %call_40a28e, %struct.Memory** %MEMORY

  br label %block_.L_40a34b

  ; Code: .L_40a293:	 RIP: 40a293	 Bytes: 0
block_.L_40a293:

  ; Code: movq $0xa7f430, %rax	 RIP: 40a293	 Bytes: 10
  %loadMem_40a293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a293 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a293)
  store %struct.Memory* %call_40a293, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 40a29d	 Bytes: 4
  %loadMem_40a29d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a29d = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a29d)
  store %struct.Memory* %call_40a29d, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %edx	 RIP: 40a2a1	 Bytes: 7
  %loadMem_40a2a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2a1 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2a1)
  store %struct.Memory* %call_40a2a1, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x1c(%rbp)	 RIP: 40a2a8	 Bytes: 3
  %loadMem_40a2a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2a8 = call %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2a8)
  store %struct.Memory* %call_40a2a8, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 40a2ab	 Bytes: 4
  %loadMem_40a2ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2ab = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2ab)
  store %struct.Memory* %call_40a2ab, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40a2af	 Bytes: 7
  %loadMem_40a2af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2af = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2af)
  store %struct.Memory* %call_40a2af, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40a2b6	 Bytes: 3
  %loadMem_40a2b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2b6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2b6)
  store %struct.Memory* %call_40a2b6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xc(%rax)	 RIP: 40a2b9	 Bytes: 4
  %loadMem_40a2b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2b9 = call %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2b9)
  store %struct.Memory* %call_40a2b9, %struct.Memory** %MEMORY

  ; Code: jne .L_40a34b	 RIP: 40a2bd	 Bytes: 6
  %loadMem_40a2bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2bd = call %struct.Memory* @routine_jne_.L_40a34b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2bd, i8* %BRANCH_TAKEN, i64 142, i64 6, i64 6)
  store %struct.Memory* %call_40a2bd, %struct.Memory** %MEMORY

  %loadBr_40a2bd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a2bd = icmp eq i8 %loadBr_40a2bd, 1
  br i1 %cmpBr_40a2bd, label %block_.L_40a34b, label %block_40a2c3

block_40a2c3:
  ; Code: movq $0xa7f430, %rax	 RIP: 40a2c3	 Bytes: 10
  %loadMem_40a2c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2c3 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2c3)
  store %struct.Memory* %call_40a2c3, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 40a2cd	 Bytes: 4
  %loadMem_40a2cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2cd = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2cd)
  store %struct.Memory* %call_40a2cd, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40a2d1	 Bytes: 7
  %loadMem_40a2d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2d1 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2d1)
  store %struct.Memory* %call_40a2d1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40a2d8	 Bytes: 3
  %loadMem_40a2d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2d8 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2d8)
  store %struct.Memory* %call_40a2d8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x4(%rax)	 RIP: 40a2db	 Bytes: 4
  %loadMem_40a2db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2db = call %struct.Memory* @routine_cmpl__0x1__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2db)
  store %struct.Memory* %call_40a2db, %struct.Memory** %MEMORY

  ; Code: jne .L_40a34b	 RIP: 40a2df	 Bytes: 6
  %loadMem_40a2df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2df = call %struct.Memory* @routine_jne_.L_40a34b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2df, i8* %BRANCH_TAKEN, i64 108, i64 6, i64 6)
  store %struct.Memory* %call_40a2df, %struct.Memory** %MEMORY

  %loadBr_40a2df = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a2df = icmp eq i8 %loadBr_40a2df, 1
  br i1 %cmpBr_40a2df, label %block_.L_40a34b, label %block_40a2e5

block_40a2e5:
  ; Code: cmpl $0x1, -0x10(%rbp)	 RIP: 40a2e5	 Bytes: 4
  %loadMem_40a2e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2e5 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2e5)
  store %struct.Memory* %call_40a2e5, %struct.Memory** %MEMORY

  ; Code: jne .L_40a34b	 RIP: 40a2e9	 Bytes: 6
  %loadMem_40a2e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2e9 = call %struct.Memory* @routine_jne_.L_40a34b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2e9, i8* %BRANCH_TAKEN, i64 98, i64 6, i64 6)
  store %struct.Memory* %call_40a2e9, %struct.Memory** %MEMORY

  %loadBr_40a2e9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a2e9 = icmp eq i8 %loadBr_40a2e9, 1
  br i1 %cmpBr_40a2e9, label %block_.L_40a34b, label %block_40a2ef

block_40a2ef:
  ; Code: cmpl $0x0, 0xb6eec4	 RIP: 40a2ef	 Bytes: 8
  %loadMem_40a2ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2ef = call %struct.Memory* @routine_cmpl__0x0__0xb6eec4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2ef)
  store %struct.Memory* %call_40a2ef, %struct.Memory** %MEMORY

  ; Code: je .L_40a313	 RIP: 40a2f7	 Bytes: 6
  %loadMem_40a2f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2f7 = call %struct.Memory* @routine_je_.L_40a313(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2f7, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_40a2f7, %struct.Memory** %MEMORY

  %loadBr_40a2f7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40a2f7 = icmp eq i8 %loadBr_40a2f7, 1
  br i1 %cmpBr_40a2f7, label %block_.L_40a313, label %block_40a2fd

block_40a2fd:
  ; Code: movq $0xafc500, %rdi	 RIP: 40a2fd	 Bytes: 10
  %loadMem_40a2fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a2fd = call %struct.Memory* @routine_movq__0xafc500___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a2fd)
  store %struct.Memory* %call_40a2fd, %struct.Memory** %MEMORY

  ; Code: movl 0xb6eec4, %esi	 RIP: 40a307	 Bytes: 7
  %loadMem_40a307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a307 = call %struct.Memory* @routine_movl_0xb6eec4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a307)
  store %struct.Memory* %call_40a307, %struct.Memory** %MEMORY

  ; Code: callq .hashdata_invert_ko	 RIP: 40a30e	 Bytes: 5
  %loadMem1_40a30e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40a30e = call %struct.Memory* @routine_callq_.hashdata_invert_ko(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40a30e, i64 124930, i64 5, i64 5)
  store %struct.Memory* %call1_40a30e, %struct.Memory** %MEMORY

  %loadMem2_40a30e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40a30e = load i64, i64* %3
  %call2_40a30e = call %struct.Memory* @sub_428b10.hashdata_invert_ko(%struct.State* %0, i64  %loadPC_40a30e, %struct.Memory* %loadMem2_40a30e)
  store %struct.Memory* %call2_40a30e, %struct.Memory** %MEMORY

  ; Code: .L_40a313:	 RIP: 40a313	 Bytes: 0
  br label %block_.L_40a313
block_.L_40a313:

  ; Code: movq $0xafc500, %rdi	 RIP: 40a313	 Bytes: 10
  %loadMem_40a313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a313 = call %struct.Memory* @routine_movq__0xafc500___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a313)
  store %struct.Memory* %call_40a313, %struct.Memory** %MEMORY

  ; Code: movq $0xa7f430, %rax	 RIP: 40a31d	 Bytes: 10
  %loadMem_40a31d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a31d = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a31d)
  store %struct.Memory* %call_40a31d, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 40a327	 Bytes: 4
  %loadMem_40a327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a327 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a327)
  store %struct.Memory* %call_40a327, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40a32b	 Bytes: 7
  %loadMem_40a32b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a32b = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a32b)
  store %struct.Memory* %call_40a32b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40a332	 Bytes: 3
  %loadMem_40a332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a332 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a332)
  store %struct.Memory* %call_40a332, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rax), %edx	 RIP: 40a335	 Bytes: 3
  %loadMem_40a335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a335 = call %struct.Memory* @routine_movl_0x10__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a335)
  store %struct.Memory* %call_40a335, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xb6eec4	 RIP: 40a338	 Bytes: 7
  %loadMem_40a338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a338 = call %struct.Memory* @routine_movl__edx__0xb6eec4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a338)
  store %struct.Memory* %call_40a338, %struct.Memory** %MEMORY

  ; Code: movl 0xb6eec4, %esi	 RIP: 40a33f	 Bytes: 7
  %loadMem_40a33f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a33f = call %struct.Memory* @routine_movl_0xb6eec4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a33f)
  store %struct.Memory* %call_40a33f, %struct.Memory** %MEMORY

  ; Code: callq .hashdata_invert_ko	 RIP: 40a346	 Bytes: 5
  %loadMem1_40a346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40a346 = call %struct.Memory* @routine_callq_.hashdata_invert_ko(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40a346, i64 124874, i64 5, i64 5)
  store %struct.Memory* %call1_40a346, %struct.Memory** %MEMORY

  %loadMem2_40a346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40a346 = load i64, i64* %3
  %call2_40a346 = call %struct.Memory* @sub_428b10.hashdata_invert_ko(%struct.State* %0, i64  %loadPC_40a346, %struct.Memory* %loadMem2_40a346)
  store %struct.Memory* %call2_40a346, %struct.Memory** %MEMORY

  ; Code: .L_40a34b:	 RIP: 40a34b	 Bytes: 0
  br label %block_.L_40a34b
block_.L_40a34b:

  ; Code: addq $0x30, %rsp	 RIP: 40a34b	 Bytes: 4
  %loadMem_40a34b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a34b = call %struct.Memory* @routine_addq__0x30___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a34b)
  store %struct.Memory* %call_40a34b, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 40a34f	 Bytes: 1
  %loadMem_40a34f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a34f = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a34f)
  store %struct.Memory* %call_40a34f, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 40a350	 Bytes: 1
  %loadMem_40a350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40a350 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40a350)
  store %struct.Memory* %call_40a350, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_40a350
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_subl_MINUS0x8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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


define %struct.Memory* @routine_movl__0xffffffff__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = zext i8 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_jne_.L_409abe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl_0xaab3f0___rax_4____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11187184
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %14)
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

define %struct.Memory* @routine_callq_.do_remove_string(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl_MINUS0x10__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_jne_.L_409b13(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_jne_.L_409b68(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






















define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_409bbd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jne_.L_409d56(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_409c1b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 8
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_409c27(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_409c27(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__0x1__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_409d51(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_je_.L_409c7b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_jne_.L_409c87(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_jle_.L_409c87(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_jmpq_.L_409d4c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_je_.L_409cdb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_jne_.L_409ce7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_jle_.L_409ce7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_jmpq_.L_409d47(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_je_.L_409d3b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_jne_.L_409d42(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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














define %struct.Memory* @routine_jle_.L_409d42(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_jmpq_.L_409d5d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_409d81(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_callq_.do_commit_suicide(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_40a34b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_409d86(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0xafc500___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0xafc500_type* @G__0xafc500 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0xb89e60___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0xb89e60_type* @G__0xb89e60 to i64))
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_0xa7f420___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0xa7f420_type* @G_0xa7f420 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rax____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq_0xa7f420___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0xa7f420_type* @G_0xa7f420 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rax___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
  ret %struct.Memory* %15
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

define %struct.Memory* @routine_addq__0x10___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 16)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rcx__0xa7f420(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xa7f420_type* @G_0xa7f420 to i64), i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__edx__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 8
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__dl___sil(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 9
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %DL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %SIL, i64 %15)
  ret %struct.Memory* %18
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__sil__0xb89e60___rax_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 12099168
  %15 = load i8, i8* %SIL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
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




define %struct.Memory* @routine_callq_.hashdata_invert_stone(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jne_.L_409e91(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_je_.L_409e91(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11187184
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_jmpq_.L_409f1e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jne_.L_409f19(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
















define %struct.Memory* @routine_je_.L_409f19(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_callq_.remove_liberty(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movl_0x99da08___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x99da08_type* @G_0x99da08 to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movl__esi__0x2e4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 740
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_jne_.L_409faf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
















define %struct.Memory* @routine_je_.L_409faf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


















define %struct.Memory* @routine_jmpq_.L_40a03c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jne_.L_40a037(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
















define %struct.Memory* @routine_je_.L_40a037(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
































define %struct.Memory* @routine_jne_.L_40a0cd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
















define %struct.Memory* @routine_je_.L_40a0cd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


















define %struct.Memory* @routine_jmpq_.L_40a15a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jne_.L_40a155(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
















define %struct.Memory* @routine_je_.L_40a155(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
































define %struct.Memory* @routine_jne_.L_40a1be(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
















define %struct.Memory* @routine_je_.L_40a1be(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 11187184
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_jmpq_.L_40a21e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jne_.L_40a219(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
















define %struct.Memory* @routine_je_.L_40a219(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jne_.L_40a235(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_callq_.create_new_string(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_40a293(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jne_.L_40a286(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_jl_.L_40a24e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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


define %struct.Memory* @routine_jmpq_.L_40a276(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0xdaa___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 3498)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x57c4d2___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57c4d2_type* @G__0x57c4d2 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 4294967295)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__eax___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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




define %struct.Memory* @routine_movl_MINUS0x1c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.extend_neighbor_string(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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






define %struct.Memory* @routine_callq_.assimilate_neighbor_strings(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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








define %struct.Memory* @routine_movl_0xaab3f0___rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11187184
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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








define %struct.Memory* @routine_jne_.L_40a34b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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










define %struct.Memory* @routine_cmpl__0x1__0x4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_cmpl__0x1__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_cmpl__0x0__0xb6eec4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xb6eec4_type* @G_0xb6eec4 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_40a313(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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




define %struct.Memory* @routine_movl_0xb6eec4___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0xb6eec4_type* @G_0xb6eec4 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_callq_.hashdata_invert_ko(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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












define %struct.Memory* @routine_movl_0x10__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__0xb6eec4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xb6eec4_type* @G_0xb6eec4 to i64), i64 %10)
  ret %struct.Memory* %13
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

