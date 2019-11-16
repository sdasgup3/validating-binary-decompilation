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
declare %struct.Memory* @sub_410ed0.count_common_libs(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G__0x57a16e_type = type <{ [8 x i8] }>
@G__0x57a16e= global %G__0x57a16e_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57a4be_type = type <{ [8 x i8] }>
@G__0x57a4be= global %G__0x57a4be_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57a4f4_type = type <{ [8 x i8] }>
@G__0x57a4f4= global %G__0x57a4f4_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xa7f430_type = type <{ [8 x i8] }>
@G__0xa7f430= global %G__0xa7f430_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @fastlib(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .fastlib:	 RIP: 40fc80	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 40fc80	 Bytes: 1
  %loadMem_40fc80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fc80 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fc80)
  store %struct.Memory* %call_40fc80, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 40fc81	 Bytes: 3
  %loadMem_40fc81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fc81 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fc81)
  store %struct.Memory* %call_40fc81, %struct.Memory** %MEMORY

  ; Code: subq $0x60, %rsp	 RIP: 40fc84	 Bytes: 4
  %loadMem_40fc84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fc84 = call %struct.Memory* @routine_subq__0x60___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fc84)
  store %struct.Memory* %call_40fc84, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x8(%rbp)	 RIP: 40fc88	 Bytes: 3
  %loadMem_40fc88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fc88 = call %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fc88)
  store %struct.Memory* %call_40fc88, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0xc(%rbp)	 RIP: 40fc8b	 Bytes: 3
  %loadMem_40fc8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fc8b = call %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fc8b)
  store %struct.Memory* %call_40fc8b, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x10(%rbp)	 RIP: 40fc8e	 Bytes: 3
  %loadMem_40fc8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fc8e = call %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fc8e)
  store %struct.Memory* %call_40fc8e, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, -0x14(%rbp)	 RIP: 40fc91	 Bytes: 7
  %loadMem_40fc91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fc91 = call %struct.Memory* @routine_movl__0xffffffff__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fc91)
  store %struct.Memory* %call_40fc91, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, -0x18(%rbp)	 RIP: 40fc98	 Bytes: 7
  %loadMem_40fc98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fc98 = call %struct.Memory* @routine_movl__0xffffffff__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fc98)
  store %struct.Memory* %call_40fc98, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 40fc9f	 Bytes: 7
  %loadMem_40fc9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fc9f = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fc9f)
  store %struct.Memory* %call_40fc9f, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rax	 RIP: 40fca6	 Bytes: 4
  %loadMem_40fca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fca6 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fca6)
  store %struct.Memory* %call_40fca6, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %edx	 RIP: 40fcaa	 Bytes: 8
  %loadMem_40fcaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fcaa = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fcaa)
  store %struct.Memory* %call_40fcaa, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 40fcb2	 Bytes: 3
  %loadMem_40fcb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fcb2 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fcb2)
  store %struct.Memory* %call_40fcb2, %struct.Memory** %MEMORY

  ; Code: jne .L_40fcc0	 RIP: 40fcb5	 Bytes: 6
  %loadMem_40fcb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fcb5 = call %struct.Memory* @routine_jne_.L_40fcc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fcb5, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_40fcb5, %struct.Memory** %MEMORY

  %loadBr_40fcb5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40fcb5 = icmp eq i8 %loadBr_40fcb5, 1
  br i1 %cmpBr_40fcb5, label %block_.L_40fcc0, label %block_40fcbb

block_40fcbb:
  ; Code: jmpq .L_40fd19	 RIP: 40fcbb	 Bytes: 5
  %loadMem_40fcbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fcbb = call %struct.Memory* @routine_jmpq_.L_40fd19(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fcbb, i64 94, i64 5)
  store %struct.Memory* %call_40fcbb, %struct.Memory** %MEMORY

  br label %block_.L_40fd19

  ; Code: .L_40fcc0:	 RIP: 40fcc0	 Bytes: 0
block_.L_40fcc0:

  ; Code: movq $0x57a16e, %rdi	 RIP: 40fcc0	 Bytes: 10
  %loadMem_40fcc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fcc0 = call %struct.Memory* @routine_movq__0x57a16e___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fcc0)
  store %struct.Memory* %call_40fcc0, %struct.Memory** %MEMORY

  ; Code: movl $0x59b, %esi	 RIP: 40fcca	 Bytes: 5
  %loadMem_40fcca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fcca = call %struct.Memory* @routine_movl__0x59b___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fcca)
  store %struct.Memory* %call_40fcca, %struct.Memory** %MEMORY

  ; Code: movq $0x57a4be, %rdx	 RIP: 40fccf	 Bytes: 10
  %loadMem_40fccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fccf = call %struct.Memory* @routine_movq__0x57a4be___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fccf)
  store %struct.Memory* %call_40fccf, %struct.Memory** %MEMORY

  ; Code: movl $0x14, %eax	 RIP: 40fcd9	 Bytes: 5
  %loadMem_40fcd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fcd9 = call %struct.Memory* @routine_movl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fcd9)
  store %struct.Memory* %call_40fcd9, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 40fcde	 Bytes: 3
  %loadMem_40fcde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fcde = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fcde)
  store %struct.Memory* %call_40fcde, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 40fce1	 Bytes: 3
  %loadMem_40fce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fce1 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fce1)
  store %struct.Memory* %call_40fce1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 40fce4	 Bytes: 2
  %loadMem_40fce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fce4 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fce4)
  store %struct.Memory* %call_40fce4, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x38(%rbp)	 RIP: 40fce6	 Bytes: 4
  %loadMem_40fce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fce6 = call %struct.Memory* @routine_movq__rdx__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fce6)
  store %struct.Memory* %call_40fce6, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 40fcea	 Bytes: 1
  %loadMem_40fcea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fcea = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fcea)
  store %struct.Memory* %call_40fcea, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %ecx	 RIP: 40fceb	 Bytes: 3
  %loadMem_40fceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fceb = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fceb)
  store %struct.Memory* %call_40fceb, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 40fcee	 Bytes: 2
  %loadMem_40fcee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fcee = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fcee)
  store %struct.Memory* %call_40fcee, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40fcf0	 Bytes: 3
  %loadMem_40fcf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fcf0 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fcf0)
  store %struct.Memory* %call_40fcf0, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %r8d	 RIP: 40fcf3	 Bytes: 4
  %loadMem_40fcf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fcf3 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fcf3)
  store %struct.Memory* %call_40fcf3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 40fcf7	 Bytes: 3
  %loadMem_40fcf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fcf7 = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fcf7)
  store %struct.Memory* %call_40fcf7, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %eax	 RIP: 40fcfa	 Bytes: 3
  %loadMem_40fcfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fcfa = call %struct.Memory* @routine_movl__r8d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fcfa)
  store %struct.Memory* %call_40fcfa, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 40fcfd	 Bytes: 1
  %loadMem_40fcfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fcfd = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fcfd)
  store %struct.Memory* %call_40fcfd, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 40fcfe	 Bytes: 2
  %loadMem_40fcfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fcfe = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fcfe)
  store %struct.Memory* %call_40fcfe, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 40fd00	 Bytes: 3
  %loadMem_40fd00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd00 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd00)
  store %struct.Memory* %call_40fd00, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %r9	 RIP: 40fd03	 Bytes: 4
  %loadMem_40fd03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd03 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd03)
  store %struct.Memory* %call_40fd03, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x40(%rbp)	 RIP: 40fd07	 Bytes: 3
  %loadMem_40fd07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd07 = call %struct.Memory* @routine_movl__edx__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd07)
  store %struct.Memory* %call_40fd07, %struct.Memory** %MEMORY

  ; Code: movq %r9, %rdx	 RIP: 40fd0a	 Bytes: 3
  %loadMem_40fd0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd0a = call %struct.Memory* @routine_movq__r9___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd0a)
  store %struct.Memory* %call_40fd0a, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %ecx	 RIP: 40fd0d	 Bytes: 3
  %loadMem_40fd0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd0d = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd0d)
  store %struct.Memory* %call_40fd0d, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %r8d	 RIP: 40fd10	 Bytes: 4
  %loadMem_40fd10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd10 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd10)
  store %struct.Memory* %call_40fd10, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 40fd14	 Bytes: 5
  %loadMem1_40fd14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40fd14 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40fd14, i64 271228, i64 5, i64 5)
  store %struct.Memory* %call1_40fd14, %struct.Memory** %MEMORY

  %loadMem2_40fd14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40fd14 = load i64, i64* %3
  %call2_40fd14 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_40fd14, %struct.Memory* %loadMem2_40fd14)
  store %struct.Memory* %call2_40fd14, %struct.Memory** %MEMORY

  ; Code: .L_40fd19:	 RIP: 40fd19	 Bytes: 0
  br label %block_.L_40fd19
block_.L_40fd19:

  ; Code: cmpl $0x1, -0xc(%rbp)	 RIP: 40fd19	 Bytes: 4
  %loadMem_40fd19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd19 = call %struct.Memory* @routine_cmpl__0x1__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd19)
  store %struct.Memory* %call_40fd19, %struct.Memory** %MEMORY

  ; Code: je .L_40fd2d	 RIP: 40fd1d	 Bytes: 6
  %loadMem_40fd1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd1d = call %struct.Memory* @routine_je_.L_40fd2d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd1d, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_40fd1d, %struct.Memory** %MEMORY

  %loadBr_40fd1d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40fd1d = icmp eq i8 %loadBr_40fd1d, 1
  br i1 %cmpBr_40fd1d, label %block_.L_40fd2d, label %block_40fd23

block_40fd23:
  ; Code: cmpl $0x2, -0xc(%rbp)	 RIP: 40fd23	 Bytes: 4
  %loadMem_40fd23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd23 = call %struct.Memory* @routine_cmpl__0x2__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd23)
  store %struct.Memory* %call_40fd23, %struct.Memory** %MEMORY

  ; Code: jne .L_40fd32	 RIP: 40fd27	 Bytes: 6
  %loadMem_40fd27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd27 = call %struct.Memory* @routine_jne_.L_40fd32(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd27, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_40fd27, %struct.Memory** %MEMORY

  %loadBr_40fd27 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40fd27 = icmp eq i8 %loadBr_40fd27, 1
  br i1 %cmpBr_40fd27, label %block_.L_40fd32, label %block_.L_40fd2d

  ; Code: .L_40fd2d:	 RIP: 40fd2d	 Bytes: 0
block_.L_40fd2d:

  ; Code: jmpq .L_40fd8b	 RIP: 40fd2d	 Bytes: 5
  %loadMem_40fd2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd2d = call %struct.Memory* @routine_jmpq_.L_40fd8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd2d, i64 94, i64 5)
  store %struct.Memory* %call_40fd2d, %struct.Memory** %MEMORY

  br label %block_.L_40fd8b

  ; Code: .L_40fd32:	 RIP: 40fd32	 Bytes: 0
block_.L_40fd32:

  ; Code: movq $0x57a16e, %rdi	 RIP: 40fd32	 Bytes: 10
  %loadMem_40fd32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd32 = call %struct.Memory* @routine_movq__0x57a16e___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd32)
  store %struct.Memory* %call_40fd32, %struct.Memory** %MEMORY

  ; Code: movl $0x59c, %esi	 RIP: 40fd3c	 Bytes: 5
  %loadMem_40fd3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd3c = call %struct.Memory* @routine_movl__0x59c___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd3c)
  store %struct.Memory* %call_40fd3c, %struct.Memory** %MEMORY

  ; Code: movq $0x57a4f4, %rdx	 RIP: 40fd41	 Bytes: 10
  %loadMem_40fd41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd41 = call %struct.Memory* @routine_movq__0x57a4f4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd41)
  store %struct.Memory* %call_40fd41, %struct.Memory** %MEMORY

  ; Code: movl $0x14, %eax	 RIP: 40fd4b	 Bytes: 5
  %loadMem_40fd4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd4b = call %struct.Memory* @routine_movl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd4b)
  store %struct.Memory* %call_40fd4b, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 40fd50	 Bytes: 3
  %loadMem_40fd50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd50 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd50)
  store %struct.Memory* %call_40fd50, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x44(%rbp)	 RIP: 40fd53	 Bytes: 3
  %loadMem_40fd53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd53 = call %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd53)
  store %struct.Memory* %call_40fd53, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 40fd56	 Bytes: 2
  %loadMem_40fd56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd56 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd56)
  store %struct.Memory* %call_40fd56, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x50(%rbp)	 RIP: 40fd58	 Bytes: 4
  %loadMem_40fd58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd58 = call %struct.Memory* @routine_movq__rdx__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd58)
  store %struct.Memory* %call_40fd58, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 40fd5c	 Bytes: 1
  %loadMem_40fd5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd5c = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd5c)
  store %struct.Memory* %call_40fd5c, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %ecx	 RIP: 40fd5d	 Bytes: 3
  %loadMem_40fd5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd5d = call %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd5d)
  store %struct.Memory* %call_40fd5d, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 40fd60	 Bytes: 2
  %loadMem_40fd60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd60 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd60)
  store %struct.Memory* %call_40fd60, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40fd62	 Bytes: 3
  %loadMem_40fd62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd62 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd62)
  store %struct.Memory* %call_40fd62, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %r8d	 RIP: 40fd65	 Bytes: 4
  %loadMem_40fd65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd65 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd65)
  store %struct.Memory* %call_40fd65, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x54(%rbp)	 RIP: 40fd69	 Bytes: 3
  %loadMem_40fd69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd69 = call %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd69)
  store %struct.Memory* %call_40fd69, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %eax	 RIP: 40fd6c	 Bytes: 3
  %loadMem_40fd6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd6c = call %struct.Memory* @routine_movl__r8d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd6c)
  store %struct.Memory* %call_40fd6c, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 40fd6f	 Bytes: 1
  %loadMem_40fd6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd6f = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd6f)
  store %struct.Memory* %call_40fd6f, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 40fd70	 Bytes: 2
  %loadMem_40fd70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd70 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd70)
  store %struct.Memory* %call_40fd70, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 40fd72	 Bytes: 3
  %loadMem_40fd72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd72 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd72)
  store %struct.Memory* %call_40fd72, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %r9	 RIP: 40fd75	 Bytes: 4
  %loadMem_40fd75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd75 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd75)
  store %struct.Memory* %call_40fd75, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x58(%rbp)	 RIP: 40fd79	 Bytes: 3
  %loadMem_40fd79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd79 = call %struct.Memory* @routine_movl__edx__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd79)
  store %struct.Memory* %call_40fd79, %struct.Memory** %MEMORY

  ; Code: movq %r9, %rdx	 RIP: 40fd7c	 Bytes: 3
  %loadMem_40fd7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd7c = call %struct.Memory* @routine_movq__r9___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd7c)
  store %struct.Memory* %call_40fd7c, %struct.Memory** %MEMORY

  ; Code: movl -0x54(%rbp), %ecx	 RIP: 40fd7f	 Bytes: 3
  %loadMem_40fd7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd7f = call %struct.Memory* @routine_movl_MINUS0x54__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd7f)
  store %struct.Memory* %call_40fd7f, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp), %r8d	 RIP: 40fd82	 Bytes: 4
  %loadMem_40fd82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd82 = call %struct.Memory* @routine_movl_MINUS0x58__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd82)
  store %struct.Memory* %call_40fd82, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 40fd86	 Bytes: 5
  %loadMem1_40fd86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40fd86 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40fd86, i64 271114, i64 5, i64 5)
  store %struct.Memory* %call1_40fd86, %struct.Memory** %MEMORY

  %loadMem2_40fd86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40fd86 = load i64, i64* %3
  %call2_40fd86 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_40fd86, %struct.Memory* %loadMem2_40fd86)
  store %struct.Memory* %call2_40fd86, %struct.Memory** %MEMORY

  ; Code: .L_40fd8b:	 RIP: 40fd8b	 Bytes: 0
  br label %block_.L_40fd8b
block_.L_40fd8b:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 40fd8b	 Bytes: 3
  %loadMem_40fd8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd8b = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd8b)
  store %struct.Memory* %call_40fd8b, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 40fd8e	 Bytes: 3
  %loadMem_40fd8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd8e = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd8e)
  store %struct.Memory* %call_40fd8e, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40fd91	 Bytes: 3
  %loadMem_40fd91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd91 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd91)
  store %struct.Memory* %call_40fd91, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40fd94	 Bytes: 8
  %loadMem_40fd94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd94 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd94)
  store %struct.Memory* %call_40fd94, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 40fd9c	 Bytes: 3
  %loadMem_40fd9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd9c = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd9c)
  store %struct.Memory* %call_40fd9c, %struct.Memory** %MEMORY

  ; Code: jne .L_40ff2f	 RIP: 40fd9f	 Bytes: 6
  %loadMem_40fd9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fd9f = call %struct.Memory* @routine_jne_.L_40ff2f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fd9f, i8* %BRANCH_TAKEN, i64 400, i64 6, i64 6)
  store %struct.Memory* %call_40fd9f, %struct.Memory** %MEMORY

  %loadBr_40fd9f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40fd9f = icmp eq i8 %loadBr_40fd9f, 1
  br i1 %cmpBr_40fd9f, label %block_.L_40ff2f, label %block_40fda5

block_40fda5:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 40fda5	 Bytes: 3
  %loadMem_40fda5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fda5 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fda5)
  store %struct.Memory* %call_40fda5, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 40fda8	 Bytes: 3
  %loadMem_40fda8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fda8 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fda8)
  store %struct.Memory* %call_40fda8, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40fdab	 Bytes: 3
  %loadMem_40fdab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fdab = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fdab)
  store %struct.Memory* %call_40fdab, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 40fdae	 Bytes: 7
  %loadMem_40fdae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fdae = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fdae)
  store %struct.Memory* %call_40fdae, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 40fdb5	 Bytes: 3
  %loadMem_40fdb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fdb5 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fdb5)
  store %struct.Memory* %call_40fdb5, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %eax	 RIP: 40fdb8	 Bytes: 3
  %loadMem_40fdb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fdb8 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fdb8)
  store %struct.Memory* %call_40fdb8, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40fdbb	 Bytes: 3
  %loadMem_40fdbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fdbb = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fdbb)
  store %struct.Memory* %call_40fdbb, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40fdbe	 Bytes: 3
  %loadMem_40fdbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fdbe = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fdbe)
  store %struct.Memory* %call_40fdbe, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40fdc1	 Bytes: 8
  %loadMem_40fdc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fdc1 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fdc1)
  store %struct.Memory* %call_40fdc1, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 40fdc9	 Bytes: 3
  %loadMem_40fdc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fdc9 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fdc9)
  store %struct.Memory* %call_40fdc9, %struct.Memory** %MEMORY

  ; Code: jne .L_40fe5b	 RIP: 40fdcc	 Bytes: 6
  %loadMem_40fdcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fdcc = call %struct.Memory* @routine_jne_.L_40fe5b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fdcc, i8* %BRANCH_TAKEN, i64 143, i64 6, i64 6)
  store %struct.Memory* %call_40fdcc, %struct.Memory** %MEMORY

  %loadBr_40fdcc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40fdcc = icmp eq i8 %loadBr_40fdcc, 1
  br i1 %cmpBr_40fdcc, label %block_.L_40fe5b, label %block_40fdd2

block_40fdd2:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 40fdd2	 Bytes: 3
  %loadMem_40fdd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fdd2 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fdd2)
  store %struct.Memory* %call_40fdd2, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40fdd5	 Bytes: 3
  %loadMem_40fdd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fdd5 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fdd5)
  store %struct.Memory* %call_40fdd5, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40fdd8	 Bytes: 3
  %loadMem_40fdd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fdd8 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fdd8)
  store %struct.Memory* %call_40fdd8, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 40fddb	 Bytes: 7
  %loadMem_40fddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fddb = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fddb)
  store %struct.Memory* %call_40fddb, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 40fde2	 Bytes: 3
  %loadMem_40fde2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fde2 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fde2)
  store %struct.Memory* %call_40fde2, %struct.Memory** %MEMORY

  ; Code: je .L_40fe5b	 RIP: 40fde5	 Bytes: 6
  %loadMem_40fde5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fde5 = call %struct.Memory* @routine_je_.L_40fe5b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fde5, i8* %BRANCH_TAKEN, i64 118, i64 6, i64 6)
  store %struct.Memory* %call_40fde5, %struct.Memory** %MEMORY

  %loadBr_40fde5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40fde5 = icmp eq i8 %loadBr_40fde5, 1
  br i1 %cmpBr_40fde5, label %block_.L_40fe5b, label %block_40fdeb

block_40fdeb:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 40fdeb	 Bytes: 3
  %loadMem_40fdeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fdeb = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fdeb)
  store %struct.Memory* %call_40fdeb, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40fdee	 Bytes: 3
  %loadMem_40fdee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fdee = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fdee)
  store %struct.Memory* %call_40fdee, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40fdf1	 Bytes: 3
  %loadMem_40fdf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fdf1 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fdf1)
  store %struct.Memory* %call_40fdf1, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 40fdf4	 Bytes: 7
  %loadMem_40fdf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fdf4 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fdf4)
  store %struct.Memory* %call_40fdf4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 40fdfb	 Bytes: 3
  %loadMem_40fdfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fdfb = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fdfb)
  store %struct.Memory* %call_40fdfb, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %eax	 RIP: 40fdfe	 Bytes: 3
  %loadMem_40fdfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fdfe = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fdfe)
  store %struct.Memory* %call_40fdfe, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 40fe01	 Bytes: 3
  %loadMem_40fe01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe01 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe01)
  store %struct.Memory* %call_40fe01, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40fe04	 Bytes: 3
  %loadMem_40fe04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe04 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe04)
  store %struct.Memory* %call_40fe04, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40fe07	 Bytes: 8
  %loadMem_40fe07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe07 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe07)
  store %struct.Memory* %call_40fe07, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 40fe0f	 Bytes: 3
  %loadMem_40fe0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe0f = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe0f)
  store %struct.Memory* %call_40fe0f, %struct.Memory** %MEMORY

  ; Code: jne .L_40fe56	 RIP: 40fe12	 Bytes: 6
  %loadMem_40fe12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe12 = call %struct.Memory* @routine_jne_.L_40fe56(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe12, i8* %BRANCH_TAKEN, i64 68, i64 6, i64 6)
  store %struct.Memory* %call_40fe12, %struct.Memory** %MEMORY

  %loadBr_40fe12 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40fe12 = icmp eq i8 %loadBr_40fe12, 1
  br i1 %cmpBr_40fe12, label %block_.L_40fe56, label %block_40fe18

block_40fe18:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 40fe18	 Bytes: 3
  %loadMem_40fe18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe18 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe18)
  store %struct.Memory* %call_40fe18, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 40fe1b	 Bytes: 3
  %loadMem_40fe1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe1b = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe1b)
  store %struct.Memory* %call_40fe1b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40fe1e	 Bytes: 3
  %loadMem_40fe1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe1e = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe1e)
  store %struct.Memory* %call_40fe1e, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 40fe21	 Bytes: 7
  %loadMem_40fe21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe21 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe21)
  store %struct.Memory* %call_40fe21, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 40fe28	 Bytes: 3
  %loadMem_40fe28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe28 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe28)
  store %struct.Memory* %call_40fe28, %struct.Memory** %MEMORY

  ; Code: je .L_40fe56	 RIP: 40fe2b	 Bytes: 6
  %loadMem_40fe2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe2b = call %struct.Memory* @routine_je_.L_40fe56(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe2b, i8* %BRANCH_TAKEN, i64 43, i64 6, i64 6)
  store %struct.Memory* %call_40fe2b, %struct.Memory** %MEMORY

  %loadBr_40fe2b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40fe2b = icmp eq i8 %loadBr_40fe2b, 1
  br i1 %cmpBr_40fe2b, label %block_.L_40fe56, label %block_40fe31

block_40fe31:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 40fe31	 Bytes: 3
  %loadMem_40fe31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe31 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe31)
  store %struct.Memory* %call_40fe31, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 40fe34	 Bytes: 3
  %loadMem_40fe34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe34 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe34)
  store %struct.Memory* %call_40fe34, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40fe37	 Bytes: 3
  %loadMem_40fe37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe37 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe37)
  store %struct.Memory* %call_40fe37, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 40fe3a	 Bytes: 7
  %loadMem_40fe3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe3a = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe3a)
  store %struct.Memory* %call_40fe3a, %struct.Memory** %MEMORY

  ; Code: cmpl -0x18(%rbp), %eax	 RIP: 40fe41	 Bytes: 3
  %loadMem_40fe41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe41 = call %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe41)
  store %struct.Memory* %call_40fe41, %struct.Memory** %MEMORY

  ; Code: je .L_40fe56	 RIP: 40fe44	 Bytes: 6
  %loadMem_40fe44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe44 = call %struct.Memory* @routine_je_.L_40fe56(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe44, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_40fe44, %struct.Memory** %MEMORY

  %loadBr_40fe44 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40fe44 = icmp eq i8 %loadBr_40fe44, 1
  br i1 %cmpBr_40fe44, label %block_.L_40fe56, label %block_40fe4a

block_40fe4a:
  ; Code: movl $0xffffffff, -0x4(%rbp)	 RIP: 40fe4a	 Bytes: 7
  %loadMem_40fe4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe4a = call %struct.Memory* @routine_movl__0xffffffff__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe4a)
  store %struct.Memory* %call_40fe4a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_410ec6	 RIP: 40fe51	 Bytes: 5
  %loadMem_40fe51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe51 = call %struct.Memory* @routine_jmpq_.L_410ec6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe51, i64 4213, i64 5)
  store %struct.Memory* %call_40fe51, %struct.Memory** %MEMORY

  br label %block_.L_410ec6

  ; Code: .L_40fe56:	 RIP: 40fe56	 Bytes: 0
block_.L_40fe56:

  ; Code: jmpq .L_40fea6	 RIP: 40fe56	 Bytes: 5
  %loadMem_40fe56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe56 = call %struct.Memory* @routine_jmpq_.L_40fea6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe56, i64 80, i64 5)
  store %struct.Memory* %call_40fe56, %struct.Memory** %MEMORY

  br label %block_.L_40fea6

  ; Code: .L_40fe5b:	 RIP: 40fe5b	 Bytes: 0
block_.L_40fe5b:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 40fe5b	 Bytes: 3
  %loadMem_40fe5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe5b = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe5b)
  store %struct.Memory* %call_40fe5b, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 40fe5e	 Bytes: 3
  %loadMem_40fe5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe5e = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe5e)
  store %struct.Memory* %call_40fe5e, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40fe61	 Bytes: 3
  %loadMem_40fe61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe61 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe61)
  store %struct.Memory* %call_40fe61, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40fe64	 Bytes: 8
  %loadMem_40fe64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe64 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe64)
  store %struct.Memory* %call_40fe64, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 40fe6c	 Bytes: 3
  %loadMem_40fe6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe6c = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe6c)
  store %struct.Memory* %call_40fe6c, %struct.Memory** %MEMORY

  ; Code: jne .L_40fea1	 RIP: 40fe6f	 Bytes: 6
  %loadMem_40fe6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe6f = call %struct.Memory* @routine_jne_.L_40fea1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe6f, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_40fe6f, %struct.Memory** %MEMORY

  %loadBr_40fe6f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40fe6f = icmp eq i8 %loadBr_40fe6f, 1
  br i1 %cmpBr_40fe6f, label %block_.L_40fea1, label %block_40fe75

block_40fe75:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 40fe75	 Bytes: 3
  %loadMem_40fe75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe75 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe75)
  store %struct.Memory* %call_40fe75, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 40fe78	 Bytes: 3
  %loadMem_40fe78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe78 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe78)
  store %struct.Memory* %call_40fe78, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40fe7b	 Bytes: 3
  %loadMem_40fe7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe7b = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe7b)
  store %struct.Memory* %call_40fe7b, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 40fe7e	 Bytes: 7
  %loadMem_40fe7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe7e = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe7e)
  store %struct.Memory* %call_40fe7e, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 40fe85	 Bytes: 3
  %loadMem_40fe85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe85 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe85)
  store %struct.Memory* %call_40fe85, %struct.Memory** %MEMORY

  ; Code: je .L_40fea1	 RIP: 40fe88	 Bytes: 6
  %loadMem_40fe88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe88 = call %struct.Memory* @routine_je_.L_40fea1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe88, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_40fe88, %struct.Memory** %MEMORY

  %loadBr_40fe88 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40fe88 = icmp eq i8 %loadBr_40fe88, 1
  br i1 %cmpBr_40fe88, label %block_.L_40fea1, label %block_40fe8e

block_40fe8e:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 40fe8e	 Bytes: 3
  %loadMem_40fe8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe8e = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe8e)
  store %struct.Memory* %call_40fe8e, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 40fe91	 Bytes: 3
  %loadMem_40fe91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe91 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe91)
  store %struct.Memory* %call_40fe91, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40fe94	 Bytes: 3
  %loadMem_40fe94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe94 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe94)
  store %struct.Memory* %call_40fe94, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 40fe97	 Bytes: 7
  %loadMem_40fe97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe97 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe97)
  store %struct.Memory* %call_40fe97, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 40fe9e	 Bytes: 3
  %loadMem_40fe9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fe9e = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fe9e)
  store %struct.Memory* %call_40fe9e, %struct.Memory** %MEMORY

  ; Code: .L_40fea1:	 RIP: 40fea1	 Bytes: 0
  br label %block_.L_40fea1
