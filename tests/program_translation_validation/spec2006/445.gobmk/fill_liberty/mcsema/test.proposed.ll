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

declare %struct.Memory* @sub_424460.analyze_neighbor(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_46bc30.safe_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4246c0.filllib_confirm_safety(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_408e30.trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4249e0.find_backfilling_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40ead0.is_legal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_415ac0.does_capture_something(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40f840.findlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0xab0f24_type = type <{ [4 x i8] }>
@G_0xab0f24= global %G_0xab0f24_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xab0f28_type = type <{ [1 x i8] }>
@G_0xab0f28= global %G_0xab0f28_type <{ [1 x i8] c"\00" }>
%G_0xab0fe0_type = type <{ [8 x i8] }>
@G_0xab0fe0= global %G_0xab0fe0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57ba7e_type = type <{ [8 x i8] }>
@G__0x57ba7e= global %G__0x57ba7e_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57baa1_type = type <{ [8 x i8] }>
@G__0x57baa1= global %G__0x57baa1_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57babc_type = type <{ [8 x i8] }>
@G__0x57babc= global %G__0x57babc_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57bad8_type = type <{ [8 x i8] }>
@G__0x57bad8= global %G__0x57bad8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57bb09_type = type <{ [8 x i8] }>
@G__0x57bb09= global %G__0x57bb09_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57bb34_type = type <{ [8 x i8] }>
@G__0x57bb34= global %G__0x57bb34_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57bb62_type = type <{ [8 x i8] }>
@G__0x57bb62= global %G__0x57bb62_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57bb6f_type = type <{ [8 x i8] }>
@G__0x57bb6f= global %G__0x57bb6f_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57bbab_type = type <{ [8 x i8] }>
@G__0x57bbab= global %G__0x57bbab_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57bbce_type = type <{ [8 x i8] }>
@G__0x57bbce= global %G__0x57bbce_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57bbf0_type = type <{ [8 x i8] }>
@G__0x57bbf0= global %G__0x57bbf0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57bc24_type = type <{ [8 x i8] }>
@G__0x57bc24= global %G__0x57bc24_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57bc51_type = type <{ [8 x i8] }>
@G__0x57bc51= global %G__0x57bc51_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57bc69_type = type <{ [8 x i8] }>
@G__0x57bc69= global %G__0x57bc69_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57bc9f_type = type <{ [8 x i8] }>
@G__0x57bc9f= global %G__0x57bc9f_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57bcdc_type = type <{ [8 x i8] }>
@G__0x57bcdc= global %G__0x57bcdc_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xb0eff0_type = type <{ [8 x i8] }>
@G__0xb0eff0= global %G__0xb0eff0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xb4bd20_type = type <{ [8 x i8] }>
@G__0xb4bd20= global %G__0xb4bd20_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @fill_liberty(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .fill_liberty:	 RIP: 423930	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 423930	 Bytes: 1
  %loadMem_423930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423930 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423930)
  store %struct.Memory* %call_423930, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 423931	 Bytes: 3
  %loadMem_423931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423931 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423931)
  store %struct.Memory* %call_423931, %struct.Memory** %MEMORY

  ; Code: subq $0x6f0, %rsp	 RIP: 423934	 Bytes: 7
  %loadMem_423934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423934 = call %struct.Memory* @routine_subq__0x6f0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423934)
  store %struct.Memory* %call_423934, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 42393b	 Bytes: 2
  %loadMem_42393b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42393b = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42393b)
  store %struct.Memory* %call_42393b, %struct.Memory** %MEMORY

  ; Code: movl $0x640, %ecx	 RIP: 42393d	 Bytes: 5
  %loadMem_42393d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42393d = call %struct.Memory* @routine_movl__0x640___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42393d)
  store %struct.Memory* %call_42393d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 423942	 Bytes: 2
  %loadMem_423942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423942 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423942)
  store %struct.Memory* %call_423942, %struct.Memory** %MEMORY

  ; Code: leaq -0x670(%rbp), %r8	 RIP: 423944	 Bytes: 7
  %loadMem_423944 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423944 = call %struct.Memory* @routine_leaq_MINUS0x670__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423944)
  store %struct.Memory* %call_423944, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %ecx	 RIP: 42394b	 Bytes: 5
  %loadMem_42394b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42394b = call %struct.Memory* @routine_movl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42394b)
  store %struct.Memory* %call_42394b, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x10(%rbp)	 RIP: 423950	 Bytes: 4
  %loadMem_423950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423950 = call %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423950)
  store %struct.Memory* %call_423950, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x14(%rbp)	 RIP: 423954	 Bytes: 3
  %loadMem_423954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423954 = call %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423954)
  store %struct.Memory* %call_423954, %struct.Memory** %MEMORY

  ; Code: subl -0x14(%rbp), %ecx	 RIP: 423957	 Bytes: 3
  %loadMem_423957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423957 = call %struct.Memory* @routine_subl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423957)
  store %struct.Memory* %call_423957, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x20(%rbp)	 RIP: 42395a	 Bytes: 3
  %loadMem_42395a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42395a = call %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42395a)
  store %struct.Memory* %call_42395a, %struct.Memory** %MEMORY

  ; Code: movq %r8, %rdi	 RIP: 42395d	 Bytes: 3
  %loadMem_42395d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42395d = call %struct.Memory* @routine_movq__r8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42395d)
  store %struct.Memory* %call_42395d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 423960	 Bytes: 2
  %loadMem_423960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423960 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423960)
  store %struct.Memory* %call_423960, %struct.Memory** %MEMORY

  ; Code: callq .memset_plt	 RIP: 423962	 Bytes: 5
  %loadMem1_423962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423962 = call %struct.Memory* @routine_callq_.memset_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423962, i64 -141554, i64 5, i64 5)
  store %struct.Memory* %call1_423962, %struct.Memory** %MEMORY

  %loadMem2_423962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423962 = load i64, i64* %3
  %call2_423962 = call %struct.Memory* @ext_memset(%struct.State* %0, i64  %loadPC_423962, %struct.Memory* %loadMem2_423962)
  store %struct.Memory* %call2_423962, %struct.Memory** %MEMORY

  ; Code: movl $0x15, -0x1c(%rbp)	 RIP: 423967	 Bytes: 7
  %loadMem_423967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423967 = call %struct.Memory* @routine_movl__0x15__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423967)
  store %struct.Memory* %call_423967, %struct.Memory** %MEMORY

  ; Code: .L_42396e:	 RIP: 42396e	 Bytes: 0
  br label %block_.L_42396e
block_.L_42396e:

  ; Code: cmpl $0x190, -0x1c(%rbp)	 RIP: 42396e	 Bytes: 7
  %loadMem_42396e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42396e = call %struct.Memory* @routine_cmpl__0x190__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42396e)
  store %struct.Memory* %call_42396e, %struct.Memory** %MEMORY

  ; Code: jge .L_423ba1	 RIP: 423975	 Bytes: 6
  %loadMem_423975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423975 = call %struct.Memory* @routine_jge_.L_423ba1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423975, i8* %BRANCH_TAKEN, i64 556, i64 6, i64 6)
  store %struct.Memory* %call_423975, %struct.Memory** %MEMORY

  %loadBr_423975 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423975 = icmp eq i8 %loadBr_423975, 1
  br i1 %cmpBr_423975, label %block_.L_423ba1, label %block_42397b

block_42397b:
  ; Code: movslq -0x1c(%rbp), %rax	 RIP: 42397b	 Bytes: 4
  %loadMem_42397b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42397b = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42397b)
  store %struct.Memory* %call_42397b, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 42397f	 Bytes: 8
  %loadMem_42397f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42397f = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42397f)
  store %struct.Memory* %call_42397f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %ecx	 RIP: 423987	 Bytes: 3
  %loadMem_423987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423987 = call %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423987)
  store %struct.Memory* %call_423987, %struct.Memory** %MEMORY

  ; Code: je .L_4239aa	 RIP: 42398a	 Bytes: 6
  %loadMem_42398a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42398a = call %struct.Memory* @routine_je_.L_4239aa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42398a, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_42398a, %struct.Memory** %MEMORY

  %loadBr_42398a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42398a = icmp eq i8 %loadBr_42398a, 1
  br i1 %cmpBr_42398a, label %block_.L_4239aa, label %block_423990

block_423990:
  ; Code: movslq -0x1c(%rbp), %rax	 RIP: 423990	 Bytes: 4
  %loadMem_423990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423990 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423990)
  store %struct.Memory* %call_423990, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 423994	 Bytes: 8
  %loadMem_423994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423994 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423994)
  store %struct.Memory* %call_423994, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %ecx	 RIP: 42399c	 Bytes: 3
  %loadMem_42399c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42399c = call %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42399c)
  store %struct.Memory* %call_42399c, %struct.Memory** %MEMORY

  ; Code: je .L_4239aa	 RIP: 42399f	 Bytes: 6
  %loadMem_42399f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42399f = call %struct.Memory* @routine_je_.L_4239aa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42399f, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_42399f, %struct.Memory** %MEMORY

  %loadBr_42399f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42399f = icmp eq i8 %loadBr_42399f, 1
  br i1 %cmpBr_42399f, label %block_.L_4239aa, label %block_4239a5

block_4239a5:
  ; Code: jmpq .L_423b93	 RIP: 4239a5	 Bytes: 5
  %loadMem_4239a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239a5 = call %struct.Memory* @routine_jmpq_.L_423b93(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239a5, i64 494, i64 5)
  store %struct.Memory* %call_4239a5, %struct.Memory** %MEMORY

  br label %block_.L_423b93

  ; Code: .L_4239aa:	 RIP: 4239aa	 Bytes: 0
block_.L_4239aa:

  ; Code: movq $0xb0eff0, %rax	 RIP: 4239aa	 Bytes: 10
  %loadMem_4239aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239aa = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239aa)
  store %struct.Memory* %call_4239aa, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 4239b4	 Bytes: 4
  %loadMem_4239b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239b4 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239b4)
  store %struct.Memory* %call_4239b4, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 4239b8	 Bytes: 7
  %loadMem_4239b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239b8 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239b8)
  store %struct.Memory* %call_4239b8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4239bf	 Bytes: 3
  %loadMem_4239bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239bf = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239bf)
  store %struct.Memory* %call_4239bf, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x30(%rax)	 RIP: 4239c2	 Bytes: 4
  %loadMem_4239c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239c2 = call %struct.Memory* @routine_cmpl__0x0__0x30__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239c2)
  store %struct.Memory* %call_4239c2, %struct.Memory** %MEMORY

  ; Code: jne .L_4239fe	 RIP: 4239c6	 Bytes: 6
  %loadMem_4239c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239c6 = call %struct.Memory* @routine_jne_.L_4239fe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239c6, i8* %BRANCH_TAKEN, i64 56, i64 6, i64 6)
  store %struct.Memory* %call_4239c6, %struct.Memory** %MEMORY

  %loadBr_4239c6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4239c6 = icmp eq i8 %loadBr_4239c6, 1
  br i1 %cmpBr_4239c6, label %block_.L_4239fe, label %block_4239cc

block_4239cc:
  ; Code: movq $0xb4bd20, %rax	 RIP: 4239cc	 Bytes: 10
  %loadMem_4239cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239cc = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239cc)
  store %struct.Memory* %call_4239cc, %struct.Memory** %MEMORY

  ; Code: movq 0xab0fe0, %rcx	 RIP: 4239d6	 Bytes: 8
  %loadMem_4239d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239d6 = call %struct.Memory* @routine_movq_0xab0fe0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239d6)
  store %struct.Memory* %call_4239d6, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 4239de	 Bytes: 4
  %loadMem_4239de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239de = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239de)
  store %struct.Memory* %call_4239de, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rdx, %rdx	 RIP: 4239e2	 Bytes: 4
  %loadMem_4239e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239e2 = call %struct.Memory* @routine_imulq__0x4c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239e2)
  store %struct.Memory* %call_4239e2, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4239e6	 Bytes: 3
  %loadMem_4239e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239e6 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239e6)
  store %struct.Memory* %call_4239e6, %struct.Memory** %MEMORY

  ; Code: movslq 0x4(%rax), %rax	 RIP: 4239e9	 Bytes: 4
  %loadMem_4239e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239e9 = call %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239e9)
  store %struct.Memory* %call_4239e9, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, %rax, %rax	 RIP: 4239ed	 Bytes: 4
  %loadMem_4239ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239ed = call %struct.Memory* @routine_imulq__0x68___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239ed)
  store %struct.Memory* %call_4239ed, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rcx	 RIP: 4239f1	 Bytes: 3
  %loadMem_4239f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239f1 = call %struct.Memory* @routine_addq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239f1)
  store %struct.Memory* %call_4239f1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, 0x3c(%rcx)	 RIP: 4239f4	 Bytes: 4
  %loadMem_4239f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239f4 = call %struct.Memory* @routine_cmpl__0x5__0x3c__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239f4)
  store %struct.Memory* %call_4239f4, %struct.Memory** %MEMORY

  ; Code: jne .L_423a03	 RIP: 4239f8	 Bytes: 6
  %loadMem_4239f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239f8 = call %struct.Memory* @routine_jne_.L_423a03(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239f8, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4239f8, %struct.Memory** %MEMORY

  %loadBr_4239f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4239f8 = icmp eq i8 %loadBr_4239f8, 1
  br i1 %cmpBr_4239f8, label %block_.L_423a03, label %block_.L_4239fe

  ; Code: .L_4239fe:	 RIP: 4239fe	 Bytes: 0
block_.L_4239fe:

  ; Code: jmpq .L_423b93	 RIP: 4239fe	 Bytes: 5
  %loadMem_4239fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4239fe = call %struct.Memory* @routine_jmpq_.L_423b93(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4239fe, i64 405, i64 5)
  store %struct.Memory* %call_4239fe, %struct.Memory** %MEMORY

  br label %block_.L_423b93

  ; Code: .L_423a03:	 RIP: 423a03	 Bytes: 0
block_.L_423a03:

  ; Code: movq $0xb4bd20, %rax	 RIP: 423a03	 Bytes: 10
  %loadMem_423a03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a03 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a03)
  store %struct.Memory* %call_423a03, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 423a0d	 Bytes: 4
  %loadMem_423a0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a0d = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a0d)
  store %struct.Memory* %call_423a0d, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 423a11	 Bytes: 4
  %loadMem_423a11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a11 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a11)
  store %struct.Memory* %call_423a11, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 423a15	 Bytes: 3
  %loadMem_423a15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a15 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a15)
  store %struct.Memory* %call_423a15, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x40(%rax)	 RIP: 423a18	 Bytes: 4
  %loadMem_423a18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a18 = call %struct.Memory* @routine_cmpl__0x1__0x40__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a18)
  store %struct.Memory* %call_423a18, %struct.Memory** %MEMORY

  ; Code: je .L_423a9f	 RIP: 423a1c	 Bytes: 6
  %loadMem_423a1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a1c = call %struct.Memory* @routine_je_.L_423a9f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a1c, i8* %BRANCH_TAKEN, i64 131, i64 6, i64 6)
  store %struct.Memory* %call_423a1c, %struct.Memory** %MEMORY

  %loadBr_423a1c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423a1c = icmp eq i8 %loadBr_423a1c, 1
  br i1 %cmpBr_423a1c, label %block_.L_423a9f, label %block_423a22

block_423a22:
  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 423a22	 Bytes: 7
  %loadMem_423a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a22 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a22)
  store %struct.Memory* %call_423a22, %struct.Memory** %MEMORY

  ; Code: .L_423a29:	 RIP: 423a29	 Bytes: 0
  br label %block_.L_423a29
block_.L_423a29:

  ; Code: cmpl $0x4, -0x18(%rbp)	 RIP: 423a29	 Bytes: 4
  %loadMem_423a29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a29 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a29)
  store %struct.Memory* %call_423a29, %struct.Memory** %MEMORY

  ; Code: jge .L_423a9a	 RIP: 423a2d	 Bytes: 6
  %loadMem_423a2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a2d = call %struct.Memory* @routine_jge_.L_423a9a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a2d, i8* %BRANCH_TAKEN, i64 109, i64 6, i64 6)
  store %struct.Memory* %call_423a2d, %struct.Memory** %MEMORY

  %loadBr_423a2d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423a2d = icmp eq i8 %loadBr_423a2d, 1
  br i1 %cmpBr_423a2d, label %block_.L_423a9a, label %block_423a33

block_423a33:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 423a33	 Bytes: 3
  %loadMem_423a33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a33 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a33)
  store %struct.Memory* %call_423a33, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 423a36	 Bytes: 4
  %loadMem_423a36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a36 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a36)
  store %struct.Memory* %call_423a36, %struct.Memory** %MEMORY

  ; Code: addl 0x7ae1b0(,%rcx,4), %eax	 RIP: 423a3a	 Bytes: 7
  %loadMem_423a3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a3a = call %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a3a)
  store %struct.Memory* %call_423a3a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x674(%rbp)	 RIP: 423a41	 Bytes: 6
  %loadMem_423a41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a41 = call %struct.Memory* @routine_movl__eax__MINUS0x674__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a41)
  store %struct.Memory* %call_423a41, %struct.Memory** %MEMORY

  ; Code: movslq -0x674(%rbp), %rcx	 RIP: 423a47	 Bytes: 7
  %loadMem_423a47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a47 = call %struct.Memory* @routine_movslq_MINUS0x674__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a47)
  store %struct.Memory* %call_423a47, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 423a4e	 Bytes: 8
  %loadMem_423a4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a4e = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a4e)
  store %struct.Memory* %call_423a4e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 423a56	 Bytes: 3
  %loadMem_423a56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a56 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a56)
  store %struct.Memory* %call_423a56, %struct.Memory** %MEMORY

  ; Code: jne .L_423a87	 RIP: 423a59	 Bytes: 6
  %loadMem_423a59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a59 = call %struct.Memory* @routine_jne_.L_423a87(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a59, i8* %BRANCH_TAKEN, i64 46, i64 6, i64 6)
  store %struct.Memory* %call_423a59, %struct.Memory** %MEMORY

  %loadBr_423a59 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423a59 = icmp eq i8 %loadBr_423a59, 1
  br i1 %cmpBr_423a59, label %block_.L_423a87, label %block_423a5f

block_423a5f:
  ; Code: movl $0x3, %eax	 RIP: 423a5f	 Bytes: 5
  %loadMem_423a5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a5f = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a5f)
  store %struct.Memory* %call_423a5f, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 423a64	 Bytes: 4
  %loadMem_423a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a64 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a64)
  store %struct.Memory* %call_423a64, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %edx	 RIP: 423a68	 Bytes: 8
  %loadMem_423a68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a68 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a68)
  store %struct.Memory* %call_423a68, %struct.Memory** %MEMORY

  ; Code: subl %edx, %eax	 RIP: 423a70	 Bytes: 2
  %loadMem_423a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a70 = call %struct.Memory* @routine_subl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a70)
  store %struct.Memory* %call_423a70, %struct.Memory** %MEMORY

  ; Code: movslq -0x674(%rbp), %rcx	 RIP: 423a72	 Bytes: 7
  %loadMem_423a72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a72 = call %struct.Memory* @routine_movslq_MINUS0x674__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a72)
  store %struct.Memory* %call_423a72, %struct.Memory** %MEMORY

  ; Code: orl -0x670(%rbp,%rcx,4), %eax	 RIP: 423a79	 Bytes: 7
  %loadMem_423a79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a79 = call %struct.Memory* @routine_orl_MINUS0x670__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a79)
  store %struct.Memory* %call_423a79, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x670(%rbp,%rcx,4)	 RIP: 423a80	 Bytes: 7
  %loadMem_423a80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a80 = call %struct.Memory* @routine_movl__eax__MINUS0x670__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a80)
  store %struct.Memory* %call_423a80, %struct.Memory** %MEMORY

  ; Code: .L_423a87:	 RIP: 423a87	 Bytes: 0
  br label %block_.L_423a87
block_.L_423a87:

  ; Code: jmpq .L_423a8c	 RIP: 423a87	 Bytes: 5
  %loadMem_423a87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a87 = call %struct.Memory* @routine_jmpq_.L_423a8c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a87, i64 5, i64 5)
  store %struct.Memory* %call_423a87, %struct.Memory** %MEMORY

  br label %block_.L_423a8c

  ; Code: .L_423a8c:	 RIP: 423a8c	 Bytes: 0
block_.L_423a8c:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 423a8c	 Bytes: 3
  %loadMem_423a8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a8c = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a8c)
  store %struct.Memory* %call_423a8c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 423a8f	 Bytes: 3
  %loadMem_423a8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a8f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a8f)
  store %struct.Memory* %call_423a8f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 423a92	 Bytes: 3
  %loadMem_423a92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a92 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a92)
  store %struct.Memory* %call_423a92, %struct.Memory** %MEMORY

  ; Code: jmpq .L_423a29	 RIP: 423a95	 Bytes: 5
  %loadMem_423a95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a95 = call %struct.Memory* @routine_jmpq_.L_423a29(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a95, i64 -108, i64 5)
  store %struct.Memory* %call_423a95, %struct.Memory** %MEMORY

  br label %block_.L_423a29

  ; Code: .L_423a9a:	 RIP: 423a9a	 Bytes: 0
