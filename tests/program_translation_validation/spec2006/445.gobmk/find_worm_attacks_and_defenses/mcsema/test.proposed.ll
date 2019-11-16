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

declare %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_488480.propagate_worm(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_45db40.attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_488740.change_attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4898c0.find_attack_patterns(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_46a780.find_defense(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_488800.change_defense(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_408e30.trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_489900.find_defense_patterns(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40f840.findlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_489940.attack_move_known(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4899a0.defense_move_known(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0xab0f24_type = type <{ [4 x i8] }>
@G_0xab0f24= global %G_0xab0f24_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xab0f28_type = type <{ [1 x i8] }>
@G_0xab0f28= global %G_0xab0f28_type <{ [1 x i8] c"\00" }>
%G_0xb54ce4_type = type <{ [1 x i8] }>
@G_0xb54ce4= global %G_0xb54ce4_type <{ [1 x i8] c"\00" }>
%G__0x57a100_type = type <{ [8 x i8] }>
@G__0x57a100= global %G__0x57a100_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x582e3b_type = type <{ [8 x i8] }>
@G__0x582e3b= global %G__0x582e3b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x582f5f_type = type <{ [8 x i8] }>
@G__0x582f5f= global %G__0x582f5f_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x58312b_type = type <{ [8 x i8] }>
@G__0x58312b= global %G__0x58312b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x583146_type = type <{ [8 x i8] }>
@G__0x583146= global %G__0x583146_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x58316a_type = type <{ [8 x i8] }>
@G__0x58316a= global %G__0x58316a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x583186_type = type <{ [8 x i8] }>
@G__0x583186= global %G__0x583186_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x5831aa_type = type <{ [8 x i8] }>
@G__0x5831aa= global %G__0x5831aa_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xae4250_type = type <{ [8 x i8] }>
@G__0xae4250= global %G__0xae4250_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xb0eff0_type = type <{ [8 x i8] }>
@G__0xb0eff0= global %G__0xb0eff0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @find_worm_attacks_and_defenses(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .find_worm_attacks_and_defenses:	 RIP: 4879c0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 4879c0	 Bytes: 1
  %loadMem_4879c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4879c0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4879c0)
  store %struct.Memory* %call_4879c0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 4879c1	 Bytes: 3
  %loadMem_4879c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4879c1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4879c1)
  store %struct.Memory* %call_4879c1, %struct.Memory** %MEMORY

  ; Code: subq $0x40, %rsp	 RIP: 4879c4	 Bytes: 4
  %loadMem_4879c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4879c4 = call %struct.Memory* @routine_subq__0x40___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4879c4)
  store %struct.Memory* %call_4879c4, %struct.Memory** %MEMORY

  ; Code: movl $0x15, -0x4(%rbp)	 RIP: 4879c8	 Bytes: 7
  %loadMem_4879c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4879c8 = call %struct.Memory* @routine_movl__0x15__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4879c8)
  store %struct.Memory* %call_4879c8, %struct.Memory** %MEMORY

  ; Code: .L_4879cf:	 RIP: 4879cf	 Bytes: 0
  br label %block_.L_4879cf
block_.L_4879cf:

  ; Code: cmpl $0x190, -0x4(%rbp)	 RIP: 4879cf	 Bytes: 7
  %loadMem_4879cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4879cf = call %struct.Memory* @routine_cmpl__0x190__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4879cf)
  store %struct.Memory* %call_4879cf, %struct.Memory** %MEMORY

  ; Code: jge .L_487b5f	 RIP: 4879d6	 Bytes: 6
  %loadMem_4879d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4879d6 = call %struct.Memory* @routine_jge_.L_487b5f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4879d6, i8* %BRANCH_TAKEN, i64 393, i64 6, i64 6)
  store %struct.Memory* %call_4879d6, %struct.Memory** %MEMORY

  %loadBr_4879d6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4879d6 = icmp eq i8 %loadBr_4879d6, 1
  br i1 %cmpBr_4879d6, label %block_.L_487b5f, label %block_4879dc

block_4879dc:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 4879dc	 Bytes: 4
  %loadMem_4879dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4879dc = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4879dc)
  store %struct.Memory* %call_4879dc, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 4879e0	 Bytes: 8
  %loadMem_4879e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4879e0 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4879e0)
  store %struct.Memory* %call_4879e0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %ecx	 RIP: 4879e8	 Bytes: 3
  %loadMem_4879e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4879e8 = call %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4879e8)
  store %struct.Memory* %call_4879e8, %struct.Memory** %MEMORY

  ; Code: je .L_487a06	 RIP: 4879eb	 Bytes: 6
  %loadMem_4879eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4879eb = call %struct.Memory* @routine_je_.L_487a06(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4879eb, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_4879eb, %struct.Memory** %MEMORY

  %loadBr_4879eb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4879eb = icmp eq i8 %loadBr_4879eb, 1
  br i1 %cmpBr_4879eb, label %block_.L_487a06, label %block_4879f1

block_4879f1:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 4879f1	 Bytes: 4
  %loadMem_4879f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4879f1 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4879f1)
  store %struct.Memory* %call_4879f1, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 4879f5	 Bytes: 8
  %loadMem_4879f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4879f5 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4879f5)
  store %struct.Memory* %call_4879f5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %ecx	 RIP: 4879fd	 Bytes: 3
  %loadMem_4879fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4879fd = call %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4879fd)
  store %struct.Memory* %call_4879fd, %struct.Memory** %MEMORY

  ; Code: jne .L_487a1a	 RIP: 487a00	 Bytes: 6
  %loadMem_487a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487a00 = call %struct.Memory* @routine_jne_.L_487a1a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487a00, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_487a00, %struct.Memory** %MEMORY

  %loadBr_487a00 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487a00 = icmp eq i8 %loadBr_487a00, 1
  br i1 %cmpBr_487a00, label %block_.L_487a1a, label %block_.L_487a06

  ; Code: .L_487a06:	 RIP: 487a06	 Bytes: 0
block_.L_487a06:

  ; Code: movl -0x4(%rbp), %edi	 RIP: 487a06	 Bytes: 3
  %loadMem_487a06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487a06 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487a06)
  store %struct.Memory* %call_487a06, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 487a09	 Bytes: 3
  %loadMem_487a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487a09 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487a09)
  store %struct.Memory* %call_487a09, %struct.Memory** %MEMORY

  ; Code: callq .is_worm_origin	 RIP: 487a0c	 Bytes: 5
  %loadMem1_487a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487a0c = call %struct.Memory* @routine_callq_.is_worm_origin(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487a0c, i64 1764, i64 5, i64 5)
  store %struct.Memory* %call1_487a0c, %struct.Memory** %MEMORY

  %loadMem2_487a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487a0c = load i64, i64* %3
  %call2_487a0c = call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* %0, i64  %loadPC_487a0c, %struct.Memory* %loadMem2_487a0c)
  store %struct.Memory* %call2_487a0c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 487a11	 Bytes: 3
  %loadMem_487a11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487a11 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487a11)
  store %struct.Memory* %call_487a11, %struct.Memory** %MEMORY

  ; Code: jne .L_487a1f	 RIP: 487a14	 Bytes: 6
  %loadMem_487a14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487a14 = call %struct.Memory* @routine_jne_.L_487a1f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487a14, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_487a14, %struct.Memory** %MEMORY

  %loadBr_487a14 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487a14 = icmp eq i8 %loadBr_487a14, 1
  br i1 %cmpBr_487a14, label %block_.L_487a1f, label %block_.L_487a1a

  ; Code: .L_487a1a:	 RIP: 487a1a	 Bytes: 0
block_.L_487a1a:

  ; Code: jmpq .L_487b51	 RIP: 487a1a	 Bytes: 5
  %loadMem_487a1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487a1a = call %struct.Memory* @routine_jmpq_.L_487b51(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487a1a, i64 311, i64 5)
  store %struct.Memory* %call_487a1a, %struct.Memory** %MEMORY

  br label %block_.L_487b51

  ; Code: .L_487a1f:	 RIP: 487a1f	 Bytes: 0
block_.L_487a1f:

  ; Code: cmpl $0x0, 0xab0f28	 RIP: 487a1f	 Bytes: 8
  %loadMem_487a1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487a1f = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487a1f)
  store %struct.Memory* %call_487a1f, %struct.Memory** %MEMORY

  ; Code: jne .L_487a32	 RIP: 487a27	 Bytes: 6
  %loadMem_487a27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487a27 = call %struct.Memory* @routine_jne_.L_487a32(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487a27, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_487a27, %struct.Memory** %MEMORY

  %loadBr_487a27 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487a27 = icmp eq i8 %loadBr_487a27, 1
  br i1 %cmpBr_487a27, label %block_.L_487a32, label %block_487a2d

block_487a2d:
  ; Code: jmpq .L_487a49	 RIP: 487a2d	 Bytes: 5
  %loadMem_487a2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487a2d = call %struct.Memory* @routine_jmpq_.L_487a49(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487a2d, i64 28, i64 5)
  store %struct.Memory* %call_487a2d, %struct.Memory** %MEMORY

  br label %block_.L_487a49

  ; Code: .L_487a32:	 RIP: 487a32	 Bytes: 0
block_.L_487a32:

  ; Code: movq $0x58312b, %rdi	 RIP: 487a32	 Bytes: 10
  %loadMem_487a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487a32 = call %struct.Memory* @routine_movq__0x58312b___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487a32)
  store %struct.Memory* %call_487a32, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 487a3c	 Bytes: 3
  %loadMem_487a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487a3c = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487a3c)
  store %struct.Memory* %call_487a3c, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 487a3f	 Bytes: 2
  %loadMem_487a3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487a3f = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487a3f)
  store %struct.Memory* %call_487a3f, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 487a41	 Bytes: 5
  %loadMem1_487a41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487a41 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487a41, i64 -220305, i64 5, i64 5)
  store %struct.Memory* %call1_487a41, %struct.Memory** %MEMORY

  %loadMem2_487a41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487a41 = load i64, i64* %3
  %call2_487a41 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_487a41, %struct.Memory* %loadMem2_487a41)
  store %struct.Memory* %call2_487a41, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 487a46	 Bytes: 3
  %loadMem_487a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487a46 = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487a46)
  store %struct.Memory* %call_487a46, %struct.Memory** %MEMORY

  ; Code: .L_487a49:	 RIP: 487a49	 Bytes: 0
  br label %block_.L_487a49
block_.L_487a49:

  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 487a49	 Bytes: 7
  %loadMem_487a49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487a49 = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487a49)
  store %struct.Memory* %call_487a49, %struct.Memory** %MEMORY

  ; Code: .L_487a50:	 RIP: 487a50	 Bytes: 0
  br label %block_.L_487a50
block_.L_487a50:

  ; Code: cmpl $0xa, -0x8(%rbp)	 RIP: 487a50	 Bytes: 4
  %loadMem_487a50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487a50 = call %struct.Memory* @routine_cmpl__0xa__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487a50)
  store %struct.Memory* %call_487a50, %struct.Memory** %MEMORY

  ; Code: jge .L_487ae9	 RIP: 487a54	 Bytes: 6
  %loadMem_487a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487a54 = call %struct.Memory* @routine_jge_.L_487ae9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487a54, i8* %BRANCH_TAKEN, i64 149, i64 6, i64 6)
  store %struct.Memory* %call_487a54, %struct.Memory** %MEMORY

  %loadBr_487a54 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487a54 = icmp eq i8 %loadBr_487a54, 1
  br i1 %cmpBr_487a54, label %block_.L_487ae9, label %block_487a5a

block_487a5a:
  ; Code: movq $0xb0eff0, %rax	 RIP: 487a5a	 Bytes: 10
  %loadMem_487a5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487a5a = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487a5a)
  store %struct.Memory* %call_487a5a, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 487a64	 Bytes: 4
  %loadMem_487a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487a64 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487a64)
  store %struct.Memory* %call_487a64, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 487a68	 Bytes: 7
  %loadMem_487a68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487a68 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487a68)
  store %struct.Memory* %call_487a68, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 487a6f	 Bytes: 3
  %loadMem_487a6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487a6f = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487a6f)
  store %struct.Memory* %call_487a6f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 487a72	 Bytes: 3
  %loadMem_487a72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487a72 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487a72)
  store %struct.Memory* %call_487a72, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 487a75	 Bytes: 4
  %loadMem_487a75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487a75 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487a75)
  store %struct.Memory* %call_487a75, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x64(%rdx,%rcx,4)	 RIP: 487a79	 Bytes: 8
  %loadMem_487a79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487a79 = call %struct.Memory* @routine_movl__0x0__0x64__rdx__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487a79)
  store %struct.Memory* %call_487a79, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 487a81	 Bytes: 4
  %loadMem_487a81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487a81 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487a81)
  store %struct.Memory* %call_487a81, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 487a85	 Bytes: 7
  %loadMem_487a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487a85 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487a85)
  store %struct.Memory* %call_487a85, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 487a8c	 Bytes: 3
  %loadMem_487a8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487a8c = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487a8c)
  store %struct.Memory* %call_487a8c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 487a8f	 Bytes: 3
  %loadMem_487a8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487a8f = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487a8f)
  store %struct.Memory* %call_487a8f, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 487a92	 Bytes: 4
  %loadMem_487a92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487a92 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487a92)
  store %struct.Memory* %call_487a92, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x3c(%rdx,%rcx,4)	 RIP: 487a96	 Bytes: 8
  %loadMem_487a96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487a96 = call %struct.Memory* @routine_movl__0x0__0x3c__rdx__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487a96)
  store %struct.Memory* %call_487a96, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 487a9e	 Bytes: 4
  %loadMem_487a9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487a9e = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487a9e)
  store %struct.Memory* %call_487a9e, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 487aa2	 Bytes: 7
  %loadMem_487aa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487aa2 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487aa2)
  store %struct.Memory* %call_487aa2, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 487aa9	 Bytes: 3
  %loadMem_487aa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487aa9 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487aa9)
  store %struct.Memory* %call_487aa9, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 487aac	 Bytes: 3
  %loadMem_487aac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487aac = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487aac)
  store %struct.Memory* %call_487aac, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 487aaf	 Bytes: 4
  %loadMem_487aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487aaf = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487aaf)
  store %struct.Memory* %call_487aaf, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0xb4(%rdx,%rcx,4)	 RIP: 487ab3	 Bytes: 11
  %loadMem_487ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487ab3 = call %struct.Memory* @routine_movl__0x0__0xb4__rdx__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487ab3)
  store %struct.Memory* %call_487ab3, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 487abe	 Bytes: 4
  %loadMem_487abe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487abe = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487abe)
  store %struct.Memory* %call_487abe, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 487ac2	 Bytes: 7
  %loadMem_487ac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487ac2 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487ac2)
  store %struct.Memory* %call_487ac2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 487ac9	 Bytes: 3
  %loadMem_487ac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487ac9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487ac9)
  store %struct.Memory* %call_487ac9, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 487acc	 Bytes: 4
  %loadMem_487acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487acc = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487acc)
  store %struct.Memory* %call_487acc, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8c(%rax,%rcx,4)	 RIP: 487ad0	 Bytes: 11
  %loadMem_487ad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487ad0 = call %struct.Memory* @routine_movl__0x0__0x8c__rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487ad0)
  store %struct.Memory* %call_487ad0, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %eax	 RIP: 487adb	 Bytes: 3
  %loadMem_487adb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487adb = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487adb)
  store %struct.Memory* %call_487adb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 487ade	 Bytes: 3
  %loadMem_487ade = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487ade = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487ade)
  store %struct.Memory* %call_487ade, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 487ae1	 Bytes: 3
  %loadMem_487ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487ae1 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487ae1)
  store %struct.Memory* %call_487ae1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_487a50	 RIP: 487ae4	 Bytes: 5
  %loadMem_487ae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487ae4 = call %struct.Memory* @routine_jmpq_.L_487a50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487ae4, i64 -148, i64 5)
  store %struct.Memory* %call_487ae4, %struct.Memory** %MEMORY

  br label %block_.L_487a50

  ; Code: .L_487ae9:	 RIP: 487ae9	 Bytes: 0
