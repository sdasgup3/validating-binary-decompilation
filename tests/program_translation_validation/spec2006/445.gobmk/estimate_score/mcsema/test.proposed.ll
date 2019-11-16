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

declare %struct.Memory* @sub_46ccd0.dilate_erode(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_46d5f0.close_bubbles(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_46dc00.print_regions(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_46de20.captured_territory(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x746af__rip__type = type <{ [4 x i8] }>
@G_0x746af__rip_= global %G_0x746af__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x748c3__rip__type = type <{ [4 x i8] }>
@G_0x748c3__rip_= global %G_0x748c3__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x74932__rip__type = type <{ [4 x i8] }>
@G_0x74932__rip_= global %G_0x74932__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x749a6__rip__type = type <{ [4 x i8] }>
@G_0x749a6__rip_= global %G_0x749a6__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x749c6__rip__type = type <{ [4 x i8] }>
@G_0x749c6__rip_= global %G_0x749c6__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x74a03__rip__type = type <{ [4 x i8] }>
@G_0x74a03__rip_= global %G_0x74a03__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x74a56__rip__type = type <{ [4 x i8] }>
@G_0x74a56__rip_= global %G_0x74a56__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x74a76__rip__type = type <{ [4 x i8] }>
@G_0x74a76__rip_= global %G_0x74a76__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x74d4d__rip__type = type <{ [4 x i8] }>
@G_0x74d4d__rip_= global %G_0x74d4d__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x74db8__rip__type = type <{ [4 x i8] }>
@G_0x74db8__rip_= global %G_0x74db8__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x74e01__rip__type = type <{ [4 x i8] }>
@G_0x74e01__rip_= global %G_0x74e01__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x74e54__rip__type = type <{ [4 x i8] }>
@G_0x74e54__rip_= global %G_0x74e54__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x74e74__rip__type = type <{ [4 x i8] }>
@G_0x74e74__rip_= global %G_0x74e74__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x74eb1__rip__type = type <{ [4 x i8] }>
@G_0x74eb1__rip_= global %G_0x74eb1__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x74f04__rip__type = type <{ [4 x i8] }>
@G_0x74f04__rip_= global %G_0x74f04__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x74f24__rip__type = type <{ [4 x i8] }>
@G_0x74f24__rip_= global %G_0x74f24__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x7ae438_type = type <{ [4 x i8] }>
@G_0x7ae438= global %G_0x7ae438_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xab0f24_type = type <{ [4 x i8] }>
@G_0xab0f24= global %G_0xab0f24_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xab0fc0_type = type <{ [1 x i8] }>
@G_0xab0fc0= global %G_0xab0fc0_type <{ [1 x i8] c"\00" }>
%G_0xb38cb0_type = type <{ [4 x i8] }>
@G_0xb38cb0= global %G_0xb38cb0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb454f8_type = type <{ [4 x i8] }>
@G_0xb454f8= global %G_0xb454f8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb8c040_type = type <{ [4 x i8] }>
@G_0xb8c040= global %G_0xb8c040_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x58058f_type = type <{ [8 x i8] }>
@G__0x58058f= global %G__0x58058f_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x5805b3_type = type <{ [8 x i8] }>
@G__0x5805b3= global %G__0x5805b3_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x5805dc_type = type <{ [8 x i8] }>
@G__0x5805dc= global %G__0x5805dc_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @estimate_score(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .estimate_score:	 RIP: 46e0c0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 46e0c0	 Bytes: 1
  %loadMem_46e0c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e0c0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e0c0)
  store %struct.Memory* %call_46e0c0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 46e0c1	 Bytes: 3
  %loadMem_46e0c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e0c1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e0c1)
  store %struct.Memory* %call_46e0c1, %struct.Memory** %MEMORY

  ; Code: subq $0x6c0, %rsp	 RIP: 46e0c4	 Bytes: 7
  %loadMem_46e0c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e0c4 = call %struct.Memory* @routine_subq__0x6c0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e0c4)
  store %struct.Memory* %call_46e0c4, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 46e0cb	 Bytes: 5
  %loadMem_46e0cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e0cb = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e0cb)
  store %struct.Memory* %call_46e0cb, %struct.Memory** %MEMORY

  ; Code: movl $0x15, %ecx	 RIP: 46e0d0	 Bytes: 5
  %loadMem_46e0d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e0d0 = call %struct.Memory* @routine_movl__0x15___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e0d0)
  store %struct.Memory* %call_46e0d0, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %edx	 RIP: 46e0d5	 Bytes: 5
  %loadMem_46e0d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e0d5 = call %struct.Memory* @routine_movl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e0d5)
  store %struct.Memory* %call_46e0d5, %struct.Memory** %MEMORY

  ; Code: leaq -0x650(%rbp), %r8	 RIP: 46e0da	 Bytes: 7
  %loadMem_46e0da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e0da = call %struct.Memory* @routine_leaq_MINUS0x650__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e0da)
  store %struct.Memory* %call_46e0da, %struct.Memory** %MEMORY

  ; Code: xorps %xmm0, %xmm0	 RIP: 46e0e1	 Bytes: 3
  %loadMem_46e0e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e0e1 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e0e1)
  store %struct.Memory* %call_46e0e1, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 46e0e4	 Bytes: 4
  %loadMem_46e0e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e0e4 = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e0e4)
  store %struct.Memory* %call_46e0e4, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 46e0e8	 Bytes: 4
  %loadMem_46e0e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e0e8 = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e0e8)
  store %struct.Memory* %call_46e0e8, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x654(%rbp)	 RIP: 46e0ec	 Bytes: 8
  %loadMem_46e0ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e0ec = call %struct.Memory* @routine_movss__xmm0__MINUS0x654__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e0ec)
  store %struct.Memory* %call_46e0ec, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x658(%rbp)	 RIP: 46e0f4	 Bytes: 8
  %loadMem_46e0f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e0f4 = call %struct.Memory* @routine_movss__xmm0__MINUS0x658__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e0f4)
  store %struct.Memory* %call_46e0f4, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x65c(%rbp)	 RIP: 46e0fc	 Bytes: 8
  %loadMem_46e0fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e0fc = call %struct.Memory* @routine_movss__xmm0__MINUS0x65c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e0fc)
  store %struct.Memory* %call_46e0fc, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x660(%rbp)	 RIP: 46e104	 Bytes: 8
  %loadMem_46e104 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e104 = call %struct.Memory* @routine_movss__xmm0__MINUS0x660__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e104)
  store %struct.Memory* %call_46e104, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 46e10c	 Bytes: 2
  %loadMem_46e10c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e10c = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e10c)
  store %struct.Memory* %call_46e10c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 46e10e	 Bytes: 2
  %loadMem_46e10e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e10e = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e10e)
  store %struct.Memory* %call_46e10e, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x69c(%rbp)	 RIP: 46e110	 Bytes: 6
  %loadMem_46e110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e110 = call %struct.Memory* @routine_movl__edx__MINUS0x69c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e110)
  store %struct.Memory* %call_46e110, %struct.Memory** %MEMORY

  ; Code: movq %r8, %rdx	 RIP: 46e116	 Bytes: 3
  %loadMem_46e116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e116 = call %struct.Memory* @routine_movq__r8___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e116)
  store %struct.Memory* %call_46e116, %struct.Memory** %MEMORY

  ; Code: movl -0x69c(%rbp), %ecx	 RIP: 46e119	 Bytes: 6
  %loadMem_46e119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e119 = call %struct.Memory* @routine_movl_MINUS0x69c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e119)
  store %struct.Memory* %call_46e119, %struct.Memory** %MEMORY

  ; Code: callq .dilate_erode	 RIP: 46e11f	 Bytes: 5
  %loadMem1_46e11f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46e11f = call %struct.Memory* @routine_callq_.dilate_erode(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46e11f, i64 -5199, i64 5, i64 5)
  store %struct.Memory* %call1_46e11f, %struct.Memory** %MEMORY

  %loadMem2_46e11f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46e11f = load i64, i64* %3
  %call2_46e11f = call %struct.Memory* @sub_46ccd0.dilate_erode(%struct.State* %0, i64  %loadPC_46e11f, %struct.Memory* %loadMem2_46e11f)
  store %struct.Memory* %call2_46e11f, %struct.Memory** %MEMORY

  ; Code: leaq -0x650(%rbp), %rdi	 RIP: 46e124	 Bytes: 7
  %loadMem_46e124 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e124 = call %struct.Memory* @routine_leaq_MINUS0x650__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e124)
  store %struct.Memory* %call_46e124, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x678(%rbp)	 RIP: 46e12b	 Bytes: 6
  %loadMem_46e12b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e12b = call %struct.Memory* @routine_movl__eax__MINUS0x678__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e12b)
  store %struct.Memory* %call_46e12b, %struct.Memory** %MEMORY

  ; Code: callq .close_bubbles	 RIP: 46e131	 Bytes: 5
  %loadMem1_46e131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46e131 = call %struct.Memory* @routine_callq_.close_bubbles(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46e131, i64 -2881, i64 5, i64 5)
  store %struct.Memory* %call1_46e131, %struct.Memory** %MEMORY

  %loadMem2_46e131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46e131 = load i64, i64* %3
  %call2_46e131 = call %struct.Memory* @sub_46d5f0.close_bubbles(%struct.State* %0, i64  %loadPC_46e131, %struct.Memory* %loadMem2_46e131)
  store %struct.Memory* %call2_46e131, %struct.Memory** %MEMORY

  ; Code: movl 0xab0f24, %eax	 RIP: 46e136	 Bytes: 7
  %loadMem_46e136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e136 = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e136)
  store %struct.Memory* %call_46e136, %struct.Memory** %MEMORY

  ; Code: andl $0x10000, %eax	 RIP: 46e13d	 Bytes: 5
  %loadMem_46e13d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e13d = call %struct.Memory* @routine_andl__0x10000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e13d)
  store %struct.Memory* %call_46e13d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46e142	 Bytes: 3
  %loadMem_46e142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e142 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e142)
  store %struct.Memory* %call_46e142, %struct.Memory** %MEMORY

  ; Code: je .L_46e157	 RIP: 46e145	 Bytes: 6
  %loadMem_46e145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e145 = call %struct.Memory* @routine_je_.L_46e157(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e145, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_46e145, %struct.Memory** %MEMORY

  %loadBr_46e145 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e145 = icmp eq i8 %loadBr_46e145, 1
  br i1 %cmpBr_46e145, label %block_.L_46e157, label %block_46e14b

block_46e14b:
  ; Code: leaq -0x650(%rbp), %rdi	 RIP: 46e14b	 Bytes: 7
  %loadMem_46e14b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e14b = call %struct.Memory* @routine_leaq_MINUS0x650__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e14b)
  store %struct.Memory* %call_46e14b, %struct.Memory** %MEMORY

  ; Code: callq .print_regions	 RIP: 46e152	 Bytes: 5
  %loadMem1_46e152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46e152 = call %struct.Memory* @routine_callq_.print_regions(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46e152, i64 -1362, i64 5, i64 5)
  store %struct.Memory* %call1_46e152, %struct.Memory** %MEMORY

  %loadMem2_46e152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46e152 = load i64, i64* %3
  %call2_46e152 = call %struct.Memory* @sub_46dc00.print_regions(%struct.State* %0, i64  %loadPC_46e152, %struct.Memory* %loadMem2_46e152)
  store %struct.Memory* %call2_46e152, %struct.Memory** %MEMORY

  ; Code: .L_46e157:	 RIP: 46e157	 Bytes: 0
  br label %block_.L_46e157
block_.L_46e157:

  ; Code: movl $0x0, -0x664(%rbp)	 RIP: 46e157	 Bytes: 10
  %loadMem_46e157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e157 = call %struct.Memory* @routine_movl__0x0__MINUS0x664__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e157)
  store %struct.Memory* %call_46e157, %struct.Memory** %MEMORY

  ; Code: .L_46e161:	 RIP: 46e161	 Bytes: 0
  br label %block_.L_46e161
block_.L_46e161:

  ; Code: movl -0x664(%rbp), %eax	 RIP: 46e161	 Bytes: 6
  %loadMem_46e161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e161 = call %struct.Memory* @routine_movl_MINUS0x664__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e161)
  store %struct.Memory* %call_46e161, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7ae438, %eax	 RIP: 46e167	 Bytes: 7
  %loadMem_46e167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e167 = call %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e167)
  store %struct.Memory* %call_46e167, %struct.Memory** %MEMORY

  ; Code: jge .L_46e4f1	 RIP: 46e16e	 Bytes: 6
  %loadMem_46e16e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e16e = call %struct.Memory* @routine_jge_.L_46e4f1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e16e, i8* %BRANCH_TAKEN, i64 899, i64 6, i64 6)
  store %struct.Memory* %call_46e16e, %struct.Memory** %MEMORY

  %loadBr_46e16e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e16e = icmp eq i8 %loadBr_46e16e, 1
  br i1 %cmpBr_46e16e, label %block_.L_46e4f1, label %block_46e174

block_46e174:
  ; Code: movl $0x0, -0x67c(%rbp)	 RIP: 46e174	 Bytes: 10
  %loadMem_46e174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e174 = call %struct.Memory* @routine_movl__0x0__MINUS0x67c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e174)
  store %struct.Memory* %call_46e174, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x680(%rbp)	 RIP: 46e17e	 Bytes: 10
  %loadMem_46e17e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e17e = call %struct.Memory* @routine_movl__0x0__MINUS0x680__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e17e)
  store %struct.Memory* %call_46e17e, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x684(%rbp)	 RIP: 46e188	 Bytes: 10
  %loadMem_46e188 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e188 = call %struct.Memory* @routine_movl__0x0__MINUS0x684__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e188)
  store %struct.Memory* %call_46e188, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x688(%rbp)	 RIP: 46e192	 Bytes: 10
  %loadMem_46e192 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e192 = call %struct.Memory* @routine_movl__0x0__MINUS0x688__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e192)
  store %struct.Memory* %call_46e192, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x668(%rbp)	 RIP: 46e19c	 Bytes: 10
  %loadMem_46e19c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e19c = call %struct.Memory* @routine_movl__0x0__MINUS0x668__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e19c)
  store %struct.Memory* %call_46e19c, %struct.Memory** %MEMORY

  ; Code: .L_46e1a6:	 RIP: 46e1a6	 Bytes: 0
  br label %block_.L_46e1a6
block_.L_46e1a6:

  ; Code: movl -0x668(%rbp), %eax	 RIP: 46e1a6	 Bytes: 6
  %loadMem_46e1a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e1a6 = call %struct.Memory* @routine_movl_MINUS0x668__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e1a6)
  store %struct.Memory* %call_46e1a6, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7ae438, %eax	 RIP: 46e1ac	 Bytes: 7
  %loadMem_46e1ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e1ac = call %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e1ac)
  store %struct.Memory* %call_46e1ac, %struct.Memory** %MEMORY

  ; Code: jge .L_46e428	 RIP: 46e1b3	 Bytes: 6
  %loadMem_46e1b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e1b3 = call %struct.Memory* @routine_jge_.L_46e428(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e1b3, i8* %BRANCH_TAKEN, i64 629, i64 6, i64 6)
  store %struct.Memory* %call_46e1b3, %struct.Memory** %MEMORY

  %loadBr_46e1b3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e1b3 = icmp eq i8 %loadBr_46e1b3, 1
  br i1 %cmpBr_46e1b3, label %block_.L_46e428, label %block_46e1b9

block_46e1b9:
  ; Code: imull $0x14, -0x664(%rbp), %eax	 RIP: 46e1b9	 Bytes: 7
  %loadMem_46e1b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e1b9 = call %struct.Memory* @routine_imull__0x14__MINUS0x664__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e1b9)
  store %struct.Memory* %call_46e1b9, %struct.Memory** %MEMORY

  ; Code: addl $0x15, %eax	 RIP: 46e1c0	 Bytes: 3
  %loadMem_46e1c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e1c0 = call %struct.Memory* @routine_addl__0x15___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e1c0)
  store %struct.Memory* %call_46e1c0, %struct.Memory** %MEMORY

  ; Code: addl -0x668(%rbp), %eax	 RIP: 46e1c3	 Bytes: 6
  %loadMem_46e1c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e1c3 = call %struct.Memory* @routine_addl_MINUS0x668__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e1c3)
  store %struct.Memory* %call_46e1c3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x66c(%rbp)	 RIP: 46e1c9	 Bytes: 6
  %loadMem_46e1c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e1c9 = call %struct.Memory* @routine_movl__eax__MINUS0x66c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e1c9)
  store %struct.Memory* %call_46e1c9, %struct.Memory** %MEMORY

  ; Code: movslq -0x66c(%rbp), %rcx	 RIP: 46e1cf	 Bytes: 7
  %loadMem_46e1cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e1cf = call %struct.Memory* @routine_movslq_MINUS0x66c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e1cf)
  store %struct.Memory* %call_46e1cf, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46e1d6	 Bytes: 8
  %loadMem_46e1d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e1d6 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e1d6)
  store %struct.Memory* %call_46e1d6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %eax	 RIP: 46e1de	 Bytes: 3
  %loadMem_46e1de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e1de = call %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e1de)
  store %struct.Memory* %call_46e1de, %struct.Memory** %MEMORY

  ; Code: jne .L_46e27f	 RIP: 46e1e1	 Bytes: 6
  %loadMem_46e1e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e1e1 = call %struct.Memory* @routine_jne_.L_46e27f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e1e1, i8* %BRANCH_TAKEN, i64 158, i64 6, i64 6)
  store %struct.Memory* %call_46e1e1, %struct.Memory** %MEMORY

  %loadBr_46e1e1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e1e1 = icmp eq i8 %loadBr_46e1e1, 1
  br i1 %cmpBr_46e1e1, label %block_.L_46e27f, label %block_46e1e7