block_.L_423a9a:

  ; Code: jmpq .L_423a9f	 RIP: 423a9a	 Bytes: 5
  %loadMem_423a9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a9a = call %struct.Memory* @routine_jmpq_.L_423a9f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a9a, i64 5, i64 5)
  store %struct.Memory* %call_423a9a, %struct.Memory** %MEMORY

  br label %block_.L_423a9f

  ; Code: .L_423a9f:	 RIP: 423a9f	 Bytes: 0
block_.L_423a9f:

  ; Code: movq $0xb4bd20, %rax	 RIP: 423a9f	 Bytes: 10
  %loadMem_423a9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423a9f = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423a9f)
  store %struct.Memory* %call_423a9f, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 423aa9	 Bytes: 4
  %loadMem_423aa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423aa9 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423aa9)
  store %struct.Memory* %call_423aa9, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 423aad	 Bytes: 4
  %loadMem_423aad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423aad = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423aad)
  store %struct.Memory* %call_423aad, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 423ab1	 Bytes: 3
  %loadMem_423ab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ab1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ab1)
  store %struct.Memory* %call_423ab1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x40(%rax)	 RIP: 423ab4	 Bytes: 4
  %loadMem_423ab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ab4 = call %struct.Memory* @routine_cmpl__0x0__0x40__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ab4)
  store %struct.Memory* %call_423ab4, %struct.Memory** %MEMORY

  ; Code: je .L_423b8e	 RIP: 423ab8	 Bytes: 6
  %loadMem_423ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ab8 = call %struct.Memory* @routine_je_.L_423b8e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ab8, i8* %BRANCH_TAKEN, i64 214, i64 6, i64 6)
  store %struct.Memory* %call_423ab8, %struct.Memory** %MEMORY

  %loadBr_423ab8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423ab8 = icmp eq i8 %loadBr_423ab8, 1
  br i1 %cmpBr_423ab8, label %block_.L_423b8e, label %block_423abe

block_423abe:
  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 423abe	 Bytes: 7
  %loadMem_423abe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423abe = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423abe)
  store %struct.Memory* %call_423abe, %struct.Memory** %MEMORY

  ; Code: .L_423ac5:	 RIP: 423ac5	 Bytes: 0
  br label %block_.L_423ac5
block_.L_423ac5:

  ; Code: cmpl $0xc, -0x18(%rbp)	 RIP: 423ac5	 Bytes: 4
  %loadMem_423ac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ac5 = call %struct.Memory* @routine_cmpl__0xc__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ac5)
  store %struct.Memory* %call_423ac5, %struct.Memory** %MEMORY

  ; Code: jge .L_423b89	 RIP: 423ac9	 Bytes: 6
  %loadMem_423ac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ac9 = call %struct.Memory* @routine_jge_.L_423b89(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ac9, i8* %BRANCH_TAKEN, i64 192, i64 6, i64 6)
  store %struct.Memory* %call_423ac9, %struct.Memory** %MEMORY

  %loadBr_423ac9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423ac9 = icmp eq i8 %loadBr_423ac9, 1
  br i1 %cmpBr_423ac9, label %block_.L_423b89, label %block_423acf

block_423acf:
  ; Code: movl $0x8, %eax	 RIP: 423acf	 Bytes: 5
  %loadMem_423acf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423acf = call %struct.Memory* @routine_movl__0x8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423acf)
  store %struct.Memory* %call_423acf, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 423ad4	 Bytes: 3
  %loadMem_423ad4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ad4 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ad4)
  store %struct.Memory* %call_423ad4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x69c(%rbp)	 RIP: 423ad7	 Bytes: 6
  %loadMem_423ad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ad7 = call %struct.Memory* @routine_movl__eax__MINUS0x69c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ad7)
  store %struct.Memory* %call_423ad7, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 423add	 Bytes: 2
  %loadMem_423add = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423add = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423add)
  store %struct.Memory* %call_423add, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 423adf	 Bytes: 1
  %loadMem_423adf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423adf = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423adf)
  store %struct.Memory* %call_423adf, %struct.Memory** %MEMORY

  ; Code: movl -0x69c(%rbp), %ecx	 RIP: 423ae0	 Bytes: 6
  %loadMem_423ae0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ae0 = call %struct.Memory* @routine_movl_MINUS0x69c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ae0)
  store %struct.Memory* %call_423ae0, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 423ae6	 Bytes: 2
  %loadMem_423ae6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ae6 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ae6)
  store %struct.Memory* %call_423ae6, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 423ae8	 Bytes: 3
  %loadMem_423ae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ae8 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ae8)
  store %struct.Memory* %call_423ae8, %struct.Memory** %MEMORY

  ; Code: movl 0x7ae1b0(,%rsi,4), %edx	 RIP: 423aeb	 Bytes: 7
  %loadMem_423aeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423aeb = call %struct.Memory* @routine_movl_0x7ae1b0___rsi_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423aeb)
  store %struct.Memory* %call_423aeb, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x678(%rbp)	 RIP: 423af2	 Bytes: 6
  %loadMem_423af2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423af2 = call %struct.Memory* @routine_movl__edx__MINUS0x678__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423af2)
  store %struct.Memory* %call_423af2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x8, -0x18(%rbp)	 RIP: 423af8	 Bytes: 4
  %loadMem_423af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423af8 = call %struct.Memory* @routine_cmpl__0x8__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423af8)
  store %struct.Memory* %call_423af8, %struct.Memory** %MEMORY

  ; Code: jl .L_423b33	 RIP: 423afc	 Bytes: 6
  %loadMem_423afc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423afc = call %struct.Memory* @routine_jl_.L_423b33(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423afc, i8* %BRANCH_TAKEN, i64 55, i64 6, i64 6)
  store %struct.Memory* %call_423afc, %struct.Memory** %MEMORY

  %loadBr_423afc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423afc = icmp eq i8 %loadBr_423afc, 1
  br i1 %cmpBr_423afc, label %block_.L_423b33, label %block_423b02

block_423b02:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 423b02	 Bytes: 3
  %loadMem_423b02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b02 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b02)
  store %struct.Memory* %call_423b02, %struct.Memory** %MEMORY

  ; Code: addl -0x678(%rbp), %eax	 RIP: 423b05	 Bytes: 6
  %loadMem_423b05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b05 = call %struct.Memory* @routine_addl_MINUS0x678__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b05)
  store %struct.Memory* %call_423b05, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 423b0b	 Bytes: 3
  %loadMem_423b0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b0b = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b0b)
  store %struct.Memory* %call_423b0b, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 423b0e	 Bytes: 8
  %loadMem_423b0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b0e = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b0e)
  store %struct.Memory* %call_423b0e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 423b16	 Bytes: 3
  %loadMem_423b16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b16 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b16)
  store %struct.Memory* %call_423b16, %struct.Memory** %MEMORY

  ; Code: je .L_423b24	 RIP: 423b19	 Bytes: 6
  %loadMem_423b19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b19 = call %struct.Memory* @routine_je_.L_423b24(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b19, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_423b19, %struct.Memory** %MEMORY

  %loadBr_423b19 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423b19 = icmp eq i8 %loadBr_423b19, 1
  br i1 %cmpBr_423b19, label %block_.L_423b24, label %block_423b1f

block_423b1f:
  ; Code: jmpq .L_423b7b	 RIP: 423b1f	 Bytes: 5
  %loadMem_423b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b1f = call %struct.Memory* @routine_jmpq_.L_423b7b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b1f, i64 92, i64 5)
  store %struct.Memory* %call_423b1f, %struct.Memory** %MEMORY

  br label %block_.L_423b7b

  ; Code: .L_423b24:	 RIP: 423b24	 Bytes: 0
block_.L_423b24:

  ; Code: movl -0x678(%rbp), %eax	 RIP: 423b24	 Bytes: 6
  %loadMem_423b24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b24 = call %struct.Memory* @routine_movl_MINUS0x678__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b24)
  store %struct.Memory* %call_423b24, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 423b2a	 Bytes: 3
  %loadMem_423b2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b2a = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b2a)
  store %struct.Memory* %call_423b2a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x678(%rbp)	 RIP: 423b2d	 Bytes: 6
  %loadMem_423b2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b2d = call %struct.Memory* @routine_movl__eax__MINUS0x678__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b2d)
  store %struct.Memory* %call_423b2d, %struct.Memory** %MEMORY

  ; Code: .L_423b33:	 RIP: 423b33	 Bytes: 0
  br label %block_.L_423b33
block_.L_423b33:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 423b33	 Bytes: 3
  %loadMem_423b33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b33 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b33)
  store %struct.Memory* %call_423b33, %struct.Memory** %MEMORY

  ; Code: addl -0x678(%rbp), %eax	 RIP: 423b36	 Bytes: 6
  %loadMem_423b36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b36 = call %struct.Memory* @routine_addl_MINUS0x678__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b36)
  store %struct.Memory* %call_423b36, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 423b3c	 Bytes: 3
  %loadMem_423b3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b3c = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b3c)
  store %struct.Memory* %call_423b3c, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 423b3f	 Bytes: 8
  %loadMem_423b3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b3f = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b3f)
  store %struct.Memory* %call_423b3f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 423b47	 Bytes: 3
  %loadMem_423b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b47 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b47)
  store %struct.Memory* %call_423b47, %struct.Memory** %MEMORY

  ; Code: jne .L_423b76	 RIP: 423b4a	 Bytes: 6
  %loadMem_423b4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b4a = call %struct.Memory* @routine_jne_.L_423b76(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b4a, i8* %BRANCH_TAKEN, i64 44, i64 6, i64 6)
  store %struct.Memory* %call_423b4a, %struct.Memory** %MEMORY

  %loadBr_423b4a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423b4a = icmp eq i8 %loadBr_423b4a, 1
  br i1 %cmpBr_423b4a, label %block_.L_423b76, label %block_423b50

block_423b50:
  ; Code: movslq -0x1c(%rbp), %rax	 RIP: 423b50	 Bytes: 4
  %loadMem_423b50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b50 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b50)
  store %struct.Memory* %call_423b50, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 423b54	 Bytes: 8
  %loadMem_423b54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b54 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b54)
  store %struct.Memory* %call_423b54, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %edx	 RIP: 423b5c	 Bytes: 3
  %loadMem_423b5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b5c = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b5c)
  store %struct.Memory* %call_423b5c, %struct.Memory** %MEMORY

  ; Code: addl -0x678(%rbp), %edx	 RIP: 423b5f	 Bytes: 6
  %loadMem_423b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b5f = call %struct.Memory* @routine_addl_MINUS0x678__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b5f)
  store %struct.Memory* %call_423b5f, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rax	 RIP: 423b65	 Bytes: 3
  %loadMem_423b65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b65 = call %struct.Memory* @routine_movslq__edx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b65)
  store %struct.Memory* %call_423b65, %struct.Memory** %MEMORY

  ; Code: orl -0x670(%rbp,%rax,4), %ecx	 RIP: 423b68	 Bytes: 7
  %loadMem_423b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b68 = call %struct.Memory* @routine_orl_MINUS0x670__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b68)
  store %struct.Memory* %call_423b68, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x670(%rbp,%rax,4)	 RIP: 423b6f	 Bytes: 7
  %loadMem_423b6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b6f = call %struct.Memory* @routine_movl__ecx__MINUS0x670__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b6f)
  store %struct.Memory* %call_423b6f, %struct.Memory** %MEMORY

  ; Code: .L_423b76:	 RIP: 423b76	 Bytes: 0
  br label %block_.L_423b76
block_.L_423b76:

  ; Code: jmpq .L_423b7b	 RIP: 423b76	 Bytes: 5
  %loadMem_423b76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b76 = call %struct.Memory* @routine_jmpq_.L_423b7b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b76, i64 5, i64 5)
  store %struct.Memory* %call_423b76, %struct.Memory** %MEMORY

  br label %block_.L_423b7b

  ; Code: .L_423b7b:	 RIP: 423b7b	 Bytes: 0
block_.L_423b7b:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 423b7b	 Bytes: 3
  %loadMem_423b7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b7b = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b7b)
  store %struct.Memory* %call_423b7b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 423b7e	 Bytes: 3
  %loadMem_423b7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b7e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b7e)
  store %struct.Memory* %call_423b7e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 423b81	 Bytes: 3
  %loadMem_423b81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b81 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b81)
  store %struct.Memory* %call_423b81, %struct.Memory** %MEMORY

  ; Code: jmpq .L_423ac5	 RIP: 423b84	 Bytes: 5
  %loadMem_423b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b84 = call %struct.Memory* @routine_jmpq_.L_423ac5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b84, i64 -191, i64 5)
  store %struct.Memory* %call_423b84, %struct.Memory** %MEMORY

  br label %block_.L_423ac5

  ; Code: .L_423b89:	 RIP: 423b89	 Bytes: 0
block_.L_423b89:

  ; Code: jmpq .L_423b8e	 RIP: 423b89	 Bytes: 5
  %loadMem_423b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b89 = call %struct.Memory* @routine_jmpq_.L_423b8e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b89, i64 5, i64 5)
  store %struct.Memory* %call_423b89, %struct.Memory** %MEMORY

  br label %block_.L_423b8e

  ; Code: .L_423b8e:	 RIP: 423b8e	 Bytes: 0
block_.L_423b8e:

  ; Code: jmpq .L_423b93	 RIP: 423b8e	 Bytes: 5
  %loadMem_423b8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b8e = call %struct.Memory* @routine_jmpq_.L_423b93(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b8e, i64 5, i64 5)
  store %struct.Memory* %call_423b8e, %struct.Memory** %MEMORY

  br label %block_.L_423b93

  ; Code: .L_423b93:	 RIP: 423b93	 Bytes: 0
block_.L_423b93:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 423b93	 Bytes: 3
  %loadMem_423b93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b93 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b93)
  store %struct.Memory* %call_423b93, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 423b96	 Bytes: 3
  %loadMem_423b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b96 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b96)
  store %struct.Memory* %call_423b96, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 423b99	 Bytes: 3
  %loadMem_423b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b99 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b99)
  store %struct.Memory* %call_423b99, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42396e	 RIP: 423b9c	 Bytes: 5
  %loadMem_423b9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423b9c = call %struct.Memory* @routine_jmpq_.L_42396e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423b9c, i64 -558, i64 5)
  store %struct.Memory* %call_423b9c, %struct.Memory** %MEMORY

  br label %block_.L_42396e

  ; Code: .L_423ba1:	 RIP: 423ba1	 Bytes: 0
block_.L_423ba1:

  ; Code: movl $0x15, -0x1c(%rbp)	 RIP: 423ba1	 Bytes: 7
  %loadMem_423ba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ba1 = call %struct.Memory* @routine_movl__0x15__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ba1)
  store %struct.Memory* %call_423ba1, %struct.Memory** %MEMORY

  ; Code: .L_423ba8:	 RIP: 423ba8	 Bytes: 0
  br label %block_.L_423ba8
block_.L_423ba8:

  ; Code: cmpl $0x190, -0x1c(%rbp)	 RIP: 423ba8	 Bytes: 7
  %loadMem_423ba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ba8 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ba8)
  store %struct.Memory* %call_423ba8, %struct.Memory** %MEMORY

  ; Code: jge .L_42441a	 RIP: 423baf	 Bytes: 6
  %loadMem_423baf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423baf = call %struct.Memory* @routine_jge_.L_42441a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423baf, i8* %BRANCH_TAKEN, i64 2155, i64 6, i64 6)
  store %struct.Memory* %call_423baf, %struct.Memory** %MEMORY

  %loadBr_423baf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423baf = icmp eq i8 %loadBr_423baf, 1
  br i1 %cmpBr_423baf, label %block_.L_42441a, label %block_423bb5

block_423bb5:
  ; Code: movl $0x0, -0x67c(%rbp)	 RIP: 423bb5	 Bytes: 10
  %loadMem_423bb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423bb5 = call %struct.Memory* @routine_movl__0x0__MINUS0x67c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423bb5)
  store %struct.Memory* %call_423bb5, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x680(%rbp)	 RIP: 423bbf	 Bytes: 10
  %loadMem_423bbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423bbf = call %struct.Memory* @routine_movl__0x0__MINUS0x680__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423bbf)
  store %struct.Memory* %call_423bbf, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rax	 RIP: 423bc9	 Bytes: 4
  %loadMem_423bc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423bc9 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423bc9)
  store %struct.Memory* %call_423bc9, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 423bcd	 Bytes: 8
  %loadMem_423bcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423bcd = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423bcd)
  store %struct.Memory* %call_423bcd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 423bd5	 Bytes: 3
  %loadMem_423bd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423bd5 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423bd5)
  store %struct.Memory* %call_423bd5, %struct.Memory** %MEMORY

  ; Code: je .L_423be3	 RIP: 423bd8	 Bytes: 6
  %loadMem_423bd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423bd8 = call %struct.Memory* @routine_je_.L_423be3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423bd8, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_423bd8, %struct.Memory** %MEMORY

  %loadBr_423bd8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423bd8 = icmp eq i8 %loadBr_423bd8, 1
  br i1 %cmpBr_423bd8, label %block_.L_423be3, label %block_423bde

block_423bde:
  ; Code: jmpq .L_42440c	 RIP: 423bde	 Bytes: 5
  %loadMem_423bde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423bde = call %struct.Memory* @routine_jmpq_.L_42440c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423bde, i64 2094, i64 5)
  store %struct.Memory* %call_423bde, %struct.Memory** %MEMORY

  br label %block_.L_42440c

  ; Code: .L_423be3:	 RIP: 423be3	 Bytes: 0
block_.L_423be3:

  ; Code: movslq -0x1c(%rbp), %rax	 RIP: 423be3	 Bytes: 4
  %loadMem_423be3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423be3 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423be3)
  store %struct.Memory* %call_423be3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, -0x670(%rbp,%rax,4)	 RIP: 423be7	 Bytes: 8
  %loadMem_423be7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423be7 = call %struct.Memory* @routine_cmpl__0x3__MINUS0x670__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423be7)
  store %struct.Memory* %call_423be7, %struct.Memory** %MEMORY

  ; Code: je .L_423bfa	 RIP: 423bef	 Bytes: 6
  %loadMem_423bef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423bef = call %struct.Memory* @routine_je_.L_423bfa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423bef, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_423bef, %struct.Memory** %MEMORY

  %loadBr_423bef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423bef = icmp eq i8 %loadBr_423bef, 1
  br i1 %cmpBr_423bef, label %block_.L_423bfa, label %block_423bf5

block_423bf5:
  ; Code: jmpq .L_42440c	 RIP: 423bf5	 Bytes: 5
  %loadMem_423bf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423bf5 = call %struct.Memory* @routine_jmpq_.L_42440c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423bf5, i64 2071, i64 5)
  store %struct.Memory* %call_423bf5, %struct.Memory** %MEMORY

  br label %block_.L_42440c

  ; Code: .L_423bfa:	 RIP: 423bfa	 Bytes: 0
block_.L_423bfa:

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 423bfa	 Bytes: 7
  %loadMem_423bfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423bfa = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423bfa)
  store %struct.Memory* %call_423bfa, %struct.Memory** %MEMORY

  ; Code: .L_423c01:	 RIP: 423c01	 Bytes: 0
  br label %block_.L_423c01
block_.L_423c01:

  ; Code: cmpl $0x4, -0x18(%rbp)	 RIP: 423c01	 Bytes: 4
  %loadMem_423c01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c01 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c01)
  store %struct.Memory* %call_423c01, %struct.Memory** %MEMORY

  ; Code: jge .L_423c6a	 RIP: 423c05	 Bytes: 6
  %loadMem_423c05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c05 = call %struct.Memory* @routine_jge_.L_423c6a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c05, i8* %BRANCH_TAKEN, i64 101, i64 6, i64 6)
  store %struct.Memory* %call_423c05, %struct.Memory** %MEMORY

  %loadBr_423c05 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423c05 = icmp eq i8 %loadBr_423c05, 1
  br i1 %cmpBr_423c05, label %block_.L_423c6a, label %block_423c0b