block_.L_40fea1:

  ; Code: jmpq .L_40fea6	 RIP: 40fea1	 Bytes: 5
  %loadMem_40fea1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fea1 = call %struct.Memory* @routine_jmpq_.L_40fea6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fea1, i64 5, i64 5)
  store %struct.Memory* %call_40fea1, %struct.Memory** %MEMORY

  br label %block_.L_40fea6

  ; Code: .L_40fea6:	 RIP: 40fea6	 Bytes: 0
block_.L_40fea6:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 40fea6	 Bytes: 3
  %loadMem_40fea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fea6 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fea6)
  store %struct.Memory* %call_40fea6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40fea9	 Bytes: 3
  %loadMem_40fea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fea9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fea9)
  store %struct.Memory* %call_40fea9, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40feac	 Bytes: 3
  %loadMem_40feac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40feac = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40feac)
  store %struct.Memory* %call_40feac, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40feaf	 Bytes: 8
  %loadMem_40feaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40feaf = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40feaf)
  store %struct.Memory* %call_40feaf, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 40feb7	 Bytes: 3
  %loadMem_40feb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40feb7 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40feb7)
  store %struct.Memory* %call_40feb7, %struct.Memory** %MEMORY

  ; Code: jne .L_40ff2a	 RIP: 40feba	 Bytes: 6
  %loadMem_40feba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40feba = call %struct.Memory* @routine_jne_.L_40ff2a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40feba, i8* %BRANCH_TAKEN, i64 112, i64 6, i64 6)
  store %struct.Memory* %call_40feba, %struct.Memory** %MEMORY

  %loadBr_40feba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40feba = icmp eq i8 %loadBr_40feba, 1
  br i1 %cmpBr_40feba, label %block_.L_40ff2a, label %block_40fec0

block_40fec0:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 40fec0	 Bytes: 3
  %loadMem_40fec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fec0 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fec0)
  store %struct.Memory* %call_40fec0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40fec3	 Bytes: 3
  %loadMem_40fec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fec3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fec3)
  store %struct.Memory* %call_40fec3, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40fec6	 Bytes: 3
  %loadMem_40fec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fec6 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fec6)
  store %struct.Memory* %call_40fec6, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 40fec9	 Bytes: 7
  %loadMem_40fec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fec9 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fec9)
  store %struct.Memory* %call_40fec9, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 40fed0	 Bytes: 3
  %loadMem_40fed0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fed0 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fed0)
  store %struct.Memory* %call_40fed0, %struct.Memory** %MEMORY

  ; Code: je .L_40ff2a	 RIP: 40fed3	 Bytes: 6
  %loadMem_40fed3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fed3 = call %struct.Memory* @routine_je_.L_40ff2a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fed3, i8* %BRANCH_TAKEN, i64 87, i64 6, i64 6)
  store %struct.Memory* %call_40fed3, %struct.Memory** %MEMORY

  %loadBr_40fed3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40fed3 = icmp eq i8 %loadBr_40fed3, 1
  br i1 %cmpBr_40fed3, label %block_.L_40ff2a, label %block_40fed9

block_40fed9:
  ; Code: cmpl $0x0, -0x18(%rbp)	 RIP: 40fed9	 Bytes: 4
  %loadMem_40fed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fed9 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fed9)
  store %struct.Memory* %call_40fed9, %struct.Memory** %MEMORY

  ; Code: jge .L_40fefb	 RIP: 40fedd	 Bytes: 6
  %loadMem_40fedd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fedd = call %struct.Memory* @routine_jge_.L_40fefb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fedd, i8* %BRANCH_TAKEN, i64 30, i64 6, i64 6)
  store %struct.Memory* %call_40fedd, %struct.Memory** %MEMORY

  %loadBr_40fedd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40fedd = icmp eq i8 %loadBr_40fedd, 1
  br i1 %cmpBr_40fedd, label %block_.L_40fefb, label %block_40fee3

block_40fee3:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 40fee3	 Bytes: 3
  %loadMem_40fee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fee3 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fee3)
  store %struct.Memory* %call_40fee3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40fee6	 Bytes: 3
  %loadMem_40fee6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fee6 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fee6)
  store %struct.Memory* %call_40fee6, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40fee9	 Bytes: 3
  %loadMem_40fee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fee9 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fee9)
  store %struct.Memory* %call_40fee9, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 40feec	 Bytes: 7
  %loadMem_40feec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40feec = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40feec)
  store %struct.Memory* %call_40feec, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 40fef3	 Bytes: 3
  %loadMem_40fef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fef3 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fef3)
  store %struct.Memory* %call_40fef3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40ff25	 RIP: 40fef6	 Bytes: 5
  %loadMem_40fef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fef6 = call %struct.Memory* @routine_jmpq_.L_40ff25(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fef6, i64 47, i64 5)
  store %struct.Memory* %call_40fef6, %struct.Memory** %MEMORY

  br label %block_.L_40ff25

  ; Code: .L_40fefb:	 RIP: 40fefb	 Bytes: 0
block_.L_40fefb:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 40fefb	 Bytes: 3
  %loadMem_40fefb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fefb = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fefb)
  store %struct.Memory* %call_40fefb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40fefe	 Bytes: 3
  %loadMem_40fefe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fefe = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fefe)
  store %struct.Memory* %call_40fefe, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40ff01	 Bytes: 3
  %loadMem_40ff01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff01 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff01)
  store %struct.Memory* %call_40ff01, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 40ff04	 Bytes: 7
  %loadMem_40ff04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff04 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff04)
  store %struct.Memory* %call_40ff04, %struct.Memory** %MEMORY

  ; Code: cmpl -0x18(%rbp), %eax	 RIP: 40ff0b	 Bytes: 3
  %loadMem_40ff0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff0b = call %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff0b)
  store %struct.Memory* %call_40ff0b, %struct.Memory** %MEMORY

  ; Code: je .L_40ff20	 RIP: 40ff0e	 Bytes: 6
  %loadMem_40ff0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff0e = call %struct.Memory* @routine_je_.L_40ff20(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff0e, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_40ff0e, %struct.Memory** %MEMORY

  %loadBr_40ff0e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ff0e = icmp eq i8 %loadBr_40ff0e, 1
  br i1 %cmpBr_40ff0e, label %block_.L_40ff20, label %block_40ff14

block_40ff14:
  ; Code: movl $0xffffffff, -0x4(%rbp)	 RIP: 40ff14	 Bytes: 7
  %loadMem_40ff14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff14 = call %struct.Memory* @routine_movl__0xffffffff__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff14)
  store %struct.Memory* %call_40ff14, %struct.Memory** %MEMORY

  ; Code: jmpq .L_410ec6	 RIP: 40ff1b	 Bytes: 5
  %loadMem_40ff1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff1b = call %struct.Memory* @routine_jmpq_.L_410ec6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff1b, i64 4011, i64 5)
  store %struct.Memory* %call_40ff1b, %struct.Memory** %MEMORY

  br label %block_.L_410ec6

  ; Code: .L_40ff20:	 RIP: 40ff20	 Bytes: 0
block_.L_40ff20:

  ; Code: jmpq .L_40ff25	 RIP: 40ff20	 Bytes: 5
  %loadMem_40ff20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff20 = call %struct.Memory* @routine_jmpq_.L_40ff25(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff20, i64 5, i64 5)
  store %struct.Memory* %call_40ff20, %struct.Memory** %MEMORY

  br label %block_.L_40ff25

  ; Code: .L_40ff25:	 RIP: 40ff25	 Bytes: 0
block_.L_40ff25:

  ; Code: jmpq .L_40ff2a	 RIP: 40ff25	 Bytes: 5
  %loadMem_40ff25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff25 = call %struct.Memory* @routine_jmpq_.L_40ff2a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff25, i64 5, i64 5)
  store %struct.Memory* %call_40ff25, %struct.Memory** %MEMORY

  br label %block_.L_40ff2a

  ; Code: .L_40ff2a:	 RIP: 40ff2a	 Bytes: 0
block_.L_40ff2a:

  ; Code: jmpq .L_410103	 RIP: 40ff2a	 Bytes: 5
  %loadMem_40ff2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff2a = call %struct.Memory* @routine_jmpq_.L_410103(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff2a, i64 473, i64 5)
  store %struct.Memory* %call_40ff2a, %struct.Memory** %MEMORY

  br label %block_.L_410103

  ; Code: .L_40ff2f:	 RIP: 40ff2f	 Bytes: 0
block_.L_40ff2f:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 40ff2f	 Bytes: 3
  %loadMem_40ff2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff2f = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff2f)
  store %struct.Memory* %call_40ff2f, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40ff32	 Bytes: 3
  %loadMem_40ff32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff32 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff32)
  store %struct.Memory* %call_40ff32, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40ff35	 Bytes: 3
  %loadMem_40ff35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff35 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff35)
  store %struct.Memory* %call_40ff35, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40ff38	 Bytes: 8
  %loadMem_40ff38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff38 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff38)
  store %struct.Memory* %call_40ff38, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 40ff40	 Bytes: 3
  %loadMem_40ff40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff40 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff40)
  store %struct.Memory* %call_40ff40, %struct.Memory** %MEMORY

  ; Code: jne .L_41004f	 RIP: 40ff43	 Bytes: 6
  %loadMem_40ff43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff43 = call %struct.Memory* @routine_jne_.L_41004f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff43, i8* %BRANCH_TAKEN, i64 268, i64 6, i64 6)
  store %struct.Memory* %call_40ff43, %struct.Memory** %MEMORY

  %loadBr_40ff43 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ff43 = icmp eq i8 %loadBr_40ff43, 1
  br i1 %cmpBr_40ff43, label %block_.L_41004f, label %block_40ff49

block_40ff49:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 40ff49	 Bytes: 3
  %loadMem_40ff49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff49 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff49)
  store %struct.Memory* %call_40ff49, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40ff4c	 Bytes: 3
  %loadMem_40ff4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff4c = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff4c)
  store %struct.Memory* %call_40ff4c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40ff4f	 Bytes: 3
  %loadMem_40ff4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff4f = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff4f)
  store %struct.Memory* %call_40ff4f, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 40ff52	 Bytes: 7
  %loadMem_40ff52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff52 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff52)
  store %struct.Memory* %call_40ff52, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 40ff59	 Bytes: 3
  %loadMem_40ff59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff59 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff59)
  store %struct.Memory* %call_40ff59, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %eax	 RIP: 40ff5c	 Bytes: 3
  %loadMem_40ff5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff5c = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff5c)
  store %struct.Memory* %call_40ff5c, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 40ff5f	 Bytes: 3
  %loadMem_40ff5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff5f = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff5f)
  store %struct.Memory* %call_40ff5f, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40ff62	 Bytes: 3
  %loadMem_40ff62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff62 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff62)
  store %struct.Memory* %call_40ff62, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40ff65	 Bytes: 8
  %loadMem_40ff65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff65 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff65)
  store %struct.Memory* %call_40ff65, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 40ff6d	 Bytes: 3
  %loadMem_40ff6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff6d = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff6d)
  store %struct.Memory* %call_40ff6d, %struct.Memory** %MEMORY

  ; Code: jne .L_40ffff	 RIP: 40ff70	 Bytes: 6
  %loadMem_40ff70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff70 = call %struct.Memory* @routine_jne_.L_40ffff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff70, i8* %BRANCH_TAKEN, i64 143, i64 6, i64 6)
  store %struct.Memory* %call_40ff70, %struct.Memory** %MEMORY

  %loadBr_40ff70 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ff70 = icmp eq i8 %loadBr_40ff70, 1
  br i1 %cmpBr_40ff70, label %block_.L_40ffff, label %block_40ff76

block_40ff76:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 40ff76	 Bytes: 3
  %loadMem_40ff76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff76 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff76)
  store %struct.Memory* %call_40ff76, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 40ff79	 Bytes: 3
  %loadMem_40ff79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff79 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff79)
  store %struct.Memory* %call_40ff79, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40ff7c	 Bytes: 3
  %loadMem_40ff7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff7c = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff7c)
  store %struct.Memory* %call_40ff7c, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 40ff7f	 Bytes: 7
  %loadMem_40ff7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff7f = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff7f)
  store %struct.Memory* %call_40ff7f, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 40ff86	 Bytes: 3
  %loadMem_40ff86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff86 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff86)
  store %struct.Memory* %call_40ff86, %struct.Memory** %MEMORY

  ; Code: je .L_40ffff	 RIP: 40ff89	 Bytes: 6
  %loadMem_40ff89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff89 = call %struct.Memory* @routine_je_.L_40ffff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff89, i8* %BRANCH_TAKEN, i64 118, i64 6, i64 6)
  store %struct.Memory* %call_40ff89, %struct.Memory** %MEMORY

  %loadBr_40ff89 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ff89 = icmp eq i8 %loadBr_40ff89, 1
  br i1 %cmpBr_40ff89, label %block_.L_40ffff, label %block_40ff8f

block_40ff8f:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 40ff8f	 Bytes: 3
  %loadMem_40ff8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff8f = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff8f)
  store %struct.Memory* %call_40ff8f, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 40ff92	 Bytes: 3
  %loadMem_40ff92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff92 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff92)
  store %struct.Memory* %call_40ff92, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40ff95	 Bytes: 3
  %loadMem_40ff95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff95 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff95)
  store %struct.Memory* %call_40ff95, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 40ff98	 Bytes: 7
  %loadMem_40ff98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff98 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff98)
  store %struct.Memory* %call_40ff98, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 40ff9f	 Bytes: 3
  %loadMem_40ff9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ff9f = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ff9f)
  store %struct.Memory* %call_40ff9f, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %eax	 RIP: 40ffa2	 Bytes: 3
  %loadMem_40ffa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ffa2 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ffa2)
  store %struct.Memory* %call_40ffa2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40ffa5	 Bytes: 3
  %loadMem_40ffa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ffa5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ffa5)
  store %struct.Memory* %call_40ffa5, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40ffa8	 Bytes: 3
  %loadMem_40ffa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ffa8 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ffa8)
  store %struct.Memory* %call_40ffa8, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40ffab	 Bytes: 8
  %loadMem_40ffab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ffab = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ffab)
  store %struct.Memory* %call_40ffab, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 40ffb3	 Bytes: 3
  %loadMem_40ffb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ffb3 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ffb3)
  store %struct.Memory* %call_40ffb3, %struct.Memory** %MEMORY

  ; Code: jne .L_40fffa	 RIP: 40ffb6	 Bytes: 6
  %loadMem_40ffb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ffb6 = call %struct.Memory* @routine_jne_.L_40fffa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ffb6, i8* %BRANCH_TAKEN, i64 68, i64 6, i64 6)
  store %struct.Memory* %call_40ffb6, %struct.Memory** %MEMORY

  %loadBr_40ffb6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ffb6 = icmp eq i8 %loadBr_40ffb6, 1
  br i1 %cmpBr_40ffb6, label %block_.L_40fffa, label %block_40ffbc

block_40ffbc:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 40ffbc	 Bytes: 3
  %loadMem_40ffbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ffbc = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ffbc)
  store %struct.Memory* %call_40ffbc, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40ffbf	 Bytes: 3
  %loadMem_40ffbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ffbf = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ffbf)
  store %struct.Memory* %call_40ffbf, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40ffc2	 Bytes: 3
  %loadMem_40ffc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ffc2 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ffc2)
  store %struct.Memory* %call_40ffc2, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 40ffc5	 Bytes: 7
  %loadMem_40ffc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ffc5 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ffc5)
  store %struct.Memory* %call_40ffc5, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 40ffcc	 Bytes: 3
  %loadMem_40ffcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ffcc = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ffcc)
  store %struct.Memory* %call_40ffcc, %struct.Memory** %MEMORY

  ; Code: je .L_40fffa	 RIP: 40ffcf	 Bytes: 6
  %loadMem_40ffcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ffcf = call %struct.Memory* @routine_je_.L_40fffa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ffcf, i8* %BRANCH_TAKEN, i64 43, i64 6, i64 6)
  store %struct.Memory* %call_40ffcf, %struct.Memory** %MEMORY

  %loadBr_40ffcf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ffcf = icmp eq i8 %loadBr_40ffcf, 1
  br i1 %cmpBr_40ffcf, label %block_.L_40fffa, label %block_40ffd5

block_40ffd5:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 40ffd5	 Bytes: 3
  %loadMem_40ffd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ffd5 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ffd5)
  store %struct.Memory* %call_40ffd5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40ffd8	 Bytes: 3
  %loadMem_40ffd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ffd8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ffd8)
  store %struct.Memory* %call_40ffd8, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40ffdb	 Bytes: 3
  %loadMem_40ffdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ffdb = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ffdb)
  store %struct.Memory* %call_40ffdb, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 40ffde	 Bytes: 7
  %loadMem_40ffde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ffde = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ffde)
  store %struct.Memory* %call_40ffde, %struct.Memory** %MEMORY

  ; Code: cmpl -0x18(%rbp), %eax	 RIP: 40ffe5	 Bytes: 3
  %loadMem_40ffe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ffe5 = call %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ffe5)
  store %struct.Memory* %call_40ffe5, %struct.Memory** %MEMORY

  ; Code: je .L_40fffa	 RIP: 40ffe8	 Bytes: 6
  %loadMem_40ffe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ffe8 = call %struct.Memory* @routine_je_.L_40fffa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ffe8, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_40ffe8, %struct.Memory** %MEMORY

  %loadBr_40ffe8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ffe8 = icmp eq i8 %loadBr_40ffe8, 1
  br i1 %cmpBr_40ffe8, label %block_.L_40fffa, label %block_40ffee

block_40ffee:
  ; Code: movl $0xffffffff, -0x4(%rbp)	 RIP: 40ffee	 Bytes: 7
  %loadMem_40ffee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ffee = call %struct.Memory* @routine_movl__0xffffffff__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ffee)
  store %struct.Memory* %call_40ffee, %struct.Memory** %MEMORY

  ; Code: jmpq .L_410ec6	 RIP: 40fff5	 Bytes: 5
  %loadMem_40fff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fff5 = call %struct.Memory* @routine_jmpq_.L_410ec6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fff5, i64 3793, i64 5)
  store %struct.Memory* %call_40fff5, %struct.Memory** %MEMORY

  br label %block_.L_410ec6

  ; Code: .L_40fffa:	 RIP: 40fffa	 Bytes: 0
block_.L_40fffa:

  ; Code: jmpq .L_41004a	 RIP: 40fffa	 Bytes: 5
  %loadMem_40fffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40fffa = call %struct.Memory* @routine_jmpq_.L_41004a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40fffa, i64 80, i64 5)
  store %struct.Memory* %call_40fffa, %struct.Memory** %MEMORY

  br label %block_.L_41004a

  ; Code: .L_40ffff:	 RIP: 40ffff	 Bytes: 0
block_.L_40ffff:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 40ffff	 Bytes: 3
  %loadMem_40ffff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40ffff = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40ffff)
  store %struct.Memory* %call_40ffff, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410002	 Bytes: 3
  %loadMem_410002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410002 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410002)
  store %struct.Memory* %call_410002, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410005	 Bytes: 3
  %loadMem_410005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410005 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410005)
  store %struct.Memory* %call_410005, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410008	 Bytes: 8
  %loadMem_410008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410008 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410008)
  store %struct.Memory* %call_410008, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 410010	 Bytes: 3
  %loadMem_410010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410010 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410010)
  store %struct.Memory* %call_410010, %struct.Memory** %MEMORY

  ; Code: jne .L_410045	 RIP: 410013	 Bytes: 6
  %loadMem_410013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410013 = call %struct.Memory* @routine_jne_.L_410045(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410013, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_410013, %struct.Memory** %MEMORY

  %loadBr_410013 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410013 = icmp eq i8 %loadBr_410013, 1
  br i1 %cmpBr_410013, label %block_.L_410045, label %block_410019

block_410019:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 410019	 Bytes: 3
  %loadMem_410019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410019 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410019)
  store %struct.Memory* %call_410019, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41001c	 Bytes: 3
  %loadMem_41001c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41001c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41001c)
  store %struct.Memory* %call_41001c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 41001f	 Bytes: 3
  %loadMem_41001f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41001f = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41001f)
  store %struct.Memory* %call_41001f, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 410022	 Bytes: 7
  %loadMem_410022 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410022 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410022)
  store %struct.Memory* %call_410022, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 410029	 Bytes: 3
  %loadMem_410029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410029 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410029)
  store %struct.Memory* %call_410029, %struct.Memory** %MEMORY

  ; Code: je .L_410045	 RIP: 41002c	 Bytes: 6
  %loadMem_41002c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41002c = call %struct.Memory* @routine_je_.L_410045(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41002c, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_41002c, %struct.Memory** %MEMORY

  %loadBr_41002c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41002c = icmp eq i8 %loadBr_41002c, 1
  br i1 %cmpBr_41002c, label %block_.L_410045, label %block_410032

block_410032:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 410032	 Bytes: 3
  %loadMem_410032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410032 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410032)
  store %struct.Memory* %call_410032, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410035	 Bytes: 3
  %loadMem_410035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410035 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410035)
  store %struct.Memory* %call_410035, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410038	 Bytes: 3
  %loadMem_410038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410038 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410038)
  store %struct.Memory* %call_410038, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 41003b	 Bytes: 7
  %loadMem_41003b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41003b = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41003b)
  store %struct.Memory* %call_41003b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 410042	 Bytes: 3
  %loadMem_410042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410042 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410042)
  store %struct.Memory* %call_410042, %struct.Memory** %MEMORY

  ; Code: .L_410045:	 RIP: 410045	 Bytes: 0
  br label %block_.L_410045
block_.L_410045:

  ; Code: jmpq .L_41004a	 RIP: 410045	 Bytes: 5
  %loadMem_410045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410045 = call %struct.Memory* @routine_jmpq_.L_41004a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410045, i64 5, i64 5)
  store %struct.Memory* %call_410045, %struct.Memory** %MEMORY

  br label %block_.L_41004a

  ; Code: .L_41004a:	 RIP: 41004a	 Bytes: 0
block_.L_41004a:

  ; Code: jmpq .L_4100fe	 RIP: 41004a	 Bytes: 5
  %loadMem_41004a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41004a = call %struct.Memory* @routine_jmpq_.L_4100fe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41004a, i64 180, i64 5)
  store %struct.Memory* %call_41004a, %struct.Memory** %MEMORY

  br label %block_.L_4100fe

  ; Code: .L_41004f:	 RIP: 41004f	 Bytes: 0
block_.L_41004f:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 41004f	 Bytes: 3
  %loadMem_41004f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41004f = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41004f)
  store %struct.Memory* %call_41004f, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 410052	 Bytes: 3
  %loadMem_410052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410052 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410052)
  store %struct.Memory* %call_410052, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410055	 Bytes: 3
  %loadMem_410055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410055 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410055)
  store %struct.Memory* %call_410055, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410058	 Bytes: 8
  %loadMem_410058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410058 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410058)
  store %struct.Memory* %call_410058, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 410060	 Bytes: 3
  %loadMem_410060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410060 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410060)
  store %struct.Memory* %call_410060, %struct.Memory** %MEMORY

  ; Code: jne .L_4100c7	 RIP: 410063	 Bytes: 6
  %loadMem_410063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410063 = call %struct.Memory* @routine_jne_.L_4100c7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410063, i8* %BRANCH_TAKEN, i64 100, i64 6, i64 6)
  store %struct.Memory* %call_410063, %struct.Memory** %MEMORY

  %loadBr_410063 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410063 = icmp eq i8 %loadBr_410063, 1
  br i1 %cmpBr_410063, label %block_.L_4100c7, label %block_410069

block_410069:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 410069	 Bytes: 3
  %loadMem_410069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410069 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410069)
  store %struct.Memory* %call_410069, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 41006c	 Bytes: 3
  %loadMem_41006c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41006c = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41006c)
  store %struct.Memory* %call_41006c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 41006f	 Bytes: 3
  %loadMem_41006f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41006f = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41006f)
  store %struct.Memory* %call_41006f, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 410072	 Bytes: 7
  %loadMem_410072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410072 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410072)
  store %struct.Memory* %call_410072, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 410079	 Bytes: 3
  %loadMem_410079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410079 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410079)
  store %struct.Memory* %call_410079, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %eax	 RIP: 41007c	 Bytes: 3
  %loadMem_41007c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41007c = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41007c)
  store %struct.Memory* %call_41007c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41007f	 Bytes: 3
  %loadMem_41007f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41007f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41007f)
  store %struct.Memory* %call_41007f, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410082	 Bytes: 3
  %loadMem_410082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410082 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410082)
  store %struct.Memory* %call_410082, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410085	 Bytes: 8
  %loadMem_410085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410085 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410085)
  store %struct.Memory* %call_410085, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 41008d	 Bytes: 3
  %loadMem_41008d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41008d = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41008d)
  store %struct.Memory* %call_41008d, %struct.Memory** %MEMORY

  ; Code: jne .L_4100c2	 RIP: 410090	 Bytes: 6
  %loadMem_410090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410090 = call %struct.Memory* @routine_jne_.L_4100c2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410090, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_410090, %struct.Memory** %MEMORY

  %loadBr_410090 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410090 = icmp eq i8 %loadBr_410090, 1
  br i1 %cmpBr_410090, label %block_.L_4100c2, label %block_410096

block_410096:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 410096	 Bytes: 3
  %loadMem_410096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410096 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410096)
  store %struct.Memory* %call_410096, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410099	 Bytes: 3
  %loadMem_410099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410099 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410099)
  store %struct.Memory* %call_410099, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 41009c	 Bytes: 3
  %loadMem_41009c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41009c = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41009c)
  store %struct.Memory* %call_41009c, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 41009f	 Bytes: 7
  %loadMem_41009f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41009f = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41009f)
  store %struct.Memory* %call_41009f, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 4100a6	 Bytes: 3
  %loadMem_4100a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4100a6 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4100a6)
  store %struct.Memory* %call_4100a6, %struct.Memory** %MEMORY

  ; Code: je .L_4100c2	 RIP: 4100a9	 Bytes: 6
  %loadMem_4100a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4100a9 = call %struct.Memory* @routine_je_.L_4100c2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4100a9, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_4100a9, %struct.Memory** %MEMORY

  %loadBr_4100a9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4100a9 = icmp eq i8 %loadBr_4100a9, 1
  br i1 %cmpBr_4100a9, label %block_.L_4100c2, label %block_4100af

block_4100af:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 4100af	 Bytes: 3
  %loadMem_4100af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4100af = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4100af)
  store %struct.Memory* %call_4100af, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4100b2	 Bytes: 3
  %loadMem_4100b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4100b2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4100b2)
  store %struct.Memory* %call_4100b2, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4100b5	 Bytes: 3
  %loadMem_4100b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4100b5 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4100b5)
  store %struct.Memory* %call_4100b5, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 4100b8	 Bytes: 7
  %loadMem_4100b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4100b8 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4100b8)
  store %struct.Memory* %call_4100b8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 4100bf	 Bytes: 3
  %loadMem_4100bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4100bf = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4100bf)
  store %struct.Memory* %call_4100bf, %struct.Memory** %MEMORY

  ; Code: .L_4100c2:	 RIP: 4100c2	 Bytes: 0
  br label %block_.L_4100c2
block_.L_4100c2:

  ; Code: jmpq .L_4100f9	 RIP: 4100c2	 Bytes: 5
  %loadMem_4100c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4100c2 = call %struct.Memory* @routine_jmpq_.L_4100f9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4100c2, i64 55, i64 5)
  store %struct.Memory* %call_4100c2, %struct.Memory** %MEMORY

  br label %block_.L_4100f9

  ; Code: .L_4100c7:	 RIP: 4100c7	 Bytes: 0
block_.L_4100c7:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4100c7	 Bytes: 3
  %loadMem_4100c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4100c7 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4100c7)
  store %struct.Memory* %call_4100c7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4100ca	 Bytes: 3
  %loadMem_4100ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4100ca = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4100ca)
  store %struct.Memory* %call_4100ca, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4100cd	 Bytes: 3
  %loadMem_4100cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4100cd = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4100cd)
  store %struct.Memory* %call_4100cd, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4100d0	 Bytes: 8
  %loadMem_4100d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4100d0 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4100d0)
  store %struct.Memory* %call_4100d0, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4100d8	 Bytes: 3
  %loadMem_4100d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4100d8 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4100d8)
  store %struct.Memory* %call_4100d8, %struct.Memory** %MEMORY

  ; Code: jne .L_4100f4	 RIP: 4100db	 Bytes: 6
  %loadMem_4100db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4100db = call %struct.Memory* @routine_jne_.L_4100f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4100db, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_4100db, %struct.Memory** %MEMORY

  %loadBr_4100db = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4100db = icmp eq i8 %loadBr_4100db, 1
  br i1 %cmpBr_4100db, label %block_.L_4100f4, label %block_4100e1

