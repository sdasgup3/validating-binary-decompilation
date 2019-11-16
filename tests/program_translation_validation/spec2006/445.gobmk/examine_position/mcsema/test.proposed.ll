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

declare %struct.Memory* @sub_44e220.purge_persistent_reading_cache(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_47c350.start_timer(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_486130.make_worms(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_47c3d0.time_report(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_408d30.test_gray_border(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_415e70.stones_on_board(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_48ac00.compute_worm_influence(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_41bc00.make_dragons(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_41e0b0.initialize_dragon_data(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4228f0.compute_dragon_influence(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_41ef50.compute_refined_dragon_weaknesses(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4229a0.show_dragons(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x7ae420_type = type <{ [4 x i8] }>
@G_0x7ae420= global %G_0x7ae420_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x7ae424_type = type <{ [4 x i8] }>
@G_0x7ae424= global %G_0x7ae424_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x7ae428_type = type <{ [4 x i8] }>
@G_0x7ae428= global %G_0x7ae428_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x7ae42c_type = type <{ [4 x i8] }>
@G_0x7ae42c= global %G_0x7ae42c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x7ae430_type = type <{ [4 x i8] }>
@G_0x7ae430= global %G_0x7ae430_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x7ae434_type = type <{ [4 x i8] }>
@G_0x7ae434= global %G_0x7ae434_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xab0ee0_type = type <{ [1 x i8] }>
@G_0xab0ee0= global %G_0xab0ee0_type <{ [1 x i8] c"\00" }>
%G_0xab0f28_type = type <{ [4 x i8] }>
@G_0xab0f28= global %G_0xab0f28_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb8af2c_type = type <{ [4 x i8] }>
@G_0xb8af2c= global %G_0xb8af2c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xbd253__rip__type = type <{ [8 x i8] }>
@G_0xbd253__rip_= global %G_0xbd253__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57bf2c_type = type <{ [8 x i8] }>
@G__0x57bf2c= global %G__0x57bf2c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57bf39_type = type <{ [8 x i8] }>
@G__0x57bf39= global %G__0x57bf39_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57bfef_type = type <{ [8 x i8] }>
@G__0x57bfef= global %G__0x57bfef_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @examine_position(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .examine_position:	 RIP: 425c60	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 425c60	 Bytes: 1
  %loadMem_425c60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425c60 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425c60)
  store %struct.Memory* %call_425c60, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 425c61	 Bytes: 3
  %loadMem_425c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425c61 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425c61)
  store %struct.Memory* %call_425c61, %struct.Memory** %MEMORY

  ; Code: subq $0x20, %rsp	 RIP: 425c64	 Bytes: 4
  %loadMem_425c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425c64 = call %struct.Memory* @routine_subq__0x20___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425c64)
  store %struct.Memory* %call_425c64, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 425c68	 Bytes: 3
  %loadMem_425c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425c68 = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425c68)
  store %struct.Memory* %call_425c68, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x8(%rbp)	 RIP: 425c6b	 Bytes: 3
  %loadMem_425c6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425c6b = call %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425c6b)
  store %struct.Memory* %call_425c6b, %struct.Memory** %MEMORY

  ; Code: movl 0xab0f28, %esi	 RIP: 425c6e	 Bytes: 7
  %loadMem_425c6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425c6e = call %struct.Memory* @routine_movl_0xab0f28___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425c6e)
  store %struct.Memory* %call_425c6e, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0xc(%rbp)	 RIP: 425c75	 Bytes: 3
  %loadMem_425c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425c75 = call %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425c75)
  store %struct.Memory* %call_425c75, %struct.Memory** %MEMORY

  ; Code: callq .purge_persistent_reading_cache	 RIP: 425c78	 Bytes: 5
  %loadMem1_425c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_425c78 = call %struct.Memory* @routine_callq_.purge_persistent_reading_cache(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_425c78, i64 165288, i64 5, i64 5)
  store %struct.Memory* %call1_425c78, %struct.Memory** %MEMORY

  %loadMem2_425c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425c78 = load i64, i64* %3
  %call2_425c78 = call %struct.Memory* @sub_44e220.purge_persistent_reading_cache(%struct.State* %0, i64  %loadPC_425c78, %struct.Memory* %loadMem2_425c78)
  store %struct.Memory* %call2_425c78, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xab0f28	 RIP: 425c7d	 Bytes: 8
  %loadMem_425c7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425c7d = call %struct.Memory* @routine_cmpl__0x1__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425c7d)
  store %struct.Memory* %call_425c7d, %struct.Memory** %MEMORY

  ; Code: je .L_425c99	 RIP: 425c85	 Bytes: 6
  %loadMem_425c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425c85 = call %struct.Memory* @routine_je_.L_425c99(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425c85, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_425c85, %struct.Memory** %MEMORY

  %loadBr_425c85 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425c85 = icmp eq i8 %loadBr_425c85, 1
  br i1 %cmpBr_425c85, label %block_.L_425c99, label %block_425c8b

block_425c8b:
  ; Code: cmpl $0x2, 0xab0f28	 RIP: 425c8b	 Bytes: 8
  %loadMem_425c8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425c8b = call %struct.Memory* @routine_cmpl__0x2__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425c8b)
  store %struct.Memory* %call_425c8b, %struct.Memory** %MEMORY

  ; Code: jne .L_425caa	 RIP: 425c93	 Bytes: 6
  %loadMem_425c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425c93 = call %struct.Memory* @routine_jne_.L_425caa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425c93, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_425c93, %struct.Memory** %MEMORY

  %loadBr_425c93 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425c93 = icmp eq i8 %loadBr_425c93, 1
  br i1 %cmpBr_425c93, label %block_.L_425caa, label %block_.L_425c99

  ; Code: .L_425c99:	 RIP: 425c99	 Bytes: 0
block_.L_425c99:

  ; Code: movl 0xab0f28, %eax	 RIP: 425c99	 Bytes: 7
  %loadMem_425c99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425c99 = call %struct.Memory* @routine_movl_0xab0f28___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425c99)
  store %struct.Memory* %call_425c99, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 425ca0	 Bytes: 3
  %loadMem_425ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425ca0 = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425ca0)
  store %struct.Memory* %call_425ca0, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xab0f28	 RIP: 425ca3	 Bytes: 7
  %loadMem_425ca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425ca3 = call %struct.Memory* @routine_movl__eax__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425ca3)
  store %struct.Memory* %call_425ca3, %struct.Memory** %MEMORY

  ; Code: .L_425caa:	 RIP: 425caa	 Bytes: 0
  br label %block_.L_425caa
block_.L_425caa:

  ; Code: movl 0x7ae420, %eax	 RIP: 425caa	 Bytes: 7
  %loadMem_425caa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425caa = call %struct.Memory* @routine_movl_0x7ae420___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425caa)
  store %struct.Memory* %call_425caa, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8af2c, %eax	 RIP: 425cb1	 Bytes: 7
  %loadMem_425cb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425cb1 = call %struct.Memory* @routine_cmpl_0xb8af2c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425cb1)
  store %struct.Memory* %call_425cb1, %struct.Memory** %MEMORY

  ; Code: je .L_425cdb	 RIP: 425cb8	 Bytes: 6
  %loadMem_425cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425cb8 = call %struct.Memory* @routine_je_.L_425cdb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425cb8, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_425cb8, %struct.Memory** %MEMORY

  %loadBr_425cb8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425cb8 = icmp eq i8 %loadBr_425cb8, 1
  br i1 %cmpBr_425cb8, label %block_.L_425cdb, label %block_425cbe

block_425cbe:
  ; Code: movb $0x1, %al	 RIP: 425cbe	 Bytes: 2
  %loadMem_425cbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425cbe = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425cbe)
  store %struct.Memory* %call_425cbe, %struct.Memory** %MEMORY

  ; Code: movl 0xb8af2c, %ecx	 RIP: 425cc0	 Bytes: 7
  %loadMem_425cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425cc0 = call %struct.Memory* @routine_movl_0xb8af2c___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425cc0)
  store %struct.Memory* %call_425cc0, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x7ae420	 RIP: 425cc7	 Bytes: 7
  %loadMem_425cc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425cc7 = call %struct.Memory* @routine_movl__ecx__0x7ae420(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425cc7)
  store %struct.Memory* %call_425cc7, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 425cce	 Bytes: 2
  %loadMem_425cce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425cce = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425cce)
  store %struct.Memory* %call_425cce, %struct.Memory** %MEMORY

  ; Code: jne .L_425ced	 RIP: 425cd0	 Bytes: 6
  %loadMem_425cd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425cd0 = call %struct.Memory* @routine_jne_.L_425ced(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425cd0, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_425cd0, %struct.Memory** %MEMORY

  %loadBr_425cd0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425cd0 = icmp eq i8 %loadBr_425cd0, 1
  br i1 %cmpBr_425cd0, label %block_.L_425ced, label %block_425cd6

block_425cd6:
  ; Code: jmpq .L_425d1d	 RIP: 425cd6	 Bytes: 5
  %loadMem_425cd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425cd6 = call %struct.Memory* @routine_jmpq_.L_425d1d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425cd6, i64 71, i64 5)
  store %struct.Memory* %call_425cd6, %struct.Memory** %MEMORY

  br label %block_.L_425d1d

  ; Code: .L_425cdb:	 RIP: 425cdb	 Bytes: 0
block_.L_425cdb:

  ; Code: xorl %eax, %eax	 RIP: 425cdb	 Bytes: 2
  %loadMem_425cdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425cdb = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425cdb)
  store %struct.Memory* %call_425cdb, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 425cdd	 Bytes: 2
  %loadMem_425cdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425cdd = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425cdd)
  store %struct.Memory* %call_425cdd, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %cl	 RIP: 425cdf	 Bytes: 3
  %loadMem_425cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425cdf = call %struct.Memory* @routine_testb__0x1___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425cdf)
  store %struct.Memory* %call_425cdf, %struct.Memory** %MEMORY

  ; Code: jne .L_425ced	 RIP: 425ce2	 Bytes: 6
  %loadMem_425ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425ce2 = call %struct.Memory* @routine_jne_.L_425ced(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425ce2, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_425ce2, %struct.Memory** %MEMORY

  %loadBr_425ce2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425ce2 = icmp eq i8 %loadBr_425ce2, 1
  br i1 %cmpBr_425ce2, label %block_.L_425ced, label %block_425ce8

block_425ce8:
  ; Code: jmpq .L_425d1d	 RIP: 425ce8	 Bytes: 5
  %loadMem_425ce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425ce8 = call %struct.Memory* @routine_jmpq_.L_425d1d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425ce8, i64 53, i64 5)
  store %struct.Memory* %call_425ce8, %struct.Memory** %MEMORY

  br label %block_.L_425d1d

  ; Code: .L_425ced:	 RIP: 425ced	 Bytes: 0