block_423c0b:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 423c0b	 Bytes: 4
  %loadMem_423c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c0b = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c0b)
  store %struct.Memory* %call_423c0b, %struct.Memory** %MEMORY

  ; Code: movl 0x7ae1b0(,%rax,4), %ecx	 RIP: 423c0f	 Bytes: 7
  %loadMem_423c0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c0f = call %struct.Memory* @routine_movl_0x7ae1b0___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c0f)
  store %struct.Memory* %call_423c0f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x684(%rbp)	 RIP: 423c16	 Bytes: 6
  %loadMem_423c16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c16 = call %struct.Memory* @routine_movl__ecx__MINUS0x684__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c16)
  store %struct.Memory* %call_423c16, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 423c1c	 Bytes: 3
  %loadMem_423c1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c1c = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c1c)
  store %struct.Memory* %call_423c1c, %struct.Memory** %MEMORY

  ; Code: addl -0x684(%rbp), %ecx	 RIP: 423c1f	 Bytes: 6
  %loadMem_423c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c1f = call %struct.Memory* @routine_addl_MINUS0x684__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c1f)
  store %struct.Memory* %call_423c1f, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 423c25	 Bytes: 3
  %loadMem_423c25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c25 = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c25)
  store %struct.Memory* %call_423c25, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 423c28	 Bytes: 8
  %loadMem_423c28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c28 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c28)
  store %struct.Memory* %call_423c28, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 423c30	 Bytes: 3
  %loadMem_423c30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c30 = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c30)
  store %struct.Memory* %call_423c30, %struct.Memory** %MEMORY

  ; Code: je .L_423c57	 RIP: 423c33	 Bytes: 6
  %loadMem_423c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c33 = call %struct.Memory* @routine_je_.L_423c57(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c33, i8* %BRANCH_TAKEN, i64 36, i64 6, i64 6)
  store %struct.Memory* %call_423c33, %struct.Memory** %MEMORY

  %loadBr_423c33 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423c33 = icmp eq i8 %loadBr_423c33, 1
  br i1 %cmpBr_423c33, label %block_.L_423c57, label %block_423c39

block_423c39:
  ; Code: leaq -0x680(%rbp), %rsi	 RIP: 423c39	 Bytes: 7
  %loadMem_423c39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c39 = call %struct.Memory* @routine_leaq_MINUS0x680__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c39)
  store %struct.Memory* %call_423c39, %struct.Memory** %MEMORY

  ; Code: leaq -0x67c(%rbp), %rdx	 RIP: 423c40	 Bytes: 7
  %loadMem_423c40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c40 = call %struct.Memory* @routine_leaq_MINUS0x67c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c40)
  store %struct.Memory* %call_423c40, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 423c47	 Bytes: 3
  %loadMem_423c47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c47 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c47)
  store %struct.Memory* %call_423c47, %struct.Memory** %MEMORY

  ; Code: addl -0x684(%rbp), %eax	 RIP: 423c4a	 Bytes: 6
  %loadMem_423c4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c4a = call %struct.Memory* @routine_addl_MINUS0x684__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c4a)
  store %struct.Memory* %call_423c4a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 423c50	 Bytes: 2
  %loadMem_423c50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c50 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c50)
  store %struct.Memory* %call_423c50, %struct.Memory** %MEMORY

  ; Code: callq .analyze_neighbor	 RIP: 423c52	 Bytes: 5
  %loadMem1_423c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423c52 = call %struct.Memory* @routine_callq_.analyze_neighbor(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423c52, i64 2062, i64 5, i64 5)
  store %struct.Memory* %call1_423c52, %struct.Memory** %MEMORY

  %loadMem2_423c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423c52 = load i64, i64* %3
  %call2_423c52 = call %struct.Memory* @sub_424460.analyze_neighbor(%struct.State* %0, i64  %loadPC_423c52, %struct.Memory* %loadMem2_423c52)
  store %struct.Memory* %call2_423c52, %struct.Memory** %MEMORY

  ; Code: .L_423c57:	 RIP: 423c57	 Bytes: 0
  br label %block_.L_423c57
block_.L_423c57:

  ; Code: jmpq .L_423c5c	 RIP: 423c57	 Bytes: 5
  %loadMem_423c57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c57 = call %struct.Memory* @routine_jmpq_.L_423c5c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c57, i64 5, i64 5)
  store %struct.Memory* %call_423c57, %struct.Memory** %MEMORY

  br label %block_.L_423c5c

  ; Code: .L_423c5c:	 RIP: 423c5c	 Bytes: 0
block_.L_423c5c:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 423c5c	 Bytes: 3
  %loadMem_423c5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c5c = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c5c)
  store %struct.Memory* %call_423c5c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 423c5f	 Bytes: 3
  %loadMem_423c5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c5f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c5f)
  store %struct.Memory* %call_423c5f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 423c62	 Bytes: 3
  %loadMem_423c62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c62 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c62)
  store %struct.Memory* %call_423c62, %struct.Memory** %MEMORY

  ; Code: jmpq .L_423c01	 RIP: 423c65	 Bytes: 5
  %loadMem_423c65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c65 = call %struct.Memory* @routine_jmpq_.L_423c01(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c65, i64 -100, i64 5)
  store %struct.Memory* %call_423c65, %struct.Memory** %MEMORY

  br label %block_.L_423c01

  ; Code: .L_423c6a:	 RIP: 423c6a	 Bytes: 0
block_.L_423c6a:

  ; Code: cmpl $0x0, -0x67c(%rbp)	 RIP: 423c6a	 Bytes: 7
  %loadMem_423c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c6a = call %struct.Memory* @routine_cmpl__0x0__MINUS0x67c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c6a)
  store %struct.Memory* %call_423c6a, %struct.Memory** %MEMORY

  ; Code: je .L_423c84	 RIP: 423c71	 Bytes: 6
  %loadMem_423c71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c71 = call %struct.Memory* @routine_je_.L_423c84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c71, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_423c71, %struct.Memory** %MEMORY

  %loadBr_423c71 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423c71 = icmp eq i8 %loadBr_423c71, 1
  br i1 %cmpBr_423c71, label %block_.L_423c84, label %block_423c77

block_423c77:
  ; Code: cmpl $0x0, -0x680(%rbp)	 RIP: 423c77	 Bytes: 7
  %loadMem_423c77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c77 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x680__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c77)
  store %struct.Memory* %call_423c77, %struct.Memory** %MEMORY

  ; Code: jne .L_423c89	 RIP: 423c7e	 Bytes: 6
  %loadMem_423c7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c7e = call %struct.Memory* @routine_jne_.L_423c89(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c7e, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_423c7e, %struct.Memory** %MEMORY

  %loadBr_423c7e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423c7e = icmp eq i8 %loadBr_423c7e, 1
  br i1 %cmpBr_423c7e, label %block_.L_423c89, label %block_.L_423c84

  ; Code: .L_423c84:	 RIP: 423c84	 Bytes: 0
block_.L_423c84:

  ; Code: jmpq .L_42440c	 RIP: 423c84	 Bytes: 5
  %loadMem_423c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c84 = call %struct.Memory* @routine_jmpq_.L_42440c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c84, i64 1928, i64 5)
  store %struct.Memory* %call_423c84, %struct.Memory** %MEMORY

  br label %block_.L_42440c

  ; Code: .L_423c89:	 RIP: 423c89	 Bytes: 0
block_.L_423c89:

  ; Code: movl 0xab0f24, %eax	 RIP: 423c89	 Bytes: 7
  %loadMem_423c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c89 = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c89)
  store %struct.Memory* %call_423c89, %struct.Memory** %MEMORY

  ; Code: andl $0x4000, %eax	 RIP: 423c90	 Bytes: 5
  %loadMem_423c90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c90 = call %struct.Memory* @routine_andl__0x4000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c90)
  store %struct.Memory* %call_423c90, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 423c95	 Bytes: 3
  %loadMem_423c95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c95 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c95)
  store %struct.Memory* %call_423c95, %struct.Memory** %MEMORY

  ; Code: jne .L_423ca3	 RIP: 423c98	 Bytes: 6
  %loadMem_423c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c98 = call %struct.Memory* @routine_jne_.L_423ca3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c98, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_423c98, %struct.Memory** %MEMORY

  %loadBr_423c98 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423c98 = icmp eq i8 %loadBr_423c98, 1
  br i1 %cmpBr_423c98, label %block_.L_423ca3, label %block_423c9e

block_423c9e:
  ; Code: jmpq .L_423cbd	 RIP: 423c9e	 Bytes: 5
  %loadMem_423c9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423c9e = call %struct.Memory* @routine_jmpq_.L_423cbd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423c9e, i64 31, i64 5)
  store %struct.Memory* %call_423c9e, %struct.Memory** %MEMORY

  br label %block_.L_423cbd

  ; Code: .L_423ca3:	 RIP: 423ca3	 Bytes: 0
block_.L_423ca3:

  ; Code: movq $0x57ba7e, %rdi	 RIP: 423ca3	 Bytes: 10
  %loadMem_423ca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ca3 = call %struct.Memory* @routine_movq__0x57ba7e___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ca3)
  store %struct.Memory* %call_423ca3, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %esi	 RIP: 423cad	 Bytes: 3
  %loadMem_423cad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423cad = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423cad)
  store %struct.Memory* %call_423cad, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 423cb0	 Bytes: 2
  %loadMem_423cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423cb0 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423cb0)
  store %struct.Memory* %call_423cb0, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 423cb2	 Bytes: 5
  %loadMem1_423cb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423cb2 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423cb2, i64 188670, i64 5, i64 5)
  store %struct.Memory* %call1_423cb2, %struct.Memory** %MEMORY

  %loadMem2_423cb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423cb2 = load i64, i64* %3
  %call2_423cb2 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_423cb2, %struct.Memory* %loadMem2_423cb2)
  store %struct.Memory* %call2_423cb2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6a0(%rbp)	 RIP: 423cb7	 Bytes: 6
  %loadMem_423cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423cb7 = call %struct.Memory* @routine_movl__eax__MINUS0x6a0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423cb7)
  store %struct.Memory* %call_423cb7, %struct.Memory** %MEMORY

  ; Code: .L_423cbd:	 RIP: 423cbd	 Bytes: 0
  br label %block_.L_423cbd
block_.L_423cbd:

  ; Code: movl -0x1c(%rbp), %edi	 RIP: 423cbd	 Bytes: 3
  %loadMem_423cbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423cbd = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423cbd)
  store %struct.Memory* %call_423cbd, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 423cc0	 Bytes: 3
  %loadMem_423cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423cc0 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423cc0)
  store %struct.Memory* %call_423cc0, %struct.Memory** %MEMORY

  ; Code: callq .safe_move	 RIP: 423cc3	 Bytes: 5
  %loadMem1_423cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423cc3 = call %struct.Memory* @routine_callq_.safe_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423cc3, i64 294765, i64 5, i64 5)
  store %struct.Memory* %call1_423cc3, %struct.Memory** %MEMORY

  %loadMem2_423cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423cc3 = load i64, i64* %3
  %call2_423cc3 = call %struct.Memory* @sub_46bc30.safe_move(%struct.State* %0, i64  %loadPC_423cc3, %struct.Memory* %loadMem2_423cc3)
  store %struct.Memory* %call2_423cc3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, %eax	 RIP: 423cc8	 Bytes: 3
  %loadMem_423cc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423cc8 = call %struct.Memory* @routine_cmpl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423cc8)
  store %struct.Memory* %call_423cc8, %struct.Memory** %MEMORY

  ; Code: jne .L_423e13	 RIP: 423ccb	 Bytes: 6
  %loadMem_423ccb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ccb = call %struct.Memory* @routine_jne_.L_423e13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ccb, i8* %BRANCH_TAKEN, i64 328, i64 6, i64 6)
  store %struct.Memory* %call_423ccb, %struct.Memory** %MEMORY

  %loadBr_423ccb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423ccb = icmp eq i8 %loadBr_423ccb, 1
  br i1 %cmpBr_423ccb, label %block_.L_423e13, label %block_423cd1

block_423cd1:
  ; Code: movl 0xab0f24, %eax	 RIP: 423cd1	 Bytes: 7
  %loadMem_423cd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423cd1 = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423cd1)
  store %struct.Memory* %call_423cd1, %struct.Memory** %MEMORY

  ; Code: andl $0x4000, %eax	 RIP: 423cd8	 Bytes: 5
  %loadMem_423cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423cd8 = call %struct.Memory* @routine_andl__0x4000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423cd8)
  store %struct.Memory* %call_423cd8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 423cdd	 Bytes: 3
  %loadMem_423cdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423cdd = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423cdd)
  store %struct.Memory* %call_423cdd, %struct.Memory** %MEMORY

  ; Code: jne .L_423ceb	 RIP: 423ce0	 Bytes: 6
  %loadMem_423ce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ce0 = call %struct.Memory* @routine_jne_.L_423ceb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ce0, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_423ce0, %struct.Memory** %MEMORY

  %loadBr_423ce0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423ce0 = icmp eq i8 %loadBr_423ce0, 1
  br i1 %cmpBr_423ce0, label %block_.L_423ceb, label %block_423ce6

block_423ce6:
  ; Code: jmpq .L_423d02	 RIP: 423ce6	 Bytes: 5
  %loadMem_423ce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ce6 = call %struct.Memory* @routine_jmpq_.L_423d02(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ce6, i64 28, i64 5)
  store %struct.Memory* %call_423ce6, %struct.Memory** %MEMORY

  br label %block_.L_423d02

  ; Code: .L_423ceb:	 RIP: 423ceb	 Bytes: 0
block_.L_423ceb:

  ; Code: movq $0x57baa1, %rdi	 RIP: 423ceb	 Bytes: 10
  %loadMem_423ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ceb = call %struct.Memory* @routine_movq__0x57baa1___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ceb)
  store %struct.Memory* %call_423ceb, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 423cf5	 Bytes: 2
  %loadMem_423cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423cf5 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423cf5)
  store %struct.Memory* %call_423cf5, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 423cf7	 Bytes: 5
  %loadMem1_423cf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423cf7 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423cf7, i64 188601, i64 5, i64 5)
  store %struct.Memory* %call1_423cf7, %struct.Memory** %MEMORY

  %loadMem2_423cf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423cf7 = load i64, i64* %3
  %call2_423cf7 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_423cf7, %struct.Memory* %loadMem2_423cf7)
  store %struct.Memory* %call2_423cf7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6a4(%rbp)	 RIP: 423cfc	 Bytes: 6
  %loadMem_423cfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423cfc = call %struct.Memory* @routine_movl__eax__MINUS0x6a4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423cfc)
  store %struct.Memory* %call_423cfc, %struct.Memory** %MEMORY

  ; Code: .L_423d02:	 RIP: 423d02	 Bytes: 0
  br label %block_.L_423d02
block_.L_423d02:

  ; Code: leaq -0x24(%rbp), %rdx	 RIP: 423d02	 Bytes: 4
  %loadMem_423d02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d02 = call %struct.Memory* @routine_leaq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d02)
  store %struct.Memory* %call_423d02, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %edi	 RIP: 423d06	 Bytes: 3
  %loadMem_423d06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d06 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d06)
  store %struct.Memory* %call_423d06, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 423d09	 Bytes: 3
  %loadMem_423d09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d09 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d09)
  store %struct.Memory* %call_423d09, %struct.Memory** %MEMORY

  ; Code: callq .filllib_confirm_safety	 RIP: 423d0c	 Bytes: 5
  %loadMem1_423d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423d0c = call %struct.Memory* @routine_callq_.filllib_confirm_safety(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423d0c, i64 2484, i64 5, i64 5)
  store %struct.Memory* %call1_423d0c, %struct.Memory** %MEMORY

  %loadMem2_423d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423d0c = load i64, i64* %3
  %call2_423d0c = call %struct.Memory* @sub_4246c0.filllib_confirm_safety(%struct.State* %0, i64  %loadPC_423d0c, %struct.Memory* %loadMem2_423d0c)
  store %struct.Memory* %call2_423d0c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 423d11	 Bytes: 3
  %loadMem_423d11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d11 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d11)
  store %struct.Memory* %call_423d11, %struct.Memory** %MEMORY

  ; Code: je .L_423d60	 RIP: 423d14	 Bytes: 6
  %loadMem_423d14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d14 = call %struct.Memory* @routine_je_.L_423d60(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d14, i8* %BRANCH_TAKEN, i64 76, i64 6, i64 6)
  store %struct.Memory* %call_423d14, %struct.Memory** %MEMORY

  %loadBr_423d14 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423d14 = icmp eq i8 %loadBr_423d14, 1
  br i1 %cmpBr_423d14, label %block_.L_423d60, label %block_423d1a

block_423d1a:
  ; Code: movl 0xab0f24, %eax	 RIP: 423d1a	 Bytes: 7
  %loadMem_423d1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d1a = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d1a)
  store %struct.Memory* %call_423d1a, %struct.Memory** %MEMORY

  ; Code: andl $0x4000, %eax	 RIP: 423d21	 Bytes: 5
  %loadMem_423d21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d21 = call %struct.Memory* @routine_andl__0x4000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d21)
  store %struct.Memory* %call_423d21, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 423d26	 Bytes: 3
  %loadMem_423d26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d26 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d26)
  store %struct.Memory* %call_423d26, %struct.Memory** %MEMORY

  ; Code: jne .L_423d34	 RIP: 423d29	 Bytes: 6
  %loadMem_423d29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d29 = call %struct.Memory* @routine_jne_.L_423d34(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d29, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_423d29, %struct.Memory** %MEMORY

  %loadBr_423d29 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423d29 = icmp eq i8 %loadBr_423d29, 1
  br i1 %cmpBr_423d29, label %block_.L_423d34, label %block_423d2f

block_423d2f:
  ; Code: jmpq .L_423d4b	 RIP: 423d2f	 Bytes: 5
  %loadMem_423d2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d2f = call %struct.Memory* @routine_jmpq_.L_423d4b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d2f, i64 28, i64 5)
  store %struct.Memory* %call_423d2f, %struct.Memory** %MEMORY

  br label %block_.L_423d4b

  ; Code: .L_423d34:	 RIP: 423d34	 Bytes: 0
block_.L_423d34:

  ; Code: movq $0x57babc, %rdi	 RIP: 423d34	 Bytes: 10
  %loadMem_423d34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d34 = call %struct.Memory* @routine_movq__0x57babc___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d34)
  store %struct.Memory* %call_423d34, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 423d3e	 Bytes: 2
  %loadMem_423d3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d3e = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d3e)
  store %struct.Memory* %call_423d3e, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 423d40	 Bytes: 5
  %loadMem1_423d40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423d40 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423d40, i64 188528, i64 5, i64 5)
  store %struct.Memory* %call1_423d40, %struct.Memory** %MEMORY

  %loadMem2_423d40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423d40 = load i64, i64* %3
  %call2_423d40 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_423d40, %struct.Memory* %loadMem2_423d40)
  store %struct.Memory* %call2_423d40, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6a8(%rbp)	 RIP: 423d45	 Bytes: 6
  %loadMem_423d45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d45 = call %struct.Memory* @routine_movl__eax__MINUS0x6a8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d45)
  store %struct.Memory* %call_423d45, %struct.Memory** %MEMORY

  ; Code: .L_423d4b:	 RIP: 423d4b	 Bytes: 0
  br label %block_.L_423d4b
block_.L_423d4b:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 423d4b	 Bytes: 3
  %loadMem_423d4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d4b = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d4b)
  store %struct.Memory* %call_423d4b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 423d4e	 Bytes: 4
  %loadMem_423d4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d4e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d4e)
  store %struct.Memory* %call_423d4e, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 423d52	 Bytes: 2
  %loadMem_423d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d52 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d52)
  store %struct.Memory* %call_423d52, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 423d54	 Bytes: 7
  %loadMem_423d54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d54 = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d54)
  store %struct.Memory* %call_423d54, %struct.Memory** %MEMORY

  ; Code: jmpq .L_424452	 RIP: 423d5b	 Bytes: 5
  %loadMem_423d5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d5b = call %struct.Memory* @routine_jmpq_.L_424452(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d5b, i64 1783, i64 5)
  store %struct.Memory* %call_423d5b, %struct.Memory** %MEMORY

  br label %block_.L_424452

  ; Code: .L_423d60:	 RIP: 423d60	 Bytes: 0
block_.L_423d60:

  ; Code: cmpl $0x0, -0x24(%rbp)	 RIP: 423d60	 Bytes: 4
  %loadMem_423d60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d60 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d60)
  store %struct.Memory* %call_423d60, %struct.Memory** %MEMORY

  ; Code: je .L_423db3	 RIP: 423d64	 Bytes: 6
  %loadMem_423d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d64 = call %struct.Memory* @routine_je_.L_423db3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d64, i8* %BRANCH_TAKEN, i64 79, i64 6, i64 6)
  store %struct.Memory* %call_423d64, %struct.Memory** %MEMORY

  %loadBr_423d64 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423d64 = icmp eq i8 %loadBr_423d64, 1
  br i1 %cmpBr_423d64, label %block_.L_423db3, label %block_423d6a

block_423d6a:
  ; Code: movl 0xab0f24, %eax	 RIP: 423d6a	 Bytes: 7
  %loadMem_423d6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d6a = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d6a)
  store %struct.Memory* %call_423d6a, %struct.Memory** %MEMORY

  ; Code: andl $0x4000, %eax	 RIP: 423d71	 Bytes: 5
  %loadMem_423d71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d71 = call %struct.Memory* @routine_andl__0x4000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d71)
  store %struct.Memory* %call_423d71, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 423d76	 Bytes: 3
  %loadMem_423d76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d76 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d76)
  store %struct.Memory* %call_423d76, %struct.Memory** %MEMORY

  ; Code: jne .L_423d84	 RIP: 423d79	 Bytes: 6
  %loadMem_423d79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d79 = call %struct.Memory* @routine_jne_.L_423d84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d79, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_423d79, %struct.Memory** %MEMORY

  %loadBr_423d79 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423d79 = icmp eq i8 %loadBr_423d79, 1
  br i1 %cmpBr_423d79, label %block_.L_423d84, label %block_423d7f