block_4100e1:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 4100e1	 Bytes: 3
  %loadMem_4100e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4100e1 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4100e1)
  store %struct.Memory* %call_4100e1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4100e4	 Bytes: 3
  %loadMem_4100e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4100e4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4100e4)
  store %struct.Memory* %call_4100e4, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4100e7	 Bytes: 3
  %loadMem_4100e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4100e7 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4100e7)
  store %struct.Memory* %call_4100e7, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 4100ea	 Bytes: 7
  %loadMem_4100ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4100ea = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4100ea)
  store %struct.Memory* %call_4100ea, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 4100f1	 Bytes: 3
  %loadMem_4100f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4100f1 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4100f1)
  store %struct.Memory* %call_4100f1, %struct.Memory** %MEMORY

  ; Code: .L_4100f4:	 RIP: 4100f4	 Bytes: 0
  br label %block_.L_4100f4
block_.L_4100f4:

  ; Code: jmpq .L_4100f9	 RIP: 4100f4	 Bytes: 5
  %loadMem_4100f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4100f4 = call %struct.Memory* @routine_jmpq_.L_4100f9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4100f4, i64 5, i64 5)
  store %struct.Memory* %call_4100f4, %struct.Memory** %MEMORY

  br label %block_.L_4100f9

  ; Code: .L_4100f9:	 RIP: 4100f9	 Bytes: 0
block_.L_4100f9:

  ; Code: jmpq .L_4100fe	 RIP: 4100f9	 Bytes: 5
  %loadMem_4100f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4100f9 = call %struct.Memory* @routine_jmpq_.L_4100fe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4100f9, i64 5, i64 5)
  store %struct.Memory* %call_4100f9, %struct.Memory** %MEMORY

  br label %block_.L_4100fe

  ; Code: .L_4100fe:	 RIP: 4100fe	 Bytes: 0
block_.L_4100fe:

  ; Code: jmpq .L_410103	 RIP: 4100fe	 Bytes: 5
  %loadMem_4100fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4100fe = call %struct.Memory* @routine_jmpq_.L_410103(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4100fe, i64 5, i64 5)
  store %struct.Memory* %call_4100fe, %struct.Memory** %MEMORY

  br label %block_.L_410103

  ; Code: .L_410103:	 RIP: 410103	 Bytes: 0
block_.L_410103:

  ; Code: cmpl $0x0, -0x10(%rbp)	 RIP: 410103	 Bytes: 4
  %loadMem_410103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410103 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410103)
  store %struct.Memory* %call_410103, %struct.Memory** %MEMORY

  ; Code: je .L_410b72	 RIP: 410107	 Bytes: 6
  %loadMem_410107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410107 = call %struct.Memory* @routine_je_.L_410b72(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410107, i8* %BRANCH_TAKEN, i64 2667, i64 6, i64 6)
  store %struct.Memory* %call_410107, %struct.Memory** %MEMORY

  %loadBr_410107 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410107 = icmp eq i8 %loadBr_410107, 1
  br i1 %cmpBr_410107, label %block_.L_410b72, label %block_41010d

block_41010d:
  ; Code: cmpl $0x0, -0x14(%rbp)	 RIP: 41010d	 Bytes: 4
  %loadMem_41010d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41010d = call %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41010d)
  store %struct.Memory* %call_41010d, %struct.Memory** %MEMORY

  ; Code: jge .L_4101a8	 RIP: 410111	 Bytes: 6
  %loadMem_410111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410111 = call %struct.Memory* @routine_jge_.L_4101a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410111, i8* %BRANCH_TAKEN, i64 151, i64 6, i64 6)
  store %struct.Memory* %call_410111, %struct.Memory** %MEMORY

  %loadBr_410111 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410111 = icmp eq i8 %loadBr_410111, 1
  br i1 %cmpBr_410111, label %block_.L_4101a8, label %block_410117

block_410117:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 410117	 Bytes: 3
  %loadMem_410117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410117 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410117)
  store %struct.Memory* %call_410117, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 41011a	 Bytes: 3
  %loadMem_41011a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41011a = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41011a)
  store %struct.Memory* %call_41011a, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 41011d	 Bytes: 3
  %loadMem_41011d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41011d = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41011d)
  store %struct.Memory* %call_41011d, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410120	 Bytes: 8
  %loadMem_410120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410120 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410120)
  store %struct.Memory* %call_410120, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 410128	 Bytes: 3
  %loadMem_410128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410128 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410128)
  store %struct.Memory* %call_410128, %struct.Memory** %MEMORY

  ; Code: jne .L_41013a	 RIP: 41012b	 Bytes: 6
  %loadMem_41012b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41012b = call %struct.Memory* @routine_jne_.L_41013a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41012b, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_41012b, %struct.Memory** %MEMORY

  %loadBr_41012b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41012b = icmp eq i8 %loadBr_41012b, 1
  br i1 %cmpBr_41012b, label %block_.L_41013a, label %block_410131

block_410131:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 410131	 Bytes: 3
  %loadMem_410131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410131 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410131)
  store %struct.Memory* %call_410131, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410134	 Bytes: 3
  %loadMem_410134 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410134 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410134)
  store %struct.Memory* %call_410134, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 410137	 Bytes: 3
  %loadMem_410137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410137 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410137)
  store %struct.Memory* %call_410137, %struct.Memory** %MEMORY

  ; Code: .L_41013a:	 RIP: 41013a	 Bytes: 0
  br label %block_.L_41013a
block_.L_41013a:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 41013a	 Bytes: 3
  %loadMem_41013a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41013a = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41013a)
  store %struct.Memory* %call_41013a, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 41013d	 Bytes: 3
  %loadMem_41013d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41013d = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41013d)
  store %struct.Memory* %call_41013d, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410140	 Bytes: 3
  %loadMem_410140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410140 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410140)
  store %struct.Memory* %call_410140, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410143	 Bytes: 8
  %loadMem_410143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410143 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410143)
  store %struct.Memory* %call_410143, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41014b	 Bytes: 3
  %loadMem_41014b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41014b = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41014b)
  store %struct.Memory* %call_41014b, %struct.Memory** %MEMORY

  ; Code: jne .L_41015d	 RIP: 41014e	 Bytes: 6
  %loadMem_41014e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41014e = call %struct.Memory* @routine_jne_.L_41015d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41014e, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_41014e, %struct.Memory** %MEMORY

  %loadBr_41014e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41014e = icmp eq i8 %loadBr_41014e, 1
  br i1 %cmpBr_41014e, label %block_.L_41015d, label %block_410154

block_410154:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 410154	 Bytes: 3
  %loadMem_410154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410154 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410154)
  store %struct.Memory* %call_410154, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410157	 Bytes: 3
  %loadMem_410157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410157 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410157)
  store %struct.Memory* %call_410157, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 41015a	 Bytes: 3
  %loadMem_41015a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41015a = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41015a)
  store %struct.Memory* %call_41015a, %struct.Memory** %MEMORY

  ; Code: .L_41015d:	 RIP: 41015d	 Bytes: 0
  br label %block_.L_41015d
block_.L_41015d:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 41015d	 Bytes: 3
  %loadMem_41015d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41015d = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41015d)
  store %struct.Memory* %call_41015d, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 410160	 Bytes: 3
  %loadMem_410160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410160 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410160)
  store %struct.Memory* %call_410160, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410163	 Bytes: 3
  %loadMem_410163 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410163 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410163)
  store %struct.Memory* %call_410163, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410166	 Bytes: 8
  %loadMem_410166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410166 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410166)
  store %struct.Memory* %call_410166, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41016e	 Bytes: 3
  %loadMem_41016e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41016e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41016e)
  store %struct.Memory* %call_41016e, %struct.Memory** %MEMORY

  ; Code: jne .L_410180	 RIP: 410171	 Bytes: 6
  %loadMem_410171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410171 = call %struct.Memory* @routine_jne_.L_410180(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410171, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_410171, %struct.Memory** %MEMORY

  %loadBr_410171 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410171 = icmp eq i8 %loadBr_410171, 1
  br i1 %cmpBr_410171, label %block_.L_410180, label %block_410177

block_410177:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 410177	 Bytes: 3
  %loadMem_410177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410177 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410177)
  store %struct.Memory* %call_410177, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41017a	 Bytes: 3
  %loadMem_41017a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41017a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41017a)
  store %struct.Memory* %call_41017a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 41017d	 Bytes: 3
  %loadMem_41017d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41017d = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41017d)
  store %struct.Memory* %call_41017d, %struct.Memory** %MEMORY

  ; Code: .L_410180:	 RIP: 410180	 Bytes: 0
  br label %block_.L_410180
block_.L_410180:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 410180	 Bytes: 3
  %loadMem_410180 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410180 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410180)
  store %struct.Memory* %call_410180, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410183	 Bytes: 3
  %loadMem_410183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410183 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410183)
  store %struct.Memory* %call_410183, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410186	 Bytes: 3
  %loadMem_410186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410186 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410186)
  store %struct.Memory* %call_410186, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410189	 Bytes: 8
  %loadMem_410189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410189 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410189)
  store %struct.Memory* %call_410189, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 410191	 Bytes: 3
  %loadMem_410191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410191 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410191)
  store %struct.Memory* %call_410191, %struct.Memory** %MEMORY

  ; Code: jne .L_4101a3	 RIP: 410194	 Bytes: 6
  %loadMem_410194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410194 = call %struct.Memory* @routine_jne_.L_4101a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410194, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_410194, %struct.Memory** %MEMORY

  %loadBr_410194 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410194 = icmp eq i8 %loadBr_410194, 1
  br i1 %cmpBr_410194, label %block_.L_4101a3, label %block_41019a

block_41019a:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 41019a	 Bytes: 3
  %loadMem_41019a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41019a = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41019a)
  store %struct.Memory* %call_41019a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41019d	 Bytes: 3
  %loadMem_41019d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41019d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41019d)
  store %struct.Memory* %call_41019d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 4101a0	 Bytes: 3
  %loadMem_4101a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4101a0 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4101a0)
  store %struct.Memory* %call_4101a0, %struct.Memory** %MEMORY

  ; Code: .L_4101a3:	 RIP: 4101a3	 Bytes: 0
  br label %block_.L_4101a3
block_.L_4101a3:

  ; Code: jmpq .L_410b6d	 RIP: 4101a3	 Bytes: 5
  %loadMem_4101a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4101a3 = call %struct.Memory* @routine_jmpq_.L_410b6d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4101a3, i64 2506, i64 5)
  store %struct.Memory* %call_4101a3, %struct.Memory** %MEMORY

  br label %block_.L_410b6d

  ; Code: .L_4101a8:	 RIP: 4101a8	 Bytes: 0
block_.L_4101a8:

  ; Code: cmpl $0x0, -0x18(%rbp)	 RIP: 4101a8	 Bytes: 4
  %loadMem_4101a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4101a8 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4101a8)
  store %struct.Memory* %call_4101a8, %struct.Memory** %MEMORY

  ; Code: jge .L_410513	 RIP: 4101ac	 Bytes: 6
  %loadMem_4101ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4101ac = call %struct.Memory* @routine_jge_.L_410513(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4101ac, i8* %BRANCH_TAKEN, i64 871, i64 6, i64 6)
  store %struct.Memory* %call_4101ac, %struct.Memory** %MEMORY

  %loadBr_4101ac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4101ac = icmp eq i8 %loadBr_4101ac, 1
  br i1 %cmpBr_4101ac, label %block_.L_410513, label %block_4101b2

block_4101b2:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 4101b2	 Bytes: 3
  %loadMem_4101b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4101b2 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4101b2)
  store %struct.Memory* %call_4101b2, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4101b5	 Bytes: 3
  %loadMem_4101b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4101b5 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4101b5)
  store %struct.Memory* %call_4101b5, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4101b8	 Bytes: 3
  %loadMem_4101b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4101b8 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4101b8)
  store %struct.Memory* %call_4101b8, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4101bb	 Bytes: 8
  %loadMem_4101bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4101bb = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4101bb)
  store %struct.Memory* %call_4101bb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4101c3	 Bytes: 3
  %loadMem_4101c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4101c3 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4101c3)
  store %struct.Memory* %call_4101c3, %struct.Memory** %MEMORY

  ; Code: jne .L_410280	 RIP: 4101c6	 Bytes: 6
  %loadMem_4101c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4101c6 = call %struct.Memory* @routine_jne_.L_410280(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4101c6, i8* %BRANCH_TAKEN, i64 186, i64 6, i64 6)
  store %struct.Memory* %call_4101c6, %struct.Memory** %MEMORY

  %loadBr_4101c6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4101c6 = icmp eq i8 %loadBr_4101c6, 1
  br i1 %cmpBr_4101c6, label %block_.L_410280, label %block_4101cc

block_4101cc:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 4101cc	 Bytes: 3
  %loadMem_4101cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4101cc = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4101cc)
  store %struct.Memory* %call_4101cc, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4101cf	 Bytes: 3
  %loadMem_4101cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4101cf = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4101cf)
  store %struct.Memory* %call_4101cf, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4101d2	 Bytes: 3
  %loadMem_4101d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4101d2 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4101d2)
  store %struct.Memory* %call_4101d2, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4101d5	 Bytes: 3
  %loadMem_4101d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4101d5 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4101d5)
  store %struct.Memory* %call_4101d5, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4101d8	 Bytes: 8
  %loadMem_4101d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4101d8 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4101d8)
  store %struct.Memory* %call_4101d8, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4101e0	 Bytes: 3
  %loadMem_4101e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4101e0 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4101e0)
  store %struct.Memory* %call_4101e0, %struct.Memory** %MEMORY

  ; Code: jne .L_410205	 RIP: 4101e3	 Bytes: 6
  %loadMem_4101e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4101e3 = call %struct.Memory* @routine_jne_.L_410205(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4101e3, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_4101e3, %struct.Memory** %MEMORY

  %loadBr_4101e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4101e3 = icmp eq i8 %loadBr_4101e3, 1
  br i1 %cmpBr_4101e3, label %block_.L_410205, label %block_4101e9

block_4101e9:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 4101e9	 Bytes: 3
  %loadMem_4101e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4101e9 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4101e9)
  store %struct.Memory* %call_4101e9, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4101ec	 Bytes: 3
  %loadMem_4101ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4101ec = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4101ec)
  store %struct.Memory* %call_4101ec, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4101ef	 Bytes: 3
  %loadMem_4101ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4101ef = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4101ef)
  store %struct.Memory* %call_4101ef, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4101f2	 Bytes: 3
  %loadMem_4101f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4101f2 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4101f2)
  store %struct.Memory* %call_4101f2, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 4101f5	 Bytes: 7
  %loadMem_4101f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4101f5 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4101f5)
  store %struct.Memory* %call_4101f5, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 4101fc	 Bytes: 3
  %loadMem_4101fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4101fc = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4101fc)
  store %struct.Memory* %call_4101fc, %struct.Memory** %MEMORY

  ; Code: je .L_410280	 RIP: 4101ff	 Bytes: 6
  %loadMem_4101ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4101ff = call %struct.Memory* @routine_je_.L_410280(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4101ff, i8* %BRANCH_TAKEN, i64 129, i64 6, i64 6)
  store %struct.Memory* %call_4101ff, %struct.Memory** %MEMORY

  %loadBr_4101ff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4101ff = icmp eq i8 %loadBr_4101ff, 1
  br i1 %cmpBr_4101ff, label %block_.L_410280, label %block_.L_410205

  ; Code: .L_410205:	 RIP: 410205	 Bytes: 0
block_.L_410205:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 410205	 Bytes: 3
  %loadMem_410205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410205 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410205)
  store %struct.Memory* %call_410205, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 410208	 Bytes: 3
  %loadMem_410208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410208 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410208)
  store %struct.Memory* %call_410208, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 41020b	 Bytes: 3
  %loadMem_41020b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41020b = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41020b)
  store %struct.Memory* %call_41020b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 41020e	 Bytes: 3
  %loadMem_41020e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41020e = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41020e)
  store %struct.Memory* %call_41020e, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410211	 Bytes: 8
  %loadMem_410211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410211 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410211)
  store %struct.Memory* %call_410211, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 410219	 Bytes: 3
  %loadMem_410219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410219 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410219)
  store %struct.Memory* %call_410219, %struct.Memory** %MEMORY

  ; Code: jne .L_41023e	 RIP: 41021c	 Bytes: 6
  %loadMem_41021c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41021c = call %struct.Memory* @routine_jne_.L_41023e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41021c, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_41021c, %struct.Memory** %MEMORY

  %loadBr_41021c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41021c = icmp eq i8 %loadBr_41021c, 1
  br i1 %cmpBr_41021c, label %block_.L_41023e, label %block_410222

block_410222:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 410222	 Bytes: 3
  %loadMem_410222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410222 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410222)
  store %struct.Memory* %call_410222, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 410225	 Bytes: 3
  %loadMem_410225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410225 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410225)
  store %struct.Memory* %call_410225, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 410228	 Bytes: 3
  %loadMem_410228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410228 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410228)
  store %struct.Memory* %call_410228, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 41022b	 Bytes: 3
  %loadMem_41022b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41022b = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41022b)
  store %struct.Memory* %call_41022b, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 41022e	 Bytes: 7
  %loadMem_41022e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41022e = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41022e)
  store %struct.Memory* %call_41022e, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 410235	 Bytes: 3
  %loadMem_410235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410235 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410235)
  store %struct.Memory* %call_410235, %struct.Memory** %MEMORY

  ; Code: je .L_410280	 RIP: 410238	 Bytes: 6
  %loadMem_410238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410238 = call %struct.Memory* @routine_je_.L_410280(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410238, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_410238, %struct.Memory** %MEMORY

  %loadBr_410238 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410238 = icmp eq i8 %loadBr_410238, 1
  br i1 %cmpBr_410238, label %block_.L_410280, label %block_.L_41023e

  ; Code: .L_41023e:	 RIP: 41023e	 Bytes: 0
block_.L_41023e:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 41023e	 Bytes: 3
  %loadMem_41023e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41023e = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41023e)
  store %struct.Memory* %call_41023e, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 410241	 Bytes: 3
  %loadMem_410241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410241 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410241)
  store %struct.Memory* %call_410241, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410244	 Bytes: 3
  %loadMem_410244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410244 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410244)
  store %struct.Memory* %call_410244, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410247	 Bytes: 3
  %loadMem_410247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410247 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410247)
  store %struct.Memory* %call_410247, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 41024a	 Bytes: 8
  %loadMem_41024a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41024a = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41024a)
  store %struct.Memory* %call_41024a, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 410252	 Bytes: 3
  %loadMem_410252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410252 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410252)
  store %struct.Memory* %call_410252, %struct.Memory** %MEMORY

  ; Code: jne .L_410277	 RIP: 410255	 Bytes: 6
  %loadMem_410255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410255 = call %struct.Memory* @routine_jne_.L_410277(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410255, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_410255, %struct.Memory** %MEMORY

  %loadBr_410255 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410255 = icmp eq i8 %loadBr_410255, 1
  br i1 %cmpBr_410255, label %block_.L_410277, label %block_41025b

block_41025b:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 41025b	 Bytes: 3
  %loadMem_41025b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41025b = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41025b)
  store %struct.Memory* %call_41025b, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 41025e	 Bytes: 3
  %loadMem_41025e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41025e = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41025e)
  store %struct.Memory* %call_41025e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410261	 Bytes: 3
  %loadMem_410261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410261 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410261)
  store %struct.Memory* %call_410261, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410264	 Bytes: 3
  %loadMem_410264 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410264 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410264)
  store %struct.Memory* %call_410264, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 410267	 Bytes: 7
  %loadMem_410267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410267 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410267)
  store %struct.Memory* %call_410267, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 41026e	 Bytes: 3
  %loadMem_41026e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41026e = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41026e)
  store %struct.Memory* %call_41026e, %struct.Memory** %MEMORY

  ; Code: je .L_410280	 RIP: 410271	 Bytes: 6
  %loadMem_410271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410271 = call %struct.Memory* @routine_je_.L_410280(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410271, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_410271, %struct.Memory** %MEMORY

  %loadBr_410271 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410271 = icmp eq i8 %loadBr_410271, 1
  br i1 %cmpBr_410271, label %block_.L_410280, label %block_.L_410277

  ; Code: .L_410277:	 RIP: 410277	 Bytes: 0
block_.L_410277:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 410277	 Bytes: 3
  %loadMem_410277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410277 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410277)
  store %struct.Memory* %call_410277, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41027a	 Bytes: 3
  %loadMem_41027a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41027a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41027a)
  store %struct.Memory* %call_41027a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 41027d	 Bytes: 3
  %loadMem_41027d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41027d = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41027d)
  store %struct.Memory* %call_41027d, %struct.Memory** %MEMORY

  ; Code: .L_410280:	 RIP: 410280	 Bytes: 0
  br label %block_.L_410280
block_.L_410280:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 410280	 Bytes: 3
  %loadMem_410280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410280 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410280)
  store %struct.Memory* %call_410280, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 410283	 Bytes: 3
  %loadMem_410283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410283 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410283)
  store %struct.Memory* %call_410283, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410286	 Bytes: 3
  %loadMem_410286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410286 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410286)
  store %struct.Memory* %call_410286, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410289	 Bytes: 8
  %loadMem_410289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410289 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410289)
  store %struct.Memory* %call_410289, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 410291	 Bytes: 3
  %loadMem_410291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410291 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410291)
  store %struct.Memory* %call_410291, %struct.Memory** %MEMORY

  ; Code: jne .L_41034e	 RIP: 410294	 Bytes: 6
  %loadMem_410294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410294 = call %struct.Memory* @routine_jne_.L_41034e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410294, i8* %BRANCH_TAKEN, i64 186, i64 6, i64 6)
  store %struct.Memory* %call_410294, %struct.Memory** %MEMORY

  %loadBr_410294 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410294 = icmp eq i8 %loadBr_410294, 1
  br i1 %cmpBr_410294, label %block_.L_41034e, label %block_41029a

block_41029a:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 41029a	 Bytes: 3
  %loadMem_41029a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41029a = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41029a)
  store %struct.Memory* %call_41029a, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 41029d	 Bytes: 3
  %loadMem_41029d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41029d = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41029d)
  store %struct.Memory* %call_41029d, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4102a0	 Bytes: 3
  %loadMem_4102a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102a0 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102a0)
  store %struct.Memory* %call_4102a0, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4102a3	 Bytes: 3
  %loadMem_4102a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102a3 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102a3)
  store %struct.Memory* %call_4102a3, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4102a6	 Bytes: 8
  %loadMem_4102a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102a6 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102a6)
  store %struct.Memory* %call_4102a6, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4102ae	 Bytes: 3
  %loadMem_4102ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102ae = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102ae)
  store %struct.Memory* %call_4102ae, %struct.Memory** %MEMORY

  ; Code: jne .L_4102d3	 RIP: 4102b1	 Bytes: 6
  %loadMem_4102b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102b1 = call %struct.Memory* @routine_jne_.L_4102d3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102b1, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_4102b1, %struct.Memory** %MEMORY

  %loadBr_4102b1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4102b1 = icmp eq i8 %loadBr_4102b1, 1
  br i1 %cmpBr_4102b1, label %block_.L_4102d3, label %block_4102b7

block_4102b7:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 4102b7	 Bytes: 3
  %loadMem_4102b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102b7 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102b7)
  store %struct.Memory* %call_4102b7, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4102ba	 Bytes: 3
  %loadMem_4102ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102ba = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102ba)
  store %struct.Memory* %call_4102ba, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4102bd	 Bytes: 3
  %loadMem_4102bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102bd = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102bd)
  store %struct.Memory* %call_4102bd, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4102c0	 Bytes: 3
  %loadMem_4102c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102c0 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102c0)
  store %struct.Memory* %call_4102c0, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 4102c3	 Bytes: 7
  %loadMem_4102c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102c3 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102c3)
  store %struct.Memory* %call_4102c3, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 4102ca	 Bytes: 3
  %loadMem_4102ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102ca = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102ca)
  store %struct.Memory* %call_4102ca, %struct.Memory** %MEMORY

  ; Code: je .L_41034e	 RIP: 4102cd	 Bytes: 6
  %loadMem_4102cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102cd = call %struct.Memory* @routine_je_.L_41034e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102cd, i8* %BRANCH_TAKEN, i64 129, i64 6, i64 6)
  store %struct.Memory* %call_4102cd, %struct.Memory** %MEMORY

  %loadBr_4102cd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4102cd = icmp eq i8 %loadBr_4102cd, 1
  br i1 %cmpBr_4102cd, label %block_.L_41034e, label %block_.L_4102d3

  ; Code: .L_4102d3:	 RIP: 4102d3	 Bytes: 0
block_.L_4102d3:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4102d3	 Bytes: 3
  %loadMem_4102d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102d3 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102d3)
  store %struct.Memory* %call_4102d3, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4102d6	 Bytes: 3
  %loadMem_4102d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102d6 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102d6)
  store %struct.Memory* %call_4102d6, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4102d9	 Bytes: 3
  %loadMem_4102d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102d9 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102d9)
  store %struct.Memory* %call_4102d9, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4102dc	 Bytes: 3
  %loadMem_4102dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102dc = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102dc)
  store %struct.Memory* %call_4102dc, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4102df	 Bytes: 8
  %loadMem_4102df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102df = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102df)
  store %struct.Memory* %call_4102df, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4102e7	 Bytes: 3
  %loadMem_4102e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102e7 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102e7)
  store %struct.Memory* %call_4102e7, %struct.Memory** %MEMORY

  ; Code: jne .L_41030c	 RIP: 4102ea	 Bytes: 6
  %loadMem_4102ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102ea = call %struct.Memory* @routine_jne_.L_41030c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102ea, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_4102ea, %struct.Memory** %MEMORY

  %loadBr_4102ea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4102ea = icmp eq i8 %loadBr_4102ea, 1
  br i1 %cmpBr_4102ea, label %block_.L_41030c, label %block_4102f0

block_4102f0:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 4102f0	 Bytes: 3
  %loadMem_4102f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102f0 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102f0)
  store %struct.Memory* %call_4102f0, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4102f3	 Bytes: 3
  %loadMem_4102f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102f3 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102f3)
  store %struct.Memory* %call_4102f3, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4102f6	 Bytes: 3
  %loadMem_4102f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102f6 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102f6)
  store %struct.Memory* %call_4102f6, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4102f9	 Bytes: 3
  %loadMem_4102f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102f9 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102f9)
  store %struct.Memory* %call_4102f9, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 4102fc	 Bytes: 7
  %loadMem_4102fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4102fc = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4102fc)
  store %struct.Memory* %call_4102fc, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 410303	 Bytes: 3
  %loadMem_410303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410303 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410303)
  store %struct.Memory* %call_410303, %struct.Memory** %MEMORY

  ; Code: je .L_41034e	 RIP: 410306	 Bytes: 6
  %loadMem_410306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410306 = call %struct.Memory* @routine_je_.L_41034e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410306, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_410306, %struct.Memory** %MEMORY

  %loadBr_410306 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410306 = icmp eq i8 %loadBr_410306, 1
  br i1 %cmpBr_410306, label %block_.L_41034e, label %block_.L_41030c

  ; Code: .L_41030c:	 RIP: 41030c	 Bytes: 0
block_.L_41030c:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 41030c	 Bytes: 3
  %loadMem_41030c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41030c = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41030c)
  store %struct.Memory* %call_41030c, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 41030f	 Bytes: 3
  %loadMem_41030f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41030f = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41030f)
  store %struct.Memory* %call_41030f, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 410312	 Bytes: 3
  %loadMem_410312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410312 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410312)
  store %struct.Memory* %call_410312, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410315	 Bytes: 3
  %loadMem_410315 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410315 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410315)
  store %struct.Memory* %call_410315, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410318	 Bytes: 8
  %loadMem_410318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410318 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410318)
  store %struct.Memory* %call_410318, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 410320	 Bytes: 3
  %loadMem_410320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410320 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410320)
  store %struct.Memory* %call_410320, %struct.Memory** %MEMORY

  ; Code: jne .L_410345	 RIP: 410323	 Bytes: 6
  %loadMem_410323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410323 = call %struct.Memory* @routine_jne_.L_410345(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410323, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_410323, %struct.Memory** %MEMORY

  %loadBr_410323 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410323 = icmp eq i8 %loadBr_410323, 1
  br i1 %cmpBr_410323, label %block_.L_410345, label %block_410329

block_410329:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 410329	 Bytes: 3
  %loadMem_410329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410329 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410329)
  store %struct.Memory* %call_410329, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 41032c	 Bytes: 3
  %loadMem_41032c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41032c = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41032c)
  store %struct.Memory* %call_41032c, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 41032f	 Bytes: 3
  %loadMem_41032f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41032f = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41032f)
  store %struct.Memory* %call_41032f, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410332	 Bytes: 3
  %loadMem_410332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410332 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410332)
  store %struct.Memory* %call_410332, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 410335	 Bytes: 7
  %loadMem_410335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410335 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410335)
  store %struct.Memory* %call_410335, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 41033c	 Bytes: 3
  %loadMem_41033c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41033c = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41033c)
  store %struct.Memory* %call_41033c, %struct.Memory** %MEMORY

  ; Code: je .L_41034e	 RIP: 41033f	 Bytes: 6
  %loadMem_41033f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41033f = call %struct.Memory* @routine_je_.L_41034e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41033f, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_41033f, %struct.Memory** %MEMORY

  %loadBr_41033f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41033f = icmp eq i8 %loadBr_41033f, 1
  br i1 %cmpBr_41033f, label %block_.L_41034e, label %block_.L_410345

  ; Code: .L_410345:	 RIP: 410345	 Bytes: 0
