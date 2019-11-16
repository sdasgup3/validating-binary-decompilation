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
declare %struct.Memory* @sub_439550.find_eye_dragons(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_431fb0.owl_attack_move_reason_known(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_44cb30.owl_does_attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_433fe0.add_gain_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_434680.add_owl_attack_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_432040.owl_defense_move_reason_known(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_44c3c0.owl_does_defend(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4341e0.add_loss_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4347a0.add_owl_defense_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_423120.are_neighbor_dragons(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0xab0f28_type = type <{ [1 x i8] }>
@G_0xab0f28= global %G_0xab0f28_type <{ [1 x i8] c"\00" }>
%G_0xab0fe0_type = type <{ [8 x i8] }>
@G_0xab0fe0= global %G_0xab0fe0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x582d00_type = type <{ [8 x i8] }>
@G__0x582d00= global %G__0x582d00_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x582d3a_type = type <{ [8 x i8] }>
@G__0x582d3a= global %G__0x582d3a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x582d63_type = type <{ [8 x i8] }>
@G__0x582d63= global %G__0x582d63_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xafdfc0_type = type <{ [8 x i8] }>
@G__0xafdfc0= global %G__0xafdfc0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xb01180_type = type <{ [8 x i8] }>
@G__0xb01180= global %G__0xb01180_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xb4bd20_type = type <{ [8 x i8] }>
@G__0xb4bd20= global %G__0xb4bd20_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xb9a0a0_type = type <{ [8 x i8] }>
@G__0xb9a0a0= global %G__0xb9a0a0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xb9d8f0_type = type <{ [8 x i8] }>
@G__0xb9d8f0= global %G__0xb9d8f0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @find_more_owl_attack_and_defense_moves(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .find_more_owl_attack_and_defense_moves:	 RIP: 47d170	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 47d170	 Bytes: 1
  %loadMem_47d170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d170 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d170)
  store %struct.Memory* %call_47d170, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 47d171	 Bytes: 3
  %loadMem_47d171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d171 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d171)
  store %struct.Memory* %call_47d171, %struct.Memory** %MEMORY

  ; Code: subq $0x80, %rsp	 RIP: 47d174	 Bytes: 7
  %loadMem_47d174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d174 = call %struct.Memory* @routine_subq__0x80___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d174)
  store %struct.Memory* %call_47d174, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 47d17b	 Bytes: 3
  %loadMem_47d17b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d17b = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d17b)
  store %struct.Memory* %call_47d17b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 47d17e	 Bytes: 7
  %loadMem_47d17e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d17e = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d17e)
  store %struct.Memory* %call_47d17e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xab0f28	 RIP: 47d185	 Bytes: 8
  %loadMem_47d185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d185 = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d185)
  store %struct.Memory* %call_47d185, %struct.Memory** %MEMORY

  ; Code: jne .L_47d198	 RIP: 47d18d	 Bytes: 6
  %loadMem_47d18d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d18d = call %struct.Memory* @routine_jne_.L_47d198(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d18d, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47d18d, %struct.Memory** %MEMORY

  %loadBr_47d18d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d18d = icmp eq i8 %loadBr_47d18d, 1
  br i1 %cmpBr_47d18d, label %block_.L_47d198, label %block_47d193

block_47d193:
  ; Code: jmpq .L_47d1ac	 RIP: 47d193	 Bytes: 5
  %loadMem_47d193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d193 = call %struct.Memory* @routine_jmpq_.L_47d1ac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d193, i64 25, i64 5)
  store %struct.Memory* %call_47d193, %struct.Memory** %MEMORY

  br label %block_.L_47d1ac

  ; Code: .L_47d198:	 RIP: 47d198	 Bytes: 0
block_.L_47d198:

  ; Code: movq $0x582d00, %rdi	 RIP: 47d198	 Bytes: 10
  %loadMem_47d198 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d198 = call %struct.Memory* @routine_movq__0x582d00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d198)
  store %struct.Memory* %call_47d198, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 47d1a2	 Bytes: 2
  %loadMem_47d1a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d1a2 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d1a2)
  store %struct.Memory* %call_47d1a2, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 47d1a4	 Bytes: 5
  %loadMem1_47d1a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47d1a4 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47d1a4, i64 -177140, i64 5, i64 5)
  store %struct.Memory* %call1_47d1a4, %struct.Memory** %MEMORY

  %loadMem2_47d1a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d1a4 = load i64, i64* %3
  %call2_47d1a4 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_47d1a4, %struct.Memory* %loadMem2_47d1a4)
  store %struct.Memory* %call2_47d1a4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x64(%rbp)	 RIP: 47d1a9	 Bytes: 3
  %loadMem_47d1a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d1a9 = call %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d1a9)
  store %struct.Memory* %call_47d1a9, %struct.Memory** %MEMORY

  ; Code: .L_47d1ac:	 RIP: 47d1ac	 Bytes: 0
  br label %block_.L_47d1ac
block_.L_47d1ac:

  ; Code: movl $0x15, -0x8(%rbp)	 RIP: 47d1ac	 Bytes: 7
  %loadMem_47d1ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d1ac = call %struct.Memory* @routine_movl__0x15__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d1ac)
  store %struct.Memory* %call_47d1ac, %struct.Memory** %MEMORY

  ; Code: .L_47d1b3:	 RIP: 47d1b3	 Bytes: 0
  br label %block_.L_47d1b3
block_.L_47d1b3:

  ; Code: cmpl $0x190, -0x8(%rbp)	 RIP: 47d1b3	 Bytes: 7
  %loadMem_47d1b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d1b3 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d1b3)
  store %struct.Memory* %call_47d1b3, %struct.Memory** %MEMORY

  ; Code: jge .L_47d82e	 RIP: 47d1ba	 Bytes: 6
  %loadMem_47d1ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d1ba = call %struct.Memory* @routine_jge_.L_47d82e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d1ba, i8* %BRANCH_TAKEN, i64 1652, i64 6, i64 6)
  store %struct.Memory* %call_47d1ba, %struct.Memory** %MEMORY

  %loadBr_47d1ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d1ba = icmp eq i8 %loadBr_47d1ba, 1
  br i1 %cmpBr_47d1ba, label %block_.L_47d82e, label %block_47d1c0

block_47d1c0:
  ; Code: movslq -0x8(%rbp), %rax	 RIP: 47d1c0	 Bytes: 4
  %loadMem_47d1c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d1c0 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d1c0)
  store %struct.Memory* %call_47d1c0, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 47d1c4	 Bytes: 8
  %loadMem_47d1c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d1c4 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d1c4)
  store %struct.Memory* %call_47d1c4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 47d1cc	 Bytes: 3
  %loadMem_47d1cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d1cc = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d1cc)
  store %struct.Memory* %call_47d1cc, %struct.Memory** %MEMORY

  ; Code: jne .L_47d1da	 RIP: 47d1cf	 Bytes: 6
  %loadMem_47d1cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d1cf = call %struct.Memory* @routine_jne_.L_47d1da(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d1cf, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47d1cf, %struct.Memory** %MEMORY

  %loadBr_47d1cf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d1cf = icmp eq i8 %loadBr_47d1cf, 1
  br i1 %cmpBr_47d1cf, label %block_.L_47d1da, label %block_47d1d5

block_47d1d5:
  ; Code: jmpq .L_47d820	 RIP: 47d1d5	 Bytes: 5
  %loadMem_47d1d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d1d5 = call %struct.Memory* @routine_jmpq_.L_47d820(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d1d5, i64 1611, i64 5)
  store %struct.Memory* %call_47d1d5, %struct.Memory** %MEMORY

  br label %block_.L_47d820

  ; Code: .L_47d1da:	 RIP: 47d1da	 Bytes: 0
block_.L_47d1da:

  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 47d1da	 Bytes: 7
  %loadMem_47d1da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d1da = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d1da)
  store %struct.Memory* %call_47d1da, %struct.Memory** %MEMORY

  ; Code: .L_47d1e1:	 RIP: 47d1e1	 Bytes: 0
  br label %block_.L_47d1e1
block_.L_47d1e1:

  ; Code: cmpl $0x78, -0x10(%rbp)	 RIP: 47d1e1	 Bytes: 4
  %loadMem_47d1e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d1e1 = call %struct.Memory* @routine_cmpl__0x78__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d1e1)
  store %struct.Memory* %call_47d1e1, %struct.Memory** %MEMORY

  ; Code: jge .L_47d81b	 RIP: 47d1e5	 Bytes: 6
  %loadMem_47d1e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d1e5 = call %struct.Memory* @routine_jge_.L_47d81b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d1e5, i8* %BRANCH_TAKEN, i64 1590, i64 6, i64 6)
  store %struct.Memory* %call_47d1e5, %struct.Memory** %MEMORY

  %loadBr_47d1e5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d1e5 = icmp eq i8 %loadBr_47d1e5, 1
  br i1 %cmpBr_47d1e5, label %block_.L_47d81b, label %block_47d1eb

block_47d1eb:
  ; Code: movq $0xb9d8f0, %rax	 RIP: 47d1eb	 Bytes: 10
  %loadMem_47d1eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d1eb = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d1eb)
  store %struct.Memory* %call_47d1eb, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 47d1f5	 Bytes: 4
  %loadMem_47d1f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d1f5 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d1f5)
  store %struct.Memory* %call_47d1f5, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 47d1f9	 Bytes: 7
  %loadMem_47d1f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d1f9 = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d1f9)
  store %struct.Memory* %call_47d1f9, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d200	 Bytes: 3
  %loadMem_47d200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d200 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d200)
  store %struct.Memory* %call_47d200, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 47d203	 Bytes: 4
  %loadMem_47d203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d203 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d203)
  store %struct.Memory* %call_47d203, %struct.Memory** %MEMORY

  ; Code: movl 0x48(%rax,%rcx,4), %edx	 RIP: 47d207	 Bytes: 4
  %loadMem_47d207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d207 = call %struct.Memory* @routine_movl_0x48__rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d207)
  store %struct.Memory* %call_47d207, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x28(%rbp)	 RIP: 47d20b	 Bytes: 3
  %loadMem_47d20b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d20b = call %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d20b)
  store %struct.Memory* %call_47d20b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 47d20e	 Bytes: 7
  %loadMem_47d20e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d20e = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d20e)
  store %struct.Memory* %call_47d20e, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 47d215	 Bytes: 7
  %loadMem_47d215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d215 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d215)
  store %struct.Memory* %call_47d215, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x28(%rbp)	 RIP: 47d21c	 Bytes: 4
  %loadMem_47d21c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d21c = call %struct.Memory* @routine_cmpl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d21c)
  store %struct.Memory* %call_47d21c, %struct.Memory** %MEMORY

  ; Code: jge .L_47d22b	 RIP: 47d220	 Bytes: 6
  %loadMem_47d220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d220 = call %struct.Memory* @routine_jge_.L_47d22b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d220, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47d220, %struct.Memory** %MEMORY

  %loadBr_47d220 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d220 = icmp eq i8 %loadBr_47d220, 1
  br i1 %cmpBr_47d220, label %block_.L_47d22b, label %block_47d226

block_47d226:
  ; Code: jmpq .L_47d81b	 RIP: 47d226	 Bytes: 5
  %loadMem_47d226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d226 = call %struct.Memory* @routine_jmpq_.L_47d81b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d226, i64 1525, i64 5)
  store %struct.Memory* %call_47d226, %struct.Memory** %MEMORY

  br label %block_.L_47d81b

  ; Code: .L_47d22b:	 RIP: 47d22b	 Bytes: 0
block_.L_47d22b:

  ; Code: movq $0xafdfc0, %rax	 RIP: 47d22b	 Bytes: 10
  %loadMem_47d22b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d22b = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d22b)
  store %struct.Memory* %call_47d22b, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 47d235	 Bytes: 4
  %loadMem_47d235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d235 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d235)
  store %struct.Memory* %call_47d235, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47d239	 Bytes: 4
  %loadMem_47d239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d239 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d239)
  store %struct.Memory* %call_47d239, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 47d23d	 Bytes: 3
  %loadMem_47d23d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d23d = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d23d)
  store %struct.Memory* %call_47d23d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 47d240	 Bytes: 3
  %loadMem_47d240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d240 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d240)
  store %struct.Memory* %call_47d240, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rdx), %esi	 RIP: 47d243	 Bytes: 3
  %loadMem_47d243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d243 = call %struct.Memory* @routine_movl_0x4__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d243)
  store %struct.Memory* %call_47d243, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x2c(%rbp)	 RIP: 47d246	 Bytes: 3
  %loadMem_47d246 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d246 = call %struct.Memory* @routine_movl__esi__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d246)
  store %struct.Memory* %call_47d246, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 47d249	 Bytes: 4
  %loadMem_47d249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d249 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d249)
  store %struct.Memory* %call_47d249, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47d24d	 Bytes: 4
  %loadMem_47d24d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d24d = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d24d)
  store %struct.Memory* %call_47d24d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d251	 Bytes: 3
  %loadMem_47d251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d251 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d251)
  store %struct.Memory* %call_47d251, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2c, (%rax)	 RIP: 47d254	 Bytes: 3
  %loadMem_47d254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d254 = call %struct.Memory* @routine_cmpl__0x2c____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d254)
  store %struct.Memory* %call_47d254, %struct.Memory** %MEMORY

  ; Code: je .L_47d27b	 RIP: 47d257	 Bytes: 6
  %loadMem_47d257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d257 = call %struct.Memory* @routine_je_.L_47d27b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d257, i8* %BRANCH_TAKEN, i64 36, i64 6, i64 6)
  store %struct.Memory* %call_47d257, %struct.Memory** %MEMORY

  %loadBr_47d257 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d257 = icmp eq i8 %loadBr_47d257, 1
  br i1 %cmpBr_47d257, label %block_.L_47d27b, label %block_47d25d

block_47d25d:
  ; Code: movq $0xafdfc0, %rax	 RIP: 47d25d	 Bytes: 10
  %loadMem_47d25d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d25d = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d25d)
  store %struct.Memory* %call_47d25d, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 47d267	 Bytes: 4
  %loadMem_47d267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d267 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d267)
  store %struct.Memory* %call_47d267, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47d26b	 Bytes: 4
  %loadMem_47d26b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d26b = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d26b)
  store %struct.Memory* %call_47d26b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d26f	 Bytes: 3
  %loadMem_47d26f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d26f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d26f)
  store %struct.Memory* %call_47d26f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2e, (%rax)	 RIP: 47d272	 Bytes: 3
  %loadMem_47d272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d272 = call %struct.Memory* @routine_cmpl__0x2e____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d272)
  store %struct.Memory* %call_47d272, %struct.Memory** %MEMORY

  ; Code: jne .L_47d286	 RIP: 47d275	 Bytes: 6
  %loadMem_47d275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d275 = call %struct.Memory* @routine_jne_.L_47d286(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d275, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_47d275, %struct.Memory** %MEMORY

  %loadBr_47d275 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d275 = icmp eq i8 %loadBr_47d275, 1
  br i1 %cmpBr_47d275, label %block_.L_47d286, label %block_.L_47d27b

  ; Code: .L_47d27b:	 RIP: 47d27b	 Bytes: 0
block_.L_47d27b:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 47d27b	 Bytes: 3
  %loadMem_47d27b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d27b = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d27b)
  store %struct.Memory* %call_47d27b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 47d27e	 Bytes: 3
  %loadMem_47d27e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d27e = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d27e)
  store %struct.Memory* %call_47d27e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47d47e	 RIP: 47d281	 Bytes: 5
  %loadMem_47d281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d281 = call %struct.Memory* @routine_jmpq_.L_47d47e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d281, i64 509, i64 5)
  store %struct.Memory* %call_47d281, %struct.Memory** %MEMORY

  br label %block_.L_47d47e

  ; Code: .L_47d286:	 RIP: 47d286	 Bytes: 0
block_.L_47d286:

  ; Code: movq $0xafdfc0, %rax	 RIP: 47d286	 Bytes: 10
  %loadMem_47d286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d286 = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d286)
  store %struct.Memory* %call_47d286, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 47d290	 Bytes: 4
  %loadMem_47d290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d290 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d290)
  store %struct.Memory* %call_47d290, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47d294	 Bytes: 4
  %loadMem_47d294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d294 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d294)
  store %struct.Memory* %call_47d294, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d298	 Bytes: 3
  %loadMem_47d298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d298 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d298)
  store %struct.Memory* %call_47d298, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, (%rax)	 RIP: 47d29b	 Bytes: 3
  %loadMem_47d29b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d29b = call %struct.Memory* @routine_cmpl__0x2____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d29b)
  store %struct.Memory* %call_47d29b, %struct.Memory** %MEMORY

  ; Code: je .L_47d33a	 RIP: 47d29e	 Bytes: 6
  %loadMem_47d29e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d29e = call %struct.Memory* @routine_je_.L_47d33a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d29e, i8* %BRANCH_TAKEN, i64 156, i64 6, i64 6)
  store %struct.Memory* %call_47d29e, %struct.Memory** %MEMORY

  %loadBr_47d29e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d29e = icmp eq i8 %loadBr_47d29e, 1
  br i1 %cmpBr_47d29e, label %block_.L_47d33a, label %block_47d2a4

block_47d2a4:
  ; Code: movq $0xafdfc0, %rax	 RIP: 47d2a4	 Bytes: 10
  %loadMem_47d2a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d2a4 = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d2a4)
  store %struct.Memory* %call_47d2a4, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 47d2ae	 Bytes: 4
  %loadMem_47d2ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d2ae = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d2ae)
  store %struct.Memory* %call_47d2ae, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47d2b2	 Bytes: 4
  %loadMem_47d2b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d2b2 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d2b2)
  store %struct.Memory* %call_47d2b2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d2b6	 Bytes: 3
  %loadMem_47d2b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d2b6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d2b6)
  store %struct.Memory* %call_47d2b6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, (%rax)	 RIP: 47d2b9	 Bytes: 3
  %loadMem_47d2b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d2b9 = call %struct.Memory* @routine_cmpl__0x4____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d2b9)
  store %struct.Memory* %call_47d2b9, %struct.Memory** %MEMORY

  ; Code: je .L_47d33a	 RIP: 47d2bc	 Bytes: 6
  %loadMem_47d2bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d2bc = call %struct.Memory* @routine_je_.L_47d33a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d2bc, i8* %BRANCH_TAKEN, i64 126, i64 6, i64 6)
  store %struct.Memory* %call_47d2bc, %struct.Memory** %MEMORY

  %loadBr_47d2bc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d2bc = icmp eq i8 %loadBr_47d2bc, 1
  br i1 %cmpBr_47d2bc, label %block_.L_47d33a, label %block_47d2c2

block_47d2c2:
  ; Code: movq $0xafdfc0, %rax	 RIP: 47d2c2	 Bytes: 10
  %loadMem_47d2c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d2c2 = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d2c2)
  store %struct.Memory* %call_47d2c2, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 47d2cc	 Bytes: 4
  %loadMem_47d2cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d2cc = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d2cc)
  store %struct.Memory* %call_47d2cc, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47d2d0	 Bytes: 4
  %loadMem_47d2d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d2d0 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d2d0)
  store %struct.Memory* %call_47d2d0, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d2d4	 Bytes: 3
  %loadMem_47d2d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d2d4 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d2d4)
  store %struct.Memory* %call_47d2d4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x6, (%rax)	 RIP: 47d2d7	 Bytes: 3
  %loadMem_47d2d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d2d7 = call %struct.Memory* @routine_cmpl__0x6____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d2d7)
  store %struct.Memory* %call_47d2d7, %struct.Memory** %MEMORY

  ; Code: je .L_47d33a	 RIP: 47d2da	 Bytes: 6
  %loadMem_47d2da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d2da = call %struct.Memory* @routine_je_.L_47d33a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d2da, i8* %BRANCH_TAKEN, i64 96, i64 6, i64 6)
  store %struct.Memory* %call_47d2da, %struct.Memory** %MEMORY

  %loadBr_47d2da = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d2da = icmp eq i8 %loadBr_47d2da, 1
  br i1 %cmpBr_47d2da, label %block_.L_47d33a, label %block_47d2e0