block_46e1e7:
  ; Code: movl $0x1, %esi	 RIP: 46e1e7	 Bytes: 5
  %loadMem_46e1e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e1e7 = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e1e7)
  store %struct.Memory* %call_46e1e7, %struct.Memory** %MEMORY

  ; Code: movl -0x66c(%rbp), %edi	 RIP: 46e1ec	 Bytes: 6
  %loadMem_46e1ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e1ec = call %struct.Memory* @routine_movl_MINUS0x66c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e1ec)
  store %struct.Memory* %call_46e1ec, %struct.Memory** %MEMORY

  ; Code: callq .captured_territory	 RIP: 46e1f2	 Bytes: 5
  %loadMem1_46e1f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46e1f2 = call %struct.Memory* @routine_callq_.captured_territory(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46e1f2, i64 -978, i64 5, i64 5)
  store %struct.Memory* %call1_46e1f2, %struct.Memory** %MEMORY

  %loadMem2_46e1f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46e1f2 = load i64, i64* %3
  %call2_46e1f2 = call %struct.Memory* @sub_46de20.captured_territory(%struct.State* %0, i64  %loadPC_46e1f2, %struct.Memory* %loadMem2_46e1f2)
  store %struct.Memory* %call2_46e1f2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46e1f7	 Bytes: 3
  %loadMem_46e1f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e1f7 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e1f7)
  store %struct.Memory* %call_46e1f7, %struct.Memory** %MEMORY

  ; Code: je .L_46e253	 RIP: 46e1fa	 Bytes: 6
  %loadMem_46e1fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e1fa = call %struct.Memory* @routine_je_.L_46e253(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e1fa, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_46e1fa, %struct.Memory** %MEMORY

  %loadBr_46e1fa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e1fa = icmp eq i8 %loadBr_46e1fa, 1
  br i1 %cmpBr_46e1fa, label %block_.L_46e253, label %block_46e200

block_46e200:
  ; Code: movss 0x74f04(%rip), %xmm0	 RIP: 46e200	 Bytes: 8
  %loadMem_46e200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e200 = call %struct.Memory* @routine_movss_0x74f04__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e200)
  store %struct.Memory* %call_46e200, %struct.Memory** %MEMORY

  ; Code: movss 0x74f24(%rip), %xmm1	 RIP: 46e208	 Bytes: 8
  %loadMem_46e208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e208 = call %struct.Memory* @routine_movss_0x74f24__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e208)
  store %struct.Memory* %call_46e208, %struct.Memory** %MEMORY

  ; Code: addss -0x654(%rbp), %xmm1	 RIP: 46e210	 Bytes: 8
  %loadMem_46e210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e210 = call %struct.Memory* @routine_addss_MINUS0x654__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e210)
  store %struct.Memory* %call_46e210, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, -0x654(%rbp)	 RIP: 46e218	 Bytes: 8
  %loadMem_46e218 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e218 = call %struct.Memory* @routine_movss__xmm1__MINUS0x654__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e218)
  store %struct.Memory* %call_46e218, %struct.Memory** %MEMORY

  ; Code: addss -0x65c(%rbp), %xmm0	 RIP: 46e220	 Bytes: 8
  %loadMem_46e220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e220 = call %struct.Memory* @routine_addss_MINUS0x65c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e220)
  store %struct.Memory* %call_46e220, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x65c(%rbp)	 RIP: 46e228	 Bytes: 8
  %loadMem_46e228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e228 = call %struct.Memory* @routine_movss__xmm0__MINUS0x65c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e228)
  store %struct.Memory* %call_46e228, %struct.Memory** %MEMORY

  ; Code: movl -0x680(%rbp), %eax	 RIP: 46e230	 Bytes: 6
  %loadMem_46e230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e230 = call %struct.Memory* @routine_movl_MINUS0x680__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e230)
  store %struct.Memory* %call_46e230, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %eax	 RIP: 46e236	 Bytes: 3
  %loadMem_46e236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e236 = call %struct.Memory* @routine_addl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e236)
  store %struct.Memory* %call_46e236, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x680(%rbp)	 RIP: 46e239	 Bytes: 6
  %loadMem_46e239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e239 = call %struct.Memory* @routine_movl__eax__MINUS0x680__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e239)
  store %struct.Memory* %call_46e239, %struct.Memory** %MEMORY

  ; Code: movl -0x684(%rbp), %eax	 RIP: 46e23f	 Bytes: 6
  %loadMem_46e23f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e23f = call %struct.Memory* @routine_movl_MINUS0x684__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e23f)
  store %struct.Memory* %call_46e23f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46e245	 Bytes: 3
  %loadMem_46e245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e245 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e245)
  store %struct.Memory* %call_46e245, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x684(%rbp)	 RIP: 46e248	 Bytes: 6
  %loadMem_46e248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e248 = call %struct.Memory* @routine_movl__eax__MINUS0x684__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e248)
  store %struct.Memory* %call_46e248, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46e27a	 RIP: 46e24e	 Bytes: 5
  %loadMem_46e24e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e24e = call %struct.Memory* @routine_jmpq_.L_46e27a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e24e, i64 44, i64 5)
  store %struct.Memory* %call_46e24e, %struct.Memory** %MEMORY

  br label %block_.L_46e27a

  ; Code: .L_46e253:	 RIP: 46e253	 Bytes: 0
block_.L_46e253:

  ; Code: movss 0x74eb1(%rip), %xmm0	 RIP: 46e253	 Bytes: 8
  %loadMem_46e253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e253 = call %struct.Memory* @routine_movss_0x74eb1__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e253)
  store %struct.Memory* %call_46e253, %struct.Memory** %MEMORY

  ; Code: addss -0x660(%rbp), %xmm0	 RIP: 46e25b	 Bytes: 8
  %loadMem_46e25b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e25b = call %struct.Memory* @routine_addss_MINUS0x660__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e25b)
  store %struct.Memory* %call_46e25b, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x660(%rbp)	 RIP: 46e263	 Bytes: 8
  %loadMem_46e263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e263 = call %struct.Memory* @routine_movss__xmm0__MINUS0x660__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e263)
  store %struct.Memory* %call_46e263, %struct.Memory** %MEMORY

  ; Code: movl -0x688(%rbp), %eax	 RIP: 46e26b	 Bytes: 6
  %loadMem_46e26b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e26b = call %struct.Memory* @routine_movl_MINUS0x688__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e26b)
  store %struct.Memory* %call_46e26b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46e271	 Bytes: 3
  %loadMem_46e271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e271 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e271)
  store %struct.Memory* %call_46e271, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x688(%rbp)	 RIP: 46e274	 Bytes: 6
  %loadMem_46e274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e274 = call %struct.Memory* @routine_movl__eax__MINUS0x688__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e274)
  store %struct.Memory* %call_46e274, %struct.Memory** %MEMORY

  ; Code: .L_46e27a:	 RIP: 46e27a	 Bytes: 0
  br label %block_.L_46e27a
block_.L_46e27a:

  ; Code: jmpq .L_46e40f	 RIP: 46e27a	 Bytes: 5
  %loadMem_46e27a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e27a = call %struct.Memory* @routine_jmpq_.L_46e40f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e27a, i64 405, i64 5)
  store %struct.Memory* %call_46e27a, %struct.Memory** %MEMORY

  br label %block_.L_46e40f

  ; Code: .L_46e27f:	 RIP: 46e27f	 Bytes: 0
block_.L_46e27f:

  ; Code: movslq -0x66c(%rbp), %rax	 RIP: 46e27f	 Bytes: 7
  %loadMem_46e27f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e27f = call %struct.Memory* @routine_movslq_MINUS0x66c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e27f)
  store %struct.Memory* %call_46e27f, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 46e286	 Bytes: 8
  %loadMem_46e286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e286 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e286)
  store %struct.Memory* %call_46e286, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %ecx	 RIP: 46e28e	 Bytes: 3
  %loadMem_46e28e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e28e = call %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e28e)
  store %struct.Memory* %call_46e28e, %struct.Memory** %MEMORY

  ; Code: jne .L_46e32f	 RIP: 46e291	 Bytes: 6
  %loadMem_46e291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e291 = call %struct.Memory* @routine_jne_.L_46e32f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e291, i8* %BRANCH_TAKEN, i64 158, i64 6, i64 6)
  store %struct.Memory* %call_46e291, %struct.Memory** %MEMORY

  %loadBr_46e291 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e291 = icmp eq i8 %loadBr_46e291, 1
  br i1 %cmpBr_46e291, label %block_.L_46e32f, label %block_46e297

block_46e297:
  ; Code: movl $0x1, %esi	 RIP: 46e297	 Bytes: 5
  %loadMem_46e297 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e297 = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e297)
  store %struct.Memory* %call_46e297, %struct.Memory** %MEMORY

  ; Code: movl -0x66c(%rbp), %edi	 RIP: 46e29c	 Bytes: 6
  %loadMem_46e29c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e29c = call %struct.Memory* @routine_movl_MINUS0x66c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e29c)
  store %struct.Memory* %call_46e29c, %struct.Memory** %MEMORY

  ; Code: callq .captured_territory	 RIP: 46e2a2	 Bytes: 5
  %loadMem1_46e2a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46e2a2 = call %struct.Memory* @routine_callq_.captured_territory(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46e2a2, i64 -1154, i64 5, i64 5)
  store %struct.Memory* %call1_46e2a2, %struct.Memory** %MEMORY

  %loadMem2_46e2a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46e2a2 = load i64, i64* %3
  %call2_46e2a2 = call %struct.Memory* @sub_46de20.captured_territory(%struct.State* %0, i64  %loadPC_46e2a2, %struct.Memory* %loadMem2_46e2a2)
  store %struct.Memory* %call2_46e2a2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46e2a7	 Bytes: 3
  %loadMem_46e2a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e2a7 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e2a7)
  store %struct.Memory* %call_46e2a7, %struct.Memory** %MEMORY

  ; Code: je .L_46e303	 RIP: 46e2aa	 Bytes: 6
  %loadMem_46e2aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e2aa = call %struct.Memory* @routine_je_.L_46e303(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e2aa, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_46e2aa, %struct.Memory** %MEMORY

  %loadBr_46e2aa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e2aa = icmp eq i8 %loadBr_46e2aa, 1
  br i1 %cmpBr_46e2aa, label %block_.L_46e303, label %block_46e2b0

block_46e2b0:
  ; Code: movss 0x74e54(%rip), %xmm0	 RIP: 46e2b0	 Bytes: 8
  %loadMem_46e2b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e2b0 = call %struct.Memory* @routine_movss_0x74e54__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e2b0)
  store %struct.Memory* %call_46e2b0, %struct.Memory** %MEMORY

  ; Code: movss 0x74e74(%rip), %xmm1	 RIP: 46e2b8	 Bytes: 8
  %loadMem_46e2b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e2b8 = call %struct.Memory* @routine_movss_0x74e74__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e2b8)
  store %struct.Memory* %call_46e2b8, %struct.Memory** %MEMORY

  ; Code: addss -0x658(%rbp), %xmm1	 RIP: 46e2c0	 Bytes: 8
  %loadMem_46e2c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e2c0 = call %struct.Memory* @routine_addss_MINUS0x658__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e2c0)
  store %struct.Memory* %call_46e2c0, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, -0x658(%rbp)	 RIP: 46e2c8	 Bytes: 8
  %loadMem_46e2c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e2c8 = call %struct.Memory* @routine_movss__xmm1__MINUS0x658__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e2c8)
  store %struct.Memory* %call_46e2c8, %struct.Memory** %MEMORY

  ; Code: addss -0x660(%rbp), %xmm0	 RIP: 46e2d0	 Bytes: 8
  %loadMem_46e2d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e2d0 = call %struct.Memory* @routine_addss_MINUS0x660__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e2d0)
  store %struct.Memory* %call_46e2d0, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x660(%rbp)	 RIP: 46e2d8	 Bytes: 8
  %loadMem_46e2d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e2d8 = call %struct.Memory* @routine_movss__xmm0__MINUS0x660__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e2d8)
  store %struct.Memory* %call_46e2d8, %struct.Memory** %MEMORY

  ; Code: movl -0x67c(%rbp), %eax	 RIP: 46e2e0	 Bytes: 6
  %loadMem_46e2e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e2e0 = call %struct.Memory* @routine_movl_MINUS0x67c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e2e0)
  store %struct.Memory* %call_46e2e0, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %eax	 RIP: 46e2e6	 Bytes: 3
  %loadMem_46e2e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e2e6 = call %struct.Memory* @routine_addl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e2e6)
  store %struct.Memory* %call_46e2e6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x67c(%rbp)	 RIP: 46e2e9	 Bytes: 6
  %loadMem_46e2e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e2e9 = call %struct.Memory* @routine_movl__eax__MINUS0x67c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e2e9)
  store %struct.Memory* %call_46e2e9, %struct.Memory** %MEMORY

  ; Code: movl -0x688(%rbp), %eax	 RIP: 46e2ef	 Bytes: 6
  %loadMem_46e2ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e2ef = call %struct.Memory* @routine_movl_MINUS0x688__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e2ef)
  store %struct.Memory* %call_46e2ef, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46e2f5	 Bytes: 3
  %loadMem_46e2f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e2f5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e2f5)
  store %struct.Memory* %call_46e2f5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x688(%rbp)	 RIP: 46e2f8	 Bytes: 6
  %loadMem_46e2f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e2f8 = call %struct.Memory* @routine_movl__eax__MINUS0x688__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e2f8)
  store %struct.Memory* %call_46e2f8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46e32a	 RIP: 46e2fe	 Bytes: 5
  %loadMem_46e2fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e2fe = call %struct.Memory* @routine_jmpq_.L_46e32a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e2fe, i64 44, i64 5)
  store %struct.Memory* %call_46e2fe, %struct.Memory** %MEMORY

  br label %block_.L_46e32a

  ; Code: .L_46e303:	 RIP: 46e303	 Bytes: 0
block_.L_46e303:

  ; Code: movss 0x74e01(%rip), %xmm0	 RIP: 46e303	 Bytes: 8
  %loadMem_46e303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e303 = call %struct.Memory* @routine_movss_0x74e01__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e303)
  store %struct.Memory* %call_46e303, %struct.Memory** %MEMORY

  ; Code: addss -0x65c(%rbp), %xmm0	 RIP: 46e30b	 Bytes: 8
  %loadMem_46e30b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e30b = call %struct.Memory* @routine_addss_MINUS0x65c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e30b)
  store %struct.Memory* %call_46e30b, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x65c(%rbp)	 RIP: 46e313	 Bytes: 8
  %loadMem_46e313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e313 = call %struct.Memory* @routine_movss__xmm0__MINUS0x65c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e313)
  store %struct.Memory* %call_46e313, %struct.Memory** %MEMORY

  ; Code: movl -0x684(%rbp), %eax	 RIP: 46e31b	 Bytes: 6
  %loadMem_46e31b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e31b = call %struct.Memory* @routine_movl_MINUS0x684__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e31b)
  store %struct.Memory* %call_46e31b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46e321	 Bytes: 3
  %loadMem_46e321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e321 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e321)
  store %struct.Memory* %call_46e321, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x684(%rbp)	 RIP: 46e324	 Bytes: 6
  %loadMem_46e324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e324 = call %struct.Memory* @routine_movl__eax__MINUS0x684__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e324)
  store %struct.Memory* %call_46e324, %struct.Memory** %MEMORY

  ; Code: .L_46e32a:	 RIP: 46e32a	 Bytes: 0
  br label %block_.L_46e32a
block_.L_46e32a:

  ; Code: jmpq .L_46e40a	 RIP: 46e32a	 Bytes: 5
  %loadMem_46e32a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e32a = call %struct.Memory* @routine_jmpq_.L_46e40a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e32a, i64 224, i64 5)
  store %struct.Memory* %call_46e32a, %struct.Memory** %MEMORY

  br label %block_.L_46e40a

  ; Code: .L_46e32f:	 RIP: 46e32f	 Bytes: 0
block_.L_46e32f:

  ; Code: xorps %xmm0, %xmm0	 RIP: 46e32f	 Bytes: 3
  %loadMem_46e32f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e32f = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e32f)
  store %struct.Memory* %call_46e32f, %struct.Memory** %MEMORY

  ; Code: movslq -0x66c(%rbp), %rax	 RIP: 46e332	 Bytes: 7
  %loadMem_46e332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e332 = call %struct.Memory* @routine_movslq_MINUS0x66c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e332)
  store %struct.Memory* %call_46e332, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl -0x650(%rbp,%rax,4), %xmm1	 RIP: 46e339	 Bytes: 9
  %loadMem_46e339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e339 = call %struct.Memory* @routine_cvtsi2sdl_MINUS0x650__rbp__rax_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e339)
  store %struct.Memory* %call_46e339, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 46e342	 Bytes: 4
  %loadMem_46e342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e342 = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e342)
  store %struct.Memory* %call_46e342, %struct.Memory** %MEMORY

  ; Code: jbe .L_46e39a	 RIP: 46e346	 Bytes: 6
  %loadMem_46e346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e346 = call %struct.Memory* @routine_jbe_.L_46e39a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e346, i8* %BRANCH_TAKEN, i64 84, i64 6, i64 6)
  store %struct.Memory* %call_46e346, %struct.Memory** %MEMORY

  %loadBr_46e346 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e346 = icmp eq i8 %loadBr_46e346, 1
  br i1 %cmpBr_46e346, label %block_.L_46e39a, label %block_46e34c