block_.L_410345:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 410345	 Bytes: 3
  %loadMem_410345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410345 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410345)
  store %struct.Memory* %call_410345, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410348	 Bytes: 3
  %loadMem_410348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410348 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410348)
  store %struct.Memory* %call_410348, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 41034b	 Bytes: 3
  %loadMem_41034b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41034b = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41034b)
  store %struct.Memory* %call_41034b, %struct.Memory** %MEMORY

  ; Code: .L_41034e:	 RIP: 41034e	 Bytes: 0
  br label %block_.L_41034e
block_.L_41034e:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 41034e	 Bytes: 3
  %loadMem_41034e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41034e = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41034e)
  store %struct.Memory* %call_41034e, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 410351	 Bytes: 3
  %loadMem_410351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410351 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410351)
  store %struct.Memory* %call_410351, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410354	 Bytes: 3
  %loadMem_410354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410354 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410354)
  store %struct.Memory* %call_410354, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410357	 Bytes: 8
  %loadMem_410357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410357 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410357)
  store %struct.Memory* %call_410357, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41035f	 Bytes: 3
  %loadMem_41035f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41035f = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41035f)
  store %struct.Memory* %call_41035f, %struct.Memory** %MEMORY

  ; Code: jne .L_41041c	 RIP: 410362	 Bytes: 6
  %loadMem_410362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410362 = call %struct.Memory* @routine_jne_.L_41041c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410362, i8* %BRANCH_TAKEN, i64 186, i64 6, i64 6)
  store %struct.Memory* %call_410362, %struct.Memory** %MEMORY

  %loadBr_410362 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410362 = icmp eq i8 %loadBr_410362, 1
  br i1 %cmpBr_410362, label %block_.L_41041c, label %block_410368

block_410368:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 410368	 Bytes: 3
  %loadMem_410368 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410368 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410368)
  store %struct.Memory* %call_410368, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 41036b	 Bytes: 3
  %loadMem_41036b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41036b = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41036b)
  store %struct.Memory* %call_41036b, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 41036e	 Bytes: 3
  %loadMem_41036e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41036e = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41036e)
  store %struct.Memory* %call_41036e, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410371	 Bytes: 3
  %loadMem_410371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410371 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410371)
  store %struct.Memory* %call_410371, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410374	 Bytes: 8
  %loadMem_410374 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410374 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410374)
  store %struct.Memory* %call_410374, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 41037c	 Bytes: 3
  %loadMem_41037c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41037c = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41037c)
  store %struct.Memory* %call_41037c, %struct.Memory** %MEMORY

  ; Code: jne .L_4103a1	 RIP: 41037f	 Bytes: 6
  %loadMem_41037f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41037f = call %struct.Memory* @routine_jne_.L_4103a1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41037f, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_41037f, %struct.Memory** %MEMORY

  %loadBr_41037f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41037f = icmp eq i8 %loadBr_41037f, 1
  br i1 %cmpBr_41037f, label %block_.L_4103a1, label %block_410385

block_410385:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 410385	 Bytes: 3
  %loadMem_410385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410385 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410385)
  store %struct.Memory* %call_410385, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 410388	 Bytes: 3
  %loadMem_410388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410388 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410388)
  store %struct.Memory* %call_410388, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 41038b	 Bytes: 3
  %loadMem_41038b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41038b = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41038b)
  store %struct.Memory* %call_41038b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 41038e	 Bytes: 3
  %loadMem_41038e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41038e = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41038e)
  store %struct.Memory* %call_41038e, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 410391	 Bytes: 7
  %loadMem_410391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410391 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410391)
  store %struct.Memory* %call_410391, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 410398	 Bytes: 3
  %loadMem_410398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410398 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410398)
  store %struct.Memory* %call_410398, %struct.Memory** %MEMORY

  ; Code: je .L_41041c	 RIP: 41039b	 Bytes: 6
  %loadMem_41039b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41039b = call %struct.Memory* @routine_je_.L_41041c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41039b, i8* %BRANCH_TAKEN, i64 129, i64 6, i64 6)
  store %struct.Memory* %call_41039b, %struct.Memory** %MEMORY

  %loadBr_41039b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41039b = icmp eq i8 %loadBr_41039b, 1
  br i1 %cmpBr_41039b, label %block_.L_41041c, label %block_.L_4103a1

  ; Code: .L_4103a1:	 RIP: 4103a1	 Bytes: 0
block_.L_4103a1:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4103a1	 Bytes: 3
  %loadMem_4103a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103a1 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103a1)
  store %struct.Memory* %call_4103a1, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4103a4	 Bytes: 3
  %loadMem_4103a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103a4 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103a4)
  store %struct.Memory* %call_4103a4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4103a7	 Bytes: 3
  %loadMem_4103a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103a7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103a7)
  store %struct.Memory* %call_4103a7, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4103aa	 Bytes: 3
  %loadMem_4103aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103aa = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103aa)
  store %struct.Memory* %call_4103aa, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4103ad	 Bytes: 8
  %loadMem_4103ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103ad = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103ad)
  store %struct.Memory* %call_4103ad, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4103b5	 Bytes: 3
  %loadMem_4103b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103b5 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103b5)
  store %struct.Memory* %call_4103b5, %struct.Memory** %MEMORY

  ; Code: jne .L_4103da	 RIP: 4103b8	 Bytes: 6
  %loadMem_4103b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103b8 = call %struct.Memory* @routine_jne_.L_4103da(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103b8, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_4103b8, %struct.Memory** %MEMORY

  %loadBr_4103b8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4103b8 = icmp eq i8 %loadBr_4103b8, 1
  br i1 %cmpBr_4103b8, label %block_.L_4103da, label %block_4103be

block_4103be:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 4103be	 Bytes: 3
  %loadMem_4103be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103be = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103be)
  store %struct.Memory* %call_4103be, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4103c1	 Bytes: 3
  %loadMem_4103c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103c1 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103c1)
  store %struct.Memory* %call_4103c1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4103c4	 Bytes: 3
  %loadMem_4103c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103c4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103c4)
  store %struct.Memory* %call_4103c4, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4103c7	 Bytes: 3
  %loadMem_4103c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103c7 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103c7)
  store %struct.Memory* %call_4103c7, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 4103ca	 Bytes: 7
  %loadMem_4103ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103ca = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103ca)
  store %struct.Memory* %call_4103ca, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 4103d1	 Bytes: 3
  %loadMem_4103d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103d1 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103d1)
  store %struct.Memory* %call_4103d1, %struct.Memory** %MEMORY

  ; Code: je .L_41041c	 RIP: 4103d4	 Bytes: 6
  %loadMem_4103d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103d4 = call %struct.Memory* @routine_je_.L_41041c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103d4, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_4103d4, %struct.Memory** %MEMORY

  %loadBr_4103d4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4103d4 = icmp eq i8 %loadBr_4103d4, 1
  br i1 %cmpBr_4103d4, label %block_.L_41041c, label %block_.L_4103da

  ; Code: .L_4103da:	 RIP: 4103da	 Bytes: 0
block_.L_4103da:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4103da	 Bytes: 3
  %loadMem_4103da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103da = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103da)
  store %struct.Memory* %call_4103da, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4103dd	 Bytes: 3
  %loadMem_4103dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103dd = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103dd)
  store %struct.Memory* %call_4103dd, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4103e0	 Bytes: 3
  %loadMem_4103e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103e0 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103e0)
  store %struct.Memory* %call_4103e0, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4103e3	 Bytes: 3
  %loadMem_4103e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103e3 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103e3)
  store %struct.Memory* %call_4103e3, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4103e6	 Bytes: 8
  %loadMem_4103e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103e6 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103e6)
  store %struct.Memory* %call_4103e6, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4103ee	 Bytes: 3
  %loadMem_4103ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103ee = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103ee)
  store %struct.Memory* %call_4103ee, %struct.Memory** %MEMORY

  ; Code: jne .L_410413	 RIP: 4103f1	 Bytes: 6
  %loadMem_4103f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103f1 = call %struct.Memory* @routine_jne_.L_410413(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103f1, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_4103f1, %struct.Memory** %MEMORY

  %loadBr_4103f1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4103f1 = icmp eq i8 %loadBr_4103f1, 1
  br i1 %cmpBr_4103f1, label %block_.L_410413, label %block_4103f7

block_4103f7:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 4103f7	 Bytes: 3
  %loadMem_4103f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103f7 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103f7)
  store %struct.Memory* %call_4103f7, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4103fa	 Bytes: 3
  %loadMem_4103fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103fa = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103fa)
  store %struct.Memory* %call_4103fa, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4103fd	 Bytes: 3
  %loadMem_4103fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4103fd = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4103fd)
  store %struct.Memory* %call_4103fd, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410400	 Bytes: 3
  %loadMem_410400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410400 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410400)
  store %struct.Memory* %call_410400, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 410403	 Bytes: 7
  %loadMem_410403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410403 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410403)
  store %struct.Memory* %call_410403, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 41040a	 Bytes: 3
  %loadMem_41040a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41040a = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41040a)
  store %struct.Memory* %call_41040a, %struct.Memory** %MEMORY

  ; Code: je .L_41041c	 RIP: 41040d	 Bytes: 6
  %loadMem_41040d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41040d = call %struct.Memory* @routine_je_.L_41041c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41040d, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_41040d, %struct.Memory** %MEMORY

  %loadBr_41040d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41040d = icmp eq i8 %loadBr_41040d, 1
  br i1 %cmpBr_41040d, label %block_.L_41041c, label %block_.L_410413

  ; Code: .L_410413:	 RIP: 410413	 Bytes: 0
block_.L_410413:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 410413	 Bytes: 3
  %loadMem_410413 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410413 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410413)
  store %struct.Memory* %call_410413, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410416	 Bytes: 3
  %loadMem_410416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410416 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410416)
  store %struct.Memory* %call_410416, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 410419	 Bytes: 3
  %loadMem_410419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410419 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410419)
  store %struct.Memory* %call_410419, %struct.Memory** %MEMORY

  ; Code: .L_41041c:	 RIP: 41041c	 Bytes: 0
  br label %block_.L_41041c
block_.L_41041c:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 41041c	 Bytes: 3
  %loadMem_41041c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41041c = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41041c)
  store %struct.Memory* %call_41041c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41041f	 Bytes: 3
  %loadMem_41041f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41041f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41041f)
  store %struct.Memory* %call_41041f, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410422	 Bytes: 3
  %loadMem_410422 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410422 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410422)
  store %struct.Memory* %call_410422, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410425	 Bytes: 8
  %loadMem_410425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410425 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410425)
  store %struct.Memory* %call_410425, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41042d	 Bytes: 3
  %loadMem_41042d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41042d = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41042d)
  store %struct.Memory* %call_41042d, %struct.Memory** %MEMORY

  ; Code: jne .L_4104ea	 RIP: 410430	 Bytes: 6
  %loadMem_410430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410430 = call %struct.Memory* @routine_jne_.L_4104ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410430, i8* %BRANCH_TAKEN, i64 186, i64 6, i64 6)
  store %struct.Memory* %call_410430, %struct.Memory** %MEMORY

  %loadBr_410430 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410430 = icmp eq i8 %loadBr_410430, 1
  br i1 %cmpBr_410430, label %block_.L_4104ea, label %block_410436

block_410436:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 410436	 Bytes: 3
  %loadMem_410436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410436 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410436)
  store %struct.Memory* %call_410436, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410439	 Bytes: 3
  %loadMem_410439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410439 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410439)
  store %struct.Memory* %call_410439, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41043c	 Bytes: 3
  %loadMem_41043c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41043c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41043c)
  store %struct.Memory* %call_41043c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 41043f	 Bytes: 3
  %loadMem_41043f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41043f = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41043f)
  store %struct.Memory* %call_41043f, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410442	 Bytes: 8
  %loadMem_410442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410442 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410442)
  store %struct.Memory* %call_410442, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 41044a	 Bytes: 3
  %loadMem_41044a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41044a = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41044a)
  store %struct.Memory* %call_41044a, %struct.Memory** %MEMORY

  ; Code: jne .L_41046f	 RIP: 41044d	 Bytes: 6
  %loadMem_41044d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41044d = call %struct.Memory* @routine_jne_.L_41046f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41044d, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_41044d, %struct.Memory** %MEMORY

  %loadBr_41044d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41044d = icmp eq i8 %loadBr_41044d, 1
  br i1 %cmpBr_41044d, label %block_.L_41046f, label %block_410453

block_410453:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 410453	 Bytes: 3
  %loadMem_410453 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410453 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410453)
  store %struct.Memory* %call_410453, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410456	 Bytes: 3
  %loadMem_410456 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410456 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410456)
  store %struct.Memory* %call_410456, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410459	 Bytes: 3
  %loadMem_410459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410459 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410459)
  store %struct.Memory* %call_410459, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 41045c	 Bytes: 3
  %loadMem_41045c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41045c = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41045c)
  store %struct.Memory* %call_41045c, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 41045f	 Bytes: 7
  %loadMem_41045f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41045f = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41045f)
  store %struct.Memory* %call_41045f, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 410466	 Bytes: 3
  %loadMem_410466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410466 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410466)
  store %struct.Memory* %call_410466, %struct.Memory** %MEMORY

  ; Code: je .L_4104ea	 RIP: 410469	 Bytes: 6
  %loadMem_410469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410469 = call %struct.Memory* @routine_je_.L_4104ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410469, i8* %BRANCH_TAKEN, i64 129, i64 6, i64 6)
  store %struct.Memory* %call_410469, %struct.Memory** %MEMORY

  %loadBr_410469 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410469 = icmp eq i8 %loadBr_410469, 1
  br i1 %cmpBr_410469, label %block_.L_4104ea, label %block_.L_41046f

  ; Code: .L_41046f:	 RIP: 41046f	 Bytes: 0
block_.L_41046f:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 41046f	 Bytes: 3
  %loadMem_41046f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41046f = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41046f)
  store %struct.Memory* %call_41046f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410472	 Bytes: 3
  %loadMem_410472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410472 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410472)
  store %struct.Memory* %call_410472, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 410475	 Bytes: 3
  %loadMem_410475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410475 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410475)
  store %struct.Memory* %call_410475, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410478	 Bytes: 3
  %loadMem_410478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410478 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410478)
  store %struct.Memory* %call_410478, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 41047b	 Bytes: 8
  %loadMem_41047b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41047b = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41047b)
  store %struct.Memory* %call_41047b, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 410483	 Bytes: 3
  %loadMem_410483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410483 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410483)
  store %struct.Memory* %call_410483, %struct.Memory** %MEMORY

  ; Code: jne .L_4104a8	 RIP: 410486	 Bytes: 6
  %loadMem_410486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410486 = call %struct.Memory* @routine_jne_.L_4104a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410486, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_410486, %struct.Memory** %MEMORY

  %loadBr_410486 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410486 = icmp eq i8 %loadBr_410486, 1
  br i1 %cmpBr_410486, label %block_.L_4104a8, label %block_41048c

block_41048c:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 41048c	 Bytes: 3
  %loadMem_41048c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41048c = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41048c)
  store %struct.Memory* %call_41048c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41048f	 Bytes: 3
  %loadMem_41048f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41048f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41048f)
  store %struct.Memory* %call_41048f, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 410492	 Bytes: 3
  %loadMem_410492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410492 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410492)
  store %struct.Memory* %call_410492, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410495	 Bytes: 3
  %loadMem_410495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410495 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410495)
  store %struct.Memory* %call_410495, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 410498	 Bytes: 7
  %loadMem_410498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410498 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410498)
  store %struct.Memory* %call_410498, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 41049f	 Bytes: 3
  %loadMem_41049f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41049f = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41049f)
  store %struct.Memory* %call_41049f, %struct.Memory** %MEMORY

  ; Code: je .L_4104ea	 RIP: 4104a2	 Bytes: 6
  %loadMem_4104a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104a2 = call %struct.Memory* @routine_je_.L_4104ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104a2, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_4104a2, %struct.Memory** %MEMORY

  %loadBr_4104a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4104a2 = icmp eq i8 %loadBr_4104a2, 1
  br i1 %cmpBr_4104a2, label %block_.L_4104ea, label %block_.L_4104a8

  ; Code: .L_4104a8:	 RIP: 4104a8	 Bytes: 0
block_.L_4104a8:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4104a8	 Bytes: 3
  %loadMem_4104a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104a8 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104a8)
  store %struct.Memory* %call_4104a8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4104ab	 Bytes: 3
  %loadMem_4104ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104ab = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104ab)
  store %struct.Memory* %call_4104ab, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4104ae	 Bytes: 3
  %loadMem_4104ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104ae = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104ae)
  store %struct.Memory* %call_4104ae, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4104b1	 Bytes: 3
  %loadMem_4104b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104b1 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104b1)
  store %struct.Memory* %call_4104b1, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4104b4	 Bytes: 8
  %loadMem_4104b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104b4 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104b4)
  store %struct.Memory* %call_4104b4, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4104bc	 Bytes: 3
  %loadMem_4104bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104bc = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104bc)
  store %struct.Memory* %call_4104bc, %struct.Memory** %MEMORY

  ; Code: jne .L_4104e1	 RIP: 4104bf	 Bytes: 6
  %loadMem_4104bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104bf = call %struct.Memory* @routine_jne_.L_4104e1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104bf, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_4104bf, %struct.Memory** %MEMORY

  %loadBr_4104bf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4104bf = icmp eq i8 %loadBr_4104bf, 1
  br i1 %cmpBr_4104bf, label %block_.L_4104e1, label %block_4104c5

block_4104c5:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 4104c5	 Bytes: 3
  %loadMem_4104c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104c5 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104c5)
  store %struct.Memory* %call_4104c5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4104c8	 Bytes: 3
  %loadMem_4104c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104c8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104c8)
  store %struct.Memory* %call_4104c8, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4104cb	 Bytes: 3
  %loadMem_4104cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104cb = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104cb)
  store %struct.Memory* %call_4104cb, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4104ce	 Bytes: 3
  %loadMem_4104ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104ce = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104ce)
  store %struct.Memory* %call_4104ce, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 4104d1	 Bytes: 7
  %loadMem_4104d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104d1 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104d1)
  store %struct.Memory* %call_4104d1, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 4104d8	 Bytes: 3
  %loadMem_4104d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104d8 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104d8)
  store %struct.Memory* %call_4104d8, %struct.Memory** %MEMORY

  ; Code: je .L_4104ea	 RIP: 4104db	 Bytes: 6
  %loadMem_4104db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104db = call %struct.Memory* @routine_je_.L_4104ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104db, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_4104db, %struct.Memory** %MEMORY

  %loadBr_4104db = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4104db = icmp eq i8 %loadBr_4104db, 1
  br i1 %cmpBr_4104db, label %block_.L_4104ea, label %block_.L_4104e1

  ; Code: .L_4104e1:	 RIP: 4104e1	 Bytes: 0
block_.L_4104e1:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4104e1	 Bytes: 3
  %loadMem_4104e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104e1 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104e1)
  store %struct.Memory* %call_4104e1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4104e4	 Bytes: 3
  %loadMem_4104e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104e4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104e4)
  store %struct.Memory* %call_4104e4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 4104e7	 Bytes: 3
  %loadMem_4104e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104e7 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104e7)
  store %struct.Memory* %call_4104e7, %struct.Memory** %MEMORY

  ; Code: .L_4104ea:	 RIP: 4104ea	 Bytes: 0
  br label %block_.L_4104ea
block_.L_4104ea:

  ; Code: movq $0xa7f430, %rax	 RIP: 4104ea	 Bytes: 10
  %loadMem_4104ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104ea = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104ea)
  store %struct.Memory* %call_4104ea, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 4104f4	 Bytes: 4
  %loadMem_4104f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104f4 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104f4)
  store %struct.Memory* %call_4104f4, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 4104f8	 Bytes: 7
  %loadMem_4104f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104f8 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104f8)
  store %struct.Memory* %call_4104f8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4104ff	 Bytes: 3
  %loadMem_4104ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4104ff = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4104ff)
  store %struct.Memory* %call_4104ff, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 410502	 Bytes: 3
  %loadMem_410502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410502 = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410502)
  store %struct.Memory* %call_410502, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 410505	 Bytes: 3
  %loadMem_410505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410505 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410505)
  store %struct.Memory* %call_410505, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %edx	 RIP: 410508	 Bytes: 3
  %loadMem_410508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410508 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410508)
  store %struct.Memory* %call_410508, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x1c(%rbp)	 RIP: 41050b	 Bytes: 3
  %loadMem_41050b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41050b = call %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41050b)
  store %struct.Memory* %call_41050b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_410b68	 RIP: 41050e	 Bytes: 5
  %loadMem_41050e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41050e = call %struct.Memory* @routine_jmpq_.L_410b68(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41050e, i64 1626, i64 5)
  store %struct.Memory* %call_41050e, %struct.Memory** %MEMORY

  br label %block_.L_410b68

  ; Code: .L_410513:	 RIP: 410513	 Bytes: 0
block_.L_410513:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 410513	 Bytes: 3
  %loadMem_410513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410513 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410513)
  store %struct.Memory* %call_410513, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 410516	 Bytes: 3
  %loadMem_410516 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410516 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410516)
  store %struct.Memory* %call_410516, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410519	 Bytes: 3
  %loadMem_410519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410519 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410519)
  store %struct.Memory* %call_410519, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 41051c	 Bytes: 8
  %loadMem_41051c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41051c = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41051c)
  store %struct.Memory* %call_41051c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 410524	 Bytes: 3
  %loadMem_410524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410524 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410524)
  store %struct.Memory* %call_410524, %struct.Memory** %MEMORY

  ; Code: jne .L_41068c	 RIP: 410527	 Bytes: 6
  %loadMem_410527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410527 = call %struct.Memory* @routine_jne_.L_41068c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410527, i8* %BRANCH_TAKEN, i64 357, i64 6, i64 6)
  store %struct.Memory* %call_410527, %struct.Memory** %MEMORY

  %loadBr_410527 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410527 = icmp eq i8 %loadBr_410527, 1
  br i1 %cmpBr_410527, label %block_.L_41068c, label %block_41052d

block_41052d:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 41052d	 Bytes: 3
  %loadMem_41052d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41052d = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41052d)
  store %struct.Memory* %call_41052d, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 410530	 Bytes: 3
  %loadMem_410530 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410530 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410530)
  store %struct.Memory* %call_410530, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 410533	 Bytes: 3
  %loadMem_410533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410533 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410533)
  store %struct.Memory* %call_410533, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410536	 Bytes: 3
  %loadMem_410536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410536 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410536)
  store %struct.Memory* %call_410536, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410539	 Bytes: 8
  %loadMem_410539 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410539 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410539)
  store %struct.Memory* %call_410539, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 410541	 Bytes: 3
  %loadMem_410541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410541 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410541)
  store %struct.Memory* %call_410541, %struct.Memory** %MEMORY

  ; Code: jne .L_410566	 RIP: 410544	 Bytes: 6
  %loadMem_410544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410544 = call %struct.Memory* @routine_jne_.L_410566(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410544, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_410544, %struct.Memory** %MEMORY

  %loadBr_410544 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410544 = icmp eq i8 %loadBr_410544, 1
  br i1 %cmpBr_410544, label %block_.L_410566, label %block_41054a

block_41054a:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 41054a	 Bytes: 3
  %loadMem_41054a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41054a = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41054a)
  store %struct.Memory* %call_41054a, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 41054d	 Bytes: 3
  %loadMem_41054d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41054d = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41054d)
  store %struct.Memory* %call_41054d, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 410550	 Bytes: 3
  %loadMem_410550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410550 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410550)
  store %struct.Memory* %call_410550, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410553	 Bytes: 3
  %loadMem_410553 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410553 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410553)
  store %struct.Memory* %call_410553, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 410556	 Bytes: 7
  %loadMem_410556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410556 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410556)
  store %struct.Memory* %call_410556, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 41055d	 Bytes: 3
  %loadMem_41055d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41055d = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41055d)
  store %struct.Memory* %call_41055d, %struct.Memory** %MEMORY

  ; Code: je .L_41068c	 RIP: 410560	 Bytes: 6
  %loadMem_410560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410560 = call %struct.Memory* @routine_je_.L_41068c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410560, i8* %BRANCH_TAKEN, i64 300, i64 6, i64 6)
  store %struct.Memory* %call_410560, %struct.Memory** %MEMORY

  %loadBr_410560 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410560 = icmp eq i8 %loadBr_410560, 1
  br i1 %cmpBr_410560, label %block_.L_41068c, label %block_.L_410566

  ; Code: .L_410566:	 RIP: 410566	 Bytes: 0
block_.L_410566:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 410566	 Bytes: 3
  %loadMem_410566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410566 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410566)
  store %struct.Memory* %call_410566, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 410569	 Bytes: 3
  %loadMem_410569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410569 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410569)
  store %struct.Memory* %call_410569, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 41056c	 Bytes: 3
  %loadMem_41056c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41056c = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41056c)
  store %struct.Memory* %call_41056c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 41056f	 Bytes: 3
  %loadMem_41056f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41056f = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41056f)
  store %struct.Memory* %call_41056f, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410572	 Bytes: 8
  %loadMem_410572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410572 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410572)
  store %struct.Memory* %call_410572, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 41057a	 Bytes: 3
  %loadMem_41057a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41057a = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41057a)
  store %struct.Memory* %call_41057a, %struct.Memory** %MEMORY

  ; Code: jne .L_41059f	 RIP: 41057d	 Bytes: 6
  %loadMem_41057d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41057d = call %struct.Memory* @routine_jne_.L_41059f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41057d, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_41057d, %struct.Memory** %MEMORY

  %loadBr_41057d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41057d = icmp eq i8 %loadBr_41057d, 1
  br i1 %cmpBr_41057d, label %block_.L_41059f, label %block_410583

block_410583:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 410583	 Bytes: 3
  %loadMem_410583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410583 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410583)
  store %struct.Memory* %call_410583, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 410586	 Bytes: 3
  %loadMem_410586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410586 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410586)
  store %struct.Memory* %call_410586, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 410589	 Bytes: 3
  %loadMem_410589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410589 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410589)
  store %struct.Memory* %call_410589, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 41058c	 Bytes: 3
  %loadMem_41058c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41058c = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41058c)
  store %struct.Memory* %call_41058c, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 41058f	 Bytes: 7
  %loadMem_41058f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41058f = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41058f)
  store %struct.Memory* %call_41058f, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 410596	 Bytes: 3
  %loadMem_410596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410596 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410596)
  store %struct.Memory* %call_410596, %struct.Memory** %MEMORY

  ; Code: je .L_41068c	 RIP: 410599	 Bytes: 6
  %loadMem_410599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410599 = call %struct.Memory* @routine_je_.L_41068c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410599, i8* %BRANCH_TAKEN, i64 243, i64 6, i64 6)
  store %struct.Memory* %call_410599, %struct.Memory** %MEMORY

  %loadBr_410599 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410599 = icmp eq i8 %loadBr_410599, 1
  br i1 %cmpBr_410599, label %block_.L_41068c, label %block_.L_41059f

  ; Code: .L_41059f:	 RIP: 41059f	 Bytes: 0
block_.L_41059f:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 41059f	 Bytes: 3
  %loadMem_41059f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41059f = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41059f)
  store %struct.Memory* %call_41059f, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4105a2	 Bytes: 3
  %loadMem_4105a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105a2 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105a2)
  store %struct.Memory* %call_4105a2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4105a5	 Bytes: 3
  %loadMem_4105a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105a5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105a5)
  store %struct.Memory* %call_4105a5, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4105a8	 Bytes: 3
  %loadMem_4105a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105a8 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105a8)
  store %struct.Memory* %call_4105a8, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4105ab	 Bytes: 8
  %loadMem_4105ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105ab = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105ab)
  store %struct.Memory* %call_4105ab, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4105b3	 Bytes: 3
  %loadMem_4105b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105b3 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105b3)
  store %struct.Memory* %call_4105b3, %struct.Memory** %MEMORY

  ; Code: jne .L_4105d8	 RIP: 4105b6	 Bytes: 6
  %loadMem_4105b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105b6 = call %struct.Memory* @routine_jne_.L_4105d8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105b6, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_4105b6, %struct.Memory** %MEMORY

  %loadBr_4105b6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4105b6 = icmp eq i8 %loadBr_4105b6, 1
  br i1 %cmpBr_4105b6, label %block_.L_4105d8, label %block_4105bc