block_47d2e0:
  ; Code: movq $0xafdfc0, %rax	 RIP: 47d2e0	 Bytes: 10
  %loadMem_47d2e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d2e0 = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d2e0)
  store %struct.Memory* %call_47d2e0, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 47d2ea	 Bytes: 4
  %loadMem_47d2ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d2ea = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d2ea)
  store %struct.Memory* %call_47d2ea, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47d2ee	 Bytes: 4
  %loadMem_47d2ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d2ee = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d2ee)
  store %struct.Memory* %call_47d2ee, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d2f2	 Bytes: 3
  %loadMem_47d2f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d2f2 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d2f2)
  store %struct.Memory* %call_47d2f2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x8, (%rax)	 RIP: 47d2f5	 Bytes: 3
  %loadMem_47d2f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d2f5 = call %struct.Memory* @routine_cmpl__0x8____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d2f5)
  store %struct.Memory* %call_47d2f5, %struct.Memory** %MEMORY

  ; Code: je .L_47d33a	 RIP: 47d2f8	 Bytes: 6
  %loadMem_47d2f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d2f8 = call %struct.Memory* @routine_je_.L_47d33a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d2f8, i8* %BRANCH_TAKEN, i64 66, i64 6, i64 6)
  store %struct.Memory* %call_47d2f8, %struct.Memory** %MEMORY

  %loadBr_47d2f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d2f8 = icmp eq i8 %loadBr_47d2f8, 1
  br i1 %cmpBr_47d2f8, label %block_.L_47d33a, label %block_47d2fe

block_47d2fe:
  ; Code: movq $0xafdfc0, %rax	 RIP: 47d2fe	 Bytes: 10
  %loadMem_47d2fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d2fe = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d2fe)
  store %struct.Memory* %call_47d2fe, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 47d308	 Bytes: 4
  %loadMem_47d308 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d308 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d308)
  store %struct.Memory* %call_47d308, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47d30c	 Bytes: 4
  %loadMem_47d30c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d30c = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d30c)
  store %struct.Memory* %call_47d30c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d310	 Bytes: 3
  %loadMem_47d310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d310 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d310)
  store %struct.Memory* %call_47d310, %struct.Memory** %MEMORY

  ; Code: cmpl $0xa, (%rax)	 RIP: 47d313	 Bytes: 3
  %loadMem_47d313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d313 = call %struct.Memory* @routine_cmpl__0xa____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d313)
  store %struct.Memory* %call_47d313, %struct.Memory** %MEMORY

  ; Code: je .L_47d33a	 RIP: 47d316	 Bytes: 6
  %loadMem_47d316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d316 = call %struct.Memory* @routine_je_.L_47d33a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d316, i8* %BRANCH_TAKEN, i64 36, i64 6, i64 6)
  store %struct.Memory* %call_47d316, %struct.Memory** %MEMORY

  %loadBr_47d316 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d316 = icmp eq i8 %loadBr_47d316, 1
  br i1 %cmpBr_47d316, label %block_.L_47d33a, label %block_47d31c

block_47d31c:
  ; Code: movq $0xafdfc0, %rax	 RIP: 47d31c	 Bytes: 10
  %loadMem_47d31c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d31c = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d31c)
  store %struct.Memory* %call_47d31c, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 47d326	 Bytes: 4
  %loadMem_47d326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d326 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d326)
  store %struct.Memory* %call_47d326, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47d32a	 Bytes: 4
  %loadMem_47d32a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d32a = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d32a)
  store %struct.Memory* %call_47d32a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d32e	 Bytes: 3
  %loadMem_47d32e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d32e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d32e)
  store %struct.Memory* %call_47d32e, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc, (%rax)	 RIP: 47d331	 Bytes: 3
  %loadMem_47d331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d331 = call %struct.Memory* @routine_cmpl__0xc____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d331)
  store %struct.Memory* %call_47d331, %struct.Memory** %MEMORY

  ; Code: jne .L_47d345	 RIP: 47d334	 Bytes: 6
  %loadMem_47d334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d334 = call %struct.Memory* @routine_jne_.L_47d345(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d334, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_47d334, %struct.Memory** %MEMORY

  %loadBr_47d334 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d334 = icmp eq i8 %loadBr_47d334, 1
  br i1 %cmpBr_47d334, label %block_.L_47d345, label %block_.L_47d33a

  ; Code: .L_47d33a:	 RIP: 47d33a	 Bytes: 0
block_.L_47d33a:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 47d33a	 Bytes: 3
  %loadMem_47d33a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d33a = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d33a)
  store %struct.Memory* %call_47d33a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 47d33d	 Bytes: 3
  %loadMem_47d33d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d33d = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d33d)
  store %struct.Memory* %call_47d33d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47d479	 RIP: 47d340	 Bytes: 5
  %loadMem_47d340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d340 = call %struct.Memory* @routine_jmpq_.L_47d479(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d340, i64 313, i64 5)
  store %struct.Memory* %call_47d340, %struct.Memory** %MEMORY

  br label %block_.L_47d479

  ; Code: .L_47d345:	 RIP: 47d345	 Bytes: 0
block_.L_47d345:

  ; Code: movq $0xafdfc0, %rax	 RIP: 47d345	 Bytes: 10
  %loadMem_47d345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d345 = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d345)
  store %struct.Memory* %call_47d345, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 47d34f	 Bytes: 4
  %loadMem_47d34f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d34f = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d34f)
  store %struct.Memory* %call_47d34f, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47d353	 Bytes: 4
  %loadMem_47d353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d353 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d353)
  store %struct.Memory* %call_47d353, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d357	 Bytes: 3
  %loadMem_47d357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d357 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d357)
  store %struct.Memory* %call_47d357, %struct.Memory** %MEMORY

  ; Code: cmpl $0x36, (%rax)	 RIP: 47d35a	 Bytes: 3
  %loadMem_47d35a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d35a = call %struct.Memory* @routine_cmpl__0x36____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d35a)
  store %struct.Memory* %call_47d35a, %struct.Memory** %MEMORY

  ; Code: jne .L_47d3e9	 RIP: 47d35d	 Bytes: 6
  %loadMem_47d35d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d35d = call %struct.Memory* @routine_jne_.L_47d3e9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d35d, i8* %BRANCH_TAKEN, i64 140, i64 6, i64 6)
  store %struct.Memory* %call_47d35d, %struct.Memory** %MEMORY

  %loadBr_47d35d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d35d = icmp eq i8 %loadBr_47d35d, 1
  br i1 %cmpBr_47d35d, label %block_.L_47d3e9, label %block_47d363

block_47d363:
  ; Code: movslq -0x2c(%rbp), %rax	 RIP: 47d363	 Bytes: 4
  %loadMem_47d363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d363 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d363)
  store %struct.Memory* %call_47d363, %struct.Memory** %MEMORY

  ; Code: movl 0xb8b580(,%rax,4), %ecx	 RIP: 47d367	 Bytes: 7
  %loadMem_47d367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d367 = call %struct.Memory* @routine_movl_0xb8b580___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d367)
  store %struct.Memory* %call_47d367, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x30(%rbp)	 RIP: 47d36e	 Bytes: 3
  %loadMem_47d36e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d36e = call %struct.Memory* @routine_movl__ecx__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d36e)
  store %struct.Memory* %call_47d36e, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rax	 RIP: 47d371	 Bytes: 4
  %loadMem_47d371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d371 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d371)
  store %struct.Memory* %call_47d371, %struct.Memory** %MEMORY

  ; Code: movl 0xb00ea0(,%rax,4), %ecx	 RIP: 47d375	 Bytes: 7
  %loadMem_47d375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d375 = call %struct.Memory* @routine_movl_0xb00ea0___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d375)
  store %struct.Memory* %call_47d375, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x34(%rbp)	 RIP: 47d37c	 Bytes: 3
  %loadMem_47d37c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d37c = call %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d37c)
  store %struct.Memory* %call_47d37c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, -0x34(%rbp)	 RIP: 47d37f	 Bytes: 4
  %loadMem_47d37f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d37f = call %struct.Memory* @routine_cmpl__0x1__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d37f)
  store %struct.Memory* %call_47d37f, %struct.Memory** %MEMORY

  ; Code: jne .L_47d3b1	 RIP: 47d383	 Bytes: 6
  %loadMem_47d383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d383 = call %struct.Memory* @routine_jne_.L_47d3b1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d383, i8* %BRANCH_TAKEN, i64 46, i64 6, i64 6)
  store %struct.Memory* %call_47d383, %struct.Memory** %MEMORY

  %loadBr_47d383 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d383 = icmp eq i8 %loadBr_47d383, 1
  br i1 %cmpBr_47d383, label %block_.L_47d3b1, label %block_47d389

block_47d389:
  ; Code: movq $0xb9a0a0, %rsi	 RIP: 47d389	 Bytes: 10
  %loadMem_47d389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d389 = call %struct.Memory* @routine_movq__0xb9a0a0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d389)
  store %struct.Memory* %call_47d389, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 47d393	 Bytes: 5
  %loadMem_47d393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d393 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d393)
  store %struct.Memory* %call_47d393, %struct.Memory** %MEMORY

  ; Code: leaq -0x18(%rbp), %rcx	 RIP: 47d398	 Bytes: 4
  %loadMem_47d398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d398 = call %struct.Memory* @routine_leaq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d398)
  store %struct.Memory* %call_47d398, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 47d39c	 Bytes: 3
  %loadMem_47d39c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d39c = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d39c)
  store %struct.Memory* %call_47d39c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 47d39f	 Bytes: 2
  %loadMem_47d39f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d39f = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d39f)
  store %struct.Memory* %call_47d39f, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 47d3a1	 Bytes: 3
  %loadMem_47d3a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d3a1 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d3a1)
  store %struct.Memory* %call_47d3a1, %struct.Memory** %MEMORY

  ; Code: callq .find_eye_dragons	 RIP: 47d3a4	 Bytes: 5
  %loadMem1_47d3a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47d3a4 = call %struct.Memory* @routine_callq_.find_eye_dragons(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47d3a4, i64 -278100, i64 5, i64 5)
  store %struct.Memory* %call1_47d3a4, %struct.Memory** %MEMORY

  %loadMem2_47d3a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d3a4 = load i64, i64* %3
  %call2_47d3a4 = call %struct.Memory* @sub_439550.find_eye_dragons(%struct.State* %0, i64  %loadPC_47d3a4, %struct.Memory* %loadMem2_47d3a4)
  store %struct.Memory* %call2_47d3a4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x68(%rbp)	 RIP: 47d3a9	 Bytes: 3
  %loadMem_47d3a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d3a9 = call %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d3a9)
  store %struct.Memory* %call_47d3a9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47d3d5	 RIP: 47d3ac	 Bytes: 5
  %loadMem_47d3ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d3ac = call %struct.Memory* @routine_jmpq_.L_47d3d5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d3ac, i64 41, i64 5)
  store %struct.Memory* %call_47d3ac, %struct.Memory** %MEMORY

  br label %block_.L_47d3d5

  ; Code: .L_47d3b1:	 RIP: 47d3b1	 Bytes: 0
block_.L_47d3b1:

  ; Code: movq $0xb01180, %rsi	 RIP: 47d3b1	 Bytes: 10
  %loadMem_47d3b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d3b1 = call %struct.Memory* @routine_movq__0xb01180___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d3b1)
  store %struct.Memory* %call_47d3b1, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %edx	 RIP: 47d3bb	 Bytes: 5
  %loadMem_47d3bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d3bb = call %struct.Memory* @routine_movl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d3bb)
  store %struct.Memory* %call_47d3bb, %struct.Memory** %MEMORY

  ; Code: leaq -0x18(%rbp), %rcx	 RIP: 47d3c0	 Bytes: 4
  %loadMem_47d3c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d3c0 = call %struct.Memory* @routine_leaq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d3c0)
  store %struct.Memory* %call_47d3c0, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %r8d	 RIP: 47d3c4	 Bytes: 6
  %loadMem_47d3c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d3c4 = call %struct.Memory* @routine_movl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d3c4)
  store %struct.Memory* %call_47d3c4, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 47d3ca	 Bytes: 3
  %loadMem_47d3ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d3ca = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d3ca)
  store %struct.Memory* %call_47d3ca, %struct.Memory** %MEMORY

  ; Code: callq .find_eye_dragons	 RIP: 47d3cd	 Bytes: 5
  %loadMem1_47d3cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47d3cd = call %struct.Memory* @routine_callq_.find_eye_dragons(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47d3cd, i64 -278141, i64 5, i64 5)
  store %struct.Memory* %call1_47d3cd, %struct.Memory** %MEMORY

  %loadMem2_47d3cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d3cd = load i64, i64* %3
  %call2_47d3cd = call %struct.Memory* @sub_439550.find_eye_dragons(%struct.State* %0, i64  %loadPC_47d3cd, %struct.Memory* %loadMem2_47d3cd)
  store %struct.Memory* %call2_47d3cd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6c(%rbp)	 RIP: 47d3d2	 Bytes: 3
  %loadMem_47d3d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d3d2 = call %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d3d2)
  store %struct.Memory* %call_47d3d2, %struct.Memory** %MEMORY

  ; Code: .L_47d3d5:	 RIP: 47d3d5	 Bytes: 0
  br label %block_.L_47d3d5
block_.L_47d3d5:

  ; Code: cmpl $0x0, -0x18(%rbp)	 RIP: 47d3d5	 Bytes: 4
  %loadMem_47d3d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d3d5 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d3d5)
  store %struct.Memory* %call_47d3d5, %struct.Memory** %MEMORY

  ; Code: jne .L_47d3e4	 RIP: 47d3d9	 Bytes: 6
  %loadMem_47d3d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d3d9 = call %struct.Memory* @routine_jne_.L_47d3e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d3d9, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47d3d9, %struct.Memory** %MEMORY

  %loadBr_47d3d9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d3d9 = icmp eq i8 %loadBr_47d3d9, 1
  br i1 %cmpBr_47d3d9, label %block_.L_47d3e4, label %block_47d3df

block_47d3df:
  ; Code: jmpq .L_47d80d	 RIP: 47d3df	 Bytes: 5
  %loadMem_47d3df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d3df = call %struct.Memory* @routine_jmpq_.L_47d80d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d3df, i64 1070, i64 5)
  store %struct.Memory* %call_47d3df, %struct.Memory** %MEMORY

  br label %block_.L_47d80d

  ; Code: .L_47d3e4:	 RIP: 47d3e4	 Bytes: 0
block_.L_47d3e4:

  ; Code: jmpq .L_47d474	 RIP: 47d3e4	 Bytes: 5
  %loadMem_47d3e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d3e4 = call %struct.Memory* @routine_jmpq_.L_47d474(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d3e4, i64 144, i64 5)
  store %struct.Memory* %call_47d3e4, %struct.Memory** %MEMORY

  br label %block_.L_47d474

  ; Code: .L_47d3e9:	 RIP: 47d3e9	 Bytes: 0
block_.L_47d3e9:

  ; Code: movq $0xafdfc0, %rax	 RIP: 47d3e9	 Bytes: 10
  %loadMem_47d3e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d3e9 = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d3e9)
  store %struct.Memory* %call_47d3e9, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 47d3f3	 Bytes: 4
  %loadMem_47d3f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d3f3 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d3f3)
  store %struct.Memory* %call_47d3f3, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47d3f7	 Bytes: 4
  %loadMem_47d3f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d3f7 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d3f7)
  store %struct.Memory* %call_47d3f7, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d3fb	 Bytes: 3
  %loadMem_47d3fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d3fb = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d3fb)
  store %struct.Memory* %call_47d3fb, %struct.Memory** %MEMORY

  ; Code: cmpl $0xe, (%rax)	 RIP: 47d3fe	 Bytes: 3
  %loadMem_47d3fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d3fe = call %struct.Memory* @routine_cmpl__0xe____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d3fe)
  store %struct.Memory* %call_47d3fe, %struct.Memory** %MEMORY

  ; Code: jne .L_47d46a	 RIP: 47d401	 Bytes: 6
  %loadMem_47d401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d401 = call %struct.Memory* @routine_jne_.L_47d46a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d401, i8* %BRANCH_TAKEN, i64 105, i64 6, i64 6)
  store %struct.Memory* %call_47d401, %struct.Memory** %MEMORY

  %loadBr_47d401 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d401 = icmp eq i8 %loadBr_47d401, 1
  br i1 %cmpBr_47d401, label %block_.L_47d46a, label %block_47d407

block_47d407:
  ; Code: movq $0xb4bd20, %rax	 RIP: 47d407	 Bytes: 10
  %loadMem_47d407 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d407 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d407)
  store %struct.Memory* %call_47d407, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 47d411	 Bytes: 4
  %loadMem_47d411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d411 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d411)
  store %struct.Memory* %call_47d411, %struct.Memory** %MEMORY

  ; Code: movl 0xb8a010(,%rcx,4), %edx	 RIP: 47d415	 Bytes: 7
  %loadMem_47d415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d415 = call %struct.Memory* @routine_movl_0xb8a010___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d415)
  store %struct.Memory* %call_47d415, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x38(%rbp)	 RIP: 47d41c	 Bytes: 3
  %loadMem_47d41c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d41c = call %struct.Memory* @routine_movl__edx__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d41c)
  store %struct.Memory* %call_47d41c, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 47d41f	 Bytes: 4
  %loadMem_47d41f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d41f = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d41f)
  store %struct.Memory* %call_47d41f, %struct.Memory** %MEMORY

  ; Code: movl 0xb051b0(,%rcx,4), %edx	 RIP: 47d423	 Bytes: 7
  %loadMem_47d423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d423 = call %struct.Memory* @routine_movl_0xb051b0___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d423)
  store %struct.Memory* %call_47d423, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x3c(%rbp)	 RIP: 47d42a	 Bytes: 3
  %loadMem_47d42a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d42a = call %struct.Memory* @routine_movl__edx__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d42a)
  store %struct.Memory* %call_47d42a, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 47d42d	 Bytes: 4
  %loadMem_47d42d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d42d = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d42d)
  store %struct.Memory* %call_47d42d, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 47d431	 Bytes: 4
  %loadMem_47d431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d431 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d431)
  store %struct.Memory* %call_47d431, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 47d435	 Bytes: 3
  %loadMem_47d435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d435 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d435)
  store %struct.Memory* %call_47d435, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 47d438	 Bytes: 3
  %loadMem_47d438 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d438 = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d438)
  store %struct.Memory* %call_47d438, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rsi), %edx	 RIP: 47d43b	 Bytes: 3
  %loadMem_47d43b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d43b = call %struct.Memory* @routine_movl_0x8__rsi____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d43b)
  store %struct.Memory* %call_47d43b, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x18(%rbp)	 RIP: 47d43e	 Bytes: 3
  %loadMem_47d43e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d43e = call %struct.Memory* @routine_movl__edx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d43e)
  store %struct.Memory* %call_47d43e, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %rcx	 RIP: 47d441	 Bytes: 4
  %loadMem_47d441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d441 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d441)
  store %struct.Memory* %call_47d441, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 47d445	 Bytes: 4
  %loadMem_47d445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d445 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d445)
  store %struct.Memory* %call_47d445, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d449	 Bytes: 3
  %loadMem_47d449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d449 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d449)
  store %struct.Memory* %call_47d449, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %edx	 RIP: 47d44c	 Bytes: 3
  %loadMem_47d44c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d44c = call %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d44c)
  store %struct.Memory* %call_47d44c, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x1c(%rbp)	 RIP: 47d44f	 Bytes: 3
  %loadMem_47d44f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d44f = call %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d44f)
  store %struct.Memory* %call_47d44f, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 47d452	 Bytes: 3
  %loadMem_47d452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d452 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d452)
  store %struct.Memory* %call_47d452, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1c(%rbp), %edx	 RIP: 47d455	 Bytes: 3
  %loadMem_47d455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d455 = call %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d455)
  store %struct.Memory* %call_47d455, %struct.Memory** %MEMORY

  ; Code: jne .L_47d465	 RIP: 47d458	 Bytes: 6
  %loadMem_47d458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d458 = call %struct.Memory* @routine_jne_.L_47d465(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d458, i8* %BRANCH_TAKEN, i64 13, i64 6, i64 6)
  store %struct.Memory* %call_47d458, %struct.Memory** %MEMORY

  %loadBr_47d458 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d458 = icmp eq i8 %loadBr_47d458, 1
  br i1 %cmpBr_47d458, label %block_.L_47d465, label %block_47d45e