block_.L_425ced:

  ; Code: xorl %edi, %edi	 RIP: 425ced	 Bytes: 2
  %loadMem_425ced = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425ced = call %struct.Memory* @routine_xorl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425ced)
  store %struct.Memory* %call_425ced, %struct.Memory** %MEMORY

  ; Code: callq .start_timer	 RIP: 425cef	 Bytes: 5
  %loadMem1_425cef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_425cef = call %struct.Memory* @routine_callq_.start_timer(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_425cef, i64 353889, i64 5, i64 5)
  store %struct.Memory* %call1_425cef, %struct.Memory** %MEMORY

  %loadMem2_425cef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425cef = load i64, i64* %3
  %call2_425cef = call %struct.Memory* @sub_47c350.start_timer(%struct.State* %0, i64  %loadPC_425cef, %struct.Memory* %loadMem2_425cef)
  store %struct.Memory* %call2_425cef, %struct.Memory** %MEMORY

  ; Code: callq .make_worms	 RIP: 425cf4	 Bytes: 5
  %loadMem1_425cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_425cf4 = call %struct.Memory* @routine_callq_.make_worms(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_425cf4, i64 394300, i64 5, i64 5)
  store %struct.Memory* %call1_425cf4, %struct.Memory** %MEMORY

  %loadMem2_425cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425cf4 = load i64, i64* %3
  %call2_425cf4 = call %struct.Memory* @sub_486130.make_worms(%struct.State* %0, i64  %loadPC_425cf4, %struct.Memory* %loadMem2_425cf4)
  store %struct.Memory* %call2_425cf4, %struct.Memory** %MEMORY

  ; Code: xorl %edi, %edi	 RIP: 425cf9	 Bytes: 2
  %loadMem_425cf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425cf9 = call %struct.Memory* @routine_xorl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425cf9)
  store %struct.Memory* %call_425cf9, %struct.Memory** %MEMORY

  ; Code: movq $0x57bf2c, %rsi	 RIP: 425cfb	 Bytes: 10
  %loadMem_425cfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425cfb = call %struct.Memory* @routine_movq__0x57bf2c___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425cfb)
  store %struct.Memory* %call_425cfb, %struct.Memory** %MEMORY

  ; Code: movsd 0xbd253(%rip), %xmm0	 RIP: 425d05	 Bytes: 8
  %loadMem_425d05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425d05 = call %struct.Memory* @routine_movsd_0xbd253__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425d05)
  store %struct.Memory* %call_425d05, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x10(%rbp)	 RIP: 425d0d	 Bytes: 3
  %loadMem_425d0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425d0d = call %struct.Memory* @routine_movl__edi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425d0d)
  store %struct.Memory* %call_425d0d, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edx	 RIP: 425d10	 Bytes: 3
  %loadMem_425d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425d10 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425d10)
  store %struct.Memory* %call_425d10, %struct.Memory** %MEMORY

  ; Code: callq .time_report	 RIP: 425d13	 Bytes: 5
  %loadMem1_425d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_425d13 = call %struct.Memory* @routine_callq_.time_report(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_425d13, i64 353981, i64 5, i64 5)
  store %struct.Memory* %call1_425d13, %struct.Memory** %MEMORY

  %loadMem2_425d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425d13 = load i64, i64* %3
  %call2_425d13 = call %struct.Memory* @sub_47c3d0.time_report(%struct.State* %0, i64  %loadPC_425d13, %struct.Memory* %loadMem2_425d13)
  store %struct.Memory* %call2_425d13, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x18(%rbp)	 RIP: 425d18	 Bytes: 5
  %loadMem_425d18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425d18 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425d18)
  store %struct.Memory* %call_425d18, %struct.Memory** %MEMORY

  ; Code: .L_425d1d:	 RIP: 425d1d	 Bytes: 0
  br label %block_.L_425d1d
block_.L_425d1d:

  ; Code: cmpl $0x1, -0x8(%rbp)	 RIP: 425d1d	 Bytes: 4
  %loadMem_425d1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425d1d = call %struct.Memory* @routine_cmpl__0x1__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425d1d)
  store %struct.Memory* %call_425d1d, %struct.Memory** %MEMORY

  ; Code: jne .L_425d71	 RIP: 425d21	 Bytes: 6
  %loadMem_425d21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425d21 = call %struct.Memory* @routine_jne_.L_425d71(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425d21, i8* %BRANCH_TAKEN, i64 80, i64 6, i64 6)
  store %struct.Memory* %call_425d21, %struct.Memory** %MEMORY

  %loadBr_425d21 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425d21 = icmp eq i8 %loadBr_425d21, 1
  br i1 %cmpBr_425d21, label %block_.L_425d71, label %block_425d27

block_425d27:
  ; Code: movl -0xc(%rbp), %eax	 RIP: 425d27	 Bytes: 3
  %loadMem_425d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425d27 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425d27)
  store %struct.Memory* %call_425d27, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xab0f28	 RIP: 425d2a	 Bytes: 7
  %loadMem_425d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425d2a = call %struct.Memory* @routine_movl__eax__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425d2a)
  store %struct.Memory* %call_425d2a, %struct.Memory** %MEMORY

  ; Code: callq .test_gray_border	 RIP: 425d31	 Bytes: 5
  %loadMem1_425d31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_425d31 = call %struct.Memory* @routine_callq_.test_gray_border(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_425d31, i64 -118785, i64 5, i64 5)
  store %struct.Memory* %call1_425d31, %struct.Memory** %MEMORY

  %loadMem2_425d31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425d31 = load i64, i64* %3
  %call2_425d31 = call %struct.Memory* @sub_408d30.test_gray_border(%struct.State* %0, i64  %loadPC_425d31, %struct.Memory* %loadMem2_425d31)
  store %struct.Memory* %call2_425d31, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 425d36	 Bytes: 3
  %loadMem_425d36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425d36 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425d36)
  store %struct.Memory* %call_425d36, %struct.Memory** %MEMORY

  ; Code: jge .L_425d44	 RIP: 425d39	 Bytes: 6
  %loadMem_425d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425d39 = call %struct.Memory* @routine_jge_.L_425d44(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425d39, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_425d39, %struct.Memory** %MEMORY

  %loadBr_425d39 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425d39 = icmp eq i8 %loadBr_425d39, 1
  br i1 %cmpBr_425d39, label %block_.L_425d44, label %block_425d3f

block_425d3f:
  ; Code: jmpq .L_425d6c	 RIP: 425d3f	 Bytes: 5
  %loadMem_425d3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425d3f = call %struct.Memory* @routine_jmpq_.L_425d6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425d3f, i64 45, i64 5)
  store %struct.Memory* %call_425d3f, %struct.Memory** %MEMORY

  br label %block_.L_425d6c

  ; Code: .L_425d44:	 RIP: 425d44	 Bytes: 0
block_.L_425d44:

  ; Code: movq $0x57bf39, %rdi	 RIP: 425d44	 Bytes: 10
  %loadMem_425d44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425d44 = call %struct.Memory* @routine_movq__0x57bf39___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425d44)
  store %struct.Memory* %call_425d44, %struct.Memory** %MEMORY

  ; Code: movl $0x82, %esi	 RIP: 425d4e	 Bytes: 5
  %loadMem_425d4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425d4e = call %struct.Memory* @routine_movl__0x82___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425d4e)
  store %struct.Memory* %call_425d4e, %struct.Memory** %MEMORY

  ; Code: movq $0x57bfef, %rdx	 RIP: 425d53	 Bytes: 10
  %loadMem_425d53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425d53 = call %struct.Memory* @routine_movq__0x57bfef___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425d53)
  store %struct.Memory* %call_425d53, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 425d5d	 Bytes: 5
  %loadMem_425d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425d5d = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425d5d)
  store %struct.Memory* %call_425d5d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 425d62	 Bytes: 2
  %loadMem_425d62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425d62 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425d62)
  store %struct.Memory* %call_425d62, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 425d64	 Bytes: 3
  %loadMem_425d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425d64 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425d64)
  store %struct.Memory* %call_425d64, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 425d67	 Bytes: 5
  %loadMem1_425d67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_425d67 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_425d67, i64 181033, i64 5, i64 5)
  store %struct.Memory* %call1_425d67, %struct.Memory** %MEMORY

  %loadMem2_425d67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425d67 = load i64, i64* %3
  %call2_425d67 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_425d67, %struct.Memory* %loadMem2_425d67)
  store %struct.Memory* %call2_425d67, %struct.Memory** %MEMORY

  ; Code: .L_425d6c:	 RIP: 425d6c	 Bytes: 0
  br label %block_.L_425d6c
block_.L_425d6c:

  ; Code: jmpq .L_426131	 RIP: 425d6c	 Bytes: 5
  %loadMem_425d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425d6c = call %struct.Memory* @routine_jmpq_.L_426131(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425d6c, i64 965, i64 5)
  store %struct.Memory* %call_425d6c, %struct.Memory** %MEMORY

  br label %block_.L_426131

  ; Code: .L_425d71:	 RIP: 425d71	 Bytes: 0
block_.L_425d71:

  ; Code: movl $0x3, %edi	 RIP: 425d71	 Bytes: 5
  %loadMem_425d71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425d71 = call %struct.Memory* @routine_movl__0x3___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425d71)
  store %struct.Memory* %call_425d71, %struct.Memory** %MEMORY

  ; Code: callq .stones_on_board	 RIP: 425d76	 Bytes: 5
  %loadMem1_425d76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_425d76 = call %struct.Memory* @routine_callq_.stones_on_board(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_425d76, i64 -65286, i64 5, i64 5)
  store %struct.Memory* %call1_425d76, %struct.Memory** %MEMORY

  %loadMem2_425d76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425d76 = load i64, i64* %3
  %call2_425d76 = call %struct.Memory* @sub_415e70.stones_on_board(%struct.State* %0, i64  %loadPC_425d76, %struct.Memory* %loadMem2_425d76)
  store %struct.Memory* %call2_425d76, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 425d7b	 Bytes: 3
  %loadMem_425d7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425d7b = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425d7b)
  store %struct.Memory* %call_425d7b, %struct.Memory** %MEMORY

  ; Code: je .L_425f7e	 RIP: 425d7e	 Bytes: 6
  %loadMem_425d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425d7e = call %struct.Memory* @routine_je_.L_425f7e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425d7e, i8* %BRANCH_TAKEN, i64 512, i64 6, i64 6)
  store %struct.Memory* %call_425d7e, %struct.Memory** %MEMORY

  %loadBr_425d7e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425d7e = icmp eq i8 %loadBr_425d7e, 1
  br i1 %cmpBr_425d7e, label %block_.L_425f7e, label %block_425d84

block_425d84:
  ; Code: movl 0x7ae424, %eax	 RIP: 425d84	 Bytes: 7
  %loadMem_425d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425d84 = call %struct.Memory* @routine_movl_0x7ae424___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425d84)
  store %struct.Memory* %call_425d84, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8af2c, %eax	 RIP: 425d8b	 Bytes: 7
  %loadMem_425d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425d8b = call %struct.Memory* @routine_cmpl_0xb8af2c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425d8b)
  store %struct.Memory* %call_425d8b, %struct.Memory** %MEMORY

  ; Code: je .L_425db5	 RIP: 425d92	 Bytes: 6
  %loadMem_425d92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425d92 = call %struct.Memory* @routine_je_.L_425db5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425d92, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_425d92, %struct.Memory** %MEMORY

  %loadBr_425d92 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425d92 = icmp eq i8 %loadBr_425d92, 1
  br i1 %cmpBr_425d92, label %block_.L_425db5, label %block_425d98