block_4105bc:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 4105bc	 Bytes: 3
  %loadMem_4105bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105bc = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105bc)
  store %struct.Memory* %call_4105bc, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4105bf	 Bytes: 3
  %loadMem_4105bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105bf = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105bf)
  store %struct.Memory* %call_4105bf, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4105c2	 Bytes: 3
  %loadMem_4105c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105c2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105c2)
  store %struct.Memory* %call_4105c2, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4105c5	 Bytes: 3
  %loadMem_4105c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105c5 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105c5)
  store %struct.Memory* %call_4105c5, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 4105c8	 Bytes: 7
  %loadMem_4105c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105c8 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105c8)
  store %struct.Memory* %call_4105c8, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 4105cf	 Bytes: 3
  %loadMem_4105cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105cf = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105cf)
  store %struct.Memory* %call_4105cf, %struct.Memory** %MEMORY

  ; Code: je .L_41068c	 RIP: 4105d2	 Bytes: 6
  %loadMem_4105d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105d2 = call %struct.Memory* @routine_je_.L_41068c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105d2, i8* %BRANCH_TAKEN, i64 186, i64 6, i64 6)
  store %struct.Memory* %call_4105d2, %struct.Memory** %MEMORY

  %loadBr_4105d2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4105d2 = icmp eq i8 %loadBr_4105d2, 1
  br i1 %cmpBr_4105d2, label %block_.L_41068c, label %block_.L_4105d8

  ; Code: .L_4105d8:	 RIP: 4105d8	 Bytes: 0
block_.L_4105d8:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4105d8	 Bytes: 3
  %loadMem_4105d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105d8 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105d8)
  store %struct.Memory* %call_4105d8, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4105db	 Bytes: 3
  %loadMem_4105db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105db = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105db)
  store %struct.Memory* %call_4105db, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4105de	 Bytes: 3
  %loadMem_4105de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105de = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105de)
  store %struct.Memory* %call_4105de, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4105e1	 Bytes: 3
  %loadMem_4105e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105e1 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105e1)
  store %struct.Memory* %call_4105e1, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4105e4	 Bytes: 8
  %loadMem_4105e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105e4 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105e4)
  store %struct.Memory* %call_4105e4, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4105ec	 Bytes: 3
  %loadMem_4105ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105ec = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105ec)
  store %struct.Memory* %call_4105ec, %struct.Memory** %MEMORY

  ; Code: jne .L_410611	 RIP: 4105ef	 Bytes: 6
  %loadMem_4105ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105ef = call %struct.Memory* @routine_jne_.L_410611(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105ef, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_4105ef, %struct.Memory** %MEMORY

  %loadBr_4105ef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4105ef = icmp eq i8 %loadBr_4105ef, 1
  br i1 %cmpBr_4105ef, label %block_.L_410611, label %block_4105f5

block_4105f5:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 4105f5	 Bytes: 3
  %loadMem_4105f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105f5 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105f5)
  store %struct.Memory* %call_4105f5, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4105f8	 Bytes: 3
  %loadMem_4105f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105f8 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105f8)
  store %struct.Memory* %call_4105f8, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4105fb	 Bytes: 3
  %loadMem_4105fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105fb = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105fb)
  store %struct.Memory* %call_4105fb, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4105fe	 Bytes: 3
  %loadMem_4105fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4105fe = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4105fe)
  store %struct.Memory* %call_4105fe, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 410601	 Bytes: 7
  %loadMem_410601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410601 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410601)
  store %struct.Memory* %call_410601, %struct.Memory** %MEMORY

  ; Code: cmpl -0x18(%rbp), %eax	 RIP: 410608	 Bytes: 3
  %loadMem_410608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410608 = call %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410608)
  store %struct.Memory* %call_410608, %struct.Memory** %MEMORY

  ; Code: je .L_41068c	 RIP: 41060b	 Bytes: 6
  %loadMem_41060b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41060b = call %struct.Memory* @routine_je_.L_41068c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41060b, i8* %BRANCH_TAKEN, i64 129, i64 6, i64 6)
  store %struct.Memory* %call_41060b, %struct.Memory** %MEMORY

  %loadBr_41060b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41060b = icmp eq i8 %loadBr_41060b, 1
  br i1 %cmpBr_41060b, label %block_.L_41068c, label %block_.L_410611

  ; Code: .L_410611:	 RIP: 410611	 Bytes: 0
block_.L_410611:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 410611	 Bytes: 3
  %loadMem_410611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410611 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410611)
  store %struct.Memory* %call_410611, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 410614	 Bytes: 3
  %loadMem_410614 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410614 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410614)
  store %struct.Memory* %call_410614, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 410617	 Bytes: 3
  %loadMem_410617 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410617 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410617)
  store %struct.Memory* %call_410617, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 41061a	 Bytes: 3
  %loadMem_41061a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41061a = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41061a)
  store %struct.Memory* %call_41061a, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 41061d	 Bytes: 8
  %loadMem_41061d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41061d = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41061d)
  store %struct.Memory* %call_41061d, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 410625	 Bytes: 3
  %loadMem_410625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410625 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410625)
  store %struct.Memory* %call_410625, %struct.Memory** %MEMORY

  ; Code: jne .L_41064a	 RIP: 410628	 Bytes: 6
  %loadMem_410628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410628 = call %struct.Memory* @routine_jne_.L_41064a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410628, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_410628, %struct.Memory** %MEMORY

  %loadBr_410628 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410628 = icmp eq i8 %loadBr_410628, 1
  br i1 %cmpBr_410628, label %block_.L_41064a, label %block_41062e

block_41062e:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 41062e	 Bytes: 3
  %loadMem_41062e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41062e = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41062e)
  store %struct.Memory* %call_41062e, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 410631	 Bytes: 3
  %loadMem_410631 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410631 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410631)
  store %struct.Memory* %call_410631, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 410634	 Bytes: 3
  %loadMem_410634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410634 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410634)
  store %struct.Memory* %call_410634, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410637	 Bytes: 3
  %loadMem_410637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410637 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410637)
  store %struct.Memory* %call_410637, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 41063a	 Bytes: 7
  %loadMem_41063a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41063a = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41063a)
  store %struct.Memory* %call_41063a, %struct.Memory** %MEMORY

  ; Code: cmpl -0x18(%rbp), %eax	 RIP: 410641	 Bytes: 3
  %loadMem_410641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410641 = call %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410641)
  store %struct.Memory* %call_410641, %struct.Memory** %MEMORY

  ; Code: je .L_41068c	 RIP: 410644	 Bytes: 6
  %loadMem_410644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410644 = call %struct.Memory* @routine_je_.L_41068c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410644, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_410644, %struct.Memory** %MEMORY

  %loadBr_410644 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410644 = icmp eq i8 %loadBr_410644, 1
  br i1 %cmpBr_410644, label %block_.L_41068c, label %block_.L_41064a

  ; Code: .L_41064a:	 RIP: 41064a	 Bytes: 0
block_.L_41064a:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 41064a	 Bytes: 3
  %loadMem_41064a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41064a = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41064a)
  store %struct.Memory* %call_41064a, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 41064d	 Bytes: 3
  %loadMem_41064d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41064d = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41064d)
  store %struct.Memory* %call_41064d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410650	 Bytes: 3
  %loadMem_410650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410650 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410650)
  store %struct.Memory* %call_410650, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410653	 Bytes: 3
  %loadMem_410653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410653 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410653)
  store %struct.Memory* %call_410653, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410656	 Bytes: 8
  %loadMem_410656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410656 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410656)
  store %struct.Memory* %call_410656, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 41065e	 Bytes: 3
  %loadMem_41065e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41065e = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41065e)
  store %struct.Memory* %call_41065e, %struct.Memory** %MEMORY

  ; Code: jne .L_410683	 RIP: 410661	 Bytes: 6
  %loadMem_410661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410661 = call %struct.Memory* @routine_jne_.L_410683(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410661, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_410661, %struct.Memory** %MEMORY

  %loadBr_410661 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410661 = icmp eq i8 %loadBr_410661, 1
  br i1 %cmpBr_410661, label %block_.L_410683, label %block_410667

block_410667:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 410667	 Bytes: 3
  %loadMem_410667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410667 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410667)
  store %struct.Memory* %call_410667, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 41066a	 Bytes: 3
  %loadMem_41066a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41066a = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41066a)
  store %struct.Memory* %call_41066a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41066d	 Bytes: 3
  %loadMem_41066d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41066d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41066d)
  store %struct.Memory* %call_41066d, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410670	 Bytes: 3
  %loadMem_410670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410670 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410670)
  store %struct.Memory* %call_410670, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 410673	 Bytes: 7
  %loadMem_410673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410673 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410673)
  store %struct.Memory* %call_410673, %struct.Memory** %MEMORY

  ; Code: cmpl -0x18(%rbp), %eax	 RIP: 41067a	 Bytes: 3
  %loadMem_41067a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41067a = call %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41067a)
  store %struct.Memory* %call_41067a, %struct.Memory** %MEMORY

  ; Code: je .L_41068c	 RIP: 41067d	 Bytes: 6
  %loadMem_41067d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41067d = call %struct.Memory* @routine_je_.L_41068c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41067d, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_41067d, %struct.Memory** %MEMORY

  %loadBr_41067d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41067d = icmp eq i8 %loadBr_41067d, 1
  br i1 %cmpBr_41067d, label %block_.L_41068c, label %block_.L_410683

  ; Code: .L_410683:	 RIP: 410683	 Bytes: 0
block_.L_410683:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 410683	 Bytes: 3
  %loadMem_410683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410683 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410683)
  store %struct.Memory* %call_410683, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410686	 Bytes: 3
  %loadMem_410686 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410686 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410686)
  store %struct.Memory* %call_410686, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 410689	 Bytes: 3
  %loadMem_410689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410689 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410689)
  store %struct.Memory* %call_410689, %struct.Memory** %MEMORY

  ; Code: .L_41068c:	 RIP: 41068c	 Bytes: 0
  br label %block_.L_41068c
block_.L_41068c:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 41068c	 Bytes: 3
  %loadMem_41068c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41068c = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41068c)
  store %struct.Memory* %call_41068c, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 41068f	 Bytes: 3
  %loadMem_41068f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41068f = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41068f)
  store %struct.Memory* %call_41068f, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410692	 Bytes: 3
  %loadMem_410692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410692 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410692)
  store %struct.Memory* %call_410692, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410695	 Bytes: 8
  %loadMem_410695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410695 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410695)
  store %struct.Memory* %call_410695, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41069d	 Bytes: 3
  %loadMem_41069d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41069d = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41069d)
  store %struct.Memory* %call_41069d, %struct.Memory** %MEMORY

  ; Code: jne .L_410805	 RIP: 4106a0	 Bytes: 6
  %loadMem_4106a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106a0 = call %struct.Memory* @routine_jne_.L_410805(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106a0, i8* %BRANCH_TAKEN, i64 357, i64 6, i64 6)
  store %struct.Memory* %call_4106a0, %struct.Memory** %MEMORY

  %loadBr_4106a0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4106a0 = icmp eq i8 %loadBr_4106a0, 1
  br i1 %cmpBr_4106a0, label %block_.L_410805, label %block_4106a6

block_4106a6:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 4106a6	 Bytes: 3
  %loadMem_4106a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106a6 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106a6)
  store %struct.Memory* %call_4106a6, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4106a9	 Bytes: 3
  %loadMem_4106a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106a9 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106a9)
  store %struct.Memory* %call_4106a9, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4106ac	 Bytes: 3
  %loadMem_4106ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106ac = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106ac)
  store %struct.Memory* %call_4106ac, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4106af	 Bytes: 3
  %loadMem_4106af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106af = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106af)
  store %struct.Memory* %call_4106af, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4106b2	 Bytes: 8
  %loadMem_4106b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106b2 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106b2)
  store %struct.Memory* %call_4106b2, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4106ba	 Bytes: 3
  %loadMem_4106ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106ba = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106ba)
  store %struct.Memory* %call_4106ba, %struct.Memory** %MEMORY

  ; Code: jne .L_4106df	 RIP: 4106bd	 Bytes: 6
  %loadMem_4106bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106bd = call %struct.Memory* @routine_jne_.L_4106df(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106bd, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_4106bd, %struct.Memory** %MEMORY

  %loadBr_4106bd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4106bd = icmp eq i8 %loadBr_4106bd, 1
  br i1 %cmpBr_4106bd, label %block_.L_4106df, label %block_4106c3

block_4106c3:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 4106c3	 Bytes: 3
  %loadMem_4106c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106c3 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106c3)
  store %struct.Memory* %call_4106c3, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4106c6	 Bytes: 3
  %loadMem_4106c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106c6 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106c6)
  store %struct.Memory* %call_4106c6, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4106c9	 Bytes: 3
  %loadMem_4106c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106c9 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106c9)
  store %struct.Memory* %call_4106c9, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4106cc	 Bytes: 3
  %loadMem_4106cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106cc = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106cc)
  store %struct.Memory* %call_4106cc, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 4106cf	 Bytes: 7
  %loadMem_4106cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106cf = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106cf)
  store %struct.Memory* %call_4106cf, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 4106d6	 Bytes: 3
  %loadMem_4106d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106d6 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106d6)
  store %struct.Memory* %call_4106d6, %struct.Memory** %MEMORY

  ; Code: je .L_410805	 RIP: 4106d9	 Bytes: 6
  %loadMem_4106d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106d9 = call %struct.Memory* @routine_je_.L_410805(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106d9, i8* %BRANCH_TAKEN, i64 300, i64 6, i64 6)
  store %struct.Memory* %call_4106d9, %struct.Memory** %MEMORY

  %loadBr_4106d9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4106d9 = icmp eq i8 %loadBr_4106d9, 1
  br i1 %cmpBr_4106d9, label %block_.L_410805, label %block_.L_4106df

  ; Code: .L_4106df:	 RIP: 4106df	 Bytes: 0
block_.L_4106df:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4106df	 Bytes: 3
  %loadMem_4106df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106df = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106df)
  store %struct.Memory* %call_4106df, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4106e2	 Bytes: 3
  %loadMem_4106e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106e2 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106e2)
  store %struct.Memory* %call_4106e2, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4106e5	 Bytes: 3
  %loadMem_4106e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106e5 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106e5)
  store %struct.Memory* %call_4106e5, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4106e8	 Bytes: 3
  %loadMem_4106e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106e8 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106e8)
  store %struct.Memory* %call_4106e8, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4106eb	 Bytes: 8
  %loadMem_4106eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106eb = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106eb)
  store %struct.Memory* %call_4106eb, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4106f3	 Bytes: 3
  %loadMem_4106f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106f3 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106f3)
  store %struct.Memory* %call_4106f3, %struct.Memory** %MEMORY

  ; Code: jne .L_410718	 RIP: 4106f6	 Bytes: 6
  %loadMem_4106f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106f6 = call %struct.Memory* @routine_jne_.L_410718(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106f6, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_4106f6, %struct.Memory** %MEMORY

  %loadBr_4106f6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4106f6 = icmp eq i8 %loadBr_4106f6, 1
  br i1 %cmpBr_4106f6, label %block_.L_410718, label %block_4106fc

block_4106fc:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 4106fc	 Bytes: 3
  %loadMem_4106fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106fc = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106fc)
  store %struct.Memory* %call_4106fc, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4106ff	 Bytes: 3
  %loadMem_4106ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4106ff = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4106ff)
  store %struct.Memory* %call_4106ff, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 410702	 Bytes: 3
  %loadMem_410702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410702 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410702)
  store %struct.Memory* %call_410702, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410705	 Bytes: 3
  %loadMem_410705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410705 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410705)
  store %struct.Memory* %call_410705, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 410708	 Bytes: 7
  %loadMem_410708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410708 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410708)
  store %struct.Memory* %call_410708, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 41070f	 Bytes: 3
  %loadMem_41070f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41070f = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41070f)
  store %struct.Memory* %call_41070f, %struct.Memory** %MEMORY

  ; Code: je .L_410805	 RIP: 410712	 Bytes: 6
  %loadMem_410712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410712 = call %struct.Memory* @routine_je_.L_410805(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410712, i8* %BRANCH_TAKEN, i64 243, i64 6, i64 6)
  store %struct.Memory* %call_410712, %struct.Memory** %MEMORY

  %loadBr_410712 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410712 = icmp eq i8 %loadBr_410712, 1
  br i1 %cmpBr_410712, label %block_.L_410805, label %block_.L_410718

  ; Code: .L_410718:	 RIP: 410718	 Bytes: 0
block_.L_410718:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 410718	 Bytes: 3
  %loadMem_410718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410718 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410718)
  store %struct.Memory* %call_410718, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 41071b	 Bytes: 3
  %loadMem_41071b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41071b = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41071b)
  store %struct.Memory* %call_41071b, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 41071e	 Bytes: 3
  %loadMem_41071e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41071e = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41071e)
  store %struct.Memory* %call_41071e, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410721	 Bytes: 3
  %loadMem_410721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410721 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410721)
  store %struct.Memory* %call_410721, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410724	 Bytes: 8
  %loadMem_410724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410724 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410724)
  store %struct.Memory* %call_410724, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 41072c	 Bytes: 3
  %loadMem_41072c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41072c = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41072c)
  store %struct.Memory* %call_41072c, %struct.Memory** %MEMORY

  ; Code: jne .L_410751	 RIP: 41072f	 Bytes: 6
  %loadMem_41072f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41072f = call %struct.Memory* @routine_jne_.L_410751(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41072f, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_41072f, %struct.Memory** %MEMORY

  %loadBr_41072f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41072f = icmp eq i8 %loadBr_41072f, 1
  br i1 %cmpBr_41072f, label %block_.L_410751, label %block_410735

block_410735:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 410735	 Bytes: 3
  %loadMem_410735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410735 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410735)
  store %struct.Memory* %call_410735, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 410738	 Bytes: 3
  %loadMem_410738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410738 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410738)
  store %struct.Memory* %call_410738, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 41073b	 Bytes: 3
  %loadMem_41073b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41073b = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41073b)
  store %struct.Memory* %call_41073b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 41073e	 Bytes: 3
  %loadMem_41073e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41073e = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41073e)
  store %struct.Memory* %call_41073e, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 410741	 Bytes: 7
  %loadMem_410741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410741 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410741)
  store %struct.Memory* %call_410741, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 410748	 Bytes: 3
  %loadMem_410748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410748 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410748)
  store %struct.Memory* %call_410748, %struct.Memory** %MEMORY

  ; Code: je .L_410805	 RIP: 41074b	 Bytes: 6
  %loadMem_41074b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41074b = call %struct.Memory* @routine_je_.L_410805(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41074b, i8* %BRANCH_TAKEN, i64 186, i64 6, i64 6)
  store %struct.Memory* %call_41074b, %struct.Memory** %MEMORY

  %loadBr_41074b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41074b = icmp eq i8 %loadBr_41074b, 1
  br i1 %cmpBr_41074b, label %block_.L_410805, label %block_.L_410751

  ; Code: .L_410751:	 RIP: 410751	 Bytes: 0
block_.L_410751:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 410751	 Bytes: 3
  %loadMem_410751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410751 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410751)
  store %struct.Memory* %call_410751, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 410754	 Bytes: 3
  %loadMem_410754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410754 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410754)
  store %struct.Memory* %call_410754, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 410757	 Bytes: 3
  %loadMem_410757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410757 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410757)
  store %struct.Memory* %call_410757, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 41075a	 Bytes: 3
  %loadMem_41075a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41075a = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41075a)
  store %struct.Memory* %call_41075a, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 41075d	 Bytes: 8
  %loadMem_41075d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41075d = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41075d)
  store %struct.Memory* %call_41075d, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 410765	 Bytes: 3
  %loadMem_410765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410765 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410765)
  store %struct.Memory* %call_410765, %struct.Memory** %MEMORY

  ; Code: jne .L_41078a	 RIP: 410768	 Bytes: 6
  %loadMem_410768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410768 = call %struct.Memory* @routine_jne_.L_41078a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410768, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_410768, %struct.Memory** %MEMORY

  %loadBr_410768 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410768 = icmp eq i8 %loadBr_410768, 1
  br i1 %cmpBr_410768, label %block_.L_41078a, label %block_41076e

block_41076e:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 41076e	 Bytes: 3
  %loadMem_41076e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41076e = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41076e)
  store %struct.Memory* %call_41076e, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 410771	 Bytes: 3
  %loadMem_410771 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410771 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410771)
  store %struct.Memory* %call_410771, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 410774	 Bytes: 3
  %loadMem_410774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410774 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410774)
  store %struct.Memory* %call_410774, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410777	 Bytes: 3
  %loadMem_410777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410777 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410777)
  store %struct.Memory* %call_410777, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 41077a	 Bytes: 7
  %loadMem_41077a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41077a = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41077a)
  store %struct.Memory* %call_41077a, %struct.Memory** %MEMORY

  ; Code: cmpl -0x18(%rbp), %eax	 RIP: 410781	 Bytes: 3
  %loadMem_410781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410781 = call %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410781)
  store %struct.Memory* %call_410781, %struct.Memory** %MEMORY

  ; Code: je .L_410805	 RIP: 410784	 Bytes: 6
  %loadMem_410784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410784 = call %struct.Memory* @routine_je_.L_410805(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410784, i8* %BRANCH_TAKEN, i64 129, i64 6, i64 6)
  store %struct.Memory* %call_410784, %struct.Memory** %MEMORY

  %loadBr_410784 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410784 = icmp eq i8 %loadBr_410784, 1
  br i1 %cmpBr_410784, label %block_.L_410805, label %block_.L_41078a

  ; Code: .L_41078a:	 RIP: 41078a	 Bytes: 0
block_.L_41078a:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 41078a	 Bytes: 3
  %loadMem_41078a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41078a = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41078a)
  store %struct.Memory* %call_41078a, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 41078d	 Bytes: 3
  %loadMem_41078d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41078d = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41078d)
  store %struct.Memory* %call_41078d, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 410790	 Bytes: 3
  %loadMem_410790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410790 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410790)
  store %struct.Memory* %call_410790, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410793	 Bytes: 3
  %loadMem_410793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410793 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410793)
  store %struct.Memory* %call_410793, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410796	 Bytes: 8
  %loadMem_410796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410796 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410796)
  store %struct.Memory* %call_410796, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 41079e	 Bytes: 3
  %loadMem_41079e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41079e = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41079e)
  store %struct.Memory* %call_41079e, %struct.Memory** %MEMORY

  ; Code: jne .L_4107c3	 RIP: 4107a1	 Bytes: 6
  %loadMem_4107a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107a1 = call %struct.Memory* @routine_jne_.L_4107c3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107a1, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_4107a1, %struct.Memory** %MEMORY

  %loadBr_4107a1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4107a1 = icmp eq i8 %loadBr_4107a1, 1
  br i1 %cmpBr_4107a1, label %block_.L_4107c3, label %block_4107a7

block_4107a7:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 4107a7	 Bytes: 3
  %loadMem_4107a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107a7 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107a7)
  store %struct.Memory* %call_4107a7, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4107aa	 Bytes: 3
  %loadMem_4107aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107aa = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107aa)
  store %struct.Memory* %call_4107aa, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4107ad	 Bytes: 3
  %loadMem_4107ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107ad = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107ad)
  store %struct.Memory* %call_4107ad, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4107b0	 Bytes: 3
  %loadMem_4107b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107b0 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107b0)
  store %struct.Memory* %call_4107b0, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 4107b3	 Bytes: 7
  %loadMem_4107b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107b3 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107b3)
  store %struct.Memory* %call_4107b3, %struct.Memory** %MEMORY

  ; Code: cmpl -0x18(%rbp), %eax	 RIP: 4107ba	 Bytes: 3
  %loadMem_4107ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107ba = call %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107ba)
  store %struct.Memory* %call_4107ba, %struct.Memory** %MEMORY

  ; Code: je .L_410805	 RIP: 4107bd	 Bytes: 6
  %loadMem_4107bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107bd = call %struct.Memory* @routine_je_.L_410805(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107bd, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_4107bd, %struct.Memory** %MEMORY

  %loadBr_4107bd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4107bd = icmp eq i8 %loadBr_4107bd, 1
  br i1 %cmpBr_4107bd, label %block_.L_410805, label %block_.L_4107c3

  ; Code: .L_4107c3:	 RIP: 4107c3	 Bytes: 0
block_.L_4107c3:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4107c3	 Bytes: 3
  %loadMem_4107c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107c3 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107c3)
  store %struct.Memory* %call_4107c3, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4107c6	 Bytes: 3
  %loadMem_4107c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107c6 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107c6)
  store %struct.Memory* %call_4107c6, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4107c9	 Bytes: 3
  %loadMem_4107c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107c9 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107c9)
  store %struct.Memory* %call_4107c9, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4107cc	 Bytes: 3
  %loadMem_4107cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107cc = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107cc)
  store %struct.Memory* %call_4107cc, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4107cf	 Bytes: 8
  %loadMem_4107cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107cf = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107cf)
  store %struct.Memory* %call_4107cf, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4107d7	 Bytes: 3
  %loadMem_4107d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107d7 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107d7)
  store %struct.Memory* %call_4107d7, %struct.Memory** %MEMORY

  ; Code: jne .L_4107fc	 RIP: 4107da	 Bytes: 6
  %loadMem_4107da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107da = call %struct.Memory* @routine_jne_.L_4107fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107da, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_4107da, %struct.Memory** %MEMORY

  %loadBr_4107da = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4107da = icmp eq i8 %loadBr_4107da, 1
  br i1 %cmpBr_4107da, label %block_.L_4107fc, label %block_4107e0

block_4107e0:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 4107e0	 Bytes: 3
  %loadMem_4107e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107e0 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107e0)
  store %struct.Memory* %call_4107e0, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4107e3	 Bytes: 3
  %loadMem_4107e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107e3 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107e3)
  store %struct.Memory* %call_4107e3, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4107e6	 Bytes: 3
  %loadMem_4107e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107e6 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107e6)
  store %struct.Memory* %call_4107e6, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4107e9	 Bytes: 3
  %loadMem_4107e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107e9 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107e9)
  store %struct.Memory* %call_4107e9, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 4107ec	 Bytes: 7
  %loadMem_4107ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107ec = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107ec)
  store %struct.Memory* %call_4107ec, %struct.Memory** %MEMORY

  ; Code: cmpl -0x18(%rbp), %eax	 RIP: 4107f3	 Bytes: 3
  %loadMem_4107f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107f3 = call %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107f3)
  store %struct.Memory* %call_4107f3, %struct.Memory** %MEMORY

  ; Code: je .L_410805	 RIP: 4107f6	 Bytes: 6
  %loadMem_4107f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107f6 = call %struct.Memory* @routine_je_.L_410805(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107f6, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_4107f6, %struct.Memory** %MEMORY

  %loadBr_4107f6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4107f6 = icmp eq i8 %loadBr_4107f6, 1
  br i1 %cmpBr_4107f6, label %block_.L_410805, label %block_.L_4107fc

  ; Code: .L_4107fc:	 RIP: 4107fc	 Bytes: 0
block_.L_4107fc:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4107fc	 Bytes: 3
  %loadMem_4107fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107fc = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107fc)
  store %struct.Memory* %call_4107fc, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4107ff	 Bytes: 3
  %loadMem_4107ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4107ff = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4107ff)
  store %struct.Memory* %call_4107ff, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 410802	 Bytes: 3
  %loadMem_410802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410802 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410802)
  store %struct.Memory* %call_410802, %struct.Memory** %MEMORY

  ; Code: .L_410805:	 RIP: 410805	 Bytes: 0
  br label %block_.L_410805
block_.L_410805:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 410805	 Bytes: 3
  %loadMem_410805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410805 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410805)
  store %struct.Memory* %call_410805, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 410808	 Bytes: 3
  %loadMem_410808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410808 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410808)
  store %struct.Memory* %call_410808, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 41080b	 Bytes: 3
  %loadMem_41080b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41080b = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41080b)
  store %struct.Memory* %call_41080b, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 41080e	 Bytes: 8
  %loadMem_41080e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41080e = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41080e)
  store %struct.Memory* %call_41080e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 410816	 Bytes: 3
  %loadMem_410816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410816 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410816)
  store %struct.Memory* %call_410816, %struct.Memory** %MEMORY

  ; Code: jne .L_41097e	 RIP: 410819	 Bytes: 6
  %loadMem_410819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410819 = call %struct.Memory* @routine_jne_.L_41097e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410819, i8* %BRANCH_TAKEN, i64 357, i64 6, i64 6)
  store %struct.Memory* %call_410819, %struct.Memory** %MEMORY

  %loadBr_410819 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410819 = icmp eq i8 %loadBr_410819, 1
  br i1 %cmpBr_410819, label %block_.L_41097e, label %block_41081f