block_47d45e:
  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 47d45e	 Bytes: 7
  %loadMem_47d45e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d45e = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d45e)
  store %struct.Memory* %call_47d45e, %struct.Memory** %MEMORY

  ; Code: .L_47d465:	 RIP: 47d465	 Bytes: 0
  br label %block_.L_47d465
block_.L_47d465:

  ; Code: jmpq .L_47d46f	 RIP: 47d465	 Bytes: 5
  %loadMem_47d465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d465 = call %struct.Memory* @routine_jmpq_.L_47d46f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d465, i64 10, i64 5)
  store %struct.Memory* %call_47d465, %struct.Memory** %MEMORY

  br label %block_.L_47d46f

  ; Code: .L_47d46a:	 RIP: 47d46a	 Bytes: 0
block_.L_47d46a:

  ; Code: jmpq .L_47d80d	 RIP: 47d46a	 Bytes: 5
  %loadMem_47d46a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d46a = call %struct.Memory* @routine_jmpq_.L_47d80d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d46a, i64 931, i64 5)
  store %struct.Memory* %call_47d46a, %struct.Memory** %MEMORY

  br label %block_.L_47d80d

  ; Code: .L_47d46f:	 RIP: 47d46f	 Bytes: 0
block_.L_47d46f:

  ; Code: jmpq .L_47d474	 RIP: 47d46f	 Bytes: 5
  %loadMem_47d46f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d46f = call %struct.Memory* @routine_jmpq_.L_47d474(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d46f, i64 5, i64 5)
  store %struct.Memory* %call_47d46f, %struct.Memory** %MEMORY

  br label %block_.L_47d474

  ; Code: .L_47d474:	 RIP: 47d474	 Bytes: 0
block_.L_47d474:

  ; Code: jmpq .L_47d479	 RIP: 47d474	 Bytes: 5
  %loadMem_47d474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d474 = call %struct.Memory* @routine_jmpq_.L_47d479(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d474, i64 5, i64 5)
  store %struct.Memory* %call_47d474, %struct.Memory** %MEMORY

  br label %block_.L_47d479

  ; Code: .L_47d479:	 RIP: 47d479	 Bytes: 0
block_.L_47d479:

  ; Code: jmpq .L_47d47e	 RIP: 47d479	 Bytes: 5
  %loadMem_47d479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d479 = call %struct.Memory* @routine_jmpq_.L_47d47e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d479, i64 5, i64 5)
  store %struct.Memory* %call_47d479, %struct.Memory** %MEMORY

  br label %block_.L_47d47e

  ; Code: .L_47d47e:	 RIP: 47d47e	 Bytes: 0
block_.L_47d47e:

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 47d47e	 Bytes: 7
  %loadMem_47d47e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d47e = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d47e)
  store %struct.Memory* %call_47d47e, %struct.Memory** %MEMORY

  ; Code: .L_47d485:	 RIP: 47d485	 Bytes: 0
  br label %block_.L_47d485
block_.L_47d485:

  ; Code: cmpl $0x2, -0x14(%rbp)	 RIP: 47d485	 Bytes: 4
  %loadMem_47d485 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d485 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d485)
  store %struct.Memory* %call_47d485, %struct.Memory** %MEMORY

  ; Code: jge .L_47d808	 RIP: 47d489	 Bytes: 6
  %loadMem_47d489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d489 = call %struct.Memory* @routine_jge_.L_47d808(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d489, i8* %BRANCH_TAKEN, i64 895, i64 6, i64 6)
  store %struct.Memory* %call_47d489, %struct.Memory** %MEMORY

  %loadBr_47d489 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d489 = icmp eq i8 %loadBr_47d489, 1
  br i1 %cmpBr_47d489, label %block_.L_47d808, label %block_47d48f

block_47d48f:
  ; Code: cmpl $0x0, -0x14(%rbp)	 RIP: 47d48f	 Bytes: 4
  %loadMem_47d48f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d48f = call %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d48f)
  store %struct.Memory* %call_47d48f, %struct.Memory** %MEMORY

  ; Code: jne .L_47d4a4	 RIP: 47d493	 Bytes: 6
  %loadMem_47d493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d493 = call %struct.Memory* @routine_jne_.L_47d4a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d493, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_47d493, %struct.Memory** %MEMORY

  %loadBr_47d493 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d493 = icmp eq i8 %loadBr_47d493, 1
  br i1 %cmpBr_47d493, label %block_.L_47d4a4, label %block_47d499

block_47d499:
  ; Code: movl -0x18(%rbp), %eax	 RIP: 47d499	 Bytes: 3
  %loadMem_47d499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d499 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d499)
  store %struct.Memory* %call_47d499, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 47d49c	 Bytes: 3
  %loadMem_47d49c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d49c = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d49c)
  store %struct.Memory* %call_47d49c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47d4aa	 RIP: 47d49f	 Bytes: 5
  %loadMem_47d49f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d49f = call %struct.Memory* @routine_jmpq_.L_47d4aa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d49f, i64 11, i64 5)
  store %struct.Memory* %call_47d49f, %struct.Memory** %MEMORY

  br label %block_.L_47d4aa

  ; Code: .L_47d4a4:	 RIP: 47d4a4	 Bytes: 0
block_.L_47d4a4:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 47d4a4	 Bytes: 3
  %loadMem_47d4a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4a4 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4a4)
  store %struct.Memory* %call_47d4a4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 47d4a7	 Bytes: 3
  %loadMem_47d4a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4a7 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4a7)
  store %struct.Memory* %call_47d4a7, %struct.Memory** %MEMORY

  ; Code: .L_47d4aa:	 RIP: 47d4aa	 Bytes: 0
  br label %block_.L_47d4aa
block_.L_47d4aa:

  ; Code: cmpl $0x0, -0x20(%rbp)	 RIP: 47d4aa	 Bytes: 4
  %loadMem_47d4aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4aa = call %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4aa)
  store %struct.Memory* %call_47d4aa, %struct.Memory** %MEMORY

  ; Code: jne .L_47d4b9	 RIP: 47d4ae	 Bytes: 6
  %loadMem_47d4ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4ae = call %struct.Memory* @routine_jne_.L_47d4b9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4ae, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47d4ae, %struct.Memory** %MEMORY

  %loadBr_47d4ae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d4ae = icmp eq i8 %loadBr_47d4ae, 1
  br i1 %cmpBr_47d4ae, label %block_.L_47d4b9, label %block_47d4b4

block_47d4b4:
  ; Code: jmpq .L_47d7fa	 RIP: 47d4b4	 Bytes: 5
  %loadMem_47d4b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4b4 = call %struct.Memory* @routine_jmpq_.L_47d7fa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4b4, i64 838, i64 5)
  store %struct.Memory* %call_47d4b4, %struct.Memory** %MEMORY

  br label %block_.L_47d7fa

  ; Code: .L_47d4b9:	 RIP: 47d4b9	 Bytes: 0
block_.L_47d4b9:

  ; Code: movq $0xb4bd20, %rax	 RIP: 47d4b9	 Bytes: 10
  %loadMem_47d4b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4b9 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4b9)
  store %struct.Memory* %call_47d4b9, %struct.Memory** %MEMORY

  ; Code: movq 0xab0fe0, %rcx	 RIP: 47d4c3	 Bytes: 8
  %loadMem_47d4c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4c3 = call %struct.Memory* @routine_movq_0xab0fe0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4c3)
  store %struct.Memory* %call_47d4c3, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 47d4cb	 Bytes: 4
  %loadMem_47d4cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4cb = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4cb)
  store %struct.Memory* %call_47d4cb, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rdx, %rdx	 RIP: 47d4cf	 Bytes: 4
  %loadMem_47d4cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4cf = call %struct.Memory* @routine_imulq__0x4c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4cf)
  store %struct.Memory* %call_47d4cf, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 47d4d3	 Bytes: 3
  %loadMem_47d4d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4d3 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4d3)
  store %struct.Memory* %call_47d4d3, %struct.Memory** %MEMORY

  ; Code: movslq 0x4(%rax), %rax	 RIP: 47d4d6	 Bytes: 4
  %loadMem_47d4d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4d6 = call %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4d6)
  store %struct.Memory* %call_47d4d6, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, %rax, %rax	 RIP: 47d4da	 Bytes: 4
  %loadMem_47d4da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4da = call %struct.Memory* @routine_imulq__0x68___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4da)
  store %struct.Memory* %call_47d4da, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rcx	 RIP: 47d4de	 Bytes: 3
  %loadMem_47d4de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4de = call %struct.Memory* @routine_addq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4de)
  store %struct.Memory* %call_47d4de, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, 0x3c(%rcx)	 RIP: 47d4e1	 Bytes: 4
  %loadMem_47d4e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4e1 = call %struct.Memory* @routine_cmpl__0x5__0x3c__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4e1)
  store %struct.Memory* %call_47d4e1, %struct.Memory** %MEMORY

  ; Code: jne .L_47d4f0	 RIP: 47d4e5	 Bytes: 6
  %loadMem_47d4e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4e5 = call %struct.Memory* @routine_jne_.L_47d4f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4e5, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47d4e5, %struct.Memory** %MEMORY

  %loadBr_47d4e5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d4e5 = icmp eq i8 %loadBr_47d4e5, 1
  br i1 %cmpBr_47d4e5, label %block_.L_47d4f0, label %block_47d4eb

block_47d4eb:
  ; Code: jmpq .L_47d7fa	 RIP: 47d4eb	 Bytes: 5
  %loadMem_47d4eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4eb = call %struct.Memory* @routine_jmpq_.L_47d7fa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4eb, i64 783, i64 5)
  store %struct.Memory* %call_47d4eb, %struct.Memory** %MEMORY

  br label %block_.L_47d7fa

  ; Code: .L_47d4f0:	 RIP: 47d4f0	 Bytes: 0
block_.L_47d4f0:

  ; Code: movq $0xb4bd20, %rax	 RIP: 47d4f0	 Bytes: 10
  %loadMem_47d4f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4f0 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4f0)
  store %struct.Memory* %call_47d4f0, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 47d4fa	 Bytes: 4
  %loadMem_47d4fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4fa = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4fa)
  store %struct.Memory* %call_47d4fa, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 47d4fe	 Bytes: 4
  %loadMem_47d4fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4fe = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4fe)
  store %struct.Memory* %call_47d4fe, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d502	 Bytes: 3
  %loadMem_47d502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d502 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d502)
  store %struct.Memory* %call_47d502, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x1c(%rax)	 RIP: 47d505	 Bytes: 4
  %loadMem_47d505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d505 = call %struct.Memory* @routine_cmpl__0x2__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d505)
  store %struct.Memory* %call_47d505, %struct.Memory** %MEMORY

  ; Code: je .L_47d514	 RIP: 47d509	 Bytes: 6
  %loadMem_47d509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d509 = call %struct.Memory* @routine_je_.L_47d514(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d509, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47d509, %struct.Memory** %MEMORY

  %loadBr_47d509 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d509 = icmp eq i8 %loadBr_47d509, 1
  br i1 %cmpBr_47d509, label %block_.L_47d514, label %block_47d50f

block_47d50f:
  ; Code: jmpq .L_47d7fa	 RIP: 47d50f	 Bytes: 5
  %loadMem_47d50f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d50f = call %struct.Memory* @routine_jmpq_.L_47d7fa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d50f, i64 747, i64 5)
  store %struct.Memory* %call_47d50f, %struct.Memory** %MEMORY

  br label %block_.L_47d7fa

  ; Code: .L_47d514:	 RIP: 47d514	 Bytes: 0
block_.L_47d514:

  ; Code: movq $0xafdfc0, %rax	 RIP: 47d514	 Bytes: 10
  %loadMem_47d514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d514 = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d514)
  store %struct.Memory* %call_47d514, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 47d51e	 Bytes: 4
  %loadMem_47d51e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d51e = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d51e)
  store %struct.Memory* %call_47d51e, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47d522	 Bytes: 4
  %loadMem_47d522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d522 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d522)
  store %struct.Memory* %call_47d522, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d526	 Bytes: 3
  %loadMem_47d526 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d526 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d526)
  store %struct.Memory* %call_47d526, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2c, (%rax)	 RIP: 47d529	 Bytes: 3
  %loadMem_47d529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d529 = call %struct.Memory* @routine_cmpl__0x2c____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d529)
  store %struct.Memory* %call_47d529, %struct.Memory** %MEMORY

  ; Code: je .L_47d5c6	 RIP: 47d52c	 Bytes: 6
  %loadMem_47d52c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d52c = call %struct.Memory* @routine_je_.L_47d5c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d52c, i8* %BRANCH_TAKEN, i64 154, i64 6, i64 6)
  store %struct.Memory* %call_47d52c, %struct.Memory** %MEMORY

  %loadBr_47d52c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d52c = icmp eq i8 %loadBr_47d52c, 1
  br i1 %cmpBr_47d52c, label %block_.L_47d5c6, label %block_47d532

block_47d532:
  ; Code: movq $0xafdfc0, %rax	 RIP: 47d532	 Bytes: 10
  %loadMem_47d532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d532 = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d532)
  store %struct.Memory* %call_47d532, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 47d53c	 Bytes: 4
  %loadMem_47d53c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d53c = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d53c)
  store %struct.Memory* %call_47d53c, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47d540	 Bytes: 4
  %loadMem_47d540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d540 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d540)
  store %struct.Memory* %call_47d540, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d544	 Bytes: 3
  %loadMem_47d544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d544 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d544)
  store %struct.Memory* %call_47d544, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, (%rax)	 RIP: 47d547	 Bytes: 3
  %loadMem_47d547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d547 = call %struct.Memory* @routine_cmpl__0x2____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d547)
  store %struct.Memory* %call_47d547, %struct.Memory** %MEMORY

  ; Code: je .L_47d5c6	 RIP: 47d54a	 Bytes: 6
  %loadMem_47d54a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d54a = call %struct.Memory* @routine_je_.L_47d5c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d54a, i8* %BRANCH_TAKEN, i64 124, i64 6, i64 6)
  store %struct.Memory* %call_47d54a, %struct.Memory** %MEMORY

  %loadBr_47d54a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d54a = icmp eq i8 %loadBr_47d54a, 1
  br i1 %cmpBr_47d54a, label %block_.L_47d5c6, label %block_47d550

block_47d550:
  ; Code: movq $0xafdfc0, %rax	 RIP: 47d550	 Bytes: 10
  %loadMem_47d550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d550 = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d550)
  store %struct.Memory* %call_47d550, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 47d55a	 Bytes: 4
  %loadMem_47d55a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d55a = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d55a)
  store %struct.Memory* %call_47d55a, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47d55e	 Bytes: 4
  %loadMem_47d55e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d55e = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d55e)
  store %struct.Memory* %call_47d55e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d562	 Bytes: 3
  %loadMem_47d562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d562 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d562)
  store %struct.Memory* %call_47d562, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, (%rax)	 RIP: 47d565	 Bytes: 3
  %loadMem_47d565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d565 = call %struct.Memory* @routine_cmpl__0x4____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d565)
  store %struct.Memory* %call_47d565, %struct.Memory** %MEMORY

  ; Code: je .L_47d5c6	 RIP: 47d568	 Bytes: 6
  %loadMem_47d568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d568 = call %struct.Memory* @routine_je_.L_47d5c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d568, i8* %BRANCH_TAKEN, i64 94, i64 6, i64 6)
  store %struct.Memory* %call_47d568, %struct.Memory** %MEMORY

  %loadBr_47d568 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d568 = icmp eq i8 %loadBr_47d568, 1
  br i1 %cmpBr_47d568, label %block_.L_47d5c6, label %block_47d56e

block_47d56e:
  ; Code: movq $0xafdfc0, %rax	 RIP: 47d56e	 Bytes: 10
  %loadMem_47d56e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d56e = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d56e)
  store %struct.Memory* %call_47d56e, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 47d578	 Bytes: 4
  %loadMem_47d578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d578 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d578)
  store %struct.Memory* %call_47d578, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47d57c	 Bytes: 4
  %loadMem_47d57c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d57c = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d57c)
  store %struct.Memory* %call_47d57c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d580	 Bytes: 3
  %loadMem_47d580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d580 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d580)
  store %struct.Memory* %call_47d580, %struct.Memory** %MEMORY

  ; Code: cmpl $0x6, (%rax)	 RIP: 47d583	 Bytes: 3
  %loadMem_47d583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d583 = call %struct.Memory* @routine_cmpl__0x6____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d583)
  store %struct.Memory* %call_47d583, %struct.Memory** %MEMORY

  ; Code: je .L_47d5c6	 RIP: 47d586	 Bytes: 6
  %loadMem_47d586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d586 = call %struct.Memory* @routine_je_.L_47d5c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d586, i8* %BRANCH_TAKEN, i64 64, i64 6, i64 6)
  store %struct.Memory* %call_47d586, %struct.Memory** %MEMORY

  %loadBr_47d586 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d586 = icmp eq i8 %loadBr_47d586, 1
  br i1 %cmpBr_47d586, label %block_.L_47d5c6, label %block_47d58c

block_47d58c:
  ; Code: movq $0xafdfc0, %rax	 RIP: 47d58c	 Bytes: 10
  %loadMem_47d58c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d58c = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d58c)
  store %struct.Memory* %call_47d58c, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 47d596	 Bytes: 4
  %loadMem_47d596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d596 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d596)
  store %struct.Memory* %call_47d596, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47d59a	 Bytes: 4
  %loadMem_47d59a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d59a = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d59a)
  store %struct.Memory* %call_47d59a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d59e	 Bytes: 3
  %loadMem_47d59e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d59e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d59e)
  store %struct.Memory* %call_47d59e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x36, (%rax)	 RIP: 47d5a1	 Bytes: 3
  %loadMem_47d5a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5a1 = call %struct.Memory* @routine_cmpl__0x36____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5a1)
  store %struct.Memory* %call_47d5a1, %struct.Memory** %MEMORY

  ; Code: jne .L_47d679	 RIP: 47d5a4	 Bytes: 6
  %loadMem_47d5a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5a4 = call %struct.Memory* @routine_jne_.L_47d679(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5a4, i8* %BRANCH_TAKEN, i64 213, i64 6, i64 6)
  store %struct.Memory* %call_47d5a4, %struct.Memory** %MEMORY

  %loadBr_47d5a4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d5a4 = icmp eq i8 %loadBr_47d5a4, 1
  br i1 %cmpBr_47d5a4, label %block_.L_47d679, label %block_47d5aa