block_46e34c:
  ; Code: movss 0x74db8(%rip), %xmm0	 RIP: 46e34c	 Bytes: 8
  %loadMem_46e34c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e34c = call %struct.Memory* @routine_movss_0x74db8__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e34c)
  store %struct.Memory* %call_46e34c, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm1	 RIP: 46e354	 Bytes: 3
  %loadMem_46e354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e354 = call %struct.Memory* @routine_movaps__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e354)
  store %struct.Memory* %call_46e354, %struct.Memory** %MEMORY

  ; Code: addss -0x654(%rbp), %xmm1	 RIP: 46e357	 Bytes: 8
  %loadMem_46e357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e357 = call %struct.Memory* @routine_addss_MINUS0x654__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e357)
  store %struct.Memory* %call_46e357, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, -0x654(%rbp)	 RIP: 46e35f	 Bytes: 8
  %loadMem_46e35f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e35f = call %struct.Memory* @routine_movss__xmm1__MINUS0x654__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e35f)
  store %struct.Memory* %call_46e35f, %struct.Memory** %MEMORY

  ; Code: addss -0x65c(%rbp), %xmm0	 RIP: 46e367	 Bytes: 8
  %loadMem_46e367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e367 = call %struct.Memory* @routine_addss_MINUS0x65c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e367)
  store %struct.Memory* %call_46e367, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x65c(%rbp)	 RIP: 46e36f	 Bytes: 8
  %loadMem_46e36f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e36f = call %struct.Memory* @routine_movss__xmm0__MINUS0x65c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e36f)
  store %struct.Memory* %call_46e36f, %struct.Memory** %MEMORY

  ; Code: movl -0x680(%rbp), %eax	 RIP: 46e377	 Bytes: 6
  %loadMem_46e377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e377 = call %struct.Memory* @routine_movl_MINUS0x680__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e377)
  store %struct.Memory* %call_46e377, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46e37d	 Bytes: 3
  %loadMem_46e37d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e37d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e37d)
  store %struct.Memory* %call_46e37d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x680(%rbp)	 RIP: 46e380	 Bytes: 6
  %loadMem_46e380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e380 = call %struct.Memory* @routine_movl__eax__MINUS0x680__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e380)
  store %struct.Memory* %call_46e380, %struct.Memory** %MEMORY

  ; Code: movl -0x684(%rbp), %eax	 RIP: 46e386	 Bytes: 6
  %loadMem_46e386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e386 = call %struct.Memory* @routine_movl_MINUS0x684__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e386)
  store %struct.Memory* %call_46e386, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46e38c	 Bytes: 3
  %loadMem_46e38c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e38c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e38c)
  store %struct.Memory* %call_46e38c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x684(%rbp)	 RIP: 46e38f	 Bytes: 6
  %loadMem_46e38f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e38f = call %struct.Memory* @routine_movl__eax__MINUS0x684__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e38f)
  store %struct.Memory* %call_46e38f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46e405	 RIP: 46e395	 Bytes: 5
  %loadMem_46e395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e395 = call %struct.Memory* @routine_jmpq_.L_46e405(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e395, i64 112, i64 5)
  store %struct.Memory* %call_46e395, %struct.Memory** %MEMORY

  br label %block_.L_46e405

  ; Code: .L_46e39a:	 RIP: 46e39a	 Bytes: 0
block_.L_46e39a:

  ; Code: xorps %xmm0, %xmm0	 RIP: 46e39a	 Bytes: 3
  %loadMem_46e39a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e39a = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e39a)
  store %struct.Memory* %call_46e39a, %struct.Memory** %MEMORY

  ; Code: movslq -0x66c(%rbp), %rax	 RIP: 46e39d	 Bytes: 7
  %loadMem_46e39d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e39d = call %struct.Memory* @routine_movslq_MINUS0x66c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e39d)
  store %struct.Memory* %call_46e39d, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl -0x650(%rbp,%rax,4), %xmm1	 RIP: 46e3a4	 Bytes: 9
  %loadMem_46e3a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e3a4 = call %struct.Memory* @routine_cvtsi2sdl_MINUS0x650__rbp__rax_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e3a4)
  store %struct.Memory* %call_46e3a4, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm1, %xmm0	 RIP: 46e3ad	 Bytes: 4
  %loadMem_46e3ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e3ad = call %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e3ad)
  store %struct.Memory* %call_46e3ad, %struct.Memory** %MEMORY

  ; Code: jbe .L_46e400	 RIP: 46e3b1	 Bytes: 6
  %loadMem_46e3b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e3b1 = call %struct.Memory* @routine_jbe_.L_46e400(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e3b1, i8* %BRANCH_TAKEN, i64 79, i64 6, i64 6)
  store %struct.Memory* %call_46e3b1, %struct.Memory** %MEMORY

  %loadBr_46e3b1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e3b1 = icmp eq i8 %loadBr_46e3b1, 1
  br i1 %cmpBr_46e3b1, label %block_.L_46e400, label %block_46e3b7

block_46e3b7:
  ; Code: movss 0x74d4d(%rip), %xmm0	 RIP: 46e3b7	 Bytes: 8
  %loadMem_46e3b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e3b7 = call %struct.Memory* @routine_movss_0x74d4d__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e3b7)
  store %struct.Memory* %call_46e3b7, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm1	 RIP: 46e3bf	 Bytes: 3
  %loadMem_46e3bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e3bf = call %struct.Memory* @routine_movaps__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e3bf)
  store %struct.Memory* %call_46e3bf, %struct.Memory** %MEMORY

  ; Code: addss -0x658(%rbp), %xmm1	 RIP: 46e3c2	 Bytes: 8
  %loadMem_46e3c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e3c2 = call %struct.Memory* @routine_addss_MINUS0x658__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e3c2)
  store %struct.Memory* %call_46e3c2, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, -0x658(%rbp)	 RIP: 46e3ca	 Bytes: 8
  %loadMem_46e3ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e3ca = call %struct.Memory* @routine_movss__xmm1__MINUS0x658__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e3ca)
  store %struct.Memory* %call_46e3ca, %struct.Memory** %MEMORY

  ; Code: addss -0x660(%rbp), %xmm0	 RIP: 46e3d2	 Bytes: 8
  %loadMem_46e3d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e3d2 = call %struct.Memory* @routine_addss_MINUS0x660__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e3d2)
  store %struct.Memory* %call_46e3d2, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x660(%rbp)	 RIP: 46e3da	 Bytes: 8
  %loadMem_46e3da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e3da = call %struct.Memory* @routine_movss__xmm0__MINUS0x660__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e3da)
  store %struct.Memory* %call_46e3da, %struct.Memory** %MEMORY

  ; Code: movl -0x67c(%rbp), %eax	 RIP: 46e3e2	 Bytes: 6
  %loadMem_46e3e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e3e2 = call %struct.Memory* @routine_movl_MINUS0x67c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e3e2)
  store %struct.Memory* %call_46e3e2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46e3e8	 Bytes: 3
  %loadMem_46e3e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e3e8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e3e8)
  store %struct.Memory* %call_46e3e8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x67c(%rbp)	 RIP: 46e3eb	 Bytes: 6
  %loadMem_46e3eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e3eb = call %struct.Memory* @routine_movl__eax__MINUS0x67c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e3eb)
  store %struct.Memory* %call_46e3eb, %struct.Memory** %MEMORY

  ; Code: movl -0x688(%rbp), %eax	 RIP: 46e3f1	 Bytes: 6
  %loadMem_46e3f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e3f1 = call %struct.Memory* @routine_movl_MINUS0x688__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e3f1)
  store %struct.Memory* %call_46e3f1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46e3f7	 Bytes: 3
  %loadMem_46e3f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e3f7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e3f7)
  store %struct.Memory* %call_46e3f7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x688(%rbp)	 RIP: 46e3fa	 Bytes: 6
  %loadMem_46e3fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e3fa = call %struct.Memory* @routine_movl__eax__MINUS0x688__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e3fa)
  store %struct.Memory* %call_46e3fa, %struct.Memory** %MEMORY

  ; Code: .L_46e400:	 RIP: 46e400	 Bytes: 0
  br label %block_.L_46e400
block_.L_46e400:

  ; Code: jmpq .L_46e405	 RIP: 46e400	 Bytes: 5
  %loadMem_46e400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e400 = call %struct.Memory* @routine_jmpq_.L_46e405(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e400, i64 5, i64 5)
  store %struct.Memory* %call_46e400, %struct.Memory** %MEMORY

  br label %block_.L_46e405

  ; Code: .L_46e405:	 RIP: 46e405	 Bytes: 0
block_.L_46e405:

  ; Code: jmpq .L_46e40a	 RIP: 46e405	 Bytes: 5
  %loadMem_46e405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e405 = call %struct.Memory* @routine_jmpq_.L_46e40a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e405, i64 5, i64 5)
  store %struct.Memory* %call_46e405, %struct.Memory** %MEMORY

  br label %block_.L_46e40a

  ; Code: .L_46e40a:	 RIP: 46e40a	 Bytes: 0
block_.L_46e40a:

  ; Code: jmpq .L_46e40f	 RIP: 46e40a	 Bytes: 5
  %loadMem_46e40a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e40a = call %struct.Memory* @routine_jmpq_.L_46e40f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e40a, i64 5, i64 5)
  store %struct.Memory* %call_46e40a, %struct.Memory** %MEMORY

  br label %block_.L_46e40f

  ; Code: .L_46e40f:	 RIP: 46e40f	 Bytes: 0
block_.L_46e40f:

  ; Code: jmpq .L_46e414	 RIP: 46e40f	 Bytes: 5
  %loadMem_46e40f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e40f = call %struct.Memory* @routine_jmpq_.L_46e414(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e40f, i64 5, i64 5)
  store %struct.Memory* %call_46e40f, %struct.Memory** %MEMORY

  br label %block_.L_46e414

  ; Code: .L_46e414:	 RIP: 46e414	 Bytes: 0
block_.L_46e414:

  ; Code: movl -0x668(%rbp), %eax	 RIP: 46e414	 Bytes: 6
  %loadMem_46e414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e414 = call %struct.Memory* @routine_movl_MINUS0x668__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e414)
  store %struct.Memory* %call_46e414, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46e41a	 Bytes: 3
  %loadMem_46e41a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e41a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e41a)
  store %struct.Memory* %call_46e41a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x668(%rbp)	 RIP: 46e41d	 Bytes: 6
  %loadMem_46e41d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e41d = call %struct.Memory* @routine_movl__eax__MINUS0x668__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e41d)
  store %struct.Memory* %call_46e41d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46e1a6	 RIP: 46e423	 Bytes: 5
  %loadMem_46e423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e423 = call %struct.Memory* @routine_jmpq_.L_46e1a6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e423, i64 -637, i64 5)
  store %struct.Memory* %call_46e423, %struct.Memory** %MEMORY

  br label %block_.L_46e1a6

  ; Code: .L_46e428:	 RIP: 46e428	 Bytes: 0
block_.L_46e428:

  ; Code: cmpl $0x0, 0xab0fc0	 RIP: 46e428	 Bytes: 8
  %loadMem_46e428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e428 = call %struct.Memory* @routine_cmpl__0x0__0xab0fc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e428)
  store %struct.Memory* %call_46e428, %struct.Memory** %MEMORY

  ; Code: je .L_46e487	 RIP: 46e430	 Bytes: 6
  %loadMem_46e430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e430 = call %struct.Memory* @routine_je_.L_46e487(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e430, i8* %BRANCH_TAKEN, i64 87, i64 6, i64 6)
  store %struct.Memory* %call_46e430, %struct.Memory** %MEMORY

  %loadBr_46e430 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e430 = icmp eq i8 %loadBr_46e430, 1
  br i1 %cmpBr_46e430, label %block_.L_46e487, label %block_46e436

block_46e436:
  ; Code: movl 0xab0f24, %eax	 RIP: 46e436	 Bytes: 7
  %loadMem_46e436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e436 = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e436)
  store %struct.Memory* %call_46e436, %struct.Memory** %MEMORY

  ; Code: andl $0x10000, %eax	 RIP: 46e43d	 Bytes: 5
  %loadMem_46e43d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e43d = call %struct.Memory* @routine_andl__0x10000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e43d)
  store %struct.Memory* %call_46e43d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46e442	 Bytes: 3
  %loadMem_46e442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e442 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e442)
  store %struct.Memory* %call_46e442, %struct.Memory** %MEMORY

  ; Code: jne .L_46e450	 RIP: 46e445	 Bytes: 6
  %loadMem_46e445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e445 = call %struct.Memory* @routine_jne_.L_46e450(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e445, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_46e445, %struct.Memory** %MEMORY

  %loadBr_46e445 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e445 = icmp eq i8 %loadBr_46e445, 1
  br i1 %cmpBr_46e445, label %block_.L_46e450, label %block_46e44b

block_46e44b:
  ; Code: jmpq .L_46e482	 RIP: 46e44b	 Bytes: 5
  %loadMem_46e44b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e44b = call %struct.Memory* @routine_jmpq_.L_46e482(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e44b, i64 55, i64 5)
  store %struct.Memory* %call_46e44b, %struct.Memory** %MEMORY

  br label %block_.L_46e482

  ; Code: .L_46e450:	 RIP: 46e450	 Bytes: 0
block_.L_46e450:

  ; Code: movq $0x58058f, %rdi	 RIP: 46e450	 Bytes: 10
  %loadMem_46e450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e450 = call %struct.Memory* @routine_movq__0x58058f___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e450)
  store %struct.Memory* %call_46e450, %struct.Memory** %MEMORY

  ; Code: movl 0x7ae438, %eax	 RIP: 46e45a	 Bytes: 7
  %loadMem_46e45a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e45a = call %struct.Memory* @routine_movl_0x7ae438___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e45a)
  store %struct.Memory* %call_46e45a, %struct.Memory** %MEMORY

  ; Code: subl -0x664(%rbp), %eax	 RIP: 46e461	 Bytes: 6
  %loadMem_46e461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e461 = call %struct.Memory* @routine_subl_MINUS0x664__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e461)
  store %struct.Memory* %call_46e461, %struct.Memory** %MEMORY

  ; Code: movl -0x684(%rbp), %edx	 RIP: 46e467	 Bytes: 6
  %loadMem_46e467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e467 = call %struct.Memory* @routine_movl_MINUS0x684__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e467)
  store %struct.Memory* %call_46e467, %struct.Memory** %MEMORY

  ; Code: movl -0x688(%rbp), %ecx	 RIP: 46e46d	 Bytes: 6
  %loadMem_46e46d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e46d = call %struct.Memory* @routine_movl_MINUS0x688__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e46d)
  store %struct.Memory* %call_46e46d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 46e473	 Bytes: 2
  %loadMem_46e473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e473 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e473)
  store %struct.Memory* %call_46e473, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 46e475	 Bytes: 2
  %loadMem_46e475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e475 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e475)
  store %struct.Memory* %call_46e475, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 46e477	 Bytes: 5
  %loadMem1_46e477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46e477 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46e477, i64 -116423, i64 5, i64 5)
  store %struct.Memory* %call1_46e477, %struct.Memory** %MEMORY

  %loadMem2_46e477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46e477 = load i64, i64* %3
  %call2_46e477 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_46e477, %struct.Memory* %loadMem2_46e477)
  store %struct.Memory* %call2_46e477, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6a0(%rbp)	 RIP: 46e47c	 Bytes: 6
  %loadMem_46e47c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e47c = call %struct.Memory* @routine_movl__eax__MINUS0x6a0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e47c)
  store %struct.Memory* %call_46e47c, %struct.Memory** %MEMORY

  ; Code: .L_46e482:	 RIP: 46e482	 Bytes: 0
  br label %block_.L_46e482
block_.L_46e482:

  ; Code: jmpq .L_46e4d8	 RIP: 46e482	 Bytes: 5
  %loadMem_46e482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e482 = call %struct.Memory* @routine_jmpq_.L_46e4d8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e482, i64 86, i64 5)
  store %struct.Memory* %call_46e482, %struct.Memory** %MEMORY

  br label %block_.L_46e4d8

  ; Code: .L_46e487:	 RIP: 46e487	 Bytes: 0
block_.L_46e487:

  ; Code: movl 0xab0f24, %eax	 RIP: 46e487	 Bytes: 7
  %loadMem_46e487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e487 = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e487)
  store %struct.Memory* %call_46e487, %struct.Memory** %MEMORY

  ; Code: andl $0x10000, %eax	 RIP: 46e48e	 Bytes: 5
  %loadMem_46e48e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e48e = call %struct.Memory* @routine_andl__0x10000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e48e)
  store %struct.Memory* %call_46e48e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46e493	 Bytes: 3
  %loadMem_46e493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e493 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e493)
  store %struct.Memory* %call_46e493, %struct.Memory** %MEMORY

  ; Code: jne .L_46e4a1	 RIP: 46e496	 Bytes: 6
  %loadMem_46e496 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e496 = call %struct.Memory* @routine_jne_.L_46e4a1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e496, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_46e496, %struct.Memory** %MEMORY

  %loadBr_46e496 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e496 = icmp eq i8 %loadBr_46e496, 1
  br i1 %cmpBr_46e496, label %block_.L_46e4a1, label %block_46e49c

block_46e49c:
  ; Code: jmpq .L_46e4d3	 RIP: 46e49c	 Bytes: 5
  %loadMem_46e49c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e49c = call %struct.Memory* @routine_jmpq_.L_46e4d3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e49c, i64 55, i64 5)
  store %struct.Memory* %call_46e49c, %struct.Memory** %MEMORY

  br label %block_.L_46e4d3

  ; Code: .L_46e4a1:	 RIP: 46e4a1	 Bytes: 0