block_.L_487ae9:

  ; Code: movl -0x4(%rbp), %edi	 RIP: 487ae9	 Bytes: 3
  %loadMem_487ae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487ae9 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487ae9)
  store %struct.Memory* %call_487ae9, %struct.Memory** %MEMORY

  ; Code: callq .propagate_worm	 RIP: 487aec	 Bytes: 5
  %loadMem1_487aec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487aec = call %struct.Memory* @routine_callq_.propagate_worm(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487aec, i64 2452, i64 5, i64 5)
  store %struct.Memory* %call1_487aec, %struct.Memory** %MEMORY

  %loadMem2_487aec = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487aec = load i64, i64* %3
  %call2_487aec = call %struct.Memory* @sub_488480.propagate_worm(%struct.State* %0, i64  %loadPC_487aec, %struct.Memory* %loadMem2_487aec)
  store %struct.Memory* %call2_487aec, %struct.Memory** %MEMORY

  ; Code: leaq -0x14(%rbp), %rsi	 RIP: 487af1	 Bytes: 4
  %loadMem_487af1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487af1 = call %struct.Memory* @routine_leaq_MINUS0x14__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487af1)
  store %struct.Memory* %call_487af1, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edi	 RIP: 487af5	 Bytes: 3
  %loadMem_487af5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487af5 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487af5)
  store %struct.Memory* %call_487af5, %struct.Memory** %MEMORY

  ; Code: callq .attack	 RIP: 487af8	 Bytes: 5
  %loadMem1_487af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487af8 = call %struct.Memory* @routine_callq_.attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487af8, i64 -171960, i64 5, i64 5)
  store %struct.Memory* %call1_487af8, %struct.Memory** %MEMORY

  %loadMem2_487af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487af8 = load i64, i64* %3
  %call2_487af8 = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64  %loadPC_487af8, %struct.Memory* %loadMem2_487af8)
  store %struct.Memory* %call2_487af8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 487afd	 Bytes: 3
  %loadMem_487afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487afd = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487afd)
  store %struct.Memory* %call_487afd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0xc(%rbp)	 RIP: 487b00	 Bytes: 4
  %loadMem_487b00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487b00 = call %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487b00)
  store %struct.Memory* %call_487b00, %struct.Memory** %MEMORY

  ; Code: je .L_487b4c	 RIP: 487b04	 Bytes: 6
  %loadMem_487b04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487b04 = call %struct.Memory* @routine_je_.L_487b4c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487b04, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_487b04, %struct.Memory** %MEMORY

  %loadBr_487b04 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487b04 = icmp eq i8 %loadBr_487b04, 1
  br i1 %cmpBr_487b04, label %block_.L_487b4c, label %block_487b0a

block_487b0a:
  ; Code: movl 0xab0f24, %eax	 RIP: 487b0a	 Bytes: 7
  %loadMem_487b0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487b0a = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487b0a)
  store %struct.Memory* %call_487b0a, %struct.Memory** %MEMORY

  ; Code: andl $0x400, %eax	 RIP: 487b11	 Bytes: 5
  %loadMem_487b11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487b11 = call %struct.Memory* @routine_andl__0x400___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487b11)
  store %struct.Memory* %call_487b11, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 487b16	 Bytes: 3
  %loadMem_487b16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487b16 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487b16)
  store %struct.Memory* %call_487b16, %struct.Memory** %MEMORY

  ; Code: jne .L_487b24	 RIP: 487b19	 Bytes: 6
  %loadMem_487b19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487b19 = call %struct.Memory* @routine_jne_.L_487b24(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487b19, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_487b19, %struct.Memory** %MEMORY

  %loadBr_487b19 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487b19 = icmp eq i8 %loadBr_487b19, 1
  br i1 %cmpBr_487b19, label %block_.L_487b24, label %block_487b1f

block_487b1f:
  ; Code: jmpq .L_487b3e	 RIP: 487b1f	 Bytes: 5
  %loadMem_487b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487b1f = call %struct.Memory* @routine_jmpq_.L_487b3e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487b1f, i64 31, i64 5)
  store %struct.Memory* %call_487b1f, %struct.Memory** %MEMORY

  br label %block_.L_487b3e

  ; Code: .L_487b24:	 RIP: 487b24	 Bytes: 0
block_.L_487b24:

  ; Code: movq $0x583146, %rdi	 RIP: 487b24	 Bytes: 10
  %loadMem_487b24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487b24 = call %struct.Memory* @routine_movq__0x583146___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487b24)
  store %struct.Memory* %call_487b24, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 487b2e	 Bytes: 3
  %loadMem_487b2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487b2e = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487b2e)
  store %struct.Memory* %call_487b2e, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edx	 RIP: 487b31	 Bytes: 3
  %loadMem_487b31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487b31 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487b31)
  store %struct.Memory* %call_487b31, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 487b34	 Bytes: 2
  %loadMem_487b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487b34 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487b34)
  store %struct.Memory* %call_487b34, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 487b36	 Bytes: 5
  %loadMem1_487b36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487b36 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487b36, i64 -220550, i64 5, i64 5)
  store %struct.Memory* %call1_487b36, %struct.Memory** %MEMORY

  %loadMem2_487b36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487b36 = load i64, i64* %3
  %call2_487b36 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_487b36, %struct.Memory* %loadMem2_487b36)
  store %struct.Memory* %call2_487b36, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 487b3b	 Bytes: 3
  %loadMem_487b3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487b3b = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487b3b)
  store %struct.Memory* %call_487b3b, %struct.Memory** %MEMORY

  ; Code: .L_487b3e:	 RIP: 487b3e	 Bytes: 0
  br label %block_.L_487b3e
block_.L_487b3e:

  ; Code: movl -0x4(%rbp), %edi	 RIP: 487b3e	 Bytes: 3
  %loadMem_487b3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487b3e = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487b3e)
  store %struct.Memory* %call_487b3e, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 487b41	 Bytes: 3
  %loadMem_487b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487b41 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487b41)
  store %struct.Memory* %call_487b41, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edx	 RIP: 487b44	 Bytes: 3
  %loadMem_487b44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487b44 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487b44)
  store %struct.Memory* %call_487b44, %struct.Memory** %MEMORY

  ; Code: callq .change_attack	 RIP: 487b47	 Bytes: 5
  %loadMem1_487b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487b47 = call %struct.Memory* @routine_callq_.change_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487b47, i64 3065, i64 5, i64 5)
  store %struct.Memory* %call1_487b47, %struct.Memory** %MEMORY

  %loadMem2_487b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487b47 = load i64, i64* %3
  %call2_487b47 = call %struct.Memory* @sub_488740.change_attack(%struct.State* %0, i64  %loadPC_487b47, %struct.Memory* %loadMem2_487b47)
  store %struct.Memory* %call2_487b47, %struct.Memory** %MEMORY

  ; Code: .L_487b4c:	 RIP: 487b4c	 Bytes: 0
  br label %block_.L_487b4c
block_.L_487b4c:

  ; Code: jmpq .L_487b51	 RIP: 487b4c	 Bytes: 5
  %loadMem_487b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487b4c = call %struct.Memory* @routine_jmpq_.L_487b51(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487b4c, i64 5, i64 5)
  store %struct.Memory* %call_487b4c, %struct.Memory** %MEMORY

  br label %block_.L_487b51

  ; Code: .L_487b51:	 RIP: 487b51	 Bytes: 0
block_.L_487b51:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 487b51	 Bytes: 3
  %loadMem_487b51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487b51 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487b51)
  store %struct.Memory* %call_487b51, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 487b54	 Bytes: 3
  %loadMem_487b54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487b54 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487b54)
  store %struct.Memory* %call_487b54, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 487b57	 Bytes: 3
  %loadMem_487b57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487b57 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487b57)
  store %struct.Memory* %call_487b57, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4879cf	 RIP: 487b5a	 Bytes: 5
  %loadMem_487b5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487b5a = call %struct.Memory* @routine_jmpq_.L_4879cf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487b5a, i64 -395, i64 5)
  store %struct.Memory* %call_487b5a, %struct.Memory** %MEMORY

  br label %block_.L_4879cf

  ; Code: .L_487b5f:	 RIP: 487b5f	 Bytes: 0
block_.L_487b5f:

  ; Code: cmpl $0x0, 0xb54ce4	 RIP: 487b5f	 Bytes: 8
  %loadMem_487b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487b5f = call %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487b5f)
  store %struct.Memory* %call_487b5f, %struct.Memory** %MEMORY

  ; Code: jne .L_487b72	 RIP: 487b67	 Bytes: 6
  %loadMem_487b67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487b67 = call %struct.Memory* @routine_jne_.L_487b72(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487b67, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_487b67, %struct.Memory** %MEMORY

  %loadBr_487b67 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487b67 = icmp eq i8 %loadBr_487b67, 1
  br i1 %cmpBr_487b67, label %block_.L_487b72, label %block_487b6d

block_487b6d:
  ; Code: jmpq .L_487b9a	 RIP: 487b6d	 Bytes: 5
  %loadMem_487b6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487b6d = call %struct.Memory* @routine_jmpq_.L_487b9a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487b6d, i64 45, i64 5)
  store %struct.Memory* %call_487b6d, %struct.Memory** %MEMORY

  br label %block_.L_487b9a

  ; Code: .L_487b72:	 RIP: 487b72	 Bytes: 0
block_.L_487b72:

  ; Code: movq $0x582e3b, %rdi	 RIP: 487b72	 Bytes: 10
  %loadMem_487b72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487b72 = call %struct.Memory* @routine_movq__0x582e3b___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487b72)
  store %struct.Memory* %call_487b72, %struct.Memory** %MEMORY

  ; Code: movl $0x2fc, %esi	 RIP: 487b7c	 Bytes: 5
  %loadMem_487b7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487b7c = call %struct.Memory* @routine_movl__0x2fc___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487b7c)
  store %struct.Memory* %call_487b7c, %struct.Memory** %MEMORY

  ; Code: movq $0x57a100, %rdx	 RIP: 487b81	 Bytes: 10
  %loadMem_487b81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487b81 = call %struct.Memory* @routine_movq__0x57a100___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487b81)
  store %struct.Memory* %call_487b81, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 487b8b	 Bytes: 5
  %loadMem_487b8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487b8b = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487b8b)
  store %struct.Memory* %call_487b8b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 487b90	 Bytes: 2
  %loadMem_487b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487b90 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487b90)
  store %struct.Memory* %call_487b90, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 487b92	 Bytes: 3
  %loadMem_487b92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487b92 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487b92)
  store %struct.Memory* %call_487b92, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 487b95	 Bytes: 5
  %loadMem1_487b95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487b95 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487b95, i64 -219909, i64 5, i64 5)
  store %struct.Memory* %call1_487b95, %struct.Memory** %MEMORY

  %loadMem2_487b95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487b95 = load i64, i64* %3
  %call2_487b95 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_487b95, %struct.Memory* %loadMem2_487b95)
  store %struct.Memory* %call2_487b95, %struct.Memory** %MEMORY

  ; Code: .L_487b9a:	 RIP: 487b9a	 Bytes: 0
  br label %block_.L_487b9a
block_.L_487b9a:

  ; Code: callq .find_attack_patterns	 RIP: 487b9a	 Bytes: 5
  %loadMem1_487b9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487b9a = call %struct.Memory* @routine_callq_.find_attack_patterns(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487b9a, i64 7462, i64 5, i64 5)
  store %struct.Memory* %call1_487b9a, %struct.Memory** %MEMORY

  %loadMem2_487b9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487b9a = load i64, i64* %3
  %call2_487b9a = call %struct.Memory* @sub_4898c0.find_attack_patterns(%struct.State* %0, i64  %loadPC_487b9a, %struct.Memory* %loadMem2_487b9a)
  store %struct.Memory* %call2_487b9a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb54ce4	 RIP: 487b9f	 Bytes: 8
  %loadMem_487b9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487b9f = call %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487b9f)
  store %struct.Memory* %call_487b9f, %struct.Memory** %MEMORY

  ; Code: jne .L_487bb2	 RIP: 487ba7	 Bytes: 6
  %loadMem_487ba7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487ba7 = call %struct.Memory* @routine_jne_.L_487bb2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487ba7, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_487ba7, %struct.Memory** %MEMORY

  %loadBr_487ba7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487ba7 = icmp eq i8 %loadBr_487ba7, 1
  br i1 %cmpBr_487ba7, label %block_.L_487bb2, label %block_487bad