block_423d7f:
  ; Code: jmpq .L_423d9e	 RIP: 423d7f	 Bytes: 5
  %loadMem_423d7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d7f = call %struct.Memory* @routine_jmpq_.L_423d9e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d7f, i64 31, i64 5)
  store %struct.Memory* %call_423d7f, %struct.Memory** %MEMORY

  br label %block_.L_423d9e

  ; Code: .L_423d84:	 RIP: 423d84	 Bytes: 0
block_.L_423d84:

  ; Code: movq $0x57bad8, %rdi	 RIP: 423d84	 Bytes: 10
  %loadMem_423d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d84 = call %struct.Memory* @routine_movq__0x57bad8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d84)
  store %struct.Memory* %call_423d84, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %esi	 RIP: 423d8e	 Bytes: 3
  %loadMem_423d8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d8e = call %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d8e)
  store %struct.Memory* %call_423d8e, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 423d91	 Bytes: 2
  %loadMem_423d91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d91 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d91)
  store %struct.Memory* %call_423d91, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 423d93	 Bytes: 5
  %loadMem1_423d93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423d93 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423d93, i64 188445, i64 5, i64 5)
  store %struct.Memory* %call1_423d93, %struct.Memory** %MEMORY

  %loadMem2_423d93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423d93 = load i64, i64* %3
  %call2_423d93 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_423d93, %struct.Memory* %loadMem2_423d93)
  store %struct.Memory* %call2_423d93, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6ac(%rbp)	 RIP: 423d98	 Bytes: 6
  %loadMem_423d98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d98 = call %struct.Memory* @routine_movl__eax__MINUS0x6ac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d98)
  store %struct.Memory* %call_423d98, %struct.Memory** %MEMORY

  ; Code: .L_423d9e:	 RIP: 423d9e	 Bytes: 0
  br label %block_.L_423d9e
block_.L_423d9e:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 423d9e	 Bytes: 3
  %loadMem_423d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423d9e = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423d9e)
  store %struct.Memory* %call_423d9e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 423da1	 Bytes: 4
  %loadMem_423da1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423da1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423da1)
  store %struct.Memory* %call_423da1, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 423da5	 Bytes: 2
  %loadMem_423da5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423da5 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423da5)
  store %struct.Memory* %call_423da5, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 423da7	 Bytes: 7
  %loadMem_423da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423da7 = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423da7)
  store %struct.Memory* %call_423da7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_424452	 RIP: 423dae	 Bytes: 5
  %loadMem_423dae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423dae = call %struct.Memory* @routine_jmpq_.L_424452(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423dae, i64 1700, i64 5)
  store %struct.Memory* %call_423dae, %struct.Memory** %MEMORY

  br label %block_.L_424452

  ; Code: .L_423db3:	 RIP: 423db3	 Bytes: 0
block_.L_423db3:

  ; Code: movl 0xab0f24, %eax	 RIP: 423db3	 Bytes: 7
  %loadMem_423db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423db3 = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423db3)
  store %struct.Memory* %call_423db3, %struct.Memory** %MEMORY

  ; Code: andl $0x4000, %eax	 RIP: 423dba	 Bytes: 5
  %loadMem_423dba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423dba = call %struct.Memory* @routine_andl__0x4000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423dba)
  store %struct.Memory* %call_423dba, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 423dbf	 Bytes: 3
  %loadMem_423dbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423dbf = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423dbf)
  store %struct.Memory* %call_423dbf, %struct.Memory** %MEMORY

  ; Code: jne .L_423dcd	 RIP: 423dc2	 Bytes: 6
  %loadMem_423dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423dc2 = call %struct.Memory* @routine_jne_.L_423dcd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423dc2, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_423dc2, %struct.Memory** %MEMORY

  %loadBr_423dc2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423dc2 = icmp eq i8 %loadBr_423dc2, 1
  br i1 %cmpBr_423dc2, label %block_.L_423dcd, label %block_423dc8

block_423dc8:
  ; Code: jmpq .L_423de4	 RIP: 423dc8	 Bytes: 5
  %loadMem_423dc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423dc8 = call %struct.Memory* @routine_jmpq_.L_423de4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423dc8, i64 28, i64 5)
  store %struct.Memory* %call_423dc8, %struct.Memory** %MEMORY

  br label %block_.L_423de4

  ; Code: .L_423dcd:	 RIP: 423dcd	 Bytes: 0
block_.L_423dcd:

  ; Code: movq $0x57bb09, %rdi	 RIP: 423dcd	 Bytes: 10
  %loadMem_423dcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423dcd = call %struct.Memory* @routine_movq__0x57bb09___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423dcd)
  store %struct.Memory* %call_423dcd, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 423dd7	 Bytes: 2
  %loadMem_423dd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423dd7 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423dd7)
  store %struct.Memory* %call_423dd7, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 423dd9	 Bytes: 5
  %loadMem1_423dd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423dd9 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423dd9, i64 188375, i64 5, i64 5)
  store %struct.Memory* %call1_423dd9, %struct.Memory** %MEMORY

  %loadMem2_423dd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423dd9 = load i64, i64* %3
  %call2_423dd9 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_423dd9, %struct.Memory* %loadMem2_423dd9)
  store %struct.Memory* %call2_423dd9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6b0(%rbp)	 RIP: 423dde	 Bytes: 6
  %loadMem_423dde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423dde = call %struct.Memory* @routine_movl__eax__MINUS0x6b0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423dde)
  store %struct.Memory* %call_423dde, %struct.Memory** %MEMORY

  ; Code: .L_423de4:	 RIP: 423de4	 Bytes: 0
  br label %block_.L_423de4
block_.L_423de4:

  ; Code: cmpl $0x0, 0xab0f28	 RIP: 423de4	 Bytes: 8
  %loadMem_423de4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423de4 = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423de4)
  store %struct.Memory* %call_423de4, %struct.Memory** %MEMORY

  ; Code: jne .L_423df7	 RIP: 423dec	 Bytes: 6
  %loadMem_423dec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423dec = call %struct.Memory* @routine_jne_.L_423df7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423dec, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_423dec, %struct.Memory** %MEMORY

  %loadBr_423dec = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423dec = icmp eq i8 %loadBr_423dec, 1
  br i1 %cmpBr_423dec, label %block_.L_423df7, label %block_423df2

block_423df2:
  ; Code: jmpq .L_423e0e	 RIP: 423df2	 Bytes: 5
  %loadMem_423df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423df2 = call %struct.Memory* @routine_jmpq_.L_423e0e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423df2, i64 28, i64 5)
  store %struct.Memory* %call_423df2, %struct.Memory** %MEMORY

  br label %block_.L_423e0e

  ; Code: .L_423df7:	 RIP: 423df7	 Bytes: 0
block_.L_423df7:

  ; Code: movq $0x57bb34, %rdi	 RIP: 423df7	 Bytes: 10
  %loadMem_423df7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423df7 = call %struct.Memory* @routine_movq__0x57bb34___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423df7)
  store %struct.Memory* %call_423df7, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 423e01	 Bytes: 2
  %loadMem_423e01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e01 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e01)
  store %struct.Memory* %call_423e01, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 423e03	 Bytes: 5
  %loadMem1_423e03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423e03 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423e03, i64 188333, i64 5, i64 5)
  store %struct.Memory* %call1_423e03, %struct.Memory** %MEMORY

  %loadMem2_423e03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423e03 = load i64, i64* %3
  %call2_423e03 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_423e03, %struct.Memory* %loadMem2_423e03)
  store %struct.Memory* %call2_423e03, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6b4(%rbp)	 RIP: 423e08	 Bytes: 6
  %loadMem_423e08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e08 = call %struct.Memory* @routine_movl__eax__MINUS0x6b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e08)
  store %struct.Memory* %call_423e08, %struct.Memory** %MEMORY

  ; Code: .L_423e0e:	 RIP: 423e0e	 Bytes: 0
  br label %block_.L_423e0e
block_.L_423e0e:

  ; Code: jmpq .L_42440c	 RIP: 423e0e	 Bytes: 5
  %loadMem_423e0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e0e = call %struct.Memory* @routine_jmpq_.L_42440c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e0e, i64 1534, i64 5)
  store %struct.Memory* %call_423e0e, %struct.Memory** %MEMORY

  br label %block_.L_42440c

  ; Code: .L_423e13:	 RIP: 423e13	 Bytes: 0
block_.L_423e13:

  ; Code: movq $0x57bb62, %rdx	 RIP: 423e13	 Bytes: 10
  %loadMem_423e13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e13 = call %struct.Memory* @routine_movq__0x57bb62___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e13)
  store %struct.Memory* %call_423e13, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 423e1d	 Bytes: 2
  %loadMem_423e1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e1d = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e1d)
  store %struct.Memory* %call_423e1d, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %edi	 RIP: 423e1f	 Bytes: 3
  %loadMem_423e1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e1f = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e1f)
  store %struct.Memory* %call_423e1f, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 423e22	 Bytes: 3
  %loadMem_423e22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e22 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e22)
  store %struct.Memory* %call_423e22, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 423e25	 Bytes: 2
  %loadMem_423e25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e25 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e25)
  store %struct.Memory* %call_423e25, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 423e27	 Bytes: 3
  %loadMem_423e27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e27 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e27)
  store %struct.Memory* %call_423e27, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 423e2a	 Bytes: 3
  %loadMem_423e2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e2a = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e2a)
  store %struct.Memory* %call_423e2a, %struct.Memory** %MEMORY

  ; Code: callq .trymove	 RIP: 423e2d	 Bytes: 5
  %loadMem1_423e2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423e2d = call %struct.Memory* @routine_callq_.trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423e2d, i64 -110589, i64 5, i64 5)
  store %struct.Memory* %call1_423e2d, %struct.Memory** %MEMORY

  %loadMem2_423e2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423e2d = load i64, i64* %3
  %call2_423e2d = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64  %loadPC_423e2d, %struct.Memory* %loadMem2_423e2d)
  store %struct.Memory* %call2_423e2d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 423e32	 Bytes: 3
  %loadMem_423e32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e32 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e32)
  store %struct.Memory* %call_423e32, %struct.Memory** %MEMORY

  ; Code: je .L_424026	 RIP: 423e35	 Bytes: 6
  %loadMem_423e35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e35 = call %struct.Memory* @routine_je_.L_424026(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e35, i8* %BRANCH_TAKEN, i64 497, i64 6, i64 6)
  store %struct.Memory* %call_423e35, %struct.Memory** %MEMORY

  %loadBr_423e35 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423e35 = icmp eq i8 %loadBr_423e35, 1
  br i1 %cmpBr_423e35, label %block_.L_424026, label %block_423e3b

block_423e3b:
  ; Code: callq .popgo	 RIP: 423e3b	 Bytes: 5
  %loadMem1_423e3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423e3b = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423e3b, i64 -90331, i64 5, i64 5)
  store %struct.Memory* %call1_423e3b, %struct.Memory** %MEMORY

  %loadMem2_423e3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423e3b = load i64, i64* %3
  %call2_423e3b = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_423e3b, %struct.Memory* %loadMem2_423e3b)
  store %struct.Memory* %call2_423e3b, %struct.Memory** %MEMORY

  ; Code: movl 0xab0f24, %eax	 RIP: 423e40	 Bytes: 7
  %loadMem_423e40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e40 = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e40)
  store %struct.Memory* %call_423e40, %struct.Memory** %MEMORY

  ; Code: andl $0x4000, %eax	 RIP: 423e47	 Bytes: 5
  %loadMem_423e47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e47 = call %struct.Memory* @routine_andl__0x4000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e47)
  store %struct.Memory* %call_423e47, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 423e4c	 Bytes: 3
  %loadMem_423e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e4c = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e4c)
  store %struct.Memory* %call_423e4c, %struct.Memory** %MEMORY

  ; Code: jne .L_423e5a	 RIP: 423e4f	 Bytes: 6
  %loadMem_423e4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e4f = call %struct.Memory* @routine_jne_.L_423e5a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e4f, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_423e4f, %struct.Memory** %MEMORY

  %loadBr_423e4f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423e4f = icmp eq i8 %loadBr_423e4f, 1
  br i1 %cmpBr_423e4f, label %block_.L_423e5a, label %block_423e55

block_423e55:
  ; Code: jmpq .L_423e71	 RIP: 423e55	 Bytes: 5
  %loadMem_423e55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e55 = call %struct.Memory* @routine_jmpq_.L_423e71(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e55, i64 28, i64 5)
  store %struct.Memory* %call_423e55, %struct.Memory** %MEMORY

  br label %block_.L_423e71

  ; Code: .L_423e5a:	 RIP: 423e5a	 Bytes: 0
block_.L_423e5a:

  ; Code: movq $0x57bb6f, %rdi	 RIP: 423e5a	 Bytes: 10
  %loadMem_423e5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e5a = call %struct.Memory* @routine_movq__0x57bb6f___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e5a)
  store %struct.Memory* %call_423e5a, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 423e64	 Bytes: 2
  %loadMem_423e64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e64 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e64)
  store %struct.Memory* %call_423e64, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 423e66	 Bytes: 5
  %loadMem1_423e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423e66 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423e66, i64 188234, i64 5, i64 5)
  store %struct.Memory* %call1_423e66, %struct.Memory** %MEMORY

  %loadMem2_423e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423e66 = load i64, i64* %3
  %call2_423e66 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_423e66, %struct.Memory* %loadMem2_423e66)
  store %struct.Memory* %call2_423e66, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6b8(%rbp)	 RIP: 423e6b	 Bytes: 6
  %loadMem_423e6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e6b = call %struct.Memory* @routine_movl__eax__MINUS0x6b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e6b)
  store %struct.Memory* %call_423e6b, %struct.Memory** %MEMORY

  ; Code: .L_423e71:	 RIP: 423e71	 Bytes: 0
  br label %block_.L_423e71
block_.L_423e71:

  ; Code: movl -0x1c(%rbp), %edi	 RIP: 423e71	 Bytes: 3
  %loadMem_423e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e71 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e71)
  store %struct.Memory* %call_423e71, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 423e74	 Bytes: 3
  %loadMem_423e74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e74 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e74)
  store %struct.Memory* %call_423e74, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 423e77	 Bytes: 4
  %loadMem_423e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e77 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e77)
  store %struct.Memory* %call_423e77, %struct.Memory** %MEMORY

  ; Code: callq .find_backfilling_move	 RIP: 423e7b	 Bytes: 5
  %loadMem1_423e7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423e7b = call %struct.Memory* @routine_callq_.find_backfilling_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423e7b, i64 2917, i64 5, i64 5)
  store %struct.Memory* %call1_423e7b, %struct.Memory** %MEMORY

  %loadMem2_423e7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423e7b = load i64, i64* %3
  %call2_423e7b = call %struct.Memory* @sub_4249e0.find_backfilling_move(%struct.State* %0, i64  %loadPC_423e7b, %struct.Memory* %loadMem2_423e7b)
  store %struct.Memory* %call2_423e7b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 423e80	 Bytes: 3
  %loadMem_423e80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e80 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e80)
  store %struct.Memory* %call_423e80, %struct.Memory** %MEMORY

  ; Code: je .L_423f74	 RIP: 423e83	 Bytes: 6
  %loadMem_423e83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e83 = call %struct.Memory* @routine_je_.L_423f74(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e83, i8* %BRANCH_TAKEN, i64 241, i64 6, i64 6)
  store %struct.Memory* %call_423e83, %struct.Memory** %MEMORY

  %loadBr_423e83 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423e83 = icmp eq i8 %loadBr_423e83, 1
  br i1 %cmpBr_423e83, label %block_.L_423f74, label %block_423e89

block_423e89:
  ; Code: movl 0xab0f24, %eax	 RIP: 423e89	 Bytes: 7
  %loadMem_423e89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e89 = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e89)
  store %struct.Memory* %call_423e89, %struct.Memory** %MEMORY

  ; Code: andl $0x4000, %eax	 RIP: 423e90	 Bytes: 5
  %loadMem_423e90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e90 = call %struct.Memory* @routine_andl__0x4000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e90)
  store %struct.Memory* %call_423e90, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 423e95	 Bytes: 3
  %loadMem_423e95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e95 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e95)
  store %struct.Memory* %call_423e95, %struct.Memory** %MEMORY

  ; Code: jne .L_423ea3	 RIP: 423e98	 Bytes: 6
  %loadMem_423e98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e98 = call %struct.Memory* @routine_jne_.L_423ea3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e98, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_423e98, %struct.Memory** %MEMORY

  %loadBr_423e98 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423e98 = icmp eq i8 %loadBr_423e98, 1
  br i1 %cmpBr_423e98, label %block_.L_423ea3, label %block_423e9e

block_423e9e:
  ; Code: jmpq .L_423ec0	 RIP: 423e9e	 Bytes: 5
  %loadMem_423e9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423e9e = call %struct.Memory* @routine_jmpq_.L_423ec0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423e9e, i64 34, i64 5)
  store %struct.Memory* %call_423e9e, %struct.Memory** %MEMORY

  br label %block_.L_423ec0

  ; Code: .L_423ea3:	 RIP: 423ea3	 Bytes: 0
block_.L_423ea3:

  ; Code: movq $0x57bbab, %rdi	 RIP: 423ea3	 Bytes: 10
  %loadMem_423ea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ea3 = call %struct.Memory* @routine_movq__0x57bbab___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ea3)
  store %struct.Memory* %call_423ea3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 423ead	 Bytes: 4
  %loadMem_423ead = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ead = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ead)
  store %struct.Memory* %call_423ead, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %esi	 RIP: 423eb1	 Bytes: 2
  %loadMem_423eb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423eb1 = call %struct.Memory* @routine_movl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423eb1)
  store %struct.Memory* %call_423eb1, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 423eb3	 Bytes: 2
  %loadMem_423eb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423eb3 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423eb3)
  store %struct.Memory* %call_423eb3, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 423eb5	 Bytes: 5
  %loadMem1_423eb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423eb5 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423eb5, i64 188155, i64 5, i64 5)
  store %struct.Memory* %call1_423eb5, %struct.Memory** %MEMORY

  %loadMem2_423eb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423eb5 = load i64, i64* %3
  %call2_423eb5 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_423eb5, %struct.Memory* %loadMem2_423eb5)
  store %struct.Memory* %call2_423eb5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6bc(%rbp)	 RIP: 423eba	 Bytes: 6
  %loadMem_423eba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423eba = call %struct.Memory* @routine_movl__eax__MINUS0x6bc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423eba)
  store %struct.Memory* %call_423eba, %struct.Memory** %MEMORY

  ; Code: .L_423ec0:	 RIP: 423ec0	 Bytes: 0
  br label %block_.L_423ec0
block_.L_423ec0:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 423ec0	 Bytes: 4
  %loadMem_423ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ec0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ec0)
  store %struct.Memory* %call_423ec0, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %edi	 RIP: 423ec4	 Bytes: 2
  %loadMem_423ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ec4 = call %struct.Memory* @routine_movl___rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ec4)
  store %struct.Memory* %call_423ec4, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 423ec6	 Bytes: 3
  %loadMem_423ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ec6 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ec6)
  store %struct.Memory* %call_423ec6, %struct.Memory** %MEMORY

  ; Code: callq .is_legal	 RIP: 423ec9	 Bytes: 5
  %loadMem1_423ec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423ec9 = call %struct.Memory* @routine_callq_.is_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423ec9, i64 -87033, i64 5, i64 5)
  store %struct.Memory* %call1_423ec9, %struct.Memory** %MEMORY

  %loadMem2_423ec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423ec9 = load i64, i64* %3
  %call2_423ec9 = call %struct.Memory* @sub_40ead0.is_legal(%struct.State* %0, i64  %loadPC_423ec9, %struct.Memory* %loadMem2_423ec9)
  store %struct.Memory* %call2_423ec9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 423ece	 Bytes: 3
  %loadMem_423ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ece = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ece)
  store %struct.Memory* %call_423ece, %struct.Memory** %MEMORY

  ; Code: jne .L_423f17	 RIP: 423ed1	 Bytes: 6
  %loadMem_423ed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ed1 = call %struct.Memory* @routine_jne_.L_423f17(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ed1, i8* %BRANCH_TAKEN, i64 70, i64 6, i64 6)
  store %struct.Memory* %call_423ed1, %struct.Memory** %MEMORY

  %loadBr_423ed1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423ed1 = icmp eq i8 %loadBr_423ed1, 1
  br i1 %cmpBr_423ed1, label %block_.L_423f17, label %block_423ed7