block_.L_46e4a1:

  ; Code: movq $0x5805b3, %rdi	 RIP: 46e4a1	 Bytes: 10
  %loadMem_46e4a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e4a1 = call %struct.Memory* @routine_movq__0x5805b3___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e4a1)
  store %struct.Memory* %call_46e4a1, %struct.Memory** %MEMORY

  ; Code: movl 0x7ae438, %eax	 RIP: 46e4ab	 Bytes: 7
  %loadMem_46e4ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e4ab = call %struct.Memory* @routine_movl_0x7ae438___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e4ab)
  store %struct.Memory* %call_46e4ab, %struct.Memory** %MEMORY

  ; Code: subl -0x664(%rbp), %eax	 RIP: 46e4b2	 Bytes: 6
  %loadMem_46e4b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e4b2 = call %struct.Memory* @routine_subl_MINUS0x664__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e4b2)
  store %struct.Memory* %call_46e4b2, %struct.Memory** %MEMORY

  ; Code: movl -0x680(%rbp), %edx	 RIP: 46e4b8	 Bytes: 6
  %loadMem_46e4b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e4b8 = call %struct.Memory* @routine_movl_MINUS0x680__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e4b8)
  store %struct.Memory* %call_46e4b8, %struct.Memory** %MEMORY

  ; Code: movl -0x67c(%rbp), %ecx	 RIP: 46e4be	 Bytes: 6
  %loadMem_46e4be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e4be = call %struct.Memory* @routine_movl_MINUS0x67c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e4be)
  store %struct.Memory* %call_46e4be, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 46e4c4	 Bytes: 2
  %loadMem_46e4c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e4c4 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e4c4)
  store %struct.Memory* %call_46e4c4, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 46e4c6	 Bytes: 2
  %loadMem_46e4c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e4c6 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e4c6)
  store %struct.Memory* %call_46e4c6, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 46e4c8	 Bytes: 5
  %loadMem1_46e4c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46e4c8 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46e4c8, i64 -116504, i64 5, i64 5)
  store %struct.Memory* %call1_46e4c8, %struct.Memory** %MEMORY

  %loadMem2_46e4c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46e4c8 = load i64, i64* %3
  %call2_46e4c8 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_46e4c8, %struct.Memory* %loadMem2_46e4c8)
  store %struct.Memory* %call2_46e4c8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6a4(%rbp)	 RIP: 46e4cd	 Bytes: 6
  %loadMem_46e4cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e4cd = call %struct.Memory* @routine_movl__eax__MINUS0x6a4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e4cd)
  store %struct.Memory* %call_46e4cd, %struct.Memory** %MEMORY

  ; Code: .L_46e4d3:	 RIP: 46e4d3	 Bytes: 0
  br label %block_.L_46e4d3
block_.L_46e4d3:

  ; Code: jmpq .L_46e4d8	 RIP: 46e4d3	 Bytes: 5
  %loadMem_46e4d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e4d3 = call %struct.Memory* @routine_jmpq_.L_46e4d8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e4d3, i64 5, i64 5)
  store %struct.Memory* %call_46e4d3, %struct.Memory** %MEMORY

  br label %block_.L_46e4d8

  ; Code: .L_46e4d8:	 RIP: 46e4d8	 Bytes: 0
block_.L_46e4d8:

  ; Code: jmpq .L_46e4dd	 RIP: 46e4d8	 Bytes: 5
  %loadMem_46e4d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e4d8 = call %struct.Memory* @routine_jmpq_.L_46e4dd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e4d8, i64 5, i64 5)
  store %struct.Memory* %call_46e4d8, %struct.Memory** %MEMORY

  br label %block_.L_46e4dd

  ; Code: .L_46e4dd:	 RIP: 46e4dd	 Bytes: 0
block_.L_46e4dd:

  ; Code: movl -0x664(%rbp), %eax	 RIP: 46e4dd	 Bytes: 6
  %loadMem_46e4dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e4dd = call %struct.Memory* @routine_movl_MINUS0x664__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e4dd)
  store %struct.Memory* %call_46e4dd, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46e4e3	 Bytes: 3
  %loadMem_46e4e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e4e3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e4e3)
  store %struct.Memory* %call_46e4e3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x664(%rbp)	 RIP: 46e4e6	 Bytes: 6
  %loadMem_46e4e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e4e6 = call %struct.Memory* @routine_movl__eax__MINUS0x664__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e4e6)
  store %struct.Memory* %call_46e4e6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46e161	 RIP: 46e4ec	 Bytes: 5
  %loadMem_46e4ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e4ec = call %struct.Memory* @routine_jmpq_.L_46e161(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e4ec, i64 -907, i64 5)
  store %struct.Memory* %call_46e4ec, %struct.Memory** %MEMORY

  br label %block_.L_46e161

  ; Code: .L_46e4f1:	 RIP: 46e4f1	 Bytes: 0
block_.L_46e4f1:

  ; Code: cmpl $0x0, 0xab0fc0	 RIP: 46e4f1	 Bytes: 8
  %loadMem_46e4f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e4f1 = call %struct.Memory* @routine_cmpl__0x0__0xab0fc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e4f1)
  store %struct.Memory* %call_46e4f1, %struct.Memory** %MEMORY

  ; Code: je .L_46e525	 RIP: 46e4f9	 Bytes: 6
  %loadMem_46e4f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e4f9 = call %struct.Memory* @routine_je_.L_46e525(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e4f9, i8* %BRANCH_TAKEN, i64 44, i64 6, i64 6)
  store %struct.Memory* %call_46e4f9, %struct.Memory** %MEMORY

  %loadBr_46e4f9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e4f9 = icmp eq i8 %loadBr_46e4f9, 1
  br i1 %cmpBr_46e4f9, label %block_.L_46e525, label %block_46e4ff

block_46e4ff:
  ; Code: movss -0x65c(%rbp), %xmm0	 RIP: 46e4ff	 Bytes: 8
  %loadMem_46e4ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e4ff = call %struct.Memory* @routine_movss_MINUS0x65c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e4ff)
  store %struct.Memory* %call_46e4ff, %struct.Memory** %MEMORY

  ; Code: subss -0x660(%rbp), %xmm0	 RIP: 46e507	 Bytes: 8
  %loadMem_46e507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e507 = call %struct.Memory* @routine_subss_MINUS0x660__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e507)
  store %struct.Memory* %call_46e507, %struct.Memory** %MEMORY

  ; Code: addss 0xb454f8, %xmm0	 RIP: 46e50f	 Bytes: 9
  %loadMem_46e50f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e50f = call %struct.Memory* @routine_addss_0xb454f8___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e50f)
  store %struct.Memory* %call_46e50f, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x670(%rbp)	 RIP: 46e518	 Bytes: 8
  %loadMem_46e518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e518 = call %struct.Memory* @routine_movss__xmm0__MINUS0x670__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e518)
  store %struct.Memory* %call_46e518, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46e5a8	 RIP: 46e520	 Bytes: 5
  %loadMem_46e520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e520 = call %struct.Memory* @routine_jmpq_.L_46e5a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e520, i64 136, i64 5)
  store %struct.Memory* %call_46e520, %struct.Memory** %MEMORY

  br label %block_.L_46e5a8

  ; Code: .L_46e525:	 RIP: 46e525	 Bytes: 0
block_.L_46e525:

  ; Code: movl 0xab0f24, %eax	 RIP: 46e525	 Bytes: 7
  %loadMem_46e525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e525 = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e525)
  store %struct.Memory* %call_46e525, %struct.Memory** %MEMORY

  ; Code: andl $0x10000, %eax	 RIP: 46e52c	 Bytes: 5
  %loadMem_46e52c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e52c = call %struct.Memory* @routine_andl__0x10000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e52c)
  store %struct.Memory* %call_46e52c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46e531	 Bytes: 3
  %loadMem_46e531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e531 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e531)
  store %struct.Memory* %call_46e531, %struct.Memory** %MEMORY

  ; Code: jne .L_46e53f	 RIP: 46e534	 Bytes: 6
  %loadMem_46e534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e534 = call %struct.Memory* @routine_jne_.L_46e53f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e534, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_46e534, %struct.Memory** %MEMORY

  %loadBr_46e534 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e534 = icmp eq i8 %loadBr_46e534, 1
  br i1 %cmpBr_46e534, label %block_.L_46e53f, label %block_46e53a

block_46e53a:
  ; Code: jmpq .L_46e56d	 RIP: 46e53a	 Bytes: 5
  %loadMem_46e53a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e53a = call %struct.Memory* @routine_jmpq_.L_46e56d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e53a, i64 51, i64 5)
  store %struct.Memory* %call_46e53a, %struct.Memory** %MEMORY

  br label %block_.L_46e56d

  ; Code: .L_46e53f:	 RIP: 46e53f	 Bytes: 0
block_.L_46e53f:

  ; Code: movq $0x5805dc, %rdi	 RIP: 46e53f	 Bytes: 10
  %loadMem_46e53f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e53f = call %struct.Memory* @routine_movq__0x5805dc___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e53f)
  store %struct.Memory* %call_46e53f, %struct.Memory** %MEMORY

  ; Code: movl 0xb8c040, %esi	 RIP: 46e549	 Bytes: 7
  %loadMem_46e549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e549 = call %struct.Memory* @routine_movl_0xb8c040___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e549)
  store %struct.Memory* %call_46e549, %struct.Memory** %MEMORY

  ; Code: movl 0xb38cb0, %edx	 RIP: 46e550	 Bytes: 7
  %loadMem_46e550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e550 = call %struct.Memory* @routine_movl_0xb38cb0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e550)
  store %struct.Memory* %call_46e550, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0xb454f8, %xmm0	 RIP: 46e557	 Bytes: 9
  %loadMem_46e557 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e557 = call %struct.Memory* @routine_cvtss2sd_0xb454f8___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e557)
  store %struct.Memory* %call_46e557, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 46e560	 Bytes: 2
  %loadMem_46e560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e560 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e560)
  store %struct.Memory* %call_46e560, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 46e562	 Bytes: 5
  %loadMem1_46e562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46e562 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46e562, i64 -116658, i64 5, i64 5)
  store %struct.Memory* %call1_46e562, %struct.Memory** %MEMORY

  %loadMem2_46e562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46e562 = load i64, i64* %3
  %call2_46e562 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_46e562, %struct.Memory* %loadMem2_46e562)
  store %struct.Memory* %call2_46e562, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6a8(%rbp)	 RIP: 46e567	 Bytes: 6
  %loadMem_46e567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e567 = call %struct.Memory* @routine_movl__eax__MINUS0x6a8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e567)
  store %struct.Memory* %call_46e567, %struct.Memory** %MEMORY

  ; Code: .L_46e56d:	 RIP: 46e56d	 Bytes: 0
  br label %block_.L_46e56d
block_.L_46e56d:

  ; Code: movss -0x654(%rbp), %xmm0	 RIP: 46e56d	 Bytes: 8
  %loadMem_46e56d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e56d = call %struct.Memory* @routine_movss_MINUS0x654__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e56d)
  store %struct.Memory* %call_46e56d, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0xb8c040, %xmm1	 RIP: 46e575	 Bytes: 9
  %loadMem_46e575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e575 = call %struct.Memory* @routine_cvtsi2ssl_0xb8c040___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e575)
  store %struct.Memory* %call_46e575, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 46e57e	 Bytes: 4
  %loadMem_46e57e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e57e = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e57e)
  store %struct.Memory* %call_46e57e, %struct.Memory** %MEMORY

  ; Code: subss -0x658(%rbp), %xmm0	 RIP: 46e582	 Bytes: 8
  %loadMem_46e582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e582 = call %struct.Memory* @routine_subss_MINUS0x658__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e582)
  store %struct.Memory* %call_46e582, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0xb38cb0, %xmm1	 RIP: 46e58a	 Bytes: 9
  %loadMem_46e58a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e58a = call %struct.Memory* @routine_cvtsi2ssl_0xb38cb0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e58a)
  store %struct.Memory* %call_46e58a, %struct.Memory** %MEMORY

  ; Code: subss %xmm1, %xmm0	 RIP: 46e593	 Bytes: 4
  %loadMem_46e593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e593 = call %struct.Memory* @routine_subss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e593)
  store %struct.Memory* %call_46e593, %struct.Memory** %MEMORY

  ; Code: addss 0xb454f8, %xmm0	 RIP: 46e597	 Bytes: 9
  %loadMem_46e597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e597 = call %struct.Memory* @routine_addss_0xb454f8___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e597)
  store %struct.Memory* %call_46e597, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x670(%rbp)	 RIP: 46e5a0	 Bytes: 8
  %loadMem_46e5a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e5a0 = call %struct.Memory* @routine_movss__xmm0__MINUS0x670__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e5a0)
  store %struct.Memory* %call_46e5a0, %struct.Memory** %MEMORY

  ; Code: .L_46e5a8:	 RIP: 46e5a8	 Bytes: 0
  br label %block_.L_46e5a8
block_.L_46e5a8:

  ; Code: cmpl $0x0, -0x678(%rbp)	 RIP: 46e5a8	 Bytes: 7
  %loadMem_46e5a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e5a8 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x678__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e5a8)
  store %struct.Memory* %call_46e5a8, %struct.Memory** %MEMORY

  ; Code: je .L_46ea37	 RIP: 46e5af	 Bytes: 6
  %loadMem_46e5af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e5af = call %struct.Memory* @routine_je_.L_46ea37(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e5af, i8* %BRANCH_TAKEN, i64 1160, i64 6, i64 6)
  store %struct.Memory* %call_46e5af, %struct.Memory** %MEMORY

  %loadBr_46e5af = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e5af = icmp eq i8 %loadBr_46e5af, 1
  br i1 %cmpBr_46e5af, label %block_.L_46ea37, label %block_46e5b5

block_46e5b5:
  ; Code: movl $0x5, %edi	 RIP: 46e5b5	 Bytes: 5
  %loadMem_46e5b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e5b5 = call %struct.Memory* @routine_movl__0x5___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e5b5)
  store %struct.Memory* %call_46e5b5, %struct.Memory** %MEMORY

  ; Code: movl $0x15, %esi	 RIP: 46e5ba	 Bytes: 5
  %loadMem_46e5ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e5ba = call %struct.Memory* @routine_movl__0x15___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e5ba)
  store %struct.Memory* %call_46e5ba, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %ecx	 RIP: 46e5bf	 Bytes: 5
  %loadMem_46e5bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e5bf = call %struct.Memory* @routine_movl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e5bf)
  store %struct.Memory* %call_46e5bf, %struct.Memory** %MEMORY

  ; Code: leaq -0x650(%rbp), %rdx	 RIP: 46e5c4	 Bytes: 7
  %loadMem_46e5c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e5c4 = call %struct.Memory* @routine_leaq_MINUS0x650__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e5c4)
  store %struct.Memory* %call_46e5c4, %struct.Memory** %MEMORY

  ; Code: xorps %xmm0, %xmm0	 RIP: 46e5cb	 Bytes: 3
  %loadMem_46e5cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e5cb = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e5cb)
  store %struct.Memory* %call_46e5cb, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x654(%rbp)	 RIP: 46e5ce	 Bytes: 8
  %loadMem_46e5ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e5ce = call %struct.Memory* @routine_movss__xmm0__MINUS0x654__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e5ce)
  store %struct.Memory* %call_46e5ce, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x658(%rbp)	 RIP: 46e5d6	 Bytes: 8
  %loadMem_46e5d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e5d6 = call %struct.Memory* @routine_movss__xmm0__MINUS0x658__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e5d6)
  store %struct.Memory* %call_46e5d6, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x65c(%rbp)	 RIP: 46e5de	 Bytes: 8
  %loadMem_46e5de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e5de = call %struct.Memory* @routine_movss__xmm0__MINUS0x65c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e5de)
  store %struct.Memory* %call_46e5de, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x660(%rbp)	 RIP: 46e5e6	 Bytes: 8
  %loadMem_46e5e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e5e6 = call %struct.Memory* @routine_movss__xmm0__MINUS0x660__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e5e6)
  store %struct.Memory* %call_46e5e6, %struct.Memory** %MEMORY

  ; Code: callq .dilate_erode	 RIP: 46e5ee	 Bytes: 5
  %loadMem1_46e5ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46e5ee = call %struct.Memory* @routine_callq_.dilate_erode(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46e5ee, i64 -6430, i64 5, i64 5)
  store %struct.Memory* %call1_46e5ee, %struct.Memory** %MEMORY

  %loadMem2_46e5ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46e5ee = load i64, i64* %3
  %call2_46e5ee = call %struct.Memory* @sub_46ccd0.dilate_erode(%struct.State* %0, i64  %loadPC_46e5ee, %struct.Memory* %loadMem2_46e5ee)
  store %struct.Memory* %call2_46e5ee, %struct.Memory** %MEMORY

  ; Code: leaq -0x650(%rbp), %rdi	 RIP: 46e5f3	 Bytes: 7
  %loadMem_46e5f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e5f3 = call %struct.Memory* @routine_leaq_MINUS0x650__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e5f3)
  store %struct.Memory* %call_46e5f3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6ac(%rbp)	 RIP: 46e5fa	 Bytes: 6
  %loadMem_46e5fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e5fa = call %struct.Memory* @routine_movl__eax__MINUS0x6ac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e5fa)
  store %struct.Memory* %call_46e5fa, %struct.Memory** %MEMORY

  ; Code: callq .close_bubbles	 RIP: 46e600	 Bytes: 5
  %loadMem1_46e600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46e600 = call %struct.Memory* @routine_callq_.close_bubbles(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46e600, i64 -4112, i64 5, i64 5)
  store %struct.Memory* %call1_46e600, %struct.Memory** %MEMORY

  %loadMem2_46e600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46e600 = load i64, i64* %3
  %call2_46e600 = call %struct.Memory* @sub_46d5f0.close_bubbles(%struct.State* %0, i64  %loadPC_46e600, %struct.Memory* %loadMem2_46e600)
  store %struct.Memory* %call2_46e600, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x664(%rbp)	 RIP: 46e605	 Bytes: 10
  %loadMem_46e605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e605 = call %struct.Memory* @routine_movl__0x0__MINUS0x664__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e605)
  store %struct.Memory* %call_46e605, %struct.Memory** %MEMORY

  ; Code: .L_46e60f:	 RIP: 46e60f	 Bytes: 0
  br label %block_.L_46e60f