block_487bad:
  ; Code: jmpq .L_487bda	 RIP: 487bad	 Bytes: 5
  %loadMem_487bad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487bad = call %struct.Memory* @routine_jmpq_.L_487bda(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487bad, i64 45, i64 5)
  store %struct.Memory* %call_487bad, %struct.Memory** %MEMORY

  br label %block_.L_487bda

  ; Code: .L_487bb2:	 RIP: 487bb2	 Bytes: 0
block_.L_487bb2:

  ; Code: movq $0x582e3b, %rdi	 RIP: 487bb2	 Bytes: 10
  %loadMem_487bb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487bb2 = call %struct.Memory* @routine_movq__0x582e3b___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487bb2)
  store %struct.Memory* %call_487bb2, %struct.Memory** %MEMORY

  ; Code: movl $0x300, %esi	 RIP: 487bbc	 Bytes: 5
  %loadMem_487bbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487bbc = call %struct.Memory* @routine_movl__0x300___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487bbc)
  store %struct.Memory* %call_487bbc, %struct.Memory** %MEMORY

  ; Code: movq $0x57a100, %rdx	 RIP: 487bc1	 Bytes: 10
  %loadMem_487bc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487bc1 = call %struct.Memory* @routine_movq__0x57a100___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487bc1)
  store %struct.Memory* %call_487bc1, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 487bcb	 Bytes: 5
  %loadMem_487bcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487bcb = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487bcb)
  store %struct.Memory* %call_487bcb, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 487bd0	 Bytes: 2
  %loadMem_487bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487bd0 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487bd0)
  store %struct.Memory* %call_487bd0, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 487bd2	 Bytes: 3
  %loadMem_487bd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487bd2 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487bd2)
  store %struct.Memory* %call_487bd2, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 487bd5	 Bytes: 5
  %loadMem1_487bd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487bd5 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487bd5, i64 -219973, i64 5, i64 5)
  store %struct.Memory* %call1_487bd5, %struct.Memory** %MEMORY

  %loadMem2_487bd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487bd5 = load i64, i64* %3
  %call2_487bd5 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_487bd5, %struct.Memory* %loadMem2_487bd5)
  store %struct.Memory* %call2_487bd5, %struct.Memory** %MEMORY

  ; Code: .L_487bda:	 RIP: 487bda	 Bytes: 0
  br label %block_.L_487bda
block_.L_487bda:

  ; Code: movl $0x15, -0x4(%rbp)	 RIP: 487bda	 Bytes: 7
  %loadMem_487bda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487bda = call %struct.Memory* @routine_movl__0x15__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487bda)
  store %struct.Memory* %call_487bda, %struct.Memory** %MEMORY

  ; Code: .L_487be1:	 RIP: 487be1	 Bytes: 0
  br label %block_.L_487be1
block_.L_487be1:

  ; Code: cmpl $0x190, -0x4(%rbp)	 RIP: 487be1	 Bytes: 7
  %loadMem_487be1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487be1 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487be1)
  store %struct.Memory* %call_487be1, %struct.Memory** %MEMORY

  ; Code: jge .L_487de2	 RIP: 487be8	 Bytes: 6
  %loadMem_487be8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487be8 = call %struct.Memory* @routine_jge_.L_487de2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487be8, i8* %BRANCH_TAKEN, i64 506, i64 6, i64 6)
  store %struct.Memory* %call_487be8, %struct.Memory** %MEMORY

  %loadBr_487be8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487be8 = icmp eq i8 %loadBr_487be8, 1
  br i1 %cmpBr_487be8, label %block_.L_487de2, label %block_487bee

block_487bee:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 487bee	 Bytes: 4
  %loadMem_487bee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487bee = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487bee)
  store %struct.Memory* %call_487bee, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 487bf2	 Bytes: 8
  %loadMem_487bf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487bf2 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487bf2)
  store %struct.Memory* %call_487bf2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %ecx	 RIP: 487bfa	 Bytes: 3
  %loadMem_487bfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487bfa = call %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487bfa)
  store %struct.Memory* %call_487bfa, %struct.Memory** %MEMORY

  ; Code: je .L_487c18	 RIP: 487bfd	 Bytes: 6
  %loadMem_487bfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487bfd = call %struct.Memory* @routine_je_.L_487c18(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487bfd, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_487bfd, %struct.Memory** %MEMORY

  %loadBr_487bfd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487bfd = icmp eq i8 %loadBr_487bfd, 1
  br i1 %cmpBr_487bfd, label %block_.L_487c18, label %block_487c03

block_487c03:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 487c03	 Bytes: 4
  %loadMem_487c03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487c03 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487c03)
  store %struct.Memory* %call_487c03, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 487c07	 Bytes: 8
  %loadMem_487c07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487c07 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487c07)
  store %struct.Memory* %call_487c07, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %ecx	 RIP: 487c0f	 Bytes: 3
  %loadMem_487c0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487c0f = call %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487c0f)
  store %struct.Memory* %call_487c0f, %struct.Memory** %MEMORY

  ; Code: jne .L_487c2c	 RIP: 487c12	 Bytes: 6
  %loadMem_487c12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487c12 = call %struct.Memory* @routine_jne_.L_487c2c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487c12, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_487c12, %struct.Memory** %MEMORY

  %loadBr_487c12 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487c12 = icmp eq i8 %loadBr_487c12, 1
  br i1 %cmpBr_487c12, label %block_.L_487c2c, label %block_.L_487c18

  ; Code: .L_487c18:	 RIP: 487c18	 Bytes: 0
block_.L_487c18:

  ; Code: movl -0x4(%rbp), %edi	 RIP: 487c18	 Bytes: 3
  %loadMem_487c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487c18 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487c18)
  store %struct.Memory* %call_487c18, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 487c1b	 Bytes: 3
  %loadMem_487c1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487c1b = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487c1b)
  store %struct.Memory* %call_487c1b, %struct.Memory** %MEMORY

  ; Code: callq .is_worm_origin	 RIP: 487c1e	 Bytes: 5
  %loadMem1_487c1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487c1e = call %struct.Memory* @routine_callq_.is_worm_origin(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487c1e, i64 1234, i64 5, i64 5)
  store %struct.Memory* %call1_487c1e, %struct.Memory** %MEMORY

  %loadMem2_487c1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487c1e = load i64, i64* %3
  %call2_487c1e = call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* %0, i64  %loadPC_487c1e, %struct.Memory* %loadMem2_487c1e)
  store %struct.Memory* %call2_487c1e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 487c23	 Bytes: 3
  %loadMem_487c23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487c23 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487c23)
  store %struct.Memory* %call_487c23, %struct.Memory** %MEMORY

  ; Code: jne .L_487c31	 RIP: 487c26	 Bytes: 6
  %loadMem_487c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487c26 = call %struct.Memory* @routine_jne_.L_487c31(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487c26, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_487c26, %struct.Memory** %MEMORY

  %loadBr_487c26 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487c26 = icmp eq i8 %loadBr_487c26, 1
  br i1 %cmpBr_487c26, label %block_.L_487c31, label %block_.L_487c2c

  ; Code: .L_487c2c:	 RIP: 487c2c	 Bytes: 0
block_.L_487c2c:

  ; Code: jmpq .L_487dd4	 RIP: 487c2c	 Bytes: 5
  %loadMem_487c2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487c2c = call %struct.Memory* @routine_jmpq_.L_487dd4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487c2c, i64 424, i64 5)
  store %struct.Memory* %call_487c2c, %struct.Memory** %MEMORY

  br label %block_.L_487dd4

  ; Code: .L_487c31:	 RIP: 487c31	 Bytes: 0
block_.L_487c31:

  ; Code: movq $0xb0eff0, %rax	 RIP: 487c31	 Bytes: 10
  %loadMem_487c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487c31 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487c31)
  store %struct.Memory* %call_487c31, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 487c3b	 Bytes: 4
  %loadMem_487c3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487c3b = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487c3b)
  store %struct.Memory* %call_487c3b, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 487c3f	 Bytes: 7
  %loadMem_487c3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487c3f = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487c3f)
  store %struct.Memory* %call_487c3f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 487c46	 Bytes: 3
  %loadMem_487c46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487c46 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487c46)
  store %struct.Memory* %call_487c46, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x64(%rax)	 RIP: 487c49	 Bytes: 4
  %loadMem_487c49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487c49 = call %struct.Memory* @routine_cmpl__0x0__0x64__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487c49)
  store %struct.Memory* %call_487c49, %struct.Memory** %MEMORY

  ; Code: je .L_487dcf	 RIP: 487c4d	 Bytes: 6
  %loadMem_487c4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487c4d = call %struct.Memory* @routine_je_.L_487dcf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487c4d, i8* %BRANCH_TAKEN, i64 386, i64 6, i64 6)
  store %struct.Memory* %call_487c4d, %struct.Memory** %MEMORY

  %loadBr_487c4d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487c4d = icmp eq i8 %loadBr_487c4d, 1
  br i1 %cmpBr_487c4d, label %block_.L_487dcf, label %block_487c53

block_487c53:
  ; Code: cmpl $0x0, 0xab0f28	 RIP: 487c53	 Bytes: 8
  %loadMem_487c53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487c53 = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487c53)
  store %struct.Memory* %call_487c53, %struct.Memory** %MEMORY

  ; Code: jne .L_487c66	 RIP: 487c5b	 Bytes: 6
  %loadMem_487c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487c5b = call %struct.Memory* @routine_jne_.L_487c66(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487c5b, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_487c5b, %struct.Memory** %MEMORY

  %loadBr_487c5b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487c5b = icmp eq i8 %loadBr_487c5b, 1
  br i1 %cmpBr_487c5b, label %block_.L_487c66, label %block_487c61

block_487c61:
  ; Code: jmpq .L_487c7d	 RIP: 487c61	 Bytes: 5
  %loadMem_487c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487c61 = call %struct.Memory* @routine_jmpq_.L_487c7d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487c61, i64 28, i64 5)
  store %struct.Memory* %call_487c61, %struct.Memory** %MEMORY

  br label %block_.L_487c7d

  ; Code: .L_487c66:	 RIP: 487c66	 Bytes: 0
block_.L_487c66:

  ; Code: movq $0x58316a, %rdi	 RIP: 487c66	 Bytes: 10
  %loadMem_487c66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487c66 = call %struct.Memory* @routine_movq__0x58316a___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487c66)
  store %struct.Memory* %call_487c66, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 487c70	 Bytes: 3
  %loadMem_487c70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487c70 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487c70)
  store %struct.Memory* %call_487c70, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 487c73	 Bytes: 2
  %loadMem_487c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487c73 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487c73)
  store %struct.Memory* %call_487c73, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 487c75	 Bytes: 5
  %loadMem1_487c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487c75 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487c75, i64 -220869, i64 5, i64 5)
  store %struct.Memory* %call1_487c75, %struct.Memory** %MEMORY

  %loadMem2_487c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487c75 = load i64, i64* %3
  %call2_487c75 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_487c75, %struct.Memory* %loadMem2_487c75)
  store %struct.Memory* %call2_487c75, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 487c7a	 Bytes: 3
  %loadMem_487c7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487c7a = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487c7a)
  store %struct.Memory* %call_487c7a, %struct.Memory** %MEMORY

  ; Code: .L_487c7d:	 RIP: 487c7d	 Bytes: 0
  br label %block_.L_487c7d
block_.L_487c7d:

  ; Code: leaq -0x18(%rbp), %rsi	 RIP: 487c7d	 Bytes: 4
  %loadMem_487c7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487c7d = call %struct.Memory* @routine_leaq_MINUS0x18__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487c7d)
  store %struct.Memory* %call_487c7d, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edi	 RIP: 487c81	 Bytes: 3
  %loadMem_487c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487c81 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487c81)
  store %struct.Memory* %call_487c81, %struct.Memory** %MEMORY

  ; Code: callq .find_defense	 RIP: 487c84	 Bytes: 5
  %loadMem1_487c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487c84 = call %struct.Memory* @routine_callq_.find_defense(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487c84, i64 -120068, i64 5, i64 5)
  store %struct.Memory* %call1_487c84, %struct.Memory** %MEMORY

  %loadMem2_487c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487c84 = load i64, i64* %3
  %call2_487c84 = call %struct.Memory* @sub_46a780.find_defense(%struct.State* %0, i64  %loadPC_487c84, %struct.Memory* %loadMem2_487c84)
  store %struct.Memory* %call2_487c84, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 487c89	 Bytes: 3
  %loadMem_487c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487c89 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487c89)
  store %struct.Memory* %call_487c89, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x10(%rbp)	 RIP: 487c8c	 Bytes: 4
  %loadMem_487c8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487c8c = call %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487c8c)
  store %struct.Memory* %call_487c8c, %struct.Memory** %MEMORY

  ; Code: je .L_487ce0	 RIP: 487c90	 Bytes: 6
  %loadMem_487c90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487c90 = call %struct.Memory* @routine_je_.L_487ce0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487c90, i8* %BRANCH_TAKEN, i64 80, i64 6, i64 6)
  store %struct.Memory* %call_487c90, %struct.Memory** %MEMORY

  %loadBr_487c90 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487c90 = icmp eq i8 %loadBr_487c90, 1
  br i1 %cmpBr_487c90, label %block_.L_487ce0, label %block_487c96

block_487c96:
  ; Code: cmpl $0x0, 0xab0f28	 RIP: 487c96	 Bytes: 8
  %loadMem_487c96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487c96 = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487c96)
  store %struct.Memory* %call_487c96, %struct.Memory** %MEMORY

  ; Code: jne .L_487ca9	 RIP: 487c9e	 Bytes: 6
  %loadMem_487c9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487c9e = call %struct.Memory* @routine_jne_.L_487ca9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487c9e, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_487c9e, %struct.Memory** %MEMORY

  %loadBr_487c9e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487c9e = icmp eq i8 %loadBr_487c9e, 1
  br i1 %cmpBr_487c9e, label %block_.L_487ca9, label %block_487ca4

block_487ca4:
  ; Code: jmpq .L_487cc3	 RIP: 487ca4	 Bytes: 5
  %loadMem_487ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487ca4 = call %struct.Memory* @routine_jmpq_.L_487cc3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487ca4, i64 31, i64 5)
  store %struct.Memory* %call_487ca4, %struct.Memory** %MEMORY

  br label %block_.L_487cc3

  ; Code: .L_487ca9:	 RIP: 487ca9	 Bytes: 0