block_47d5aa:
  ; Code: movl $0x3, %eax	 RIP: 47d5aa	 Bytes: 5
  %loadMem_47d5aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5aa = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5aa)
  store %struct.Memory* %call_47d5aa, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 47d5af	 Bytes: 4
  %loadMem_47d5af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5af = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5af)
  store %struct.Memory* %call_47d5af, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %edx	 RIP: 47d5b3	 Bytes: 8
  %loadMem_47d5b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5b3 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5b3)
  store %struct.Memory* %call_47d5b3, %struct.Memory** %MEMORY

  ; Code: subl -0x4(%rbp), %eax	 RIP: 47d5bb	 Bytes: 3
  %loadMem_47d5bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5bb = call %struct.Memory* @routine_subl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5bb)
  store %struct.Memory* %call_47d5bb, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %edx	 RIP: 47d5be	 Bytes: 2
  %loadMem_47d5be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5be = call %struct.Memory* @routine_cmpl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5be)
  store %struct.Memory* %call_47d5be, %struct.Memory** %MEMORY

  ; Code: jne .L_47d679	 RIP: 47d5c0	 Bytes: 6
  %loadMem_47d5c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5c0 = call %struct.Memory* @routine_jne_.L_47d679(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5c0, i8* %BRANCH_TAKEN, i64 185, i64 6, i64 6)
  store %struct.Memory* %call_47d5c0, %struct.Memory** %MEMORY

  %loadBr_47d5c0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d5c0 = icmp eq i8 %loadBr_47d5c0, 1
  br i1 %cmpBr_47d5c0, label %block_.L_47d679, label %block_.L_47d5c6

  ; Code: .L_47d5c6:	 RIP: 47d5c6	 Bytes: 0
block_.L_47d5c6:

  ; Code: movl -0x8(%rbp), %edi	 RIP: 47d5c6	 Bytes: 3
  %loadMem_47d5c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5c6 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5c6)
  store %struct.Memory* %call_47d5c6, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %esi	 RIP: 47d5c9	 Bytes: 3
  %loadMem_47d5c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5c9 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5c9)
  store %struct.Memory* %call_47d5c9, %struct.Memory** %MEMORY

  ; Code: callq .owl_attack_move_reason_known	 RIP: 47d5cc	 Bytes: 5
  %loadMem1_47d5cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47d5cc = call %struct.Memory* @routine_callq_.owl_attack_move_reason_known(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47d5cc, i64 -308764, i64 5, i64 5)
  store %struct.Memory* %call1_47d5cc, %struct.Memory** %MEMORY

  %loadMem2_47d5cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d5cc = load i64, i64* %3
  %call2_47d5cc = call %struct.Memory* @sub_431fb0.owl_attack_move_reason_known(%struct.State* %0, i64  %loadPC_47d5cc, %struct.Memory* %loadMem2_47d5cc)
  store %struct.Memory* %call2_47d5cc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47d5d1	 Bytes: 3
  %loadMem_47d5d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5d1 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5d1)
  store %struct.Memory* %call_47d5d1, %struct.Memory** %MEMORY

  ; Code: jne .L_47d679	 RIP: 47d5d4	 Bytes: 6
  %loadMem_47d5d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5d4 = call %struct.Memory* @routine_jne_.L_47d679(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5d4, i8* %BRANCH_TAKEN, i64 165, i64 6, i64 6)
  store %struct.Memory* %call_47d5d4, %struct.Memory** %MEMORY

  %loadBr_47d5d4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d5d4 = icmp eq i8 %loadBr_47d5d4, 1
  br i1 %cmpBr_47d5d4, label %block_.L_47d679, label %block_47d5da

block_47d5da:
  ; Code: leaq -0x40(%rbp), %rdx	 RIP: 47d5da	 Bytes: 4
  %loadMem_47d5da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5da = call %struct.Memory* @routine_leaq_MINUS0x40__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5da)
  store %struct.Memory* %call_47d5da, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x40(%rbp)	 RIP: 47d5de	 Bytes: 7
  %loadMem_47d5de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5de = call %struct.Memory* @routine_movl__0x0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5de)
  store %struct.Memory* %call_47d5de, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edi	 RIP: 47d5e5	 Bytes: 3
  %loadMem_47d5e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5e5 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5e5)
  store %struct.Memory* %call_47d5e5, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %esi	 RIP: 47d5e8	 Bytes: 3
  %loadMem_47d5e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5e8 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5e8)
  store %struct.Memory* %call_47d5e8, %struct.Memory** %MEMORY

  ; Code: callq .owl_does_attack	 RIP: 47d5eb	 Bytes: 5
  %loadMem1_47d5eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47d5eb = call %struct.Memory* @routine_callq_.owl_does_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47d5eb, i64 -199355, i64 5, i64 5)
  store %struct.Memory* %call1_47d5eb, %struct.Memory** %MEMORY

  %loadMem2_47d5eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d5eb = load i64, i64* %3
  %call2_47d5eb = call %struct.Memory* @sub_44cb30.owl_does_attack(%struct.State* %0, i64  %loadPC_47d5eb, %struct.Memory* %loadMem2_47d5eb)
  store %struct.Memory* %call2_47d5eb, %struct.Memory** %MEMORY

  ; Code: movq $0xb4bd20, %rdx	 RIP: 47d5f0	 Bytes: 10
  %loadMem_47d5f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5f0 = call %struct.Memory* @routine_movq__0xb4bd20___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5f0)
  store %struct.Memory* %call_47d5f0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x44(%rbp)	 RIP: 47d5fa	 Bytes: 3
  %loadMem_47d5fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5fa = call %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5fa)
  store %struct.Memory* %call_47d5fa, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %eax	 RIP: 47d5fd	 Bytes: 3
  %loadMem_47d5fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5fd = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5fd)
  store %struct.Memory* %call_47d5fd, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 47d600	 Bytes: 4
  %loadMem_47d600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d600 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d600)
  store %struct.Memory* %call_47d600, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 47d604	 Bytes: 4
  %loadMem_47d604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d604 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d604)
  store %struct.Memory* %call_47d604, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 47d608	 Bytes: 3
  %loadMem_47d608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d608 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d608)
  store %struct.Memory* %call_47d608, %struct.Memory** %MEMORY

  ; Code: cmpl 0x24(%rdx), %eax	 RIP: 47d60b	 Bytes: 3
  %loadMem_47d60b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d60b = call %struct.Memory* @routine_cmpl_0x24__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d60b)
  store %struct.Memory* %call_47d60b, %struct.Memory** %MEMORY

  ; Code: jl .L_47d674	 RIP: 47d60e	 Bytes: 6
  %loadMem_47d60e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d60e = call %struct.Memory* @routine_jl_.L_47d674(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d60e, i8* %BRANCH_TAKEN, i64 102, i64 6, i64 6)
  store %struct.Memory* %call_47d60e, %struct.Memory** %MEMORY

  %loadBr_47d60e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d60e = icmp eq i8 %loadBr_47d60e, 1
  br i1 %cmpBr_47d60e, label %block_.L_47d674, label %block_47d614

block_47d614:
  ; Code: cmpl $0x3, -0x44(%rbp)	 RIP: 47d614	 Bytes: 4
  %loadMem_47d614 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d614 = call %struct.Memory* @routine_cmpl__0x3__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d614)
  store %struct.Memory* %call_47d614, %struct.Memory** %MEMORY

  ; Code: jne .L_47d631	 RIP: 47d618	 Bytes: 6
  %loadMem_47d618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d618 = call %struct.Memory* @routine_jne_.L_47d631(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d618, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_47d618, %struct.Memory** %MEMORY

  %loadBr_47d618 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d618 = icmp eq i8 %loadBr_47d618, 1
  br i1 %cmpBr_47d618, label %block_.L_47d631, label %block_47d61e

block_47d61e:
  ; Code: movl -0x8(%rbp), %edi	 RIP: 47d61e	 Bytes: 3
  %loadMem_47d61e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d61e = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d61e)
  store %struct.Memory* %call_47d61e, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %esi	 RIP: 47d621	 Bytes: 3
  %loadMem_47d621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d621 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d621)
  store %struct.Memory* %call_47d621, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %edx	 RIP: 47d624	 Bytes: 3
  %loadMem_47d624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d624 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d624)
  store %struct.Memory* %call_47d624, %struct.Memory** %MEMORY

  ; Code: callq .add_gain_move	 RIP: 47d627	 Bytes: 5
  %loadMem1_47d627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47d627 = call %struct.Memory* @routine_callq_.add_gain_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47d627, i64 -300615, i64 5, i64 5)
  store %struct.Memory* %call1_47d627, %struct.Memory** %MEMORY

  %loadMem2_47d627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d627 = load i64, i64* %3
  %call2_47d627 = call %struct.Memory* @sub_433fe0.add_gain_move(%struct.State* %0, i64  %loadPC_47d627, %struct.Memory* %loadMem2_47d627)
  store %struct.Memory* %call2_47d627, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47d63f	 RIP: 47d62c	 Bytes: 5
  %loadMem_47d62c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d62c = call %struct.Memory* @routine_jmpq_.L_47d63f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d62c, i64 19, i64 5)
  store %struct.Memory* %call_47d62c, %struct.Memory** %MEMORY

  br label %block_.L_47d63f

  ; Code: .L_47d631:	 RIP: 47d631	 Bytes: 0
block_.L_47d631:

  ; Code: movl -0x8(%rbp), %edi	 RIP: 47d631	 Bytes: 3
  %loadMem_47d631 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d631 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d631)
  store %struct.Memory* %call_47d631, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %esi	 RIP: 47d634	 Bytes: 3
  %loadMem_47d634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d634 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d634)
  store %struct.Memory* %call_47d634, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %edx	 RIP: 47d637	 Bytes: 3
  %loadMem_47d637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d637 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d637)
  store %struct.Memory* %call_47d637, %struct.Memory** %MEMORY

  ; Code: callq .add_owl_attack_move	 RIP: 47d63a	 Bytes: 5
  %loadMem1_47d63a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47d63a = call %struct.Memory* @routine_callq_.add_owl_attack_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47d63a, i64 -298938, i64 5, i64 5)
  store %struct.Memory* %call1_47d63a, %struct.Memory** %MEMORY

  %loadMem2_47d63a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d63a = load i64, i64* %3
  %call2_47d63a = call %struct.Memory* @sub_434680.add_owl_attack_move(%struct.State* %0, i64  %loadPC_47d63a, %struct.Memory* %loadMem2_47d63a)
  store %struct.Memory* %call2_47d63a, %struct.Memory** %MEMORY

  ; Code: .L_47d63f:	 RIP: 47d63f	 Bytes: 0
  br label %block_.L_47d63f
block_.L_47d63f:

  ; Code: cmpl $0x0, 0xab0f28	 RIP: 47d63f	 Bytes: 8
  %loadMem_47d63f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d63f = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d63f)
  store %struct.Memory* %call_47d63f, %struct.Memory** %MEMORY

  ; Code: jne .L_47d652	 RIP: 47d647	 Bytes: 6
  %loadMem_47d647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d647 = call %struct.Memory* @routine_jne_.L_47d652(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d647, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47d647, %struct.Memory** %MEMORY

  %loadBr_47d647 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d647 = icmp eq i8 %loadBr_47d647, 1
  br i1 %cmpBr_47d647, label %block_.L_47d652, label %block_47d64d

block_47d64d:
  ; Code: jmpq .L_47d66f	 RIP: 47d64d	 Bytes: 5
  %loadMem_47d64d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d64d = call %struct.Memory* @routine_jmpq_.L_47d66f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d64d, i64 34, i64 5)
  store %struct.Memory* %call_47d64d, %struct.Memory** %MEMORY

  br label %block_.L_47d66f

  ; Code: .L_47d652:	 RIP: 47d652	 Bytes: 0
block_.L_47d652:

  ; Code: movq $0x582d3a, %rdi	 RIP: 47d652	 Bytes: 10
  %loadMem_47d652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d652 = call %struct.Memory* @routine_movq__0x582d3a___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d652)
  store %struct.Memory* %call_47d652, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 47d65c	 Bytes: 3
  %loadMem_47d65c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d65c = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d65c)
  store %struct.Memory* %call_47d65c, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %edx	 RIP: 47d65f	 Bytes: 3
  %loadMem_47d65f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d65f = call %struct.Memory* @routine_movl_MINUS0x20__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d65f)
  store %struct.Memory* %call_47d65f, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %ecx	 RIP: 47d662	 Bytes: 3
  %loadMem_47d662 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d662 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d662)
  store %struct.Memory* %call_47d662, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 47d665	 Bytes: 2
  %loadMem_47d665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d665 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d665)
  store %struct.Memory* %call_47d665, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 47d667	 Bytes: 5
  %loadMem1_47d667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47d667 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47d667, i64 -178359, i64 5, i64 5)
  store %struct.Memory* %call1_47d667, %struct.Memory** %MEMORY

  %loadMem2_47d667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d667 = load i64, i64* %3
  %call2_47d667 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_47d667, %struct.Memory* %loadMem2_47d667)
  store %struct.Memory* %call2_47d667, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x70(%rbp)	 RIP: 47d66c	 Bytes: 3
  %loadMem_47d66c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d66c = call %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d66c)
  store %struct.Memory* %call_47d66c, %struct.Memory** %MEMORY

  ; Code: .L_47d66f:	 RIP: 47d66f	 Bytes: 0
  br label %block_.L_47d66f
block_.L_47d66f:

  ; Code: jmpq .L_47d674	 RIP: 47d66f	 Bytes: 5
  %loadMem_47d66f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d66f = call %struct.Memory* @routine_jmpq_.L_47d674(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d66f, i64 5, i64 5)
  store %struct.Memory* %call_47d66f, %struct.Memory** %MEMORY

  br label %block_.L_47d674

  ; Code: .L_47d674:	 RIP: 47d674	 Bytes: 0
block_.L_47d674:

  ; Code: jmpq .L_47d679	 RIP: 47d674	 Bytes: 5
  %loadMem_47d674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d674 = call %struct.Memory* @routine_jmpq_.L_47d679(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d674, i64 5, i64 5)
  store %struct.Memory* %call_47d674, %struct.Memory** %MEMORY

  br label %block_.L_47d679

  ; Code: .L_47d679:	 RIP: 47d679	 Bytes: 0
block_.L_47d679:

  ; Code: movq $0xafdfc0, %rax	 RIP: 47d679	 Bytes: 10
  %loadMem_47d679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d679 = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d679)
  store %struct.Memory* %call_47d679, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 47d683	 Bytes: 4
  %loadMem_47d683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d683 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d683)
  store %struct.Memory* %call_47d683, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47d687	 Bytes: 4
  %loadMem_47d687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d687 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d687)
  store %struct.Memory* %call_47d687, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d68b	 Bytes: 3
  %loadMem_47d68b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d68b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d68b)
  store %struct.Memory* %call_47d68b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2e, (%rax)	 RIP: 47d68e	 Bytes: 3
  %loadMem_47d68e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d68e = call %struct.Memory* @routine_cmpl__0x2e____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d68e)
  store %struct.Memory* %call_47d68e, %struct.Memory** %MEMORY

  ; Code: je .L_47d742	 RIP: 47d691	 Bytes: 6
  %loadMem_47d691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d691 = call %struct.Memory* @routine_je_.L_47d742(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d691, i8* %BRANCH_TAKEN, i64 177, i64 6, i64 6)
  store %struct.Memory* %call_47d691, %struct.Memory** %MEMORY

  %loadBr_47d691 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d691 = icmp eq i8 %loadBr_47d691, 1
  br i1 %cmpBr_47d691, label %block_.L_47d742, label %block_47d697

block_47d697:
  ; Code: movq $0xafdfc0, %rax	 RIP: 47d697	 Bytes: 10
  %loadMem_47d697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d697 = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d697)
  store %struct.Memory* %call_47d697, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 47d6a1	 Bytes: 4
  %loadMem_47d6a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6a1 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6a1)
  store %struct.Memory* %call_47d6a1, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47d6a5	 Bytes: 4
  %loadMem_47d6a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6a5 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6a5)
  store %struct.Memory* %call_47d6a5, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d6a9	 Bytes: 3
  %loadMem_47d6a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6a9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6a9)
  store %struct.Memory* %call_47d6a9, %struct.Memory** %MEMORY

  ; Code: cmpl $0xe, (%rax)	 RIP: 47d6ac	 Bytes: 3
  %loadMem_47d6ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6ac = call %struct.Memory* @routine_cmpl__0xe____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6ac)
  store %struct.Memory* %call_47d6ac, %struct.Memory** %MEMORY

  ; Code: je .L_47d742	 RIP: 47d6af	 Bytes: 6
  %loadMem_47d6af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6af = call %struct.Memory* @routine_je_.L_47d742(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6af, i8* %BRANCH_TAKEN, i64 147, i64 6, i64 6)
  store %struct.Memory* %call_47d6af, %struct.Memory** %MEMORY

  %loadBr_47d6af = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d6af = icmp eq i8 %loadBr_47d6af, 1
  br i1 %cmpBr_47d6af, label %block_.L_47d742, label %block_47d6b5

block_47d6b5:
  ; Code: movq $0xafdfc0, %rax	 RIP: 47d6b5	 Bytes: 10
  %loadMem_47d6b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6b5 = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6b5)
  store %struct.Memory* %call_47d6b5, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 47d6bf	 Bytes: 4
  %loadMem_47d6bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6bf = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6bf)
  store %struct.Memory* %call_47d6bf, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47d6c3	 Bytes: 4
  %loadMem_47d6c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6c3 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6c3)
  store %struct.Memory* %call_47d6c3, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d6c7	 Bytes: 3
  %loadMem_47d6c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6c7 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6c7)
  store %struct.Memory* %call_47d6c7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x8, (%rax)	 RIP: 47d6ca	 Bytes: 3
  %loadMem_47d6ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6ca = call %struct.Memory* @routine_cmpl__0x8____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6ca)
  store %struct.Memory* %call_47d6ca, %struct.Memory** %MEMORY

  ; Code: je .L_47d742	 RIP: 47d6cd	 Bytes: 6
  %loadMem_47d6cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6cd = call %struct.Memory* @routine_je_.L_47d742(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6cd, i8* %BRANCH_TAKEN, i64 117, i64 6, i64 6)
  store %struct.Memory* %call_47d6cd, %struct.Memory** %MEMORY

  %loadBr_47d6cd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d6cd = icmp eq i8 %loadBr_47d6cd, 1
  br i1 %cmpBr_47d6cd, label %block_.L_47d742, label %block_47d6d3

block_47d6d3:
  ; Code: movq $0xafdfc0, %rax	 RIP: 47d6d3	 Bytes: 10
  %loadMem_47d6d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6d3 = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6d3)
  store %struct.Memory* %call_47d6d3, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 47d6dd	 Bytes: 4
  %loadMem_47d6dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6dd = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6dd)
  store %struct.Memory* %call_47d6dd, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47d6e1	 Bytes: 4
  %loadMem_47d6e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6e1 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6e1)
  store %struct.Memory* %call_47d6e1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d6e5	 Bytes: 3
  %loadMem_47d6e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6e5 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6e5)
  store %struct.Memory* %call_47d6e5, %struct.Memory** %MEMORY

  ; Code: cmpl $0xa, (%rax)	 RIP: 47d6e8	 Bytes: 3
  %loadMem_47d6e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6e8 = call %struct.Memory* @routine_cmpl__0xa____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6e8)
  store %struct.Memory* %call_47d6e8, %struct.Memory** %MEMORY

  ; Code: je .L_47d742	 RIP: 47d6eb	 Bytes: 6
  %loadMem_47d6eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6eb = call %struct.Memory* @routine_je_.L_47d742(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6eb, i8* %BRANCH_TAKEN, i64 87, i64 6, i64 6)
  store %struct.Memory* %call_47d6eb, %struct.Memory** %MEMORY

  %loadBr_47d6eb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d6eb = icmp eq i8 %loadBr_47d6eb, 1
  br i1 %cmpBr_47d6eb, label %block_.L_47d742, label %block_47d6f1