block_.L_46e60f:

  ; Code: movl -0x664(%rbp), %eax	 RIP: 46e60f	 Bytes: 6
  %loadMem_46e60f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e60f = call %struct.Memory* @routine_movl_MINUS0x664__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e60f)
  store %struct.Memory* %call_46e60f, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7ae438, %eax	 RIP: 46e615	 Bytes: 7
  %loadMem_46e615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e615 = call %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e615)
  store %struct.Memory* %call_46e615, %struct.Memory** %MEMORY

  ; Code: jge .L_46e97b	 RIP: 46e61c	 Bytes: 6
  %loadMem_46e61c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e61c = call %struct.Memory* @routine_jge_.L_46e97b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e61c, i8* %BRANCH_TAKEN, i64 863, i64 6, i64 6)
  store %struct.Memory* %call_46e61c, %struct.Memory** %MEMORY

  %loadBr_46e61c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e61c = icmp eq i8 %loadBr_46e61c, 1
  br i1 %cmpBr_46e61c, label %block_.L_46e97b, label %block_46e622

block_46e622:
  ; Code: movl $0x0, -0x68c(%rbp)	 RIP: 46e622	 Bytes: 10
  %loadMem_46e622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e622 = call %struct.Memory* @routine_movl__0x0__MINUS0x68c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e622)
  store %struct.Memory* %call_46e622, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x690(%rbp)	 RIP: 46e62c	 Bytes: 10
  %loadMem_46e62c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e62c = call %struct.Memory* @routine_movl__0x0__MINUS0x690__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e62c)
  store %struct.Memory* %call_46e62c, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x694(%rbp)	 RIP: 46e636	 Bytes: 10
  %loadMem_46e636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e636 = call %struct.Memory* @routine_movl__0x0__MINUS0x694__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e636)
  store %struct.Memory* %call_46e636, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x698(%rbp)	 RIP: 46e640	 Bytes: 10
  %loadMem_46e640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e640 = call %struct.Memory* @routine_movl__0x0__MINUS0x698__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e640)
  store %struct.Memory* %call_46e640, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x668(%rbp)	 RIP: 46e64a	 Bytes: 10
  %loadMem_46e64a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e64a = call %struct.Memory* @routine_movl__0x0__MINUS0x668__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e64a)
  store %struct.Memory* %call_46e64a, %struct.Memory** %MEMORY

  ; Code: .L_46e654:	 RIP: 46e654	 Bytes: 0
  br label %block_.L_46e654
block_.L_46e654:

  ; Code: movl -0x668(%rbp), %eax	 RIP: 46e654	 Bytes: 6
  %loadMem_46e654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e654 = call %struct.Memory* @routine_movl_MINUS0x668__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e654)
  store %struct.Memory* %call_46e654, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7ae438, %eax	 RIP: 46e65a	 Bytes: 7
  %loadMem_46e65a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e65a = call %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e65a)
  store %struct.Memory* %call_46e65a, %struct.Memory** %MEMORY

  ; Code: jge .L_46e8b2	 RIP: 46e661	 Bytes: 6
  %loadMem_46e661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e661 = call %struct.Memory* @routine_jge_.L_46e8b2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e661, i8* %BRANCH_TAKEN, i64 593, i64 6, i64 6)
  store %struct.Memory* %call_46e661, %struct.Memory** %MEMORY

  %loadBr_46e661 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e661 = icmp eq i8 %loadBr_46e661, 1
  br i1 %cmpBr_46e661, label %block_.L_46e8b2, label %block_46e667

block_46e667:
  ; Code: imull $0x14, -0x664(%rbp), %eax	 RIP: 46e667	 Bytes: 7
  %loadMem_46e667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e667 = call %struct.Memory* @routine_imull__0x14__MINUS0x664__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e667)
  store %struct.Memory* %call_46e667, %struct.Memory** %MEMORY

  ; Code: addl $0x15, %eax	 RIP: 46e66e	 Bytes: 3
  %loadMem_46e66e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e66e = call %struct.Memory* @routine_addl__0x15___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e66e)
  store %struct.Memory* %call_46e66e, %struct.Memory** %MEMORY

  ; Code: addl -0x668(%rbp), %eax	 RIP: 46e671	 Bytes: 6
  %loadMem_46e671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e671 = call %struct.Memory* @routine_addl_MINUS0x668__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e671)
  store %struct.Memory* %call_46e671, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x66c(%rbp)	 RIP: 46e677	 Bytes: 6
  %loadMem_46e677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e677 = call %struct.Memory* @routine_movl__eax__MINUS0x66c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e677)
  store %struct.Memory* %call_46e677, %struct.Memory** %MEMORY

  ; Code: movslq -0x66c(%rbp), %rcx	 RIP: 46e67d	 Bytes: 7
  %loadMem_46e67d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e67d = call %struct.Memory* @routine_movslq_MINUS0x66c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e67d)
  store %struct.Memory* %call_46e67d, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46e684	 Bytes: 8
  %loadMem_46e684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e684 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e684)
  store %struct.Memory* %call_46e684, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %eax	 RIP: 46e68c	 Bytes: 3
  %loadMem_46e68c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e68c = call %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e68c)
  store %struct.Memory* %call_46e68c, %struct.Memory** %MEMORY

  ; Code: jne .L_46e72d	 RIP: 46e68f	 Bytes: 6
  %loadMem_46e68f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e68f = call %struct.Memory* @routine_jne_.L_46e72d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e68f, i8* %BRANCH_TAKEN, i64 158, i64 6, i64 6)
  store %struct.Memory* %call_46e68f, %struct.Memory** %MEMORY

  %loadBr_46e68f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e68f = icmp eq i8 %loadBr_46e68f, 1
  br i1 %cmpBr_46e68f, label %block_.L_46e72d, label %block_46e695

block_46e695:
  ; Code: movl $0x2, %esi	 RIP: 46e695	 Bytes: 5
  %loadMem_46e695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e695 = call %struct.Memory* @routine_movl__0x2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e695)
  store %struct.Memory* %call_46e695, %struct.Memory** %MEMORY

  ; Code: movl -0x66c(%rbp), %edi	 RIP: 46e69a	 Bytes: 6
  %loadMem_46e69a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e69a = call %struct.Memory* @routine_movl_MINUS0x66c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e69a)
  store %struct.Memory* %call_46e69a, %struct.Memory** %MEMORY

  ; Code: callq .captured_territory	 RIP: 46e6a0	 Bytes: 5
  %loadMem1_46e6a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46e6a0 = call %struct.Memory* @routine_callq_.captured_territory(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46e6a0, i64 -2176, i64 5, i64 5)
  store %struct.Memory* %call1_46e6a0, %struct.Memory** %MEMORY

  %loadMem2_46e6a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46e6a0 = load i64, i64* %3
  %call2_46e6a0 = call %struct.Memory* @sub_46de20.captured_territory(%struct.State* %0, i64  %loadPC_46e6a0, %struct.Memory* %loadMem2_46e6a0)
  store %struct.Memory* %call2_46e6a0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46e6a5	 Bytes: 3
  %loadMem_46e6a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e6a5 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e6a5)
  store %struct.Memory* %call_46e6a5, %struct.Memory** %MEMORY

  ; Code: je .L_46e701	 RIP: 46e6a8	 Bytes: 6
  %loadMem_46e6a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e6a8 = call %struct.Memory* @routine_je_.L_46e701(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e6a8, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_46e6a8, %struct.Memory** %MEMORY

  %loadBr_46e6a8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e6a8 = icmp eq i8 %loadBr_46e6a8, 1
  br i1 %cmpBr_46e6a8, label %block_.L_46e701, label %block_46e6ae

block_46e6ae:
  ; Code: movss 0x74a56(%rip), %xmm0	 RIP: 46e6ae	 Bytes: 8
  %loadMem_46e6ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e6ae = call %struct.Memory* @routine_movss_0x74a56__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e6ae)
  store %struct.Memory* %call_46e6ae, %struct.Memory** %MEMORY

  ; Code: movss 0x74a76(%rip), %xmm1	 RIP: 46e6b6	 Bytes: 8
  %loadMem_46e6b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e6b6 = call %struct.Memory* @routine_movss_0x74a76__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e6b6)
  store %struct.Memory* %call_46e6b6, %struct.Memory** %MEMORY

  ; Code: addss -0x654(%rbp), %xmm1	 RIP: 46e6be	 Bytes: 8
  %loadMem_46e6be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e6be = call %struct.Memory* @routine_addss_MINUS0x654__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e6be)
  store %struct.Memory* %call_46e6be, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, -0x654(%rbp)	 RIP: 46e6c6	 Bytes: 8
  %loadMem_46e6c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e6c6 = call %struct.Memory* @routine_movss__xmm1__MINUS0x654__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e6c6)
  store %struct.Memory* %call_46e6c6, %struct.Memory** %MEMORY

  ; Code: movl -0x690(%rbp), %eax	 RIP: 46e6ce	 Bytes: 6
  %loadMem_46e6ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e6ce = call %struct.Memory* @routine_movl_MINUS0x690__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e6ce)
  store %struct.Memory* %call_46e6ce, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %eax	 RIP: 46e6d4	 Bytes: 3
  %loadMem_46e6d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e6d4 = call %struct.Memory* @routine_addl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e6d4)
  store %struct.Memory* %call_46e6d4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x690(%rbp)	 RIP: 46e6d7	 Bytes: 6
  %loadMem_46e6d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e6d7 = call %struct.Memory* @routine_movl__eax__MINUS0x690__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e6d7)
  store %struct.Memory* %call_46e6d7, %struct.Memory** %MEMORY

  ; Code: addss -0x65c(%rbp), %xmm0	 RIP: 46e6dd	 Bytes: 8
  %loadMem_46e6dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e6dd = call %struct.Memory* @routine_addss_MINUS0x65c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e6dd)
  store %struct.Memory* %call_46e6dd, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x65c(%rbp)	 RIP: 46e6e5	 Bytes: 8
  %loadMem_46e6e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e6e5 = call %struct.Memory* @routine_movss__xmm0__MINUS0x65c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e6e5)
  store %struct.Memory* %call_46e6e5, %struct.Memory** %MEMORY

  ; Code: movl -0x694(%rbp), %eax	 RIP: 46e6ed	 Bytes: 6
  %loadMem_46e6ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e6ed = call %struct.Memory* @routine_movl_MINUS0x694__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e6ed)
  store %struct.Memory* %call_46e6ed, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46e6f3	 Bytes: 3
  %loadMem_46e6f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e6f3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e6f3)
  store %struct.Memory* %call_46e6f3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x694(%rbp)	 RIP: 46e6f6	 Bytes: 6
  %loadMem_46e6f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e6f6 = call %struct.Memory* @routine_movl__eax__MINUS0x694__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e6f6)
  store %struct.Memory* %call_46e6f6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46e728	 RIP: 46e6fc	 Bytes: 5
  %loadMem_46e6fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e6fc = call %struct.Memory* @routine_jmpq_.L_46e728(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e6fc, i64 44, i64 5)
  store %struct.Memory* %call_46e6fc, %struct.Memory** %MEMORY

  br label %block_.L_46e728

  ; Code: .L_46e701:	 RIP: 46e701	 Bytes: 0
block_.L_46e701:

  ; Code: movss 0x74a03(%rip), %xmm0	 RIP: 46e701	 Bytes: 8
  %loadMem_46e701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e701 = call %struct.Memory* @routine_movss_0x74a03__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e701)
  store %struct.Memory* %call_46e701, %struct.Memory** %MEMORY

  ; Code: addss -0x660(%rbp), %xmm0	 RIP: 46e709	 Bytes: 8
  %loadMem_46e709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e709 = call %struct.Memory* @routine_addss_MINUS0x660__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e709)
  store %struct.Memory* %call_46e709, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x660(%rbp)	 RIP: 46e711	 Bytes: 8
  %loadMem_46e711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e711 = call %struct.Memory* @routine_movss__xmm0__MINUS0x660__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e711)
  store %struct.Memory* %call_46e711, %struct.Memory** %MEMORY

  ; Code: movl -0x698(%rbp), %eax	 RIP: 46e719	 Bytes: 6
  %loadMem_46e719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e719 = call %struct.Memory* @routine_movl_MINUS0x698__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e719)
  store %struct.Memory* %call_46e719, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46e71f	 Bytes: 3
  %loadMem_46e71f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e71f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e71f)
  store %struct.Memory* %call_46e71f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x698(%rbp)	 RIP: 46e722	 Bytes: 6
  %loadMem_46e722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e722 = call %struct.Memory* @routine_movl__eax__MINUS0x698__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e722)
  store %struct.Memory* %call_46e722, %struct.Memory** %MEMORY

  ; Code: .L_46e728:	 RIP: 46e728	 Bytes: 0
  br label %block_.L_46e728
block_.L_46e728:

  ; Code: jmpq .L_46e899	 RIP: 46e728	 Bytes: 5
  %loadMem_46e728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e728 = call %struct.Memory* @routine_jmpq_.L_46e899(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e728, i64 369, i64 5)
  store %struct.Memory* %call_46e728, %struct.Memory** %MEMORY

  br label %block_.L_46e899

  ; Code: .L_46e72d:	 RIP: 46e72d	 Bytes: 0
block_.L_46e72d:

  ; Code: movslq -0x66c(%rbp), %rax	 RIP: 46e72d	 Bytes: 7
  %loadMem_46e72d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e72d = call %struct.Memory* @routine_movslq_MINUS0x66c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e72d)
  store %struct.Memory* %call_46e72d, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 46e734	 Bytes: 8
  %loadMem_46e734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e734 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e734)
  store %struct.Memory* %call_46e734, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %ecx	 RIP: 46e73c	 Bytes: 3
  %loadMem_46e73c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e73c = call %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e73c)
  store %struct.Memory* %call_46e73c, %struct.Memory** %MEMORY

  ; Code: jne .L_46e7b5	 RIP: 46e73f	 Bytes: 6
  %loadMem_46e73f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e73f = call %struct.Memory* @routine_jne_.L_46e7b5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e73f, i8* %BRANCH_TAKEN, i64 118, i64 6, i64 6)
  store %struct.Memory* %call_46e73f, %struct.Memory** %MEMORY

  %loadBr_46e73f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e73f = icmp eq i8 %loadBr_46e73f, 1
  br i1 %cmpBr_46e73f, label %block_.L_46e7b5, label %block_46e745

block_46e745:
  ; Code: movl $0x2, %esi	 RIP: 46e745	 Bytes: 5
  %loadMem_46e745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e745 = call %struct.Memory* @routine_movl__0x2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e745)
  store %struct.Memory* %call_46e745, %struct.Memory** %MEMORY

  ; Code: movl -0x66c(%rbp), %edi	 RIP: 46e74a	 Bytes: 6
  %loadMem_46e74a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e74a = call %struct.Memory* @routine_movl_MINUS0x66c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e74a)
  store %struct.Memory* %call_46e74a, %struct.Memory** %MEMORY

  ; Code: callq .captured_territory	 RIP: 46e750	 Bytes: 5
  %loadMem1_46e750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46e750 = call %struct.Memory* @routine_callq_.captured_territory(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46e750, i64 -2352, i64 5, i64 5)
  store %struct.Memory* %call1_46e750, %struct.Memory** %MEMORY

  %loadMem2_46e750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46e750 = load i64, i64* %3
  %call2_46e750 = call %struct.Memory* @sub_46de20.captured_territory(%struct.State* %0, i64  %loadPC_46e750, %struct.Memory* %loadMem2_46e750)
  store %struct.Memory* %call2_46e750, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46e755	 Bytes: 3
  %loadMem_46e755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e755 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e755)
  store %struct.Memory* %call_46e755, %struct.Memory** %MEMORY

  ; Code: je .L_46e7b0	 RIP: 46e758	 Bytes: 6
  %loadMem_46e758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e758 = call %struct.Memory* @routine_je_.L_46e7b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e758, i8* %BRANCH_TAKEN, i64 88, i64 6, i64 6)
  store %struct.Memory* %call_46e758, %struct.Memory** %MEMORY

  %loadBr_46e758 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e758 = icmp eq i8 %loadBr_46e758, 1
  br i1 %cmpBr_46e758, label %block_.L_46e7b0, label %block_46e75e