block_41081f:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 41081f	 Bytes: 3
  %loadMem_41081f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41081f = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41081f)
  store %struct.Memory* %call_41081f, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 410822	 Bytes: 3
  %loadMem_410822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410822 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410822)
  store %struct.Memory* %call_410822, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 410825	 Bytes: 3
  %loadMem_410825 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410825 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410825)
  store %struct.Memory* %call_410825, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410828	 Bytes: 3
  %loadMem_410828 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410828 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410828)
  store %struct.Memory* %call_410828, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 41082b	 Bytes: 8
  %loadMem_41082b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41082b = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41082b)
  store %struct.Memory* %call_41082b, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 410833	 Bytes: 3
  %loadMem_410833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410833 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410833)
  store %struct.Memory* %call_410833, %struct.Memory** %MEMORY

  ; Code: jne .L_410858	 RIP: 410836	 Bytes: 6
  %loadMem_410836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410836 = call %struct.Memory* @routine_jne_.L_410858(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410836, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_410836, %struct.Memory** %MEMORY

  %loadBr_410836 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410836 = icmp eq i8 %loadBr_410836, 1
  br i1 %cmpBr_410836, label %block_.L_410858, label %block_41083c

block_41083c:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 41083c	 Bytes: 3
  %loadMem_41083c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41083c = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41083c)
  store %struct.Memory* %call_41083c, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 41083f	 Bytes: 3
  %loadMem_41083f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41083f = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41083f)
  store %struct.Memory* %call_41083f, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 410842	 Bytes: 3
  %loadMem_410842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410842 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410842)
  store %struct.Memory* %call_410842, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410845	 Bytes: 3
  %loadMem_410845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410845 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410845)
  store %struct.Memory* %call_410845, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 410848	 Bytes: 7
  %loadMem_410848 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410848 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410848)
  store %struct.Memory* %call_410848, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 41084f	 Bytes: 3
  %loadMem_41084f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41084f = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41084f)
  store %struct.Memory* %call_41084f, %struct.Memory** %MEMORY

  ; Code: je .L_41097e	 RIP: 410852	 Bytes: 6
  %loadMem_410852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410852 = call %struct.Memory* @routine_je_.L_41097e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410852, i8* %BRANCH_TAKEN, i64 300, i64 6, i64 6)
  store %struct.Memory* %call_410852, %struct.Memory** %MEMORY

  %loadBr_410852 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410852 = icmp eq i8 %loadBr_410852, 1
  br i1 %cmpBr_410852, label %block_.L_41097e, label %block_.L_410858

  ; Code: .L_410858:	 RIP: 410858	 Bytes: 0
block_.L_410858:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 410858	 Bytes: 3
  %loadMem_410858 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410858 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410858)
  store %struct.Memory* %call_410858, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 41085b	 Bytes: 3
  %loadMem_41085b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41085b = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41085b)
  store %struct.Memory* %call_41085b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41085e	 Bytes: 3
  %loadMem_41085e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41085e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41085e)
  store %struct.Memory* %call_41085e, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410861	 Bytes: 3
  %loadMem_410861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410861 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410861)
  store %struct.Memory* %call_410861, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410864	 Bytes: 8
  %loadMem_410864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410864 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410864)
  store %struct.Memory* %call_410864, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 41086c	 Bytes: 3
  %loadMem_41086c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41086c = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41086c)
  store %struct.Memory* %call_41086c, %struct.Memory** %MEMORY

  ; Code: jne .L_410891	 RIP: 41086f	 Bytes: 6
  %loadMem_41086f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41086f = call %struct.Memory* @routine_jne_.L_410891(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41086f, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_41086f, %struct.Memory** %MEMORY

  %loadBr_41086f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41086f = icmp eq i8 %loadBr_41086f, 1
  br i1 %cmpBr_41086f, label %block_.L_410891, label %block_410875

block_410875:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 410875	 Bytes: 3
  %loadMem_410875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410875 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410875)
  store %struct.Memory* %call_410875, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 410878	 Bytes: 3
  %loadMem_410878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410878 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410878)
  store %struct.Memory* %call_410878, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41087b	 Bytes: 3
  %loadMem_41087b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41087b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41087b)
  store %struct.Memory* %call_41087b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 41087e	 Bytes: 3
  %loadMem_41087e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41087e = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41087e)
  store %struct.Memory* %call_41087e, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 410881	 Bytes: 7
  %loadMem_410881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410881 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410881)
  store %struct.Memory* %call_410881, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 410888	 Bytes: 3
  %loadMem_410888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410888 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410888)
  store %struct.Memory* %call_410888, %struct.Memory** %MEMORY

  ; Code: je .L_41097e	 RIP: 41088b	 Bytes: 6
  %loadMem_41088b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41088b = call %struct.Memory* @routine_je_.L_41097e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41088b, i8* %BRANCH_TAKEN, i64 243, i64 6, i64 6)
  store %struct.Memory* %call_41088b, %struct.Memory** %MEMORY

  %loadBr_41088b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41088b = icmp eq i8 %loadBr_41088b, 1
  br i1 %cmpBr_41088b, label %block_.L_41097e, label %block_.L_410891

  ; Code: .L_410891:	 RIP: 410891	 Bytes: 0
block_.L_410891:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 410891	 Bytes: 3
  %loadMem_410891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410891 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410891)
  store %struct.Memory* %call_410891, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 410894	 Bytes: 3
  %loadMem_410894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410894 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410894)
  store %struct.Memory* %call_410894, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 410897	 Bytes: 3
  %loadMem_410897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410897 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410897)
  store %struct.Memory* %call_410897, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 41089a	 Bytes: 3
  %loadMem_41089a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41089a = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41089a)
  store %struct.Memory* %call_41089a, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 41089d	 Bytes: 8
  %loadMem_41089d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41089d = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41089d)
  store %struct.Memory* %call_41089d, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4108a5	 Bytes: 3
  %loadMem_4108a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108a5 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108a5)
  store %struct.Memory* %call_4108a5, %struct.Memory** %MEMORY

  ; Code: jne .L_4108ca	 RIP: 4108a8	 Bytes: 6
  %loadMem_4108a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108a8 = call %struct.Memory* @routine_jne_.L_4108ca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108a8, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_4108a8, %struct.Memory** %MEMORY

  %loadBr_4108a8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4108a8 = icmp eq i8 %loadBr_4108a8, 1
  br i1 %cmpBr_4108a8, label %block_.L_4108ca, label %block_4108ae

block_4108ae:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 4108ae	 Bytes: 3
  %loadMem_4108ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108ae = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108ae)
  store %struct.Memory* %call_4108ae, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4108b1	 Bytes: 3
  %loadMem_4108b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108b1 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108b1)
  store %struct.Memory* %call_4108b1, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4108b4	 Bytes: 3
  %loadMem_4108b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108b4 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108b4)
  store %struct.Memory* %call_4108b4, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4108b7	 Bytes: 3
  %loadMem_4108b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108b7 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108b7)
  store %struct.Memory* %call_4108b7, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 4108ba	 Bytes: 7
  %loadMem_4108ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108ba = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108ba)
  store %struct.Memory* %call_4108ba, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 4108c1	 Bytes: 3
  %loadMem_4108c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108c1 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108c1)
  store %struct.Memory* %call_4108c1, %struct.Memory** %MEMORY

  ; Code: je .L_41097e	 RIP: 4108c4	 Bytes: 6
  %loadMem_4108c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108c4 = call %struct.Memory* @routine_je_.L_41097e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108c4, i8* %BRANCH_TAKEN, i64 186, i64 6, i64 6)
  store %struct.Memory* %call_4108c4, %struct.Memory** %MEMORY

  %loadBr_4108c4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4108c4 = icmp eq i8 %loadBr_4108c4, 1
  br i1 %cmpBr_4108c4, label %block_.L_41097e, label %block_.L_4108ca

  ; Code: .L_4108ca:	 RIP: 4108ca	 Bytes: 0
block_.L_4108ca:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4108ca	 Bytes: 3
  %loadMem_4108ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108ca = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108ca)
  store %struct.Memory* %call_4108ca, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4108cd	 Bytes: 3
  %loadMem_4108cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108cd = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108cd)
  store %struct.Memory* %call_4108cd, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4108d0	 Bytes: 3
  %loadMem_4108d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108d0 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108d0)
  store %struct.Memory* %call_4108d0, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4108d3	 Bytes: 3
  %loadMem_4108d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108d3 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108d3)
  store %struct.Memory* %call_4108d3, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4108d6	 Bytes: 8
  %loadMem_4108d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108d6 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108d6)
  store %struct.Memory* %call_4108d6, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4108de	 Bytes: 3
  %loadMem_4108de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108de = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108de)
  store %struct.Memory* %call_4108de, %struct.Memory** %MEMORY

  ; Code: jne .L_410903	 RIP: 4108e1	 Bytes: 6
  %loadMem_4108e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108e1 = call %struct.Memory* @routine_jne_.L_410903(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108e1, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_4108e1, %struct.Memory** %MEMORY

  %loadBr_4108e1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4108e1 = icmp eq i8 %loadBr_4108e1, 1
  br i1 %cmpBr_4108e1, label %block_.L_410903, label %block_4108e7

block_4108e7:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 4108e7	 Bytes: 3
  %loadMem_4108e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108e7 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108e7)
  store %struct.Memory* %call_4108e7, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4108ea	 Bytes: 3
  %loadMem_4108ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108ea = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108ea)
  store %struct.Memory* %call_4108ea, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4108ed	 Bytes: 3
  %loadMem_4108ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108ed = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108ed)
  store %struct.Memory* %call_4108ed, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4108f0	 Bytes: 3
  %loadMem_4108f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108f0 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108f0)
  store %struct.Memory* %call_4108f0, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 4108f3	 Bytes: 7
  %loadMem_4108f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108f3 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108f3)
  store %struct.Memory* %call_4108f3, %struct.Memory** %MEMORY

  ; Code: cmpl -0x18(%rbp), %eax	 RIP: 4108fa	 Bytes: 3
  %loadMem_4108fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108fa = call %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108fa)
  store %struct.Memory* %call_4108fa, %struct.Memory** %MEMORY

  ; Code: je .L_41097e	 RIP: 4108fd	 Bytes: 6
  %loadMem_4108fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4108fd = call %struct.Memory* @routine_je_.L_41097e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4108fd, i8* %BRANCH_TAKEN, i64 129, i64 6, i64 6)
  store %struct.Memory* %call_4108fd, %struct.Memory** %MEMORY

  %loadBr_4108fd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4108fd = icmp eq i8 %loadBr_4108fd, 1
  br i1 %cmpBr_4108fd, label %block_.L_41097e, label %block_.L_410903

  ; Code: .L_410903:	 RIP: 410903	 Bytes: 0
block_.L_410903:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 410903	 Bytes: 3
  %loadMem_410903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410903 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410903)
  store %struct.Memory* %call_410903, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 410906	 Bytes: 3
  %loadMem_410906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410906 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410906)
  store %struct.Memory* %call_410906, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410909	 Bytes: 3
  %loadMem_410909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410909 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410909)
  store %struct.Memory* %call_410909, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 41090c	 Bytes: 3
  %loadMem_41090c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41090c = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41090c)
  store %struct.Memory* %call_41090c, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 41090f	 Bytes: 8
  %loadMem_41090f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41090f = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41090f)
  store %struct.Memory* %call_41090f, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 410917	 Bytes: 3
  %loadMem_410917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410917 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410917)
  store %struct.Memory* %call_410917, %struct.Memory** %MEMORY

  ; Code: jne .L_41093c	 RIP: 41091a	 Bytes: 6
  %loadMem_41091a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41091a = call %struct.Memory* @routine_jne_.L_41093c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41091a, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_41091a, %struct.Memory** %MEMORY

  %loadBr_41091a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41091a = icmp eq i8 %loadBr_41091a, 1
  br i1 %cmpBr_41091a, label %block_.L_41093c, label %block_410920

block_410920:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 410920	 Bytes: 3
  %loadMem_410920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410920 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410920)
  store %struct.Memory* %call_410920, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 410923	 Bytes: 3
  %loadMem_410923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410923 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410923)
  store %struct.Memory* %call_410923, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410926	 Bytes: 3
  %loadMem_410926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410926 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410926)
  store %struct.Memory* %call_410926, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410929	 Bytes: 3
  %loadMem_410929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410929 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410929)
  store %struct.Memory* %call_410929, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 41092c	 Bytes: 7
  %loadMem_41092c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41092c = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41092c)
  store %struct.Memory* %call_41092c, %struct.Memory** %MEMORY

  ; Code: cmpl -0x18(%rbp), %eax	 RIP: 410933	 Bytes: 3
  %loadMem_410933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410933 = call %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410933)
  store %struct.Memory* %call_410933, %struct.Memory** %MEMORY

  ; Code: je .L_41097e	 RIP: 410936	 Bytes: 6
  %loadMem_410936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410936 = call %struct.Memory* @routine_je_.L_41097e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410936, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_410936, %struct.Memory** %MEMORY

  %loadBr_410936 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410936 = icmp eq i8 %loadBr_410936, 1
  br i1 %cmpBr_410936, label %block_.L_41097e, label %block_.L_41093c

  ; Code: .L_41093c:	 RIP: 41093c	 Bytes: 0
block_.L_41093c:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 41093c	 Bytes: 3
  %loadMem_41093c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41093c = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41093c)
  store %struct.Memory* %call_41093c, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 41093f	 Bytes: 3
  %loadMem_41093f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41093f = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41093f)
  store %struct.Memory* %call_41093f, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 410942	 Bytes: 3
  %loadMem_410942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410942 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410942)
  store %struct.Memory* %call_410942, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410945	 Bytes: 3
  %loadMem_410945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410945 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410945)
  store %struct.Memory* %call_410945, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410948	 Bytes: 8
  %loadMem_410948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410948 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410948)
  store %struct.Memory* %call_410948, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 410950	 Bytes: 3
  %loadMem_410950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410950 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410950)
  store %struct.Memory* %call_410950, %struct.Memory** %MEMORY

  ; Code: jne .L_410975	 RIP: 410953	 Bytes: 6
  %loadMem_410953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410953 = call %struct.Memory* @routine_jne_.L_410975(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410953, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_410953, %struct.Memory** %MEMORY

  %loadBr_410953 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410953 = icmp eq i8 %loadBr_410953, 1
  br i1 %cmpBr_410953, label %block_.L_410975, label %block_410959

block_410959:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 410959	 Bytes: 3
  %loadMem_410959 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410959 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410959)
  store %struct.Memory* %call_410959, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 41095c	 Bytes: 3
  %loadMem_41095c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41095c = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41095c)
  store %struct.Memory* %call_41095c, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 41095f	 Bytes: 3
  %loadMem_41095f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41095f = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41095f)
  store %struct.Memory* %call_41095f, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410962	 Bytes: 3
  %loadMem_410962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410962 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410962)
  store %struct.Memory* %call_410962, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 410965	 Bytes: 7
  %loadMem_410965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410965 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410965)
  store %struct.Memory* %call_410965, %struct.Memory** %MEMORY

  ; Code: cmpl -0x18(%rbp), %eax	 RIP: 41096c	 Bytes: 3
  %loadMem_41096c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41096c = call %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41096c)
  store %struct.Memory* %call_41096c, %struct.Memory** %MEMORY

  ; Code: je .L_41097e	 RIP: 41096f	 Bytes: 6
  %loadMem_41096f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41096f = call %struct.Memory* @routine_je_.L_41097e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41096f, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_41096f, %struct.Memory** %MEMORY

  %loadBr_41096f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41096f = icmp eq i8 %loadBr_41096f, 1
  br i1 %cmpBr_41096f, label %block_.L_41097e, label %block_.L_410975

  ; Code: .L_410975:	 RIP: 410975	 Bytes: 0
block_.L_410975:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 410975	 Bytes: 3
  %loadMem_410975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410975 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410975)
  store %struct.Memory* %call_410975, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410978	 Bytes: 3
  %loadMem_410978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410978 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410978)
  store %struct.Memory* %call_410978, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 41097b	 Bytes: 3
  %loadMem_41097b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41097b = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41097b)
  store %struct.Memory* %call_41097b, %struct.Memory** %MEMORY

  ; Code: .L_41097e:	 RIP: 41097e	 Bytes: 0
  br label %block_.L_41097e
block_.L_41097e:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 41097e	 Bytes: 3
  %loadMem_41097e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41097e = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41097e)
  store %struct.Memory* %call_41097e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410981	 Bytes: 3
  %loadMem_410981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410981 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410981)
  store %struct.Memory* %call_410981, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410984	 Bytes: 3
  %loadMem_410984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410984 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410984)
  store %struct.Memory* %call_410984, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410987	 Bytes: 8
  %loadMem_410987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410987 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410987)
  store %struct.Memory* %call_410987, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41098f	 Bytes: 3
  %loadMem_41098f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41098f = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41098f)
  store %struct.Memory* %call_41098f, %struct.Memory** %MEMORY

  ; Code: jne .L_410af7	 RIP: 410992	 Bytes: 6
  %loadMem_410992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410992 = call %struct.Memory* @routine_jne_.L_410af7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410992, i8* %BRANCH_TAKEN, i64 357, i64 6, i64 6)
  store %struct.Memory* %call_410992, %struct.Memory** %MEMORY

  %loadBr_410992 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410992 = icmp eq i8 %loadBr_410992, 1
  br i1 %cmpBr_410992, label %block_.L_410af7, label %block_410998

block_410998:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 410998	 Bytes: 3
  %loadMem_410998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410998 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410998)
  store %struct.Memory* %call_410998, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41099b	 Bytes: 3
  %loadMem_41099b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41099b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41099b)
  store %struct.Memory* %call_41099b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41099e	 Bytes: 3
  %loadMem_41099e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41099e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41099e)
  store %struct.Memory* %call_41099e, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4109a1	 Bytes: 3
  %loadMem_4109a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109a1 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109a1)
  store %struct.Memory* %call_4109a1, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4109a4	 Bytes: 8
  %loadMem_4109a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109a4 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109a4)
  store %struct.Memory* %call_4109a4, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4109ac	 Bytes: 3
  %loadMem_4109ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109ac = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109ac)
  store %struct.Memory* %call_4109ac, %struct.Memory** %MEMORY

  ; Code: jne .L_4109d1	 RIP: 4109af	 Bytes: 6
  %loadMem_4109af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109af = call %struct.Memory* @routine_jne_.L_4109d1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109af, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_4109af, %struct.Memory** %MEMORY

  %loadBr_4109af = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4109af = icmp eq i8 %loadBr_4109af, 1
  br i1 %cmpBr_4109af, label %block_.L_4109d1, label %block_4109b5

block_4109b5:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 4109b5	 Bytes: 3
  %loadMem_4109b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109b5 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109b5)
  store %struct.Memory* %call_4109b5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4109b8	 Bytes: 3
  %loadMem_4109b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109b8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109b8)
  store %struct.Memory* %call_4109b8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4109bb	 Bytes: 3
  %loadMem_4109bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109bb = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109bb)
  store %struct.Memory* %call_4109bb, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4109be	 Bytes: 3
  %loadMem_4109be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109be = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109be)
  store %struct.Memory* %call_4109be, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 4109c1	 Bytes: 7
  %loadMem_4109c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109c1 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109c1)
  store %struct.Memory* %call_4109c1, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 4109c8	 Bytes: 3
  %loadMem_4109c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109c8 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109c8)
  store %struct.Memory* %call_4109c8, %struct.Memory** %MEMORY

  ; Code: je .L_410af7	 RIP: 4109cb	 Bytes: 6
  %loadMem_4109cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109cb = call %struct.Memory* @routine_je_.L_410af7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109cb, i8* %BRANCH_TAKEN, i64 300, i64 6, i64 6)
  store %struct.Memory* %call_4109cb, %struct.Memory** %MEMORY

  %loadBr_4109cb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4109cb = icmp eq i8 %loadBr_4109cb, 1
  br i1 %cmpBr_4109cb, label %block_.L_410af7, label %block_.L_4109d1

  ; Code: .L_4109d1:	 RIP: 4109d1	 Bytes: 0
block_.L_4109d1:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4109d1	 Bytes: 3
  %loadMem_4109d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109d1 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109d1)
  store %struct.Memory* %call_4109d1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4109d4	 Bytes: 3
  %loadMem_4109d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109d4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109d4)
  store %struct.Memory* %call_4109d4, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4109d7	 Bytes: 3
  %loadMem_4109d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109d7 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109d7)
  store %struct.Memory* %call_4109d7, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4109da	 Bytes: 3
  %loadMem_4109da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109da = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109da)
  store %struct.Memory* %call_4109da, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4109dd	 Bytes: 8
  %loadMem_4109dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109dd = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109dd)
  store %struct.Memory* %call_4109dd, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4109e5	 Bytes: 3
  %loadMem_4109e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109e5 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109e5)
  store %struct.Memory* %call_4109e5, %struct.Memory** %MEMORY

  ; Code: jne .L_410a0a	 RIP: 4109e8	 Bytes: 6
  %loadMem_4109e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109e8 = call %struct.Memory* @routine_jne_.L_410a0a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109e8, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_4109e8, %struct.Memory** %MEMORY

  %loadBr_4109e8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4109e8 = icmp eq i8 %loadBr_4109e8, 1
  br i1 %cmpBr_4109e8, label %block_.L_410a0a, label %block_4109ee

block_4109ee:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 4109ee	 Bytes: 3
  %loadMem_4109ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109ee = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109ee)
  store %struct.Memory* %call_4109ee, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4109f1	 Bytes: 3
  %loadMem_4109f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109f1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109f1)
  store %struct.Memory* %call_4109f1, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4109f4	 Bytes: 3
  %loadMem_4109f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109f4 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109f4)
  store %struct.Memory* %call_4109f4, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4109f7	 Bytes: 3
  %loadMem_4109f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109f7 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109f7)
  store %struct.Memory* %call_4109f7, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 4109fa	 Bytes: 7
  %loadMem_4109fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4109fa = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4109fa)
  store %struct.Memory* %call_4109fa, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 410a01	 Bytes: 3
  %loadMem_410a01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a01 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a01)
  store %struct.Memory* %call_410a01, %struct.Memory** %MEMORY

  ; Code: je .L_410af7	 RIP: 410a04	 Bytes: 6
  %loadMem_410a04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a04 = call %struct.Memory* @routine_je_.L_410af7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a04, i8* %BRANCH_TAKEN, i64 243, i64 6, i64 6)
  store %struct.Memory* %call_410a04, %struct.Memory** %MEMORY

  %loadBr_410a04 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410a04 = icmp eq i8 %loadBr_410a04, 1
  br i1 %cmpBr_410a04, label %block_.L_410af7, label %block_.L_410a0a

  ; Code: .L_410a0a:	 RIP: 410a0a	 Bytes: 0
block_.L_410a0a:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 410a0a	 Bytes: 3
  %loadMem_410a0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a0a = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a0a)
  store %struct.Memory* %call_410a0a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410a0d	 Bytes: 3
  %loadMem_410a0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a0d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a0d)
  store %struct.Memory* %call_410a0d, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 410a10	 Bytes: 3
  %loadMem_410a10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a10 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a10)
  store %struct.Memory* %call_410a10, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410a13	 Bytes: 3
  %loadMem_410a13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a13 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a13)
  store %struct.Memory* %call_410a13, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410a16	 Bytes: 8
  %loadMem_410a16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a16 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a16)
  store %struct.Memory* %call_410a16, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 410a1e	 Bytes: 3
  %loadMem_410a1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a1e = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a1e)
  store %struct.Memory* %call_410a1e, %struct.Memory** %MEMORY

  ; Code: jne .L_410a43	 RIP: 410a21	 Bytes: 6
  %loadMem_410a21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a21 = call %struct.Memory* @routine_jne_.L_410a43(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a21, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_410a21, %struct.Memory** %MEMORY

  %loadBr_410a21 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410a21 = icmp eq i8 %loadBr_410a21, 1
  br i1 %cmpBr_410a21, label %block_.L_410a43, label %block_410a27

block_410a27:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 410a27	 Bytes: 3
  %loadMem_410a27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a27 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a27)
  store %struct.Memory* %call_410a27, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410a2a	 Bytes: 3
  %loadMem_410a2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a2a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a2a)
  store %struct.Memory* %call_410a2a, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 410a2d	 Bytes: 3
  %loadMem_410a2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a2d = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a2d)
  store %struct.Memory* %call_410a2d, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410a30	 Bytes: 3
  %loadMem_410a30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a30 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a30)
  store %struct.Memory* %call_410a30, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 410a33	 Bytes: 7
  %loadMem_410a33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a33 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a33)
  store %struct.Memory* %call_410a33, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 410a3a	 Bytes: 3
  %loadMem_410a3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a3a = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a3a)
  store %struct.Memory* %call_410a3a, %struct.Memory** %MEMORY

  ; Code: je .L_410af7	 RIP: 410a3d	 Bytes: 6
  %loadMem_410a3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a3d = call %struct.Memory* @routine_je_.L_410af7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a3d, i8* %BRANCH_TAKEN, i64 186, i64 6, i64 6)
  store %struct.Memory* %call_410a3d, %struct.Memory** %MEMORY

  %loadBr_410a3d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410a3d = icmp eq i8 %loadBr_410a3d, 1
  br i1 %cmpBr_410a3d, label %block_.L_410af7, label %block_.L_410a43

  ; Code: .L_410a43:	 RIP: 410a43	 Bytes: 0
block_.L_410a43:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 410a43	 Bytes: 3
  %loadMem_410a43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a43 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a43)
  store %struct.Memory* %call_410a43, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410a46	 Bytes: 3
  %loadMem_410a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a46 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a46)
  store %struct.Memory* %call_410a46, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410a49	 Bytes: 3
  %loadMem_410a49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a49 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a49)
  store %struct.Memory* %call_410a49, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410a4c	 Bytes: 3
  %loadMem_410a4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a4c = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a4c)
  store %struct.Memory* %call_410a4c, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410a4f	 Bytes: 8
  %loadMem_410a4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a4f = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a4f)
  store %struct.Memory* %call_410a4f, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 410a57	 Bytes: 3
  %loadMem_410a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a57 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a57)
  store %struct.Memory* %call_410a57, %struct.Memory** %MEMORY

  ; Code: jne .L_410a7c	 RIP: 410a5a	 Bytes: 6
  %loadMem_410a5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a5a = call %struct.Memory* @routine_jne_.L_410a7c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a5a, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_410a5a, %struct.Memory** %MEMORY

  %loadBr_410a5a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410a5a = icmp eq i8 %loadBr_410a5a, 1
  br i1 %cmpBr_410a5a, label %block_.L_410a7c, label %block_410a60

block_410a60:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 410a60	 Bytes: 3
  %loadMem_410a60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a60 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a60)
  store %struct.Memory* %call_410a60, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410a63	 Bytes: 3
  %loadMem_410a63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a63 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a63)
  store %struct.Memory* %call_410a63, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410a66	 Bytes: 3
  %loadMem_410a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a66 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a66)
  store %struct.Memory* %call_410a66, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410a69	 Bytes: 3
  %loadMem_410a69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a69 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a69)
  store %struct.Memory* %call_410a69, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 410a6c	 Bytes: 7
  %loadMem_410a6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a6c = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a6c)
  store %struct.Memory* %call_410a6c, %struct.Memory** %MEMORY

  ; Code: cmpl -0x18(%rbp), %eax	 RIP: 410a73	 Bytes: 3
  %loadMem_410a73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a73 = call %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a73)
  store %struct.Memory* %call_410a73, %struct.Memory** %MEMORY

  ; Code: je .L_410af7	 RIP: 410a76	 Bytes: 6
  %loadMem_410a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a76 = call %struct.Memory* @routine_je_.L_410af7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a76, i8* %BRANCH_TAKEN, i64 129, i64 6, i64 6)
  store %struct.Memory* %call_410a76, %struct.Memory** %MEMORY

  %loadBr_410a76 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410a76 = icmp eq i8 %loadBr_410a76, 1
  br i1 %cmpBr_410a76, label %block_.L_410af7, label %block_.L_410a7c

  ; Code: .L_410a7c:	 RIP: 410a7c	 Bytes: 0
block_.L_410a7c:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 410a7c	 Bytes: 3
  %loadMem_410a7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a7c = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a7c)
  store %struct.Memory* %call_410a7c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410a7f	 Bytes: 3
  %loadMem_410a7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a7f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a7f)
  store %struct.Memory* %call_410a7f, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 410a82	 Bytes: 3
  %loadMem_410a82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a82 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a82)
  store %struct.Memory* %call_410a82, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410a85	 Bytes: 3
  %loadMem_410a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a85 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a85)
  store %struct.Memory* %call_410a85, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410a88	 Bytes: 8
  %loadMem_410a88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a88 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a88)
  store %struct.Memory* %call_410a88, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 410a90	 Bytes: 3
  %loadMem_410a90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a90 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a90)
  store %struct.Memory* %call_410a90, %struct.Memory** %MEMORY

  ; Code: jne .L_410ab5	 RIP: 410a93	 Bytes: 6
  %loadMem_410a93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a93 = call %struct.Memory* @routine_jne_.L_410ab5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a93, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_410a93, %struct.Memory** %MEMORY

  %loadBr_410a93 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410a93 = icmp eq i8 %loadBr_410a93, 1
  br i1 %cmpBr_410a93, label %block_.L_410ab5, label %block_410a99

block_410a99:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 410a99	 Bytes: 3
  %loadMem_410a99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a99 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a99)
  store %struct.Memory* %call_410a99, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410a9c	 Bytes: 3
  %loadMem_410a9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a9c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a9c)
  store %struct.Memory* %call_410a9c, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 410a9f	 Bytes: 3
  %loadMem_410a9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410a9f = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410a9f)
  store %struct.Memory* %call_410a9f, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410aa2	 Bytes: 3
  %loadMem_410aa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410aa2 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410aa2)
  store %struct.Memory* %call_410aa2, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 410aa5	 Bytes: 7
  %loadMem_410aa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410aa5 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410aa5)
  store %struct.Memory* %call_410aa5, %struct.Memory** %MEMORY

  ; Code: cmpl -0x18(%rbp), %eax	 RIP: 410aac	 Bytes: 3
  %loadMem_410aac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410aac = call %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410aac)
  store %struct.Memory* %call_410aac, %struct.Memory** %MEMORY

  ; Code: je .L_410af7	 RIP: 410aaf	 Bytes: 6
  %loadMem_410aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410aaf = call %struct.Memory* @routine_je_.L_410af7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410aaf, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_410aaf, %struct.Memory** %MEMORY

  %loadBr_410aaf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410aaf = icmp eq i8 %loadBr_410aaf, 1
  br i1 %cmpBr_410aaf, label %block_.L_410af7, label %block_.L_410ab5

  ; Code: .L_410ab5:	 RIP: 410ab5	 Bytes: 0