block_47d6f1:
  ; Code: movq $0xafdfc0, %rax	 RIP: 47d6f1	 Bytes: 10
  %loadMem_47d6f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6f1 = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6f1)
  store %struct.Memory* %call_47d6f1, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 47d6fb	 Bytes: 4
  %loadMem_47d6fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6fb = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6fb)
  store %struct.Memory* %call_47d6fb, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47d6ff	 Bytes: 4
  %loadMem_47d6ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6ff = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6ff)
  store %struct.Memory* %call_47d6ff, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d703	 Bytes: 3
  %loadMem_47d703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d703 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d703)
  store %struct.Memory* %call_47d703, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc, (%rax)	 RIP: 47d706	 Bytes: 3
  %loadMem_47d706 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d706 = call %struct.Memory* @routine_cmpl__0xc____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d706)
  store %struct.Memory* %call_47d706, %struct.Memory** %MEMORY

  ; Code: je .L_47d742	 RIP: 47d709	 Bytes: 6
  %loadMem_47d709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d709 = call %struct.Memory* @routine_je_.L_47d742(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d709, i8* %BRANCH_TAKEN, i64 57, i64 6, i64 6)
  store %struct.Memory* %call_47d709, %struct.Memory** %MEMORY

  %loadBr_47d709 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d709 = icmp eq i8 %loadBr_47d709, 1
  br i1 %cmpBr_47d709, label %block_.L_47d742, label %block_47d70f

block_47d70f:
  ; Code: movq $0xafdfc0, %rax	 RIP: 47d70f	 Bytes: 10
  %loadMem_47d70f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d70f = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d70f)
  store %struct.Memory* %call_47d70f, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 47d719	 Bytes: 4
  %loadMem_47d719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d719 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d719)
  store %struct.Memory* %call_47d719, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47d71d	 Bytes: 4
  %loadMem_47d71d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d71d = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d71d)
  store %struct.Memory* %call_47d71d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d721	 Bytes: 3
  %loadMem_47d721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d721 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d721)
  store %struct.Memory* %call_47d721, %struct.Memory** %MEMORY

  ; Code: cmpl $0x36, (%rax)	 RIP: 47d724	 Bytes: 3
  %loadMem_47d724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d724 = call %struct.Memory* @routine_cmpl__0x36____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d724)
  store %struct.Memory* %call_47d724, %struct.Memory** %MEMORY

  ; Code: jne .L_47d7f5	 RIP: 47d727	 Bytes: 6
  %loadMem_47d727 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d727 = call %struct.Memory* @routine_jne_.L_47d7f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d727, i8* %BRANCH_TAKEN, i64 206, i64 6, i64 6)
  store %struct.Memory* %call_47d727, %struct.Memory** %MEMORY

  %loadBr_47d727 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d727 = icmp eq i8 %loadBr_47d727, 1
  br i1 %cmpBr_47d727, label %block_.L_47d7f5, label %block_47d72d

block_47d72d:
  ; Code: movslq -0x20(%rbp), %rax	 RIP: 47d72d	 Bytes: 4
  %loadMem_47d72d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d72d = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d72d)
  store %struct.Memory* %call_47d72d, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 47d731	 Bytes: 8
  %loadMem_47d731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d731 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d731)
  store %struct.Memory* %call_47d731, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %ecx	 RIP: 47d739	 Bytes: 3
  %loadMem_47d739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d739 = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d739)
  store %struct.Memory* %call_47d739, %struct.Memory** %MEMORY

  ; Code: jne .L_47d7f5	 RIP: 47d73c	 Bytes: 6
  %loadMem_47d73c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d73c = call %struct.Memory* @routine_jne_.L_47d7f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d73c, i8* %BRANCH_TAKEN, i64 185, i64 6, i64 6)
  store %struct.Memory* %call_47d73c, %struct.Memory** %MEMORY

  %loadBr_47d73c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d73c = icmp eq i8 %loadBr_47d73c, 1
  br i1 %cmpBr_47d73c, label %block_.L_47d7f5, label %block_.L_47d742

  ; Code: .L_47d742:	 RIP: 47d742	 Bytes: 0
block_.L_47d742:

  ; Code: movl -0x8(%rbp), %edi	 RIP: 47d742	 Bytes: 3
  %loadMem_47d742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d742 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d742)
  store %struct.Memory* %call_47d742, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %esi	 RIP: 47d745	 Bytes: 3
  %loadMem_47d745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d745 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d745)
  store %struct.Memory* %call_47d745, %struct.Memory** %MEMORY

  ; Code: callq .owl_defense_move_reason_known	 RIP: 47d748	 Bytes: 5
  %loadMem1_47d748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47d748 = call %struct.Memory* @routine_callq_.owl_defense_move_reason_known(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47d748, i64 -309000, i64 5, i64 5)
  store %struct.Memory* %call1_47d748, %struct.Memory** %MEMORY

  %loadMem2_47d748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d748 = load i64, i64* %3
  %call2_47d748 = call %struct.Memory* @sub_432040.owl_defense_move_reason_known(%struct.State* %0, i64  %loadPC_47d748, %struct.Memory* %loadMem2_47d748)
  store %struct.Memory* %call2_47d748, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47d74d	 Bytes: 3
  %loadMem_47d74d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d74d = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d74d)
  store %struct.Memory* %call_47d74d, %struct.Memory** %MEMORY

  ; Code: jne .L_47d7f5	 RIP: 47d750	 Bytes: 6
  %loadMem_47d750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d750 = call %struct.Memory* @routine_jne_.L_47d7f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d750, i8* %BRANCH_TAKEN, i64 165, i64 6, i64 6)
  store %struct.Memory* %call_47d750, %struct.Memory** %MEMORY

  %loadBr_47d750 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d750 = icmp eq i8 %loadBr_47d750, 1
  br i1 %cmpBr_47d750, label %block_.L_47d7f5, label %block_47d756

block_47d756:
  ; Code: leaq -0x48(%rbp), %rdx	 RIP: 47d756	 Bytes: 4
  %loadMem_47d756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d756 = call %struct.Memory* @routine_leaq_MINUS0x48__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d756)
  store %struct.Memory* %call_47d756, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x48(%rbp)	 RIP: 47d75a	 Bytes: 7
  %loadMem_47d75a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d75a = call %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d75a)
  store %struct.Memory* %call_47d75a, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edi	 RIP: 47d761	 Bytes: 3
  %loadMem_47d761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d761 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d761)
  store %struct.Memory* %call_47d761, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %esi	 RIP: 47d764	 Bytes: 3
  %loadMem_47d764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d764 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d764)
  store %struct.Memory* %call_47d764, %struct.Memory** %MEMORY

  ; Code: callq .owl_does_defend	 RIP: 47d767	 Bytes: 5
  %loadMem1_47d767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47d767 = call %struct.Memory* @routine_callq_.owl_does_defend(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47d767, i64 -201639, i64 5, i64 5)
  store %struct.Memory* %call1_47d767, %struct.Memory** %MEMORY

  %loadMem2_47d767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d767 = load i64, i64* %3
  %call2_47d767 = call %struct.Memory* @sub_44c3c0.owl_does_defend(%struct.State* %0, i64  %loadPC_47d767, %struct.Memory* %loadMem2_47d767)
  store %struct.Memory* %call2_47d767, %struct.Memory** %MEMORY

  ; Code: movq $0xb4bd20, %rdx	 RIP: 47d76c	 Bytes: 10
  %loadMem_47d76c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d76c = call %struct.Memory* @routine_movq__0xb4bd20___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d76c)
  store %struct.Memory* %call_47d76c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 47d776	 Bytes: 3
  %loadMem_47d776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d776 = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d776)
  store %struct.Memory* %call_47d776, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 47d779	 Bytes: 3
  %loadMem_47d779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d779 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d779)
  store %struct.Memory* %call_47d779, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 47d77c	 Bytes: 4
  %loadMem_47d77c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d77c = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d77c)
  store %struct.Memory* %call_47d77c, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 47d780	 Bytes: 4
  %loadMem_47d780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d780 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d780)
  store %struct.Memory* %call_47d780, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 47d784	 Bytes: 3
  %loadMem_47d784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d784 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d784)
  store %struct.Memory* %call_47d784, %struct.Memory** %MEMORY

  ; Code: cmpl 0x34(%rdx), %eax	 RIP: 47d787	 Bytes: 3
  %loadMem_47d787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d787 = call %struct.Memory* @routine_cmpl_0x34__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d787)
  store %struct.Memory* %call_47d787, %struct.Memory** %MEMORY

  ; Code: jl .L_47d7f0	 RIP: 47d78a	 Bytes: 6
  %loadMem_47d78a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d78a = call %struct.Memory* @routine_jl_.L_47d7f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d78a, i8* %BRANCH_TAKEN, i64 102, i64 6, i64 6)
  store %struct.Memory* %call_47d78a, %struct.Memory** %MEMORY

  %loadBr_47d78a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d78a = icmp eq i8 %loadBr_47d78a, 1
  br i1 %cmpBr_47d78a, label %block_.L_47d7f0, label %block_47d790

block_47d790:
  ; Code: cmpl $0x2, -0x4c(%rbp)	 RIP: 47d790	 Bytes: 4
  %loadMem_47d790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d790 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d790)
  store %struct.Memory* %call_47d790, %struct.Memory** %MEMORY

  ; Code: jne .L_47d7ad	 RIP: 47d794	 Bytes: 6
  %loadMem_47d794 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d794 = call %struct.Memory* @routine_jne_.L_47d7ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d794, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_47d794, %struct.Memory** %MEMORY

  %loadBr_47d794 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d794 = icmp eq i8 %loadBr_47d794, 1
  br i1 %cmpBr_47d794, label %block_.L_47d7ad, label %block_47d79a

block_47d79a:
  ; Code: movl -0x8(%rbp), %edi	 RIP: 47d79a	 Bytes: 3
  %loadMem_47d79a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d79a = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d79a)
  store %struct.Memory* %call_47d79a, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %esi	 RIP: 47d79d	 Bytes: 3
  %loadMem_47d79d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d79d = call %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d79d)
  store %struct.Memory* %call_47d79d, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %edx	 RIP: 47d7a0	 Bytes: 3
  %loadMem_47d7a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7a0 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7a0)
  store %struct.Memory* %call_47d7a0, %struct.Memory** %MEMORY

  ; Code: callq .add_loss_move	 RIP: 47d7a3	 Bytes: 5
  %loadMem1_47d7a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47d7a3 = call %struct.Memory* @routine_callq_.add_loss_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47d7a3, i64 -300483, i64 5, i64 5)
  store %struct.Memory* %call1_47d7a3, %struct.Memory** %MEMORY

  %loadMem2_47d7a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d7a3 = load i64, i64* %3
  %call2_47d7a3 = call %struct.Memory* @sub_4341e0.add_loss_move(%struct.State* %0, i64  %loadPC_47d7a3, %struct.Memory* %loadMem2_47d7a3)
  store %struct.Memory* %call2_47d7a3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47d7bb	 RIP: 47d7a8	 Bytes: 5
  %loadMem_47d7a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7a8 = call %struct.Memory* @routine_jmpq_.L_47d7bb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7a8, i64 19, i64 5)
  store %struct.Memory* %call_47d7a8, %struct.Memory** %MEMORY

  br label %block_.L_47d7bb

  ; Code: .L_47d7ad:	 RIP: 47d7ad	 Bytes: 0
block_.L_47d7ad:

  ; Code: movl -0x8(%rbp), %edi	 RIP: 47d7ad	 Bytes: 3
  %loadMem_47d7ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7ad = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7ad)
  store %struct.Memory* %call_47d7ad, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %esi	 RIP: 47d7b0	 Bytes: 3
  %loadMem_47d7b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7b0 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7b0)
  store %struct.Memory* %call_47d7b0, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edx	 RIP: 47d7b3	 Bytes: 3
  %loadMem_47d7b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7b3 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7b3)
  store %struct.Memory* %call_47d7b3, %struct.Memory** %MEMORY

  ; Code: callq .add_owl_defense_move	 RIP: 47d7b6	 Bytes: 5
  %loadMem1_47d7b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47d7b6 = call %struct.Memory* @routine_callq_.add_owl_defense_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47d7b6, i64 -299030, i64 5, i64 5)
  store %struct.Memory* %call1_47d7b6, %struct.Memory** %MEMORY

  %loadMem2_47d7b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d7b6 = load i64, i64* %3
  %call2_47d7b6 = call %struct.Memory* @sub_4347a0.add_owl_defense_move(%struct.State* %0, i64  %loadPC_47d7b6, %struct.Memory* %loadMem2_47d7b6)
  store %struct.Memory* %call2_47d7b6, %struct.Memory** %MEMORY

  ; Code: .L_47d7bb:	 RIP: 47d7bb	 Bytes: 0
  br label %block_.L_47d7bb
block_.L_47d7bb:

  ; Code: cmpl $0x0, 0xab0f28	 RIP: 47d7bb	 Bytes: 8
  %loadMem_47d7bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7bb = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7bb)
  store %struct.Memory* %call_47d7bb, %struct.Memory** %MEMORY

  ; Code: jne .L_47d7ce	 RIP: 47d7c3	 Bytes: 6
  %loadMem_47d7c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7c3 = call %struct.Memory* @routine_jne_.L_47d7ce(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7c3, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47d7c3, %struct.Memory** %MEMORY

  %loadBr_47d7c3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d7c3 = icmp eq i8 %loadBr_47d7c3, 1
  br i1 %cmpBr_47d7c3, label %block_.L_47d7ce, label %block_47d7c9

block_47d7c9:
  ; Code: jmpq .L_47d7eb	 RIP: 47d7c9	 Bytes: 5
  %loadMem_47d7c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7c9 = call %struct.Memory* @routine_jmpq_.L_47d7eb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7c9, i64 34, i64 5)
  store %struct.Memory* %call_47d7c9, %struct.Memory** %MEMORY

  br label %block_.L_47d7eb

  ; Code: .L_47d7ce:	 RIP: 47d7ce	 Bytes: 0
block_.L_47d7ce:

  ; Code: movq $0x582d63, %rdi	 RIP: 47d7ce	 Bytes: 10
  %loadMem_47d7ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7ce = call %struct.Memory* @routine_movq__0x582d63___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7ce)
  store %struct.Memory* %call_47d7ce, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 47d7d8	 Bytes: 3
  %loadMem_47d7d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7d8 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7d8)
  store %struct.Memory* %call_47d7d8, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %edx	 RIP: 47d7db	 Bytes: 3
  %loadMem_47d7db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7db = call %struct.Memory* @routine_movl_MINUS0x20__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7db)
  store %struct.Memory* %call_47d7db, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 47d7de	 Bytes: 3
  %loadMem_47d7de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7de = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7de)
  store %struct.Memory* %call_47d7de, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 47d7e1	 Bytes: 2
  %loadMem_47d7e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7e1 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7e1)
  store %struct.Memory* %call_47d7e1, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 47d7e3	 Bytes: 5
  %loadMem1_47d7e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47d7e3 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47d7e3, i64 -178739, i64 5, i64 5)
  store %struct.Memory* %call1_47d7e3, %struct.Memory** %MEMORY

  %loadMem2_47d7e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d7e3 = load i64, i64* %3
  %call2_47d7e3 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_47d7e3, %struct.Memory* %loadMem2_47d7e3)
  store %struct.Memory* %call2_47d7e3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x74(%rbp)	 RIP: 47d7e8	 Bytes: 3
  %loadMem_47d7e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7e8 = call %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7e8)
  store %struct.Memory* %call_47d7e8, %struct.Memory** %MEMORY

  ; Code: .L_47d7eb:	 RIP: 47d7eb	 Bytes: 0
  br label %block_.L_47d7eb
block_.L_47d7eb:

  ; Code: jmpq .L_47d7f0	 RIP: 47d7eb	 Bytes: 5
  %loadMem_47d7eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7eb = call %struct.Memory* @routine_jmpq_.L_47d7f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7eb, i64 5, i64 5)
  store %struct.Memory* %call_47d7eb, %struct.Memory** %MEMORY

  br label %block_.L_47d7f0

  ; Code: .L_47d7f0:	 RIP: 47d7f0	 Bytes: 0
block_.L_47d7f0:

  ; Code: jmpq .L_47d7f5	 RIP: 47d7f0	 Bytes: 5
  %loadMem_47d7f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7f0 = call %struct.Memory* @routine_jmpq_.L_47d7f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7f0, i64 5, i64 5)
  store %struct.Memory* %call_47d7f0, %struct.Memory** %MEMORY

  br label %block_.L_47d7f5

  ; Code: .L_47d7f5:	 RIP: 47d7f5	 Bytes: 0
block_.L_47d7f5:

  ; Code: jmpq .L_47d7fa	 RIP: 47d7f5	 Bytes: 5
  %loadMem_47d7f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7f5 = call %struct.Memory* @routine_jmpq_.L_47d7fa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7f5, i64 5, i64 5)
  store %struct.Memory* %call_47d7f5, %struct.Memory** %MEMORY

  br label %block_.L_47d7fa

  ; Code: .L_47d7fa:	 RIP: 47d7fa	 Bytes: 0
block_.L_47d7fa:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 47d7fa	 Bytes: 3
  %loadMem_47d7fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7fa = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7fa)
  store %struct.Memory* %call_47d7fa, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47d7fd	 Bytes: 3
  %loadMem_47d7fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7fd = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7fd)
  store %struct.Memory* %call_47d7fd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 47d800	 Bytes: 3
  %loadMem_47d800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d800 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d800)
  store %struct.Memory* %call_47d800, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47d485	 RIP: 47d803	 Bytes: 5
  %loadMem_47d803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d803 = call %struct.Memory* @routine_jmpq_.L_47d485(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d803, i64 -894, i64 5)
  store %struct.Memory* %call_47d803, %struct.Memory** %MEMORY

  br label %block_.L_47d485

  ; Code: .L_47d808:	 RIP: 47d808	 Bytes: 0
block_.L_47d808:

  ; Code: jmpq .L_47d80d	 RIP: 47d808	 Bytes: 5
  %loadMem_47d808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d808 = call %struct.Memory* @routine_jmpq_.L_47d80d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d808, i64 5, i64 5)
  store %struct.Memory* %call_47d808, %struct.Memory** %MEMORY

  br label %block_.L_47d80d

  ; Code: .L_47d80d:	 RIP: 47d80d	 Bytes: 0
block_.L_47d80d:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 47d80d	 Bytes: 3
  %loadMem_47d80d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d80d = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d80d)
  store %struct.Memory* %call_47d80d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47d810	 Bytes: 3
  %loadMem_47d810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d810 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d810)
  store %struct.Memory* %call_47d810, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 47d813	 Bytes: 3
  %loadMem_47d813 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d813 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d813)
  store %struct.Memory* %call_47d813, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47d1e1	 RIP: 47d816	 Bytes: 5
  %loadMem_47d816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d816 = call %struct.Memory* @routine_jmpq_.L_47d1e1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d816, i64 -1589, i64 5)
  store %struct.Memory* %call_47d816, %struct.Memory** %MEMORY

  br label %block_.L_47d1e1

  ; Code: .L_47d81b:	 RIP: 47d81b	 Bytes: 0