block_423ed7:
  ; Code: movl 0xab0f24, %eax	 RIP: 423ed7	 Bytes: 7
  %loadMem_423ed7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ed7 = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ed7)
  store %struct.Memory* %call_423ed7, %struct.Memory** %MEMORY

  ; Code: andl $0x4000, %eax	 RIP: 423ede	 Bytes: 5
  %loadMem_423ede = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ede = call %struct.Memory* @routine_andl__0x4000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ede)
  store %struct.Memory* %call_423ede, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 423ee3	 Bytes: 3
  %loadMem_423ee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ee3 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ee3)
  store %struct.Memory* %call_423ee3, %struct.Memory** %MEMORY

  ; Code: jne .L_423ef1	 RIP: 423ee6	 Bytes: 6
  %loadMem_423ee6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ee6 = call %struct.Memory* @routine_jne_.L_423ef1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ee6, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_423ee6, %struct.Memory** %MEMORY

  %loadBr_423ee6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423ee6 = icmp eq i8 %loadBr_423ee6, 1
  br i1 %cmpBr_423ee6, label %block_.L_423ef1, label %block_423eec

block_423eec:
  ; Code: jmpq .L_423f08	 RIP: 423eec	 Bytes: 5
  %loadMem_423eec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423eec = call %struct.Memory* @routine_jmpq_.L_423f08(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423eec, i64 28, i64 5)
  store %struct.Memory* %call_423eec, %struct.Memory** %MEMORY

  br label %block_.L_423f08

  ; Code: .L_423ef1:	 RIP: 423ef1	 Bytes: 0
block_.L_423ef1:

  ; Code: movq $0x57bbce, %rdi	 RIP: 423ef1	 Bytes: 10
  %loadMem_423ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ef1 = call %struct.Memory* @routine_movq__0x57bbce___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ef1)
  store %struct.Memory* %call_423ef1, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 423efb	 Bytes: 2
  %loadMem_423efb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423efb = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423efb)
  store %struct.Memory* %call_423efb, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 423efd	 Bytes: 5
  %loadMem1_423efd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423efd = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423efd, i64 188083, i64 5, i64 5)
  store %struct.Memory* %call1_423efd, %struct.Memory** %MEMORY

  %loadMem2_423efd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423efd = load i64, i64* %3
  %call2_423efd = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_423efd, %struct.Memory* %loadMem2_423efd)
  store %struct.Memory* %call2_423efd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6c0(%rbp)	 RIP: 423f02	 Bytes: 6
  %loadMem_423f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f02 = call %struct.Memory* @routine_movl__eax__MINUS0x6c0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f02)
  store %struct.Memory* %call_423f02, %struct.Memory** %MEMORY

  ; Code: .L_423f08:	 RIP: 423f08	 Bytes: 0
  br label %block_.L_423f08
block_.L_423f08:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 423f08	 Bytes: 4
  %loadMem_423f08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f08 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f08)
  store %struct.Memory* %call_423f08, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax)	 RIP: 423f0c	 Bytes: 6
  %loadMem_423f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f0c = call %struct.Memory* @routine_movl__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f0c)
  store %struct.Memory* %call_423f0c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42440c	 RIP: 423f12	 Bytes: 5
  %loadMem_423f12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f12 = call %struct.Memory* @routine_jmpq_.L_42440c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f12, i64 1274, i64 5)
  store %struct.Memory* %call_423f12, %struct.Memory** %MEMORY

  br label %block_.L_42440c

  ; Code: .L_423f17:	 RIP: 423f17	 Bytes: 0
block_.L_423f17:

  ; Code: leaq -0x24(%rbp), %rdx	 RIP: 423f17	 Bytes: 4
  %loadMem_423f17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f17 = call %struct.Memory* @routine_leaq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f17)
  store %struct.Memory* %call_423f17, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 423f1b	 Bytes: 4
  %loadMem_423f1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f1b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f1b)
  store %struct.Memory* %call_423f1b, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %edi	 RIP: 423f1f	 Bytes: 2
  %loadMem_423f1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f1f = call %struct.Memory* @routine_movl___rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f1f)
  store %struct.Memory* %call_423f1f, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 423f21	 Bytes: 3
  %loadMem_423f21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f21 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f21)
  store %struct.Memory* %call_423f21, %struct.Memory** %MEMORY

  ; Code: callq .filllib_confirm_safety	 RIP: 423f24	 Bytes: 5
  %loadMem1_423f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423f24 = call %struct.Memory* @routine_callq_.filllib_confirm_safety(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423f24, i64 1948, i64 5, i64 5)
  store %struct.Memory* %call1_423f24, %struct.Memory** %MEMORY

  %loadMem2_423f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423f24 = load i64, i64* %3
  %call2_423f24 = call %struct.Memory* @sub_4246c0.filllib_confirm_safety(%struct.State* %0, i64  %loadPC_423f24, %struct.Memory* %loadMem2_423f24)
  store %struct.Memory* %call2_423f24, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 423f29	 Bytes: 3
  %loadMem_423f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f29 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f29)
  store %struct.Memory* %call_423f29, %struct.Memory** %MEMORY

  ; Code: jne .L_423f68	 RIP: 423f2c	 Bytes: 6
  %loadMem_423f2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f2c = call %struct.Memory* @routine_jne_.L_423f68(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f2c, i8* %BRANCH_TAKEN, i64 60, i64 6, i64 6)
  store %struct.Memory* %call_423f2c, %struct.Memory** %MEMORY

  %loadBr_423f2c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423f2c = icmp eq i8 %loadBr_423f2c, 1
  br i1 %cmpBr_423f2c, label %block_.L_423f68, label %block_423f32

block_423f32:
  ; Code: movl 0xab0f24, %eax	 RIP: 423f32	 Bytes: 7
  %loadMem_423f32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f32 = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f32)
  store %struct.Memory* %call_423f32, %struct.Memory** %MEMORY

  ; Code: andl $0x4000, %eax	 RIP: 423f39	 Bytes: 5
  %loadMem_423f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f39 = call %struct.Memory* @routine_andl__0x4000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f39)
  store %struct.Memory* %call_423f39, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 423f3e	 Bytes: 3
  %loadMem_423f3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f3e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f3e)
  store %struct.Memory* %call_423f3e, %struct.Memory** %MEMORY

  ; Code: jne .L_423f4c	 RIP: 423f41	 Bytes: 6
  %loadMem_423f41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f41 = call %struct.Memory* @routine_jne_.L_423f4c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f41, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_423f41, %struct.Memory** %MEMORY

  %loadBr_423f41 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423f41 = icmp eq i8 %loadBr_423f41, 1
  br i1 %cmpBr_423f41, label %block_.L_423f4c, label %block_423f47

block_423f47:
  ; Code: jmpq .L_423f63	 RIP: 423f47	 Bytes: 5
  %loadMem_423f47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f47 = call %struct.Memory* @routine_jmpq_.L_423f63(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f47, i64 28, i64 5)
  store %struct.Memory* %call_423f47, %struct.Memory** %MEMORY

  br label %block_.L_423f63

  ; Code: .L_423f4c:	 RIP: 423f4c	 Bytes: 0
block_.L_423f4c:

  ; Code: movq $0x57bb09, %rdi	 RIP: 423f4c	 Bytes: 10
  %loadMem_423f4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f4c = call %struct.Memory* @routine_movq__0x57bb09___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f4c)
  store %struct.Memory* %call_423f4c, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 423f56	 Bytes: 2
  %loadMem_423f56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f56 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f56)
  store %struct.Memory* %call_423f56, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 423f58	 Bytes: 5
  %loadMem1_423f58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423f58 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423f58, i64 187992, i64 5, i64 5)
  store %struct.Memory* %call1_423f58, %struct.Memory** %MEMORY

  %loadMem2_423f58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423f58 = load i64, i64* %3
  %call2_423f58 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_423f58, %struct.Memory* %loadMem2_423f58)
  store %struct.Memory* %call2_423f58, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6c4(%rbp)	 RIP: 423f5d	 Bytes: 6
  %loadMem_423f5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f5d = call %struct.Memory* @routine_movl__eax__MINUS0x6c4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f5d)
  store %struct.Memory* %call_423f5d, %struct.Memory** %MEMORY

  ; Code: .L_423f63:	 RIP: 423f63	 Bytes: 0
  br label %block_.L_423f63
block_.L_423f63:

  ; Code: jmpq .L_42440c	 RIP: 423f63	 Bytes: 5
  %loadMem_423f63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f63 = call %struct.Memory* @routine_jmpq_.L_42440c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f63, i64 1193, i64 5)
  store %struct.Memory* %call_423f63, %struct.Memory** %MEMORY

  br label %block_.L_42440c

  ; Code: .L_423f68:	 RIP: 423f68	 Bytes: 0
block_.L_423f68:

  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 423f68	 Bytes: 7
  %loadMem_423f68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f68 = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f68)
  store %struct.Memory* %call_423f68, %struct.Memory** %MEMORY

  ; Code: jmpq .L_424452	 RIP: 423f6f	 Bytes: 5
  %loadMem_423f6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f6f = call %struct.Memory* @routine_jmpq_.L_424452(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f6f, i64 1251, i64 5)
  store %struct.Memory* %call_423f6f, %struct.Memory** %MEMORY

  br label %block_.L_424452

  ; Code: .L_423f74:	 RIP: 423f74	 Bytes: 0
block_.L_423f74:

  ; Code: movl -0x1c(%rbp), %edi	 RIP: 423f74	 Bytes: 3
  %loadMem_423f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f74 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f74)
  store %struct.Memory* %call_423f74, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 423f77	 Bytes: 3
  %loadMem_423f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f77 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f77)
  store %struct.Memory* %call_423f77, %struct.Memory** %MEMORY

  ; Code: callq .does_capture_something	 RIP: 423f7a	 Bytes: 5
  %loadMem1_423f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423f7a = call %struct.Memory* @routine_callq_.does_capture_something(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423f7a, i64 -58554, i64 5, i64 5)
  store %struct.Memory* %call1_423f7a, %struct.Memory** %MEMORY

  %loadMem2_423f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423f7a = load i64, i64* %3
  %call2_423f7a = call %struct.Memory* @sub_415ac0.does_capture_something(%struct.State* %0, i64  %loadPC_423f7a, %struct.Memory* %loadMem2_423f7a)
  store %struct.Memory* %call2_423f7a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 423f7f	 Bytes: 3
  %loadMem_423f7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f7f = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f7f)
  store %struct.Memory* %call_423f7f, %struct.Memory** %MEMORY

  ; Code: je .L_42401c	 RIP: 423f82	 Bytes: 6
  %loadMem_423f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f82 = call %struct.Memory* @routine_je_.L_42401c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f82, i8* %BRANCH_TAKEN, i64 154, i64 6, i64 6)
  store %struct.Memory* %call_423f82, %struct.Memory** %MEMORY

  %loadBr_423f82 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423f82 = icmp eq i8 %loadBr_423f82, 1
  br i1 %cmpBr_423f82, label %block_.L_42401c, label %block_423f88

block_423f88:
  ; Code: movl 0xab0f24, %eax	 RIP: 423f88	 Bytes: 7
  %loadMem_423f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f88 = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f88)
  store %struct.Memory* %call_423f88, %struct.Memory** %MEMORY

  ; Code: andl $0x4000, %eax	 RIP: 423f8f	 Bytes: 5
  %loadMem_423f8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f8f = call %struct.Memory* @routine_andl__0x4000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f8f)
  store %struct.Memory* %call_423f8f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 423f94	 Bytes: 3
  %loadMem_423f94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f94 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f94)
  store %struct.Memory* %call_423f94, %struct.Memory** %MEMORY

  ; Code: jne .L_423fa2	 RIP: 423f97	 Bytes: 6
  %loadMem_423f97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f97 = call %struct.Memory* @routine_jne_.L_423fa2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f97, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_423f97, %struct.Memory** %MEMORY

  %loadBr_423f97 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423f97 = icmp eq i8 %loadBr_423f97, 1
  br i1 %cmpBr_423f97, label %block_.L_423fa2, label %block_423f9d

block_423f9d:
  ; Code: jmpq .L_423fb9	 RIP: 423f9d	 Bytes: 5
  %loadMem_423f9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423f9d = call %struct.Memory* @routine_jmpq_.L_423fb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423f9d, i64 28, i64 5)
  store %struct.Memory* %call_423f9d, %struct.Memory** %MEMORY

  br label %block_.L_423fb9

  ; Code: .L_423fa2:	 RIP: 423fa2	 Bytes: 0
block_.L_423fa2:

  ; Code: movq $0x57bbf0, %rdi	 RIP: 423fa2	 Bytes: 10
  %loadMem_423fa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423fa2 = call %struct.Memory* @routine_movq__0x57bbf0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423fa2)
  store %struct.Memory* %call_423fa2, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 423fac	 Bytes: 2
  %loadMem_423fac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423fac = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423fac)
  store %struct.Memory* %call_423fac, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 423fae	 Bytes: 5
  %loadMem1_423fae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423fae = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423fae, i64 187906, i64 5, i64 5)
  store %struct.Memory* %call1_423fae, %struct.Memory** %MEMORY

  %loadMem2_423fae = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423fae = load i64, i64* %3
  %call2_423fae = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_423fae, %struct.Memory* %loadMem2_423fae)
  store %struct.Memory* %call2_423fae, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6c8(%rbp)	 RIP: 423fb3	 Bytes: 6
  %loadMem_423fb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423fb3 = call %struct.Memory* @routine_movl__eax__MINUS0x6c8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423fb3)
  store %struct.Memory* %call_423fb3, %struct.Memory** %MEMORY

  ; Code: .L_423fb9:	 RIP: 423fb9	 Bytes: 0
  br label %block_.L_423fb9
block_.L_423fb9:

  ; Code: leaq -0x24(%rbp), %rdx	 RIP: 423fb9	 Bytes: 4
  %loadMem_423fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423fb9 = call %struct.Memory* @routine_leaq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423fb9)
  store %struct.Memory* %call_423fb9, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %edi	 RIP: 423fbd	 Bytes: 3
  %loadMem_423fbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423fbd = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423fbd)
  store %struct.Memory* %call_423fbd, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 423fc0	 Bytes: 3
  %loadMem_423fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423fc0 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423fc0)
  store %struct.Memory* %call_423fc0, %struct.Memory** %MEMORY

  ; Code: callq .filllib_confirm_safety	 RIP: 423fc3	 Bytes: 5
  %loadMem1_423fc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423fc3 = call %struct.Memory* @routine_callq_.filllib_confirm_safety(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423fc3, i64 1789, i64 5, i64 5)
  store %struct.Memory* %call1_423fc3, %struct.Memory** %MEMORY

  %loadMem2_423fc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423fc3 = load i64, i64* %3
  %call2_423fc3 = call %struct.Memory* @sub_4246c0.filllib_confirm_safety(%struct.State* %0, i64  %loadPC_423fc3, %struct.Memory* %loadMem2_423fc3)
  store %struct.Memory* %call2_423fc3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 423fc8	 Bytes: 3
  %loadMem_423fc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423fc8 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423fc8)
  store %struct.Memory* %call_423fc8, %struct.Memory** %MEMORY

  ; Code: jne .L_424007	 RIP: 423fcb	 Bytes: 6
  %loadMem_423fcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423fcb = call %struct.Memory* @routine_jne_.L_424007(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423fcb, i8* %BRANCH_TAKEN, i64 60, i64 6, i64 6)
  store %struct.Memory* %call_423fcb, %struct.Memory** %MEMORY

  %loadBr_423fcb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423fcb = icmp eq i8 %loadBr_423fcb, 1
  br i1 %cmpBr_423fcb, label %block_.L_424007, label %block_423fd1

block_423fd1:
  ; Code: movl 0xab0f24, %eax	 RIP: 423fd1	 Bytes: 7
  %loadMem_423fd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423fd1 = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423fd1)
  store %struct.Memory* %call_423fd1, %struct.Memory** %MEMORY

  ; Code: andl $0x4000, %eax	 RIP: 423fd8	 Bytes: 5
  %loadMem_423fd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423fd8 = call %struct.Memory* @routine_andl__0x4000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423fd8)
  store %struct.Memory* %call_423fd8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 423fdd	 Bytes: 3
  %loadMem_423fdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423fdd = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423fdd)
  store %struct.Memory* %call_423fdd, %struct.Memory** %MEMORY

  ; Code: jne .L_423feb	 RIP: 423fe0	 Bytes: 6
  %loadMem_423fe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423fe0 = call %struct.Memory* @routine_jne_.L_423feb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423fe0, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_423fe0, %struct.Memory** %MEMORY

  %loadBr_423fe0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_423fe0 = icmp eq i8 %loadBr_423fe0, 1
  br i1 %cmpBr_423fe0, label %block_.L_423feb, label %block_423fe6

block_423fe6:
  ; Code: jmpq .L_424002	 RIP: 423fe6	 Bytes: 5
  %loadMem_423fe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423fe6 = call %struct.Memory* @routine_jmpq_.L_424002(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423fe6, i64 28, i64 5)
  store %struct.Memory* %call_423fe6, %struct.Memory** %MEMORY

  br label %block_.L_424002

  ; Code: .L_423feb:	 RIP: 423feb	 Bytes: 0
block_.L_423feb:

  ; Code: movq $0x57bb09, %rdi	 RIP: 423feb	 Bytes: 10
  %loadMem_423feb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423feb = call %struct.Memory* @routine_movq__0x57bb09___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423feb)
  store %struct.Memory* %call_423feb, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 423ff5	 Bytes: 2
  %loadMem_423ff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ff5 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ff5)
  store %struct.Memory* %call_423ff5, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 423ff7	 Bytes: 5
  %loadMem1_423ff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_423ff7 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_423ff7, i64 187833, i64 5, i64 5)
  store %struct.Memory* %call1_423ff7, %struct.Memory** %MEMORY

  %loadMem2_423ff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_423ff7 = load i64, i64* %3
  %call2_423ff7 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_423ff7, %struct.Memory* %loadMem2_423ff7)
  store %struct.Memory* %call2_423ff7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6cc(%rbp)	 RIP: 423ffc	 Bytes: 6
  %loadMem_423ffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_423ffc = call %struct.Memory* @routine_movl__eax__MINUS0x6cc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_423ffc)
  store %struct.Memory* %call_423ffc, %struct.Memory** %MEMORY

  ; Code: .L_424002:	 RIP: 424002	 Bytes: 0
  br label %block_.L_424002
block_.L_424002:

  ; Code: jmpq .L_42440c	 RIP: 424002	 Bytes: 5
  %loadMem_424002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424002 = call %struct.Memory* @routine_jmpq_.L_42440c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424002, i64 1034, i64 5)
  store %struct.Memory* %call_424002, %struct.Memory** %MEMORY

  br label %block_.L_42440c

  ; Code: .L_424007:	 RIP: 424007	 Bytes: 0
block_.L_424007:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 424007	 Bytes: 3
  %loadMem_424007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424007 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424007)
  store %struct.Memory* %call_424007, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 42400a	 Bytes: 4
  %loadMem_42400a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42400a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42400a)
  store %struct.Memory* %call_42400a, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 42400e	 Bytes: 2
  %loadMem_42400e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42400e = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42400e)
  store %struct.Memory* %call_42400e, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 424010	 Bytes: 7
  %loadMem_424010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424010 = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424010)
  store %struct.Memory* %call_424010, %struct.Memory** %MEMORY

  ; Code: jmpq .L_424452	 RIP: 424017	 Bytes: 5
  %loadMem_424017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424017 = call %struct.Memory* @routine_jmpq_.L_424452(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424017, i64 1083, i64 5)
  store %struct.Memory* %call_424017, %struct.Memory** %MEMORY

  br label %block_.L_424452

  ; Code: .L_42401c:	 RIP: 42401c	 Bytes: 0
block_.L_42401c:

  ; Code: jmpq .L_424021	 RIP: 42401c	 Bytes: 5
  %loadMem_42401c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42401c = call %struct.Memory* @routine_jmpq_.L_424021(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42401c, i64 5, i64 5)
  store %struct.Memory* %call_42401c, %struct.Memory** %MEMORY

  br label %block_.L_424021

  ; Code: .L_424021:	 RIP: 424021	 Bytes: 0
block_.L_424021:

  ; Code: jmpq .L_424407	 RIP: 424021	 Bytes: 5
  %loadMem_424021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424021 = call %struct.Memory* @routine_jmpq_.L_424407(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424021, i64 998, i64 5)
  store %struct.Memory* %call_424021, %struct.Memory** %MEMORY

  br label %block_.L_424407

  ; Code: .L_424026:	 RIP: 424026	 Bytes: 0