block_.L_410ab5:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 410ab5	 Bytes: 3
  %loadMem_410ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ab5 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ab5)
  store %struct.Memory* %call_410ab5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410ab8	 Bytes: 3
  %loadMem_410ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ab8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ab8)
  store %struct.Memory* %call_410ab8, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 410abb	 Bytes: 3
  %loadMem_410abb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410abb = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410abb)
  store %struct.Memory* %call_410abb, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410abe	 Bytes: 3
  %loadMem_410abe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410abe = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410abe)
  store %struct.Memory* %call_410abe, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410ac1	 Bytes: 8
  %loadMem_410ac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ac1 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ac1)
  store %struct.Memory* %call_410ac1, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 410ac9	 Bytes: 3
  %loadMem_410ac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ac9 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ac9)
  store %struct.Memory* %call_410ac9, %struct.Memory** %MEMORY

  ; Code: jne .L_410aee	 RIP: 410acc	 Bytes: 6
  %loadMem_410acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410acc = call %struct.Memory* @routine_jne_.L_410aee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410acc, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_410acc, %struct.Memory** %MEMORY

  %loadBr_410acc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410acc = icmp eq i8 %loadBr_410acc, 1
  br i1 %cmpBr_410acc, label %block_.L_410aee, label %block_410ad2

block_410ad2:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 410ad2	 Bytes: 3
  %loadMem_410ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ad2 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ad2)
  store %struct.Memory* %call_410ad2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410ad5	 Bytes: 3
  %loadMem_410ad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ad5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ad5)
  store %struct.Memory* %call_410ad5, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 410ad8	 Bytes: 3
  %loadMem_410ad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ad8 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ad8)
  store %struct.Memory* %call_410ad8, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410adb	 Bytes: 3
  %loadMem_410adb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410adb = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410adb)
  store %struct.Memory* %call_410adb, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 410ade	 Bytes: 7
  %loadMem_410ade = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ade = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ade)
  store %struct.Memory* %call_410ade, %struct.Memory** %MEMORY

  ; Code: cmpl -0x18(%rbp), %eax	 RIP: 410ae5	 Bytes: 3
  %loadMem_410ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ae5 = call %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ae5)
  store %struct.Memory* %call_410ae5, %struct.Memory** %MEMORY

  ; Code: je .L_410af7	 RIP: 410ae8	 Bytes: 6
  %loadMem_410ae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ae8 = call %struct.Memory* @routine_je_.L_410af7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ae8, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_410ae8, %struct.Memory** %MEMORY

  %loadBr_410ae8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410ae8 = icmp eq i8 %loadBr_410ae8, 1
  br i1 %cmpBr_410ae8, label %block_.L_410af7, label %block_.L_410aee

  ; Code: .L_410aee:	 RIP: 410aee	 Bytes: 0
block_.L_410aee:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 410aee	 Bytes: 3
  %loadMem_410aee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410aee = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410aee)
  store %struct.Memory* %call_410aee, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410af1	 Bytes: 3
  %loadMem_410af1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410af1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410af1)
  store %struct.Memory* %call_410af1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 410af4	 Bytes: 3
  %loadMem_410af4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410af4 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410af4)
  store %struct.Memory* %call_410af4, %struct.Memory** %MEMORY

  ; Code: .L_410af7:	 RIP: 410af7	 Bytes: 0
  br label %block_.L_410af7
block_.L_410af7:

  ; Code: movq $0xa7f430, %rax	 RIP: 410af7	 Bytes: 10
  %loadMem_410af7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410af7 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410af7)
  store %struct.Memory* %call_410af7, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 410b01	 Bytes: 4
  %loadMem_410b01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b01 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b01)
  store %struct.Memory* %call_410b01, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 410b05	 Bytes: 7
  %loadMem_410b05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b05 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b05)
  store %struct.Memory* %call_410b05, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 410b0c	 Bytes: 3
  %loadMem_410b0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b0c = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b0c)
  store %struct.Memory* %call_410b0c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 410b0f	 Bytes: 3
  %loadMem_410b0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b0f = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b0f)
  store %struct.Memory* %call_410b0f, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rdx), %esi	 RIP: 410b12	 Bytes: 3
  %loadMem_410b12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b12 = call %struct.Memory* @routine_movl_0xc__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b12)
  store %struct.Memory* %call_410b12, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 410b15	 Bytes: 4
  %loadMem_410b15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b15 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b15)
  store %struct.Memory* %call_410b15, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 410b19	 Bytes: 7
  %loadMem_410b19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b19 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b19)
  store %struct.Memory* %call_410b19, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 410b20	 Bytes: 3
  %loadMem_410b20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b20 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b20)
  store %struct.Memory* %call_410b20, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 410b23	 Bytes: 3
  %loadMem_410b23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b23 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b23)
  store %struct.Memory* %call_410b23, %struct.Memory** %MEMORY

  ; Code: addl 0xc(%rdx), %esi	 RIP: 410b26	 Bytes: 3
  %loadMem_410b26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b26 = call %struct.Memory* @routine_addl_0xc__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b26)
  store %struct.Memory* %call_410b26, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 410b29	 Bytes: 4
  %loadMem_410b29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b29 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b29)
  store %struct.Memory* %call_410b29, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 410b2d	 Bytes: 7
  %loadMem_410b2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b2d = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b2d)
  store %struct.Memory* %call_410b2d, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 410b34	 Bytes: 3
  %loadMem_410b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b34 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b34)
  store %struct.Memory* %call_410b34, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 410b37	 Bytes: 3
  %loadMem_410b37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b37 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b37)
  store %struct.Memory* %call_410b37, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rdx), %edi	 RIP: 410b3a	 Bytes: 3
  %loadMem_410b3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b3a = call %struct.Memory* @routine_movl_0x8__rdx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b3a)
  store %struct.Memory* %call_410b3a, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 410b3d	 Bytes: 4
  %loadMem_410b3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b3d = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b3d)
  store %struct.Memory* %call_410b3d, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 410b41	 Bytes: 7
  %loadMem_410b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b41 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b41)
  store %struct.Memory* %call_410b41, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 410b48	 Bytes: 3
  %loadMem_410b48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b48 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b48)
  store %struct.Memory* %call_410b48, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %r8d	 RIP: 410b4b	 Bytes: 4
  %loadMem_410b4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b4b = call %struct.Memory* @routine_movl_0x8__rax____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b4b)
  store %struct.Memory* %call_410b4b, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x5c(%rbp)	 RIP: 410b4f	 Bytes: 3
  %loadMem_410b4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b4f = call %struct.Memory* @routine_movl__esi__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b4f)
  store %struct.Memory* %call_410b4f, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %esi	 RIP: 410b52	 Bytes: 3
  %loadMem_410b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b52 = call %struct.Memory* @routine_movl__r8d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b52)
  store %struct.Memory* %call_410b52, %struct.Memory** %MEMORY

  ; Code: callq .count_common_libs	 RIP: 410b55	 Bytes: 5
  %loadMem1_410b55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410b55 = call %struct.Memory* @routine_callq_.count_common_libs(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410b55, i64 891, i64 5, i64 5)
  store %struct.Memory* %call1_410b55, %struct.Memory** %MEMORY

  %loadMem2_410b55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410b55 = load i64, i64* %3
  %call2_410b55 = call %struct.Memory* @sub_410ed0.count_common_libs(%struct.State* %0, i64  %loadPC_410b55, %struct.Memory* %loadMem2_410b55)
  store %struct.Memory* %call2_410b55, %struct.Memory** %MEMORY

  ; Code: movl -0x5c(%rbp), %esi	 RIP: 410b5a	 Bytes: 3
  %loadMem_410b5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b5a = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b5a)
  store %struct.Memory* %call_410b5a, %struct.Memory** %MEMORY

  ; Code: subl %eax, %esi	 RIP: 410b5d	 Bytes: 2
  %loadMem_410b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b5d = call %struct.Memory* @routine_subl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b5d)
  store %struct.Memory* %call_410b5d, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 410b5f	 Bytes: 3
  %loadMem_410b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b5f = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b5f)
  store %struct.Memory* %call_410b5f, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %esi	 RIP: 410b62	 Bytes: 3
  %loadMem_410b62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b62 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b62)
  store %struct.Memory* %call_410b62, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x1c(%rbp)	 RIP: 410b65	 Bytes: 3
  %loadMem_410b65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b65 = call %struct.Memory* @routine_movl__esi__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b65)
  store %struct.Memory* %call_410b65, %struct.Memory** %MEMORY

  ; Code: .L_410b68:	 RIP: 410b68	 Bytes: 0
  br label %block_.L_410b68
block_.L_410b68:

  ; Code: jmpq .L_410b6d	 RIP: 410b68	 Bytes: 5
  %loadMem_410b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b68 = call %struct.Memory* @routine_jmpq_.L_410b6d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b68, i64 5, i64 5)
  store %struct.Memory* %call_410b68, %struct.Memory** %MEMORY

  br label %block_.L_410b6d

  ; Code: .L_410b6d:	 RIP: 410b6d	 Bytes: 0
block_.L_410b6d:

  ; Code: jmpq .L_410ec0	 RIP: 410b6d	 Bytes: 5
  %loadMem_410b6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b6d = call %struct.Memory* @routine_jmpq_.L_410ec0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b6d, i64 851, i64 5)
  store %struct.Memory* %call_410b6d, %struct.Memory** %MEMORY

  br label %block_.L_410ec0

  ; Code: .L_410b72:	 RIP: 410b72	 Bytes: 0
block_.L_410b72:

  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 410b72	 Bytes: 7
  %loadMem_410b72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b72 = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b72)
  store %struct.Memory* %call_410b72, %struct.Memory** %MEMORY

  ; Code: .L_410b79:	 RIP: 410b79	 Bytes: 0
  br label %block_.L_410b79
block_.L_410b79:

  ; Code: cmpl $0x4, -0x20(%rbp)	 RIP: 410b79	 Bytes: 4
  %loadMem_410b79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b79 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b79)
  store %struct.Memory* %call_410b79, %struct.Memory** %MEMORY

  ; Code: jge .L_410e24	 RIP: 410b7d	 Bytes: 6
  %loadMem_410b7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b7d = call %struct.Memory* @routine_jge_.L_410e24(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b7d, i8* %BRANCH_TAKEN, i64 679, i64 6, i64 6)
  store %struct.Memory* %call_410b7d, %struct.Memory** %MEMORY

  %loadBr_410b7d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410b7d = icmp eq i8 %loadBr_410b7d, 1
  br i1 %cmpBr_410b7d, label %block_.L_410e24, label %block_410b83

block_410b83:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 410b83	 Bytes: 3
  %loadMem_410b83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b83 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b83)
  store %struct.Memory* %call_410b83, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 410b86	 Bytes: 4
  %loadMem_410b86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b86 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b86)
  store %struct.Memory* %call_410b86, %struct.Memory** %MEMORY

  ; Code: addl 0x7ae1b0(,%rcx,4), %eax	 RIP: 410b8a	 Bytes: 7
  %loadMem_410b8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b8a = call %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b8a)
  store %struct.Memory* %call_410b8a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 410b91	 Bytes: 3
  %loadMem_410b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b91 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b91)
  store %struct.Memory* %call_410b91, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 410b94	 Bytes: 4
  %loadMem_410b94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b94 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b94)
  store %struct.Memory* %call_410b94, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410b98	 Bytes: 8
  %loadMem_410b98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410b98 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410b98)
  store %struct.Memory* %call_410b98, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 410ba0	 Bytes: 3
  %loadMem_410ba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ba0 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ba0)
  store %struct.Memory* %call_410ba0, %struct.Memory** %MEMORY

  ; Code: jne .L_410d63	 RIP: 410ba3	 Bytes: 6
  %loadMem_410ba3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ba3 = call %struct.Memory* @routine_jne_.L_410d63(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ba3, i8* %BRANCH_TAKEN, i64 448, i64 6, i64 6)
  store %struct.Memory* %call_410ba3, %struct.Memory** %MEMORY

  %loadBr_410ba3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410ba3 = icmp eq i8 %loadBr_410ba3, 1
  br i1 %cmpBr_410ba3, label %block_.L_410d63, label %block_410ba9

block_410ba9:
  ; Code: cmpl $0x0, -0x14(%rbp)	 RIP: 410ba9	 Bytes: 4
  %loadMem_410ba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ba9 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ba9)
  store %struct.Memory* %call_410ba9, %struct.Memory** %MEMORY

  ; Code: jl .L_410c7f	 RIP: 410bad	 Bytes: 6
  %loadMem_410bad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410bad = call %struct.Memory* @routine_jl_.L_410c7f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410bad, i8* %BRANCH_TAKEN, i64 210, i64 6, i64 6)
  store %struct.Memory* %call_410bad, %struct.Memory** %MEMORY

  %loadBr_410bad = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410bad = icmp eq i8 %loadBr_410bad, 1
  br i1 %cmpBr_410bad, label %block_.L_410c7f, label %block_410bb3

block_410bb3:
  ; Code: movl -0x24(%rbp), %eax	 RIP: 410bb3	 Bytes: 3
  %loadMem_410bb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410bb3 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410bb3)
  store %struct.Memory* %call_410bb3, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 410bb6	 Bytes: 3
  %loadMem_410bb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410bb6 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410bb6)
  store %struct.Memory* %call_410bb6, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410bb9	 Bytes: 3
  %loadMem_410bb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410bb9 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410bb9)
  store %struct.Memory* %call_410bb9, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410bbc	 Bytes: 8
  %loadMem_410bbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410bbc = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410bbc)
  store %struct.Memory* %call_410bbc, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 410bc4	 Bytes: 3
  %loadMem_410bc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410bc4 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410bc4)
  store %struct.Memory* %call_410bc4, %struct.Memory** %MEMORY

  ; Code: jne .L_410be6	 RIP: 410bc7	 Bytes: 6
  %loadMem_410bc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410bc7 = call %struct.Memory* @routine_jne_.L_410be6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410bc7, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_410bc7, %struct.Memory** %MEMORY

  %loadBr_410bc7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410bc7 = icmp eq i8 %loadBr_410bc7, 1
  br i1 %cmpBr_410bc7, label %block_.L_410be6, label %block_410bcd

block_410bcd:
  ; Code: movl -0x24(%rbp), %eax	 RIP: 410bcd	 Bytes: 3
  %loadMem_410bcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410bcd = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410bcd)
  store %struct.Memory* %call_410bcd, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 410bd0	 Bytes: 3
  %loadMem_410bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410bd0 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410bd0)
  store %struct.Memory* %call_410bd0, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410bd3	 Bytes: 3
  %loadMem_410bd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410bd3 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410bd3)
  store %struct.Memory* %call_410bd3, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 410bd6	 Bytes: 7
  %loadMem_410bd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410bd6 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410bd6)
  store %struct.Memory* %call_410bd6, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 410bdd	 Bytes: 3
  %loadMem_410bdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410bdd = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410bdd)
  store %struct.Memory* %call_410bdd, %struct.Memory** %MEMORY

  ; Code: je .L_410d63	 RIP: 410be0	 Bytes: 6
  %loadMem_410be0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410be0 = call %struct.Memory* @routine_je_.L_410d63(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410be0, i8* %BRANCH_TAKEN, i64 387, i64 6, i64 6)
  store %struct.Memory* %call_410be0, %struct.Memory** %MEMORY

  %loadBr_410be0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410be0 = icmp eq i8 %loadBr_410be0, 1
  br i1 %cmpBr_410be0, label %block_.L_410d63, label %block_.L_410be6

  ; Code: .L_410be6:	 RIP: 410be6	 Bytes: 0
block_.L_410be6:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 410be6	 Bytes: 3
  %loadMem_410be6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410be6 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410be6)
  store %struct.Memory* %call_410be6, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 410be9	 Bytes: 3
  %loadMem_410be9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410be9 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410be9)
  store %struct.Memory* %call_410be9, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410bec	 Bytes: 3
  %loadMem_410bec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410bec = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410bec)
  store %struct.Memory* %call_410bec, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410bef	 Bytes: 8
  %loadMem_410bef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410bef = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410bef)
  store %struct.Memory* %call_410bef, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 410bf7	 Bytes: 3
  %loadMem_410bf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410bf7 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410bf7)
  store %struct.Memory* %call_410bf7, %struct.Memory** %MEMORY

  ; Code: jne .L_410c19	 RIP: 410bfa	 Bytes: 6
  %loadMem_410bfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410bfa = call %struct.Memory* @routine_jne_.L_410c19(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410bfa, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_410bfa, %struct.Memory** %MEMORY

  %loadBr_410bfa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410bfa = icmp eq i8 %loadBr_410bfa, 1
  br i1 %cmpBr_410bfa, label %block_.L_410c19, label %block_410c00

block_410c00:
  ; Code: movl -0x24(%rbp), %eax	 RIP: 410c00	 Bytes: 3
  %loadMem_410c00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c00 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c00)
  store %struct.Memory* %call_410c00, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 410c03	 Bytes: 3
  %loadMem_410c03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c03 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c03)
  store %struct.Memory* %call_410c03, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410c06	 Bytes: 3
  %loadMem_410c06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c06 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c06)
  store %struct.Memory* %call_410c06, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 410c09	 Bytes: 7
  %loadMem_410c09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c09 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c09)
  store %struct.Memory* %call_410c09, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 410c10	 Bytes: 3
  %loadMem_410c10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c10 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c10)
  store %struct.Memory* %call_410c10, %struct.Memory** %MEMORY

  ; Code: je .L_410d63	 RIP: 410c13	 Bytes: 6
  %loadMem_410c13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c13 = call %struct.Memory* @routine_je_.L_410d63(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c13, i8* %BRANCH_TAKEN, i64 336, i64 6, i64 6)
  store %struct.Memory* %call_410c13, %struct.Memory** %MEMORY

  %loadBr_410c13 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410c13 = icmp eq i8 %loadBr_410c13, 1
  br i1 %cmpBr_410c13, label %block_.L_410d63, label %block_.L_410c19

  ; Code: .L_410c19:	 RIP: 410c19	 Bytes: 0
block_.L_410c19:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 410c19	 Bytes: 3
  %loadMem_410c19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c19 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c19)
  store %struct.Memory* %call_410c19, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 410c1c	 Bytes: 3
  %loadMem_410c1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c1c = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c1c)
  store %struct.Memory* %call_410c1c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410c1f	 Bytes: 3
  %loadMem_410c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c1f = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c1f)
  store %struct.Memory* %call_410c1f, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410c22	 Bytes: 8
  %loadMem_410c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c22 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c22)
  store %struct.Memory* %call_410c22, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 410c2a	 Bytes: 3
  %loadMem_410c2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c2a = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c2a)
  store %struct.Memory* %call_410c2a, %struct.Memory** %MEMORY

  ; Code: jne .L_410c4c	 RIP: 410c2d	 Bytes: 6
  %loadMem_410c2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c2d = call %struct.Memory* @routine_jne_.L_410c4c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c2d, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_410c2d, %struct.Memory** %MEMORY

  %loadBr_410c2d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410c2d = icmp eq i8 %loadBr_410c2d, 1
  br i1 %cmpBr_410c2d, label %block_.L_410c4c, label %block_410c33

block_410c33:
  ; Code: movl -0x24(%rbp), %eax	 RIP: 410c33	 Bytes: 3
  %loadMem_410c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c33 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c33)
  store %struct.Memory* %call_410c33, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 410c36	 Bytes: 3
  %loadMem_410c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c36 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c36)
  store %struct.Memory* %call_410c36, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410c39	 Bytes: 3
  %loadMem_410c39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c39 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c39)
  store %struct.Memory* %call_410c39, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 410c3c	 Bytes: 7
  %loadMem_410c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c3c = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c3c)
  store %struct.Memory* %call_410c3c, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 410c43	 Bytes: 3
  %loadMem_410c43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c43 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c43)
  store %struct.Memory* %call_410c43, %struct.Memory** %MEMORY

  ; Code: je .L_410d63	 RIP: 410c46	 Bytes: 6
  %loadMem_410c46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c46 = call %struct.Memory* @routine_je_.L_410d63(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c46, i8* %BRANCH_TAKEN, i64 285, i64 6, i64 6)
  store %struct.Memory* %call_410c46, %struct.Memory** %MEMORY

  %loadBr_410c46 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410c46 = icmp eq i8 %loadBr_410c46, 1
  br i1 %cmpBr_410c46, label %block_.L_410d63, label %block_.L_410c4c

  ; Code: .L_410c4c:	 RIP: 410c4c	 Bytes: 0
block_.L_410c4c:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 410c4c	 Bytes: 3
  %loadMem_410c4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c4c = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c4c)
  store %struct.Memory* %call_410c4c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410c4f	 Bytes: 3
  %loadMem_410c4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c4f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c4f)
  store %struct.Memory* %call_410c4f, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410c52	 Bytes: 3
  %loadMem_410c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c52 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c52)
  store %struct.Memory* %call_410c52, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410c55	 Bytes: 8
  %loadMem_410c55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c55 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c55)
  store %struct.Memory* %call_410c55, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 410c5d	 Bytes: 3
  %loadMem_410c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c5d = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c5d)
  store %struct.Memory* %call_410c5d, %struct.Memory** %MEMORY

  ; Code: jne .L_410c7f	 RIP: 410c60	 Bytes: 6
  %loadMem_410c60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c60 = call %struct.Memory* @routine_jne_.L_410c7f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c60, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_410c60, %struct.Memory** %MEMORY

  %loadBr_410c60 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410c60 = icmp eq i8 %loadBr_410c60, 1
  br i1 %cmpBr_410c60, label %block_.L_410c7f, label %block_410c66

block_410c66:
  ; Code: movl -0x24(%rbp), %eax	 RIP: 410c66	 Bytes: 3
  %loadMem_410c66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c66 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c66)
  store %struct.Memory* %call_410c66, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410c69	 Bytes: 3
  %loadMem_410c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c69 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c69)
  store %struct.Memory* %call_410c69, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410c6c	 Bytes: 3
  %loadMem_410c6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c6c = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c6c)
  store %struct.Memory* %call_410c6c, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 410c6f	 Bytes: 7
  %loadMem_410c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c6f = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c6f)
  store %struct.Memory* %call_410c6f, %struct.Memory** %MEMORY

  ; Code: cmpl -0x14(%rbp), %eax	 RIP: 410c76	 Bytes: 3
  %loadMem_410c76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c76 = call %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c76)
  store %struct.Memory* %call_410c76, %struct.Memory** %MEMORY

  ; Code: je .L_410d63	 RIP: 410c79	 Bytes: 6
  %loadMem_410c79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c79 = call %struct.Memory* @routine_je_.L_410d63(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c79, i8* %BRANCH_TAKEN, i64 234, i64 6, i64 6)
  store %struct.Memory* %call_410c79, %struct.Memory** %MEMORY

  %loadBr_410c79 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410c79 = icmp eq i8 %loadBr_410c79, 1
  br i1 %cmpBr_410c79, label %block_.L_410d63, label %block_.L_410c7f

  ; Code: .L_410c7f:	 RIP: 410c7f	 Bytes: 0
block_.L_410c7f:

  ; Code: cmpl $0x0, -0x18(%rbp)	 RIP: 410c7f	 Bytes: 4
  %loadMem_410c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c7f = call %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c7f)
  store %struct.Memory* %call_410c7f, %struct.Memory** %MEMORY

  ; Code: jl .L_410d55	 RIP: 410c83	 Bytes: 6
  %loadMem_410c83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c83 = call %struct.Memory* @routine_jl_.L_410d55(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c83, i8* %BRANCH_TAKEN, i64 210, i64 6, i64 6)
  store %struct.Memory* %call_410c83, %struct.Memory** %MEMORY

  %loadBr_410c83 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410c83 = icmp eq i8 %loadBr_410c83, 1
  br i1 %cmpBr_410c83, label %block_.L_410d55, label %block_410c89

block_410c89:
  ; Code: movl -0x24(%rbp), %eax	 RIP: 410c89	 Bytes: 3
  %loadMem_410c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c89 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c89)
  store %struct.Memory* %call_410c89, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 410c8c	 Bytes: 3
  %loadMem_410c8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c8c = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c8c)
  store %struct.Memory* %call_410c8c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410c8f	 Bytes: 3
  %loadMem_410c8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c8f = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c8f)
  store %struct.Memory* %call_410c8f, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410c92	 Bytes: 8
  %loadMem_410c92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c92 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c92)
  store %struct.Memory* %call_410c92, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 410c9a	 Bytes: 3
  %loadMem_410c9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c9a = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c9a)
  store %struct.Memory* %call_410c9a, %struct.Memory** %MEMORY

  ; Code: jne .L_410cbc	 RIP: 410c9d	 Bytes: 6
  %loadMem_410c9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410c9d = call %struct.Memory* @routine_jne_.L_410cbc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410c9d, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_410c9d, %struct.Memory** %MEMORY

  %loadBr_410c9d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410c9d = icmp eq i8 %loadBr_410c9d, 1
  br i1 %cmpBr_410c9d, label %block_.L_410cbc, label %block_410ca3

block_410ca3:
  ; Code: movl -0x24(%rbp), %eax	 RIP: 410ca3	 Bytes: 3
  %loadMem_410ca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ca3 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ca3)
  store %struct.Memory* %call_410ca3, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 410ca6	 Bytes: 3
  %loadMem_410ca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ca6 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ca6)
  store %struct.Memory* %call_410ca6, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410ca9	 Bytes: 3
  %loadMem_410ca9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ca9 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ca9)
  store %struct.Memory* %call_410ca9, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 410cac	 Bytes: 7
  %loadMem_410cac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410cac = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410cac)
  store %struct.Memory* %call_410cac, %struct.Memory** %MEMORY

  ; Code: cmpl -0x18(%rbp), %eax	 RIP: 410cb3	 Bytes: 3
  %loadMem_410cb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410cb3 = call %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410cb3)
  store %struct.Memory* %call_410cb3, %struct.Memory** %MEMORY

  ; Code: je .L_410d63	 RIP: 410cb6	 Bytes: 6
  %loadMem_410cb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410cb6 = call %struct.Memory* @routine_je_.L_410d63(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410cb6, i8* %BRANCH_TAKEN, i64 173, i64 6, i64 6)
  store %struct.Memory* %call_410cb6, %struct.Memory** %MEMORY

  %loadBr_410cb6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410cb6 = icmp eq i8 %loadBr_410cb6, 1
  br i1 %cmpBr_410cb6, label %block_.L_410d63, label %block_.L_410cbc

  ; Code: .L_410cbc:	 RIP: 410cbc	 Bytes: 0
block_.L_410cbc:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 410cbc	 Bytes: 3
  %loadMem_410cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410cbc = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410cbc)
  store %struct.Memory* %call_410cbc, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 410cbf	 Bytes: 3
  %loadMem_410cbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410cbf = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410cbf)
  store %struct.Memory* %call_410cbf, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410cc2	 Bytes: 3
  %loadMem_410cc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410cc2 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410cc2)
  store %struct.Memory* %call_410cc2, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410cc5	 Bytes: 8
  %loadMem_410cc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410cc5 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410cc5)
  store %struct.Memory* %call_410cc5, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 410ccd	 Bytes: 3
  %loadMem_410ccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ccd = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ccd)
  store %struct.Memory* %call_410ccd, %struct.Memory** %MEMORY

  ; Code: jne .L_410cef	 RIP: 410cd0	 Bytes: 6
  %loadMem_410cd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410cd0 = call %struct.Memory* @routine_jne_.L_410cef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410cd0, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_410cd0, %struct.Memory** %MEMORY

  %loadBr_410cd0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410cd0 = icmp eq i8 %loadBr_410cd0, 1
  br i1 %cmpBr_410cd0, label %block_.L_410cef, label %block_410cd6

block_410cd6:
  ; Code: movl -0x24(%rbp), %eax	 RIP: 410cd6	 Bytes: 3
  %loadMem_410cd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410cd6 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410cd6)
  store %struct.Memory* %call_410cd6, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 410cd9	 Bytes: 3
  %loadMem_410cd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410cd9 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410cd9)
  store %struct.Memory* %call_410cd9, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410cdc	 Bytes: 3
  %loadMem_410cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410cdc = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410cdc)
  store %struct.Memory* %call_410cdc, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 410cdf	 Bytes: 7
  %loadMem_410cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410cdf = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410cdf)
  store %struct.Memory* %call_410cdf, %struct.Memory** %MEMORY

  ; Code: cmpl -0x18(%rbp), %eax	 RIP: 410ce6	 Bytes: 3
  %loadMem_410ce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ce6 = call %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ce6)
  store %struct.Memory* %call_410ce6, %struct.Memory** %MEMORY

  ; Code: je .L_410d63	 RIP: 410ce9	 Bytes: 6
  %loadMem_410ce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ce9 = call %struct.Memory* @routine_je_.L_410d63(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ce9, i8* %BRANCH_TAKEN, i64 122, i64 6, i64 6)
  store %struct.Memory* %call_410ce9, %struct.Memory** %MEMORY

  %loadBr_410ce9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410ce9 = icmp eq i8 %loadBr_410ce9, 1
  br i1 %cmpBr_410ce9, label %block_.L_410d63, label %block_.L_410cef

  ; Code: .L_410cef:	 RIP: 410cef	 Bytes: 0