block_425d98:
  ; Code: movb $0x1, %al	 RIP: 425d98	 Bytes: 2
  %loadMem_425d98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425d98 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425d98)
  store %struct.Memory* %call_425d98, %struct.Memory** %MEMORY

  ; Code: movl 0xb8af2c, %ecx	 RIP: 425d9a	 Bytes: 7
  %loadMem_425d9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425d9a = call %struct.Memory* @routine_movl_0xb8af2c___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425d9a)
  store %struct.Memory* %call_425d9a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x7ae424	 RIP: 425da1	 Bytes: 7
  %loadMem_425da1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425da1 = call %struct.Memory* @routine_movl__ecx__0x7ae424(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425da1)
  store %struct.Memory* %call_425da1, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 425da8	 Bytes: 2
  %loadMem_425da8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425da8 = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425da8)
  store %struct.Memory* %call_425da8, %struct.Memory** %MEMORY

  ; Code: jne .L_425dc7	 RIP: 425daa	 Bytes: 6
  %loadMem_425daa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425daa = call %struct.Memory* @routine_jne_.L_425dc7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425daa, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_425daa, %struct.Memory** %MEMORY

  %loadBr_425daa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425daa = icmp eq i8 %loadBr_425daa, 1
  br i1 %cmpBr_425daa, label %block_.L_425dc7, label %block_425db0

block_425db0:
  ; Code: jmpq .L_425dcc	 RIP: 425db0	 Bytes: 5
  %loadMem_425db0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425db0 = call %struct.Memory* @routine_jmpq_.L_425dcc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425db0, i64 28, i64 5)
  store %struct.Memory* %call_425db0, %struct.Memory** %MEMORY

  br label %block_.L_425dcc

  ; Code: .L_425db5:	 RIP: 425db5	 Bytes: 0
block_.L_425db5:

  ; Code: xorl %eax, %eax	 RIP: 425db5	 Bytes: 2
  %loadMem_425db5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425db5 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425db5)
  store %struct.Memory* %call_425db5, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 425db7	 Bytes: 2
  %loadMem_425db7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425db7 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425db7)
  store %struct.Memory* %call_425db7, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %cl	 RIP: 425db9	 Bytes: 3
  %loadMem_425db9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425db9 = call %struct.Memory* @routine_testb__0x1___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425db9)
  store %struct.Memory* %call_425db9, %struct.Memory** %MEMORY

  ; Code: jne .L_425dc7	 RIP: 425dbc	 Bytes: 6
  %loadMem_425dbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425dbc = call %struct.Memory* @routine_jne_.L_425dc7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425dbc, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_425dbc, %struct.Memory** %MEMORY

  %loadBr_425dbc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425dbc = icmp eq i8 %loadBr_425dbc, 1
  br i1 %cmpBr_425dbc, label %block_.L_425dc7, label %block_425dc2

block_425dc2:
  ; Code: jmpq .L_425dcc	 RIP: 425dc2	 Bytes: 5
  %loadMem_425dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425dc2 = call %struct.Memory* @routine_jmpq_.L_425dcc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425dc2, i64 10, i64 5)
  store %struct.Memory* %call_425dc2, %struct.Memory** %MEMORY

  br label %block_.L_425dcc

  ; Code: .L_425dc7:	 RIP: 425dc7	 Bytes: 0
block_.L_425dc7:

  ; Code: callq .compute_worm_influence	 RIP: 425dc7	 Bytes: 5
  %loadMem1_425dc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_425dc7 = call %struct.Memory* @routine_callq_.compute_worm_influence(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_425dc7, i64 413241, i64 5, i64 5)
  store %struct.Memory* %call1_425dc7, %struct.Memory** %MEMORY

  %loadMem2_425dc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425dc7 = load i64, i64* %3
  %call2_425dc7 = call %struct.Memory* @sub_48ac00.compute_worm_influence(%struct.State* %0, i64  %loadPC_425dc7, %struct.Memory* %loadMem2_425dc7)
  store %struct.Memory* %call2_425dc7, %struct.Memory** %MEMORY

  ; Code: .L_425dcc:	 RIP: 425dcc	 Bytes: 0
  br label %block_.L_425dcc
block_.L_425dcc:

  ; Code: cmpl $0x2, -0x8(%rbp)	 RIP: 425dcc	 Bytes: 4
  %loadMem_425dcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425dcc = call %struct.Memory* @routine_cmpl__0x2__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425dcc)
  store %struct.Memory* %call_425dcc, %struct.Memory** %MEMORY

  ; Code: jne .L_425e20	 RIP: 425dd0	 Bytes: 6
  %loadMem_425dd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425dd0 = call %struct.Memory* @routine_jne_.L_425e20(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425dd0, i8* %BRANCH_TAKEN, i64 80, i64 6, i64 6)
  store %struct.Memory* %call_425dd0, %struct.Memory** %MEMORY

  %loadBr_425dd0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425dd0 = icmp eq i8 %loadBr_425dd0, 1
  br i1 %cmpBr_425dd0, label %block_.L_425e20, label %block_425dd6

block_425dd6:
  ; Code: movl -0xc(%rbp), %eax	 RIP: 425dd6	 Bytes: 3
  %loadMem_425dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425dd6 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425dd6)
  store %struct.Memory* %call_425dd6, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xab0f28	 RIP: 425dd9	 Bytes: 7
  %loadMem_425dd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425dd9 = call %struct.Memory* @routine_movl__eax__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425dd9)
  store %struct.Memory* %call_425dd9, %struct.Memory** %MEMORY

  ; Code: callq .test_gray_border	 RIP: 425de0	 Bytes: 5
  %loadMem1_425de0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_425de0 = call %struct.Memory* @routine_callq_.test_gray_border(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_425de0, i64 -118960, i64 5, i64 5)
  store %struct.Memory* %call1_425de0, %struct.Memory** %MEMORY

  %loadMem2_425de0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425de0 = load i64, i64* %3
  %call2_425de0 = call %struct.Memory* @sub_408d30.test_gray_border(%struct.State* %0, i64  %loadPC_425de0, %struct.Memory* %loadMem2_425de0)
  store %struct.Memory* %call2_425de0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 425de5	 Bytes: 3
  %loadMem_425de5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425de5 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425de5)
  store %struct.Memory* %call_425de5, %struct.Memory** %MEMORY

  ; Code: jge .L_425df3	 RIP: 425de8	 Bytes: 6
  %loadMem_425de8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425de8 = call %struct.Memory* @routine_jge_.L_425df3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425de8, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_425de8, %struct.Memory** %MEMORY

  %loadBr_425de8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425de8 = icmp eq i8 %loadBr_425de8, 1
  br i1 %cmpBr_425de8, label %block_.L_425df3, label %block_425dee

block_425dee:
  ; Code: jmpq .L_425e1b	 RIP: 425dee	 Bytes: 5
  %loadMem_425dee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425dee = call %struct.Memory* @routine_jmpq_.L_425e1b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425dee, i64 45, i64 5)
  store %struct.Memory* %call_425dee, %struct.Memory** %MEMORY

  br label %block_.L_425e1b

  ; Code: .L_425df3:	 RIP: 425df3	 Bytes: 0
block_.L_425df3:

  ; Code: movq $0x57bf39, %rdi	 RIP: 425df3	 Bytes: 10
  %loadMem_425df3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425df3 = call %struct.Memory* @routine_movq__0x57bf39___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425df3)
  store %struct.Memory* %call_425df3, %struct.Memory** %MEMORY

  ; Code: movl $0x8b, %esi	 RIP: 425dfd	 Bytes: 5
  %loadMem_425dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425dfd = call %struct.Memory* @routine_movl__0x8b___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425dfd)
  store %struct.Memory* %call_425dfd, %struct.Memory** %MEMORY

  ; Code: movq $0x57bfef, %rdx	 RIP: 425e02	 Bytes: 10
  %loadMem_425e02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425e02 = call %struct.Memory* @routine_movq__0x57bfef___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425e02)
  store %struct.Memory* %call_425e02, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 425e0c	 Bytes: 5
  %loadMem_425e0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425e0c = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425e0c)
  store %struct.Memory* %call_425e0c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 425e11	 Bytes: 2
  %loadMem_425e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425e11 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425e11)
  store %struct.Memory* %call_425e11, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 425e13	 Bytes: 3
  %loadMem_425e13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425e13 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425e13)
  store %struct.Memory* %call_425e13, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 425e16	 Bytes: 5
  %loadMem1_425e16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_425e16 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_425e16, i64 180858, i64 5, i64 5)
  store %struct.Memory* %call1_425e16, %struct.Memory** %MEMORY

  %loadMem2_425e16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425e16 = load i64, i64* %3
  %call2_425e16 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_425e16, %struct.Memory* %loadMem2_425e16)
  store %struct.Memory* %call2_425e16, %struct.Memory** %MEMORY

  ; Code: .L_425e1b:	 RIP: 425e1b	 Bytes: 0
  br label %block_.L_425e1b
block_.L_425e1b:

  ; Code: jmpq .L_426131	 RIP: 425e1b	 Bytes: 5
  %loadMem_425e1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425e1b = call %struct.Memory* @routine_jmpq_.L_426131(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425e1b, i64 790, i64 5)
  store %struct.Memory* %call_425e1b, %struct.Memory** %MEMORY

  br label %block_.L_426131

  ; Code: .L_425e20:	 RIP: 425e20	 Bytes: 0
block_.L_425e20:

  ; Code: cmpl $0x3, -0x8(%rbp)	 RIP: 425e20	 Bytes: 4
  %loadMem_425e20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425e20 = call %struct.Memory* @routine_cmpl__0x3__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425e20)
  store %struct.Memory* %call_425e20, %struct.Memory** %MEMORY

  ; Code: jne .L_425ec7	 RIP: 425e24	 Bytes: 6
  %loadMem_425e24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425e24 = call %struct.Memory* @routine_jne_.L_425ec7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425e24, i8* %BRANCH_TAKEN, i64 163, i64 6, i64 6)
  store %struct.Memory* %call_425e24, %struct.Memory** %MEMORY

  %loadBr_425e24 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425e24 = icmp eq i8 %loadBr_425e24, 1
  br i1 %cmpBr_425e24, label %block_.L_425ec7, label %block_425e2a

block_425e2a:
  ; Code: movl 0x7ae428, %eax	 RIP: 425e2a	 Bytes: 7
  %loadMem_425e2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425e2a = call %struct.Memory* @routine_movl_0x7ae428___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425e2a)
  store %struct.Memory* %call_425e2a, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8af2c, %eax	 RIP: 425e31	 Bytes: 7
  %loadMem_425e31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425e31 = call %struct.Memory* @routine_cmpl_0xb8af2c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425e31)
  store %struct.Memory* %call_425e31, %struct.Memory** %MEMORY

  ; Code: je .L_425e5b	 RIP: 425e38	 Bytes: 6
  %loadMem_425e38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425e38 = call %struct.Memory* @routine_je_.L_425e5b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425e38, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_425e38, %struct.Memory** %MEMORY

  %loadBr_425e38 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425e38 = icmp eq i8 %loadBr_425e38, 1
  br i1 %cmpBr_425e38, label %block_.L_425e5b, label %block_425e3e