block_.L_424026:

  ; Code: movl 0xab0f24, %eax	 RIP: 424026	 Bytes: 7
  %loadMem_424026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424026 = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424026)
  store %struct.Memory* %call_424026, %struct.Memory** %MEMORY

  ; Code: andl $0x4000, %eax	 RIP: 42402d	 Bytes: 5
  %loadMem_42402d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42402d = call %struct.Memory* @routine_andl__0x4000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42402d)
  store %struct.Memory* %call_42402d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 424032	 Bytes: 3
  %loadMem_424032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424032 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424032)
  store %struct.Memory* %call_424032, %struct.Memory** %MEMORY

  ; Code: jne .L_424040	 RIP: 424035	 Bytes: 6
  %loadMem_424035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424035 = call %struct.Memory* @routine_jne_.L_424040(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424035, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_424035, %struct.Memory** %MEMORY

  %loadBr_424035 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424035 = icmp eq i8 %loadBr_424035, 1
  br i1 %cmpBr_424035, label %block_.L_424040, label %block_42403b

block_42403b:
  ; Code: jmpq .L_424057	 RIP: 42403b	 Bytes: 5
  %loadMem_42403b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42403b = call %struct.Memory* @routine_jmpq_.L_424057(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42403b, i64 28, i64 5)
  store %struct.Memory* %call_42403b, %struct.Memory** %MEMORY

  br label %block_.L_424057

  ; Code: .L_424040:	 RIP: 424040	 Bytes: 0
block_.L_424040:

  ; Code: movq $0x57bc24, %rdi	 RIP: 424040	 Bytes: 10
  %loadMem_424040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424040 = call %struct.Memory* @routine_movq__0x57bc24___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424040)
  store %struct.Memory* %call_424040, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42404a	 Bytes: 2
  %loadMem_42404a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42404a = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42404a)
  store %struct.Memory* %call_42404a, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 42404c	 Bytes: 5
  %loadMem1_42404c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42404c = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42404c, i64 187748, i64 5, i64 5)
  store %struct.Memory* %call1_42404c, %struct.Memory** %MEMORY

  %loadMem2_42404c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42404c = load i64, i64* %3
  %call2_42404c = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_42404c, %struct.Memory* %loadMem2_42404c)
  store %struct.Memory* %call2_42404c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6d0(%rbp)	 RIP: 424051	 Bytes: 6
  %loadMem_424051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424051 = call %struct.Memory* @routine_movl__eax__MINUS0x6d0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424051)
  store %struct.Memory* %call_424051, %struct.Memory** %MEMORY

  ; Code: .L_424057:	 RIP: 424057	 Bytes: 0
  br label %block_.L_424057
block_.L_424057:

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 424057	 Bytes: 7
  %loadMem_424057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424057 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424057)
  store %struct.Memory* %call_424057, %struct.Memory** %MEMORY

  ; Code: .L_42405e:	 RIP: 42405e	 Bytes: 0
  br label %block_.L_42405e
block_.L_42405e:

  ; Code: cmpl $0x4, -0x18(%rbp)	 RIP: 42405e	 Bytes: 4
  %loadMem_42405e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42405e = call %struct.Memory* @routine_cmpl__0x4__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42405e)
  store %struct.Memory* %call_42405e, %struct.Memory** %MEMORY

  ; Code: jge .L_424140	 RIP: 424062	 Bytes: 6
  %loadMem_424062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424062 = call %struct.Memory* @routine_jge_.L_424140(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424062, i8* %BRANCH_TAKEN, i64 222, i64 6, i64 6)
  store %struct.Memory* %call_424062, %struct.Memory** %MEMORY

  %loadBr_424062 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424062 = icmp eq i8 %loadBr_424062, 1
  br i1 %cmpBr_424062, label %block_.L_424140, label %block_424068

block_424068:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 424068	 Bytes: 4
  %loadMem_424068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424068 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424068)
  store %struct.Memory* %call_424068, %struct.Memory** %MEMORY

  ; Code: movl 0x7ae1b0(,%rax,4), %ecx	 RIP: 42406c	 Bytes: 7
  %loadMem_42406c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42406c = call %struct.Memory* @routine_movl_0x7ae1b0___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42406c)
  store %struct.Memory* %call_42406c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x688(%rbp)	 RIP: 424073	 Bytes: 6
  %loadMem_424073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424073 = call %struct.Memory* @routine_movl__ecx__MINUS0x688__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424073)
  store %struct.Memory* %call_424073, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 424079	 Bytes: 3
  %loadMem_424079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424079 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424079)
  store %struct.Memory* %call_424079, %struct.Memory** %MEMORY

  ; Code: addl -0x688(%rbp), %ecx	 RIP: 42407c	 Bytes: 6
  %loadMem_42407c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42407c = call %struct.Memory* @routine_addl_MINUS0x688__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42407c)
  store %struct.Memory* %call_42407c, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 424082	 Bytes: 3
  %loadMem_424082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424082 = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424082)
  store %struct.Memory* %call_424082, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 424085	 Bytes: 8
  %loadMem_424085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424085 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424085)
  store %struct.Memory* %call_424085, %struct.Memory** %MEMORY

  ; Code: cmpl -0x20(%rbp), %ecx	 RIP: 42408d	 Bytes: 3
  %loadMem_42408d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42408d = call %struct.Memory* @routine_cmpl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42408d)
  store %struct.Memory* %call_42408d, %struct.Memory** %MEMORY

  ; Code: jne .L_42412d	 RIP: 424090	 Bytes: 6
  %loadMem_424090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424090 = call %struct.Memory* @routine_jne_.L_42412d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424090, i8* %BRANCH_TAKEN, i64 157, i64 6, i64 6)
  store %struct.Memory* %call_424090, %struct.Memory** %MEMORY

  %loadBr_424090 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424090 = icmp eq i8 %loadBr_424090, 1
  br i1 %cmpBr_424090, label %block_.L_42412d, label %block_424096

block_424096:
  ; Code: movq $0xb0eff0, %rax	 RIP: 424096	 Bytes: 10
  %loadMem_424096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424096 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424096)
  store %struct.Memory* %call_424096, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 4240a0	 Bytes: 3
  %loadMem_4240a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240a0 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240a0)
  store %struct.Memory* %call_4240a0, %struct.Memory** %MEMORY

  ; Code: addl -0x688(%rbp), %ecx	 RIP: 4240a3	 Bytes: 6
  %loadMem_4240a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240a3 = call %struct.Memory* @routine_addl_MINUS0x688__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240a3)
  store %struct.Memory* %call_4240a3, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4240a9	 Bytes: 3
  %loadMem_4240a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240a9 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240a9)
  store %struct.Memory* %call_4240a9, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rdx, %rdx	 RIP: 4240ac	 Bytes: 7
  %loadMem_4240ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240ac = call %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240ac)
  store %struct.Memory* %call_4240ac, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4240b3	 Bytes: 3
  %loadMem_4240b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240b3 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240b3)
  store %struct.Memory* %call_4240b3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, 0x64(%rax)	 RIP: 4240b6	 Bytes: 4
  %loadMem_4240b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240b6 = call %struct.Memory* @routine_cmpl__0x5__0x64__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240b6)
  store %struct.Memory* %call_4240b6, %struct.Memory** %MEMORY

  ; Code: jne .L_42412d	 RIP: 4240ba	 Bytes: 6
  %loadMem_4240ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240ba = call %struct.Memory* @routine_jne_.L_42412d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240ba, i8* %BRANCH_TAKEN, i64 115, i64 6, i64 6)
  store %struct.Memory* %call_4240ba, %struct.Memory** %MEMORY

  %loadBr_4240ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4240ba = icmp eq i8 %loadBr_4240ba, 1
  br i1 %cmpBr_4240ba, label %block_.L_42412d, label %block_4240c0

block_4240c0:
  ; Code: movq $0xb0eff0, %rax	 RIP: 4240c0	 Bytes: 10
  %loadMem_4240c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240c0 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240c0)
  store %struct.Memory* %call_4240c0, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 4240ca	 Bytes: 3
  %loadMem_4240ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240ca = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240ca)
  store %struct.Memory* %call_4240ca, %struct.Memory** %MEMORY

  ; Code: addl -0x688(%rbp), %ecx	 RIP: 4240cd	 Bytes: 6
  %loadMem_4240cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240cd = call %struct.Memory* @routine_addl_MINUS0x688__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240cd)
  store %struct.Memory* %call_4240cd, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4240d3	 Bytes: 3
  %loadMem_4240d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240d3 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240d3)
  store %struct.Memory* %call_4240d3, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rdx, %rdx	 RIP: 4240d6	 Bytes: 7
  %loadMem_4240d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240d6 = call %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240d6)
  store %struct.Memory* %call_4240d6, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4240dd	 Bytes: 3
  %loadMem_4240dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240dd = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240dd)
  store %struct.Memory* %call_4240dd, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %ecx	 RIP: 4240e0	 Bytes: 3
  %loadMem_4240e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240e0 = call %struct.Memory* @routine_movl_0x3c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240e0)
  store %struct.Memory* %call_4240e0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4240e3	 Bytes: 4
  %loadMem_4240e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240e3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240e3)
  store %struct.Memory* %call_4240e3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 4240e7	 Bytes: 2
  %loadMem_4240e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240e7 = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240e7)
  store %struct.Memory* %call_4240e7, %struct.Memory** %MEMORY

  ; Code: movl 0xab0f24, %ecx	 RIP: 4240e9	 Bytes: 7
  %loadMem_4240e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240e9 = call %struct.Memory* @routine_movl_0xab0f24___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240e9)
  store %struct.Memory* %call_4240e9, %struct.Memory** %MEMORY

  ; Code: andl $0x4000, %ecx	 RIP: 4240f0	 Bytes: 6
  %loadMem_4240f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240f0 = call %struct.Memory* @routine_andl__0x4000___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240f0)
  store %struct.Memory* %call_4240f0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 4240f6	 Bytes: 3
  %loadMem_4240f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240f6 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240f6)
  store %struct.Memory* %call_4240f6, %struct.Memory** %MEMORY

  ; Code: jne .L_424104	 RIP: 4240f9	 Bytes: 6
  %loadMem_4240f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240f9 = call %struct.Memory* @routine_jne_.L_424104(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240f9, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4240f9, %struct.Memory** %MEMORY

  %loadBr_4240f9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4240f9 = icmp eq i8 %loadBr_4240f9, 1
  br i1 %cmpBr_4240f9, label %block_.L_424104, label %block_4240ff

block_4240ff:
  ; Code: jmpq .L_424121	 RIP: 4240ff	 Bytes: 5
  %loadMem_4240ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4240ff = call %struct.Memory* @routine_jmpq_.L_424121(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4240ff, i64 34, i64 5)
  store %struct.Memory* %call_4240ff, %struct.Memory** %MEMORY

  br label %block_.L_424121

  ; Code: .L_424104:	 RIP: 424104	 Bytes: 0
block_.L_424104:

  ; Code: movq $0x57bc51, %rdi	 RIP: 424104	 Bytes: 10
  %loadMem_424104 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424104 = call %struct.Memory* @routine_movq__0x57bc51___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424104)
  store %struct.Memory* %call_424104, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 42410e	 Bytes: 4
  %loadMem_42410e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42410e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42410e)
  store %struct.Memory* %call_42410e, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %esi	 RIP: 424112	 Bytes: 2
  %loadMem_424112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424112 = call %struct.Memory* @routine_movl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424112)
  store %struct.Memory* %call_424112, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 424114	 Bytes: 2
  %loadMem_424114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424114 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424114)
  store %struct.Memory* %call_424114, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 424116	 Bytes: 5
  %loadMem1_424116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424116 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424116, i64 187546, i64 5, i64 5)
  store %struct.Memory* %call1_424116, %struct.Memory** %MEMORY

  %loadMem2_424116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424116 = load i64, i64* %3
  %call2_424116 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_424116, %struct.Memory* %loadMem2_424116)
  store %struct.Memory* %call2_424116, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6d4(%rbp)	 RIP: 42411b	 Bytes: 6
  %loadMem_42411b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42411b = call %struct.Memory* @routine_movl__eax__MINUS0x6d4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42411b)
  store %struct.Memory* %call_42411b, %struct.Memory** %MEMORY

  ; Code: .L_424121:	 RIP: 424121	 Bytes: 0
  br label %block_.L_424121
block_.L_424121:

  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 424121	 Bytes: 7
  %loadMem_424121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424121 = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424121)
  store %struct.Memory* %call_424121, %struct.Memory** %MEMORY

  ; Code: jmpq .L_424452	 RIP: 424128	 Bytes: 5
  %loadMem_424128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424128 = call %struct.Memory* @routine_jmpq_.L_424452(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424128, i64 810, i64 5)
  store %struct.Memory* %call_424128, %struct.Memory** %MEMORY

  br label %block_.L_424452

  ; Code: .L_42412d:	 RIP: 42412d	 Bytes: 0
block_.L_42412d:

  ; Code: jmpq .L_424132	 RIP: 42412d	 Bytes: 5
  %loadMem_42412d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42412d = call %struct.Memory* @routine_jmpq_.L_424132(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42412d, i64 5, i64 5)
  store %struct.Memory* %call_42412d, %struct.Memory** %MEMORY

  br label %block_.L_424132

  ; Code: .L_424132:	 RIP: 424132	 Bytes: 0
block_.L_424132:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 424132	 Bytes: 3
  %loadMem_424132 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424132 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424132)
  store %struct.Memory* %call_424132, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 424135	 Bytes: 3
  %loadMem_424135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424135 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424135)
  store %struct.Memory* %call_424135, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 424138	 Bytes: 3
  %loadMem_424138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424138 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424138)
  store %struct.Memory* %call_424138, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42405e	 RIP: 42413b	 Bytes: 5
  %loadMem_42413b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42413b = call %struct.Memory* @routine_jmpq_.L_42405e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42413b, i64 -221, i64 5)
  store %struct.Memory* %call_42413b, %struct.Memory** %MEMORY

  br label %block_.L_42405e

  ; Code: .L_424140:	 RIP: 424140	 Bytes: 0
block_.L_424140:

  ; Code: movl 0xab0f24, %eax	 RIP: 424140	 Bytes: 7
  %loadMem_424140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424140 = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424140)
  store %struct.Memory* %call_424140, %struct.Memory** %MEMORY

  ; Code: andl $0x4000, %eax	 RIP: 424147	 Bytes: 5
  %loadMem_424147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424147 = call %struct.Memory* @routine_andl__0x4000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424147)
  store %struct.Memory* %call_424147, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 42414c	 Bytes: 3
  %loadMem_42414c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42414c = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42414c)
  store %struct.Memory* %call_42414c, %struct.Memory** %MEMORY

  ; Code: jne .L_42415a	 RIP: 42414f	 Bytes: 6
  %loadMem_42414f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42414f = call %struct.Memory* @routine_jne_.L_42415a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42414f, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_42414f, %struct.Memory** %MEMORY

  %loadBr_42414f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42414f = icmp eq i8 %loadBr_42414f, 1
  br i1 %cmpBr_42414f, label %block_.L_42415a, label %block_424155

block_424155:
  ; Code: jmpq .L_424171	 RIP: 424155	 Bytes: 5
  %loadMem_424155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424155 = call %struct.Memory* @routine_jmpq_.L_424171(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424155, i64 28, i64 5)
  store %struct.Memory* %call_424155, %struct.Memory** %MEMORY

  br label %block_.L_424171

  ; Code: .L_42415a:	 RIP: 42415a	 Bytes: 0
block_.L_42415a:

  ; Code: movq $0x57bc69, %rdi	 RIP: 42415a	 Bytes: 10
  %loadMem_42415a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42415a = call %struct.Memory* @routine_movq__0x57bc69___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42415a)
  store %struct.Memory* %call_42415a, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 424164	 Bytes: 2
  %loadMem_424164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424164 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424164)
  store %struct.Memory* %call_424164, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 424166	 Bytes: 5
  %loadMem1_424166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424166 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424166, i64 187466, i64 5, i64 5)
  store %struct.Memory* %call1_424166, %struct.Memory** %MEMORY

  %loadMem2_424166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424166 = load i64, i64* %3
  %call2_424166 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_424166, %struct.Memory* %loadMem2_424166)
  store %struct.Memory* %call2_424166, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6d8(%rbp)	 RIP: 42416b	 Bytes: 6
  %loadMem_42416b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42416b = call %struct.Memory* @routine_movl__eax__MINUS0x6d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42416b)
  store %struct.Memory* %call_42416b, %struct.Memory** %MEMORY

  ; Code: .L_424171:	 RIP: 424171	 Bytes: 0
  br label %block_.L_424171
block_.L_424171:

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 424171	 Bytes: 7
  %loadMem_424171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424171 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424171)
  store %struct.Memory* %call_424171, %struct.Memory** %MEMORY

  ; Code: .L_424178:	 RIP: 424178	 Bytes: 0
  br label %block_.L_424178
block_.L_424178:

  ; Code: cmpl $0x4, -0x18(%rbp)	 RIP: 424178	 Bytes: 4
  %loadMem_424178 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424178 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424178)
  store %struct.Memory* %call_424178, %struct.Memory** %MEMORY

  ; Code: jge .L_42428e	 RIP: 42417c	 Bytes: 6
  %loadMem_42417c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42417c = call %struct.Memory* @routine_jge_.L_42428e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42417c, i8* %BRANCH_TAKEN, i64 274, i64 6, i64 6)
  store %struct.Memory* %call_42417c, %struct.Memory** %MEMORY

  %loadBr_42417c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42417c = icmp eq i8 %loadBr_42417c, 1
  br i1 %cmpBr_42417c, label %block_.L_42428e, label %block_424182

block_424182:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 424182	 Bytes: 4
  %loadMem_424182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424182 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424182)
  store %struct.Memory* %call_424182, %struct.Memory** %MEMORY

  ; Code: movl 0x7ae1b0(,%rax,4), %ecx	 RIP: 424186	 Bytes: 7
  %loadMem_424186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424186 = call %struct.Memory* @routine_movl_0x7ae1b0___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424186)
  store %struct.Memory* %call_424186, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x68c(%rbp)	 RIP: 42418d	 Bytes: 6
  %loadMem_42418d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42418d = call %struct.Memory* @routine_movl__ecx__MINUS0x68c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42418d)
  store %struct.Memory* %call_42418d, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 424193	 Bytes: 3
  %loadMem_424193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424193 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424193)
  store %struct.Memory* %call_424193, %struct.Memory** %MEMORY

  ; Code: addl -0x68c(%rbp), %ecx	 RIP: 424196	 Bytes: 6
  %loadMem_424196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424196 = call %struct.Memory* @routine_addl_MINUS0x68c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424196)
  store %struct.Memory* %call_424196, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 42419c	 Bytes: 3
  %loadMem_42419c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42419c = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42419c)
  store %struct.Memory* %call_42419c, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 42419f	 Bytes: 8
  %loadMem_42419f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42419f = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42419f)
  store %struct.Memory* %call_42419f, %struct.Memory** %MEMORY

  ; Code: cmpl -0x20(%rbp), %ecx	 RIP: 4241a7	 Bytes: 3
  %loadMem_4241a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241a7 = call %struct.Memory* @routine_cmpl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241a7)
  store %struct.Memory* %call_4241a7, %struct.Memory** %MEMORY

  ; Code: jne .L_42427b	 RIP: 4241aa	 Bytes: 6
  %loadMem_4241aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241aa = call %struct.Memory* @routine_jne_.L_42427b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241aa, i8* %BRANCH_TAKEN, i64 209, i64 6, i64 6)
  store %struct.Memory* %call_4241aa, %struct.Memory** %MEMORY

  %loadBr_4241aa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4241aa = icmp eq i8 %loadBr_4241aa, 1
  br i1 %cmpBr_4241aa, label %block_.L_42427b, label %block_4241b0

block_4241b0:
  ; Code: movq $0xb0eff0, %rax	 RIP: 4241b0	 Bytes: 10
  %loadMem_4241b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241b0 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241b0)
  store %struct.Memory* %call_4241b0, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 4241ba	 Bytes: 3
  %loadMem_4241ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241ba = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241ba)
  store %struct.Memory* %call_4241ba, %struct.Memory** %MEMORY

  ; Code: addl -0x68c(%rbp), %ecx	 RIP: 4241bd	 Bytes: 6
  %loadMem_4241bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241bd = call %struct.Memory* @routine_addl_MINUS0x68c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241bd)
  store %struct.Memory* %call_4241bd, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4241c3	 Bytes: 3
  %loadMem_4241c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241c3 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241c3)
  store %struct.Memory* %call_4241c3, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rdx, %rdx	 RIP: 4241c6	 Bytes: 7
  %loadMem_4241c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241c6 = call %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241c6)
  store %struct.Memory* %call_4241c6, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4241cd	 Bytes: 3
  %loadMem_4241cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241cd = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241cd)
  store %struct.Memory* %call_4241cd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x64(%rax)	 RIP: 4241d0	 Bytes: 4
  %loadMem_4241d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241d0 = call %struct.Memory* @routine_cmpl__0x0__0x64__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241d0)
  store %struct.Memory* %call_4241d0, %struct.Memory** %MEMORY

  ; Code: je .L_42427b	 RIP: 4241d4	 Bytes: 6
  %loadMem_4241d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241d4 = call %struct.Memory* @routine_je_.L_42427b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241d4, i8* %BRANCH_TAKEN, i64 167, i64 6, i64 6)
  store %struct.Memory* %call_4241d4, %struct.Memory** %MEMORY

  %loadBr_4241d4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4241d4 = icmp eq i8 %loadBr_4241d4, 1
  br i1 %cmpBr_4241d4, label %block_.L_42427b, label %block_4241da