block_.L_410cef:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 410cef	 Bytes: 3
  %loadMem_410cef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410cef = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410cef)
  store %struct.Memory* %call_410cef, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 410cf2	 Bytes: 3
  %loadMem_410cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410cf2 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410cf2)
  store %struct.Memory* %call_410cf2, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410cf5	 Bytes: 3
  %loadMem_410cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410cf5 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410cf5)
  store %struct.Memory* %call_410cf5, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410cf8	 Bytes: 8
  %loadMem_410cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410cf8 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410cf8)
  store %struct.Memory* %call_410cf8, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 410d00	 Bytes: 3
  %loadMem_410d00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d00 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d00)
  store %struct.Memory* %call_410d00, %struct.Memory** %MEMORY

  ; Code: jne .L_410d22	 RIP: 410d03	 Bytes: 6
  %loadMem_410d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d03 = call %struct.Memory* @routine_jne_.L_410d22(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d03, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_410d03, %struct.Memory** %MEMORY

  %loadBr_410d03 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410d03 = icmp eq i8 %loadBr_410d03, 1
  br i1 %cmpBr_410d03, label %block_.L_410d22, label %block_410d09

block_410d09:
  ; Code: movl -0x24(%rbp), %eax	 RIP: 410d09	 Bytes: 3
  %loadMem_410d09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d09 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d09)
  store %struct.Memory* %call_410d09, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 410d0c	 Bytes: 3
  %loadMem_410d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d0c = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d0c)
  store %struct.Memory* %call_410d0c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410d0f	 Bytes: 3
  %loadMem_410d0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d0f = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d0f)
  store %struct.Memory* %call_410d0f, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 410d12	 Bytes: 7
  %loadMem_410d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d12 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d12)
  store %struct.Memory* %call_410d12, %struct.Memory** %MEMORY

  ; Code: cmpl -0x18(%rbp), %eax	 RIP: 410d19	 Bytes: 3
  %loadMem_410d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d19 = call %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d19)
  store %struct.Memory* %call_410d19, %struct.Memory** %MEMORY

  ; Code: je .L_410d63	 RIP: 410d1c	 Bytes: 6
  %loadMem_410d1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d1c = call %struct.Memory* @routine_je_.L_410d63(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d1c, i8* %BRANCH_TAKEN, i64 71, i64 6, i64 6)
  store %struct.Memory* %call_410d1c, %struct.Memory** %MEMORY

  %loadBr_410d1c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410d1c = icmp eq i8 %loadBr_410d1c, 1
  br i1 %cmpBr_410d1c, label %block_.L_410d63, label %block_.L_410d22

  ; Code: .L_410d22:	 RIP: 410d22	 Bytes: 0
block_.L_410d22:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 410d22	 Bytes: 3
  %loadMem_410d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d22 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d22)
  store %struct.Memory* %call_410d22, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410d25	 Bytes: 3
  %loadMem_410d25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d25 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d25)
  store %struct.Memory* %call_410d25, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410d28	 Bytes: 3
  %loadMem_410d28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d28 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d28)
  store %struct.Memory* %call_410d28, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 410d2b	 Bytes: 8
  %loadMem_410d2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d2b = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d2b)
  store %struct.Memory* %call_410d2b, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 410d33	 Bytes: 3
  %loadMem_410d33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d33 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d33)
  store %struct.Memory* %call_410d33, %struct.Memory** %MEMORY

  ; Code: jne .L_410d55	 RIP: 410d36	 Bytes: 6
  %loadMem_410d36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d36 = call %struct.Memory* @routine_jne_.L_410d55(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d36, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_410d36, %struct.Memory** %MEMORY

  %loadBr_410d36 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410d36 = icmp eq i8 %loadBr_410d36, 1
  br i1 %cmpBr_410d36, label %block_.L_410d55, label %block_410d3c

block_410d3c:
  ; Code: movl -0x24(%rbp), %eax	 RIP: 410d3c	 Bytes: 3
  %loadMem_410d3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d3c = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d3c)
  store %struct.Memory* %call_410d3c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410d3f	 Bytes: 3
  %loadMem_410d3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d3f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d3f)
  store %struct.Memory* %call_410d3f, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 410d42	 Bytes: 3
  %loadMem_410d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d42 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d42)
  store %struct.Memory* %call_410d42, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 410d45	 Bytes: 7
  %loadMem_410d45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d45 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d45)
  store %struct.Memory* %call_410d45, %struct.Memory** %MEMORY

  ; Code: cmpl -0x18(%rbp), %eax	 RIP: 410d4c	 Bytes: 3
  %loadMem_410d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d4c = call %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d4c)
  store %struct.Memory* %call_410d4c, %struct.Memory** %MEMORY

  ; Code: je .L_410d63	 RIP: 410d4f	 Bytes: 6
  %loadMem_410d4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d4f = call %struct.Memory* @routine_je_.L_410d63(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d4f, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_410d4f, %struct.Memory** %MEMORY

  %loadBr_410d4f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410d4f = icmp eq i8 %loadBr_410d4f, 1
  br i1 %cmpBr_410d4f, label %block_.L_410d63, label %block_.L_410d55

  ; Code: .L_410d55:	 RIP: 410d55	 Bytes: 0
block_.L_410d55:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 410d55	 Bytes: 3
  %loadMem_410d55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d55 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d55)
  store %struct.Memory* %call_410d55, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410d58	 Bytes: 3
  %loadMem_410d58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d58 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d58)
  store %struct.Memory* %call_410d58, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 410d5b	 Bytes: 3
  %loadMem_410d5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d5b = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d5b)
  store %struct.Memory* %call_410d5b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_410e11	 RIP: 410d5e	 Bytes: 5
  %loadMem_410d5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d5e = call %struct.Memory* @routine_jmpq_.L_410e11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d5e, i64 179, i64 5)
  store %struct.Memory* %call_410d5e, %struct.Memory** %MEMORY

  br label %block_.L_410e11

  ; Code: .L_410d63:	 RIP: 410d63	 Bytes: 0
block_.L_410d63:

  ; Code: movl $0x3, %eax	 RIP: 410d63	 Bytes: 5
  %loadMem_410d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d63 = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d63)
  store %struct.Memory* %call_410d63, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 410d68	 Bytes: 4
  %loadMem_410d68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d68 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d68)
  store %struct.Memory* %call_410d68, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %edx	 RIP: 410d6c	 Bytes: 8
  %loadMem_410d6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d6c = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d6c)
  store %struct.Memory* %call_410d6c, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 410d74	 Bytes: 3
  %loadMem_410d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d74 = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d74)
  store %struct.Memory* %call_410d74, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %edx	 RIP: 410d77	 Bytes: 2
  %loadMem_410d77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d77 = call %struct.Memory* @routine_cmpl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d77)
  store %struct.Memory* %call_410d77, %struct.Memory** %MEMORY

  ; Code: jne .L_410e0c	 RIP: 410d79	 Bytes: 6
  %loadMem_410d79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d79 = call %struct.Memory* @routine_jne_.L_410e0c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d79, i8* %BRANCH_TAKEN, i64 147, i64 6, i64 6)
  store %struct.Memory* %call_410d79, %struct.Memory** %MEMORY

  %loadBr_410d79 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410d79 = icmp eq i8 %loadBr_410d79, 1
  br i1 %cmpBr_410d79, label %block_.L_410e0c, label %block_410d7f

block_410d7f:
  ; Code: movq $0xa7f430, %rax	 RIP: 410d7f	 Bytes: 10
  %loadMem_410d7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d7f = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d7f)
  store %struct.Memory* %call_410d7f, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 410d89	 Bytes: 4
  %loadMem_410d89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d89 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d89)
  store %struct.Memory* %call_410d89, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rcx,4), %rcx	 RIP: 410d8d	 Bytes: 8
  %loadMem_410d8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d8d = call %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d8d)
  store %struct.Memory* %call_410d8d, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 410d95	 Bytes: 7
  %loadMem_410d95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d95 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d95)
  store %struct.Memory* %call_410d95, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 410d9c	 Bytes: 3
  %loadMem_410d9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d9c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d9c)
  store %struct.Memory* %call_410d9c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xc(%rax)	 RIP: 410d9f	 Bytes: 4
  %loadMem_410d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410d9f = call %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410d9f)
  store %struct.Memory* %call_410d9f, %struct.Memory** %MEMORY

  ; Code: jne .L_410e0c	 RIP: 410da3	 Bytes: 6
  %loadMem_410da3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410da3 = call %struct.Memory* @routine_jne_.L_410e0c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410da3, i8* %BRANCH_TAKEN, i64 105, i64 6, i64 6)
  store %struct.Memory* %call_410da3, %struct.Memory** %MEMORY

  %loadBr_410da3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410da3 = icmp eq i8 %loadBr_410da3, 1
  br i1 %cmpBr_410da3, label %block_.L_410e0c, label %block_410da9

block_410da9:
  ; Code: movq $0xa7f430, %rax	 RIP: 410da9	 Bytes: 10
  %loadMem_410da9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410da9 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410da9)
  store %struct.Memory* %call_410da9, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 410db3	 Bytes: 4
  %loadMem_410db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410db3 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410db3)
  store %struct.Memory* %call_410db3, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rcx,4), %rcx	 RIP: 410db7	 Bytes: 8
  %loadMem_410db7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410db7 = call %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410db7)
  store %struct.Memory* %call_410db7, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 410dbf	 Bytes: 7
  %loadMem_410dbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410dbf = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410dbf)
  store %struct.Memory* %call_410dbf, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 410dc6	 Bytes: 3
  %loadMem_410dc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410dc6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410dc6)
  store %struct.Memory* %call_410dc6, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 410dc9	 Bytes: 3
  %loadMem_410dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410dc9 = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410dc9)
  store %struct.Memory* %call_410dc9, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x28(%rbp)	 RIP: 410dcc	 Bytes: 3
  %loadMem_410dcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410dcc = call %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410dcc)
  store %struct.Memory* %call_410dcc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, -0x28(%rbp)	 RIP: 410dcf	 Bytes: 4
  %loadMem_410dcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410dcf = call %struct.Memory* @routine_cmpl__0x1__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410dcf)
  store %struct.Memory* %call_410dcf, %struct.Memory** %MEMORY

  ; Code: je .L_410ded	 RIP: 410dd3	 Bytes: 6
  %loadMem_410dd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410dd3 = call %struct.Memory* @routine_je_.L_410ded(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410dd3, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_410dd3, %struct.Memory** %MEMORY

  %loadBr_410dd3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410dd3 = icmp eq i8 %loadBr_410dd3, 1
  br i1 %cmpBr_410dd3, label %block_.L_410ded, label %block_410dd9

block_410dd9:
  ; Code: cmpl $0x2, -0x28(%rbp)	 RIP: 410dd9	 Bytes: 4
  %loadMem_410dd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410dd9 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410dd9)
  store %struct.Memory* %call_410dd9, %struct.Memory** %MEMORY

  ; Code: jne .L_410dfb	 RIP: 410ddd	 Bytes: 6
  %loadMem_410ddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ddd = call %struct.Memory* @routine_jne_.L_410dfb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ddd, i8* %BRANCH_TAKEN, i64 30, i64 6, i64 6)
  store %struct.Memory* %call_410ddd, %struct.Memory** %MEMORY

  %loadBr_410ddd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410ddd = icmp eq i8 %loadBr_410ddd, 1
  br i1 %cmpBr_410ddd, label %block_.L_410dfb, label %block_410de3

block_410de3:
  ; Code: cmpl $0x0, -0x14(%rbp)	 RIP: 410de3	 Bytes: 4
  %loadMem_410de3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410de3 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410de3)
  store %struct.Memory* %call_410de3, %struct.Memory** %MEMORY

  ; Code: jge .L_410dfb	 RIP: 410de7	 Bytes: 6
  %loadMem_410de7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410de7 = call %struct.Memory* @routine_jge_.L_410dfb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410de7, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_410de7, %struct.Memory** %MEMORY

  %loadBr_410de7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410de7 = icmp eq i8 %loadBr_410de7, 1
  br i1 %cmpBr_410de7, label %block_.L_410dfb, label %block_.L_410ded

  ; Code: .L_410ded:	 RIP: 410ded	 Bytes: 0
block_.L_410ded:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 410ded	 Bytes: 3
  %loadMem_410ded = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ded = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ded)
  store %struct.Memory* %call_410ded, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410df0	 Bytes: 3
  %loadMem_410df0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410df0 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410df0)
  store %struct.Memory* %call_410df0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 410df3	 Bytes: 3
  %loadMem_410df3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410df3 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410df3)
  store %struct.Memory* %call_410df3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_410e07	 RIP: 410df6	 Bytes: 5
  %loadMem_410df6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410df6 = call %struct.Memory* @routine_jmpq_.L_410e07(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410df6, i64 17, i64 5)
  store %struct.Memory* %call_410df6, %struct.Memory** %MEMORY

  br label %block_.L_410e07

  ; Code: .L_410dfb:	 RIP: 410dfb	 Bytes: 0
block_.L_410dfb:

  ; Code: movl $0xffffffff, -0x4(%rbp)	 RIP: 410dfb	 Bytes: 7
  %loadMem_410dfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410dfb = call %struct.Memory* @routine_movl__0xffffffff__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410dfb)
  store %struct.Memory* %call_410dfb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_410ec6	 RIP: 410e02	 Bytes: 5
  %loadMem_410e02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e02 = call %struct.Memory* @routine_jmpq_.L_410ec6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e02, i64 196, i64 5)
  store %struct.Memory* %call_410e02, %struct.Memory** %MEMORY

  br label %block_.L_410ec6

  ; Code: .L_410e07:	 RIP: 410e07	 Bytes: 0
block_.L_410e07:

  ; Code: jmpq .L_410e0c	 RIP: 410e07	 Bytes: 5
  %loadMem_410e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e07 = call %struct.Memory* @routine_jmpq_.L_410e0c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e07, i64 5, i64 5)
  store %struct.Memory* %call_410e07, %struct.Memory** %MEMORY

  br label %block_.L_410e0c

  ; Code: .L_410e0c:	 RIP: 410e0c	 Bytes: 0
block_.L_410e0c:

  ; Code: jmpq .L_410e11	 RIP: 410e0c	 Bytes: 5
  %loadMem_410e0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e0c = call %struct.Memory* @routine_jmpq_.L_410e11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e0c, i64 5, i64 5)
  store %struct.Memory* %call_410e0c, %struct.Memory** %MEMORY

  br label %block_.L_410e11

  ; Code: .L_410e11:	 RIP: 410e11	 Bytes: 0
block_.L_410e11:

  ; Code: jmpq .L_410e16	 RIP: 410e11	 Bytes: 5
  %loadMem_410e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e11 = call %struct.Memory* @routine_jmpq_.L_410e16(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e11, i64 5, i64 5)
  store %struct.Memory* %call_410e11, %struct.Memory** %MEMORY

  br label %block_.L_410e16

  ; Code: .L_410e16:	 RIP: 410e16	 Bytes: 0
block_.L_410e16:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 410e16	 Bytes: 3
  %loadMem_410e16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e16 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e16)
  store %struct.Memory* %call_410e16, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 410e19	 Bytes: 3
  %loadMem_410e19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e19 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e19)
  store %struct.Memory* %call_410e19, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 410e1c	 Bytes: 3
  %loadMem_410e1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e1c = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e1c)
  store %struct.Memory* %call_410e1c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_410b79	 RIP: 410e1f	 Bytes: 5
  %loadMem_410e1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e1f = call %struct.Memory* @routine_jmpq_.L_410b79(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e1f, i64 -678, i64 5)
  store %struct.Memory* %call_410e1f, %struct.Memory** %MEMORY

  br label %block_.L_410b79

  ; Code: .L_410e24:	 RIP: 410e24	 Bytes: 0
block_.L_410e24:

  ; Code: cmpl $0x0, -0x14(%rbp)	 RIP: 410e24	 Bytes: 4
  %loadMem_410e24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e24 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e24)
  store %struct.Memory* %call_410e24, %struct.Memory** %MEMORY

  ; Code: jl .L_410ebb	 RIP: 410e28	 Bytes: 6
  %loadMem_410e28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e28 = call %struct.Memory* @routine_jl_.L_410ebb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e28, i8* %BRANCH_TAKEN, i64 147, i64 6, i64 6)
  store %struct.Memory* %call_410e28, %struct.Memory** %MEMORY

  %loadBr_410e28 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410e28 = icmp eq i8 %loadBr_410e28, 1
  br i1 %cmpBr_410e28, label %block_.L_410ebb, label %block_410e2e

block_410e2e:
  ; Code: movq $0xa7f430, %rax	 RIP: 410e2e	 Bytes: 10
  %loadMem_410e2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e2e = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e2e)
  store %struct.Memory* %call_410e2e, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 410e38	 Bytes: 4
  %loadMem_410e38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e38 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e38)
  store %struct.Memory* %call_410e38, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 410e3c	 Bytes: 7
  %loadMem_410e3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e3c = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e3c)
  store %struct.Memory* %call_410e3c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 410e43	 Bytes: 3
  %loadMem_410e43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e43 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e43)
  store %struct.Memory* %call_410e43, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 410e46	 Bytes: 3
  %loadMem_410e46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e46 = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e46)
  store %struct.Memory* %call_410e46, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 410e49	 Bytes: 3
  %loadMem_410e49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e49 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e49)
  store %struct.Memory* %call_410e49, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %edx	 RIP: 410e4c	 Bytes: 3
  %loadMem_410e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e4c = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e4c)
  store %struct.Memory* %call_410e4c, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x1c(%rbp)	 RIP: 410e4f	 Bytes: 3
  %loadMem_410e4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e4f = call %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e4f)
  store %struct.Memory* %call_410e4f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x18(%rbp)	 RIP: 410e52	 Bytes: 4
  %loadMem_410e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e52 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e52)
  store %struct.Memory* %call_410e52, %struct.Memory** %MEMORY

  ; Code: jl .L_410eb6	 RIP: 410e56	 Bytes: 6
  %loadMem_410e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e56 = call %struct.Memory* @routine_jl_.L_410eb6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e56, i8* %BRANCH_TAKEN, i64 96, i64 6, i64 6)
  store %struct.Memory* %call_410e56, %struct.Memory** %MEMORY

  %loadBr_410e56 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_410e56 = icmp eq i8 %loadBr_410e56, 1
  br i1 %cmpBr_410e56, label %block_.L_410eb6, label %block_410e5c

block_410e5c:
  ; Code: movq $0xa7f430, %rax	 RIP: 410e5c	 Bytes: 10
  %loadMem_410e5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e5c = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e5c)
  store %struct.Memory* %call_410e5c, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 410e66	 Bytes: 4
  %loadMem_410e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e66 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e66)
  store %struct.Memory* %call_410e66, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 410e6a	 Bytes: 7
  %loadMem_410e6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e6a = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e6a)
  store %struct.Memory* %call_410e6a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 410e71	 Bytes: 3
  %loadMem_410e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e71 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e71)
  store %struct.Memory* %call_410e71, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 410e74	 Bytes: 3
  %loadMem_410e74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e74 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e74)
  store %struct.Memory* %call_410e74, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rdx), %esi	 RIP: 410e77	 Bytes: 3
  %loadMem_410e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e77 = call %struct.Memory* @routine_movl_0xc__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e77)
  store %struct.Memory* %call_410e77, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 410e7a	 Bytes: 4
  %loadMem_410e7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e7a = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e7a)
  store %struct.Memory* %call_410e7a, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 410e7e	 Bytes: 7
  %loadMem_410e7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e7e = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e7e)
  store %struct.Memory* %call_410e7e, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 410e85	 Bytes: 3
  %loadMem_410e85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e85 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e85)
  store %struct.Memory* %call_410e85, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 410e88	 Bytes: 3
  %loadMem_410e88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e88 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e88)
  store %struct.Memory* %call_410e88, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rdx), %edi	 RIP: 410e8b	 Bytes: 3
  %loadMem_410e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e8b = call %struct.Memory* @routine_movl_0x8__rdx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e8b)
  store %struct.Memory* %call_410e8b, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 410e8e	 Bytes: 4
  %loadMem_410e8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e8e = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e8e)
  store %struct.Memory* %call_410e8e, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 410e92	 Bytes: 7
  %loadMem_410e92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e92 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e92)
  store %struct.Memory* %call_410e92, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 410e99	 Bytes: 3
  %loadMem_410e99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e99 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e99)
  store %struct.Memory* %call_410e99, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %r8d	 RIP: 410e9c	 Bytes: 4
  %loadMem_410e9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410e9c = call %struct.Memory* @routine_movl_0x8__rax____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410e9c)
  store %struct.Memory* %call_410e9c, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x60(%rbp)	 RIP: 410ea0	 Bytes: 3
  %loadMem_410ea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ea0 = call %struct.Memory* @routine_movl__esi__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ea0)
  store %struct.Memory* %call_410ea0, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %esi	 RIP: 410ea3	 Bytes: 3
  %loadMem_410ea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ea3 = call %struct.Memory* @routine_movl__r8d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ea3)
  store %struct.Memory* %call_410ea3, %struct.Memory** %MEMORY

  ; Code: callq .count_common_libs	 RIP: 410ea6	 Bytes: 5
  %loadMem1_410ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_410ea6 = call %struct.Memory* @routine_callq_.count_common_libs(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_410ea6, i64 42, i64 5, i64 5)
  store %struct.Memory* %call1_410ea6, %struct.Memory** %MEMORY

  %loadMem2_410ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_410ea6 = load i64, i64* %3
  %call2_410ea6 = call %struct.Memory* @sub_410ed0.count_common_libs(%struct.State* %0, i64  %loadPC_410ea6, %struct.Memory* %loadMem2_410ea6)
  store %struct.Memory* %call2_410ea6, %struct.Memory** %MEMORY

  ; Code: movl -0x60(%rbp), %esi	 RIP: 410eab	 Bytes: 3
  %loadMem_410eab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410eab = call %struct.Memory* @routine_movl_MINUS0x60__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410eab)
  store %struct.Memory* %call_410eab, %struct.Memory** %MEMORY

  ; Code: subl %eax, %esi	 RIP: 410eae	 Bytes: 2
  %loadMem_410eae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410eae = call %struct.Memory* @routine_subl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410eae)
  store %struct.Memory* %call_410eae, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %esi	 RIP: 410eb0	 Bytes: 3
  %loadMem_410eb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410eb0 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410eb0)
  store %struct.Memory* %call_410eb0, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x1c(%rbp)	 RIP: 410eb3	 Bytes: 3
  %loadMem_410eb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410eb3 = call %struct.Memory* @routine_movl__esi__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410eb3)
  store %struct.Memory* %call_410eb3, %struct.Memory** %MEMORY

  ; Code: .L_410eb6:	 RIP: 410eb6	 Bytes: 0
  br label %block_.L_410eb6
block_.L_410eb6:

  ; Code: jmpq .L_410ebb	 RIP: 410eb6	 Bytes: 5
  %loadMem_410eb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410eb6 = call %struct.Memory* @routine_jmpq_.L_410ebb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410eb6, i64 5, i64 5)
  store %struct.Memory* %call_410eb6, %struct.Memory** %MEMORY

  br label %block_.L_410ebb

  ; Code: .L_410ebb:	 RIP: 410ebb	 Bytes: 0
block_.L_410ebb:

  ; Code: jmpq .L_410ec0	 RIP: 410ebb	 Bytes: 5
  %loadMem_410ebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ebb = call %struct.Memory* @routine_jmpq_.L_410ec0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ebb, i64 5, i64 5)
  store %struct.Memory* %call_410ebb, %struct.Memory** %MEMORY

  br label %block_.L_410ec0

  ; Code: .L_410ec0:	 RIP: 410ec0	 Bytes: 0
block_.L_410ec0:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 410ec0	 Bytes: 3
  %loadMem_410ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ec0 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ec0)
  store %struct.Memory* %call_410ec0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 410ec3	 Bytes: 3
  %loadMem_410ec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ec3 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ec3)
  store %struct.Memory* %call_410ec3, %struct.Memory** %MEMORY

  ; Code: .L_410ec6:	 RIP: 410ec6	 Bytes: 0
  br label %block_.L_410ec6
block_.L_410ec6:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 410ec6	 Bytes: 3
  %loadMem_410ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ec6 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ec6)
  store %struct.Memory* %call_410ec6, %struct.Memory** %MEMORY

  ; Code: addq $0x60, %rsp	 RIP: 410ec9	 Bytes: 4
  %loadMem_410ec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ec9 = call %struct.Memory* @routine_addq__0x60___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ec9)
  store %struct.Memory* %call_410ec9, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 410ecd	 Bytes: 1
  %loadMem_410ecd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ecd = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ecd)
  store %struct.Memory* %call_410ecd, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 410ece	 Bytes: 1
  %loadMem_410ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_410ece = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_410ece)
  store %struct.Memory* %call_410ece, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_410ece
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

define %struct.Memory* @routine_subq__0x60___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 96)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0xffffffff__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0xffffffff__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1)
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

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_jne_.L_40fcc0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_40fd19(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x59b___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 1435)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rdx__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_movq_MINUS0x38__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
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


define %struct.Memory* @routine_movl_MINUS0x40__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 64
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

define %struct.Memory* @routine_je_.L_40fd2d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_40fd32(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_40fd8b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x59c___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 1436)
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




define %struct.Memory* @routine_movq__rdx__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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








define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_movq_MINUS0x50__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x54__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x58__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 88
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_jne_.L_40ff2f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_40fe5b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 20
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_40fe5b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_40fe56(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_je_.L_40fe56(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 24
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl__0xffffffff__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_410ec6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_40fea6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_jne_.L_40fea1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_je_.L_40fea1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_40ff2a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_je_.L_40ff2a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jge_.L_40fefb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jmpq_.L_40ff25(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_je_.L_40ff20(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_40ff2a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_410103(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_jne_.L_41004f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_jne_.L_40ffff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_je_.L_40ffff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_jne_.L_40fffa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_je_.L_40fffa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_jmpq_.L_41004a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_jne_.L_410045(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_je_.L_410045(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jmpq_.L_4100fe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_jne_.L_4100c7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_jne_.L_4100c2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_je_.L_4100c2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jmpq_.L_4100f9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_jne_.L_4100f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_410b72(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jge_.L_4101a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_41013a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_41015d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_jne_.L_410180(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_jne_.L_4101a3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_410b6d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jge_.L_410513(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_410280(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_410205(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_je_.L_410280(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_41023e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_jne_.L_410277(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
































define %struct.Memory* @routine_jne_.L_41034e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_4102d3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_je_.L_41034e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_41030c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_jne_.L_410345(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
































define %struct.Memory* @routine_jne_.L_41041c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_4103a1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_je_.L_41041c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_4103da(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_jne_.L_410413(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
































define %struct.Memory* @routine_jne_.L_4104ea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_41046f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_je_.L_4104ea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_4104a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_jne_.L_4104e1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_addl_MINUS0x1c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 28
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
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


define %struct.Memory* @routine_jmpq_.L_410b68(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_jne_.L_41068c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_410566(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_je_.L_41068c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_41059f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_jne_.L_4105d8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_jne_.L_410611(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_jne_.L_41064a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_jne_.L_410683(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
































define %struct.Memory* @routine_jne_.L_410805(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_4106df(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_je_.L_410805(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_410718(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_jne_.L_410751(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_jne_.L_41078a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_jne_.L_4107c3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_jne_.L_4107fc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
































define %struct.Memory* @routine_jne_.L_41097e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_410858(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_je_.L_41097e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_410891(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_jne_.L_4108ca(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_jne_.L_410903(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_jne_.L_41093c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_jne_.L_410975(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
































define %struct.Memory* @routine_jne_.L_410af7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_4109d1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_je_.L_410af7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_410a0a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_jne_.L_410a43(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_jne_.L_410a7c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_jne_.L_410ab5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_jne_.L_410aee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0xc__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_addl_0xc__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_movl_0x8__rdx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl_0x8__rax____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__esi__MINUS0x5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r8d___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.count_common_libs(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x5c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_subl__eax___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_subl__0x1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 28
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__esi__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_jmpq_.L_410ec0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x4__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_410e24(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_410d63(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jl_.L_410c7f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jne_.L_410be6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_je_.L_410d63(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_410c19(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_jne_.L_410c4c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_jne_.L_410c7f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jl_.L_410d55(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_410cbc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_jne_.L_410cef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_jne_.L_410d22(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_jne_.L_410d55(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_jmpq_.L_410e11(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jne_.L_410e0c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
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


define %struct.Memory* @routine_je_.L_410ded(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_410dfb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jge_.L_410dfb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_410e07(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jmpq_.L_410e0c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jmpq_.L_410e16(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_410b79(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jl_.L_410ebb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_jl_.L_410eb6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
































define %struct.Memory* @routine_movl__esi__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_MINUS0x60__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jmpq_.L_410ebb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x60___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 96)
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