block_425e3e:
  ; Code: movb $0x1, %al	 RIP: 425e3e	 Bytes: 2
  %loadMem_425e3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425e3e = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425e3e)
  store %struct.Memory* %call_425e3e, %struct.Memory** %MEMORY

  ; Code: movl 0xb8af2c, %ecx	 RIP: 425e40	 Bytes: 7
  %loadMem_425e40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425e40 = call %struct.Memory* @routine_movl_0xb8af2c___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425e40)
  store %struct.Memory* %call_425e40, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x7ae428	 RIP: 425e47	 Bytes: 7
  %loadMem_425e47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425e47 = call %struct.Memory* @routine_movl__ecx__0x7ae428(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425e47)
  store %struct.Memory* %call_425e47, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 425e4e	 Bytes: 2
  %loadMem_425e4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425e4e = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425e4e)
  store %struct.Memory* %call_425e4e, %struct.Memory** %MEMORY

  ; Code: jne .L_425e6d	 RIP: 425e50	 Bytes: 6
  %loadMem_425e50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425e50 = call %struct.Memory* @routine_jne_.L_425e6d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425e50, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_425e50, %struct.Memory** %MEMORY

  %loadBr_425e50 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425e50 = icmp eq i8 %loadBr_425e50, 1
  br i1 %cmpBr_425e50, label %block_.L_425e6d, label %block_425e56

block_425e56:
  ; Code: jmpq .L_425e7d	 RIP: 425e56	 Bytes: 5
  %loadMem_425e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425e56 = call %struct.Memory* @routine_jmpq_.L_425e7d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425e56, i64 39, i64 5)
  store %struct.Memory* %call_425e56, %struct.Memory** %MEMORY

  br label %block_.L_425e7d

  ; Code: .L_425e5b:	 RIP: 425e5b	 Bytes: 0
block_.L_425e5b:

  ; Code: xorl %eax, %eax	 RIP: 425e5b	 Bytes: 2
  %loadMem_425e5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425e5b = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425e5b)
  store %struct.Memory* %call_425e5b, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 425e5d	 Bytes: 2
  %loadMem_425e5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425e5d = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425e5d)
  store %struct.Memory* %call_425e5d, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %cl	 RIP: 425e5f	 Bytes: 3
  %loadMem_425e5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425e5f = call %struct.Memory* @routine_testb__0x1___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425e5f)
  store %struct.Memory* %call_425e5f, %struct.Memory** %MEMORY

  ; Code: jne .L_425e6d	 RIP: 425e62	 Bytes: 6
  %loadMem_425e62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425e62 = call %struct.Memory* @routine_jne_.L_425e6d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425e62, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_425e62, %struct.Memory** %MEMORY

  %loadBr_425e62 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425e62 = icmp eq i8 %loadBr_425e62, 1
  br i1 %cmpBr_425e62, label %block_.L_425e6d, label %block_425e68

block_425e68:
  ; Code: jmpq .L_425e7d	 RIP: 425e68	 Bytes: 5
  %loadMem_425e68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425e68 = call %struct.Memory* @routine_jmpq_.L_425e7d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425e68, i64 21, i64 5)
  store %struct.Memory* %call_425e68, %struct.Memory** %MEMORY

  br label %block_.L_425e7d

  ; Code: .L_425e6d:	 RIP: 425e6d	 Bytes: 0
block_.L_425e6d:

  ; Code: movl $0x1, %esi	 RIP: 425e6d	 Bytes: 5
  %loadMem_425e6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425e6d = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425e6d)
  store %struct.Memory* %call_425e6d, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edi	 RIP: 425e72	 Bytes: 3
  %loadMem_425e72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425e72 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425e72)
  store %struct.Memory* %call_425e72, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edx	 RIP: 425e75	 Bytes: 3
  %loadMem_425e75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425e75 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425e75)
  store %struct.Memory* %call_425e75, %struct.Memory** %MEMORY

  ; Code: callq .make_dragons	 RIP: 425e78	 Bytes: 5
  %loadMem1_425e78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_425e78 = call %struct.Memory* @routine_callq_.make_dragons(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_425e78, i64 -41592, i64 5, i64 5)
  store %struct.Memory* %call1_425e78, %struct.Memory** %MEMORY

  %loadMem2_425e78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425e78 = load i64, i64* %3
  %call2_425e78 = call %struct.Memory* @sub_41bc00.make_dragons(%struct.State* %0, i64  %loadPC_425e78, %struct.Memory* %loadMem2_425e78)
  store %struct.Memory* %call2_425e78, %struct.Memory** %MEMORY

  ; Code: .L_425e7d:	 RIP: 425e7d	 Bytes: 0
  br label %block_.L_425e7d
block_.L_425e7d:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 425e7d	 Bytes: 3
  %loadMem_425e7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425e7d = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425e7d)
  store %struct.Memory* %call_425e7d, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xab0f28	 RIP: 425e80	 Bytes: 7
  %loadMem_425e80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425e80 = call %struct.Memory* @routine_movl__eax__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425e80)
  store %struct.Memory* %call_425e80, %struct.Memory** %MEMORY

  ; Code: callq .test_gray_border	 RIP: 425e87	 Bytes: 5
  %loadMem1_425e87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_425e87 = call %struct.Memory* @routine_callq_.test_gray_border(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_425e87, i64 -119127, i64 5, i64 5)
  store %struct.Memory* %call1_425e87, %struct.Memory** %MEMORY

  %loadMem2_425e87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425e87 = load i64, i64* %3
  %call2_425e87 = call %struct.Memory* @sub_408d30.test_gray_border(%struct.State* %0, i64  %loadPC_425e87, %struct.Memory* %loadMem2_425e87)
  store %struct.Memory* %call2_425e87, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 425e8c	 Bytes: 3
  %loadMem_425e8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425e8c = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425e8c)
  store %struct.Memory* %call_425e8c, %struct.Memory** %MEMORY

  ; Code: jge .L_425e9a	 RIP: 425e8f	 Bytes: 6
  %loadMem_425e8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425e8f = call %struct.Memory* @routine_jge_.L_425e9a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425e8f, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_425e8f, %struct.Memory** %MEMORY

  %loadBr_425e8f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425e8f = icmp eq i8 %loadBr_425e8f, 1
  br i1 %cmpBr_425e8f, label %block_.L_425e9a, label %block_425e95

block_425e95:
  ; Code: jmpq .L_425ec2	 RIP: 425e95	 Bytes: 5
  %loadMem_425e95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425e95 = call %struct.Memory* @routine_jmpq_.L_425ec2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425e95, i64 45, i64 5)
  store %struct.Memory* %call_425e95, %struct.Memory** %MEMORY

  br label %block_.L_425ec2

  ; Code: .L_425e9a:	 RIP: 425e9a	 Bytes: 0
block_.L_425e9a:

  ; Code: movq $0x57bf39, %rdi	 RIP: 425e9a	 Bytes: 10
  %loadMem_425e9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425e9a = call %struct.Memory* @routine_movq__0x57bf39___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425e9a)
  store %struct.Memory* %call_425e9a, %struct.Memory** %MEMORY

  ; Code: movl $0x93, %esi	 RIP: 425ea4	 Bytes: 5
  %loadMem_425ea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425ea4 = call %struct.Memory* @routine_movl__0x93___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425ea4)
  store %struct.Memory* %call_425ea4, %struct.Memory** %MEMORY

  ; Code: movq $0x57bfef, %rdx	 RIP: 425ea9	 Bytes: 10
  %loadMem_425ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425ea9 = call %struct.Memory* @routine_movq__0x57bfef___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425ea9)
  store %struct.Memory* %call_425ea9, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 425eb3	 Bytes: 5
  %loadMem_425eb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425eb3 = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425eb3)
  store %struct.Memory* %call_425eb3, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 425eb8	 Bytes: 2
  %loadMem_425eb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425eb8 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425eb8)
  store %struct.Memory* %call_425eb8, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 425eba	 Bytes: 3
  %loadMem_425eba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425eba = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425eba)
  store %struct.Memory* %call_425eba, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 425ebd	 Bytes: 5
  %loadMem1_425ebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_425ebd = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_425ebd, i64 180691, i64 5, i64 5)
  store %struct.Memory* %call1_425ebd, %struct.Memory** %MEMORY

  %loadMem2_425ebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425ebd = load i64, i64* %3
  %call2_425ebd = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_425ebd, %struct.Memory* %loadMem2_425ebd)
  store %struct.Memory* %call2_425ebd, %struct.Memory** %MEMORY

  ; Code: .L_425ec2:	 RIP: 425ec2	 Bytes: 0
  br label %block_.L_425ec2
block_.L_425ec2:

  ; Code: jmpq .L_426131	 RIP: 425ec2	 Bytes: 5
  %loadMem_425ec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425ec2 = call %struct.Memory* @routine_jmpq_.L_426131(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425ec2, i64 623, i64 5)
  store %struct.Memory* %call_425ec2, %struct.Memory** %MEMORY

  br label %block_.L_426131

  ; Code: .L_425ec7:	 RIP: 425ec7	 Bytes: 0
block_.L_425ec7:

  ; Code: movl 0x7ae42c, %eax	 RIP: 425ec7	 Bytes: 7
  %loadMem_425ec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425ec7 = call %struct.Memory* @routine_movl_0x7ae42c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425ec7)
  store %struct.Memory* %call_425ec7, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8af2c, %eax	 RIP: 425ece	 Bytes: 7
  %loadMem_425ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425ece = call %struct.Memory* @routine_cmpl_0xb8af2c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425ece)
  store %struct.Memory* %call_425ece, %struct.Memory** %MEMORY

  ; Code: je .L_425ef8	 RIP: 425ed5	 Bytes: 6
  %loadMem_425ed5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425ed5 = call %struct.Memory* @routine_je_.L_425ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425ed5, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_425ed5, %struct.Memory** %MEMORY

  %loadBr_425ed5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425ed5 = icmp eq i8 %loadBr_425ed5, 1
  br i1 %cmpBr_425ed5, label %block_.L_425ef8, label %block_425edb

block_425edb:
  ; Code: movb $0x1, %al	 RIP: 425edb	 Bytes: 2
  %loadMem_425edb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425edb = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425edb)
  store %struct.Memory* %call_425edb, %struct.Memory** %MEMORY

  ; Code: movl 0xb8af2c, %ecx	 RIP: 425edd	 Bytes: 7
  %loadMem_425edd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425edd = call %struct.Memory* @routine_movl_0xb8af2c___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425edd)
  store %struct.Memory* %call_425edd, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x7ae42c	 RIP: 425ee4	 Bytes: 7
  %loadMem_425ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425ee4 = call %struct.Memory* @routine_movl__ecx__0x7ae42c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425ee4)
  store %struct.Memory* %call_425ee4, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 425eeb	 Bytes: 2
  %loadMem_425eeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425eeb = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425eeb)
  store %struct.Memory* %call_425eeb, %struct.Memory** %MEMORY

  ; Code: jne .L_425f0a	 RIP: 425eed	 Bytes: 6
  %loadMem_425eed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425eed = call %struct.Memory* @routine_jne_.L_425f0a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425eed, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_425eed, %struct.Memory** %MEMORY

  %loadBr_425eed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425eed = icmp eq i8 %loadBr_425eed, 1
  br i1 %cmpBr_425eed, label %block_.L_425f0a, label %block_425ef3