block_4241da:
  ; Code: movq $0xb0eff0, %rax	 RIP: 4241da	 Bytes: 10
  %loadMem_4241da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241da = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241da)
  store %struct.Memory* %call_4241da, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 4241e4	 Bytes: 3
  %loadMem_4241e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241e4 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241e4)
  store %struct.Memory* %call_4241e4, %struct.Memory** %MEMORY

  ; Code: addl -0x68c(%rbp), %ecx	 RIP: 4241e7	 Bytes: 6
  %loadMem_4241e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241e7 = call %struct.Memory* @routine_addl_MINUS0x68c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241e7)
  store %struct.Memory* %call_4241e7, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4241ed	 Bytes: 3
  %loadMem_4241ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241ed = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241ed)
  store %struct.Memory* %call_4241ed, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rdx, %rdx	 RIP: 4241f0	 Bytes: 7
  %loadMem_4241f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241f0 = call %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241f0)
  store %struct.Memory* %call_4241f0, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4241f7	 Bytes: 3
  %loadMem_4241f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241f7 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241f7)
  store %struct.Memory* %call_4241f7, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %edi	 RIP: 4241fa	 Bytes: 3
  %loadMem_4241fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241fa = call %struct.Memory* @routine_movl_0x3c__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241fa)
  store %struct.Memory* %call_4241fa, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 4241fd	 Bytes: 3
  %loadMem_4241fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4241fd = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4241fd)
  store %struct.Memory* %call_4241fd, %struct.Memory** %MEMORY

  ; Code: callq .is_legal	 RIP: 424200	 Bytes: 5
  %loadMem1_424200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424200 = call %struct.Memory* @routine_callq_.is_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424200, i64 -87856, i64 5, i64 5)
  store %struct.Memory* %call1_424200, %struct.Memory** %MEMORY

  %loadMem2_424200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424200 = load i64, i64* %3
  %call2_424200 = call %struct.Memory* @sub_40ead0.is_legal(%struct.State* %0, i64  %loadPC_424200, %struct.Memory* %loadMem2_424200)
  store %struct.Memory* %call2_424200, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 424205	 Bytes: 3
  %loadMem_424205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424205 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424205)
  store %struct.Memory* %call_424205, %struct.Memory** %MEMORY

  ; Code: je .L_42427b	 RIP: 424208	 Bytes: 6
  %loadMem_424208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424208 = call %struct.Memory* @routine_je_.L_42427b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424208, i8* %BRANCH_TAKEN, i64 115, i64 6, i64 6)
  store %struct.Memory* %call_424208, %struct.Memory** %MEMORY

  %loadBr_424208 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424208 = icmp eq i8 %loadBr_424208, 1
  br i1 %cmpBr_424208, label %block_.L_42427b, label %block_42420e

block_42420e:
  ; Code: movq $0xb0eff0, %rax	 RIP: 42420e	 Bytes: 10
  %loadMem_42420e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42420e = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42420e)
  store %struct.Memory* %call_42420e, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 424218	 Bytes: 3
  %loadMem_424218 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424218 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424218)
  store %struct.Memory* %call_424218, %struct.Memory** %MEMORY

  ; Code: addl -0x68c(%rbp), %ecx	 RIP: 42421b	 Bytes: 6
  %loadMem_42421b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42421b = call %struct.Memory* @routine_addl_MINUS0x68c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42421b)
  store %struct.Memory* %call_42421b, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 424221	 Bytes: 3
  %loadMem_424221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424221 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424221)
  store %struct.Memory* %call_424221, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rdx, %rdx	 RIP: 424224	 Bytes: 7
  %loadMem_424224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424224 = call %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424224)
  store %struct.Memory* %call_424224, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 42422b	 Bytes: 3
  %loadMem_42422b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42422b = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42422b)
  store %struct.Memory* %call_42422b, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %ecx	 RIP: 42422e	 Bytes: 3
  %loadMem_42422e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42422e = call %struct.Memory* @routine_movl_0x3c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42422e)
  store %struct.Memory* %call_42422e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 424231	 Bytes: 4
  %loadMem_424231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424231 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424231)
  store %struct.Memory* %call_424231, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 424235	 Bytes: 2
  %loadMem_424235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424235 = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424235)
  store %struct.Memory* %call_424235, %struct.Memory** %MEMORY

  ; Code: movl 0xab0f24, %ecx	 RIP: 424237	 Bytes: 7
  %loadMem_424237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424237 = call %struct.Memory* @routine_movl_0xab0f24___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424237)
  store %struct.Memory* %call_424237, %struct.Memory** %MEMORY

  ; Code: andl $0x4000, %ecx	 RIP: 42423e	 Bytes: 6
  %loadMem_42423e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42423e = call %struct.Memory* @routine_andl__0x4000___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42423e)
  store %struct.Memory* %call_42423e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 424244	 Bytes: 3
  %loadMem_424244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424244 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424244)
  store %struct.Memory* %call_424244, %struct.Memory** %MEMORY

  ; Code: jne .L_424252	 RIP: 424247	 Bytes: 6
  %loadMem_424247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424247 = call %struct.Memory* @routine_jne_.L_424252(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424247, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_424247, %struct.Memory** %MEMORY

  %loadBr_424247 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424247 = icmp eq i8 %loadBr_424247, 1
  br i1 %cmpBr_424247, label %block_.L_424252, label %block_42424d

block_42424d:
  ; Code: jmpq .L_42426f	 RIP: 42424d	 Bytes: 5
  %loadMem_42424d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42424d = call %struct.Memory* @routine_jmpq_.L_42426f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42424d, i64 34, i64 5)
  store %struct.Memory* %call_42424d, %struct.Memory** %MEMORY

  br label %block_.L_42426f

  ; Code: .L_424252:	 RIP: 424252	 Bytes: 0
block_.L_424252:

  ; Code: movq $0x57bc51, %rdi	 RIP: 424252	 Bytes: 10
  %loadMem_424252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424252 = call %struct.Memory* @routine_movq__0x57bc51___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424252)
  store %struct.Memory* %call_424252, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 42425c	 Bytes: 4
  %loadMem_42425c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42425c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42425c)
  store %struct.Memory* %call_42425c, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %esi	 RIP: 424260	 Bytes: 2
  %loadMem_424260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424260 = call %struct.Memory* @routine_movl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424260)
  store %struct.Memory* %call_424260, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 424262	 Bytes: 2
  %loadMem_424262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424262 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424262)
  store %struct.Memory* %call_424262, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 424264	 Bytes: 5
  %loadMem1_424264 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424264 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424264, i64 187212, i64 5, i64 5)
  store %struct.Memory* %call1_424264, %struct.Memory** %MEMORY

  %loadMem2_424264 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424264 = load i64, i64* %3
  %call2_424264 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_424264, %struct.Memory* %loadMem2_424264)
  store %struct.Memory* %call2_424264, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6dc(%rbp)	 RIP: 424269	 Bytes: 6
  %loadMem_424269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424269 = call %struct.Memory* @routine_movl__eax__MINUS0x6dc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424269)
  store %struct.Memory* %call_424269, %struct.Memory** %MEMORY

  ; Code: .L_42426f:	 RIP: 42426f	 Bytes: 0
  br label %block_.L_42426f
block_.L_42426f:

  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 42426f	 Bytes: 7
  %loadMem_42426f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42426f = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42426f)
  store %struct.Memory* %call_42426f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_424452	 RIP: 424276	 Bytes: 5
  %loadMem_424276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424276 = call %struct.Memory* @routine_jmpq_.L_424452(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424276, i64 476, i64 5)
  store %struct.Memory* %call_424276, %struct.Memory** %MEMORY

  br label %block_.L_424452

  ; Code: .L_42427b:	 RIP: 42427b	 Bytes: 0
block_.L_42427b:

  ; Code: jmpq .L_424280	 RIP: 42427b	 Bytes: 5
  %loadMem_42427b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42427b = call %struct.Memory* @routine_jmpq_.L_424280(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42427b, i64 5, i64 5)
  store %struct.Memory* %call_42427b, %struct.Memory** %MEMORY

  br label %block_.L_424280

  ; Code: .L_424280:	 RIP: 424280	 Bytes: 0
block_.L_424280:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 424280	 Bytes: 3
  %loadMem_424280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424280 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424280)
  store %struct.Memory* %call_424280, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 424283	 Bytes: 3
  %loadMem_424283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424283 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424283)
  store %struct.Memory* %call_424283, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 424286	 Bytes: 3
  %loadMem_424286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424286 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424286)
  store %struct.Memory* %call_424286, %struct.Memory** %MEMORY

  ; Code: jmpq .L_424178	 RIP: 424289	 Bytes: 5
  %loadMem_424289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424289 = call %struct.Memory* @routine_jmpq_.L_424178(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424289, i64 -273, i64 5)
  store %struct.Memory* %call_424289, %struct.Memory** %MEMORY

  br label %block_.L_424178

  ; Code: .L_42428e:	 RIP: 42428e	 Bytes: 0
block_.L_42428e:

  ; Code: movl 0xab0f24, %eax	 RIP: 42428e	 Bytes: 7
  %loadMem_42428e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42428e = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42428e)
  store %struct.Memory* %call_42428e, %struct.Memory** %MEMORY

  ; Code: andl $0x4000, %eax	 RIP: 424295	 Bytes: 5
  %loadMem_424295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424295 = call %struct.Memory* @routine_andl__0x4000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424295)
  store %struct.Memory* %call_424295, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 42429a	 Bytes: 3
  %loadMem_42429a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42429a = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42429a)
  store %struct.Memory* %call_42429a, %struct.Memory** %MEMORY

  ; Code: jne .L_4242a8	 RIP: 42429d	 Bytes: 6
  %loadMem_42429d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42429d = call %struct.Memory* @routine_jne_.L_4242a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42429d, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_42429d, %struct.Memory** %MEMORY

  %loadBr_42429d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42429d = icmp eq i8 %loadBr_42429d, 1
  br i1 %cmpBr_42429d, label %block_.L_4242a8, label %block_4242a3

block_4242a3:
  ; Code: jmpq .L_4242bf	 RIP: 4242a3	 Bytes: 5
  %loadMem_4242a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4242a3 = call %struct.Memory* @routine_jmpq_.L_4242bf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4242a3, i64 28, i64 5)
  store %struct.Memory* %call_4242a3, %struct.Memory** %MEMORY

  br label %block_.L_4242bf

  ; Code: .L_4242a8:	 RIP: 4242a8	 Bytes: 0
block_.L_4242a8:

  ; Code: movq $0x57bc9f, %rdi	 RIP: 4242a8	 Bytes: 10
  %loadMem_4242a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4242a8 = call %struct.Memory* @routine_movq__0x57bc9f___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4242a8)
  store %struct.Memory* %call_4242a8, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4242b2	 Bytes: 2
  %loadMem_4242b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4242b2 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4242b2)
  store %struct.Memory* %call_4242b2, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 4242b4	 Bytes: 5
  %loadMem1_4242b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4242b4 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4242b4, i64 187132, i64 5, i64 5)
  store %struct.Memory* %call1_4242b4, %struct.Memory** %MEMORY

  %loadMem2_4242b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4242b4 = load i64, i64* %3
  %call2_4242b4 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_4242b4, %struct.Memory* %loadMem2_4242b4)
  store %struct.Memory* %call2_4242b4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6e0(%rbp)	 RIP: 4242b9	 Bytes: 6
  %loadMem_4242b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4242b9 = call %struct.Memory* @routine_movl__eax__MINUS0x6e0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4242b9)
  store %struct.Memory* %call_4242b9, %struct.Memory** %MEMORY

  ; Code: .L_4242bf:	 RIP: 4242bf	 Bytes: 0
  br label %block_.L_4242bf
block_.L_4242bf:

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 4242bf	 Bytes: 7
  %loadMem_4242bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4242bf = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4242bf)
  store %struct.Memory* %call_4242bf, %struct.Memory** %MEMORY

  ; Code: .L_4242c6:	 RIP: 4242c6	 Bytes: 0
  br label %block_.L_4242c6
block_.L_4242c6:

  ; Code: cmpl $0x4, -0x18(%rbp)	 RIP: 4242c6	 Bytes: 4
  %loadMem_4242c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4242c6 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4242c6)
  store %struct.Memory* %call_4242c6, %struct.Memory** %MEMORY

  ; Code: jge .L_424402	 RIP: 4242ca	 Bytes: 6
  %loadMem_4242ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4242ca = call %struct.Memory* @routine_jge_.L_424402(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4242ca, i8* %BRANCH_TAKEN, i64 312, i64 6, i64 6)
  store %struct.Memory* %call_4242ca, %struct.Memory** %MEMORY

  %loadBr_4242ca = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4242ca = icmp eq i8 %loadBr_4242ca, 1
  br i1 %cmpBr_4242ca, label %block_.L_424402, label %block_4242d0

block_4242d0:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 4242d0	 Bytes: 4
  %loadMem_4242d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4242d0 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4242d0)
  store %struct.Memory* %call_4242d0, %struct.Memory** %MEMORY

  ; Code: movl 0x7ae1b0(,%rax,4), %ecx	 RIP: 4242d4	 Bytes: 7
  %loadMem_4242d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4242d4 = call %struct.Memory* @routine_movl_0x7ae1b0___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4242d4)
  store %struct.Memory* %call_4242d4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x690(%rbp)	 RIP: 4242db	 Bytes: 6
  %loadMem_4242db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4242db = call %struct.Memory* @routine_movl__ecx__MINUS0x690__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4242db)
  store %struct.Memory* %call_4242db, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 4242e1	 Bytes: 3
  %loadMem_4242e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4242e1 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4242e1)
  store %struct.Memory* %call_4242e1, %struct.Memory** %MEMORY

  ; Code: addl -0x690(%rbp), %ecx	 RIP: 4242e4	 Bytes: 6
  %loadMem_4242e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4242e4 = call %struct.Memory* @routine_addl_MINUS0x690__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4242e4)
  store %struct.Memory* %call_4242e4, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 4242ea	 Bytes: 3
  %loadMem_4242ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4242ea = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4242ea)
  store %struct.Memory* %call_4242ea, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 4242ed	 Bytes: 8
  %loadMem_4242ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4242ed = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4242ed)
  store %struct.Memory* %call_4242ed, %struct.Memory** %MEMORY

  ; Code: cmpl -0x20(%rbp), %ecx	 RIP: 4242f5	 Bytes: 3
  %loadMem_4242f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4242f5 = call %struct.Memory* @routine_cmpl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4242f5)
  store %struct.Memory* %call_4242f5, %struct.Memory** %MEMORY

  ; Code: jne .L_4243ef	 RIP: 4242f8	 Bytes: 6
  %loadMem_4242f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4242f8 = call %struct.Memory* @routine_jne_.L_4243ef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4242f8, i8* %BRANCH_TAKEN, i64 247, i64 6, i64 6)
  store %struct.Memory* %call_4242f8, %struct.Memory** %MEMORY

  %loadBr_4242f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4242f8 = icmp eq i8 %loadBr_4242f8, 1
  br i1 %cmpBr_4242f8, label %block_.L_4243ef, label %block_4242fe

block_4242fe:
  ; Code: movq $0xb0eff0, %rax	 RIP: 4242fe	 Bytes: 10
  %loadMem_4242fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4242fe = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4242fe)
  store %struct.Memory* %call_4242fe, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 424308	 Bytes: 3
  %loadMem_424308 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424308 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424308)
  store %struct.Memory* %call_424308, %struct.Memory** %MEMORY

  ; Code: addl -0x690(%rbp), %ecx	 RIP: 42430b	 Bytes: 6
  %loadMem_42430b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42430b = call %struct.Memory* @routine_addl_MINUS0x690__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42430b)
  store %struct.Memory* %call_42430b, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 424311	 Bytes: 3
  %loadMem_424311 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424311 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424311)
  store %struct.Memory* %call_424311, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rdx, %rdx	 RIP: 424314	 Bytes: 7
  %loadMem_424314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424314 = call %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424314)
  store %struct.Memory* %call_424314, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 42431b	 Bytes: 3
  %loadMem_42431b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42431b = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42431b)
  store %struct.Memory* %call_42431b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x64(%rax)	 RIP: 42431e	 Bytes: 4
  %loadMem_42431e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42431e = call %struct.Memory* @routine_cmpl__0x0__0x64__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42431e)
  store %struct.Memory* %call_42431e, %struct.Memory** %MEMORY

  ; Code: je .L_4243ef	 RIP: 424322	 Bytes: 6
  %loadMem_424322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424322 = call %struct.Memory* @routine_je_.L_4243ef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424322, i8* %BRANCH_TAKEN, i64 205, i64 6, i64 6)
  store %struct.Memory* %call_424322, %struct.Memory** %MEMORY

  %loadBr_424322 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424322 = icmp eq i8 %loadBr_424322, 1
  br i1 %cmpBr_424322, label %block_.L_4243ef, label %block_424328

block_424328:
  ; Code: movl $0x2, %esi	 RIP: 424328	 Bytes: 5
  %loadMem_424328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424328 = call %struct.Memory* @routine_movl__0x2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424328)
  store %struct.Memory* %call_424328, %struct.Memory** %MEMORY

  ; Code: leaq -0x698(%rbp), %rdx	 RIP: 42432d	 Bytes: 7
  %loadMem_42432d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42432d = call %struct.Memory* @routine_leaq_MINUS0x698__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42432d)
  store %struct.Memory* %call_42432d, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 424334	 Bytes: 3
  %loadMem_424334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424334 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424334)
  store %struct.Memory* %call_424334, %struct.Memory** %MEMORY

  ; Code: addl -0x690(%rbp), %eax	 RIP: 424337	 Bytes: 6
  %loadMem_424337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424337 = call %struct.Memory* @routine_addl_MINUS0x690__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424337)
  store %struct.Memory* %call_424337, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 42433d	 Bytes: 2
  %loadMem_42433d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42433d = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42433d)
  store %struct.Memory* %call_42433d, %struct.Memory** %MEMORY

  ; Code: callq .findlib	 RIP: 42433f	 Bytes: 5
  %loadMem1_42433f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42433f = call %struct.Memory* @routine_callq_.findlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42433f, i64 -84735, i64 5, i64 5)
  store %struct.Memory* %call1_42433f, %struct.Memory** %MEMORY

  %loadMem2_42433f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42433f = load i64, i64* %3
  %call2_42433f = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64  %loadPC_42433f, %struct.Memory* %loadMem2_42433f)
  store %struct.Memory* %call2_42433f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %eax	 RIP: 424344	 Bytes: 3
  %loadMem_424344 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424344 = call %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424344)
  store %struct.Memory* %call_424344, %struct.Memory** %MEMORY

  ; Code: jle .L_4243ea	 RIP: 424347	 Bytes: 6
  %loadMem_424347 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424347 = call %struct.Memory* @routine_jle_.L_4243ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424347, i8* %BRANCH_TAKEN, i64 163, i64 6, i64 6)
  store %struct.Memory* %call_424347, %struct.Memory** %MEMORY

  %loadBr_424347 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424347 = icmp eq i8 %loadBr_424347, 1
  br i1 %cmpBr_424347, label %block_.L_4243ea, label %block_42434d

block_42434d:
  ; Code: movl -0x698(%rbp), %edi	 RIP: 42434d	 Bytes: 6
  %loadMem_42434d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42434d = call %struct.Memory* @routine_movl_MINUS0x698__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42434d)
  store %struct.Memory* %call_42434d, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 424353	 Bytes: 3
  %loadMem_424353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424353 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424353)
  store %struct.Memory* %call_424353, %struct.Memory** %MEMORY

  ; Code: callq .is_legal	 RIP: 424356	 Bytes: 5
  %loadMem1_424356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424356 = call %struct.Memory* @routine_callq_.is_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424356, i64 -88198, i64 5, i64 5)
  store %struct.Memory* %call1_424356, %struct.Memory** %MEMORY

  %loadMem2_424356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424356 = load i64, i64* %3
  %call2_424356 = call %struct.Memory* @sub_40ead0.is_legal(%struct.State* %0, i64  %loadPC_424356, %struct.Memory* %loadMem2_424356)
  store %struct.Memory* %call2_424356, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 42435b	 Bytes: 3
  %loadMem_42435b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42435b = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42435b)
  store %struct.Memory* %call_42435b, %struct.Memory** %MEMORY

  ; Code: je .L_424375	 RIP: 42435e	 Bytes: 6
  %loadMem_42435e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42435e = call %struct.Memory* @routine_je_.L_424375(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42435e, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_42435e, %struct.Memory** %MEMORY

  %loadBr_42435e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42435e = icmp eq i8 %loadBr_42435e, 1
  br i1 %cmpBr_42435e, label %block_.L_424375, label %block_424364

block_424364:
  ; Code: movl -0x698(%rbp), %eax	 RIP: 424364	 Bytes: 6
  %loadMem_424364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424364 = call %struct.Memory* @routine_movl_MINUS0x698__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424364)
  store %struct.Memory* %call_424364, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 42436a	 Bytes: 4
  %loadMem_42436a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42436a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42436a)
  store %struct.Memory* %call_42436a, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 42436e	 Bytes: 2
  %loadMem_42436e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42436e = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42436e)
  store %struct.Memory* %call_42436e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4243a7	 RIP: 424370	 Bytes: 5
  %loadMem_424370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424370 = call %struct.Memory* @routine_jmpq_.L_4243a7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424370, i64 55, i64 5)
  store %struct.Memory* %call_424370, %struct.Memory** %MEMORY

  br label %block_.L_4243a7

  ; Code: .L_424375:	 RIP: 424375	 Bytes: 0