block_46e75e:
  ; Code: movss 0x749a6(%rip), %xmm0	 RIP: 46e75e	 Bytes: 8
  %loadMem_46e75e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e75e = call %struct.Memory* @routine_movss_0x749a6__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e75e)
  store %struct.Memory* %call_46e75e, %struct.Memory** %MEMORY

  ; Code: movss 0x749c6(%rip), %xmm1	 RIP: 46e766	 Bytes: 8
  %loadMem_46e766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e766 = call %struct.Memory* @routine_movss_0x749c6__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e766)
  store %struct.Memory* %call_46e766, %struct.Memory** %MEMORY

  ; Code: addss -0x658(%rbp), %xmm1	 RIP: 46e76e	 Bytes: 8
  %loadMem_46e76e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e76e = call %struct.Memory* @routine_addss_MINUS0x658__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e76e)
  store %struct.Memory* %call_46e76e, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, -0x658(%rbp)	 RIP: 46e776	 Bytes: 8
  %loadMem_46e776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e776 = call %struct.Memory* @routine_movss__xmm1__MINUS0x658__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e776)
  store %struct.Memory* %call_46e776, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm1	 RIP: 46e77e	 Bytes: 3
  %loadMem_46e77e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e77e = call %struct.Memory* @routine_movaps__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e77e)
  store %struct.Memory* %call_46e77e, %struct.Memory** %MEMORY

  ; Code: addss -0x660(%rbp), %xmm1	 RIP: 46e781	 Bytes: 8
  %loadMem_46e781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e781 = call %struct.Memory* @routine_addss_MINUS0x660__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e781)
  store %struct.Memory* %call_46e781, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, -0x660(%rbp)	 RIP: 46e789	 Bytes: 8
  %loadMem_46e789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e789 = call %struct.Memory* @routine_movss__xmm1__MINUS0x660__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e789)
  store %struct.Memory* %call_46e789, %struct.Memory** %MEMORY

  ; Code: movl -0x68c(%rbp), %eax	 RIP: 46e791	 Bytes: 6
  %loadMem_46e791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e791 = call %struct.Memory* @routine_movl_MINUS0x68c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e791)
  store %struct.Memory* %call_46e791, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %eax	 RIP: 46e797	 Bytes: 3
  %loadMem_46e797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e797 = call %struct.Memory* @routine_addl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e797)
  store %struct.Memory* %call_46e797, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x68c(%rbp)	 RIP: 46e79a	 Bytes: 6
  %loadMem_46e79a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e79a = call %struct.Memory* @routine_movl__eax__MINUS0x68c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e79a)
  store %struct.Memory* %call_46e79a, %struct.Memory** %MEMORY

  ; Code: addss -0x660(%rbp), %xmm0	 RIP: 46e7a0	 Bytes: 8
  %loadMem_46e7a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e7a0 = call %struct.Memory* @routine_addss_MINUS0x660__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e7a0)
  store %struct.Memory* %call_46e7a0, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x660(%rbp)	 RIP: 46e7a8	 Bytes: 8
  %loadMem_46e7a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e7a8 = call %struct.Memory* @routine_movss__xmm0__MINUS0x660__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e7a8)
  store %struct.Memory* %call_46e7a8, %struct.Memory** %MEMORY

  ; Code: .L_46e7b0:	 RIP: 46e7b0	 Bytes: 0
  br label %block_.L_46e7b0
block_.L_46e7b0:

  ; Code: jmpq .L_46e894	 RIP: 46e7b0	 Bytes: 5
  %loadMem_46e7b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e7b0 = call %struct.Memory* @routine_jmpq_.L_46e894(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e7b0, i64 228, i64 5)
  store %struct.Memory* %call_46e7b0, %struct.Memory** %MEMORY

  br label %block_.L_46e894

  ; Code: .L_46e7b5:	 RIP: 46e7b5	 Bytes: 0
block_.L_46e7b5:

  ; Code: xorps %xmm0, %xmm0	 RIP: 46e7b5	 Bytes: 3
  %loadMem_46e7b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e7b5 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e7b5)
  store %struct.Memory* %call_46e7b5, %struct.Memory** %MEMORY

  ; Code: movslq -0x66c(%rbp), %rax	 RIP: 46e7b8	 Bytes: 7
  %loadMem_46e7b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e7b8 = call %struct.Memory* @routine_movslq_MINUS0x66c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e7b8)
  store %struct.Memory* %call_46e7b8, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl -0x650(%rbp,%rax,4), %xmm1	 RIP: 46e7bf	 Bytes: 9
  %loadMem_46e7bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e7bf = call %struct.Memory* @routine_cvtsi2sdl_MINUS0x650__rbp__rax_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e7bf)
  store %struct.Memory* %call_46e7bf, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 46e7c8	 Bytes: 4
  %loadMem_46e7c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e7c8 = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e7c8)
  store %struct.Memory* %call_46e7c8, %struct.Memory** %MEMORY

  ; Code: jbe .L_46e824	 RIP: 46e7cc	 Bytes: 6
  %loadMem_46e7cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e7cc = call %struct.Memory* @routine_jbe_.L_46e824(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e7cc, i8* %BRANCH_TAKEN, i64 88, i64 6, i64 6)
  store %struct.Memory* %call_46e7cc, %struct.Memory** %MEMORY

  %loadBr_46e7cc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e7cc = icmp eq i8 %loadBr_46e7cc, 1
  br i1 %cmpBr_46e7cc, label %block_.L_46e824, label %block_46e7d2

block_46e7d2:
  ; Code: movss 0x74932(%rip), %xmm0	 RIP: 46e7d2	 Bytes: 8
  %loadMem_46e7d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e7d2 = call %struct.Memory* @routine_movss_0x74932__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e7d2)
  store %struct.Memory* %call_46e7d2, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm1	 RIP: 46e7da	 Bytes: 3
  %loadMem_46e7da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e7da = call %struct.Memory* @routine_movaps__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e7da)
  store %struct.Memory* %call_46e7da, %struct.Memory** %MEMORY

  ; Code: addss -0x654(%rbp), %xmm1	 RIP: 46e7dd	 Bytes: 8
  %loadMem_46e7dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e7dd = call %struct.Memory* @routine_addss_MINUS0x654__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e7dd)
  store %struct.Memory* %call_46e7dd, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, -0x654(%rbp)	 RIP: 46e7e5	 Bytes: 8
  %loadMem_46e7e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e7e5 = call %struct.Memory* @routine_movss__xmm1__MINUS0x654__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e7e5)
  store %struct.Memory* %call_46e7e5, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm1	 RIP: 46e7ed	 Bytes: 3
  %loadMem_46e7ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e7ed = call %struct.Memory* @routine_movaps__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e7ed)
  store %struct.Memory* %call_46e7ed, %struct.Memory** %MEMORY

  ; Code: addss -0x65c(%rbp), %xmm1	 RIP: 46e7f0	 Bytes: 8
  %loadMem_46e7f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e7f0 = call %struct.Memory* @routine_addss_MINUS0x65c__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e7f0)
  store %struct.Memory* %call_46e7f0, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, -0x65c(%rbp)	 RIP: 46e7f8	 Bytes: 8
  %loadMem_46e7f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e7f8 = call %struct.Memory* @routine_movss__xmm1__MINUS0x65c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e7f8)
  store %struct.Memory* %call_46e7f8, %struct.Memory** %MEMORY

  ; Code: movl -0x690(%rbp), %eax	 RIP: 46e800	 Bytes: 6
  %loadMem_46e800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e800 = call %struct.Memory* @routine_movl_MINUS0x690__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e800)
  store %struct.Memory* %call_46e800, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46e806	 Bytes: 3
  %loadMem_46e806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e806 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e806)
  store %struct.Memory* %call_46e806, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x690(%rbp)	 RIP: 46e809	 Bytes: 6
  %loadMem_46e809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e809 = call %struct.Memory* @routine_movl__eax__MINUS0x690__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e809)
  store %struct.Memory* %call_46e809, %struct.Memory** %MEMORY

  ; Code: addss -0x65c(%rbp), %xmm0	 RIP: 46e80f	 Bytes: 8
  %loadMem_46e80f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e80f = call %struct.Memory* @routine_addss_MINUS0x65c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e80f)
  store %struct.Memory* %call_46e80f, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x65c(%rbp)	 RIP: 46e817	 Bytes: 8
  %loadMem_46e817 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e817 = call %struct.Memory* @routine_movss__xmm0__MINUS0x65c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e817)
  store %struct.Memory* %call_46e817, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46e88f	 RIP: 46e81f	 Bytes: 5
  %loadMem_46e81f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e81f = call %struct.Memory* @routine_jmpq_.L_46e88f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e81f, i64 112, i64 5)
  store %struct.Memory* %call_46e81f, %struct.Memory** %MEMORY

  br label %block_.L_46e88f

  ; Code: .L_46e824:	 RIP: 46e824	 Bytes: 0
block_.L_46e824:

  ; Code: xorps %xmm0, %xmm0	 RIP: 46e824	 Bytes: 3
  %loadMem_46e824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e824 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e824)
  store %struct.Memory* %call_46e824, %struct.Memory** %MEMORY

  ; Code: movslq -0x66c(%rbp), %rax	 RIP: 46e827	 Bytes: 7
  %loadMem_46e827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e827 = call %struct.Memory* @routine_movslq_MINUS0x66c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e827)
  store %struct.Memory* %call_46e827, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl -0x650(%rbp,%rax,4), %xmm1	 RIP: 46e82e	 Bytes: 9
  %loadMem_46e82e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e82e = call %struct.Memory* @routine_cvtsi2sdl_MINUS0x650__rbp__rax_4____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e82e)
  store %struct.Memory* %call_46e82e, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm1, %xmm0	 RIP: 46e837	 Bytes: 4
  %loadMem_46e837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e837 = call %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e837)
  store %struct.Memory* %call_46e837, %struct.Memory** %MEMORY

  ; Code: jbe .L_46e88a	 RIP: 46e83b	 Bytes: 6
  %loadMem_46e83b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e83b = call %struct.Memory* @routine_jbe_.L_46e88a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e83b, i8* %BRANCH_TAKEN, i64 79, i64 6, i64 6)
  store %struct.Memory* %call_46e83b, %struct.Memory** %MEMORY

  %loadBr_46e83b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e83b = icmp eq i8 %loadBr_46e83b, 1
  br i1 %cmpBr_46e83b, label %block_.L_46e88a, label %block_46e841

block_46e841:
  ; Code: movss 0x748c3(%rip), %xmm0	 RIP: 46e841	 Bytes: 8
  %loadMem_46e841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e841 = call %struct.Memory* @routine_movss_0x748c3__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e841)
  store %struct.Memory* %call_46e841, %struct.Memory** %MEMORY

  ; Code: movaps %xmm0, %xmm1	 RIP: 46e849	 Bytes: 3
  %loadMem_46e849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e849 = call %struct.Memory* @routine_movaps__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e849)
  store %struct.Memory* %call_46e849, %struct.Memory** %MEMORY

  ; Code: addss -0x658(%rbp), %xmm1	 RIP: 46e84c	 Bytes: 8
  %loadMem_46e84c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e84c = call %struct.Memory* @routine_addss_MINUS0x658__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e84c)
  store %struct.Memory* %call_46e84c, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, -0x658(%rbp)	 RIP: 46e854	 Bytes: 8
  %loadMem_46e854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e854 = call %struct.Memory* @routine_movss__xmm1__MINUS0x658__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e854)
  store %struct.Memory* %call_46e854, %struct.Memory** %MEMORY

  ; Code: addss -0x660(%rbp), %xmm0	 RIP: 46e85c	 Bytes: 8
  %loadMem_46e85c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e85c = call %struct.Memory* @routine_addss_MINUS0x660__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e85c)
  store %struct.Memory* %call_46e85c, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x660(%rbp)	 RIP: 46e864	 Bytes: 8
  %loadMem_46e864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e864 = call %struct.Memory* @routine_movss__xmm0__MINUS0x660__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e864)
  store %struct.Memory* %call_46e864, %struct.Memory** %MEMORY

  ; Code: movl -0x68c(%rbp), %eax	 RIP: 46e86c	 Bytes: 6
  %loadMem_46e86c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e86c = call %struct.Memory* @routine_movl_MINUS0x68c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e86c)
  store %struct.Memory* %call_46e86c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46e872	 Bytes: 3
  %loadMem_46e872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e872 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e872)
  store %struct.Memory* %call_46e872, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x68c(%rbp)	 RIP: 46e875	 Bytes: 6
  %loadMem_46e875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e875 = call %struct.Memory* @routine_movl__eax__MINUS0x68c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e875)
  store %struct.Memory* %call_46e875, %struct.Memory** %MEMORY

  ; Code: movl -0x698(%rbp), %eax	 RIP: 46e87b	 Bytes: 6
  %loadMem_46e87b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e87b = call %struct.Memory* @routine_movl_MINUS0x698__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e87b)
  store %struct.Memory* %call_46e87b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46e881	 Bytes: 3
  %loadMem_46e881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e881 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e881)
  store %struct.Memory* %call_46e881, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x698(%rbp)	 RIP: 46e884	 Bytes: 6
  %loadMem_46e884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e884 = call %struct.Memory* @routine_movl__eax__MINUS0x698__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e884)
  store %struct.Memory* %call_46e884, %struct.Memory** %MEMORY

  ; Code: .L_46e88a:	 RIP: 46e88a	 Bytes: 0
  br label %block_.L_46e88a
block_.L_46e88a:

  ; Code: jmpq .L_46e88f	 RIP: 46e88a	 Bytes: 5
  %loadMem_46e88a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e88a = call %struct.Memory* @routine_jmpq_.L_46e88f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e88a, i64 5, i64 5)
  store %struct.Memory* %call_46e88a, %struct.Memory** %MEMORY

  br label %block_.L_46e88f

  ; Code: .L_46e88f:	 RIP: 46e88f	 Bytes: 0
block_.L_46e88f:

  ; Code: jmpq .L_46e894	 RIP: 46e88f	 Bytes: 5
  %loadMem_46e88f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e88f = call %struct.Memory* @routine_jmpq_.L_46e894(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e88f, i64 5, i64 5)
  store %struct.Memory* %call_46e88f, %struct.Memory** %MEMORY

  br label %block_.L_46e894

  ; Code: .L_46e894:	 RIP: 46e894	 Bytes: 0
block_.L_46e894:

  ; Code: jmpq .L_46e899	 RIP: 46e894	 Bytes: 5
  %loadMem_46e894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e894 = call %struct.Memory* @routine_jmpq_.L_46e899(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e894, i64 5, i64 5)
  store %struct.Memory* %call_46e894, %struct.Memory** %MEMORY

  br label %block_.L_46e899

  ; Code: .L_46e899:	 RIP: 46e899	 Bytes: 0
block_.L_46e899:

  ; Code: jmpq .L_46e89e	 RIP: 46e899	 Bytes: 5
  %loadMem_46e899 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e899 = call %struct.Memory* @routine_jmpq_.L_46e89e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e899, i64 5, i64 5)
  store %struct.Memory* %call_46e899, %struct.Memory** %MEMORY

  br label %block_.L_46e89e

  ; Code: .L_46e89e:	 RIP: 46e89e	 Bytes: 0
block_.L_46e89e:

  ; Code: movl -0x668(%rbp), %eax	 RIP: 46e89e	 Bytes: 6
  %loadMem_46e89e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e89e = call %struct.Memory* @routine_movl_MINUS0x668__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e89e)
  store %struct.Memory* %call_46e89e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46e8a4	 Bytes: 3
  %loadMem_46e8a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e8a4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e8a4)
  store %struct.Memory* %call_46e8a4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x668(%rbp)	 RIP: 46e8a7	 Bytes: 6
  %loadMem_46e8a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e8a7 = call %struct.Memory* @routine_movl__eax__MINUS0x668__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e8a7)
  store %struct.Memory* %call_46e8a7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46e654	 RIP: 46e8ad	 Bytes: 5
  %loadMem_46e8ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e8ad = call %struct.Memory* @routine_jmpq_.L_46e654(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e8ad, i64 -601, i64 5)
  store %struct.Memory* %call_46e8ad, %struct.Memory** %MEMORY

  br label %block_.L_46e654

  ; Code: .L_46e8b2:	 RIP: 46e8b2	 Bytes: 0
block_.L_46e8b2:

  ; Code: cmpl $0x0, 0xab0fc0	 RIP: 46e8b2	 Bytes: 8
  %loadMem_46e8b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e8b2 = call %struct.Memory* @routine_cmpl__0x0__0xab0fc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e8b2)
  store %struct.Memory* %call_46e8b2, %struct.Memory** %MEMORY

  ; Code: je .L_46e911	 RIP: 46e8ba	 Bytes: 6
  %loadMem_46e8ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e8ba = call %struct.Memory* @routine_je_.L_46e911(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e8ba, i8* %BRANCH_TAKEN, i64 87, i64 6, i64 6)
  store %struct.Memory* %call_46e8ba, %struct.Memory** %MEMORY

  %loadBr_46e8ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e8ba = icmp eq i8 %loadBr_46e8ba, 1
  br i1 %cmpBr_46e8ba, label %block_.L_46e911, label %block_46e8c0

block_46e8c0:
  ; Code: movl 0xab0f24, %eax	 RIP: 46e8c0	 Bytes: 7
  %loadMem_46e8c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e8c0 = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e8c0)
  store %struct.Memory* %call_46e8c0, %struct.Memory** %MEMORY

  ; Code: andl $0x10000, %eax	 RIP: 46e8c7	 Bytes: 5
  %loadMem_46e8c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e8c7 = call %struct.Memory* @routine_andl__0x10000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e8c7)
  store %struct.Memory* %call_46e8c7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46e8cc	 Bytes: 3
  %loadMem_46e8cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e8cc = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e8cc)
  store %struct.Memory* %call_46e8cc, %struct.Memory** %MEMORY

  ; Code: jne .L_46e8da	 RIP: 46e8cf	 Bytes: 6
  %loadMem_46e8cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e8cf = call %struct.Memory* @routine_jne_.L_46e8da(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e8cf, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_46e8cf, %struct.Memory** %MEMORY

  %loadBr_46e8cf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e8cf = icmp eq i8 %loadBr_46e8cf, 1
  br i1 %cmpBr_46e8cf, label %block_.L_46e8da, label %block_46e8d5

block_46e8d5:
  ; Code: jmpq .L_46e90c	 RIP: 46e8d5	 Bytes: 5
  %loadMem_46e8d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e8d5 = call %struct.Memory* @routine_jmpq_.L_46e90c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e8d5, i64 55, i64 5)
  store %struct.Memory* %call_46e8d5, %struct.Memory** %MEMORY

  br label %block_.L_46e90c

  ; Code: .L_46e8da:	 RIP: 46e8da	 Bytes: 0