block_425ef3:
  ; Code: jmpq .L_425f25	 RIP: 425ef3	 Bytes: 5
  %loadMem_425ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425ef3 = call %struct.Memory* @routine_jmpq_.L_425f25(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425ef3, i64 50, i64 5)
  store %struct.Memory* %call_425ef3, %struct.Memory** %MEMORY

  br label %block_.L_425f25

  ; Code: .L_425ef8:	 RIP: 425ef8	 Bytes: 0
block_.L_425ef8:

  ; Code: xorl %eax, %eax	 RIP: 425ef8	 Bytes: 2
  %loadMem_425ef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425ef8 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425ef8)
  store %struct.Memory* %call_425ef8, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 425efa	 Bytes: 2
  %loadMem_425efa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425efa = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425efa)
  store %struct.Memory* %call_425efa, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %cl	 RIP: 425efc	 Bytes: 3
  %loadMem_425efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425efc = call %struct.Memory* @routine_testb__0x1___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425efc)
  store %struct.Memory* %call_425efc, %struct.Memory** %MEMORY

  ; Code: jne .L_425f0a	 RIP: 425eff	 Bytes: 6
  %loadMem_425eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425eff = call %struct.Memory* @routine_jne_.L_425f0a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425eff, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_425eff, %struct.Memory** %MEMORY

  %loadBr_425eff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425eff = icmp eq i8 %loadBr_425eff, 1
  br i1 %cmpBr_425eff, label %block_.L_425f0a, label %block_425f05

block_425f05:
  ; Code: jmpq .L_425f25	 RIP: 425f05	 Bytes: 5
  %loadMem_425f05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425f05 = call %struct.Memory* @routine_jmpq_.L_425f25(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425f05, i64 32, i64 5)
  store %struct.Memory* %call_425f05, %struct.Memory** %MEMORY

  br label %block_.L_425f25

  ; Code: .L_425f0a:	 RIP: 425f0a	 Bytes: 0
block_.L_425f0a:

  ; Code: xorl %esi, %esi	 RIP: 425f0a	 Bytes: 2
  %loadMem_425f0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425f0a = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425f0a)
  store %struct.Memory* %call_425f0a, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edi	 RIP: 425f0c	 Bytes: 3
  %loadMem_425f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425f0c = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425f0c)
  store %struct.Memory* %call_425f0c, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edx	 RIP: 425f0f	 Bytes: 3
  %loadMem_425f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425f0f = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425f0f)
  store %struct.Memory* %call_425f0f, %struct.Memory** %MEMORY

  ; Code: callq .make_dragons	 RIP: 425f12	 Bytes: 5
  %loadMem1_425f12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_425f12 = call %struct.Memory* @routine_callq_.make_dragons(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_425f12, i64 -41746, i64 5, i64 5)
  store %struct.Memory* %call1_425f12, %struct.Memory** %MEMORY

  %loadMem2_425f12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425f12 = load i64, i64* %3
  %call2_425f12 = call %struct.Memory* @sub_41bc00.make_dragons(%struct.State* %0, i64  %loadPC_425f12, %struct.Memory* %loadMem2_425f12)
  store %struct.Memory* %call2_425f12, %struct.Memory** %MEMORY

  ; Code: movl 0xb8af2c, %edx	 RIP: 425f17	 Bytes: 7
  %loadMem_425f17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425f17 = call %struct.Memory* @routine_movl_0xb8af2c___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425f17)
  store %struct.Memory* %call_425f17, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x7ae428	 RIP: 425f1e	 Bytes: 7
  %loadMem_425f1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425f1e = call %struct.Memory* @routine_movl__edx__0x7ae428(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425f1e)
  store %struct.Memory* %call_425f1e, %struct.Memory** %MEMORY

  ; Code: .L_425f25:	 RIP: 425f25	 Bytes: 0
  br label %block_.L_425f25
block_.L_425f25:

  ; Code: cmpl $0x4, -0x8(%rbp)	 RIP: 425f25	 Bytes: 4
  %loadMem_425f25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425f25 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425f25)
  store %struct.Memory* %call_425f25, %struct.Memory** %MEMORY

  ; Code: jne .L_425f79	 RIP: 425f29	 Bytes: 6
  %loadMem_425f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425f29 = call %struct.Memory* @routine_jne_.L_425f79(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425f29, i8* %BRANCH_TAKEN, i64 80, i64 6, i64 6)
  store %struct.Memory* %call_425f29, %struct.Memory** %MEMORY

  %loadBr_425f29 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425f29 = icmp eq i8 %loadBr_425f29, 1
  br i1 %cmpBr_425f29, label %block_.L_425f79, label %block_425f2f

block_425f2f:
  ; Code: movl -0xc(%rbp), %eax	 RIP: 425f2f	 Bytes: 3
  %loadMem_425f2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425f2f = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425f2f)
  store %struct.Memory* %call_425f2f, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xab0f28	 RIP: 425f32	 Bytes: 7
  %loadMem_425f32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425f32 = call %struct.Memory* @routine_movl__eax__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425f32)
  store %struct.Memory* %call_425f32, %struct.Memory** %MEMORY

  ; Code: callq .test_gray_border	 RIP: 425f39	 Bytes: 5
  %loadMem1_425f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_425f39 = call %struct.Memory* @routine_callq_.test_gray_border(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_425f39, i64 -119305, i64 5, i64 5)
  store %struct.Memory* %call1_425f39, %struct.Memory** %MEMORY

  %loadMem2_425f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425f39 = load i64, i64* %3
  %call2_425f39 = call %struct.Memory* @sub_408d30.test_gray_border(%struct.State* %0, i64  %loadPC_425f39, %struct.Memory* %loadMem2_425f39)
  store %struct.Memory* %call2_425f39, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 425f3e	 Bytes: 3
  %loadMem_425f3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425f3e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425f3e)
  store %struct.Memory* %call_425f3e, %struct.Memory** %MEMORY

  ; Code: jge .L_425f4c	 RIP: 425f41	 Bytes: 6
  %loadMem_425f41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425f41 = call %struct.Memory* @routine_jge_.L_425f4c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425f41, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_425f41, %struct.Memory** %MEMORY

  %loadBr_425f41 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425f41 = icmp eq i8 %loadBr_425f41, 1
  br i1 %cmpBr_425f41, label %block_.L_425f4c, label %block_425f47

block_425f47:
  ; Code: jmpq .L_425f74	 RIP: 425f47	 Bytes: 5
  %loadMem_425f47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425f47 = call %struct.Memory* @routine_jmpq_.L_425f74(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425f47, i64 45, i64 5)
  store %struct.Memory* %call_425f47, %struct.Memory** %MEMORY

  br label %block_.L_425f74

  ; Code: .L_425f4c:	 RIP: 425f4c	 Bytes: 0
block_.L_425f4c:

  ; Code: movq $0x57bf39, %rdi	 RIP: 425f4c	 Bytes: 10
  %loadMem_425f4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425f4c = call %struct.Memory* @routine_movq__0x57bf39___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425f4c)
  store %struct.Memory* %call_425f4c, %struct.Memory** %MEMORY

  ; Code: movl $0x9e, %esi	 RIP: 425f56	 Bytes: 5
  %loadMem_425f56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425f56 = call %struct.Memory* @routine_movl__0x9e___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425f56)
  store %struct.Memory* %call_425f56, %struct.Memory** %MEMORY

  ; Code: movq $0x57bfef, %rdx	 RIP: 425f5b	 Bytes: 10
  %loadMem_425f5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425f5b = call %struct.Memory* @routine_movq__0x57bfef___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425f5b)
  store %struct.Memory* %call_425f5b, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 425f65	 Bytes: 5
  %loadMem_425f65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425f65 = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425f65)
  store %struct.Memory* %call_425f65, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 425f6a	 Bytes: 2
  %loadMem_425f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425f6a = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425f6a)
  store %struct.Memory* %call_425f6a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 425f6c	 Bytes: 3
  %loadMem_425f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425f6c = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425f6c)
  store %struct.Memory* %call_425f6c, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 425f6f	 Bytes: 5
  %loadMem1_425f6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_425f6f = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_425f6f, i64 180513, i64 5, i64 5)
  store %struct.Memory* %call1_425f6f, %struct.Memory** %MEMORY

  %loadMem2_425f6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425f6f = load i64, i64* %3
  %call2_425f6f = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_425f6f, %struct.Memory* %loadMem2_425f6f)
  store %struct.Memory* %call2_425f6f, %struct.Memory** %MEMORY

  ; Code: .L_425f74:	 RIP: 425f74	 Bytes: 0
  br label %block_.L_425f74
block_.L_425f74:

  ; Code: jmpq .L_426131	 RIP: 425f74	 Bytes: 5
  %loadMem_425f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425f74 = call %struct.Memory* @routine_jmpq_.L_426131(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425f74, i64 445, i64 5)
  store %struct.Memory* %call_425f74, %struct.Memory** %MEMORY

  br label %block_.L_426131

  ; Code: .L_425f79:	 RIP: 425f79	 Bytes: 0
block_.L_425f79:

  ; Code: jmpq .L_425ff0	 RIP: 425f79	 Bytes: 5
  %loadMem_425f79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425f79 = call %struct.Memory* @routine_jmpq_.L_425ff0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425f79, i64 119, i64 5)
  store %struct.Memory* %call_425f79, %struct.Memory** %MEMORY

  br label %block_.L_425ff0

  ; Code: .L_425f7e:	 RIP: 425f7e	 Bytes: 0
block_.L_425f7e:

  ; Code: cmpl $0x2, -0x8(%rbp)	 RIP: 425f7e	 Bytes: 4
  %loadMem_425f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425f7e = call %struct.Memory* @routine_cmpl__0x2__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425f7e)
  store %struct.Memory* %call_425f7e, %struct.Memory** %MEMORY

  ; Code: je .L_425f9c	 RIP: 425f82	 Bytes: 6
  %loadMem_425f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425f82 = call %struct.Memory* @routine_je_.L_425f9c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425f82, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_425f82, %struct.Memory** %MEMORY

  %loadBr_425f82 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425f82 = icmp eq i8 %loadBr_425f82, 1
  br i1 %cmpBr_425f82, label %block_.L_425f9c, label %block_425f88