block_.L_424375:

  ; Code: movl -0x694(%rbp), %edi	 RIP: 424375	 Bytes: 6
  %loadMem_424375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424375 = call %struct.Memory* @routine_movl_MINUS0x694__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424375)
  store %struct.Memory* %call_424375, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 42437b	 Bytes: 3
  %loadMem_42437b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42437b = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42437b)
  store %struct.Memory* %call_42437b, %struct.Memory** %MEMORY

  ; Code: callq .is_legal	 RIP: 42437e	 Bytes: 5
  %loadMem1_42437e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42437e = call %struct.Memory* @routine_callq_.is_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42437e, i64 -88238, i64 5, i64 5)
  store %struct.Memory* %call1_42437e, %struct.Memory** %MEMORY

  %loadMem2_42437e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42437e = load i64, i64* %3
  %call2_42437e = call %struct.Memory* @sub_40ead0.is_legal(%struct.State* %0, i64  %loadPC_42437e, %struct.Memory* %loadMem2_42437e)
  store %struct.Memory* %call2_42437e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 424383	 Bytes: 3
  %loadMem_424383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424383 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424383)
  store %struct.Memory* %call_424383, %struct.Memory** %MEMORY

  ; Code: je .L_42439d	 RIP: 424386	 Bytes: 6
  %loadMem_424386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424386 = call %struct.Memory* @routine_je_.L_42439d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424386, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_424386, %struct.Memory** %MEMORY

  %loadBr_424386 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424386 = icmp eq i8 %loadBr_424386, 1
  br i1 %cmpBr_424386, label %block_.L_42439d, label %block_42438c

block_42438c:
  ; Code: movl -0x694(%rbp), %eax	 RIP: 42438c	 Bytes: 6
  %loadMem_42438c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42438c = call %struct.Memory* @routine_movl_MINUS0x694__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42438c)
  store %struct.Memory* %call_42438c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 424392	 Bytes: 4
  %loadMem_424392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424392 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424392)
  store %struct.Memory* %call_424392, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 424396	 Bytes: 2
  %loadMem_424396 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424396 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424396)
  store %struct.Memory* %call_424396, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4243a2	 RIP: 424398	 Bytes: 5
  %loadMem_424398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424398 = call %struct.Memory* @routine_jmpq_.L_4243a2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424398, i64 10, i64 5)
  store %struct.Memory* %call_424398, %struct.Memory** %MEMORY

  br label %block_.L_4243a2

  ; Code: .L_42439d:	 RIP: 42439d	 Bytes: 0
block_.L_42439d:

  ; Code: jmpq .L_4243f4	 RIP: 42439d	 Bytes: 5
  %loadMem_42439d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42439d = call %struct.Memory* @routine_jmpq_.L_4243f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42439d, i64 87, i64 5)
  store %struct.Memory* %call_42439d, %struct.Memory** %MEMORY

  br label %block_.L_4243f4

  ; Code: .L_4243a2:	 RIP: 4243a2	 Bytes: 0
block_.L_4243a2:

  ; Code: jmpq .L_4243a7	 RIP: 4243a2	 Bytes: 5
  %loadMem_4243a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243a2 = call %struct.Memory* @routine_jmpq_.L_4243a7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243a2, i64 5, i64 5)
  store %struct.Memory* %call_4243a2, %struct.Memory** %MEMORY

  br label %block_.L_4243a7

  ; Code: .L_4243a7:	 RIP: 4243a7	 Bytes: 0
block_.L_4243a7:

  ; Code: movl 0xab0f24, %eax	 RIP: 4243a7	 Bytes: 7
  %loadMem_4243a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243a7 = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243a7)
  store %struct.Memory* %call_4243a7, %struct.Memory** %MEMORY

  ; Code: andl $0x4000, %eax	 RIP: 4243ae	 Bytes: 5
  %loadMem_4243ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243ae = call %struct.Memory* @routine_andl__0x4000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243ae)
  store %struct.Memory* %call_4243ae, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4243b3	 Bytes: 3
  %loadMem_4243b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243b3 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243b3)
  store %struct.Memory* %call_4243b3, %struct.Memory** %MEMORY

  ; Code: jne .L_4243c1	 RIP: 4243b6	 Bytes: 6
  %loadMem_4243b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243b6 = call %struct.Memory* @routine_jne_.L_4243c1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243b6, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4243b6, %struct.Memory** %MEMORY

  %loadBr_4243b6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4243b6 = icmp eq i8 %loadBr_4243b6, 1
  br i1 %cmpBr_4243b6, label %block_.L_4243c1, label %block_4243bc

block_4243bc:
  ; Code: jmpq .L_4243de	 RIP: 4243bc	 Bytes: 5
  %loadMem_4243bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243bc = call %struct.Memory* @routine_jmpq_.L_4243de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243bc, i64 34, i64 5)
  store %struct.Memory* %call_4243bc, %struct.Memory** %MEMORY

  br label %block_.L_4243de

  ; Code: .L_4243c1:	 RIP: 4243c1	 Bytes: 0
block_.L_4243c1:

  ; Code: movq $0x57bc51, %rdi	 RIP: 4243c1	 Bytes: 10
  %loadMem_4243c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243c1 = call %struct.Memory* @routine_movq__0x57bc51___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243c1)
  store %struct.Memory* %call_4243c1, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4243cb	 Bytes: 4
  %loadMem_4243cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243cb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243cb)
  store %struct.Memory* %call_4243cb, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %esi	 RIP: 4243cf	 Bytes: 2
  %loadMem_4243cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243cf = call %struct.Memory* @routine_movl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243cf)
  store %struct.Memory* %call_4243cf, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4243d1	 Bytes: 2
  %loadMem_4243d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243d1 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243d1)
  store %struct.Memory* %call_4243d1, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 4243d3	 Bytes: 5
  %loadMem1_4243d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4243d3 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4243d3, i64 186845, i64 5, i64 5)
  store %struct.Memory* %call1_4243d3, %struct.Memory** %MEMORY

  %loadMem2_4243d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4243d3 = load i64, i64* %3
  %call2_4243d3 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_4243d3, %struct.Memory* %loadMem2_4243d3)
  store %struct.Memory* %call2_4243d3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6e4(%rbp)	 RIP: 4243d8	 Bytes: 6
  %loadMem_4243d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243d8 = call %struct.Memory* @routine_movl__eax__MINUS0x6e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243d8)
  store %struct.Memory* %call_4243d8, %struct.Memory** %MEMORY

  ; Code: .L_4243de:	 RIP: 4243de	 Bytes: 0
  br label %block_.L_4243de
block_.L_4243de:

  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 4243de	 Bytes: 7
  %loadMem_4243de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243de = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243de)
  store %struct.Memory* %call_4243de, %struct.Memory** %MEMORY

  ; Code: jmpq .L_424452	 RIP: 4243e5	 Bytes: 5
  %loadMem_4243e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243e5 = call %struct.Memory* @routine_jmpq_.L_424452(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243e5, i64 109, i64 5)
  store %struct.Memory* %call_4243e5, %struct.Memory** %MEMORY

  br label %block_.L_424452

  ; Code: .L_4243ea:	 RIP: 4243ea	 Bytes: 0
block_.L_4243ea:

  ; Code: jmpq .L_4243ef	 RIP: 4243ea	 Bytes: 5
  %loadMem_4243ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243ea = call %struct.Memory* @routine_jmpq_.L_4243ef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243ea, i64 5, i64 5)
  store %struct.Memory* %call_4243ea, %struct.Memory** %MEMORY

  br label %block_.L_4243ef

  ; Code: .L_4243ef:	 RIP: 4243ef	 Bytes: 0
block_.L_4243ef:

  ; Code: jmpq .L_4243f4	 RIP: 4243ef	 Bytes: 5
  %loadMem_4243ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243ef = call %struct.Memory* @routine_jmpq_.L_4243f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243ef, i64 5, i64 5)
  store %struct.Memory* %call_4243ef, %struct.Memory** %MEMORY

  br label %block_.L_4243f4

  ; Code: .L_4243f4:	 RIP: 4243f4	 Bytes: 0
block_.L_4243f4:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 4243f4	 Bytes: 3
  %loadMem_4243f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243f4 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243f4)
  store %struct.Memory* %call_4243f4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4243f7	 Bytes: 3
  %loadMem_4243f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243f7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243f7)
  store %struct.Memory* %call_4243f7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 4243fa	 Bytes: 3
  %loadMem_4243fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243fa = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243fa)
  store %struct.Memory* %call_4243fa, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4242c6	 RIP: 4243fd	 Bytes: 5
  %loadMem_4243fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4243fd = call %struct.Memory* @routine_jmpq_.L_4242c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4243fd, i64 -311, i64 5)
  store %struct.Memory* %call_4243fd, %struct.Memory** %MEMORY

  br label %block_.L_4242c6

  ; Code: .L_424402:	 RIP: 424402	 Bytes: 0
block_.L_424402:

  ; Code: jmpq .L_424407	 RIP: 424402	 Bytes: 5
  %loadMem_424402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424402 = call %struct.Memory* @routine_jmpq_.L_424407(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424402, i64 5, i64 5)
  store %struct.Memory* %call_424402, %struct.Memory** %MEMORY

  br label %block_.L_424407

  ; Code: .L_424407:	 RIP: 424407	 Bytes: 0
block_.L_424407:

  ; Code: jmpq .L_42440c	 RIP: 424407	 Bytes: 5
  %loadMem_424407 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424407 = call %struct.Memory* @routine_jmpq_.L_42440c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424407, i64 5, i64 5)
  store %struct.Memory* %call_424407, %struct.Memory** %MEMORY

  br label %block_.L_42440c

  ; Code: .L_42440c:	 RIP: 42440c	 Bytes: 0
block_.L_42440c:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42440c	 Bytes: 3
  %loadMem_42440c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42440c = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42440c)
  store %struct.Memory* %call_42440c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42440f	 Bytes: 3
  %loadMem_42440f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42440f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42440f)
  store %struct.Memory* %call_42440f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 424412	 Bytes: 3
  %loadMem_424412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424412 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424412)
  store %struct.Memory* %call_424412, %struct.Memory** %MEMORY

  ; Code: jmpq .L_423ba8	 RIP: 424415	 Bytes: 5
  %loadMem_424415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424415 = call %struct.Memory* @routine_jmpq_.L_423ba8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424415, i64 -2157, i64 5)
  store %struct.Memory* %call_424415, %struct.Memory** %MEMORY

  br label %block_.L_423ba8

  ; Code: .L_42441a:	 RIP: 42441a	 Bytes: 0
block_.L_42441a:

  ; Code: movl 0xab0f24, %eax	 RIP: 42441a	 Bytes: 7
  %loadMem_42441a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42441a = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42441a)
  store %struct.Memory* %call_42441a, %struct.Memory** %MEMORY

  ; Code: andl $0x4000, %eax	 RIP: 424421	 Bytes: 5
  %loadMem_424421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424421 = call %struct.Memory* @routine_andl__0x4000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424421)
  store %struct.Memory* %call_424421, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 424426	 Bytes: 3
  %loadMem_424426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424426 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424426)
  store %struct.Memory* %call_424426, %struct.Memory** %MEMORY

  ; Code: jne .L_424434	 RIP: 424429	 Bytes: 6
  %loadMem_424429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424429 = call %struct.Memory* @routine_jne_.L_424434(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424429, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_424429, %struct.Memory** %MEMORY

  %loadBr_424429 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_424429 = icmp eq i8 %loadBr_424429, 1
  br i1 %cmpBr_424429, label %block_.L_424434, label %block_42442f

block_42442f:
  ; Code: jmpq .L_42444b	 RIP: 42442f	 Bytes: 5
  %loadMem_42442f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42442f = call %struct.Memory* @routine_jmpq_.L_42444b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42442f, i64 28, i64 5)
  store %struct.Memory* %call_42442f, %struct.Memory** %MEMORY

  br label %block_.L_42444b

  ; Code: .L_424434:	 RIP: 424434	 Bytes: 0
block_.L_424434:

  ; Code: movq $0x57bcdc, %rdi	 RIP: 424434	 Bytes: 10
  %loadMem_424434 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424434 = call %struct.Memory* @routine_movq__0x57bcdc___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424434)
  store %struct.Memory* %call_424434, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42443e	 Bytes: 2
  %loadMem_42443e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42443e = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42443e)
  store %struct.Memory* %call_42443e, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 424440	 Bytes: 5
  %loadMem1_424440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_424440 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_424440, i64 186736, i64 5, i64 5)
  store %struct.Memory* %call1_424440, %struct.Memory** %MEMORY

  %loadMem2_424440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_424440 = load i64, i64* %3
  %call2_424440 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_424440, %struct.Memory* %loadMem2_424440)
  store %struct.Memory* %call2_424440, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6e8(%rbp)	 RIP: 424445	 Bytes: 6
  %loadMem_424445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424445 = call %struct.Memory* @routine_movl__eax__MINUS0x6e8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424445)
  store %struct.Memory* %call_424445, %struct.Memory** %MEMORY

  ; Code: .L_42444b:	 RIP: 42444b	 Bytes: 0
  br label %block_.L_42444b
block_.L_42444b:

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 42444b	 Bytes: 7
  %loadMem_42444b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42444b = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42444b)
  store %struct.Memory* %call_42444b, %struct.Memory** %MEMORY

  ; Code: .L_424452:	 RIP: 424452	 Bytes: 0
  br label %block_.L_424452
block_.L_424452:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 424452	 Bytes: 3
  %loadMem_424452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424452 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424452)
  store %struct.Memory* %call_424452, %struct.Memory** %MEMORY

  ; Code: addq $0x6f0, %rsp	 RIP: 424455	 Bytes: 7
  %loadMem_424455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_424455 = call %struct.Memory* @routine_addq__0x6f0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_424455)
  store %struct.Memory* %call_424455, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 42445c	 Bytes: 1
  %loadMem_42445c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42445c = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42445c)
  store %struct.Memory* %call_42445c, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 42445d	 Bytes: 1
  %loadMem_42445d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42445d = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42445d)
  store %struct.Memory* %call_42445d, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_42445d
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

define %struct.Memory* @routine_subq__0x6f0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 1776)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x640___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 1600)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x670__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1648
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x3___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 3)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
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

define %struct.Memory* @routine_subl_MINUS0x14__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
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


define %struct.Memory* @routine_movq__r8___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
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

define %struct.Memory* @routine_callq_.memset_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x15__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 21)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_cmpl__0x190__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_jge_.L_423ba1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = zext i8 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_je_.L_4239aa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_423b93(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_4239fe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x5__0x3c__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 60
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_423a03(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x1__0x40__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_423a9f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x4__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_423a9a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl__eax__MINUS0x674__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1652
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0x674__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1652
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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


define %struct.Memory* @routine_jne_.L_423a87(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_subl__edx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %3 to i32
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7
  %9 = or i32 %8, %6
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %2, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = and i32 %9, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12) #22
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = icmp eq i32 %9, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i32 %9, 31
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_orl_MINUS0x670__rbp__rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -1648
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movl__eax__MINUS0x670__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1648
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_jmpq_.L_423a8c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_jmpq_.L_423a29(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_423a9f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_cmpl__0x0__0x40__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_423b8e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0xc__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 12)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_423b89(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x8___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x69c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1692
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__edx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x7ae1b0___rsi_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8053168
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edx__MINUS0x678__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1656
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x8__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 8)
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

define %struct.Memory* @routine_jl_.L_423b33(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_addl_MINUS0x678__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1656
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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






define %struct.Memory* @routine_je_.L_423b24(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_423b7b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x678__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1656
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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












define %struct.Memory* @routine_jne_.L_423b76(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x678__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1656
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movslq__edx___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_orl_MINUS0x670__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -1648
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movl__ecx__MINUS0x670__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1648
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}










define %struct.Memory* @routine_jmpq_.L_423ac5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_423b8e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42396e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jge_.L_42441a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_423be3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_42440c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpl__0x3__MINUS0x670__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %12, -1648
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 3)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_423bfa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_423c6a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x7ae1b0___rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 8053168
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__MINUS0x684__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1668
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_addl_MINUS0x684__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1668
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_je_.L_423c57(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x680__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1664
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x67c__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1660
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_MINUS0x684__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1668
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_callq_.analyze_neighbor(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_423c5c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_423c01(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x67c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_423c84(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x680__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_423c89(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_andl__0x4000___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 16384)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jne_.L_423ca3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_423cbd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x57ba7e___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57ba7e_type* @G__0x57ba7e to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
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


define %struct.Memory* @routine_cmpl__0x5___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_423e13(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_423ceb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_423d02(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x57baa1___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57baa1_type* @G__0x57baa1 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_leaq_MINUS0x24__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_callq_.filllib_confirm_safety(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_423d60(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_423d34(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_423d4b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x57babc___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57babc_type* @G__0x57babc to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__eax____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_424452(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_je_.L_423db3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_423d84(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_423d9e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x57bad8___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57bad8_type* @G__0x57bad8 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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
















define %struct.Memory* @routine_jne_.L_423dcd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_423de4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x57bb09___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57bb09_type* @G__0x57bb09 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0f28_type* @G_0xab0f28 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_423df7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_423e0e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x57bb34___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57bb34_type* @G__0x57bb34 to i64))
  ret %struct.Memory* %11
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




define %struct.Memory* @routine_movq__0x57bb62___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57bb62_type* @G__0x57bb62 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__eax___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_callq_.trymove(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_424026(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.popgo(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_423e5a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_423e71(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x57bb6f___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57bb6f_type* @G__0x57bb6f to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_callq_.find_backfilling_move(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_423f74(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_423ea3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_423ec0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x57bbab___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57bbab_type* @G__0x57bbab to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl___rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
}






define %struct.Memory* @routine_movl__eax__MINUS0x6bc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1724
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl___rax____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_callq_.is_legal(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_423f17(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_423ef1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_423f08(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x57bbce___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57bbce_type* @G__0x57bbce to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x6c0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1728
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl__0x0____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_jne_.L_423f68(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_423f4c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_423f63(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl__eax__MINUS0x6c4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1732
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}












define %struct.Memory* @routine_callq_.does_capture_something(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_42401c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_423fa2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_423fb9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x57bbf0___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57bbf0_type* @G__0x57bbf0 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x6c8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1736
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}












define %struct.Memory* @routine_jne_.L_424007(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_423feb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_424002(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl__eax__MINUS0x6cc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1740
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}














define %struct.Memory* @routine_jmpq_.L_424021(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_424407(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jne_.L_424040(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_424057(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x57bc24___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57bc24_type* @G__0x57bc24 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x6d0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1744
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_jge_.L_424140(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__ecx__MINUS0x688__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1672
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_addl_MINUS0x688__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1672
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
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

define %struct.Memory* @routine_cmpl_MINUS0x20__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 32
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_42412d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 380)
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
















define %struct.Memory* @routine_movl_0x3c__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__ecx____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_0xab0f24___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0xab0f24_type* @G_0xab0f24 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_andl__0x4000___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 16384)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jne_.L_424104(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_424121(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x57bc51___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57bc51_type* @G__0x57bc51 to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movl__eax__MINUS0x6d4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1748
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_jmpq_.L_424132(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_42405e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jne_.L_42415a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_424171(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x57bc69___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57bc69_type* @G__0x57bc69 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x6d8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1752
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_jge_.L_42428e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__ecx__MINUS0x68c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1676
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_addl_MINUS0x68c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1676
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_jne_.L_42427b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_cmpl__0x0__0x64__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_42427b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_movl_0x3c__rax____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


































define %struct.Memory* @routine_jne_.L_424252(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_42426f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_movl__eax__MINUS0x6dc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1756
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_jmpq_.L_424280(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_424178(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jne_.L_4242a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4242bf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x57bc9f___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57bc9f_type* @G__0x57bc9f to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x6e0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1760
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_jge_.L_424402(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__ecx__MINUS0x690__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1680
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_addl_MINUS0x690__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1680
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_jne_.L_4243ef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_je_.L_4243ef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x698__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1688
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_MINUS0x690__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1680
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_callq_.findlib(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
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

define %struct.Memory* @routine_jle_.L_4243ea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x698__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1688
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_je_.L_424375(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_4243a7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x694__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1684
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_je_.L_42439d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_4243a2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4243f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_jne_.L_4243c1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4243de(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_movl__eax__MINUS0x6e4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1764
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_jmpq_.L_4243ef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_jmpq_.L_4242c6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_jmpq_.L_423ba8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jne_.L_424434(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_42444b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x57bcdc___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57bcdc_type* @G__0x57bcdc to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x6e8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1768
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_addq__0x6f0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 1776)
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