block_.L_46e8da:

  ; Code: movq $0x58058f, %rdi	 RIP: 46e8da	 Bytes: 10
  %loadMem_46e8da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e8da = call %struct.Memory* @routine_movq__0x58058f___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e8da)
  store %struct.Memory* %call_46e8da, %struct.Memory** %MEMORY

  ; Code: movl 0x7ae438, %eax	 RIP: 46e8e4	 Bytes: 7
  %loadMem_46e8e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e8e4 = call %struct.Memory* @routine_movl_0x7ae438___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e8e4)
  store %struct.Memory* %call_46e8e4, %struct.Memory** %MEMORY

  ; Code: subl -0x664(%rbp), %eax	 RIP: 46e8eb	 Bytes: 6
  %loadMem_46e8eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e8eb = call %struct.Memory* @routine_subl_MINUS0x664__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e8eb)
  store %struct.Memory* %call_46e8eb, %struct.Memory** %MEMORY

  ; Code: movl -0x694(%rbp), %edx	 RIP: 46e8f1	 Bytes: 6
  %loadMem_46e8f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e8f1 = call %struct.Memory* @routine_movl_MINUS0x694__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e8f1)
  store %struct.Memory* %call_46e8f1, %struct.Memory** %MEMORY

  ; Code: movl -0x698(%rbp), %ecx	 RIP: 46e8f7	 Bytes: 6
  %loadMem_46e8f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e8f7 = call %struct.Memory* @routine_movl_MINUS0x698__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e8f7)
  store %struct.Memory* %call_46e8f7, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 46e8fd	 Bytes: 2
  %loadMem_46e8fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e8fd = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e8fd)
  store %struct.Memory* %call_46e8fd, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 46e8ff	 Bytes: 2
  %loadMem_46e8ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e8ff = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e8ff)
  store %struct.Memory* %call_46e8ff, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 46e901	 Bytes: 5
  %loadMem1_46e901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46e901 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46e901, i64 -117585, i64 5, i64 5)
  store %struct.Memory* %call1_46e901, %struct.Memory** %MEMORY

  %loadMem2_46e901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46e901 = load i64, i64* %3
  %call2_46e901 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_46e901, %struct.Memory* %loadMem2_46e901)
  store %struct.Memory* %call2_46e901, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6b0(%rbp)	 RIP: 46e906	 Bytes: 6
  %loadMem_46e906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e906 = call %struct.Memory* @routine_movl__eax__MINUS0x6b0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e906)
  store %struct.Memory* %call_46e906, %struct.Memory** %MEMORY

  ; Code: .L_46e90c:	 RIP: 46e90c	 Bytes: 0
  br label %block_.L_46e90c
block_.L_46e90c:

  ; Code: jmpq .L_46e962	 RIP: 46e90c	 Bytes: 5
  %loadMem_46e90c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e90c = call %struct.Memory* @routine_jmpq_.L_46e962(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e90c, i64 86, i64 5)
  store %struct.Memory* %call_46e90c, %struct.Memory** %MEMORY

  br label %block_.L_46e962

  ; Code: .L_46e911:	 RIP: 46e911	 Bytes: 0
block_.L_46e911:

  ; Code: movl 0xab0f24, %eax	 RIP: 46e911	 Bytes: 7
  %loadMem_46e911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e911 = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e911)
  store %struct.Memory* %call_46e911, %struct.Memory** %MEMORY

  ; Code: andl $0x10000, %eax	 RIP: 46e918	 Bytes: 5
  %loadMem_46e918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e918 = call %struct.Memory* @routine_andl__0x10000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e918)
  store %struct.Memory* %call_46e918, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46e91d	 Bytes: 3
  %loadMem_46e91d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e91d = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e91d)
  store %struct.Memory* %call_46e91d, %struct.Memory** %MEMORY

  ; Code: jne .L_46e92b	 RIP: 46e920	 Bytes: 6
  %loadMem_46e920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e920 = call %struct.Memory* @routine_jne_.L_46e92b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e920, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_46e920, %struct.Memory** %MEMORY

  %loadBr_46e920 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e920 = icmp eq i8 %loadBr_46e920, 1
  br i1 %cmpBr_46e920, label %block_.L_46e92b, label %block_46e926

block_46e926:
  ; Code: jmpq .L_46e95d	 RIP: 46e926	 Bytes: 5
  %loadMem_46e926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e926 = call %struct.Memory* @routine_jmpq_.L_46e95d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e926, i64 55, i64 5)
  store %struct.Memory* %call_46e926, %struct.Memory** %MEMORY

  br label %block_.L_46e95d

  ; Code: .L_46e92b:	 RIP: 46e92b	 Bytes: 0
block_.L_46e92b:

  ; Code: movq $0x5805b3, %rdi	 RIP: 46e92b	 Bytes: 10
  %loadMem_46e92b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e92b = call %struct.Memory* @routine_movq__0x5805b3___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e92b)
  store %struct.Memory* %call_46e92b, %struct.Memory** %MEMORY

  ; Code: movl 0x7ae438, %eax	 RIP: 46e935	 Bytes: 7
  %loadMem_46e935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e935 = call %struct.Memory* @routine_movl_0x7ae438___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e935)
  store %struct.Memory* %call_46e935, %struct.Memory** %MEMORY

  ; Code: subl -0x664(%rbp), %eax	 RIP: 46e93c	 Bytes: 6
  %loadMem_46e93c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e93c = call %struct.Memory* @routine_subl_MINUS0x664__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e93c)
  store %struct.Memory* %call_46e93c, %struct.Memory** %MEMORY

  ; Code: movl -0x690(%rbp), %edx	 RIP: 46e942	 Bytes: 6
  %loadMem_46e942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e942 = call %struct.Memory* @routine_movl_MINUS0x690__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e942)
  store %struct.Memory* %call_46e942, %struct.Memory** %MEMORY

  ; Code: movl -0x68c(%rbp), %ecx	 RIP: 46e948	 Bytes: 6
  %loadMem_46e948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e948 = call %struct.Memory* @routine_movl_MINUS0x68c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e948)
  store %struct.Memory* %call_46e948, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 46e94e	 Bytes: 2
  %loadMem_46e94e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e94e = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e94e)
  store %struct.Memory* %call_46e94e, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 46e950	 Bytes: 2
  %loadMem_46e950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e950 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e950)
  store %struct.Memory* %call_46e950, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 46e952	 Bytes: 5
  %loadMem1_46e952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46e952 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46e952, i64 -117666, i64 5, i64 5)
  store %struct.Memory* %call1_46e952, %struct.Memory** %MEMORY

  %loadMem2_46e952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46e952 = load i64, i64* %3
  %call2_46e952 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_46e952, %struct.Memory* %loadMem2_46e952)
  store %struct.Memory* %call2_46e952, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6b4(%rbp)	 RIP: 46e957	 Bytes: 6
  %loadMem_46e957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e957 = call %struct.Memory* @routine_movl__eax__MINUS0x6b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e957)
  store %struct.Memory* %call_46e957, %struct.Memory** %MEMORY

  ; Code: .L_46e95d:	 RIP: 46e95d	 Bytes: 0
  br label %block_.L_46e95d
block_.L_46e95d:

  ; Code: jmpq .L_46e962	 RIP: 46e95d	 Bytes: 5
  %loadMem_46e95d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e95d = call %struct.Memory* @routine_jmpq_.L_46e962(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e95d, i64 5, i64 5)
  store %struct.Memory* %call_46e95d, %struct.Memory** %MEMORY

  br label %block_.L_46e962

  ; Code: .L_46e962:	 RIP: 46e962	 Bytes: 0
block_.L_46e962:

  ; Code: jmpq .L_46e967	 RIP: 46e962	 Bytes: 5
  %loadMem_46e962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e962 = call %struct.Memory* @routine_jmpq_.L_46e967(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e962, i64 5, i64 5)
  store %struct.Memory* %call_46e962, %struct.Memory** %MEMORY

  br label %block_.L_46e967

  ; Code: .L_46e967:	 RIP: 46e967	 Bytes: 0
block_.L_46e967:

  ; Code: movl -0x664(%rbp), %eax	 RIP: 46e967	 Bytes: 6
  %loadMem_46e967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e967 = call %struct.Memory* @routine_movl_MINUS0x664__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e967)
  store %struct.Memory* %call_46e967, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46e96d	 Bytes: 3
  %loadMem_46e96d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e96d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e96d)
  store %struct.Memory* %call_46e96d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x664(%rbp)	 RIP: 46e970	 Bytes: 6
  %loadMem_46e970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e970 = call %struct.Memory* @routine_movl__eax__MINUS0x664__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e970)
  store %struct.Memory* %call_46e970, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46e60f	 RIP: 46e976	 Bytes: 5
  %loadMem_46e976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e976 = call %struct.Memory* @routine_jmpq_.L_46e60f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e976, i64 -871, i64 5)
  store %struct.Memory* %call_46e976, %struct.Memory** %MEMORY

  br label %block_.L_46e60f

  ; Code: .L_46e97b:	 RIP: 46e97b	 Bytes: 0
block_.L_46e97b:

  ; Code: cmpl $0x0, 0xab0fc0	 RIP: 46e97b	 Bytes: 8
  %loadMem_46e97b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e97b = call %struct.Memory* @routine_cmpl__0x0__0xab0fc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e97b)
  store %struct.Memory* %call_46e97b, %struct.Memory** %MEMORY

  ; Code: je .L_46e9af	 RIP: 46e983	 Bytes: 6
  %loadMem_46e983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e983 = call %struct.Memory* @routine_je_.L_46e9af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e983, i8* %BRANCH_TAKEN, i64 44, i64 6, i64 6)
  store %struct.Memory* %call_46e983, %struct.Memory** %MEMORY

  %loadBr_46e983 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e983 = icmp eq i8 %loadBr_46e983, 1
  br i1 %cmpBr_46e983, label %block_.L_46e9af, label %block_46e989

block_46e989:
  ; Code: movss -0x65c(%rbp), %xmm0	 RIP: 46e989	 Bytes: 8
  %loadMem_46e989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e989 = call %struct.Memory* @routine_movss_MINUS0x65c__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e989)
  store %struct.Memory* %call_46e989, %struct.Memory** %MEMORY

  ; Code: subss -0x660(%rbp), %xmm0	 RIP: 46e991	 Bytes: 8
  %loadMem_46e991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e991 = call %struct.Memory* @routine_subss_MINUS0x660__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e991)
  store %struct.Memory* %call_46e991, %struct.Memory** %MEMORY

  ; Code: addss 0xb454f8, %xmm0	 RIP: 46e999	 Bytes: 9
  %loadMem_46e999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e999 = call %struct.Memory* @routine_addss_0xb454f8___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e999)
  store %struct.Memory* %call_46e999, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x674(%rbp)	 RIP: 46e9a2	 Bytes: 8
  %loadMem_46e9a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e9a2 = call %struct.Memory* @routine_movss__xmm0__MINUS0x674__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e9a2)
  store %struct.Memory* %call_46e9a2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46ea32	 RIP: 46e9aa	 Bytes: 5
  %loadMem_46e9aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e9aa = call %struct.Memory* @routine_jmpq_.L_46ea32(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e9aa, i64 136, i64 5)
  store %struct.Memory* %call_46e9aa, %struct.Memory** %MEMORY

  br label %block_.L_46ea32

  ; Code: .L_46e9af:	 RIP: 46e9af	 Bytes: 0
block_.L_46e9af:

  ; Code: movl 0xab0f24, %eax	 RIP: 46e9af	 Bytes: 7
  %loadMem_46e9af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e9af = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e9af)
  store %struct.Memory* %call_46e9af, %struct.Memory** %MEMORY

  ; Code: andl $0x10000, %eax	 RIP: 46e9b6	 Bytes: 5
  %loadMem_46e9b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e9b6 = call %struct.Memory* @routine_andl__0x10000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e9b6)
  store %struct.Memory* %call_46e9b6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46e9bb	 Bytes: 3
  %loadMem_46e9bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e9bb = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e9bb)
  store %struct.Memory* %call_46e9bb, %struct.Memory** %MEMORY

  ; Code: jne .L_46e9c9	 RIP: 46e9be	 Bytes: 6
  %loadMem_46e9be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e9be = call %struct.Memory* @routine_jne_.L_46e9c9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e9be, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_46e9be, %struct.Memory** %MEMORY

  %loadBr_46e9be = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46e9be = icmp eq i8 %loadBr_46e9be, 1
  br i1 %cmpBr_46e9be, label %block_.L_46e9c9, label %block_46e9c4

block_46e9c4:
  ; Code: jmpq .L_46e9f7	 RIP: 46e9c4	 Bytes: 5
  %loadMem_46e9c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e9c4 = call %struct.Memory* @routine_jmpq_.L_46e9f7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e9c4, i64 51, i64 5)
  store %struct.Memory* %call_46e9c4, %struct.Memory** %MEMORY

  br label %block_.L_46e9f7

  ; Code: .L_46e9c9:	 RIP: 46e9c9	 Bytes: 0
block_.L_46e9c9:

  ; Code: movq $0x5805dc, %rdi	 RIP: 46e9c9	 Bytes: 10
  %loadMem_46e9c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e9c9 = call %struct.Memory* @routine_movq__0x5805dc___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e9c9)
  store %struct.Memory* %call_46e9c9, %struct.Memory** %MEMORY

  ; Code: movl 0xb8c040, %esi	 RIP: 46e9d3	 Bytes: 7
  %loadMem_46e9d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e9d3 = call %struct.Memory* @routine_movl_0xb8c040___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e9d3)
  store %struct.Memory* %call_46e9d3, %struct.Memory** %MEMORY

  ; Code: movl 0xb38cb0, %edx	 RIP: 46e9da	 Bytes: 7
  %loadMem_46e9da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e9da = call %struct.Memory* @routine_movl_0xb38cb0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e9da)
  store %struct.Memory* %call_46e9da, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0xb454f8, %xmm0	 RIP: 46e9e1	 Bytes: 9
  %loadMem_46e9e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e9e1 = call %struct.Memory* @routine_cvtss2sd_0xb454f8___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e9e1)
  store %struct.Memory* %call_46e9e1, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 46e9ea	 Bytes: 2
  %loadMem_46e9ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e9ea = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e9ea)
  store %struct.Memory* %call_46e9ea, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 46e9ec	 Bytes: 5
  %loadMem1_46e9ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46e9ec = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46e9ec, i64 -117820, i64 5, i64 5)
  store %struct.Memory* %call1_46e9ec, %struct.Memory** %MEMORY

  %loadMem2_46e9ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46e9ec = load i64, i64* %3
  %call2_46e9ec = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_46e9ec, %struct.Memory* %loadMem2_46e9ec)
  store %struct.Memory* %call2_46e9ec, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6b8(%rbp)	 RIP: 46e9f1	 Bytes: 6
  %loadMem_46e9f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e9f1 = call %struct.Memory* @routine_movl__eax__MINUS0x6b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e9f1)
  store %struct.Memory* %call_46e9f1, %struct.Memory** %MEMORY

  ; Code: .L_46e9f7:	 RIP: 46e9f7	 Bytes: 0
  br label %block_.L_46e9f7
block_.L_46e9f7:

  ; Code: movss -0x654(%rbp), %xmm0	 RIP: 46e9f7	 Bytes: 8
  %loadMem_46e9f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e9f7 = call %struct.Memory* @routine_movss_MINUS0x654__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e9f7)
  store %struct.Memory* %call_46e9f7, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0xb8c040, %xmm1	 RIP: 46e9ff	 Bytes: 9
  %loadMem_46e9ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46e9ff = call %struct.Memory* @routine_cvtsi2ssl_0xb8c040___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46e9ff)
  store %struct.Memory* %call_46e9ff, %struct.Memory** %MEMORY

  ; Code: addss %xmm1, %xmm0	 RIP: 46ea08	 Bytes: 4
  %loadMem_46ea08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ea08 = call %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ea08)
  store %struct.Memory* %call_46ea08, %struct.Memory** %MEMORY

  ; Code: subss -0x658(%rbp), %xmm0	 RIP: 46ea0c	 Bytes: 8
  %loadMem_46ea0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ea0c = call %struct.Memory* @routine_subss_MINUS0x658__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ea0c)
  store %struct.Memory* %call_46ea0c, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0xb38cb0, %xmm1	 RIP: 46ea14	 Bytes: 9
  %loadMem_46ea14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ea14 = call %struct.Memory* @routine_cvtsi2ssl_0xb38cb0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ea14)
  store %struct.Memory* %call_46ea14, %struct.Memory** %MEMORY

  ; Code: subss %xmm1, %xmm0	 RIP: 46ea1d	 Bytes: 4
  %loadMem_46ea1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ea1d = call %struct.Memory* @routine_subss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ea1d)
  store %struct.Memory* %call_46ea1d, %struct.Memory** %MEMORY

  ; Code: addss 0xb454f8, %xmm0	 RIP: 46ea21	 Bytes: 9
  %loadMem_46ea21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ea21 = call %struct.Memory* @routine_addss_0xb454f8___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ea21)
  store %struct.Memory* %call_46ea21, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x674(%rbp)	 RIP: 46ea2a	 Bytes: 8
  %loadMem_46ea2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ea2a = call %struct.Memory* @routine_movss__xmm0__MINUS0x674__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ea2a)
  store %struct.Memory* %call_46ea2a, %struct.Memory** %MEMORY

  ; Code: .L_46ea32:	 RIP: 46ea32	 Bytes: 0
  br label %block_.L_46ea32