block_.L_487ca9:

  ; Code: movq $0x583186, %rdi	 RIP: 487ca9	 Bytes: 10
  %loadMem_487ca9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487ca9 = call %struct.Memory* @routine_movq__0x583186___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487ca9)
  store %struct.Memory* %call_487ca9, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 487cb3	 Bytes: 3
  %loadMem_487cb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487cb3 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487cb3)
  store %struct.Memory* %call_487cb3, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 487cb6	 Bytes: 3
  %loadMem_487cb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487cb6 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487cb6)
  store %struct.Memory* %call_487cb6, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 487cb9	 Bytes: 2
  %loadMem_487cb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487cb9 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487cb9)
  store %struct.Memory* %call_487cb9, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 487cbb	 Bytes: 5
  %loadMem1_487cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487cbb = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487cbb, i64 -220939, i64 5, i64 5)
  store %struct.Memory* %call1_487cbb, %struct.Memory** %MEMORY

  %loadMem2_487cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487cbb = load i64, i64* %3
  %call2_487cbb = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_487cbb, %struct.Memory* %loadMem2_487cbb)
  store %struct.Memory* %call2_487cbb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 487cc0	 Bytes: 3
  %loadMem_487cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487cc0 = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487cc0)
  store %struct.Memory* %call_487cc0, %struct.Memory** %MEMORY

  ; Code: .L_487cc3:	 RIP: 487cc3	 Bytes: 0
  br label %block_.L_487cc3
block_.L_487cc3:

  ; Code: cmpl $0x0, -0x18(%rbp)	 RIP: 487cc3	 Bytes: 4
  %loadMem_487cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487cc3 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487cc3)
  store %struct.Memory* %call_487cc3, %struct.Memory** %MEMORY

  ; Code: je .L_487cdb	 RIP: 487cc7	 Bytes: 6
  %loadMem_487cc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487cc7 = call %struct.Memory* @routine_je_.L_487cdb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487cc7, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_487cc7, %struct.Memory** %MEMORY

  %loadBr_487cc7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487cc7 = icmp eq i8 %loadBr_487cc7, 1
  br i1 %cmpBr_487cc7, label %block_.L_487cdb, label %block_487ccd

block_487ccd:
  ; Code: movl -0x4(%rbp), %edi	 RIP: 487ccd	 Bytes: 3
  %loadMem_487ccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487ccd = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487ccd)
  store %struct.Memory* %call_487ccd, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %esi	 RIP: 487cd0	 Bytes: 3
  %loadMem_487cd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487cd0 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487cd0)
  store %struct.Memory* %call_487cd0, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %edx	 RIP: 487cd3	 Bytes: 3
  %loadMem_487cd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487cd3 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487cd3)
  store %struct.Memory* %call_487cd3, %struct.Memory** %MEMORY

  ; Code: callq .change_defense	 RIP: 487cd6	 Bytes: 5
  %loadMem1_487cd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487cd6 = call %struct.Memory* @routine_callq_.change_defense(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487cd6, i64 2858, i64 5, i64 5)
  store %struct.Memory* %call1_487cd6, %struct.Memory** %MEMORY

  %loadMem2_487cd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487cd6 = load i64, i64* %3
  %call2_487cd6 = call %struct.Memory* @sub_488800.change_defense(%struct.State* %0, i64  %loadPC_487cd6, %struct.Memory* %loadMem2_487cd6)
  store %struct.Memory* %call2_487cd6, %struct.Memory** %MEMORY

  ; Code: .L_487cdb:	 RIP: 487cdb	 Bytes: 0
  br label %block_.L_487cdb
block_.L_487cdb:

  ; Code: jmpq .L_487dca	 RIP: 487cdb	 Bytes: 5
  %loadMem_487cdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487cdb = call %struct.Memory* @routine_jmpq_.L_487dca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487cdb, i64 239, i64 5)
  store %struct.Memory* %call_487cdb, %struct.Memory** %MEMORY

  br label %block_.L_487dca

  ; Code: .L_487ce0:	 RIP: 487ce0	 Bytes: 0
block_.L_487ce0:

  ; Code: movq $0xb0eff0, %rax	 RIP: 487ce0	 Bytes: 10
  %loadMem_487ce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487ce0 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487ce0)
  store %struct.Memory* %call_487ce0, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 487cea	 Bytes: 4
  %loadMem_487cea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487cea = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487cea)
  store %struct.Memory* %call_487cea, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 487cee	 Bytes: 7
  %loadMem_487cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487cee = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487cee)
  store %struct.Memory* %call_487cee, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 487cf5	 Bytes: 3
  %loadMem_487cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487cf5 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487cf5)
  store %struct.Memory* %call_487cf5, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %edx	 RIP: 487cf8	 Bytes: 3
  %loadMem_487cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487cf8 = call %struct.Memory* @routine_movl_0x3c__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487cf8)
  store %struct.Memory* %call_487cf8, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x14(%rbp)	 RIP: 487cfb	 Bytes: 3
  %loadMem_487cfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487cfb = call %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487cfb)
  store %struct.Memory* %call_487cfb, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edi	 RIP: 487cfe	 Bytes: 3
  %loadMem_487cfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487cfe = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487cfe)
  store %struct.Memory* %call_487cfe, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 487d01	 Bytes: 3
  %loadMem_487d01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487d01 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487d01)
  store %struct.Memory* %call_487d01, %struct.Memory** %MEMORY

  ; Code: callq .liberty_of_string	 RIP: 487d04	 Bytes: 5
  %loadMem1_487d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487d04 = call %struct.Memory* @routine_callq_.liberty_of_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487d04, i64 -471636, i64 5, i64 5)
  store %struct.Memory* %call1_487d04, %struct.Memory** %MEMORY

  %loadMem2_487d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487d04 = load i64, i64* %3
  %call2_487d04 = call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* %0, i64  %loadPC_487d04, %struct.Memory* %loadMem2_487d04)
  store %struct.Memory* %call2_487d04, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 487d09	 Bytes: 3
  %loadMem_487d09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487d09 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487d09)
  store %struct.Memory* %call_487d09, %struct.Memory** %MEMORY

  ; Code: jne .L_487dc5	 RIP: 487d0c	 Bytes: 6
  %loadMem_487d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487d0c = call %struct.Memory* @routine_jne_.L_487dc5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487d0c, i8* %BRANCH_TAKEN, i64 185, i64 6, i64 6)
  store %struct.Memory* %call_487d0c, %struct.Memory** %MEMORY

  %loadBr_487d0c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487d0c = icmp eq i8 %loadBr_487d0c, 1
  br i1 %cmpBr_487d0c, label %block_.L_487dc5, label %block_487d12

block_487d12:
  ; Code: movq $0x582f5f, %rdx	 RIP: 487d12	 Bytes: 10
  %loadMem_487d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487d12 = call %struct.Memory* @routine_movq__0x582f5f___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487d12)
  store %struct.Memory* %call_487d12, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 487d1c	 Bytes: 2
  %loadMem_487d1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487d1c = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487d1c)
  store %struct.Memory* %call_487d1c, %struct.Memory** %MEMORY

  ; Code: movq $0xb0eff0, %rcx	 RIP: 487d1e	 Bytes: 10
  %loadMem_487d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487d1e = call %struct.Memory* @routine_movq__0xb0eff0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487d1e)
  store %struct.Memory* %call_487d1e, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edi	 RIP: 487d28	 Bytes: 3
  %loadMem_487d28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487d28 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487d28)
  store %struct.Memory* %call_487d28, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rsi	 RIP: 487d2b	 Bytes: 4
  %loadMem_487d2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487d2b = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487d2b)
  store %struct.Memory* %call_487d2b, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rsi, %rsi	 RIP: 487d2f	 Bytes: 7
  %loadMem_487d2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487d2f = call %struct.Memory* @routine_imulq__0x17c___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487d2f)
  store %struct.Memory* %call_487d2f, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 487d36	 Bytes: 3
  %loadMem_487d36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487d36 = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487d36)
  store %struct.Memory* %call_487d36, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %esi	 RIP: 487d39	 Bytes: 2
  %loadMem_487d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487d39 = call %struct.Memory* @routine_movl___rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487d39)
  store %struct.Memory* %call_487d39, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 487d3b	 Bytes: 2
  %loadMem_487d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487d3b = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487d3b)
  store %struct.Memory* %call_487d3b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 487d3d	 Bytes: 3
  %loadMem_487d3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487d3d = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487d3d)
  store %struct.Memory* %call_487d3d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 487d40	 Bytes: 3
  %loadMem_487d40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487d40 = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487d40)
  store %struct.Memory* %call_487d40, %struct.Memory** %MEMORY

  ; Code: callq .trymove	 RIP: 487d43	 Bytes: 5
  %loadMem1_487d43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487d43 = call %struct.Memory* @routine_callq_.trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487d43, i64 -519955, i64 5, i64 5)
  store %struct.Memory* %call1_487d43, %struct.Memory** %MEMORY

  %loadMem2_487d43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487d43 = load i64, i64* %3
  %call2_487d43 = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64  %loadPC_487d43, %struct.Memory* %loadMem2_487d43)
  store %struct.Memory* %call2_487d43, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 487d48	 Bytes: 3
  %loadMem_487d48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487d48 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487d48)
  store %struct.Memory* %call_487d48, %struct.Memory** %MEMORY

  ; Code: je .L_487dc0	 RIP: 487d4b	 Bytes: 6
  %loadMem_487d4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487d4b = call %struct.Memory* @routine_je_.L_487dc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487d4b, i8* %BRANCH_TAKEN, i64 117, i64 6, i64 6)
  store %struct.Memory* %call_487d4b, %struct.Memory** %MEMORY

  %loadBr_487d4b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487d4b = icmp eq i8 %loadBr_487d4b, 1
  br i1 %cmpBr_487d4b, label %block_.L_487dc0, label %block_487d51

block_487d51:
  ; Code: xorl %eax, %eax	 RIP: 487d51	 Bytes: 2
  %loadMem_487d51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487d51 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487d51)
  store %struct.Memory* %call_487d51, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 487d53	 Bytes: 2
  %loadMem_487d53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487d53 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487d53)
  store %struct.Memory* %call_487d53, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edi	 RIP: 487d55	 Bytes: 3
  %loadMem_487d55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487d55 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487d55)
  store %struct.Memory* %call_487d55, %struct.Memory** %MEMORY

  ; Code: callq .attack	 RIP: 487d58	 Bytes: 5
  %loadMem1_487d58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487d58 = call %struct.Memory* @routine_callq_.attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487d58, i64 -172568, i64 5, i64 5)
  store %struct.Memory* %call1_487d58, %struct.Memory** %MEMORY

  %loadMem2_487d58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487d58 = load i64, i64* %3
  %call2_487d58 = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64  %loadPC_487d58, %struct.Memory* %loadMem2_487d58)
  store %struct.Memory* %call2_487d58, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 487d5d	 Bytes: 3
  %loadMem_487d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487d5d = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487d5d)
  store %struct.Memory* %call_487d5d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, -0x28(%rbp)	 RIP: 487d60	 Bytes: 4
  %loadMem_487d60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487d60 = call %struct.Memory* @routine_cmpl__0x5__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487d60)
  store %struct.Memory* %call_487d60, %struct.Memory** %MEMORY

  ; Code: je .L_487dbb	 RIP: 487d64	 Bytes: 6
  %loadMem_487d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487d64 = call %struct.Memory* @routine_je_.L_487dbb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487d64, i8* %BRANCH_TAKEN, i64 87, i64 6, i64 6)
  store %struct.Memory* %call_487d64, %struct.Memory** %MEMORY

  %loadBr_487d64 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487d64 = icmp eq i8 %loadBr_487d64, 1
  br i1 %cmpBr_487d64, label %block_.L_487dbb, label %block_487d6a

block_487d6a:
  ; Code: movl $0x5, %eax	 RIP: 487d6a	 Bytes: 5
  %loadMem_487d6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487d6a = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487d6a)
  store %struct.Memory* %call_487d6a, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edi	 RIP: 487d6f	 Bytes: 3
  %loadMem_487d6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487d6f = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487d6f)
  store %struct.Memory* %call_487d6f, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 487d72	 Bytes: 3
  %loadMem_487d72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487d72 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487d72)
  store %struct.Memory* %call_487d72, %struct.Memory** %MEMORY

  ; Code: subl -0x28(%rbp), %eax	 RIP: 487d75	 Bytes: 3
  %loadMem_487d75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487d75 = call %struct.Memory* @routine_subl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487d75)
  store %struct.Memory* %call_487d75, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 487d78	 Bytes: 2
  %loadMem_487d78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487d78 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487d78)
  store %struct.Memory* %call_487d78, %struct.Memory** %MEMORY

  ; Code: callq .change_defense	 RIP: 487d7a	 Bytes: 5
  %loadMem1_487d7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487d7a = call %struct.Memory* @routine_callq_.change_defense(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487d7a, i64 2694, i64 5, i64 5)
  store %struct.Memory* %call1_487d7a, %struct.Memory** %MEMORY

  %loadMem2_487d7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487d7a = load i64, i64* %3
  %call2_487d7a = call %struct.Memory* @sub_488800.change_defense(%struct.State* %0, i64  %loadPC_487d7a, %struct.Memory* %loadMem2_487d7a)
  store %struct.Memory* %call2_487d7a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xab0f28	 RIP: 487d7f	 Bytes: 8
  %loadMem_487d7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487d7f = call %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487d7f)
  store %struct.Memory* %call_487d7f, %struct.Memory** %MEMORY

  ; Code: jne .L_487d92	 RIP: 487d87	 Bytes: 6
  %loadMem_487d87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487d87 = call %struct.Memory* @routine_jne_.L_487d92(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487d87, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_487d87, %struct.Memory** %MEMORY

  %loadBr_487d87 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487d87 = icmp eq i8 %loadBr_487d87, 1
  br i1 %cmpBr_487d87, label %block_.L_487d92, label %block_487d8d

block_487d8d:
  ; Code: jmpq .L_487db6	 RIP: 487d8d	 Bytes: 5
  %loadMem_487d8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487d8d = call %struct.Memory* @routine_jmpq_.L_487db6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487d8d, i64 41, i64 5)
  store %struct.Memory* %call_487d8d, %struct.Memory** %MEMORY

  br label %block_.L_487db6

  ; Code: .L_487d92:	 RIP: 487d92	 Bytes: 0