block_425f88:
  ; Code: cmpl $0x4, -0x8(%rbp)	 RIP: 425f88	 Bytes: 4
  %loadMem_425f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425f88 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425f88)
  store %struct.Memory* %call_425f88, %struct.Memory** %MEMORY

  ; Code: je .L_425f9c	 RIP: 425f8c	 Bytes: 6
  %loadMem_425f8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425f8c = call %struct.Memory* @routine_je_.L_425f9c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425f8c, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_425f8c, %struct.Memory** %MEMORY

  %loadBr_425f8c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425f8c = icmp eq i8 %loadBr_425f8c, 1
  br i1 %cmpBr_425f8c, label %block_.L_425f9c, label %block_425f92

block_425f92:
  ; Code: cmpl $0x63, -0x8(%rbp)	 RIP: 425f92	 Bytes: 4
  %loadMem_425f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425f92 = call %struct.Memory* @routine_cmpl__0x63__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425f92)
  store %struct.Memory* %call_425f92, %struct.Memory** %MEMORY

  ; Code: jne .L_425feb	 RIP: 425f96	 Bytes: 6
  %loadMem_425f96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425f96 = call %struct.Memory* @routine_jne_.L_425feb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425f96, i8* %BRANCH_TAKEN, i64 85, i64 6, i64 6)
  store %struct.Memory* %call_425f96, %struct.Memory** %MEMORY

  %loadBr_425f96 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425f96 = icmp eq i8 %loadBr_425f96, 1
  br i1 %cmpBr_425f96, label %block_.L_425feb, label %block_.L_425f9c

  ; Code: .L_425f9c:	 RIP: 425f9c	 Bytes: 0
block_.L_425f9c:

  ; Code: callq .initialize_dragon_data	 RIP: 425f9c	 Bytes: 5
  %loadMem1_425f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_425f9c = call %struct.Memory* @routine_callq_.initialize_dragon_data(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_425f9c, i64 -32492, i64 5, i64 5)
  store %struct.Memory* %call1_425f9c, %struct.Memory** %MEMORY

  %loadMem2_425f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425f9c = load i64, i64* %3
  %call2_425f9c = call %struct.Memory* @sub_41e0b0.initialize_dragon_data(%struct.State* %0, i64  %loadPC_425f9c, %struct.Memory* %loadMem2_425f9c)
  store %struct.Memory* %call2_425f9c, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 425fa1	 Bytes: 3
  %loadMem_425fa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425fa1 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425fa1)
  store %struct.Memory* %call_425fa1, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xab0f28	 RIP: 425fa4	 Bytes: 7
  %loadMem_425fa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425fa4 = call %struct.Memory* @routine_movl__eax__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425fa4)
  store %struct.Memory* %call_425fa4, %struct.Memory** %MEMORY

  ; Code: callq .test_gray_border	 RIP: 425fab	 Bytes: 5
  %loadMem1_425fab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_425fab = call %struct.Memory* @routine_callq_.test_gray_border(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_425fab, i64 -119419, i64 5, i64 5)
  store %struct.Memory* %call1_425fab, %struct.Memory** %MEMORY

  %loadMem2_425fab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425fab = load i64, i64* %3
  %call2_425fab = call %struct.Memory* @sub_408d30.test_gray_border(%struct.State* %0, i64  %loadPC_425fab, %struct.Memory* %loadMem2_425fab)
  store %struct.Memory* %call2_425fab, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 425fb0	 Bytes: 3
  %loadMem_425fb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425fb0 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425fb0)
  store %struct.Memory* %call_425fb0, %struct.Memory** %MEMORY

  ; Code: jge .L_425fbe	 RIP: 425fb3	 Bytes: 6
  %loadMem_425fb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425fb3 = call %struct.Memory* @routine_jge_.L_425fbe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425fb3, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_425fb3, %struct.Memory** %MEMORY

  %loadBr_425fb3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_425fb3 = icmp eq i8 %loadBr_425fb3, 1
  br i1 %cmpBr_425fb3, label %block_.L_425fbe, label %block_425fb9

block_425fb9:
  ; Code: jmpq .L_425fe6	 RIP: 425fb9	 Bytes: 5
  %loadMem_425fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425fb9 = call %struct.Memory* @routine_jmpq_.L_425fe6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425fb9, i64 45, i64 5)
  store %struct.Memory* %call_425fb9, %struct.Memory** %MEMORY

  br label %block_.L_425fe6

  ; Code: .L_425fbe:	 RIP: 425fbe	 Bytes: 0
block_.L_425fbe:

  ; Code: movq $0x57bf39, %rdi	 RIP: 425fbe	 Bytes: 10
  %loadMem_425fbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425fbe = call %struct.Memory* @routine_movq__0x57bf39___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425fbe)
  store %struct.Memory* %call_425fbe, %struct.Memory** %MEMORY

  ; Code: movl $0xa7, %esi	 RIP: 425fc8	 Bytes: 5
  %loadMem_425fc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425fc8 = call %struct.Memory* @routine_movl__0xa7___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425fc8)
  store %struct.Memory* %call_425fc8, %struct.Memory** %MEMORY

  ; Code: movq $0x57bfef, %rdx	 RIP: 425fcd	 Bytes: 10
  %loadMem_425fcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425fcd = call %struct.Memory* @routine_movq__0x57bfef___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425fcd)
  store %struct.Memory* %call_425fcd, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 425fd7	 Bytes: 5
  %loadMem_425fd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425fd7 = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425fd7)
  store %struct.Memory* %call_425fd7, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 425fdc	 Bytes: 2
  %loadMem_425fdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425fdc = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425fdc)
  store %struct.Memory* %call_425fdc, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 425fde	 Bytes: 3
  %loadMem_425fde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425fde = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425fde)
  store %struct.Memory* %call_425fde, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 425fe1	 Bytes: 5
  %loadMem1_425fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_425fe1 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_425fe1, i64 180399, i64 5, i64 5)
  store %struct.Memory* %call1_425fe1, %struct.Memory** %MEMORY

  %loadMem2_425fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_425fe1 = load i64, i64* %3
  %call2_425fe1 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_425fe1, %struct.Memory* %loadMem2_425fe1)
  store %struct.Memory* %call2_425fe1, %struct.Memory** %MEMORY

  ; Code: .L_425fe6:	 RIP: 425fe6	 Bytes: 0
  br label %block_.L_425fe6
block_.L_425fe6:

  ; Code: jmpq .L_426131	 RIP: 425fe6	 Bytes: 5
  %loadMem_425fe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425fe6 = call %struct.Memory* @routine_jmpq_.L_426131(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425fe6, i64 331, i64 5)
  store %struct.Memory* %call_425fe6, %struct.Memory** %MEMORY

  br label %block_.L_426131

  ; Code: .L_425feb:	 RIP: 425feb	 Bytes: 0
block_.L_425feb:

  ; Code: jmpq .L_425ff0	 RIP: 425feb	 Bytes: 5
  %loadMem_425feb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425feb = call %struct.Memory* @routine_jmpq_.L_425ff0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425feb, i64 5, i64 5)
  store %struct.Memory* %call_425feb, %struct.Memory** %MEMORY

  br label %block_.L_425ff0

  ; Code: .L_425ff0:	 RIP: 425ff0	 Bytes: 0
block_.L_425ff0:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 425ff0	 Bytes: 3
  %loadMem_425ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425ff0 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425ff0)
  store %struct.Memory* %call_425ff0, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xab0f28	 RIP: 425ff3	 Bytes: 7
  %loadMem_425ff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425ff3 = call %struct.Memory* @routine_movl__eax__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425ff3)
  store %struct.Memory* %call_425ff3, %struct.Memory** %MEMORY

  ; Code: movl 0x7ae430, %eax	 RIP: 425ffa	 Bytes: 7
  %loadMem_425ffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_425ffa = call %struct.Memory* @routine_movl_0x7ae430___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_425ffa)
  store %struct.Memory* %call_425ffa, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8af2c, %eax	 RIP: 426001	 Bytes: 7
  %loadMem_426001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426001 = call %struct.Memory* @routine_cmpl_0xb8af2c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426001)
  store %struct.Memory* %call_426001, %struct.Memory** %MEMORY

  ; Code: je .L_42602b	 RIP: 426008	 Bytes: 6
  %loadMem_426008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426008 = call %struct.Memory* @routine_je_.L_42602b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426008, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_426008, %struct.Memory** %MEMORY

  %loadBr_426008 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426008 = icmp eq i8 %loadBr_426008, 1
  br i1 %cmpBr_426008, label %block_.L_42602b, label %block_42600e

block_42600e:
  ; Code: movb $0x1, %al	 RIP: 42600e	 Bytes: 2
  %loadMem_42600e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42600e = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42600e)
  store %struct.Memory* %call_42600e, %struct.Memory** %MEMORY

  ; Code: movl 0xb8af2c, %ecx	 RIP: 426010	 Bytes: 7
  %loadMem_426010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426010 = call %struct.Memory* @routine_movl_0xb8af2c___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426010)
  store %struct.Memory* %call_426010, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x7ae430	 RIP: 426017	 Bytes: 7
  %loadMem_426017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426017 = call %struct.Memory* @routine_movl__ecx__0x7ae430(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426017)
  store %struct.Memory* %call_426017, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 42601e	 Bytes: 2
  %loadMem_42601e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42601e = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42601e)
  store %struct.Memory* %call_42601e, %struct.Memory** %MEMORY

  ; Code: jne .L_42603d	 RIP: 426020	 Bytes: 6
  %loadMem_426020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426020 = call %struct.Memory* @routine_jne_.L_42603d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426020, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_426020, %struct.Memory** %MEMORY

  %loadBr_426020 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426020 = icmp eq i8 %loadBr_426020, 1
  br i1 %cmpBr_426020, label %block_.L_42603d, label %block_426026

block_426026:
  ; Code: jmpq .L_426042	 RIP: 426026	 Bytes: 5
  %loadMem_426026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426026 = call %struct.Memory* @routine_jmpq_.L_426042(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426026, i64 28, i64 5)
  store %struct.Memory* %call_426026, %struct.Memory** %MEMORY

  br label %block_.L_426042

  ; Code: .L_42602b:	 RIP: 42602b	 Bytes: 0
block_.L_42602b:

  ; Code: xorl %eax, %eax	 RIP: 42602b	 Bytes: 2
  %loadMem_42602b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42602b = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42602b)
  store %struct.Memory* %call_42602b, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 42602d	 Bytes: 2
  %loadMem_42602d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42602d = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42602d)
  store %struct.Memory* %call_42602d, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %cl	 RIP: 42602f	 Bytes: 3
  %loadMem_42602f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42602f = call %struct.Memory* @routine_testb__0x1___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42602f)
  store %struct.Memory* %call_42602f, %struct.Memory** %MEMORY

  ; Code: jne .L_42603d	 RIP: 426032	 Bytes: 6
  %loadMem_426032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426032 = call %struct.Memory* @routine_jne_.L_42603d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426032, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_426032, %struct.Memory** %MEMORY

  %loadBr_426032 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426032 = icmp eq i8 %loadBr_426032, 1
  br i1 %cmpBr_426032, label %block_.L_42603d, label %block_426038

block_426038:
  ; Code: jmpq .L_426042	 RIP: 426038	 Bytes: 5
  %loadMem_426038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426038 = call %struct.Memory* @routine_jmpq_.L_426042(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426038, i64 10, i64 5)
  store %struct.Memory* %call_426038, %struct.Memory** %MEMORY

  br label %block_.L_426042

  ; Code: .L_42603d:	 RIP: 42603d	 Bytes: 0