block_.L_47d81b:

  ; Code: jmpq .L_47d820	 RIP: 47d81b	 Bytes: 5
  %loadMem_47d81b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d81b = call %struct.Memory* @routine_jmpq_.L_47d820(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d81b, i64 5, i64 5)
  store %struct.Memory* %call_47d81b, %struct.Memory** %MEMORY

  br label %block_.L_47d820

  ; Code: .L_47d820:	 RIP: 47d820	 Bytes: 0
block_.L_47d820:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 47d820	 Bytes: 3
  %loadMem_47d820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d820 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d820)
  store %struct.Memory* %call_47d820, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47d823	 Bytes: 3
  %loadMem_47d823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d823 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d823)
  store %struct.Memory* %call_47d823, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 47d826	 Bytes: 3
  %loadMem_47d826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d826 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d826)
  store %struct.Memory* %call_47d826, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47d1b3	 RIP: 47d829	 Bytes: 5
  %loadMem_47d829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d829 = call %struct.Memory* @routine_jmpq_.L_47d1b3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d829, i64 -1654, i64 5)
  store %struct.Memory* %call_47d829, %struct.Memory** %MEMORY

  br label %block_.L_47d1b3

  ; Code: .L_47d82e:	 RIP: 47d82e	 Bytes: 0
block_.L_47d82e:

  ; Code: movl $0x15, -0x8(%rbp)	 RIP: 47d82e	 Bytes: 7
  %loadMem_47d82e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d82e = call %struct.Memory* @routine_movl__0x15__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d82e)
  store %struct.Memory* %call_47d82e, %struct.Memory** %MEMORY

  ; Code: .L_47d835:	 RIP: 47d835	 Bytes: 0
  br label %block_.L_47d835
block_.L_47d835:

  ; Code: cmpl $0x190, -0x8(%rbp)	 RIP: 47d835	 Bytes: 7
  %loadMem_47d835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d835 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d835)
  store %struct.Memory* %call_47d835, %struct.Memory** %MEMORY

  ; Code: jge .L_47db9a	 RIP: 47d83c	 Bytes: 6
  %loadMem_47d83c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d83c = call %struct.Memory* @routine_jge_.L_47db9a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d83c, i8* %BRANCH_TAKEN, i64 862, i64 6, i64 6)
  store %struct.Memory* %call_47d83c, %struct.Memory** %MEMORY

  %loadBr_47d83c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d83c = icmp eq i8 %loadBr_47d83c, 1
  br i1 %cmpBr_47d83c, label %block_.L_47db9a, label %block_47d842

block_47d842:
  ; Code: movslq -0x8(%rbp), %rax	 RIP: 47d842	 Bytes: 4
  %loadMem_47d842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d842 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d842)
  store %struct.Memory* %call_47d842, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 47d846	 Bytes: 8
  %loadMem_47d846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d846 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d846)
  store %struct.Memory* %call_47d846, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %ecx	 RIP: 47d84e	 Bytes: 3
  %loadMem_47d84e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d84e = call %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d84e)
  store %struct.Memory* %call_47d84e, %struct.Memory** %MEMORY

  ; Code: je .L_47d86c	 RIP: 47d851	 Bytes: 6
  %loadMem_47d851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d851 = call %struct.Memory* @routine_je_.L_47d86c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d851, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_47d851, %struct.Memory** %MEMORY

  %loadBr_47d851 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d851 = icmp eq i8 %loadBr_47d851, 1
  br i1 %cmpBr_47d851, label %block_.L_47d86c, label %block_47d857

block_47d857:
  ; Code: movslq -0x8(%rbp), %rax	 RIP: 47d857	 Bytes: 4
  %loadMem_47d857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d857 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d857)
  store %struct.Memory* %call_47d857, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 47d85b	 Bytes: 8
  %loadMem_47d85b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d85b = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d85b)
  store %struct.Memory* %call_47d85b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %ecx	 RIP: 47d863	 Bytes: 3
  %loadMem_47d863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d863 = call %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d863)
  store %struct.Memory* %call_47d863, %struct.Memory** %MEMORY

  ; Code: jne .L_47db87	 RIP: 47d866	 Bytes: 6
  %loadMem_47d866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d866 = call %struct.Memory* @routine_jne_.L_47db87(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d866, i8* %BRANCH_TAKEN, i64 801, i64 6, i64 6)
  store %struct.Memory* %call_47d866, %struct.Memory** %MEMORY

  %loadBr_47d866 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d866 = icmp eq i8 %loadBr_47d866, 1
  br i1 %cmpBr_47d866, label %block_.L_47db87, label %block_.L_47d86c

  ; Code: .L_47d86c:	 RIP: 47d86c	 Bytes: 0
block_.L_47d86c:

  ; Code: movq $0xb4bd20, %rax	 RIP: 47d86c	 Bytes: 10
  %loadMem_47d86c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d86c = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d86c)
  store %struct.Memory* %call_47d86c, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 47d876	 Bytes: 4
  %loadMem_47d876 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d876 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d876)
  store %struct.Memory* %call_47d876, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 47d87a	 Bytes: 4
  %loadMem_47d87a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d87a = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d87a)
  store %struct.Memory* %call_47d87a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d87e	 Bytes: 3
  %loadMem_47d87e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d87e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d87e)
  store %struct.Memory* %call_47d87e, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %edx	 RIP: 47d881	 Bytes: 3
  %loadMem_47d881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d881 = call %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d881)
  store %struct.Memory* %call_47d881, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %edx	 RIP: 47d884	 Bytes: 3
  %loadMem_47d884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d884 = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d884)
  store %struct.Memory* %call_47d884, %struct.Memory** %MEMORY

  ; Code: jne .L_47db87	 RIP: 47d887	 Bytes: 6
  %loadMem_47d887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d887 = call %struct.Memory* @routine_jne_.L_47db87(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d887, i8* %BRANCH_TAKEN, i64 768, i64 6, i64 6)
  store %struct.Memory* %call_47d887, %struct.Memory** %MEMORY

  %loadBr_47d887 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d887 = icmp eq i8 %loadBr_47d887, 1
  br i1 %cmpBr_47d887, label %block_.L_47db87, label %block_47d88d

block_47d88d:
  ; Code: movq $0xb4bd20, %rax	 RIP: 47d88d	 Bytes: 10
  %loadMem_47d88d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d88d = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d88d)
  store %struct.Memory* %call_47d88d, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 47d897	 Bytes: 4
  %loadMem_47d897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d897 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d897)
  store %struct.Memory* %call_47d897, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 47d89b	 Bytes: 4
  %loadMem_47d89b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d89b = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d89b)
  store %struct.Memory* %call_47d89b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d89f	 Bytes: 3
  %loadMem_47d89f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d89f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d89f)
  store %struct.Memory* %call_47d89f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x1c(%rax)	 RIP: 47d8a2	 Bytes: 4
  %loadMem_47d8a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d8a2 = call %struct.Memory* @routine_cmpl__0x2__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d8a2)
  store %struct.Memory* %call_47d8a2, %struct.Memory** %MEMORY

  ; Code: jne .L_47db87	 RIP: 47d8a6	 Bytes: 6
  %loadMem_47d8a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d8a6 = call %struct.Memory* @routine_jne_.L_47db87(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d8a6, i8* %BRANCH_TAKEN, i64 737, i64 6, i64 6)
  store %struct.Memory* %call_47d8a6, %struct.Memory** %MEMORY

  %loadBr_47d8a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d8a6 = icmp eq i8 %loadBr_47d8a6, 1
  br i1 %cmpBr_47d8a6, label %block_.L_47db87, label %block_47d8ac

block_47d8ac:
  ; Code: movl $0x15, -0xc(%rbp)	 RIP: 47d8ac	 Bytes: 7
  %loadMem_47d8ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d8ac = call %struct.Memory* @routine_movl__0x15__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d8ac)
  store %struct.Memory* %call_47d8ac, %struct.Memory** %MEMORY

  ; Code: .L_47d8b3:	 RIP: 47d8b3	 Bytes: 0
  br label %block_.L_47d8b3
block_.L_47d8b3:

  ; Code: cmpl $0x190, -0xc(%rbp)	 RIP: 47d8b3	 Bytes: 7
  %loadMem_47d8b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d8b3 = call %struct.Memory* @routine_cmpl__0x190__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d8b3)
  store %struct.Memory* %call_47d8b3, %struct.Memory** %MEMORY

  ; Code: jge .L_47db82	 RIP: 47d8ba	 Bytes: 6
  %loadMem_47d8ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d8ba = call %struct.Memory* @routine_jge_.L_47db82(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d8ba, i8* %BRANCH_TAKEN, i64 712, i64 6, i64 6)
  store %struct.Memory* %call_47d8ba, %struct.Memory** %MEMORY

  %loadBr_47d8ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d8ba = icmp eq i8 %loadBr_47d8ba, 1
  br i1 %cmpBr_47d8ba, label %block_.L_47db82, label %block_47d8c0

block_47d8c0:
  ; Code: movslq -0xc(%rbp), %rax	 RIP: 47d8c0	 Bytes: 4
  %loadMem_47d8c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d8c0 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d8c0)
  store %struct.Memory* %call_47d8c0, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 47d8c4	 Bytes: 8
  %loadMem_47d8c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d8c4 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d8c4)
  store %struct.Memory* %call_47d8c4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 47d8cc	 Bytes: 3
  %loadMem_47d8cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d8cc = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d8cc)
  store %struct.Memory* %call_47d8cc, %struct.Memory** %MEMORY

  ; Code: je .L_47d8da	 RIP: 47d8cf	 Bytes: 6
  %loadMem_47d8cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d8cf = call %struct.Memory* @routine_je_.L_47d8da(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d8cf, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47d8cf, %struct.Memory** %MEMORY

  %loadBr_47d8cf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d8cf = icmp eq i8 %loadBr_47d8cf, 1
  br i1 %cmpBr_47d8cf, label %block_.L_47d8da, label %block_47d8d5

block_47d8d5:
  ; Code: jmpq .L_47db74	 RIP: 47d8d5	 Bytes: 5
  %loadMem_47d8d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d8d5 = call %struct.Memory* @routine_jmpq_.L_47db74(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d8d5, i64 671, i64 5)
  store %struct.Memory* %call_47d8d5, %struct.Memory** %MEMORY

  br label %block_.L_47db74

  ; Code: .L_47d8da:	 RIP: 47d8da	 Bytes: 0
block_.L_47d8da:

  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 47d8da	 Bytes: 7
  %loadMem_47d8da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d8da = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d8da)
  store %struct.Memory* %call_47d8da, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 47d8e1	 Bytes: 7
  %loadMem_47d8e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d8e1 = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d8e1)
  store %struct.Memory* %call_47d8e1, %struct.Memory** %MEMORY

  ; Code: .L_47d8e8:	 RIP: 47d8e8	 Bytes: 0
  br label %block_.L_47d8e8
block_.L_47d8e8:

  ; Code: cmpl $0x78, -0x10(%rbp)	 RIP: 47d8e8	 Bytes: 4
  %loadMem_47d8e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d8e8 = call %struct.Memory* @routine_cmpl__0x78__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d8e8)
  store %struct.Memory* %call_47d8e8, %struct.Memory** %MEMORY

  ; Code: jge .L_47da2b	 RIP: 47d8ec	 Bytes: 6
  %loadMem_47d8ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d8ec = call %struct.Memory* @routine_jge_.L_47da2b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d8ec, i8* %BRANCH_TAKEN, i64 319, i64 6, i64 6)
  store %struct.Memory* %call_47d8ec, %struct.Memory** %MEMORY

  %loadBr_47d8ec = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d8ec = icmp eq i8 %loadBr_47d8ec, 1
  br i1 %cmpBr_47d8ec, label %block_.L_47da2b, label %block_47d8f2

block_47d8f2:
  ; Code: movq $0xb9d8f0, %rax	 RIP: 47d8f2	 Bytes: 10
  %loadMem_47d8f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d8f2 = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d8f2)
  store %struct.Memory* %call_47d8f2, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 47d8fc	 Bytes: 4
  %loadMem_47d8fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d8fc = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d8fc)
  store %struct.Memory* %call_47d8fc, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 47d900	 Bytes: 7
  %loadMem_47d900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d900 = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d900)
  store %struct.Memory* %call_47d900, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d907	 Bytes: 3
  %loadMem_47d907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d907 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d907)
  store %struct.Memory* %call_47d907, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 47d90a	 Bytes: 4
  %loadMem_47d90a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d90a = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d90a)
  store %struct.Memory* %call_47d90a, %struct.Memory** %MEMORY

  ; Code: movl 0x48(%rax,%rcx,4), %edx	 RIP: 47d90e	 Bytes: 4
  %loadMem_47d90e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d90e = call %struct.Memory* @routine_movl_0x48__rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d90e)
  store %struct.Memory* %call_47d90e, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x50(%rbp)	 RIP: 47d912	 Bytes: 3
  %loadMem_47d912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d912 = call %struct.Memory* @routine_movl__edx__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d912)
  store %struct.Memory* %call_47d912, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x50(%rbp)	 RIP: 47d915	 Bytes: 4
  %loadMem_47d915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d915 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d915)
  store %struct.Memory* %call_47d915, %struct.Memory** %MEMORY

  ; Code: jge .L_47d924	 RIP: 47d919	 Bytes: 6
  %loadMem_47d919 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d919 = call %struct.Memory* @routine_jge_.L_47d924(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d919, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47d919, %struct.Memory** %MEMORY

  %loadBr_47d919 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d919 = icmp eq i8 %loadBr_47d919, 1
  br i1 %cmpBr_47d919, label %block_.L_47d924, label %block_47d91f

block_47d91f:
  ; Code: jmpq .L_47da2b	 RIP: 47d91f	 Bytes: 5
  %loadMem_47d91f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d91f = call %struct.Memory* @routine_jmpq_.L_47da2b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d91f, i64 268, i64 5)
  store %struct.Memory* %call_47d91f, %struct.Memory** %MEMORY

  br label %block_.L_47da2b

  ; Code: .L_47d924:	 RIP: 47d924	 Bytes: 0
block_.L_47d924:

  ; Code: movq $0xafdfc0, %rax	 RIP: 47d924	 Bytes: 10
  %loadMem_47d924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d924 = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d924)
  store %struct.Memory* %call_47d924, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 47d92e	 Bytes: 4
  %loadMem_47d92e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d92e = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d92e)
  store %struct.Memory* %call_47d92e, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47d932	 Bytes: 4
  %loadMem_47d932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d932 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d932)
  store %struct.Memory* %call_47d932, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d936	 Bytes: 3
  %loadMem_47d936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d936 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d936)
  store %struct.Memory* %call_47d936, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1a, (%rax)	 RIP: 47d939	 Bytes: 3
  %loadMem_47d939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d939 = call %struct.Memory* @routine_cmpl__0x1a____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d939)
  store %struct.Memory* %call_47d939, %struct.Memory** %MEMORY

  ; Code: je .L_47d9d8	 RIP: 47d93c	 Bytes: 6
  %loadMem_47d93c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d93c = call %struct.Memory* @routine_je_.L_47d9d8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d93c, i8* %BRANCH_TAKEN, i64 156, i64 6, i64 6)
  store %struct.Memory* %call_47d93c, %struct.Memory** %MEMORY

  %loadBr_47d93c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d93c = icmp eq i8 %loadBr_47d93c, 1
  br i1 %cmpBr_47d93c, label %block_.L_47d9d8, label %block_47d942

block_47d942:
  ; Code: movq $0xafdfc0, %rax	 RIP: 47d942	 Bytes: 10
  %loadMem_47d942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d942 = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d942)
  store %struct.Memory* %call_47d942, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 47d94c	 Bytes: 4
  %loadMem_47d94c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d94c = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d94c)
  store %struct.Memory* %call_47d94c, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47d950	 Bytes: 4
  %loadMem_47d950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d950 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d950)
  store %struct.Memory* %call_47d950, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d954	 Bytes: 3
  %loadMem_47d954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d954 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d954)
  store %struct.Memory* %call_47d954, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1c, (%rax)	 RIP: 47d957	 Bytes: 3
  %loadMem_47d957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d957 = call %struct.Memory* @routine_cmpl__0x1c____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d957)
  store %struct.Memory* %call_47d957, %struct.Memory** %MEMORY

  ; Code: je .L_47d9d8	 RIP: 47d95a	 Bytes: 6
  %loadMem_47d95a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d95a = call %struct.Memory* @routine_je_.L_47d9d8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d95a, i8* %BRANCH_TAKEN, i64 126, i64 6, i64 6)
  store %struct.Memory* %call_47d95a, %struct.Memory** %MEMORY

  %loadBr_47d95a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d95a = icmp eq i8 %loadBr_47d95a, 1
  br i1 %cmpBr_47d95a, label %block_.L_47d9d8, label %block_47d960

block_47d960:
  ; Code: movq $0xafdfc0, %rax	 RIP: 47d960	 Bytes: 10
  %loadMem_47d960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d960 = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d960)
  store %struct.Memory* %call_47d960, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 47d96a	 Bytes: 4
  %loadMem_47d96a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d96a = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d96a)
  store %struct.Memory* %call_47d96a, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47d96e	 Bytes: 4
  %loadMem_47d96e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d96e = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d96e)
  store %struct.Memory* %call_47d96e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d972	 Bytes: 3
  %loadMem_47d972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d972 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d972)
  store %struct.Memory* %call_47d972, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1e, (%rax)	 RIP: 47d975	 Bytes: 3
  %loadMem_47d975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d975 = call %struct.Memory* @routine_cmpl__0x1e____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d975)
  store %struct.Memory* %call_47d975, %struct.Memory** %MEMORY

  ; Code: je .L_47d9d8	 RIP: 47d978	 Bytes: 6
  %loadMem_47d978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d978 = call %struct.Memory* @routine_je_.L_47d9d8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d978, i8* %BRANCH_TAKEN, i64 96, i64 6, i64 6)
  store %struct.Memory* %call_47d978, %struct.Memory** %MEMORY

  %loadBr_47d978 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d978 = icmp eq i8 %loadBr_47d978, 1
  br i1 %cmpBr_47d978, label %block_.L_47d9d8, label %block_47d97e

block_47d97e:
  ; Code: movq $0xafdfc0, %rax	 RIP: 47d97e	 Bytes: 10
  %loadMem_47d97e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d97e = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d97e)
  store %struct.Memory* %call_47d97e, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 47d988	 Bytes: 4
  %loadMem_47d988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d988 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d988)
  store %struct.Memory* %call_47d988, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47d98c	 Bytes: 4
  %loadMem_47d98c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d98c = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d98c)
  store %struct.Memory* %call_47d98c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d990	 Bytes: 3
  %loadMem_47d990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d990 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d990)
  store %struct.Memory* %call_47d990, %struct.Memory** %MEMORY

  ; Code: cmpl $0x20, (%rax)	 RIP: 47d993	 Bytes: 3
  %loadMem_47d993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d993 = call %struct.Memory* @routine_cmpl__0x20____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d993)
  store %struct.Memory* %call_47d993, %struct.Memory** %MEMORY

  ; Code: je .L_47d9d8	 RIP: 47d996	 Bytes: 6
  %loadMem_47d996 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d996 = call %struct.Memory* @routine_je_.L_47d9d8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d996, i8* %BRANCH_TAKEN, i64 66, i64 6, i64 6)
  store %struct.Memory* %call_47d996, %struct.Memory** %MEMORY

  %loadBr_47d996 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d996 = icmp eq i8 %loadBr_47d996, 1
  br i1 %cmpBr_47d996, label %block_.L_47d9d8, label %block_47d99c