block_.L_487d92:

  ; Code: movq $0x5831aa, %rdi	 RIP: 487d92	 Bytes: 10
  %loadMem_487d92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487d92 = call %struct.Memory* @routine_movq__0x5831aa___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487d92)
  store %struct.Memory* %call_487d92, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 487d9c	 Bytes: 5
  %loadMem_487d9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487d9c = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487d9c)
  store %struct.Memory* %call_487d9c, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 487da1	 Bytes: 3
  %loadMem_487da1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487da1 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487da1)
  store %struct.Memory* %call_487da1, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edx	 RIP: 487da4	 Bytes: 3
  %loadMem_487da4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487da4 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487da4)
  store %struct.Memory* %call_487da4, %struct.Memory** %MEMORY

  ; Code: subl -0x28(%rbp), %eax	 RIP: 487da7	 Bytes: 3
  %loadMem_487da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487da7 = call %struct.Memory* @routine_subl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487da7)
  store %struct.Memory* %call_487da7, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 487daa	 Bytes: 2
  %loadMem_487daa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487daa = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487daa)
  store %struct.Memory* %call_487daa, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 487dac	 Bytes: 2
  %loadMem_487dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487dac = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487dac)
  store %struct.Memory* %call_487dac, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 487dae	 Bytes: 5
  %loadMem1_487dae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487dae = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487dae, i64 -221182, i64 5, i64 5)
  store %struct.Memory* %call1_487dae, %struct.Memory** %MEMORY

  %loadMem2_487dae = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487dae = load i64, i64* %3
  %call2_487dae = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_487dae, %struct.Memory* %loadMem2_487dae)
  store %struct.Memory* %call2_487dae, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40(%rbp)	 RIP: 487db3	 Bytes: 3
  %loadMem_487db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487db3 = call %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487db3)
  store %struct.Memory* %call_487db3, %struct.Memory** %MEMORY

  ; Code: .L_487db6:	 RIP: 487db6	 Bytes: 0
  br label %block_.L_487db6
block_.L_487db6:

  ; Code: jmpq .L_487dbb	 RIP: 487db6	 Bytes: 5
  %loadMem_487db6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487db6 = call %struct.Memory* @routine_jmpq_.L_487dbb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487db6, i64 5, i64 5)
  store %struct.Memory* %call_487db6, %struct.Memory** %MEMORY

  br label %block_.L_487dbb

  ; Code: .L_487dbb:	 RIP: 487dbb	 Bytes: 0
block_.L_487dbb:

  ; Code: callq .popgo	 RIP: 487dbb	 Bytes: 5
  %loadMem1_487dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487dbb = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487dbb, i64 -499803, i64 5, i64 5)
  store %struct.Memory* %call1_487dbb, %struct.Memory** %MEMORY

  %loadMem2_487dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487dbb = load i64, i64* %3
  %call2_487dbb = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_487dbb, %struct.Memory* %loadMem2_487dbb)
  store %struct.Memory* %call2_487dbb, %struct.Memory** %MEMORY

  ; Code: .L_487dc0:	 RIP: 487dc0	 Bytes: 0
  br label %block_.L_487dc0
block_.L_487dc0:

  ; Code: jmpq .L_487dc5	 RIP: 487dc0	 Bytes: 5
  %loadMem_487dc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487dc0 = call %struct.Memory* @routine_jmpq_.L_487dc5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487dc0, i64 5, i64 5)
  store %struct.Memory* %call_487dc0, %struct.Memory** %MEMORY

  br label %block_.L_487dc5

  ; Code: .L_487dc5:	 RIP: 487dc5	 Bytes: 0
block_.L_487dc5:

  ; Code: jmpq .L_487dca	 RIP: 487dc5	 Bytes: 5
  %loadMem_487dc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487dc5 = call %struct.Memory* @routine_jmpq_.L_487dca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487dc5, i64 5, i64 5)
  store %struct.Memory* %call_487dc5, %struct.Memory** %MEMORY

  br label %block_.L_487dca

  ; Code: .L_487dca:	 RIP: 487dca	 Bytes: 0
block_.L_487dca:

  ; Code: jmpq .L_487dcf	 RIP: 487dca	 Bytes: 5
  %loadMem_487dca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487dca = call %struct.Memory* @routine_jmpq_.L_487dcf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487dca, i64 5, i64 5)
  store %struct.Memory* %call_487dca, %struct.Memory** %MEMORY

  br label %block_.L_487dcf

  ; Code: .L_487dcf:	 RIP: 487dcf	 Bytes: 0
block_.L_487dcf:

  ; Code: jmpq .L_487dd4	 RIP: 487dcf	 Bytes: 5
  %loadMem_487dcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487dcf = call %struct.Memory* @routine_jmpq_.L_487dd4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487dcf, i64 5, i64 5)
  store %struct.Memory* %call_487dcf, %struct.Memory** %MEMORY

  br label %block_.L_487dd4

  ; Code: .L_487dd4:	 RIP: 487dd4	 Bytes: 0
block_.L_487dd4:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 487dd4	 Bytes: 3
  %loadMem_487dd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487dd4 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487dd4)
  store %struct.Memory* %call_487dd4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 487dd7	 Bytes: 3
  %loadMem_487dd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487dd7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487dd7)
  store %struct.Memory* %call_487dd7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 487dda	 Bytes: 3
  %loadMem_487dda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487dda = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487dda)
  store %struct.Memory* %call_487dda, %struct.Memory** %MEMORY

  ; Code: jmpq .L_487be1	 RIP: 487ddd	 Bytes: 5
  %loadMem_487ddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487ddd = call %struct.Memory* @routine_jmpq_.L_487be1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487ddd, i64 -508, i64 5)
  store %struct.Memory* %call_487ddd, %struct.Memory** %MEMORY

  br label %block_.L_487be1

  ; Code: .L_487de2:	 RIP: 487de2	 Bytes: 0
block_.L_487de2:

  ; Code: cmpl $0x0, 0xb54ce4	 RIP: 487de2	 Bytes: 8
  %loadMem_487de2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487de2 = call %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487de2)
  store %struct.Memory* %call_487de2, %struct.Memory** %MEMORY

  ; Code: jne .L_487df5	 RIP: 487dea	 Bytes: 6
  %loadMem_487dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487dea = call %struct.Memory* @routine_jne_.L_487df5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487dea, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_487dea, %struct.Memory** %MEMORY

  %loadBr_487dea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487dea = icmp eq i8 %loadBr_487dea, 1
  br i1 %cmpBr_487dea, label %block_.L_487df5, label %block_487df0

block_487df0:
  ; Code: jmpq .L_487e1d	 RIP: 487df0	 Bytes: 5
  %loadMem_487df0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487df0 = call %struct.Memory* @routine_jmpq_.L_487e1d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487df0, i64 45, i64 5)
  store %struct.Memory* %call_487df0, %struct.Memory** %MEMORY

  br label %block_.L_487e1d

  ; Code: .L_487df5:	 RIP: 487df5	 Bytes: 0
block_.L_487df5:

  ; Code: movq $0x582e3b, %rdi	 RIP: 487df5	 Bytes: 10
  %loadMem_487df5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487df5 = call %struct.Memory* @routine_movq__0x582e3b___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487df5)
  store %struct.Memory* %call_487df5, %struct.Memory** %MEMORY

  ; Code: movl $0x324, %esi	 RIP: 487dff	 Bytes: 5
  %loadMem_487dff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487dff = call %struct.Memory* @routine_movl__0x324___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487dff)
  store %struct.Memory* %call_487dff, %struct.Memory** %MEMORY

  ; Code: movq $0x57a100, %rdx	 RIP: 487e04	 Bytes: 10
  %loadMem_487e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487e04 = call %struct.Memory* @routine_movq__0x57a100___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487e04)
  store %struct.Memory* %call_487e04, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 487e0e	 Bytes: 5
  %loadMem_487e0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487e0e = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487e0e)
  store %struct.Memory* %call_487e0e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 487e13	 Bytes: 2
  %loadMem_487e13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487e13 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487e13)
  store %struct.Memory* %call_487e13, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 487e15	 Bytes: 3
  %loadMem_487e15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487e15 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487e15)
  store %struct.Memory* %call_487e15, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 487e18	 Bytes: 5
  %loadMem1_487e18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487e18 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487e18, i64 -220552, i64 5, i64 5)
  store %struct.Memory* %call1_487e18, %struct.Memory** %MEMORY

  %loadMem2_487e18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487e18 = load i64, i64* %3
  %call2_487e18 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_487e18, %struct.Memory* %loadMem2_487e18)
  store %struct.Memory* %call2_487e18, %struct.Memory** %MEMORY

  ; Code: .L_487e1d:	 RIP: 487e1d	 Bytes: 0
  br label %block_.L_487e1d
block_.L_487e1d:

  ; Code: callq .find_defense_patterns	 RIP: 487e1d	 Bytes: 5
  %loadMem1_487e1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487e1d = call %struct.Memory* @routine_callq_.find_defense_patterns(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487e1d, i64 6883, i64 5, i64 5)
  store %struct.Memory* %call1_487e1d, %struct.Memory** %MEMORY

  %loadMem2_487e1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487e1d = load i64, i64* %3
  %call2_487e1d = call %struct.Memory* @sub_489900.find_defense_patterns(%struct.State* %0, i64  %loadPC_487e1d, %struct.Memory* %loadMem2_487e1d)
  store %struct.Memory* %call2_487e1d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb54ce4	 RIP: 487e22	 Bytes: 8
  %loadMem_487e22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487e22 = call %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487e22)
  store %struct.Memory* %call_487e22, %struct.Memory** %MEMORY

  ; Code: jne .L_487e35	 RIP: 487e2a	 Bytes: 6
  %loadMem_487e2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487e2a = call %struct.Memory* @routine_jne_.L_487e35(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487e2a, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_487e2a, %struct.Memory** %MEMORY

  %loadBr_487e2a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487e2a = icmp eq i8 %loadBr_487e2a, 1
  br i1 %cmpBr_487e2a, label %block_.L_487e35, label %block_487e30

block_487e30:
  ; Code: jmpq .L_487e5d	 RIP: 487e30	 Bytes: 5
  %loadMem_487e30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487e30 = call %struct.Memory* @routine_jmpq_.L_487e5d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487e30, i64 45, i64 5)
  store %struct.Memory* %call_487e30, %struct.Memory** %MEMORY

  br label %block_.L_487e5d

  ; Code: .L_487e35:	 RIP: 487e35	 Bytes: 0
block_.L_487e35:

  ; Code: movq $0x582e3b, %rdi	 RIP: 487e35	 Bytes: 10
  %loadMem_487e35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487e35 = call %struct.Memory* @routine_movq__0x582e3b___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487e35)
  store %struct.Memory* %call_487e35, %struct.Memory** %MEMORY

  ; Code: movl $0x328, %esi	 RIP: 487e3f	 Bytes: 5
  %loadMem_487e3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487e3f = call %struct.Memory* @routine_movl__0x328___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487e3f)
  store %struct.Memory* %call_487e3f, %struct.Memory** %MEMORY

  ; Code: movq $0x57a100, %rdx	 RIP: 487e44	 Bytes: 10
  %loadMem_487e44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487e44 = call %struct.Memory* @routine_movq__0x57a100___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487e44)
  store %struct.Memory* %call_487e44, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 487e4e	 Bytes: 5
  %loadMem_487e4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487e4e = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487e4e)
  store %struct.Memory* %call_487e4e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 487e53	 Bytes: 2
  %loadMem_487e53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487e53 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487e53)
  store %struct.Memory* %call_487e53, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 487e55	 Bytes: 3
  %loadMem_487e55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487e55 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487e55)
  store %struct.Memory* %call_487e55, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 487e58	 Bytes: 5
  %loadMem1_487e58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487e58 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487e58, i64 -220616, i64 5, i64 5)
  store %struct.Memory* %call1_487e58, %struct.Memory** %MEMORY

  %loadMem2_487e58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487e58 = load i64, i64* %3
  %call2_487e58 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_487e58, %struct.Memory* %loadMem2_487e58)
  store %struct.Memory* %call2_487e58, %struct.Memory** %MEMORY

  ; Code: .L_487e5d:	 RIP: 487e5d	 Bytes: 0
  br label %block_.L_487e5d
block_.L_487e5d:

  ; Code: movl $0x15, -0x4(%rbp)	 RIP: 487e5d	 Bytes: 7
  %loadMem_487e5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487e5d = call %struct.Memory* @routine_movl__0x15__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487e5d)
  store %struct.Memory* %call_487e5d, %struct.Memory** %MEMORY

  ; Code: .L_487e64:	 RIP: 487e64	 Bytes: 0
  br label %block_.L_487e64
block_.L_487e64:

  ; Code: cmpl $0x190, -0x4(%rbp)	 RIP: 487e64	 Bytes: 7
  %loadMem_487e64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487e64 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487e64)
  store %struct.Memory* %call_487e64, %struct.Memory** %MEMORY

  ; Code: jge .L_4880a3	 RIP: 487e6b	 Bytes: 6
  %loadMem_487e6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487e6b = call %struct.Memory* @routine_jge_.L_4880a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487e6b, i8* %BRANCH_TAKEN, i64 568, i64 6, i64 6)
  store %struct.Memory* %call_487e6b, %struct.Memory** %MEMORY

  %loadBr_487e6b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487e6b = icmp eq i8 %loadBr_487e6b, 1
  br i1 %cmpBr_487e6b, label %block_.L_4880a3, label %block_487e71