block_.L_42603d:

  ; Code: callq .compute_dragon_influence	 RIP: 42603d	 Bytes: 5
  %loadMem1_42603d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42603d = call %struct.Memory* @routine_callq_.compute_dragon_influence(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42603d, i64 -14157, i64 5, i64 5)
  store %struct.Memory* %call1_42603d, %struct.Memory** %MEMORY

  %loadMem2_42603d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42603d = load i64, i64* %3
  %call2_42603d = call %struct.Memory* @sub_4228f0.compute_dragon_influence(%struct.State* %0, i64  %loadPC_42603d, %struct.Memory* %loadMem2_42603d)
  store %struct.Memory* %call2_42603d, %struct.Memory** %MEMORY

  ; Code: .L_426042:	 RIP: 426042	 Bytes: 0
  br label %block_.L_426042
block_.L_426042:

  ; Code: cmpl $0x6, -0x8(%rbp)	 RIP: 426042	 Bytes: 4
  %loadMem_426042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426042 = call %struct.Memory* @routine_cmpl__0x6__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426042)
  store %struct.Memory* %call_426042, %struct.Memory** %MEMORY

  ; Code: jne .L_42608c	 RIP: 426046	 Bytes: 6
  %loadMem_426046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426046 = call %struct.Memory* @routine_jne_.L_42608c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426046, i8* %BRANCH_TAKEN, i64 70, i64 6, i64 6)
  store %struct.Memory* %call_426046, %struct.Memory** %MEMORY

  %loadBr_426046 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426046 = icmp eq i8 %loadBr_426046, 1
  br i1 %cmpBr_426046, label %block_.L_42608c, label %block_42604c

block_42604c:
  ; Code: callq .test_gray_border	 RIP: 42604c	 Bytes: 5
  %loadMem1_42604c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42604c = call %struct.Memory* @routine_callq_.test_gray_border(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42604c, i64 -119580, i64 5, i64 5)
  store %struct.Memory* %call1_42604c, %struct.Memory** %MEMORY

  %loadMem2_42604c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42604c = load i64, i64* %3
  %call2_42604c = call %struct.Memory* @sub_408d30.test_gray_border(%struct.State* %0, i64  %loadPC_42604c, %struct.Memory* %loadMem2_42604c)
  store %struct.Memory* %call2_42604c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 426051	 Bytes: 3
  %loadMem_426051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426051 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426051)
  store %struct.Memory* %call_426051, %struct.Memory** %MEMORY

  ; Code: jge .L_42605f	 RIP: 426054	 Bytes: 6
  %loadMem_426054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426054 = call %struct.Memory* @routine_jge_.L_42605f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426054, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_426054, %struct.Memory** %MEMORY

  %loadBr_426054 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426054 = icmp eq i8 %loadBr_426054, 1
  br i1 %cmpBr_426054, label %block_.L_42605f, label %block_42605a

block_42605a:
  ; Code: jmpq .L_426087	 RIP: 42605a	 Bytes: 5
  %loadMem_42605a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42605a = call %struct.Memory* @routine_jmpq_.L_426087(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42605a, i64 45, i64 5)
  store %struct.Memory* %call_42605a, %struct.Memory** %MEMORY

  br label %block_.L_426087

  ; Code: .L_42605f:	 RIP: 42605f	 Bytes: 0
block_.L_42605f:

  ; Code: movq $0x57bf39, %rdi	 RIP: 42605f	 Bytes: 10
  %loadMem_42605f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42605f = call %struct.Memory* @routine_movq__0x57bf39___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42605f)
  store %struct.Memory* %call_42605f, %struct.Memory** %MEMORY

  ; Code: movl $0xb1, %esi	 RIP: 426069	 Bytes: 5
  %loadMem_426069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426069 = call %struct.Memory* @routine_movl__0xb1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426069)
  store %struct.Memory* %call_426069, %struct.Memory** %MEMORY

  ; Code: movq $0x57bfef, %rdx	 RIP: 42606e	 Bytes: 10
  %loadMem_42606e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42606e = call %struct.Memory* @routine_movq__0x57bfef___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42606e)
  store %struct.Memory* %call_42606e, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 426078	 Bytes: 5
  %loadMem_426078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426078 = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426078)
  store %struct.Memory* %call_426078, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 42607d	 Bytes: 2
  %loadMem_42607d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42607d = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42607d)
  store %struct.Memory* %call_42607d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 42607f	 Bytes: 3
  %loadMem_42607f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42607f = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42607f)
  store %struct.Memory* %call_42607f, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 426082	 Bytes: 5
  %loadMem1_426082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426082 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426082, i64 180238, i64 5, i64 5)
  store %struct.Memory* %call1_426082, %struct.Memory** %MEMORY

  %loadMem2_426082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426082 = load i64, i64* %3
  %call2_426082 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_426082, %struct.Memory* %loadMem2_426082)
  store %struct.Memory* %call2_426082, %struct.Memory** %MEMORY

  ; Code: .L_426087:	 RIP: 426087	 Bytes: 0
  br label %block_.L_426087
block_.L_426087:

  ; Code: jmpq .L_426131	 RIP: 426087	 Bytes: 5
  %loadMem_426087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426087 = call %struct.Memory* @routine_jmpq_.L_426131(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426087, i64 170, i64 5)
  store %struct.Memory* %call_426087, %struct.Memory** %MEMORY

  br label %block_.L_426131

  ; Code: .L_42608c:	 RIP: 42608c	 Bytes: 0
block_.L_42608c:

  ; Code: movl 0x7ae434, %eax	 RIP: 42608c	 Bytes: 7
  %loadMem_42608c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42608c = call %struct.Memory* @routine_movl_0x7ae434___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42608c)
  store %struct.Memory* %call_42608c, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8af2c, %eax	 RIP: 426093	 Bytes: 7
  %loadMem_426093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426093 = call %struct.Memory* @routine_cmpl_0xb8af2c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426093)
  store %struct.Memory* %call_426093, %struct.Memory** %MEMORY

  ; Code: je .L_4260bd	 RIP: 42609a	 Bytes: 6
  %loadMem_42609a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42609a = call %struct.Memory* @routine_je_.L_4260bd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42609a, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_42609a, %struct.Memory** %MEMORY

  %loadBr_42609a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42609a = icmp eq i8 %loadBr_42609a, 1
  br i1 %cmpBr_42609a, label %block_.L_4260bd, label %block_4260a0

block_4260a0:
  ; Code: movb $0x1, %al	 RIP: 4260a0	 Bytes: 2
  %loadMem_4260a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4260a0 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4260a0)
  store %struct.Memory* %call_4260a0, %struct.Memory** %MEMORY

  ; Code: movl 0xb8af2c, %ecx	 RIP: 4260a2	 Bytes: 7
  %loadMem_4260a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4260a2 = call %struct.Memory* @routine_movl_0xb8af2c___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4260a2)
  store %struct.Memory* %call_4260a2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x7ae434	 RIP: 4260a9	 Bytes: 7
  %loadMem_4260a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4260a9 = call %struct.Memory* @routine_movl__ecx__0x7ae434(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4260a9)
  store %struct.Memory* %call_4260a9, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 4260b0	 Bytes: 2
  %loadMem_4260b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4260b0 = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4260b0)
  store %struct.Memory* %call_4260b0, %struct.Memory** %MEMORY

  ; Code: jne .L_4260cf	 RIP: 4260b2	 Bytes: 6
  %loadMem_4260b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4260b2 = call %struct.Memory* @routine_jne_.L_4260cf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4260b2, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_4260b2, %struct.Memory** %MEMORY

  %loadBr_4260b2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4260b2 = icmp eq i8 %loadBr_4260b2, 1
  br i1 %cmpBr_4260b2, label %block_.L_4260cf, label %block_4260b8

block_4260b8:
  ; Code: jmpq .L_4260d4	 RIP: 4260b8	 Bytes: 5
  %loadMem_4260b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4260b8 = call %struct.Memory* @routine_jmpq_.L_4260d4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4260b8, i64 28, i64 5)
  store %struct.Memory* %call_4260b8, %struct.Memory** %MEMORY

  br label %block_.L_4260d4

  ; Code: .L_4260bd:	 RIP: 4260bd	 Bytes: 0
block_.L_4260bd:

  ; Code: xorl %eax, %eax	 RIP: 4260bd	 Bytes: 2
  %loadMem_4260bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4260bd = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4260bd)
  store %struct.Memory* %call_4260bd, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 4260bf	 Bytes: 2
  %loadMem_4260bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4260bf = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4260bf)
  store %struct.Memory* %call_4260bf, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %cl	 RIP: 4260c1	 Bytes: 3
  %loadMem_4260c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4260c1 = call %struct.Memory* @routine_testb__0x1___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4260c1)
  store %struct.Memory* %call_4260c1, %struct.Memory** %MEMORY

  ; Code: jne .L_4260cf	 RIP: 4260c4	 Bytes: 6
  %loadMem_4260c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4260c4 = call %struct.Memory* @routine_jne_.L_4260cf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4260c4, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4260c4, %struct.Memory** %MEMORY

  %loadBr_4260c4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4260c4 = icmp eq i8 %loadBr_4260c4, 1
  br i1 %cmpBr_4260c4, label %block_.L_4260cf, label %block_4260ca

block_4260ca:
  ; Code: jmpq .L_4260d4	 RIP: 4260ca	 Bytes: 5
  %loadMem_4260ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4260ca = call %struct.Memory* @routine_jmpq_.L_4260d4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4260ca, i64 10, i64 5)
  store %struct.Memory* %call_4260ca, %struct.Memory** %MEMORY

  br label %block_.L_4260d4

  ; Code: .L_4260cf:	 RIP: 4260cf	 Bytes: 0
block_.L_4260cf:

  ; Code: callq .compute_refined_dragon_weaknesses	 RIP: 4260cf	 Bytes: 5
  %loadMem1_4260cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4260cf = call %struct.Memory* @routine_callq_.compute_refined_dragon_weaknesses(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4260cf, i64 -29055, i64 5, i64 5)
  store %struct.Memory* %call1_4260cf, %struct.Memory** %MEMORY

  %loadMem2_4260cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4260cf = load i64, i64* %3
  %call2_4260cf = call %struct.Memory* @sub_41ef50.compute_refined_dragon_weaknesses(%struct.State* %0, i64  %loadPC_4260cf, %struct.Memory* %loadMem2_4260cf)
  store %struct.Memory* %call2_4260cf, %struct.Memory** %MEMORY

  ; Code: .L_4260d4:	 RIP: 4260d4	 Bytes: 0
  br label %block_.L_4260d4