block_47d99c:
  ; Code: movq $0xafdfc0, %rax	 RIP: 47d99c	 Bytes: 10
  %loadMem_47d99c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d99c = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d99c)
  store %struct.Memory* %call_47d99c, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 47d9a6	 Bytes: 4
  %loadMem_47d9a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9a6 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9a6)
  store %struct.Memory* %call_47d9a6, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47d9aa	 Bytes: 4
  %loadMem_47d9aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9aa = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9aa)
  store %struct.Memory* %call_47d9aa, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d9ae	 Bytes: 3
  %loadMem_47d9ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9ae = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9ae)
  store %struct.Memory* %call_47d9ae, %struct.Memory** %MEMORY

  ; Code: cmpl $0x22, (%rax)	 RIP: 47d9b1	 Bytes: 3
  %loadMem_47d9b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9b1 = call %struct.Memory* @routine_cmpl__0x22____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9b1)
  store %struct.Memory* %call_47d9b1, %struct.Memory** %MEMORY

  ; Code: je .L_47d9d8	 RIP: 47d9b4	 Bytes: 6
  %loadMem_47d9b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9b4 = call %struct.Memory* @routine_je_.L_47d9d8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9b4, i8* %BRANCH_TAKEN, i64 36, i64 6, i64 6)
  store %struct.Memory* %call_47d9b4, %struct.Memory** %MEMORY

  %loadBr_47d9b4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d9b4 = icmp eq i8 %loadBr_47d9b4, 1
  br i1 %cmpBr_47d9b4, label %block_.L_47d9d8, label %block_47d9ba

block_47d9ba:
  ; Code: movq $0xafdfc0, %rax	 RIP: 47d9ba	 Bytes: 10
  %loadMem_47d9ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9ba = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9ba)
  store %struct.Memory* %call_47d9ba, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 47d9c4	 Bytes: 4
  %loadMem_47d9c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9c4 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9c4)
  store %struct.Memory* %call_47d9c4, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47d9c8	 Bytes: 4
  %loadMem_47d9c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9c8 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9c8)
  store %struct.Memory* %call_47d9c8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d9cc	 Bytes: 3
  %loadMem_47d9cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9cc = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9cc)
  store %struct.Memory* %call_47d9cc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x24, (%rax)	 RIP: 47d9cf	 Bytes: 3
  %loadMem_47d9cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9cf = call %struct.Memory* @routine_cmpl__0x24____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9cf)
  store %struct.Memory* %call_47d9cf, %struct.Memory** %MEMORY

  ; Code: jne .L_47da18	 RIP: 47d9d2	 Bytes: 6
  %loadMem_47d9d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9d2 = call %struct.Memory* @routine_jne_.L_47da18(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9d2, i8* %BRANCH_TAKEN, i64 70, i64 6, i64 6)
  store %struct.Memory* %call_47d9d2, %struct.Memory** %MEMORY

  %loadBr_47d9d2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d9d2 = icmp eq i8 %loadBr_47d9d2, 1
  br i1 %cmpBr_47d9d2, label %block_.L_47da18, label %block_.L_47d9d8

  ; Code: .L_47d9d8:	 RIP: 47d9d8	 Bytes: 0
block_.L_47d9d8:

  ; Code: movq $0xafdfc0, %rax	 RIP: 47d9d8	 Bytes: 10
  %loadMem_47d9d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9d8 = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9d8)
  store %struct.Memory* %call_47d9d8, %struct.Memory** %MEMORY

  ; Code: movslq -0x50(%rbp), %rcx	 RIP: 47d9e2	 Bytes: 4
  %loadMem_47d9e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9e2 = call %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9e2)
  store %struct.Memory* %call_47d9e2, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47d9e6	 Bytes: 4
  %loadMem_47d9e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9e6 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9e6)
  store %struct.Memory* %call_47d9e6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47d9ea	 Bytes: 3
  %loadMem_47d9ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9ea = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9ea)
  store %struct.Memory* %call_47d9ea, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 47d9ed	 Bytes: 3
  %loadMem_47d9ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9ed = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9ed)
  store %struct.Memory* %call_47d9ed, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x20(%rbp)	 RIP: 47d9f0	 Bytes: 3
  %loadMem_47d9f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9f0 = call %struct.Memory* @routine_movl__edx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9f0)
  store %struct.Memory* %call_47d9f0, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %edi	 RIP: 47d9f3	 Bytes: 3
  %loadMem_47d9f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9f3 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9f3)
  store %struct.Memory* %call_47d9f3, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 47d9f6	 Bytes: 3
  %loadMem_47d9f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9f6 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9f6)
  store %struct.Memory* %call_47d9f6, %struct.Memory** %MEMORY

  ; Code: callq .are_neighbor_dragons	 RIP: 47d9f9	 Bytes: 5
  %loadMem1_47d9f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47d9f9 = call %struct.Memory* @routine_callq_.are_neighbor_dragons(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47d9f9, i64 -370905, i64 5, i64 5)
  store %struct.Memory* %call1_47d9f9, %struct.Memory** %MEMORY

  %loadMem2_47d9f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d9f9 = load i64, i64* %3
  %call2_47d9f9 = call %struct.Memory* @sub_423120.are_neighbor_dragons(%struct.State* %0, i64  %loadPC_47d9f9, %struct.Memory* %loadMem2_47d9f9)
  store %struct.Memory* %call2_47d9f9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47d9fe	 Bytes: 3
  %loadMem_47d9fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9fe = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9fe)
  store %struct.Memory* %call_47d9fe, %struct.Memory** %MEMORY

  ; Code: je .L_47da13	 RIP: 47da01	 Bytes: 6
  %loadMem_47da01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da01 = call %struct.Memory* @routine_je_.L_47da13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da01, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_47da01, %struct.Memory** %MEMORY

  %loadBr_47da01 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47da01 = icmp eq i8 %loadBr_47da01, 1
  br i1 %cmpBr_47da01, label %block_.L_47da13, label %block_47da07

block_47da07:
  ; Code: movl $0x1, -0x24(%rbp)	 RIP: 47da07	 Bytes: 7
  %loadMem_47da07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da07 = call %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da07)
  store %struct.Memory* %call_47da07, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47da2b	 RIP: 47da0e	 Bytes: 5
  %loadMem_47da0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da0e = call %struct.Memory* @routine_jmpq_.L_47da2b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da0e, i64 29, i64 5)
  store %struct.Memory* %call_47da0e, %struct.Memory** %MEMORY

  br label %block_.L_47da2b

  ; Code: .L_47da13:	 RIP: 47da13	 Bytes: 0
block_.L_47da13:

  ; Code: jmpq .L_47da18	 RIP: 47da13	 Bytes: 5
  %loadMem_47da13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da13 = call %struct.Memory* @routine_jmpq_.L_47da18(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da13, i64 5, i64 5)
  store %struct.Memory* %call_47da13, %struct.Memory** %MEMORY

  br label %block_.L_47da18

  ; Code: .L_47da18:	 RIP: 47da18	 Bytes: 0
block_.L_47da18:

  ; Code: jmpq .L_47da1d	 RIP: 47da18	 Bytes: 5
  %loadMem_47da18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da18 = call %struct.Memory* @routine_jmpq_.L_47da1d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da18, i64 5, i64 5)
  store %struct.Memory* %call_47da18, %struct.Memory** %MEMORY

  br label %block_.L_47da1d

  ; Code: .L_47da1d:	 RIP: 47da1d	 Bytes: 0
block_.L_47da1d:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 47da1d	 Bytes: 3
  %loadMem_47da1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da1d = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da1d)
  store %struct.Memory* %call_47da1d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47da20	 Bytes: 3
  %loadMem_47da20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da20 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da20)
  store %struct.Memory* %call_47da20, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 47da23	 Bytes: 3
  %loadMem_47da23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da23 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da23)
  store %struct.Memory* %call_47da23, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47d8e8	 RIP: 47da26	 Bytes: 5
  %loadMem_47da26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da26 = call %struct.Memory* @routine_jmpq_.L_47d8e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da26, i64 -318, i64 5)
  store %struct.Memory* %call_47da26, %struct.Memory** %MEMORY

  br label %block_.L_47d8e8

  ; Code: .L_47da2b:	 RIP: 47da2b	 Bytes: 0
block_.L_47da2b:

  ; Code: cmpl $0x0, -0x24(%rbp)	 RIP: 47da2b	 Bytes: 4
  %loadMem_47da2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da2b = call %struct.Memory* @routine_cmpl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da2b)
  store %struct.Memory* %call_47da2b, %struct.Memory** %MEMORY

  ; Code: je .L_47db6f	 RIP: 47da2f	 Bytes: 6
  %loadMem_47da2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da2f = call %struct.Memory* @routine_je_.L_47db6f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da2f, i8* %BRANCH_TAKEN, i64 320, i64 6, i64 6)
  store %struct.Memory* %call_47da2f, %struct.Memory** %MEMORY

  %loadBr_47da2f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47da2f = icmp eq i8 %loadBr_47da2f, 1
  br i1 %cmpBr_47da2f, label %block_.L_47db6f, label %block_47da35

block_47da35:
  ; Code: movslq -0x8(%rbp), %rax	 RIP: 47da35	 Bytes: 4
  %loadMem_47da35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da35 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da35)
  store %struct.Memory* %call_47da35, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 47da39	 Bytes: 8
  %loadMem_47da39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da39 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da39)
  store %struct.Memory* %call_47da39, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %ecx	 RIP: 47da41	 Bytes: 3
  %loadMem_47da41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da41 = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da41)
  store %struct.Memory* %call_47da41, %struct.Memory** %MEMORY

  ; Code: jne .L_47dacd	 RIP: 47da44	 Bytes: 6
  %loadMem_47da44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da44 = call %struct.Memory* @routine_jne_.L_47dacd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da44, i8* %BRANCH_TAKEN, i64 137, i64 6, i64 6)
  store %struct.Memory* %call_47da44, %struct.Memory** %MEMORY

  %loadBr_47da44 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47da44 = icmp eq i8 %loadBr_47da44, 1
  br i1 %cmpBr_47da44, label %block_.L_47dacd, label %block_47da4a

block_47da4a:
  ; Code: movl -0xc(%rbp), %edi	 RIP: 47da4a	 Bytes: 3
  %loadMem_47da4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da4a = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da4a)
  store %struct.Memory* %call_47da4a, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 47da4d	 Bytes: 3
  %loadMem_47da4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da4d = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da4d)
  store %struct.Memory* %call_47da4d, %struct.Memory** %MEMORY

  ; Code: callq .owl_defense_move_reason_known	 RIP: 47da50	 Bytes: 5
  %loadMem1_47da50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47da50 = call %struct.Memory* @routine_callq_.owl_defense_move_reason_known(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47da50, i64 -309776, i64 5, i64 5)
  store %struct.Memory* %call1_47da50, %struct.Memory** %MEMORY

  %loadMem2_47da50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47da50 = load i64, i64* %3
  %call2_47da50 = call %struct.Memory* @sub_432040.owl_defense_move_reason_known(%struct.State* %0, i64  %loadPC_47da50, %struct.Memory* %loadMem2_47da50)
  store %struct.Memory* %call2_47da50, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47da55	 Bytes: 3
  %loadMem_47da55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da55 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da55)
  store %struct.Memory* %call_47da55, %struct.Memory** %MEMORY

  ; Code: jne .L_47dacd	 RIP: 47da58	 Bytes: 6
  %loadMem_47da58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da58 = call %struct.Memory* @routine_jne_.L_47dacd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da58, i8* %BRANCH_TAKEN, i64 117, i64 6, i64 6)
  store %struct.Memory* %call_47da58, %struct.Memory** %MEMORY

  %loadBr_47da58 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47da58 = icmp eq i8 %loadBr_47da58, 1
  br i1 %cmpBr_47da58, label %block_.L_47dacd, label %block_47da5e

block_47da5e:
  ; Code: leaq -0x54(%rbp), %rdx	 RIP: 47da5e	 Bytes: 4
  %loadMem_47da5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da5e = call %struct.Memory* @routine_leaq_MINUS0x54__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da5e)
  store %struct.Memory* %call_47da5e, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x54(%rbp)	 RIP: 47da62	 Bytes: 7
  %loadMem_47da62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da62 = call %struct.Memory* @routine_movl__0x0__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da62)
  store %struct.Memory* %call_47da62, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edi	 RIP: 47da69	 Bytes: 3
  %loadMem_47da69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da69 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da69)
  store %struct.Memory* %call_47da69, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 47da6c	 Bytes: 3
  %loadMem_47da6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da6c = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da6c)
  store %struct.Memory* %call_47da6c, %struct.Memory** %MEMORY

  ; Code: callq .owl_does_defend	 RIP: 47da6f	 Bytes: 5
  %loadMem1_47da6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47da6f = call %struct.Memory* @routine_callq_.owl_does_defend(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47da6f, i64 -202415, i64 5, i64 5)
  store %struct.Memory* %call1_47da6f, %struct.Memory** %MEMORY

  %loadMem2_47da6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47da6f = load i64, i64* %3
  %call2_47da6f = call %struct.Memory* @sub_44c3c0.owl_does_defend(%struct.State* %0, i64  %loadPC_47da6f, %struct.Memory* %loadMem2_47da6f)
  store %struct.Memory* %call2_47da6f, %struct.Memory** %MEMORY

  ; Code: movq $0xb4bd20, %rdx	 RIP: 47da74	 Bytes: 10
  %loadMem_47da74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da74 = call %struct.Memory* @routine_movq__0xb4bd20___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da74)
  store %struct.Memory* %call_47da74, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x58(%rbp)	 RIP: 47da7e	 Bytes: 3
  %loadMem_47da7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da7e = call %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da7e)
  store %struct.Memory* %call_47da7e, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp), %eax	 RIP: 47da81	 Bytes: 3
  %loadMem_47da81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da81 = call %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da81)
  store %struct.Memory* %call_47da81, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 47da84	 Bytes: 4
  %loadMem_47da84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da84 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da84)
  store %struct.Memory* %call_47da84, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 47da88	 Bytes: 4
  %loadMem_47da88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da88 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da88)
  store %struct.Memory* %call_47da88, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 47da8c	 Bytes: 3
  %loadMem_47da8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da8c = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da8c)
  store %struct.Memory* %call_47da8c, %struct.Memory** %MEMORY

  ; Code: cmpl 0x34(%rdx), %eax	 RIP: 47da8f	 Bytes: 3
  %loadMem_47da8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da8f = call %struct.Memory* @routine_cmpl_0x34__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da8f)
  store %struct.Memory* %call_47da8f, %struct.Memory** %MEMORY

  ; Code: jl .L_47dac8	 RIP: 47da92	 Bytes: 6
  %loadMem_47da92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da92 = call %struct.Memory* @routine_jl_.L_47dac8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da92, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_47da92, %struct.Memory** %MEMORY

  %loadBr_47da92 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47da92 = icmp eq i8 %loadBr_47da92, 1
  br i1 %cmpBr_47da92, label %block_.L_47dac8, label %block_47da98

block_47da98:
  ; Code: cmpl $0x2, -0x58(%rbp)	 RIP: 47da98	 Bytes: 4
  %loadMem_47da98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da98 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da98)
  store %struct.Memory* %call_47da98, %struct.Memory** %MEMORY

  ; Code: jne .L_47dab5	 RIP: 47da9c	 Bytes: 6
  %loadMem_47da9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da9c = call %struct.Memory* @routine_jne_.L_47dab5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da9c, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_47da9c, %struct.Memory** %MEMORY

  %loadBr_47da9c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47da9c = icmp eq i8 %loadBr_47da9c, 1
  br i1 %cmpBr_47da9c, label %block_.L_47dab5, label %block_47daa2

block_47daa2:
  ; Code: movl -0xc(%rbp), %edi	 RIP: 47daa2	 Bytes: 3
  %loadMem_47daa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47daa2 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47daa2)
  store %struct.Memory* %call_47daa2, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 47daa5	 Bytes: 3
  %loadMem_47daa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47daa5 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47daa5)
  store %struct.Memory* %call_47daa5, %struct.Memory** %MEMORY

  ; Code: movl -0x54(%rbp), %edx	 RIP: 47daa8	 Bytes: 3
  %loadMem_47daa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47daa8 = call %struct.Memory* @routine_movl_MINUS0x54__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47daa8)
  store %struct.Memory* %call_47daa8, %struct.Memory** %MEMORY

  ; Code: callq .add_loss_move	 RIP: 47daab	 Bytes: 5
  %loadMem1_47daab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47daab = call %struct.Memory* @routine_callq_.add_loss_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47daab, i64 -301259, i64 5, i64 5)
  store %struct.Memory* %call1_47daab, %struct.Memory** %MEMORY

  %loadMem2_47daab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47daab = load i64, i64* %3
  %call2_47daab = call %struct.Memory* @sub_4341e0.add_loss_move(%struct.State* %0, i64  %loadPC_47daab, %struct.Memory* %loadMem2_47daab)
  store %struct.Memory* %call2_47daab, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47dac3	 RIP: 47dab0	 Bytes: 5
  %loadMem_47dab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dab0 = call %struct.Memory* @routine_jmpq_.L_47dac3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dab0, i64 19, i64 5)
  store %struct.Memory* %call_47dab0, %struct.Memory** %MEMORY

  br label %block_.L_47dac3

  ; Code: .L_47dab5:	 RIP: 47dab5	 Bytes: 0
block_.L_47dab5:

  ; Code: movl -0xc(%rbp), %edi	 RIP: 47dab5	 Bytes: 3
  %loadMem_47dab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dab5 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dab5)
  store %struct.Memory* %call_47dab5, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 47dab8	 Bytes: 3
  %loadMem_47dab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dab8 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dab8)
  store %struct.Memory* %call_47dab8, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp), %edx	 RIP: 47dabb	 Bytes: 3
  %loadMem_47dabb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dabb = call %struct.Memory* @routine_movl_MINUS0x58__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dabb)
  store %struct.Memory* %call_47dabb, %struct.Memory** %MEMORY

  ; Code: callq .add_owl_defense_move	 RIP: 47dabe	 Bytes: 5
  %loadMem1_47dabe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47dabe = call %struct.Memory* @routine_callq_.add_owl_defense_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47dabe, i64 -299806, i64 5, i64 5)
  store %struct.Memory* %call1_47dabe, %struct.Memory** %MEMORY

  %loadMem2_47dabe = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47dabe = load i64, i64* %3
  %call2_47dabe = call %struct.Memory* @sub_4347a0.add_owl_defense_move(%struct.State* %0, i64  %loadPC_47dabe, %struct.Memory* %loadMem2_47dabe)
  store %struct.Memory* %call2_47dabe, %struct.Memory** %MEMORY

  ; Code: .L_47dac3:	 RIP: 47dac3	 Bytes: 0
  br label %block_.L_47dac3
block_.L_47dac3:

  ; Code: jmpq .L_47dac8	 RIP: 47dac3	 Bytes: 5
  %loadMem_47dac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dac3 = call %struct.Memory* @routine_jmpq_.L_47dac8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dac3, i64 5, i64 5)
  store %struct.Memory* %call_47dac3, %struct.Memory** %MEMORY

  br label %block_.L_47dac8

  ; Code: .L_47dac8:	 RIP: 47dac8	 Bytes: 0
block_.L_47dac8:

  ; Code: jmpq .L_47db6a	 RIP: 47dac8	 Bytes: 5
  %loadMem_47dac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dac8 = call %struct.Memory* @routine_jmpq_.L_47db6a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dac8, i64 162, i64 5)
  store %struct.Memory* %call_47dac8, %struct.Memory** %MEMORY

  br label %block_.L_47db6a

  ; Code: .L_47dacd:	 RIP: 47dacd	 Bytes: 0