block_487e71:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 487e71	 Bytes: 4
  %loadMem_487e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487e71 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487e71)
  store %struct.Memory* %call_487e71, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 487e75	 Bytes: 8
  %loadMem_487e75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487e75 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487e75)
  store %struct.Memory* %call_487e75, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x20(%rbp)	 RIP: 487e7d	 Bytes: 3
  %loadMem_487e7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487e7d = call %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487e7d)
  store %struct.Memory* %call_487e7d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, -0x20(%rbp)	 RIP: 487e80	 Bytes: 4
  %loadMem_487e80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487e80 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487e80)
  store %struct.Memory* %call_487e80, %struct.Memory** %MEMORY

  ; Code: je .L_487e94	 RIP: 487e84	 Bytes: 6
  %loadMem_487e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487e84 = call %struct.Memory* @routine_je_.L_487e94(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487e84, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_487e84, %struct.Memory** %MEMORY

  %loadBr_487e84 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487e84 = icmp eq i8 %loadBr_487e84, 1
  br i1 %cmpBr_487e84, label %block_.L_487e94, label %block_487e8a

block_487e8a:
  ; Code: cmpl $0x2, -0x20(%rbp)	 RIP: 487e8a	 Bytes: 4
  %loadMem_487e8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487e8a = call %struct.Memory* @routine_cmpl__0x2__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487e8a)
  store %struct.Memory* %call_487e8a, %struct.Memory** %MEMORY

  ; Code: jne .L_487ea8	 RIP: 487e8e	 Bytes: 6
  %loadMem_487e8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487e8e = call %struct.Memory* @routine_jne_.L_487ea8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487e8e, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_487e8e, %struct.Memory** %MEMORY

  %loadBr_487e8e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487e8e = icmp eq i8 %loadBr_487e8e, 1
  br i1 %cmpBr_487e8e, label %block_.L_487ea8, label %block_.L_487e94

  ; Code: .L_487e94:	 RIP: 487e94	 Bytes: 0
block_.L_487e94:

  ; Code: movl -0x4(%rbp), %edi	 RIP: 487e94	 Bytes: 3
  %loadMem_487e94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487e94 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487e94)
  store %struct.Memory* %call_487e94, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 487e97	 Bytes: 3
  %loadMem_487e97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487e97 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487e97)
  store %struct.Memory* %call_487e97, %struct.Memory** %MEMORY

  ; Code: callq .is_worm_origin	 RIP: 487e9a	 Bytes: 5
  %loadMem1_487e9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487e9a = call %struct.Memory* @routine_callq_.is_worm_origin(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487e9a, i64 598, i64 5, i64 5)
  store %struct.Memory* %call1_487e9a, %struct.Memory** %MEMORY

  %loadMem2_487e9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487e9a = load i64, i64* %3
  %call2_487e9a = call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* %0, i64  %loadPC_487e9a, %struct.Memory* %loadMem2_487e9a)
  store %struct.Memory* %call2_487e9a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 487e9f	 Bytes: 3
  %loadMem_487e9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487e9f = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487e9f)
  store %struct.Memory* %call_487e9f, %struct.Memory** %MEMORY

  ; Code: jne .L_487ead	 RIP: 487ea2	 Bytes: 6
  %loadMem_487ea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487ea2 = call %struct.Memory* @routine_jne_.L_487ead(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487ea2, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_487ea2, %struct.Memory** %MEMORY

  %loadBr_487ea2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487ea2 = icmp eq i8 %loadBr_487ea2, 1
  br i1 %cmpBr_487ea2, label %block_.L_487ead, label %block_.L_487ea8

  ; Code: .L_487ea8:	 RIP: 487ea8	 Bytes: 0
block_.L_487ea8:

  ; Code: jmpq .L_488095	 RIP: 487ea8	 Bytes: 5
  %loadMem_487ea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487ea8 = call %struct.Memory* @routine_jmpq_.L_488095(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487ea8, i64 493, i64 5)
  store %struct.Memory* %call_487ea8, %struct.Memory** %MEMORY

  br label %block_.L_488095

  ; Code: .L_487ead:	 RIP: 487ead	 Bytes: 0
block_.L_487ead:

  ; Code: movq $0xb0eff0, %rax	 RIP: 487ead	 Bytes: 10
  %loadMem_487ead = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487ead = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487ead)
  store %struct.Memory* %call_487ead, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %ecx	 RIP: 487eb7	 Bytes: 5
  %loadMem_487eb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487eb7 = call %struct.Memory* @routine_movl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487eb7)
  store %struct.Memory* %call_487eb7, %struct.Memory** %MEMORY

  ; Code: subl -0x20(%rbp), %ecx	 RIP: 487ebc	 Bytes: 3
  %loadMem_487ebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487ebc = call %struct.Memory* @routine_subl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487ebc)
  store %struct.Memory* %call_487ebc, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x24(%rbp)	 RIP: 487ebf	 Bytes: 3
  %loadMem_487ebf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487ebf = call %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487ebf)
  store %struct.Memory* %call_487ebf, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 487ec2	 Bytes: 4
  %loadMem_487ec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487ec2 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487ec2)
  store %struct.Memory* %call_487ec2, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rdx, %rdx	 RIP: 487ec6	 Bytes: 7
  %loadMem_487ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487ec6 = call %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487ec6)
  store %struct.Memory* %call_487ec6, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 487ecd	 Bytes: 3
  %loadMem_487ecd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487ecd = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487ecd)
  store %struct.Memory* %call_487ecd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x64(%rax)	 RIP: 487ed0	 Bytes: 4
  %loadMem_487ed0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487ed0 = call %struct.Memory* @routine_cmpl__0x0__0x64__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487ed0)
  store %struct.Memory* %call_487ed0, %struct.Memory** %MEMORY

  ; Code: jne .L_487edf	 RIP: 487ed4	 Bytes: 6
  %loadMem_487ed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487ed4 = call %struct.Memory* @routine_jne_.L_487edf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487ed4, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_487ed4, %struct.Memory** %MEMORY

  %loadBr_487ed4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487ed4 = icmp eq i8 %loadBr_487ed4, 1
  br i1 %cmpBr_487ed4, label %block_.L_487edf, label %block_487eda

block_487eda:
  ; Code: jmpq .L_488095	 RIP: 487eda	 Bytes: 5
  %loadMem_487eda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487eda = call %struct.Memory* @routine_jmpq_.L_488095(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487eda, i64 443, i64 5)
  store %struct.Memory* %call_487eda, %struct.Memory** %MEMORY

  br label %block_.L_488095

  ; Code: .L_487edf:	 RIP: 487edf	 Bytes: 0
block_.L_487edf:

  ; Code: movl $0xf1, %esi	 RIP: 487edf	 Bytes: 5
  %loadMem_487edf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487edf = call %struct.Memory* @routine_movl__0xf1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487edf)
  store %struct.Memory* %call_487edf, %struct.Memory** %MEMORY

  ; Code: movq $0xae4250, %rdx	 RIP: 487ee4	 Bytes: 10
  %loadMem_487ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487ee4 = call %struct.Memory* @routine_movq__0xae4250___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487ee4)
  store %struct.Memory* %call_487ee4, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edi	 RIP: 487eee	 Bytes: 3
  %loadMem_487eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487eee = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487eee)
  store %struct.Memory* %call_487eee, %struct.Memory** %MEMORY

  ; Code: callq .findlib	 RIP: 487ef1	 Bytes: 5
  %loadMem1_487ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487ef1 = call %struct.Memory* @routine_callq_.findlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487ef1, i64 -493233, i64 5, i64 5)
  store %struct.Memory* %call1_487ef1, %struct.Memory** %MEMORY

  %loadMem2_487ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487ef1 = load i64, i64* %3
  %call2_487ef1 = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64  %loadPC_487ef1, %struct.Memory* %loadMem2_487ef1)
  store %struct.Memory* %call2_487ef1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 487ef6	 Bytes: 3
  %loadMem_487ef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487ef6 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487ef6)
  store %struct.Memory* %call_487ef6, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 487ef9	 Bytes: 7
  %loadMem_487ef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487ef9 = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487ef9)
  store %struct.Memory* %call_487ef9, %struct.Memory** %MEMORY

  ; Code: .L_487f00:	 RIP: 487f00	 Bytes: 0
  br label %block_.L_487f00
block_.L_487f00:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 487f00	 Bytes: 3
  %loadMem_487f00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f00 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f00)
  store %struct.Memory* %call_487f00, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1c(%rbp), %eax	 RIP: 487f03	 Bytes: 3
  %loadMem_487f03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f03 = call %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f03)
  store %struct.Memory* %call_487f03, %struct.Memory** %MEMORY

  ; Code: jge .L_488090	 RIP: 487f06	 Bytes: 6
  %loadMem_487f06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f06 = call %struct.Memory* @routine_jge_.L_488090(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f06, i8* %BRANCH_TAKEN, i64 394, i64 6, i64 6)
  store %struct.Memory* %call_487f06, %struct.Memory** %MEMORY

  %loadBr_487f06 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487f06 = icmp eq i8 %loadBr_487f06, 1
  br i1 %cmpBr_487f06, label %block_.L_488090, label %block_487f0c

block_487f0c:
  ; Code: movslq -0x8(%rbp), %rax	 RIP: 487f0c	 Bytes: 4
  %loadMem_487f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f0c = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f0c)
  store %struct.Memory* %call_487f0c, %struct.Memory** %MEMORY

  ; Code: movl 0xae4250(,%rax,4), %ecx	 RIP: 487f10	 Bytes: 7
  %loadMem_487f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f10 = call %struct.Memory* @routine_movl_0xae4250___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f10)
  store %struct.Memory* %call_487f10, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2c(%rbp)	 RIP: 487f17	 Bytes: 3
  %loadMem_487f17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f17 = call %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f17)
  store %struct.Memory* %call_487f17, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edi	 RIP: 487f1a	 Bytes: 3
  %loadMem_487f1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f1a = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f1a)
  store %struct.Memory* %call_487f1a, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 487f1d	 Bytes: 3
  %loadMem_487f1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f1d = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f1d)
  store %struct.Memory* %call_487f1d, %struct.Memory** %MEMORY

  ; Code: callq .attack_move_known	 RIP: 487f20	 Bytes: 5
  %loadMem1_487f20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487f20 = call %struct.Memory* @routine_callq_.attack_move_known(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487f20, i64 6688, i64 5, i64 5)
  store %struct.Memory* %call1_487f20, %struct.Memory** %MEMORY

  %loadMem2_487f20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487f20 = load i64, i64* %3
  %call2_487f20 = call %struct.Memory* @sub_489940.attack_move_known(%struct.State* %0, i64  %loadPC_487f20, %struct.Memory* %loadMem2_487f20)
  store %struct.Memory* %call2_487f20, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 487f25	 Bytes: 3
  %loadMem_487f25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f25 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f25)
  store %struct.Memory* %call_487f25, %struct.Memory** %MEMORY

  ; Code: jne .L_487fdf	 RIP: 487f28	 Bytes: 6
  %loadMem_487f28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f28 = call %struct.Memory* @routine_jne_.L_487fdf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f28, i8* %BRANCH_TAKEN, i64 183, i64 6, i64 6)
  store %struct.Memory* %call_487f28, %struct.Memory** %MEMORY

  %loadBr_487f28 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487f28 = icmp eq i8 %loadBr_487f28, 1
  br i1 %cmpBr_487f28, label %block_.L_487fdf, label %block_487f2e

block_487f2e:
  ; Code: movq $0x582f5f, %rdx	 RIP: 487f2e	 Bytes: 10
  %loadMem_487f2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f2e = call %struct.Memory* @routine_movq__0x582f5f___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f2e)
  store %struct.Memory* %call_487f2e, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 487f38	 Bytes: 2
  %loadMem_487f38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f38 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f38)
  store %struct.Memory* %call_487f38, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edi	 RIP: 487f3a	 Bytes: 3
  %loadMem_487f3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f3a = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f3a)
  store %struct.Memory* %call_487f3a, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %esi	 RIP: 487f3d	 Bytes: 3
  %loadMem_487f3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f3d = call %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f3d)
  store %struct.Memory* %call_487f3d, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 487f40	 Bytes: 3
  %loadMem_487f40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f40 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f40)
  store %struct.Memory* %call_487f40, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 487f43	 Bytes: 3
  %loadMem_487f43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f43 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f43)
  store %struct.Memory* %call_487f43, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 487f46	 Bytes: 3
  %loadMem_487f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f46 = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f46)
  store %struct.Memory* %call_487f46, %struct.Memory** %MEMORY

  ; Code: callq .trymove	 RIP: 487f49	 Bytes: 5
  %loadMem1_487f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487f49 = call %struct.Memory* @routine_callq_.trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487f49, i64 -520473, i64 5, i64 5)
  store %struct.Memory* %call1_487f49, %struct.Memory** %MEMORY

  %loadMem2_487f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487f49 = load i64, i64* %3
  %call2_487f49 = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64  %loadPC_487f49, %struct.Memory* %loadMem2_487f49)
  store %struct.Memory* %call2_487f49, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 487f4e	 Bytes: 3
  %loadMem_487f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f4e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f4e)
  store %struct.Memory* %call_487f4e, %struct.Memory** %MEMORY

  ; Code: je .L_487fda	 RIP: 487f51	 Bytes: 6
  %loadMem_487f51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f51 = call %struct.Memory* @routine_je_.L_487fda(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f51, i8* %BRANCH_TAKEN, i64 137, i64 6, i64 6)
  store %struct.Memory* %call_487f51, %struct.Memory** %MEMORY

  %loadBr_487f51 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487f51 = icmp eq i8 %loadBr_487f51, 1
  br i1 %cmpBr_487f51, label %block_.L_487fda, label %block_487f57