block_.L_4260d4:

  ; Code: cmpl $0x7, -0x8(%rbp)	 RIP: 4260d4	 Bytes: 4
  %loadMem_4260d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4260d4 = call %struct.Memory* @routine_cmpl__0x7__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4260d4)
  store %struct.Memory* %call_4260d4, %struct.Memory** %MEMORY

  ; Code: jne .L_42611e	 RIP: 4260d8	 Bytes: 6
  %loadMem_4260d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4260d8 = call %struct.Memory* @routine_jne_.L_42611e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4260d8, i8* %BRANCH_TAKEN, i64 70, i64 6, i64 6)
  store %struct.Memory* %call_4260d8, %struct.Memory** %MEMORY

  %loadBr_4260d8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4260d8 = icmp eq i8 %loadBr_4260d8, 1
  br i1 %cmpBr_4260d8, label %block_.L_42611e, label %block_4260de

block_4260de:
  ; Code: callq .test_gray_border	 RIP: 4260de	 Bytes: 5
  %loadMem1_4260de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4260de = call %struct.Memory* @routine_callq_.test_gray_border(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4260de, i64 -119726, i64 5, i64 5)
  store %struct.Memory* %call1_4260de, %struct.Memory** %MEMORY

  %loadMem2_4260de = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4260de = load i64, i64* %3
  %call2_4260de = call %struct.Memory* @sub_408d30.test_gray_border(%struct.State* %0, i64  %loadPC_4260de, %struct.Memory* %loadMem2_4260de)
  store %struct.Memory* %call2_4260de, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4260e3	 Bytes: 3
  %loadMem_4260e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4260e3 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4260e3)
  store %struct.Memory* %call_4260e3, %struct.Memory** %MEMORY

  ; Code: jge .L_4260f1	 RIP: 4260e6	 Bytes: 6
  %loadMem_4260e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4260e6 = call %struct.Memory* @routine_jge_.L_4260f1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4260e6, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4260e6, %struct.Memory** %MEMORY

  %loadBr_4260e6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4260e6 = icmp eq i8 %loadBr_4260e6, 1
  br i1 %cmpBr_4260e6, label %block_.L_4260f1, label %block_4260ec

block_4260ec:
  ; Code: jmpq .L_426119	 RIP: 4260ec	 Bytes: 5
  %loadMem_4260ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4260ec = call %struct.Memory* @routine_jmpq_.L_426119(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4260ec, i64 45, i64 5)
  store %struct.Memory* %call_4260ec, %struct.Memory** %MEMORY

  br label %block_.L_426119

  ; Code: .L_4260f1:	 RIP: 4260f1	 Bytes: 0
block_.L_4260f1:

  ; Code: movq $0x57bf39, %rdi	 RIP: 4260f1	 Bytes: 10
  %loadMem_4260f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4260f1 = call %struct.Memory* @routine_movq__0x57bf39___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4260f1)
  store %struct.Memory* %call_4260f1, %struct.Memory** %MEMORY

  ; Code: movl $0xb9, %esi	 RIP: 4260fb	 Bytes: 5
  %loadMem_4260fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4260fb = call %struct.Memory* @routine_movl__0xb9___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4260fb)
  store %struct.Memory* %call_4260fb, %struct.Memory** %MEMORY

  ; Code: movq $0x57bfef, %rdx	 RIP: 426100	 Bytes: 10
  %loadMem_426100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426100 = call %struct.Memory* @routine_movq__0x57bfef___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426100)
  store %struct.Memory* %call_426100, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 42610a	 Bytes: 5
  %loadMem_42610a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42610a = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42610a)
  store %struct.Memory* %call_42610a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 42610f	 Bytes: 2
  %loadMem_42610f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42610f = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42610f)
  store %struct.Memory* %call_42610f, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 426111	 Bytes: 3
  %loadMem_426111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426111 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426111)
  store %struct.Memory* %call_426111, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 426114	 Bytes: 5
  %loadMem1_426114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_426114 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_426114, i64 180092, i64 5, i64 5)
  store %struct.Memory* %call1_426114, %struct.Memory** %MEMORY

  %loadMem2_426114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_426114 = load i64, i64* %3
  %call2_426114 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_426114, %struct.Memory* %loadMem2_426114)
  store %struct.Memory* %call2_426114, %struct.Memory** %MEMORY

  ; Code: .L_426119:	 RIP: 426119	 Bytes: 0
  br label %block_.L_426119
block_.L_426119:

  ; Code: jmpq .L_426131	 RIP: 426119	 Bytes: 5
  %loadMem_426119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426119 = call %struct.Memory* @routine_jmpq_.L_426131(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426119, i64 24, i64 5)
  store %struct.Memory* %call_426119, %struct.Memory** %MEMORY

  br label %block_.L_426131

  ; Code: .L_42611e:	 RIP: 42611e	 Bytes: 0
block_.L_42611e:

  ; Code: cmpl $0x0, 0xab0ee0	 RIP: 42611e	 Bytes: 8
  %loadMem_42611e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42611e = call %struct.Memory* @routine_cmpl__0x0__0xab0ee0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42611e)
  store %struct.Memory* %call_42611e, %struct.Memory** %MEMORY

  ; Code: je .L_426131	 RIP: 426126	 Bytes: 6
  %loadMem_426126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426126 = call %struct.Memory* @routine_je_.L_426131(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426126, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_426126, %struct.Memory** %MEMORY

  %loadBr_426126 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_426126 = icmp eq i8 %loadBr_426126, 1
  br i1 %cmpBr_426126, label %block_.L_426131, label %block_42612c

block_42612c:
  ; Code: callq .show_dragons	 RIP: 42612c	 Bytes: 5
  %loadMem1_42612c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42612c = call %struct.Memory* @routine_callq_.show_dragons(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42612c, i64 -14220, i64 5, i64 5)
  store %struct.Memory* %call1_42612c, %struct.Memory** %MEMORY

  %loadMem2_42612c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42612c = load i64, i64* %3
  %call2_42612c = call %struct.Memory* @sub_4229a0.show_dragons(%struct.State* %0, i64  %loadPC_42612c, %struct.Memory* %loadMem2_42612c)
  store %struct.Memory* %call2_42612c, %struct.Memory** %MEMORY

  ; Code: .L_426131:	 RIP: 426131	 Bytes: 0
  br label %block_.L_426131
block_.L_426131:

  ; Code: addq $0x20, %rsp	 RIP: 426131	 Bytes: 4
  %loadMem_426131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426131 = call %struct.Memory* @routine_addq__0x20___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426131)
  store %struct.Memory* %call_426131, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 426135	 Bytes: 1
  %loadMem_426135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426135 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426135)
  store %struct.Memory* %call_426135, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 426136	 Bytes: 1
  %loadMem_426136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_426136 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_426136)
  store %struct.Memory* %call_426136, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_426136
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

define %struct.Memory* @routine_subq__0x20___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 32)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0xab0f28___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0xab0f28_type* @G_0xab0f28 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_callq_.purge_persistent_reading_cache(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x1__0xab0f28(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0f28_type* @G_0xab0f28 to i64), i64 1)
  ret %struct.Memory* %8
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

define %struct.Memory* @routine_je_.L_425c99(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x2__0xab0f28(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0f28_type* @G_0xab0f28 to i64), i64 2)
  ret %struct.Memory* %8
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

define %struct.Memory* @routine_jne_.L_425caa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0xab0f28___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0xab0f28_type* @G_0xab0f28 to i64))
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


define %struct.Memory* @routine_movl__eax__0xab0f28(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0f28_type* @G_0xab0f28 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x7ae420___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x7ae420_type* @G_0x7ae420 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_cmpl_0xb8af2c___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0xb8af2c_type* @G_0xb8af2c to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_425cdb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl_0xb8af2c___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0xb8af2c_type* @G_0xb8af2c to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__ecx__0x7ae420(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x7ae420_type* @G_0x7ae420 to i64), i64 %10)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4TESTI2RnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = and i64 %3, %2
  %6 = trunc i64 %5 to i8
  %7 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = trunc i64 %5 to i32
  %9 = and i32 %8, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9) #22
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = icmp eq i8 %6, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i8 %6, 7
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_testb__0x1___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i8, i8* %AL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 2
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4TESTI2RnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_jne_.L_425ced(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_425d1d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__al___cl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %CL, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_testb__0x1___cl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i8, i8* %CL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4TESTI2RnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}






define %struct.Memory* @routine_xorl__edi___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %EDI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_callq_.start_timer(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.make_worms(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x57bf2c___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x57bf2c_type* @G__0x57bf2c to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_movsd_0xbd253__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0xbd253__rip__type* @G_0xbd253__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__edi__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.time_report(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = inttoptr i64 %2 to double*
  store double %6, double* %7
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 24
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0x1__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_425d71(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.test_gray_border(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jge_.L_425d44(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_425d6c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x57bf39___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57bf39_type* @G__0x57bf39 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x82___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 130)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x57bfef___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57bfef_type* @G__0x57bfef to i64))
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


define %struct.Memory* @routine_jmpq_.L_426131(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x3___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 3)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_callq_.stones_on_board(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_425f7e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x7ae424___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x7ae424_type* @G_0x7ae424 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_je_.L_425db5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__ecx__0x7ae424(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x7ae424_type* @G_0x7ae424 to i64), i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_jne_.L_425dc7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_425dcc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_callq_.compute_worm_influence(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x2__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_425e20(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_425df3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_425e1b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x8b___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 139)
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_cmpl__0x3__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_425ec7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x7ae428___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x7ae428_type* @G_0x7ae428 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_je_.L_425e5b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__ecx__0x7ae428(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x7ae428_type* @G_0x7ae428 to i64), i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_jne_.L_425e6d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_425e7d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_callq_.make_dragons(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_425e9a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_425ec2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x93___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 147)
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_movl_0x7ae42c___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x7ae42c_type* @G_0x7ae42c to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_je_.L_425ef8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__ecx__0x7ae42c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x7ae42c_type* @G_0x7ae42c to i64), i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_jne_.L_425f0a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_425f25(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_xorl__esi___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movl_0xb8af2c___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0xb8af2c_type* @G_0xb8af2c to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__edx__0x7ae428(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x7ae428_type* @G_0x7ae428 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x4__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_425f79(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_425f4c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_425f74(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x9e___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 158)
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_jmpq_.L_425ff0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_je_.L_425f9c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cmpl__0x63__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 99)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_425feb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.initialize_dragon_data(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_425fbe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_425fe6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0xa7___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 167)
  ret %struct.Memory* %11
}




















define %struct.Memory* @routine_movl_0x7ae430___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x7ae430_type* @G_0x7ae430 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_je_.L_42602b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__ecx__0x7ae430(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x7ae430_type* @G_0x7ae430 to i64), i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_jne_.L_42603d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_426042(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_callq_.compute_dragon_influence(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x6__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 6)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_42608c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_42605f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_426087(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0xb1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 177)
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_movl_0x7ae434___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x7ae434_type* @G_0x7ae434 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_je_.L_4260bd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__ecx__0x7ae434(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x7ae434_type* @G_0x7ae434 to i64), i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_jne_.L_4260cf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4260d4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_callq_.compute_refined_dragon_weaknesses(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x7__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 7)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_42611e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_4260f1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_426119(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0xb9___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 185)
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_cmpl__0x0__0xab0ee0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0ee0_type* @G_0xab0ee0 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_426131(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.show_dragons(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