block_.L_46ea32:

  ; Code: jmpq .L_46ea47	 RIP: 46ea32	 Bytes: 5
  %loadMem_46ea32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ea32 = call %struct.Memory* @routine_jmpq_.L_46ea47(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ea32, i64 21, i64 5)
  store %struct.Memory* %call_46ea32, %struct.Memory** %MEMORY

  br label %block_.L_46ea47

  ; Code: .L_46ea37:	 RIP: 46ea37	 Bytes: 0
block_.L_46ea37:

  ; Code: movss -0x670(%rbp), %xmm0	 RIP: 46ea37	 Bytes: 8
  %loadMem_46ea37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ea37 = call %struct.Memory* @routine_movss_MINUS0x670__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ea37)
  store %struct.Memory* %call_46ea37, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x674(%rbp)	 RIP: 46ea3f	 Bytes: 8
  %loadMem_46ea3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ea3f = call %struct.Memory* @routine_movss__xmm0__MINUS0x674__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ea3f)
  store %struct.Memory* %call_46ea3f, %struct.Memory** %MEMORY

  ; Code: .L_46ea47:	 RIP: 46ea47	 Bytes: 0
  br label %block_.L_46ea47
block_.L_46ea47:

  ; Code: cmpq $0x0, -0x8(%rbp)	 RIP: 46ea47	 Bytes: 5
  %loadMem_46ea47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ea47 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ea47)
  store %struct.Memory* %call_46ea47, %struct.Memory** %MEMORY

  ; Code: je .L_46ea62	 RIP: 46ea4c	 Bytes: 6
  %loadMem_46ea4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ea4c = call %struct.Memory* @routine_je_.L_46ea62(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ea4c, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_46ea4c, %struct.Memory** %MEMORY

  %loadBr_46ea4c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46ea4c = icmp eq i8 %loadBr_46ea4c, 1
  br i1 %cmpBr_46ea4c, label %block_.L_46ea62, label %block_46ea52

block_46ea52:
  ; Code: movss -0x670(%rbp), %xmm0	 RIP: 46ea52	 Bytes: 8
  %loadMem_46ea52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ea52 = call %struct.Memory* @routine_movss_MINUS0x670__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ea52)
  store %struct.Memory* %call_46ea52, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 46ea5a	 Bytes: 4
  %loadMem_46ea5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ea5a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ea5a)
  store %struct.Memory* %call_46ea5a, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax)	 RIP: 46ea5e	 Bytes: 4
  %loadMem_46ea5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ea5e = call %struct.Memory* @routine_movss__xmm0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ea5e)
  store %struct.Memory* %call_46ea5e, %struct.Memory** %MEMORY

  ; Code: .L_46ea62:	 RIP: 46ea62	 Bytes: 0
  br label %block_.L_46ea62
block_.L_46ea62:

  ; Code: cmpq $0x0, -0x10(%rbp)	 RIP: 46ea62	 Bytes: 5
  %loadMem_46ea62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ea62 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ea62)
  store %struct.Memory* %call_46ea62, %struct.Memory** %MEMORY

  ; Code: je .L_46ea7d	 RIP: 46ea67	 Bytes: 6
  %loadMem_46ea67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ea67 = call %struct.Memory* @routine_je_.L_46ea7d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ea67, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_46ea67, %struct.Memory** %MEMORY

  %loadBr_46ea67 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46ea67 = icmp eq i8 %loadBr_46ea67, 1
  br i1 %cmpBr_46ea67, label %block_.L_46ea7d, label %block_46ea6d

block_46ea6d:
  ; Code: movss -0x674(%rbp), %xmm0	 RIP: 46ea6d	 Bytes: 8
  %loadMem_46ea6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ea6d = call %struct.Memory* @routine_movss_MINUS0x674__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ea6d)
  store %struct.Memory* %call_46ea6d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 46ea75	 Bytes: 4
  %loadMem_46ea75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ea75 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ea75)
  store %struct.Memory* %call_46ea75, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax)	 RIP: 46ea79	 Bytes: 4
  %loadMem_46ea79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ea79 = call %struct.Memory* @routine_movss__xmm0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ea79)
  store %struct.Memory* %call_46ea79, %struct.Memory** %MEMORY

  ; Code: .L_46ea7d:	 RIP: 46ea7d	 Bytes: 0
  br label %block_.L_46ea7d
block_.L_46ea7d:

  ; Code: movss 0x746af(%rip), %xmm0	 RIP: 46ea7d	 Bytes: 8
  %loadMem_46ea7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ea7d = call %struct.Memory* @routine_movss_0x746af__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ea7d)
  store %struct.Memory* %call_46ea7d, %struct.Memory** %MEMORY

  ; Code: movss -0x670(%rbp), %xmm1	 RIP: 46ea85	 Bytes: 8
  %loadMem_46ea85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ea85 = call %struct.Memory* @routine_movss_MINUS0x670__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ea85)
  store %struct.Memory* %call_46ea85, %struct.Memory** %MEMORY

  ; Code: addss -0x674(%rbp), %xmm1	 RIP: 46ea8d	 Bytes: 8
  %loadMem_46ea8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ea8d = call %struct.Memory* @routine_addss_MINUS0x674__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ea8d)
  store %struct.Memory* %call_46ea8d, %struct.Memory** %MEMORY

  ; Code: divss %xmm0, %xmm1	 RIP: 46ea95	 Bytes: 4
  %loadMem_46ea95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ea95 = call %struct.Memory* @routine_divss__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ea95)
  store %struct.Memory* %call_46ea95, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm0	 RIP: 46ea99	 Bytes: 3
  %loadMem_46ea99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ea99 = call %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ea99)
  store %struct.Memory* %call_46ea99, %struct.Memory** %MEMORY

  ; Code: addq $0x6c0, %rsp	 RIP: 46ea9c	 Bytes: 7
  %loadMem_46ea9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ea9c = call %struct.Memory* @routine_addq__0x6c0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ea9c)
  store %struct.Memory* %call_46ea9c, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 46eaa3	 Bytes: 1
  %loadMem_46eaa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46eaa3 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46eaa3)
  store %struct.Memory* %call_46eaa3, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 46eaa4	 Bytes: 1
  %loadMem_46eaa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46eaa4 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46eaa4)
  store %struct.Memory* %call_46eaa4, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_46eaa4
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

define %struct.Memory* @routine_subq__0x6c0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 1728)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x5___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 5)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x15___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 21)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x1___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 1)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x650__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 1616
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x654__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 1620
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss__xmm0__MINUS0x658__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 1624
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss__xmm0__MINUS0x65c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 1628
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss__xmm0__MINUS0x660__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 1632
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__eax___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edx__MINUS0x69c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1692
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__r8___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_MINUS0x69c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1692
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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

define %struct.Memory* @routine_callq_.dilate_erode(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x650__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1616
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x678__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1656
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_.close_bubbles(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_andl__0x10000___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 5
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 65536)
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

define %struct.Memory* @routine_je_.L_46e157(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.print_regions(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x0__MINUS0x664__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1636
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x664__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1636
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x7ae438_type* @G_0x7ae438 to i64))
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

define %struct.Memory* @routine_jge_.L_46e4f1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x67c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1660
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x680__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1664
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x684__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1668
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x688__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1672
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x668__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1640
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x668__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1640
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_46e428(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = inttoptr i64 %3 to i32*
  %7 = load i32, i32* %6
  %8 = sext i32 %7 to i64
  %9 = shl i64 %4, 32
  %10 = ashr exact i64 %9, 32
  %11 = mul  i64 %8, %10
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

define %struct.Memory* @routine_imull__0x14__MINUS0x664__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1636
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13, i64 20)
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

define %struct.Memory* @routine_addl__0x15___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 21)
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

define %struct.Memory* @routine_addl_MINUS0x668__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1640
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0x66c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1644
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_movslq_MINUS0x66c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1644
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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


define %struct.Memory* @routine_cmpl__0x2___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_jne_.L_46e27f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x66c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1644
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.captured_territory(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_46e253(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movss_0x74f04__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x74f04__rip__type* @G_0x74f04__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movss_0x74f24__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x74f24__rip__type* @G_0x74f24__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_addss_MINUS0x654__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1620
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movss__xmm1__MINUS0x654__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 1620
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addss_MINUS0x65c__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1628
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x680__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1664
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__eax__MINUS0x680__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1664
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x684__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1668
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__eax__MINUS0x684__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1668
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_46e27a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movss_0x74eb1__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x74eb1__rip__type* @G_0x74eb1__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_addss_MINUS0x660__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1632
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x688__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1672
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x688__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1672
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_46e40f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movslq_MINUS0x66c__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1644
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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


define %struct.Memory* @routine_jne_.L_46e32f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_je_.L_46e303(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movss_0x74e54__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x74e54__rip__type* @G_0x74e54__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movss_0x74e74__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x74e74__rip__type* @G_0x74e74__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_addss_MINUS0x658__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1624
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movss__xmm1__MINUS0x658__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 1624
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl_MINUS0x67c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1660
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x67c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1660
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_jmpq_.L_46e32a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movss_0x74e01__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x74e01__rip__type* @G_0x74e01__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}












define %struct.Memory* @routine_jmpq_.L_46e40a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory*, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sitofp i32 %6 to double
  %8 = bitcast i8* %2 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x650__rbp__rax_4____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1616
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %19)
  ret %struct.Memory* %22
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory*, %struct.State* dereferenceable(3376), i8* nocapture readonly, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %2 to double*
  %6 = load double, double* %5, align 1
  %7 = bitcast i8* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = fcmp uno double %6, %8
  br i1 %9, label %10, label %22

; <label>:10:                                     ; preds = %4
  %11 = fadd double %6, %8
  %12 = bitcast double %11 to i64
  %13 = and i64 %12, 9221120237041090560
  %14 = icmp eq i64 %13, 9218868437227405312
  %15 = and i64 %12, 2251799813685247
  %16 = icmp ne i64 %15, 0
  %17 = and i1 %14, %16
  br i1 %17, label %18, label %28

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %20, %struct.Memory* %0) #21
  br label %39

; <label>:22:                                     ; preds = %4
  %23 = fcmp ogt double %6, %8
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp olt double %6, %8
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp oeq double %6, %8
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %26, %24, %22, %10
  %29 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ], [ 1, %10 ]
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 0, %26 ], [ 1, %10 ]
  %31 = phi i8 [ 0, %22 ], [ 1, %24 ], [ 0, %26 ], [ 1, %10 ]
  %32 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %31, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %28, %26
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  br label %39

; <label>:39:                                     ; preds = %35, %18
  %40 = phi %struct.Memory* [ %21, %18 ], [ %0, %35 ]
  ret %struct.Memory* %40
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %7 = load i8, i8* %6, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = or i8 %9, %7
  %11 = icmp ne i8 %10, 0
  %12 = zext i1 %11 to i8
  store i8 %12, i8* %2, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %14 = select i1 %11, i64 %3, i64 %4
  store i64 %14, i64* %13, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jbe_.L_46e39a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movss_0x74db8__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x74db8__rip__type* @G_0x74db8__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_movaps__xmm0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6MOVxPSI3VnWI8vec128_tE2VnIS2_EEEP6MemoryS7_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}






















define %struct.Memory* @routine_jmpq_.L_46e405(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_jbe_.L_46e400(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movss_0x74d4d__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x74d4d__rip__type* @G_0x74d4d__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






























define %struct.Memory* @routine_jmpq_.L_46e414(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__eax__MINUS0x668__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1640
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_46e1a6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__0xab0fc0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0fc0_type* @G_0xab0fc0 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_46e487(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_46e450(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_46e482(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x58058f___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x58058f_type* @G__0x58058f to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0x7ae438___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x7ae438_type* @G_0x7ae438 to i64))
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

define %struct.Memory* @routine_subl_MINUS0x664__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1636
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x684__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1668
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x688__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1672
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__eax__MINUS0x6a0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1696
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_46e4d8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jne_.L_46e4a1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_46e4d3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x5805b3___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x5805b3_type* @G__0x5805b3 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl_MINUS0x680__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1664
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x67c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1660
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl__eax__MINUS0x6a4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1700
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_jmpq_.L_46e4dd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__eax__MINUS0x664__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1636
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_46e161(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_je_.L_46e525(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movss_MINUS0x65c__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1628
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = inttoptr i64 %4 to float*
  %12 = load float, float* %11
  %13 = extractelement <2 x float> %7, i32 0
  %14 = fsub float %13, %12
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

define %struct.Memory* @routine_subss_MINUS0x660__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1632
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addss_0xb454f8___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 ptrtoint( %G_0xb454f8_type* @G_0xb454f8 to i64))
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movss__xmm0__MINUS0x670__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 1648
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_46e5a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jne_.L_46e53f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_46e56d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x5805dc___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x5805dc_type* @G__0x5805dc to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0xb8c040___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0xb8c040_type* @G_0xb8c040 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0xb38cb0___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0xb38cb0_type* @G_0xb38cb0 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to float*
  %6 = load float, float* %5
  %7 = fpext float %6 to double
  %8 = bitcast i8* %2 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtss2sd_0xb454f8___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0xb454f8_type* @G_0xb454f8 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movb__0x1___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 1)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movl__eax__MINUS0x6a8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1704
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movss_MINUS0x654__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1620
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory*, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = bitcast i8* %2 to <2 x i32>*
  %6 = load <2 x i32>, <2 x i32>* %5, align 1
  %7 = getelementptr inbounds i8, i8* %2, i64 8
  %8 = bitcast i8* %7 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = inttoptr i64 %3 to i32*
  %11 = load i32, i32* %10
  %12 = sitofp i32 %11 to float
  %13 = bitcast i8* %2 to float*
  store float %12, float* %13, align 1
  %14 = extractelement <2 x i32> %6, i32 1
  %15 = getelementptr inbounds i8, i8* %2, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 1
  %17 = extractelement <2 x i32> %9, i32 0
  %18 = bitcast i8* %7 to i32*
  store i32 %17, i32* %18, align 1
  %19 = extractelement <2 x i32> %9, i32 1
  %20 = getelementptr inbounds i8, i8* %2, i64 12
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2ssl_0xb8c040___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0xb8c040_type* @G_0xb8c040 to i64))
  ret %struct.Memory* %11
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_subss_MINUS0x658__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1624
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_cvtsi2ssl_0xb38cb0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0xb38cb0_type* @G_0xb38cb0 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = bitcast i8* %4 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %7, i32 0
  %14 = extractelement <2 x float> %12, i32 0
  %15 = fsub float %13, %14
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

define %struct.Memory* @routine_subss__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}






define %struct.Memory* @routine_cmpl__0x0__MINUS0x678__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1656
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_46ea37(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x5___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 5)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x15___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 21)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x2___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 2)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_leaq_MINUS0x650__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1616
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}
















define %struct.Memory* @routine_movl__eax__MINUS0x6ac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1708
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_jge_.L_46e97b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x68c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1676
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x690__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1680
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x694__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1684
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x698__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1688
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_jge_.L_46e8b2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jne_.L_46e72d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x2___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 2)
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_je_.L_46e701(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movss_0x74a56__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x74a56__rip__type* @G_0x74a56__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movss_0x74a76__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x74a76__rip__type* @G_0x74a76__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movl_MINUS0x690__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1680
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x690__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1680
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_MINUS0x694__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1684
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x694__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1684
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_46e728(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movss_0x74a03__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x74a03__rip__type* @G_0x74a03__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movl_MINUS0x698__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1688
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x698__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1688
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_46e899(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jne_.L_46e7b5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_je_.L_46e7b0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movss_0x749a6__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x749a6__rip__type* @G_0x749a6__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movss_0x749c6__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x749c6__rip__type* @G_0x749c6__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_addss_MINUS0x660__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1632
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movss__xmm1__MINUS0x660__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 1632
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x68c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1676
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x68c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1676
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_jmpq_.L_46e894(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_jbe_.L_46e824(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movss_0x74932__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x74932__rip__type* @G_0x74932__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_addss_MINUS0x65c__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1628
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movss__xmm1__MINUS0x65c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 1628
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_jmpq_.L_46e88f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_jbe_.L_46e88a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JBEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movss_0x748c3__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x748c3__rip__type* @G_0x748c3__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






























define %struct.Memory* @routine_jmpq_.L_46e89e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_46e654(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_je_.L_46e911(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_46e8da(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_46e90c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl_MINUS0x694__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1684
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x698__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1688
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl__eax__MINUS0x6b0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1712
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_46e962(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jne_.L_46e92b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_46e95d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl_MINUS0x690__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1680
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x68c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1676
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl__eax__MINUS0x6b4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1716
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_jmpq_.L_46e967(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_46e60f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_je_.L_46e9af(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movss__xmm0__MINUS0x674__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 1652
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_46ea32(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jne_.L_46e9c9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_46e9f7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_movl__eax__MINUS0x6b8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1720
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


















define %struct.Memory* @routine_jmpq_.L_46ea47(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movss_MINUS0x670__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1648
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_46ea62(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_je_.L_46ea7d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movss_MINUS0x674__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1652
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
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




define %struct.Memory* @routine_movss_0x746af__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x746af__rip__type* @G_0x746af__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movss_MINUS0x670__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1648
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addss_MINUS0x674__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1652
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = bitcast i8* %4 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %7, i32 0
  %14 = extractelement <2 x float> %12, i32 0
  %15 = fdiv float %13, %14
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

define %struct.Memory* @routine_divss__xmm0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6MOVxPSI3VnWI8vec128_tE2VnIS2_EEEP6MemoryS7_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
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

define %struct.Memory* @routine_addq__0x6c0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 1728)
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