block_487f57:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 487f57	 Bytes: 4
  %loadMem_487f57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f57 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f57)
  store %struct.Memory* %call_487f57, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 487f5b	 Bytes: 8
  %loadMem_487f5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f5b = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f5b)
  store %struct.Memory* %call_487f5b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 487f63	 Bytes: 3
  %loadMem_487f63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f63 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f63)
  store %struct.Memory* %call_487f63, %struct.Memory** %MEMORY

  ; Code: je .L_487f81	 RIP: 487f66	 Bytes: 6
  %loadMem_487f66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f66 = call %struct.Memory* @routine_je_.L_487f81(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f66, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_487f66, %struct.Memory** %MEMORY

  %loadBr_487f66 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487f66 = icmp eq i8 %loadBr_487f66, 1
  br i1 %cmpBr_487f66, label %block_.L_487f81, label %block_487f6c

block_487f6c:
  ; Code: xorl %eax, %eax	 RIP: 487f6c	 Bytes: 2
  %loadMem_487f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f6c = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f6c)
  store %struct.Memory* %call_487f6c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 487f6e	 Bytes: 2
  %loadMem_487f6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f6e = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f6e)
  store %struct.Memory* %call_487f6e, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edi	 RIP: 487f70	 Bytes: 3
  %loadMem_487f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f70 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f70)
  store %struct.Memory* %call_487f70, %struct.Memory** %MEMORY

  ; Code: callq .attack	 RIP: 487f73	 Bytes: 5
  %loadMem1_487f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487f73 = call %struct.Memory* @routine_callq_.attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487f73, i64 -173107, i64 5, i64 5)
  store %struct.Memory* %call1_487f73, %struct.Memory** %MEMORY

  %loadMem2_487f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487f73 = load i64, i64* %3
  %call2_487f73 = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64  %loadPC_487f73, %struct.Memory* %loadMem2_487f73)
  store %struct.Memory* %call2_487f73, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 487f78	 Bytes: 3
  %loadMem_487f78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f78 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f78)
  store %struct.Memory* %call_487f78, %struct.Memory** %MEMORY

  ; Code: je .L_487fd5	 RIP: 487f7b	 Bytes: 6
  %loadMem_487f7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f7b = call %struct.Memory* @routine_je_.L_487fd5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f7b, i8* %BRANCH_TAKEN, i64 90, i64 6, i64 6)
  store %struct.Memory* %call_487f7b, %struct.Memory** %MEMORY

  %loadBr_487f7b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487f7b = icmp eq i8 %loadBr_487f7b, 1
  br i1 %cmpBr_487f7b, label %block_.L_487fd5, label %block_.L_487f81

  ; Code: .L_487f81:	 RIP: 487f81	 Bytes: 0
block_.L_487f81:

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 487f81	 Bytes: 4
  %loadMem_487f81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f81 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f81)
  store %struct.Memory* %call_487f81, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 487f85	 Bytes: 8
  %loadMem_487f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f85 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f85)
  store %struct.Memory* %call_487f85, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 487f8d	 Bytes: 3
  %loadMem_487f8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f8d = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f8d)
  store %struct.Memory* %call_487f8d, %struct.Memory** %MEMORY

  ; Code: jne .L_487fa2	 RIP: 487f90	 Bytes: 6
  %loadMem_487f90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f90 = call %struct.Memory* @routine_jne_.L_487fa2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f90, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_487f90, %struct.Memory** %MEMORY

  %loadBr_487f90 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487f90 = icmp eq i8 %loadBr_487f90, 1
  br i1 %cmpBr_487f90, label %block_.L_487fa2, label %block_487f96

block_487f96:
  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 487f96	 Bytes: 7
  %loadMem_487f96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f96 = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f96)
  store %struct.Memory* %call_487f96, %struct.Memory** %MEMORY

  ; Code: jmpq .L_487fb1	 RIP: 487f9d	 Bytes: 5
  %loadMem_487f9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487f9d = call %struct.Memory* @routine_jmpq_.L_487fb1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487f9d, i64 20, i64 5)
  store %struct.Memory* %call_487f9d, %struct.Memory** %MEMORY

  br label %block_.L_487fb1

  ; Code: .L_487fa2:	 RIP: 487fa2	 Bytes: 0
block_.L_487fa2:

  ; Code: xorl %eax, %eax	 RIP: 487fa2	 Bytes: 2
  %loadMem_487fa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487fa2 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487fa2)
  store %struct.Memory* %call_487fa2, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 487fa4	 Bytes: 2
  %loadMem_487fa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487fa4 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487fa4)
  store %struct.Memory* %call_487fa4, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edi	 RIP: 487fa6	 Bytes: 3
  %loadMem_487fa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487fa6 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487fa6)
  store %struct.Memory* %call_487fa6, %struct.Memory** %MEMORY

  ; Code: callq .find_defense	 RIP: 487fa9	 Bytes: 5
  %loadMem1_487fa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487fa9 = call %struct.Memory* @routine_callq_.find_defense(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487fa9, i64 -120873, i64 5, i64 5)
  store %struct.Memory* %call1_487fa9, %struct.Memory** %MEMORY

  %loadMem2_487fa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487fa9 = load i64, i64* %3
  %call2_487fa9 = call %struct.Memory* @sub_46a780.find_defense(%struct.State* %0, i64  %loadPC_487fa9, %struct.Memory* %loadMem2_487fa9)
  store %struct.Memory* %call2_487fa9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 487fae	 Bytes: 3
  %loadMem_487fae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487fae = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487fae)
  store %struct.Memory* %call_487fae, %struct.Memory** %MEMORY

  ; Code: .L_487fb1:	 RIP: 487fb1	 Bytes: 0
  br label %block_.L_487fb1
block_.L_487fb1:

  ; Code: cmpl $0x5, -0x10(%rbp)	 RIP: 487fb1	 Bytes: 4
  %loadMem_487fb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487fb1 = call %struct.Memory* @routine_cmpl__0x5__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487fb1)
  store %struct.Memory* %call_487fb1, %struct.Memory** %MEMORY

  ; Code: je .L_487fd0	 RIP: 487fb5	 Bytes: 6
  %loadMem_487fb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487fb5 = call %struct.Memory* @routine_je_.L_487fd0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487fb5, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_487fb5, %struct.Memory** %MEMORY

  %loadBr_487fb5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487fb5 = icmp eq i8 %loadBr_487fb5, 1
  br i1 %cmpBr_487fb5, label %block_.L_487fd0, label %block_487fbb

block_487fbb:
  ; Code: movl $0x5, %eax	 RIP: 487fbb	 Bytes: 5
  %loadMem_487fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487fbb = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487fbb)
  store %struct.Memory* %call_487fbb, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edi	 RIP: 487fc0	 Bytes: 3
  %loadMem_487fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487fc0 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487fc0)
  store %struct.Memory* %call_487fc0, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 487fc3	 Bytes: 3
  %loadMem_487fc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487fc3 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487fc3)
  store %struct.Memory* %call_487fc3, %struct.Memory** %MEMORY

  ; Code: subl -0x10(%rbp), %eax	 RIP: 487fc6	 Bytes: 3
  %loadMem_487fc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487fc6 = call %struct.Memory* @routine_subl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487fc6)
  store %struct.Memory* %call_487fc6, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 487fc9	 Bytes: 2
  %loadMem_487fc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487fc9 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487fc9)
  store %struct.Memory* %call_487fc9, %struct.Memory** %MEMORY

  ; Code: callq .change_attack	 RIP: 487fcb	 Bytes: 5
  %loadMem1_487fcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487fcb = call %struct.Memory* @routine_callq_.change_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487fcb, i64 1909, i64 5, i64 5)
  store %struct.Memory* %call1_487fcb, %struct.Memory** %MEMORY

  %loadMem2_487fcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487fcb = load i64, i64* %3
  %call2_487fcb = call %struct.Memory* @sub_488740.change_attack(%struct.State* %0, i64  %loadPC_487fcb, %struct.Memory* %loadMem2_487fcb)
  store %struct.Memory* %call2_487fcb, %struct.Memory** %MEMORY

  ; Code: .L_487fd0:	 RIP: 487fd0	 Bytes: 0
  br label %block_.L_487fd0
block_.L_487fd0:

  ; Code: jmpq .L_487fd5	 RIP: 487fd0	 Bytes: 5
  %loadMem_487fd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487fd0 = call %struct.Memory* @routine_jmpq_.L_487fd5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487fd0, i64 5, i64 5)
  store %struct.Memory* %call_487fd0, %struct.Memory** %MEMORY

  br label %block_.L_487fd5

  ; Code: .L_487fd5:	 RIP: 487fd5	 Bytes: 0
block_.L_487fd5:

  ; Code: callq .popgo	 RIP: 487fd5	 Bytes: 5
  %loadMem1_487fd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487fd5 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487fd5, i64 -500341, i64 5, i64 5)
  store %struct.Memory* %call1_487fd5, %struct.Memory** %MEMORY

  %loadMem2_487fd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487fd5 = load i64, i64* %3
  %call2_487fd5 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_487fd5, %struct.Memory* %loadMem2_487fd5)
  store %struct.Memory* %call2_487fd5, %struct.Memory** %MEMORY

  ; Code: .L_487fda:	 RIP: 487fda	 Bytes: 0
  br label %block_.L_487fda
block_.L_487fda:

  ; Code: jmpq .L_487fdf	 RIP: 487fda	 Bytes: 5
  %loadMem_487fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487fda = call %struct.Memory* @routine_jmpq_.L_487fdf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487fda, i64 5, i64 5)
  store %struct.Memory* %call_487fda, %struct.Memory** %MEMORY

  br label %block_.L_487fdf

  ; Code: .L_487fdf:	 RIP: 487fdf	 Bytes: 0
block_.L_487fdf:

  ; Code: movl -0x2c(%rbp), %edi	 RIP: 487fdf	 Bytes: 3
  %loadMem_487fdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487fdf = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487fdf)
  store %struct.Memory* %call_487fdf, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 487fe2	 Bytes: 3
  %loadMem_487fe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487fe2 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487fe2)
  store %struct.Memory* %call_487fe2, %struct.Memory** %MEMORY

  ; Code: callq .defense_move_known	 RIP: 487fe5	 Bytes: 5
  %loadMem1_487fe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487fe5 = call %struct.Memory* @routine_callq_.defense_move_known(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487fe5, i64 6587, i64 5, i64 5)
  store %struct.Memory* %call1_487fe5, %struct.Memory** %MEMORY

  %loadMem2_487fe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487fe5 = load i64, i64* %3
  %call2_487fe5 = call %struct.Memory* @sub_4899a0.defense_move_known(%struct.State* %0, i64  %loadPC_487fe5, %struct.Memory* %loadMem2_487fe5)
  store %struct.Memory* %call2_487fe5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 487fea	 Bytes: 3
  %loadMem_487fea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487fea = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487fea)
  store %struct.Memory* %call_487fea, %struct.Memory** %MEMORY

  ; Code: jne .L_48807d	 RIP: 487fed	 Bytes: 6
  %loadMem_487fed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487fed = call %struct.Memory* @routine_jne_.L_48807d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487fed, i8* %BRANCH_TAKEN, i64 144, i64 6, i64 6)
  store %struct.Memory* %call_487fed, %struct.Memory** %MEMORY

  %loadBr_487fed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487fed = icmp eq i8 %loadBr_487fed, 1
  br i1 %cmpBr_487fed, label %block_.L_48807d, label %block_487ff3

block_487ff3:
  ; Code: movq $0xb0eff0, %rax	 RIP: 487ff3	 Bytes: 10
  %loadMem_487ff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487ff3 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487ff3)
  store %struct.Memory* %call_487ff3, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 487ffd	 Bytes: 4
  %loadMem_487ffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487ffd = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487ffd)
  store %struct.Memory* %call_487ffd, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 488001	 Bytes: 7
  %loadMem_488001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_488001 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_488001)
  store %struct.Memory* %call_488001, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 488008	 Bytes: 3
  %loadMem_488008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_488008 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_488008)
  store %struct.Memory* %call_488008, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb4(%rax)	 RIP: 48800b	 Bytes: 7
  %loadMem_48800b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48800b = call %struct.Memory* @routine_cmpl__0x0__0xb4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48800b)
  store %struct.Memory* %call_48800b, %struct.Memory** %MEMORY

  ; Code: je .L_488078	 RIP: 488012	 Bytes: 6
  %loadMem_488012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_488012 = call %struct.Memory* @routine_je_.L_488078(%struct.State* %0, i64  0, %struct.Memory* %loadMem_488012, i8* %BRANCH_TAKEN, i64 102, i64 6, i64 6)
  store %struct.Memory* %call_488012, %struct.Memory** %MEMORY

  %loadBr_488012 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_488012 = icmp eq i8 %loadBr_488012, 1
  br i1 %cmpBr_488012, label %block_.L_488078, label %block_488018

block_488018:
  ; Code: movq $0x582f5f, %rdx	 RIP: 488018	 Bytes: 10
  %loadMem_488018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_488018 = call %struct.Memory* @routine_movq__0x582f5f___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_488018)
  store %struct.Memory* %call_488018, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 488022	 Bytes: 2
  %loadMem_488022 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_488022 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_488022)
  store %struct.Memory* %call_488022, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edi	 RIP: 488024	 Bytes: 3
  %loadMem_488024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_488024 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_488024)
  store %struct.Memory* %call_488024, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %esi	 RIP: 488027	 Bytes: 3
  %loadMem_488027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_488027 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_488027)
  store %struct.Memory* %call_488027, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 48802a	 Bytes: 2
  %loadMem_48802a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48802a = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48802a)
  store %struct.Memory* %call_48802a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 48802c	 Bytes: 3
  %loadMem_48802c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48802c = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48802c)
  store %struct.Memory* %call_48802c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 48802f	 Bytes: 3
  %loadMem_48802f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48802f = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48802f)
  store %struct.Memory* %call_48802f, %struct.Memory** %MEMORY

  ; Code: callq .trymove	 RIP: 488032	 Bytes: 5
  %loadMem1_488032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_488032 = call %struct.Memory* @routine_callq_.trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_488032, i64 -520706, i64 5, i64 5)
  store %struct.Memory* %call1_488032, %struct.Memory** %MEMORY

  %loadMem2_488032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_488032 = load i64, i64* %3
  %call2_488032 = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64  %loadPC_488032, %struct.Memory* %loadMem2_488032)
  store %struct.Memory* %call2_488032, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 488037	 Bytes: 3
  %loadMem_488037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_488037 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_488037)
  store %struct.Memory* %call_488037, %struct.Memory** %MEMORY

  ; Code: je .L_488073	 RIP: 48803a	 Bytes: 6
  %loadMem_48803a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48803a = call %struct.Memory* @routine_je_.L_488073(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48803a, i8* %BRANCH_TAKEN, i64 57, i64 6, i64 6)
  store %struct.Memory* %call_48803a, %struct.Memory** %MEMORY

  %loadBr_48803a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48803a = icmp eq i8 %loadBr_48803a, 1
  br i1 %cmpBr_48803a, label %block_.L_488073, label %block_488040