block_.L_47dacd:

  ; Code: movslq -0x8(%rbp), %rax	 RIP: 47dacd	 Bytes: 4
  %loadMem_47dacd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dacd = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dacd)
  store %struct.Memory* %call_47dacd, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 47dad1	 Bytes: 8
  %loadMem_47dad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dad1 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dad1)
  store %struct.Memory* %call_47dad1, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %ecx	 RIP: 47dad9	 Bytes: 3
  %loadMem_47dad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dad9 = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dad9)
  store %struct.Memory* %call_47dad9, %struct.Memory** %MEMORY

  ; Code: je .L_47db65	 RIP: 47dadc	 Bytes: 6
  %loadMem_47dadc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dadc = call %struct.Memory* @routine_je_.L_47db65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dadc, i8* %BRANCH_TAKEN, i64 137, i64 6, i64 6)
  store %struct.Memory* %call_47dadc, %struct.Memory** %MEMORY

  %loadBr_47dadc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47dadc = icmp eq i8 %loadBr_47dadc, 1
  br i1 %cmpBr_47dadc, label %block_.L_47db65, label %block_47dae2

block_47dae2:
  ; Code: movl -0xc(%rbp), %edi	 RIP: 47dae2	 Bytes: 3
  %loadMem_47dae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dae2 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dae2)
  store %struct.Memory* %call_47dae2, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 47dae5	 Bytes: 3
  %loadMem_47dae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dae5 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dae5)
  store %struct.Memory* %call_47dae5, %struct.Memory** %MEMORY

  ; Code: callq .owl_attack_move_reason_known	 RIP: 47dae8	 Bytes: 5
  %loadMem1_47dae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47dae8 = call %struct.Memory* @routine_callq_.owl_attack_move_reason_known(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47dae8, i64 -310072, i64 5, i64 5)
  store %struct.Memory* %call1_47dae8, %struct.Memory** %MEMORY

  %loadMem2_47dae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47dae8 = load i64, i64* %3
  %call2_47dae8 = call %struct.Memory* @sub_431fb0.owl_attack_move_reason_known(%struct.State* %0, i64  %loadPC_47dae8, %struct.Memory* %loadMem2_47dae8)
  store %struct.Memory* %call2_47dae8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47daed	 Bytes: 3
  %loadMem_47daed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47daed = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47daed)
  store %struct.Memory* %call_47daed, %struct.Memory** %MEMORY

  ; Code: jne .L_47db65	 RIP: 47daf0	 Bytes: 6
  %loadMem_47daf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47daf0 = call %struct.Memory* @routine_jne_.L_47db65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47daf0, i8* %BRANCH_TAKEN, i64 117, i64 6, i64 6)
  store %struct.Memory* %call_47daf0, %struct.Memory** %MEMORY

  %loadBr_47daf0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47daf0 = icmp eq i8 %loadBr_47daf0, 1
  br i1 %cmpBr_47daf0, label %block_.L_47db65, label %block_47daf6

block_47daf6:
  ; Code: leaq -0x5c(%rbp), %rdx	 RIP: 47daf6	 Bytes: 4
  %loadMem_47daf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47daf6 = call %struct.Memory* @routine_leaq_MINUS0x5c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47daf6)
  store %struct.Memory* %call_47daf6, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x5c(%rbp)	 RIP: 47dafa	 Bytes: 7
  %loadMem_47dafa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dafa = call %struct.Memory* @routine_movl__0x0__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dafa)
  store %struct.Memory* %call_47dafa, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edi	 RIP: 47db01	 Bytes: 3
  %loadMem_47db01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db01 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db01)
  store %struct.Memory* %call_47db01, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 47db04	 Bytes: 3
  %loadMem_47db04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db04 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db04)
  store %struct.Memory* %call_47db04, %struct.Memory** %MEMORY

  ; Code: callq .owl_does_attack	 RIP: 47db07	 Bytes: 5
  %loadMem1_47db07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47db07 = call %struct.Memory* @routine_callq_.owl_does_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47db07, i64 -200663, i64 5, i64 5)
  store %struct.Memory* %call1_47db07, %struct.Memory** %MEMORY

  %loadMem2_47db07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47db07 = load i64, i64* %3
  %call2_47db07 = call %struct.Memory* @sub_44cb30.owl_does_attack(%struct.State* %0, i64  %loadPC_47db07, %struct.Memory* %loadMem2_47db07)
  store %struct.Memory* %call2_47db07, %struct.Memory** %MEMORY

  ; Code: movq $0xb4bd20, %rdx	 RIP: 47db0c	 Bytes: 10
  %loadMem_47db0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db0c = call %struct.Memory* @routine_movq__0xb4bd20___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db0c)
  store %struct.Memory* %call_47db0c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x60(%rbp)	 RIP: 47db16	 Bytes: 3
  %loadMem_47db16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db16 = call %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db16)
  store %struct.Memory* %call_47db16, %struct.Memory** %MEMORY

  ; Code: movl -0x60(%rbp), %eax	 RIP: 47db19	 Bytes: 3
  %loadMem_47db19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db19 = call %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db19)
  store %struct.Memory* %call_47db19, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 47db1c	 Bytes: 4
  %loadMem_47db1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db1c = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db1c)
  store %struct.Memory* %call_47db1c, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 47db20	 Bytes: 4
  %loadMem_47db20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db20 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db20)
  store %struct.Memory* %call_47db20, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 47db24	 Bytes: 3
  %loadMem_47db24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db24 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db24)
  store %struct.Memory* %call_47db24, %struct.Memory** %MEMORY

  ; Code: cmpl 0x24(%rdx), %eax	 RIP: 47db27	 Bytes: 3
  %loadMem_47db27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db27 = call %struct.Memory* @routine_cmpl_0x24__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db27)
  store %struct.Memory* %call_47db27, %struct.Memory** %MEMORY

  ; Code: jl .L_47db60	 RIP: 47db2a	 Bytes: 6
  %loadMem_47db2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db2a = call %struct.Memory* @routine_jl_.L_47db60(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db2a, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_47db2a, %struct.Memory** %MEMORY

  %loadBr_47db2a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47db2a = icmp eq i8 %loadBr_47db2a, 1
  br i1 %cmpBr_47db2a, label %block_.L_47db60, label %block_47db30

block_47db30:
  ; Code: cmpl $0x3, -0x60(%rbp)	 RIP: 47db30	 Bytes: 4
  %loadMem_47db30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db30 = call %struct.Memory* @routine_cmpl__0x3__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db30)
  store %struct.Memory* %call_47db30, %struct.Memory** %MEMORY

  ; Code: jne .L_47db4d	 RIP: 47db34	 Bytes: 6
  %loadMem_47db34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db34 = call %struct.Memory* @routine_jne_.L_47db4d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db34, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_47db34, %struct.Memory** %MEMORY

  %loadBr_47db34 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47db34 = icmp eq i8 %loadBr_47db34, 1
  br i1 %cmpBr_47db34, label %block_.L_47db4d, label %block_47db3a

block_47db3a:
  ; Code: movl -0xc(%rbp), %edi	 RIP: 47db3a	 Bytes: 3
  %loadMem_47db3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db3a = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db3a)
  store %struct.Memory* %call_47db3a, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 47db3d	 Bytes: 3
  %loadMem_47db3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db3d = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db3d)
  store %struct.Memory* %call_47db3d, %struct.Memory** %MEMORY

  ; Code: movl -0x5c(%rbp), %edx	 RIP: 47db40	 Bytes: 3
  %loadMem_47db40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db40 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db40)
  store %struct.Memory* %call_47db40, %struct.Memory** %MEMORY

  ; Code: callq .add_gain_move	 RIP: 47db43	 Bytes: 5
  %loadMem1_47db43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47db43 = call %struct.Memory* @routine_callq_.add_gain_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47db43, i64 -301923, i64 5, i64 5)
  store %struct.Memory* %call1_47db43, %struct.Memory** %MEMORY

  %loadMem2_47db43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47db43 = load i64, i64* %3
  %call2_47db43 = call %struct.Memory* @sub_433fe0.add_gain_move(%struct.State* %0, i64  %loadPC_47db43, %struct.Memory* %loadMem2_47db43)
  store %struct.Memory* %call2_47db43, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47db5b	 RIP: 47db48	 Bytes: 5
  %loadMem_47db48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db48 = call %struct.Memory* @routine_jmpq_.L_47db5b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db48, i64 19, i64 5)
  store %struct.Memory* %call_47db48, %struct.Memory** %MEMORY

  br label %block_.L_47db5b

  ; Code: .L_47db4d:	 RIP: 47db4d	 Bytes: 0
block_.L_47db4d:

  ; Code: movl -0xc(%rbp), %edi	 RIP: 47db4d	 Bytes: 3
  %loadMem_47db4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db4d = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db4d)
  store %struct.Memory* %call_47db4d, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 47db50	 Bytes: 3
  %loadMem_47db50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db50 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db50)
  store %struct.Memory* %call_47db50, %struct.Memory** %MEMORY

  ; Code: movl -0x60(%rbp), %edx	 RIP: 47db53	 Bytes: 3
  %loadMem_47db53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db53 = call %struct.Memory* @routine_movl_MINUS0x60__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db53)
  store %struct.Memory* %call_47db53, %struct.Memory** %MEMORY

  ; Code: callq .add_owl_attack_move	 RIP: 47db56	 Bytes: 5
  %loadMem1_47db56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47db56 = call %struct.Memory* @routine_callq_.add_owl_attack_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47db56, i64 -300246, i64 5, i64 5)
  store %struct.Memory* %call1_47db56, %struct.Memory** %MEMORY

  %loadMem2_47db56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47db56 = load i64, i64* %3
  %call2_47db56 = call %struct.Memory* @sub_434680.add_owl_attack_move(%struct.State* %0, i64  %loadPC_47db56, %struct.Memory* %loadMem2_47db56)
  store %struct.Memory* %call2_47db56, %struct.Memory** %MEMORY

  ; Code: .L_47db5b:	 RIP: 47db5b	 Bytes: 0
  br label %block_.L_47db5b
block_.L_47db5b:

  ; Code: jmpq .L_47db60	 RIP: 47db5b	 Bytes: 5
  %loadMem_47db5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db5b = call %struct.Memory* @routine_jmpq_.L_47db60(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db5b, i64 5, i64 5)
  store %struct.Memory* %call_47db5b, %struct.Memory** %MEMORY

  br label %block_.L_47db60

  ; Code: .L_47db60:	 RIP: 47db60	 Bytes: 0
block_.L_47db60:

  ; Code: jmpq .L_47db65	 RIP: 47db60	 Bytes: 5
  %loadMem_47db60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db60 = call %struct.Memory* @routine_jmpq_.L_47db65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db60, i64 5, i64 5)
  store %struct.Memory* %call_47db60, %struct.Memory** %MEMORY

  br label %block_.L_47db65

  ; Code: .L_47db65:	 RIP: 47db65	 Bytes: 0
block_.L_47db65:

  ; Code: jmpq .L_47db6a	 RIP: 47db65	 Bytes: 5
  %loadMem_47db65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db65 = call %struct.Memory* @routine_jmpq_.L_47db6a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db65, i64 5, i64 5)
  store %struct.Memory* %call_47db65, %struct.Memory** %MEMORY

  br label %block_.L_47db6a

  ; Code: .L_47db6a:	 RIP: 47db6a	 Bytes: 0
block_.L_47db6a:

  ; Code: jmpq .L_47db6f	 RIP: 47db6a	 Bytes: 5
  %loadMem_47db6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db6a = call %struct.Memory* @routine_jmpq_.L_47db6f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db6a, i64 5, i64 5)
  store %struct.Memory* %call_47db6a, %struct.Memory** %MEMORY

  br label %block_.L_47db6f

  ; Code: .L_47db6f:	 RIP: 47db6f	 Bytes: 0
block_.L_47db6f:

  ; Code: jmpq .L_47db74	 RIP: 47db6f	 Bytes: 5
  %loadMem_47db6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db6f = call %struct.Memory* @routine_jmpq_.L_47db74(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db6f, i64 5, i64 5)
  store %struct.Memory* %call_47db6f, %struct.Memory** %MEMORY

  br label %block_.L_47db74

  ; Code: .L_47db74:	 RIP: 47db74	 Bytes: 0
block_.L_47db74:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 47db74	 Bytes: 3
  %loadMem_47db74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db74 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db74)
  store %struct.Memory* %call_47db74, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47db77	 Bytes: 3
  %loadMem_47db77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db77 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db77)
  store %struct.Memory* %call_47db77, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 47db7a	 Bytes: 3
  %loadMem_47db7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db7a = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db7a)
  store %struct.Memory* %call_47db7a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47d8b3	 RIP: 47db7d	 Bytes: 5
  %loadMem_47db7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db7d = call %struct.Memory* @routine_jmpq_.L_47d8b3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db7d, i64 -714, i64 5)
  store %struct.Memory* %call_47db7d, %struct.Memory** %MEMORY

  br label %block_.L_47d8b3

  ; Code: .L_47db82:	 RIP: 47db82	 Bytes: 0
block_.L_47db82:

  ; Code: jmpq .L_47db87	 RIP: 47db82	 Bytes: 5
  %loadMem_47db82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db82 = call %struct.Memory* @routine_jmpq_.L_47db87(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db82, i64 5, i64 5)
  store %struct.Memory* %call_47db82, %struct.Memory** %MEMORY

  br label %block_.L_47db87

  ; Code: .L_47db87:	 RIP: 47db87	 Bytes: 0
block_.L_47db87:

  ; Code: jmpq .L_47db8c	 RIP: 47db87	 Bytes: 5
  %loadMem_47db87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db87 = call %struct.Memory* @routine_jmpq_.L_47db8c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db87, i64 5, i64 5)
  store %struct.Memory* %call_47db87, %struct.Memory** %MEMORY

  br label %block_.L_47db8c

  ; Code: .L_47db8c:	 RIP: 47db8c	 Bytes: 0
block_.L_47db8c:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 47db8c	 Bytes: 3
  %loadMem_47db8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db8c = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db8c)
  store %struct.Memory* %call_47db8c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47db8f	 Bytes: 3
  %loadMem_47db8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db8f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db8f)
  store %struct.Memory* %call_47db8f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 47db92	 Bytes: 3
  %loadMem_47db92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db92 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db92)
  store %struct.Memory* %call_47db92, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47d835	 RIP: 47db95	 Bytes: 5
  %loadMem_47db95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db95 = call %struct.Memory* @routine_jmpq_.L_47d835(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db95, i64 -864, i64 5)
  store %struct.Memory* %call_47db95, %struct.Memory** %MEMORY

  br label %block_.L_47d835

  ; Code: .L_47db9a:	 RIP: 47db9a	 Bytes: 0
block_.L_47db9a:

  ; Code: addq $0x80, %rsp	 RIP: 47db9a	 Bytes: 7
  %loadMem_47db9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db9a = call %struct.Memory* @routine_addq__0x80___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db9a)
  store %struct.Memory* %call_47db9a, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 47dba1	 Bytes: 1
  %loadMem_47dba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dba1 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dba1)
  store %struct.Memory* %call_47dba1, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 47dba2	 Bytes: 1
  %loadMem_47dba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dba2 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dba2)
  store %struct.Memory* %call_47dba2, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_47dba2
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

define %struct.Memory* @routine_subq__0x80___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 128)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_jne_.L_47d198(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_47d1ac(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x582d00___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x582d00_type* @G__0x582d00 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 100
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x15__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 21)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x190__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_jge_.L_47d82e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_47d1da(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47d820(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x78__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 120)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_47d81b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0xb9d8f0_type* @G__0xb9d8f0 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 564)
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


define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x48__rax__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, 72
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


define %struct.Memory* @routine_jge_.L_47d22b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47d81b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0xafdfc0_type* @G__0xafdfc0 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 12)
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


define %struct.Memory* @routine_movl_0x4__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__esi__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_cmpl__0x2c____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 44)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_je_.L_47d27b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_cmpl__0x2e____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 46)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jne_.L_47d286(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47d47e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_cmpl__0x2____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 2)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_je_.L_47d33a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_cmpl__0x4____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 4)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_cmpl__0x6____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 6)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_cmpl__0x8____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 8)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_cmpl__0xa____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 10)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_cmpl__0xc____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 12)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jne_.L_47d345(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_47d479(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_cmpl__0x36____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 54)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jne_.L_47d3e9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0xb8b580___rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 12105088
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0xb00ea0___rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 11538080
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x1__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_47d3b1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0xb9a0a0___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0xb9a0a0_type* @G__0xb9a0a0 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 1)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x18__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_callq_.find_eye_dragons(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_47d3d5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0xb01180___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0xb01180_type* @G__0xb01180 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x2___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 2)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__0x1___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R8D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 1)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_jne_.L_47d3e4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47d80d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_47d474(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_cmpl__0xe____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 14)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jne_.L_47d46a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0xb8a010___rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 12099600
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edx__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0xb051b0___rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 11555248
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edx__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq__rax___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_addq__rcx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x8__rsi____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 28
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_47d465(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jmpq_.L_47d46f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x2__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_47d808(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_47d4a4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47d4aa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_47d4b9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47d7fa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jne_.L_47d4f0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_47d514(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_je_.L_47d5c6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















































define %struct.Memory* @routine_jne_.L_47d679(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_subl_MINUS0x4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 4
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


define %struct.Memory* @routine_callq_.owl_attack_move_reason_known(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_leaq_MINUS0x40__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x0__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movq__0xb4bd20___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0xb4bd20_type* @G__0xb4bd20 to i64))
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


define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_cmpl_0x24__rdx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDX
  %15 = add i64 %14, 36
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_jl_.L_47d674(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x3__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_47d631(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x40__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.add_gain_move(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47d63f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl_MINUS0x44__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
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




define %struct.Memory* @routine_jne_.L_47d652(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47d66f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x582d3a___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x582d3a_type* @G__0x582d3a to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl_MINUS0x20__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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






define %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_47d674(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_47d679(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_je_.L_47d742(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























































define %struct.Memory* @routine_jne_.L_47d7f5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 4
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_callq_.owl_defense_move_reason_known(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_leaq_MINUS0x48__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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








define %struct.Memory* @routine_cmpl_0x34__rdx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDX
  %15 = add i64 %14, 52
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jl_.L_47d7f0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x2__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 76
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_47d7ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x48__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.add_loss_move(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47d7bb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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




define %struct.Memory* @routine_jne_.L_47d7ce(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47d7eb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x582d63___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x582d63_type* @G__0x582d63 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jmpq_.L_47d7f0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_47d7f5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_47d485(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_47d1e1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_47d1b3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jge_.L_47db9a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_47d86c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_47db87(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_movl__0x15__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 21)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x190__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 400)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_47db82(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_je_.L_47d8da(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47db74(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jge_.L_47da2b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl__edx__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_47d924(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47da2b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_cmpl__0x1a____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 26)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_je_.L_47d9d8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_cmpl__0x1c____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 28)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_cmpl__0x1e____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 30)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_cmpl__0x20____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 32)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_cmpl__0x22____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 34)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_cmpl__0x24____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 36)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jne_.L_47da18(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__edx__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_callq_.are_neighbor_dragons(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_47da13(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jmpq_.L_47da18(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_47da1d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_47d8e8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_je_.L_47db6f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_47dacd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_leaq_MINUS0x54__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x0__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 84
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_jl_.L_47dac8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x2__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 88
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_47dab5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x54__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jmpq_.L_47dac3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl_MINUS0x58__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jmpq_.L_47dac8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_47db6a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_je_.L_47db65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jne_.L_47db65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x5c__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x0__MINUS0x5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 92
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_jl_.L_47db60(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x3__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 96
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_47db4d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x5c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jmpq_.L_47db5b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl_MINUS0x60__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jmpq_.L_47db60(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_47db65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jmpq_.L_47db6f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_47d8b3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_47db87(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_47db8c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_47d835(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x80___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 128)
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