block_488040:
  ; Code: xorl %eax, %eax	 RIP: 488040	 Bytes: 2
  %loadMem_488040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_488040 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_488040)
  store %struct.Memory* %call_488040, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 488042	 Bytes: 2
  %loadMem_488042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_488042 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_488042)
  store %struct.Memory* %call_488042, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edi	 RIP: 488044	 Bytes: 3
  %loadMem_488044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_488044 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_488044)
  store %struct.Memory* %call_488044, %struct.Memory** %MEMORY

  ; Code: callq .attack	 RIP: 488047	 Bytes: 5
  %loadMem1_488047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_488047 = call %struct.Memory* @routine_callq_.attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_488047, i64 -173319, i64 5, i64 5)
  store %struct.Memory* %call1_488047, %struct.Memory** %MEMORY

  %loadMem2_488047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_488047 = load i64, i64* %3
  %call2_488047 = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64  %loadPC_488047, %struct.Memory* %loadMem2_488047)
  store %struct.Memory* %call2_488047, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 48804c	 Bytes: 3
  %loadMem_48804c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48804c = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48804c)
  store %struct.Memory* %call_48804c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, -0xc(%rbp)	 RIP: 48804f	 Bytes: 4
  %loadMem_48804f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48804f = call %struct.Memory* @routine_cmpl__0x5__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48804f)
  store %struct.Memory* %call_48804f, %struct.Memory** %MEMORY

  ; Code: je .L_48806e	 RIP: 488053	 Bytes: 6
  %loadMem_488053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_488053 = call %struct.Memory* @routine_je_.L_48806e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_488053, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_488053, %struct.Memory** %MEMORY

  %loadBr_488053 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_488053 = icmp eq i8 %loadBr_488053, 1
  br i1 %cmpBr_488053, label %block_.L_48806e, label %block_488059

block_488059:
  ; Code: movl $0x5, %eax	 RIP: 488059	 Bytes: 5
  %loadMem_488059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_488059 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_488059)
  store %struct.Memory* %call_488059, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edi	 RIP: 48805e	 Bytes: 3
  %loadMem_48805e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48805e = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48805e)
  store %struct.Memory* %call_48805e, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 488061	 Bytes: 3
  %loadMem_488061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_488061 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_488061)
  store %struct.Memory* %call_488061, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 488064	 Bytes: 3
  %loadMem_488064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_488064 = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_488064)
  store %struct.Memory* %call_488064, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 488067	 Bytes: 2
  %loadMem_488067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_488067 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_488067)
  store %struct.Memory* %call_488067, %struct.Memory** %MEMORY

  ; Code: callq .change_defense	 RIP: 488069	 Bytes: 5
  %loadMem1_488069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_488069 = call %struct.Memory* @routine_callq_.change_defense(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_488069, i64 1943, i64 5, i64 5)
  store %struct.Memory* %call1_488069, %struct.Memory** %MEMORY

  %loadMem2_488069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_488069 = load i64, i64* %3
  %call2_488069 = call %struct.Memory* @sub_488800.change_defense(%struct.State* %0, i64  %loadPC_488069, %struct.Memory* %loadMem2_488069)
  store %struct.Memory* %call2_488069, %struct.Memory** %MEMORY

  ; Code: .L_48806e:	 RIP: 48806e	 Bytes: 0
  br label %block_.L_48806e
block_.L_48806e:

  ; Code: callq .popgo	 RIP: 48806e	 Bytes: 5
  %loadMem1_48806e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48806e = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48806e, i64 -500494, i64 5, i64 5)
  store %struct.Memory* %call1_48806e, %struct.Memory** %MEMORY

  %loadMem2_48806e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48806e = load i64, i64* %3
  %call2_48806e = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_48806e, %struct.Memory* %loadMem2_48806e)
  store %struct.Memory* %call2_48806e, %struct.Memory** %MEMORY

  ; Code: .L_488073:	 RIP: 488073	 Bytes: 0
  br label %block_.L_488073
block_.L_488073:

  ; Code: jmpq .L_488078	 RIP: 488073	 Bytes: 5
  %loadMem_488073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_488073 = call %struct.Memory* @routine_jmpq_.L_488078(%struct.State* %0, i64  0, %struct.Memory* %loadMem_488073, i64 5, i64 5)
  store %struct.Memory* %call_488073, %struct.Memory** %MEMORY

  br label %block_.L_488078

  ; Code: .L_488078:	 RIP: 488078	 Bytes: 0
block_.L_488078:

  ; Code: jmpq .L_48807d	 RIP: 488078	 Bytes: 5
  %loadMem_488078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_488078 = call %struct.Memory* @routine_jmpq_.L_48807d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_488078, i64 5, i64 5)
  store %struct.Memory* %call_488078, %struct.Memory** %MEMORY

  br label %block_.L_48807d

  ; Code: .L_48807d:	 RIP: 48807d	 Bytes: 0
block_.L_48807d:

  ; Code: jmpq .L_488082	 RIP: 48807d	 Bytes: 5
  %loadMem_48807d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48807d = call %struct.Memory* @routine_jmpq_.L_488082(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48807d, i64 5, i64 5)
  store %struct.Memory* %call_48807d, %struct.Memory** %MEMORY

  br label %block_.L_488082

  ; Code: .L_488082:	 RIP: 488082	 Bytes: 0
block_.L_488082:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 488082	 Bytes: 3
  %loadMem_488082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_488082 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_488082)
  store %struct.Memory* %call_488082, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 488085	 Bytes: 3
  %loadMem_488085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_488085 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_488085)
  store %struct.Memory* %call_488085, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 488088	 Bytes: 3
  %loadMem_488088 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_488088 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_488088)
  store %struct.Memory* %call_488088, %struct.Memory** %MEMORY

  ; Code: jmpq .L_487f00	 RIP: 48808b	 Bytes: 5
  %loadMem_48808b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48808b = call %struct.Memory* @routine_jmpq_.L_487f00(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48808b, i64 -395, i64 5)
  store %struct.Memory* %call_48808b, %struct.Memory** %MEMORY

  br label %block_.L_487f00

  ; Code: .L_488090:	 RIP: 488090	 Bytes: 0
block_.L_488090:

  ; Code: jmpq .L_488095	 RIP: 488090	 Bytes: 5
  %loadMem_488090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_488090 = call %struct.Memory* @routine_jmpq_.L_488095(%struct.State* %0, i64  0, %struct.Memory* %loadMem_488090, i64 5, i64 5)
  store %struct.Memory* %call_488090, %struct.Memory** %MEMORY

  br label %block_.L_488095

  ; Code: .L_488095:	 RIP: 488095	 Bytes: 0
block_.L_488095:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 488095	 Bytes: 3
  %loadMem_488095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_488095 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_488095)
  store %struct.Memory* %call_488095, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 488098	 Bytes: 3
  %loadMem_488098 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_488098 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_488098)
  store %struct.Memory* %call_488098, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 48809b	 Bytes: 3
  %loadMem_48809b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48809b = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48809b)
  store %struct.Memory* %call_48809b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_487e64	 RIP: 48809e	 Bytes: 5
  %loadMem_48809e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48809e = call %struct.Memory* @routine_jmpq_.L_487e64(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48809e, i64 -570, i64 5)
  store %struct.Memory* %call_48809e, %struct.Memory** %MEMORY

  br label %block_.L_487e64

  ; Code: .L_4880a3:	 RIP: 4880a3	 Bytes: 0
block_.L_4880a3:

  ; Code: cmpl $0x0, 0xb54ce4	 RIP: 4880a3	 Bytes: 8
  %loadMem_4880a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4880a3 = call %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4880a3)
  store %struct.Memory* %call_4880a3, %struct.Memory** %MEMORY

  ; Code: jne .L_4880b6	 RIP: 4880ab	 Bytes: 6
  %loadMem_4880ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4880ab = call %struct.Memory* @routine_jne_.L_4880b6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4880ab, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4880ab, %struct.Memory** %MEMORY

  %loadBr_4880ab = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4880ab = icmp eq i8 %loadBr_4880ab, 1
  br i1 %cmpBr_4880ab, label %block_.L_4880b6, label %block_4880b1

block_4880b1:
  ; Code: jmpq .L_4880de	 RIP: 4880b1	 Bytes: 5
  %loadMem_4880b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4880b1 = call %struct.Memory* @routine_jmpq_.L_4880de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4880b1, i64 45, i64 5)
  store %struct.Memory* %call_4880b1, %struct.Memory** %MEMORY

  br label %block_.L_4880de

  ; Code: .L_4880b6:	 RIP: 4880b6	 Bytes: 0
block_.L_4880b6:

  ; Code: movq $0x582e3b, %rdi	 RIP: 4880b6	 Bytes: 10
  %loadMem_4880b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4880b6 = call %struct.Memory* @routine_movq__0x582e3b___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4880b6)
  store %struct.Memory* %call_4880b6, %struct.Memory** %MEMORY

  ; Code: movl $0x35c, %esi	 RIP: 4880c0	 Bytes: 5
  %loadMem_4880c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4880c0 = call %struct.Memory* @routine_movl__0x35c___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4880c0)
  store %struct.Memory* %call_4880c0, %struct.Memory** %MEMORY

  ; Code: movq $0x57a100, %rdx	 RIP: 4880c5	 Bytes: 10
  %loadMem_4880c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4880c5 = call %struct.Memory* @routine_movq__0x57a100___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4880c5)
  store %struct.Memory* %call_4880c5, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 4880cf	 Bytes: 5
  %loadMem_4880cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4880cf = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4880cf)
  store %struct.Memory* %call_4880cf, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4880d4	 Bytes: 2
  %loadMem_4880d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4880d4 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4880d4)
  store %struct.Memory* %call_4880d4, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 4880d6	 Bytes: 3
  %loadMem_4880d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4880d6 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4880d6)
  store %struct.Memory* %call_4880d6, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 4880d9	 Bytes: 5
  %loadMem1_4880d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4880d9 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4880d9, i64 -221257, i64 5, i64 5)
  store %struct.Memory* %call1_4880d9, %struct.Memory** %MEMORY

  %loadMem2_4880d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4880d9 = load i64, i64* %3
  %call2_4880d9 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_4880d9, %struct.Memory* %loadMem2_4880d9)
  store %struct.Memory* %call2_4880d9, %struct.Memory** %MEMORY

  ; Code: .L_4880de:	 RIP: 4880de	 Bytes: 0
  br label %block_.L_4880de
block_.L_4880de:

  ; Code: addq $0x40, %rsp	 RIP: 4880de	 Bytes: 4
  %loadMem_4880de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4880de = call %struct.Memory* @routine_addq__0x40___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4880de)
  store %struct.Memory* %call_4880de, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 4880e2	 Bytes: 1
  %loadMem_4880e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4880e2 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4880e2)
  store %struct.Memory* %call_4880e2, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 4880e3	 Bytes: 1
  %loadMem_4880e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4880e3 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4880e3)
  store %struct.Memory* %call_4880e3, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_4880e3
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

define %struct.Memory* @routine_subq__0x40___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 64)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x15__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_cmpl__0x190__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_jge_.L_487b5f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_487a06(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_487a1a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_callq_.is_worm_origin(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_487a1f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_487b51(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jne_.L_487a32(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_487a49(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x58312b___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x58312b_type* @G__0x58312b to i64))
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0xa__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_487ae9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__0x64__rdx__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %12, 100
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}












define %struct.Memory* @routine_movl__0x0__0x3c__rdx__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %12, 60
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}












define %struct.Memory* @routine_movl__0x0__0xb4__rdx__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %12, 180
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
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




define %struct.Memory* @routine_movl__0x0__0x8c__rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %12, 140
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
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


define %struct.Memory* @routine_jmpq_.L_487a50(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_callq_.propagate_worm(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x14__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_callq_.attack(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_487b4c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_andl__0x400___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1024)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jne_.L_487b24(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_487b3e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x583146___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x583146_type* @G__0x583146 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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


define %struct.Memory* @routine_callq_.change_attack(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4879cf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xb54ce4_type* @G_0xb54ce4 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_487b72(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_487b9a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x582e3b___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x582e3b_type* @G__0x582e3b to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x2fc___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 764)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x57a100___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57a100_type* @G__0x57a100 to i64))
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


define %struct.Memory* @routine_callq_.find_attack_patterns(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_487bb2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_487bda(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x300___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 768)
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_jge_.L_487de2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_487c18(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_487c2c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jne_.L_487c31(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_487dd4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_je_.L_487dcf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_487c66(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_487c7d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x58316a___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x58316a_type* @G__0x58316a to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_leaq_MINUS0x18__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_callq_.find_defense(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_487ce0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_487ca9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_487cc3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x583186___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x583186_type* @G__0x583186 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_je_.L_487cdb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_callq_.change_defense(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_487dca(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_movl_0x3c__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_jne_.L_487dc5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x582f5f___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x582f5f_type* @G__0x582f5f to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movq__0xb0eff0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0xb0eff0_type* @G__0xb0eff0 to i64))
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


define %struct.Memory* @routine_imulq__0x17c___rsi___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 380)
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


define %struct.Memory* @routine_movl___rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
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




define %struct.Memory* @routine_je_.L_487dc0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x5__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_487dbb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_subl_MINUS0x28__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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






define %struct.Memory* @routine_jne_.L_487d92(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_487db6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x5831aa___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x5831aa_type* @G__0x5831aa to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_jmpq_.L_487dbb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_487dc5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jmpq_.L_487dcf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_jmpq_.L_487be1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_487df5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_487e1d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x324___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 804)
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_callq_.find_defense_patterns(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_487e35(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_487e5d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x328___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 808)
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_jge_.L_4880a3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x1__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_487e94(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x2__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_487ea8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jne_.L_487ead(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_488095(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_subl_MINUS0x20__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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




define %struct.Memory* @routine_jne_.L_487edf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0xf1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 241)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0xae4250___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0xae4250_type* @G__0xae4250 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_jge_.L_488090(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0xae4250___rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 11420240
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_callq_.attack_move_known(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_487fdf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_je_.L_487fda(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_487f81(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_je_.L_487fd5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_487fa2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_487fb1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_cmpl__0x5__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_487fd0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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






define %struct.Memory* @routine_jmpq_.L_487fd5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jmpq_.L_487fdf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_callq_.defense_move_known(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_48807d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_cmpl__0x0__0xb4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 180
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_488078(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_je_.L_488073(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_cmpl__0x5__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_48806e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_488078(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_48807d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_488082(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_487f00(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_jmpq_.L_487e64(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_4880b6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4880de(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x35c___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 860)
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_addq__0x40___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 64)
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

