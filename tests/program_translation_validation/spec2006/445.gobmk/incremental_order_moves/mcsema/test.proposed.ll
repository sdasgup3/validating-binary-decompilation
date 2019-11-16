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
%G_0x99da08_type = type <{ [4 x i8] }>
@G_0x99da08= global %G_0x99da08_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0xa7f430_type = type <{ [8 x i8] }>
@G__0xa7f430= global %G__0xa7f430_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @incremental_order_moves(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .incremental_order_moves:	 RIP: 416010	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 416010	 Bytes: 1
  %loadMem_416010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416010 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416010)
  store %struct.Memory* %call_416010, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 416011	 Bytes: 3
  %loadMem_416011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416011 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416011)
  store %struct.Memory* %call_416011, %struct.Memory** %MEMORY

  ; Code: pushq %r14	 RIP: 416014	 Bytes: 2
  %loadMem_416014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416014 = call %struct.Memory* @routine_pushq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416014)
  store %struct.Memory* %call_416014, %struct.Memory** %MEMORY

  ; Code: pushq %rbx	 RIP: 416016	 Bytes: 1
  %loadMem_416016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416016 = call %struct.Memory* @routine_pushq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416016)
  store %struct.Memory* %call_416016, %struct.Memory** %MEMORY

  ; Code: subq $0x10, %rsp	 RIP: 416017	 Bytes: 4
  %loadMem_416017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416017 = call %struct.Memory* @routine_subq__0x10___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416017)
  store %struct.Memory* %call_416017, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rbp), %rax	 RIP: 41601b	 Bytes: 4
  %loadMem_41601b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41601b = call %struct.Memory* @routine_movq_0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41601b)
  store %struct.Memory* %call_41601b, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rbp), %r10	 RIP: 41601f	 Bytes: 4
  %loadMem_41601f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41601f = call %struct.Memory* @routine_movq_0x28__rbp____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41601f)
  store %struct.Memory* %call_41601f, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rbp), %r11	 RIP: 416023	 Bytes: 4
  %loadMem_416023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416023 = call %struct.Memory* @routine_movq_0x20__rbp____r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416023)
  store %struct.Memory* %call_416023, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rbp), %rbx	 RIP: 416027	 Bytes: 4
  %loadMem_416027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416027 = call %struct.Memory* @routine_movq_0x18__rbp____rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416027)
  store %struct.Memory* %call_416027, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rbp), %r14	 RIP: 41602b	 Bytes: 4
  %loadMem_41602b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41602b = call %struct.Memory* @routine_movq_0x10__rbp____r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41602b)
  store %struct.Memory* %call_41602b, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x14(%rbp)	 RIP: 41602f	 Bytes: 3
  %loadMem_41602f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41602f = call %struct.Memory* @routine_movl__edi__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41602f)
  store %struct.Memory* %call_41602f, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x18(%rbp)	 RIP: 416032	 Bytes: 3
  %loadMem_416032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416032 = call %struct.Memory* @routine_movl__esi__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416032)
  store %struct.Memory* %call_416032, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x1c(%rbp)	 RIP: 416035	 Bytes: 3
  %loadMem_416035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416035 = call %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416035)
  store %struct.Memory* %call_416035, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x28(%rbp)	 RIP: 416038	 Bytes: 4
  %loadMem_416038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416038 = call %struct.Memory* @routine_movq__rcx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416038)
  store %struct.Memory* %call_416038, %struct.Memory** %MEMORY

  ; Code: movq %r8, -0x30(%rbp)	 RIP: 41603c	 Bytes: 4
  %loadMem_41603c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41603c = call %struct.Memory* @routine_movq__r8__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41603c)
  store %struct.Memory* %call_41603c, %struct.Memory** %MEMORY

  ; Code: movq %r9, -0x38(%rbp)	 RIP: 416040	 Bytes: 4
  %loadMem_416040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416040 = call %struct.Memory* @routine_movq__r9__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416040)
  store %struct.Memory* %call_416040, %struct.Memory** %MEMORY

  ; Code: movq %r14, -0x40(%rbp)	 RIP: 416044	 Bytes: 4
  %loadMem_416044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416044 = call %struct.Memory* @routine_movq__r14__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416044)
  store %struct.Memory* %call_416044, %struct.Memory** %MEMORY

  ; Code: movq %rbx, -0x48(%rbp)	 RIP: 416048	 Bytes: 4
  %loadMem_416048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416048 = call %struct.Memory* @routine_movq__rbx__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416048)
  store %struct.Memory* %call_416048, %struct.Memory** %MEMORY

  ; Code: movq %r11, -0x50(%rbp)	 RIP: 41604c	 Bytes: 4
  %loadMem_41604c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41604c = call %struct.Memory* @routine_movq__r11__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41604c)
  store %struct.Memory* %call_41604c, %struct.Memory** %MEMORY

  ; Code: movq %r10, -0x58(%rbp)	 RIP: 416050	 Bytes: 4
  %loadMem_416050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416050 = call %struct.Memory* @routine_movq__r10__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416050)
  store %struct.Memory* %call_416050, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x60(%rbp)	 RIP: 416054	 Bytes: 4
  %loadMem_416054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416054 = call %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416054)
  store %struct.Memory* %call_416054, %struct.Memory** %MEMORY

  ; Code: movl 0x99da08, %edx	 RIP: 416058	 Bytes: 7
  %loadMem_416058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416058 = call %struct.Memory* @routine_movl_0x99da08___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416058)
  store %struct.Memory* %call_416058, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 41605f	 Bytes: 3
  %loadMem_41605f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41605f = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41605f)
  store %struct.Memory* %call_41605f, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x99da08	 RIP: 416062	 Bytes: 7
  %loadMem_416062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416062 = call %struct.Memory* @routine_movl__edx__0x99da08(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416062)
  store %struct.Memory* %call_416062, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edx	 RIP: 416069	 Bytes: 3
  %loadMem_416069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416069 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416069)
  store %struct.Memory* %call_416069, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %edx	 RIP: 41606c	 Bytes: 3
  %loadMem_41606c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41606c = call %struct.Memory* @routine_addl__0x14___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41606c)
  store %struct.Memory* %call_41606c, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rax	 RIP: 41606f	 Bytes: 3
  %loadMem_41606f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41606f = call %struct.Memory* @routine_movslq__edx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41606f)
  store %struct.Memory* %call_41606f, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %edx	 RIP: 416072	 Bytes: 8
  %loadMem_416072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416072 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416072)
  store %struct.Memory* %call_416072, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %edx	 RIP: 41607a	 Bytes: 3
  %loadMem_41607a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41607a = call %struct.Memory* @routine_cmpl__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41607a)
  store %struct.Memory* %call_41607a, %struct.Memory** %MEMORY

  ; Code: jne .L_416093	 RIP: 41607d	 Bytes: 6
  %loadMem_41607d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41607d = call %struct.Memory* @routine_jne_.L_416093(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41607d, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_41607d, %struct.Memory** %MEMORY

  %loadBr_41607d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41607d = icmp eq i8 %loadBr_41607d, 1
  br i1 %cmpBr_41607d, label %block_.L_416093, label %block_416083

block_416083:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 416083	 Bytes: 4
  %loadMem_416083 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416083 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416083)
  store %struct.Memory* %call_416083, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 416087	 Bytes: 2
  %loadMem_416087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416087 = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416087)
  store %struct.Memory* %call_416087, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 416089	 Bytes: 3
  %loadMem_416089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416089 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416089)
  store %struct.Memory* %call_416089, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 41608c	 Bytes: 2
  %loadMem_41608c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41608c = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41608c)
  store %struct.Memory* %call_41608c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4162fc	 RIP: 41608e	 Bytes: 5
  %loadMem_41608e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41608e = call %struct.Memory* @routine_jmpq_.L_4162fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41608e, i64 622, i64 5)
  store %struct.Memory* %call_41608e, %struct.Memory** %MEMORY

  br label %block_.L_4162fc

  ; Code: .L_416093:	 RIP: 416093	 Bytes: 0
block_.L_416093:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 416093	 Bytes: 3
  %loadMem_416093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416093 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416093)
  store %struct.Memory* %call_416093, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 416096	 Bytes: 3
  %loadMem_416096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416096 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416096)
  store %struct.Memory* %call_416096, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 416099	 Bytes: 3
  %loadMem_416099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416099 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416099)
  store %struct.Memory* %call_416099, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 41609c	 Bytes: 8
  %loadMem_41609c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41609c = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41609c)
  store %struct.Memory* %call_41609c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4160a4	 Bytes: 3
  %loadMem_4160a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160a4 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160a4)
  store %struct.Memory* %call_4160a4, %struct.Memory** %MEMORY

  ; Code: jne .L_4160bd	 RIP: 4160a7	 Bytes: 6
  %loadMem_4160a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160a7 = call %struct.Memory* @routine_jne_.L_4160bd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160a7, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4160a7, %struct.Memory** %MEMORY

  %loadBr_4160a7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4160a7 = icmp eq i8 %loadBr_4160a7, 1
  br i1 %cmpBr_4160a7, label %block_.L_4160bd, label %block_4160ad

block_4160ad:
  ; Code: movq -0x60(%rbp), %rax	 RIP: 4160ad	 Bytes: 4
  %loadMem_4160ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160ad = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160ad)
  store %struct.Memory* %call_4160ad, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 4160b1	 Bytes: 2
  %loadMem_4160b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160b1 = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160b1)
  store %struct.Memory* %call_4160b1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4160b3	 Bytes: 3
  %loadMem_4160b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160b3 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160b3)
  store %struct.Memory* %call_4160b3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 4160b6	 Bytes: 2
  %loadMem_4160b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160b6 = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160b6)
  store %struct.Memory* %call_4160b6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4162f7	 RIP: 4160b8	 Bytes: 5
  %loadMem_4160b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160b8 = call %struct.Memory* @routine_jmpq_.L_4162f7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160b8, i64 575, i64 5)
  store %struct.Memory* %call_4160b8, %struct.Memory** %MEMORY

  br label %block_.L_4162f7

  ; Code: .L_4160bd:	 RIP: 4160bd	 Bytes: 0
block_.L_4160bd:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 4160bd	 Bytes: 3
  %loadMem_4160bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160bd = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160bd)
  store %struct.Memory* %call_4160bd, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4160c0	 Bytes: 3
  %loadMem_4160c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160c0 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160c0)
  store %struct.Memory* %call_4160c0, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4160c3	 Bytes: 3
  %loadMem_4160c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160c3 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160c3)
  store %struct.Memory* %call_4160c3, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 4160c6	 Bytes: 7
  %loadMem_4160c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160c6 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160c6)
  store %struct.Memory* %call_4160c6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x64(%rbp)	 RIP: 4160cd	 Bytes: 3
  %loadMem_4160cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160cd = call %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160cd)
  store %struct.Memory* %call_4160cd, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 4160d0	 Bytes: 4
  %loadMem_4160d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160d0 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160d0)
  store %struct.Memory* %call_4160d0, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 4160d4	 Bytes: 7
  %loadMem_4160d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160d4 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160d4)
  store %struct.Memory* %call_4160d4, %struct.Memory** %MEMORY

  ; Code: cmpl -0x64(%rbp), %eax	 RIP: 4160db	 Bytes: 3
  %loadMem_4160db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160db = call %struct.Memory* @routine_cmpl_MINUS0x64__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160db)
  store %struct.Memory* %call_4160db, %struct.Memory** %MEMORY

  ; Code: jne .L_4160ef	 RIP: 4160de	 Bytes: 6
  %loadMem_4160de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160de = call %struct.Memory* @routine_jne_.L_4160ef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160de, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_4160de, %struct.Memory** %MEMORY

  %loadBr_4160de = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4160de = icmp eq i8 %loadBr_4160de, 1
  br i1 %cmpBr_4160de, label %block_.L_4160ef, label %block_4160e4

block_4160e4:
  ; Code: movq -0x30(%rbp), %rax	 RIP: 4160e4	 Bytes: 4
  %loadMem_4160e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160e4 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160e4)
  store %struct.Memory* %call_4160e4, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 4160e8	 Bytes: 2
  %loadMem_4160e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160e8 = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160e8)
  store %struct.Memory* %call_4160e8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4160ea	 Bytes: 3
  %loadMem_4160ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160ea = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160ea)
  store %struct.Memory* %call_4160ea, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 4160ed	 Bytes: 2
  %loadMem_4160ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160ed = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160ed)
  store %struct.Memory* %call_4160ed, %struct.Memory** %MEMORY

  ; Code: .L_4160ef:	 RIP: 4160ef	 Bytes: 0
  br label %block_.L_4160ef
block_.L_4160ef:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 4160ef	 Bytes: 3
  %loadMem_4160ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160ef = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160ef)
  store %struct.Memory* %call_4160ef, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4160f2	 Bytes: 3
  %loadMem_4160f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160f2 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160f2)
  store %struct.Memory* %call_4160f2, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4160f5	 Bytes: 3
  %loadMem_4160f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160f5 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160f5)
  store %struct.Memory* %call_4160f5, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4160f8	 Bytes: 8
  %loadMem_4160f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160f8 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160f8)
  store %struct.Memory* %call_4160f8, %struct.Memory** %MEMORY

  ; Code: cmpl -0x18(%rbp), %eax	 RIP: 416100	 Bytes: 3
  %loadMem_416100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416100 = call %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416100)
  store %struct.Memory* %call_416100, %struct.Memory** %MEMORY

  ; Code: jne .L_41615e	 RIP: 416103	 Bytes: 6
  %loadMem_416103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416103 = call %struct.Memory* @routine_jne_.L_41615e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416103, i8* %BRANCH_TAKEN, i64 91, i64 6, i64 6)
  store %struct.Memory* %call_416103, %struct.Memory** %MEMORY

  %loadBr_416103 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416103 = icmp eq i8 %loadBr_416103, 1
  br i1 %cmpBr_416103, label %block_.L_41615e, label %block_416109

block_416109:
  ; Code: movq $0xa7f430, %rax	 RIP: 416109	 Bytes: 10
  %loadMem_416109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416109 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416109)
  store %struct.Memory* %call_416109, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 416113	 Bytes: 4
  %loadMem_416113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416113 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416113)
  store %struct.Memory* %call_416113, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %edx	 RIP: 416117	 Bytes: 2
  %loadMem_416117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416117 = call %struct.Memory* @routine_movl___rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416117)
  store %struct.Memory* %call_416117, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 416119	 Bytes: 3
  %loadMem_416119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416119 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416119)
  store %struct.Memory* %call_416119, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rcx)	 RIP: 41611c	 Bytes: 2
  %loadMem_41611c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41611c = call %struct.Memory* @routine_movl__edx____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41611c)
  store %struct.Memory* %call_41611c, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 41611e	 Bytes: 4
  %loadMem_41611e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41611e = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41611e)
  store %struct.Memory* %call_41611e, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 416122	 Bytes: 7
  %loadMem_416122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416122 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416122)
  store %struct.Memory* %call_416122, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 416129	 Bytes: 3
  %loadMem_416129 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416129 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416129)
  store %struct.Memory* %call_416129, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xc(%rax)	 RIP: 41612c	 Bytes: 4
  %loadMem_41612c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41612c = call %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41612c)
  store %struct.Memory* %call_41612c, %struct.Memory** %MEMORY

  ; Code: jne .L_416159	 RIP: 416130	 Bytes: 6
  %loadMem_416130 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416130 = call %struct.Memory* @routine_jne_.L_416159(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416130, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_416130, %struct.Memory** %MEMORY

  %loadBr_416130 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416130 = icmp eq i8 %loadBr_416130, 1
  br i1 %cmpBr_416130, label %block_.L_416159, label %block_416136

block_416136:
  ; Code: movq $0xa7f430, %rax	 RIP: 416136	 Bytes: 10
  %loadMem_416136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416136 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416136)
  store %struct.Memory* %call_416136, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 416140	 Bytes: 4
  %loadMem_416140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416140 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416140)
  store %struct.Memory* %call_416140, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 416144	 Bytes: 7
  %loadMem_416144 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416144 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416144)
  store %struct.Memory* %call_416144, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41614b	 Bytes: 3
  %loadMem_41614b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41614b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41614b)
  store %struct.Memory* %call_41614b, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 41614e	 Bytes: 3
  %loadMem_41614e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41614e = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41614e)
  store %struct.Memory* %call_41614e, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rax	 RIP: 416151	 Bytes: 4
  %loadMem_416151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416151 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416151)
  store %struct.Memory* %call_416151, %struct.Memory** %MEMORY

  ; Code: addl (%rax), %edx	 RIP: 416155	 Bytes: 2
  %loadMem_416155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416155 = call %struct.Memory* @routine_addl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416155)
  store %struct.Memory* %call_416155, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax)	 RIP: 416157	 Bytes: 2
  %loadMem_416157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416157 = call %struct.Memory* @routine_movl__edx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416157)
  store %struct.Memory* %call_416157, %struct.Memory** %MEMORY

  ; Code: .L_416159:	 RIP: 416159	 Bytes: 0
  br label %block_.L_416159
block_.L_416159:

  ; Code: jmpq .L_4162f2	 RIP: 416159	 Bytes: 5
  %loadMem_416159 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416159 = call %struct.Memory* @routine_jmpq_.L_4162f2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416159, i64 409, i64 5)
  store %struct.Memory* %call_416159, %struct.Memory** %MEMORY

  br label %block_.L_4162f2

  ; Code: .L_41615e:	 RIP: 41615e	 Bytes: 0
block_.L_41615e:

  ; Code: movq $0xa7f430, %rax	 RIP: 41615e	 Bytes: 10
  %loadMem_41615e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41615e = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41615e)
  store %struct.Memory* %call_41615e, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 416168	 Bytes: 4
  %loadMem_416168 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416168 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416168)
  store %struct.Memory* %call_416168, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %edx	 RIP: 41616c	 Bytes: 2
  %loadMem_41616c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41616c = call %struct.Memory* @routine_movl___rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41616c)
  store %struct.Memory* %call_41616c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 41616e	 Bytes: 3
  %loadMem_41616e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41616e = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41616e)
  store %struct.Memory* %call_41616e, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rcx)	 RIP: 416171	 Bytes: 2
  %loadMem_416171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416171 = call %struct.Memory* @routine_movl__edx____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416171)
  store %struct.Memory* %call_416171, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 416173	 Bytes: 4
  %loadMem_416173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416173 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416173)
  store %struct.Memory* %call_416173, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 416177	 Bytes: 7
  %loadMem_416177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416177 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416177)
  store %struct.Memory* %call_416177, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41617e	 Bytes: 3
  %loadMem_41617e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41617e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41617e)
  store %struct.Memory* %call_41617e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xc(%rax)	 RIP: 416181	 Bytes: 4
  %loadMem_416181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416181 = call %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416181)
  store %struct.Memory* %call_416181, %struct.Memory** %MEMORY

  ; Code: jne .L_416240	 RIP: 416185	 Bytes: 6
  %loadMem_416185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416185 = call %struct.Memory* @routine_jne_.L_416240(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416185, i8* %BRANCH_TAKEN, i64 187, i64 6, i64 6)
  store %struct.Memory* %call_416185, %struct.Memory** %MEMORY

  %loadBr_416185 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416185 = icmp eq i8 %loadBr_416185, 1
  br i1 %cmpBr_416185, label %block_.L_416240, label %block_41618b

block_41618b:
  ; Code: movq $0xa7f430, %rax	 RIP: 41618b	 Bytes: 10
  %loadMem_41618b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41618b = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41618b)
  store %struct.Memory* %call_41618b, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 416195	 Bytes: 4
  %loadMem_416195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416195 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416195)
  store %struct.Memory* %call_416195, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 416199	 Bytes: 7
  %loadMem_416199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416199 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416199)
  store %struct.Memory* %call_416199, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4161a0	 Bytes: 3
  %loadMem_4161a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161a0 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161a0)
  store %struct.Memory* %call_4161a0, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 4161a3	 Bytes: 3
  %loadMem_4161a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161a3 = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161a3)
  store %struct.Memory* %call_4161a3, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 4161a6	 Bytes: 4
  %loadMem_4161a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161a6 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161a6)
  store %struct.Memory* %call_4161a6, %struct.Memory** %MEMORY

  ; Code: addl (%rax), %edx	 RIP: 4161aa	 Bytes: 2
  %loadMem_4161aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161aa = call %struct.Memory* @routine_addl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161aa)
  store %struct.Memory* %call_4161aa, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax)	 RIP: 4161ac	 Bytes: 2
  %loadMem_4161ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161ac = call %struct.Memory* @routine_movl__edx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161ac)
  store %struct.Memory* %call_4161ac, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x68(%rbp)	 RIP: 4161ae	 Bytes: 7
  %loadMem_4161ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161ae = call %struct.Memory* @routine_movl__0x0__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161ae)
  store %struct.Memory* %call_4161ae, %struct.Memory** %MEMORY

  ; Code: .L_4161b5:	 RIP: 4161b5	 Bytes: 0
  br label %block_.L_4161b5
block_.L_4161b5:

  ; Code: movq $0xa7f430, %rax	 RIP: 4161b5	 Bytes: 10
  %loadMem_4161b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161b5 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161b5)
  store %struct.Memory* %call_4161b5, %struct.Memory** %MEMORY

  ; Code: movl -0x68(%rbp), %ecx	 RIP: 4161bf	 Bytes: 3
  %loadMem_4161bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161bf = call %struct.Memory* @routine_movl_MINUS0x68__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161bf)
  store %struct.Memory* %call_4161bf, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rdx	 RIP: 4161c2	 Bytes: 4
  %loadMem_4161c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161c2 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161c2)
  store %struct.Memory* %call_4161c2, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 4161c6	 Bytes: 7
  %loadMem_4161c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161c6 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161c6)
  store %struct.Memory* %call_4161c6, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4161cd	 Bytes: 3
  %loadMem_4161cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161cd = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161cd)
  store %struct.Memory* %call_4161cd, %struct.Memory** %MEMORY

  ; Code: cmpl 0x60(%rax), %ecx	 RIP: 4161d0	 Bytes: 3
  %loadMem_4161d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161d0 = call %struct.Memory* @routine_cmpl_0x60__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161d0)
  store %struct.Memory* %call_4161d0, %struct.Memory** %MEMORY

  ; Code: jge .L_41623b	 RIP: 4161d3	 Bytes: 6
  %loadMem_4161d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161d3 = call %struct.Memory* @routine_jge_.L_41623b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161d3, i8* %BRANCH_TAKEN, i64 104, i64 6, i64 6)
  store %struct.Memory* %call_4161d3, %struct.Memory** %MEMORY

  %loadBr_4161d3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4161d3 = icmp eq i8 %loadBr_4161d3, 1
  br i1 %cmpBr_4161d3, label %block_.L_41623b, label %block_4161d9

block_4161d9:
  ; Code: movq $0xa7f430, %rax	 RIP: 4161d9	 Bytes: 10
  %loadMem_4161d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161d9 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161d9)
  store %struct.Memory* %call_4161d9, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4161e3	 Bytes: 4
  %loadMem_4161e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161e3 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161e3)
  store %struct.Memory* %call_4161e3, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 4161e7	 Bytes: 7
  %loadMem_4161e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161e7 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161e7)
  store %struct.Memory* %call_4161e7, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 4161ee	 Bytes: 3
  %loadMem_4161ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161ee = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161ee)
  store %struct.Memory* %call_4161ee, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 4161f1	 Bytes: 3
  %loadMem_4161f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161f1 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161f1)
  store %struct.Memory* %call_4161f1, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rcx	 RIP: 4161f4	 Bytes: 4
  %loadMem_4161f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161f4 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161f4)
  store %struct.Memory* %call_4161f4, %struct.Memory** %MEMORY

  ; Code: movslq 0x64(%rdx,%rcx,4), %rcx	 RIP: 4161f8	 Bytes: 5
  %loadMem_4161f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161f8 = call %struct.Memory* @routine_movslq_0x64__rdx__rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161f8)
  store %struct.Memory* %call_4161f8, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 4161fd	 Bytes: 7
  %loadMem_4161fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161fd = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161fd)
  store %struct.Memory* %call_4161fd, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 416204	 Bytes: 3
  %loadMem_416204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416204 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416204)
  store %struct.Memory* %call_416204, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x70(%rbp)	 RIP: 416207	 Bytes: 4
  %loadMem_416207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416207 = call %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416207)
  store %struct.Memory* %call_416207, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 41620b	 Bytes: 4
  %loadMem_41620b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41620b = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41620b)
  store %struct.Memory* %call_41620b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xc(%rax)	 RIP: 41620f	 Bytes: 4
  %loadMem_41620f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41620f = call %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41620f)
  store %struct.Memory* %call_41620f, %struct.Memory** %MEMORY

  ; Code: jne .L_416228	 RIP: 416213	 Bytes: 6
  %loadMem_416213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416213 = call %struct.Memory* @routine_jne_.L_416228(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416213, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_416213, %struct.Memory** %MEMORY

  %loadBr_416213 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416213 = icmp eq i8 %loadBr_416213, 1
  br i1 %cmpBr_416213, label %block_.L_416228, label %block_416219

block_416219:
  ; Code: movq -0x70(%rbp), %rax	 RIP: 416219	 Bytes: 4
  %loadMem_416219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416219 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416219)
  store %struct.Memory* %call_416219, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 41621d	 Bytes: 3
  %loadMem_41621d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41621d = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41621d)
  store %struct.Memory* %call_41621d, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rax	 RIP: 416220	 Bytes: 4
  %loadMem_416220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416220 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416220)
  store %struct.Memory* %call_416220, %struct.Memory** %MEMORY

  ; Code: addl (%rax), %ecx	 RIP: 416224	 Bytes: 2
  %loadMem_416224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416224 = call %struct.Memory* @routine_addl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416224)
  store %struct.Memory* %call_416224, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 416226	 Bytes: 2
  %loadMem_416226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416226 = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416226)
  store %struct.Memory* %call_416226, %struct.Memory** %MEMORY

  ; Code: .L_416228:	 RIP: 416228	 Bytes: 0
  br label %block_.L_416228
block_.L_416228:

  ; Code: jmpq .L_41622d	 RIP: 416228	 Bytes: 5
  %loadMem_416228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416228 = call %struct.Memory* @routine_jmpq_.L_41622d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416228, i64 5, i64 5)
  store %struct.Memory* %call_416228, %struct.Memory** %MEMORY

  br label %block_.L_41622d

  ; Code: .L_41622d:	 RIP: 41622d	 Bytes: 0
block_.L_41622d:

  ; Code: movl -0x68(%rbp), %eax	 RIP: 41622d	 Bytes: 3
  %loadMem_41622d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41622d = call %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41622d)
  store %struct.Memory* %call_41622d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 416230	 Bytes: 3
  %loadMem_416230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416230 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416230)
  store %struct.Memory* %call_416230, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x68(%rbp)	 RIP: 416233	 Bytes: 3
  %loadMem_416233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416233 = call %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416233)
  store %struct.Memory* %call_416233, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4161b5	 RIP: 416236	 Bytes: 5
  %loadMem_416236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416236 = call %struct.Memory* @routine_jmpq_.L_4161b5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416236, i64 -129, i64 5)
  store %struct.Memory* %call_416236, %struct.Memory** %MEMORY

  br label %block_.L_4161b5

  ; Code: .L_41623b:	 RIP: 41623b	 Bytes: 0
block_.L_41623b:

  ; Code: jmpq .L_4162ed	 RIP: 41623b	 Bytes: 5
  %loadMem_41623b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41623b = call %struct.Memory* @routine_jmpq_.L_4162ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41623b, i64 178, i64 5)
  store %struct.Memory* %call_41623b, %struct.Memory** %MEMORY

  br label %block_.L_4162ed

  ; Code: .L_416240:	 RIP: 416240	 Bytes: 0
block_.L_416240:

  ; Code: movq $0xa7f430, %rax	 RIP: 416240	 Bytes: 10
  %loadMem_416240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416240 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416240)
  store %struct.Memory* %call_416240, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 41624a	 Bytes: 4
  %loadMem_41624a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41624a = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41624a)
  store %struct.Memory* %call_41624a, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 41624e	 Bytes: 7
  %loadMem_41624e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41624e = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41624e)
  store %struct.Memory* %call_41624e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 416255	 Bytes: 3
  %loadMem_416255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416255 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416255)
  store %struct.Memory* %call_416255, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0xc(%rax)	 RIP: 416258	 Bytes: 4
  %loadMem_416258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416258 = call %struct.Memory* @routine_cmpl__0x2__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416258)
  store %struct.Memory* %call_416258, %struct.Memory** %MEMORY

  ; Code: jne .L_4162e8	 RIP: 41625c	 Bytes: 6
  %loadMem_41625c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41625c = call %struct.Memory* @routine_jne_.L_4162e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41625c, i8* %BRANCH_TAKEN, i64 140, i64 6, i64 6)
  store %struct.Memory* %call_41625c, %struct.Memory** %MEMORY

  %loadBr_41625c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41625c = icmp eq i8 %loadBr_41625c, 1
  br i1 %cmpBr_41625c, label %block_.L_4162e8, label %block_416262

block_416262:
  ; Code: movq $0xa7f430, %rax	 RIP: 416262	 Bytes: 10
  %loadMem_416262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416262 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416262)
  store %struct.Memory* %call_416262, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 41626c	 Bytes: 3
  %loadMem_41626c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41626c = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41626c)
  store %struct.Memory* %call_41626c, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 41626f	 Bytes: 3
  %loadMem_41626f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41626f = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41626f)
  store %struct.Memory* %call_41626f, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 416272	 Bytes: 3
  %loadMem_416272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416272 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416272)
  store %struct.Memory* %call_416272, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 416275	 Bytes: 8
  %loadMem_416275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416275 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416275)
  store %struct.Memory* %call_416275, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 41627d	 Bytes: 7
  %loadMem_41627d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41627d = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41627d)
  store %struct.Memory* %call_41627d, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 416284	 Bytes: 3
  %loadMem_416284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416284 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416284)
  store %struct.Memory* %call_416284, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %ecx	 RIP: 416287	 Bytes: 6
  %loadMem_416287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416287 = call %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416287)
  store %struct.Memory* %call_416287, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %ecx	 RIP: 41628d	 Bytes: 7
  %loadMem_41628d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41628d = call %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41628d)
  store %struct.Memory* %call_41628d, %struct.Memory** %MEMORY

  ; Code: je .L_4162e8	 RIP: 416294	 Bytes: 6
  %loadMem_416294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416294 = call %struct.Memory* @routine_je_.L_4162e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416294, i8* %BRANCH_TAKEN, i64 84, i64 6, i64 6)
  store %struct.Memory* %call_416294, %struct.Memory** %MEMORY

  %loadBr_416294 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416294 = icmp eq i8 %loadBr_416294, 1
  br i1 %cmpBr_416294, label %block_.L_4162e8, label %block_41629a

block_41629a:
  ; Code: movq $0xa7f430, %rax	 RIP: 41629a	 Bytes: 10
  %loadMem_41629a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41629a = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41629a)
  store %struct.Memory* %call_41629a, %struct.Memory** %MEMORY

  ; Code: movslq -0x64(%rbp), %rcx	 RIP: 4162a4	 Bytes: 4
  %loadMem_4162a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162a4 = call %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162a4)
  store %struct.Memory* %call_4162a4, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 4162a8	 Bytes: 7
  %loadMem_4162a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162a8 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162a8)
  store %struct.Memory* %call_4162a8, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 4162af	 Bytes: 3
  %loadMem_4162af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162af = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162af)
  store %struct.Memory* %call_4162af, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 4162b2	 Bytes: 3
  %loadMem_4162b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162b2 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162b2)
  store %struct.Memory* %call_4162b2, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rdx), %esi	 RIP: 4162b5	 Bytes: 3
  %loadMem_4162b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162b5 = call %struct.Memory* @routine_movl_0x4__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162b5)
  store %struct.Memory* %call_4162b5, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 4162b8	 Bytes: 4
  %loadMem_4162b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162b8 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162b8)
  store %struct.Memory* %call_4162b8, %struct.Memory** %MEMORY

  ; Code: addl (%rcx), %esi	 RIP: 4162bc	 Bytes: 2
  %loadMem_4162bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162bc = call %struct.Memory* @routine_addl___rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162bc)
  store %struct.Memory* %call_4162bc, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rcx)	 RIP: 4162be	 Bytes: 2
  %loadMem_4162be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162be = call %struct.Memory* @routine_movl__esi____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162be)
  store %struct.Memory* %call_4162be, %struct.Memory** %MEMORY

  ; Code: movl 0x99da08, %esi	 RIP: 4162c0	 Bytes: 7
  %loadMem_4162c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162c0 = call %struct.Memory* @routine_movl_0x99da08___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162c0)
  store %struct.Memory* %call_4162c0, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edi	 RIP: 4162c7	 Bytes: 3
  %loadMem_4162c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162c7 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162c7)
  store %struct.Memory* %call_4162c7, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %edi	 RIP: 4162ca	 Bytes: 3
  %loadMem_4162ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162ca = call %struct.Memory* @routine_addl__0x14___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162ca)
  store %struct.Memory* %call_4162ca, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rcx	 RIP: 4162cd	 Bytes: 3
  %loadMem_4162cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162cd = call %struct.Memory* @routine_movslq__edi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162cd)
  store %struct.Memory* %call_4162cd, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rcx,4), %rcx	 RIP: 4162d0	 Bytes: 8
  %loadMem_4162d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162d0 = call %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162d0)
  store %struct.Memory* %call_4162d0, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 4162d8	 Bytes: 7
  %loadMem_4162d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162d8 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162d8)
  store %struct.Memory* %call_4162d8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4162df	 Bytes: 3
  %loadMem_4162df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162df = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162df)
  store %struct.Memory* %call_4162df, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x2e4(%rax)	 RIP: 4162e2	 Bytes: 6
  %loadMem_4162e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162e2 = call %struct.Memory* @routine_movl__esi__0x2e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162e2)
  store %struct.Memory* %call_4162e2, %struct.Memory** %MEMORY

  ; Code: .L_4162e8:	 RIP: 4162e8	 Bytes: 0
  br label %block_.L_4162e8
block_.L_4162e8:

  ; Code: jmpq .L_4162ed	 RIP: 4162e8	 Bytes: 5
  %loadMem_4162e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162e8 = call %struct.Memory* @routine_jmpq_.L_4162ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162e8, i64 5, i64 5)
  store %struct.Memory* %call_4162e8, %struct.Memory** %MEMORY

  br label %block_.L_4162ed

  ; Code: .L_4162ed:	 RIP: 4162ed	 Bytes: 0
block_.L_4162ed:

  ; Code: jmpq .L_4162f2	 RIP: 4162ed	 Bytes: 5
  %loadMem_4162ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162ed = call %struct.Memory* @routine_jmpq_.L_4162f2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162ed, i64 5, i64 5)
  store %struct.Memory* %call_4162ed, %struct.Memory** %MEMORY

  br label %block_.L_4162f2

  ; Code: .L_4162f2:	 RIP: 4162f2	 Bytes: 0
block_.L_4162f2:

  ; Code: jmpq .L_4162f7	 RIP: 4162f2	 Bytes: 5
  %loadMem_4162f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162f2 = call %struct.Memory* @routine_jmpq_.L_4162f7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162f2, i64 5, i64 5)
  store %struct.Memory* %call_4162f2, %struct.Memory** %MEMORY

  br label %block_.L_4162f7

  ; Code: .L_4162f7:	 RIP: 4162f7	 Bytes: 0
block_.L_4162f7:

  ; Code: jmpq .L_4162fc	 RIP: 4162f7	 Bytes: 5
  %loadMem_4162f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162f7 = call %struct.Memory* @routine_jmpq_.L_4162fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162f7, i64 5, i64 5)
  store %struct.Memory* %call_4162f7, %struct.Memory** %MEMORY

  br label %block_.L_4162fc

  ; Code: .L_4162fc:	 RIP: 4162fc	 Bytes: 0
block_.L_4162fc:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 4162fc	 Bytes: 3
  %loadMem_4162fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162fc = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162fc)
  store %struct.Memory* %call_4162fc, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4162ff	 Bytes: 3
  %loadMem_4162ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162ff = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162ff)
  store %struct.Memory* %call_4162ff, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 416302	 Bytes: 3
  %loadMem_416302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416302 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416302)
  store %struct.Memory* %call_416302, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 416305	 Bytes: 8
  %loadMem_416305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416305 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416305)
  store %struct.Memory* %call_416305, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 41630d	 Bytes: 3
  %loadMem_41630d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41630d = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41630d)
  store %struct.Memory* %call_41630d, %struct.Memory** %MEMORY

  ; Code: jne .L_416326	 RIP: 416310	 Bytes: 6
  %loadMem_416310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416310 = call %struct.Memory* @routine_jne_.L_416326(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416310, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_416310, %struct.Memory** %MEMORY

  %loadBr_416310 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416310 = icmp eq i8 %loadBr_416310, 1
  br i1 %cmpBr_416310, label %block_.L_416326, label %block_416316

block_416316:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 416316	 Bytes: 4
  %loadMem_416316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416316 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416316)
  store %struct.Memory* %call_416316, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 41631a	 Bytes: 2
  %loadMem_41631a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41631a = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41631a)
  store %struct.Memory* %call_41631a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 41631c	 Bytes: 3
  %loadMem_41631c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41631c = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41631c)
  store %struct.Memory* %call_41631c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 41631f	 Bytes: 2
  %loadMem_41631f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41631f = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41631f)
  store %struct.Memory* %call_41631f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41658f	 RIP: 416321	 Bytes: 5
  %loadMem_416321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416321 = call %struct.Memory* @routine_jmpq_.L_41658f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416321, i64 622, i64 5)
  store %struct.Memory* %call_416321, %struct.Memory** %MEMORY

  br label %block_.L_41658f

  ; Code: .L_416326:	 RIP: 416326	 Bytes: 0
block_.L_416326:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 416326	 Bytes: 3
  %loadMem_416326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416326 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416326)
  store %struct.Memory* %call_416326, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 416329	 Bytes: 3
  %loadMem_416329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416329 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416329)
  store %struct.Memory* %call_416329, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 41632c	 Bytes: 3
  %loadMem_41632c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41632c = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41632c)
  store %struct.Memory* %call_41632c, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 41632f	 Bytes: 8
  %loadMem_41632f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41632f = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41632f)
  store %struct.Memory* %call_41632f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 416337	 Bytes: 3
  %loadMem_416337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416337 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416337)
  store %struct.Memory* %call_416337, %struct.Memory** %MEMORY

  ; Code: jne .L_416350	 RIP: 41633a	 Bytes: 6
  %loadMem_41633a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41633a = call %struct.Memory* @routine_jne_.L_416350(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41633a, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_41633a, %struct.Memory** %MEMORY

  %loadBr_41633a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41633a = icmp eq i8 %loadBr_41633a, 1
  br i1 %cmpBr_41633a, label %block_.L_416350, label %block_416340

block_416340:
  ; Code: movq -0x60(%rbp), %rax	 RIP: 416340	 Bytes: 4
  %loadMem_416340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416340 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416340)
  store %struct.Memory* %call_416340, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 416344	 Bytes: 2
  %loadMem_416344 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416344 = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416344)
  store %struct.Memory* %call_416344, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 416346	 Bytes: 3
  %loadMem_416346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416346 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416346)
  store %struct.Memory* %call_416346, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 416349	 Bytes: 2
  %loadMem_416349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416349 = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416349)
  store %struct.Memory* %call_416349, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41658a	 RIP: 41634b	 Bytes: 5
  %loadMem_41634b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41634b = call %struct.Memory* @routine_jmpq_.L_41658a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41634b, i64 575, i64 5)
  store %struct.Memory* %call_41634b, %struct.Memory** %MEMORY

  br label %block_.L_41658a

  ; Code: .L_416350:	 RIP: 416350	 Bytes: 0
block_.L_416350:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 416350	 Bytes: 3
  %loadMem_416350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416350 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416350)
  store %struct.Memory* %call_416350, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 416353	 Bytes: 3
  %loadMem_416353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416353 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416353)
  store %struct.Memory* %call_416353, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 416356	 Bytes: 3
  %loadMem_416356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416356 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416356)
  store %struct.Memory* %call_416356, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 416359	 Bytes: 7
  %loadMem_416359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416359 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416359)
  store %struct.Memory* %call_416359, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x74(%rbp)	 RIP: 416360	 Bytes: 3
  %loadMem_416360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416360 = call %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416360)
  store %struct.Memory* %call_416360, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 416363	 Bytes: 4
  %loadMem_416363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416363 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416363)
  store %struct.Memory* %call_416363, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 416367	 Bytes: 7
  %loadMem_416367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416367 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416367)
  store %struct.Memory* %call_416367, %struct.Memory** %MEMORY

  ; Code: cmpl -0x74(%rbp), %eax	 RIP: 41636e	 Bytes: 3
  %loadMem_41636e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41636e = call %struct.Memory* @routine_cmpl_MINUS0x74__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41636e)
  store %struct.Memory* %call_41636e, %struct.Memory** %MEMORY

  ; Code: jne .L_416382	 RIP: 416371	 Bytes: 6
  %loadMem_416371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416371 = call %struct.Memory* @routine_jne_.L_416382(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416371, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_416371, %struct.Memory** %MEMORY

  %loadBr_416371 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416371 = icmp eq i8 %loadBr_416371, 1
  br i1 %cmpBr_416371, label %block_.L_416382, label %block_416377

block_416377:
  ; Code: movq -0x30(%rbp), %rax	 RIP: 416377	 Bytes: 4
  %loadMem_416377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416377 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416377)
  store %struct.Memory* %call_416377, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 41637b	 Bytes: 2
  %loadMem_41637b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41637b = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41637b)
  store %struct.Memory* %call_41637b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 41637d	 Bytes: 3
  %loadMem_41637d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41637d = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41637d)
  store %struct.Memory* %call_41637d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 416380	 Bytes: 2
  %loadMem_416380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416380 = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416380)
  store %struct.Memory* %call_416380, %struct.Memory** %MEMORY

  ; Code: .L_416382:	 RIP: 416382	 Bytes: 0
  br label %block_.L_416382
block_.L_416382:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 416382	 Bytes: 3
  %loadMem_416382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416382 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416382)
  store %struct.Memory* %call_416382, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 416385	 Bytes: 3
  %loadMem_416385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416385 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416385)
  store %struct.Memory* %call_416385, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 416388	 Bytes: 3
  %loadMem_416388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416388 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416388)
  store %struct.Memory* %call_416388, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 41638b	 Bytes: 8
  %loadMem_41638b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41638b = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41638b)
  store %struct.Memory* %call_41638b, %struct.Memory** %MEMORY

  ; Code: cmpl -0x18(%rbp), %eax	 RIP: 416393	 Bytes: 3
  %loadMem_416393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416393 = call %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416393)
  store %struct.Memory* %call_416393, %struct.Memory** %MEMORY

  ; Code: jne .L_4163f1	 RIP: 416396	 Bytes: 6
  %loadMem_416396 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416396 = call %struct.Memory* @routine_jne_.L_4163f1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416396, i8* %BRANCH_TAKEN, i64 91, i64 6, i64 6)
  store %struct.Memory* %call_416396, %struct.Memory** %MEMORY

  %loadBr_416396 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416396 = icmp eq i8 %loadBr_416396, 1
  br i1 %cmpBr_416396, label %block_.L_4163f1, label %block_41639c

block_41639c:
  ; Code: movq $0xa7f430, %rax	 RIP: 41639c	 Bytes: 10
  %loadMem_41639c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41639c = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41639c)
  store %struct.Memory* %call_41639c, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 4163a6	 Bytes: 4
  %loadMem_4163a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163a6 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163a6)
  store %struct.Memory* %call_4163a6, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %edx	 RIP: 4163aa	 Bytes: 2
  %loadMem_4163aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163aa = call %struct.Memory* @routine_movl___rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163aa)
  store %struct.Memory* %call_4163aa, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 4163ac	 Bytes: 3
  %loadMem_4163ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163ac = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163ac)
  store %struct.Memory* %call_4163ac, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rcx)	 RIP: 4163af	 Bytes: 2
  %loadMem_4163af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163af = call %struct.Memory* @routine_movl__edx____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163af)
  store %struct.Memory* %call_4163af, %struct.Memory** %MEMORY

  ; Code: movslq -0x74(%rbp), %rcx	 RIP: 4163b1	 Bytes: 4
  %loadMem_4163b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163b1 = call %struct.Memory* @routine_movslq_MINUS0x74__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163b1)
  store %struct.Memory* %call_4163b1, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 4163b5	 Bytes: 7
  %loadMem_4163b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163b5 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163b5)
  store %struct.Memory* %call_4163b5, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4163bc	 Bytes: 3
  %loadMem_4163bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163bc = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163bc)
  store %struct.Memory* %call_4163bc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xc(%rax)	 RIP: 4163bf	 Bytes: 4
  %loadMem_4163bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163bf = call %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163bf)
  store %struct.Memory* %call_4163bf, %struct.Memory** %MEMORY

  ; Code: jne .L_4163ec	 RIP: 4163c3	 Bytes: 6
  %loadMem_4163c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163c3 = call %struct.Memory* @routine_jne_.L_4163ec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163c3, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_4163c3, %struct.Memory** %MEMORY

  %loadBr_4163c3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4163c3 = icmp eq i8 %loadBr_4163c3, 1
  br i1 %cmpBr_4163c3, label %block_.L_4163ec, label %block_4163c9

block_4163c9:
  ; Code: movq $0xa7f430, %rax	 RIP: 4163c9	 Bytes: 10
  %loadMem_4163c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163c9 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163c9)
  store %struct.Memory* %call_4163c9, %struct.Memory** %MEMORY

  ; Code: movslq -0x74(%rbp), %rcx	 RIP: 4163d3	 Bytes: 4
  %loadMem_4163d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163d3 = call %struct.Memory* @routine_movslq_MINUS0x74__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163d3)
  store %struct.Memory* %call_4163d3, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 4163d7	 Bytes: 7
  %loadMem_4163d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163d7 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163d7)
  store %struct.Memory* %call_4163d7, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4163de	 Bytes: 3
  %loadMem_4163de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163de = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163de)
  store %struct.Memory* %call_4163de, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 4163e1	 Bytes: 3
  %loadMem_4163e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163e1 = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163e1)
  store %struct.Memory* %call_4163e1, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rax	 RIP: 4163e4	 Bytes: 4
  %loadMem_4163e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163e4 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163e4)
  store %struct.Memory* %call_4163e4, %struct.Memory** %MEMORY

  ; Code: addl (%rax), %edx	 RIP: 4163e8	 Bytes: 2
  %loadMem_4163e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163e8 = call %struct.Memory* @routine_addl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163e8)
  store %struct.Memory* %call_4163e8, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax)	 RIP: 4163ea	 Bytes: 2
  %loadMem_4163ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163ea = call %struct.Memory* @routine_movl__edx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163ea)
  store %struct.Memory* %call_4163ea, %struct.Memory** %MEMORY

  ; Code: .L_4163ec:	 RIP: 4163ec	 Bytes: 0
  br label %block_.L_4163ec
block_.L_4163ec:

  ; Code: jmpq .L_416585	 RIP: 4163ec	 Bytes: 5
  %loadMem_4163ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163ec = call %struct.Memory* @routine_jmpq_.L_416585(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163ec, i64 409, i64 5)
  store %struct.Memory* %call_4163ec, %struct.Memory** %MEMORY

  br label %block_.L_416585

  ; Code: .L_4163f1:	 RIP: 4163f1	 Bytes: 0
block_.L_4163f1:

  ; Code: movq $0xa7f430, %rax	 RIP: 4163f1	 Bytes: 10
  %loadMem_4163f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163f1 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163f1)
  store %struct.Memory* %call_4163f1, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 4163fb	 Bytes: 4
  %loadMem_4163fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163fb = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163fb)
  store %struct.Memory* %call_4163fb, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %edx	 RIP: 4163ff	 Bytes: 2
  %loadMem_4163ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163ff = call %struct.Memory* @routine_movl___rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163ff)
  store %struct.Memory* %call_4163ff, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 416401	 Bytes: 3
  %loadMem_416401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416401 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416401)
  store %struct.Memory* %call_416401, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rcx)	 RIP: 416404	 Bytes: 2
  %loadMem_416404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416404 = call %struct.Memory* @routine_movl__edx____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416404)
  store %struct.Memory* %call_416404, %struct.Memory** %MEMORY

  ; Code: movslq -0x74(%rbp), %rcx	 RIP: 416406	 Bytes: 4
  %loadMem_416406 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416406 = call %struct.Memory* @routine_movslq_MINUS0x74__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416406)
  store %struct.Memory* %call_416406, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 41640a	 Bytes: 7
  %loadMem_41640a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41640a = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41640a)
  store %struct.Memory* %call_41640a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 416411	 Bytes: 3
  %loadMem_416411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416411 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416411)
  store %struct.Memory* %call_416411, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xc(%rax)	 RIP: 416414	 Bytes: 4
  %loadMem_416414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416414 = call %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416414)
  store %struct.Memory* %call_416414, %struct.Memory** %MEMORY

  ; Code: jne .L_4164d3	 RIP: 416418	 Bytes: 6
  %loadMem_416418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416418 = call %struct.Memory* @routine_jne_.L_4164d3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416418, i8* %BRANCH_TAKEN, i64 187, i64 6, i64 6)
  store %struct.Memory* %call_416418, %struct.Memory** %MEMORY

  %loadBr_416418 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416418 = icmp eq i8 %loadBr_416418, 1
  br i1 %cmpBr_416418, label %block_.L_4164d3, label %block_41641e

block_41641e:
  ; Code: movq $0xa7f430, %rax	 RIP: 41641e	 Bytes: 10
  %loadMem_41641e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41641e = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41641e)
  store %struct.Memory* %call_41641e, %struct.Memory** %MEMORY

  ; Code: movslq -0x74(%rbp), %rcx	 RIP: 416428	 Bytes: 4
  %loadMem_416428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416428 = call %struct.Memory* @routine_movslq_MINUS0x74__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416428)
  store %struct.Memory* %call_416428, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 41642c	 Bytes: 7
  %loadMem_41642c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41642c = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41642c)
  store %struct.Memory* %call_41642c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 416433	 Bytes: 3
  %loadMem_416433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416433 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416433)
  store %struct.Memory* %call_416433, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 416436	 Bytes: 3
  %loadMem_416436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416436 = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416436)
  store %struct.Memory* %call_416436, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 416439	 Bytes: 4
  %loadMem_416439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416439 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416439)
  store %struct.Memory* %call_416439, %struct.Memory** %MEMORY

  ; Code: addl (%rax), %edx	 RIP: 41643d	 Bytes: 2
  %loadMem_41643d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41643d = call %struct.Memory* @routine_addl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41643d)
  store %struct.Memory* %call_41643d, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax)	 RIP: 41643f	 Bytes: 2
  %loadMem_41643f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41643f = call %struct.Memory* @routine_movl__edx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41643f)
  store %struct.Memory* %call_41643f, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x78(%rbp)	 RIP: 416441	 Bytes: 7
  %loadMem_416441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416441 = call %struct.Memory* @routine_movl__0x0__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416441)
  store %struct.Memory* %call_416441, %struct.Memory** %MEMORY

  ; Code: .L_416448:	 RIP: 416448	 Bytes: 0
  br label %block_.L_416448
block_.L_416448:

  ; Code: movq $0xa7f430, %rax	 RIP: 416448	 Bytes: 10
  %loadMem_416448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416448 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416448)
  store %struct.Memory* %call_416448, %struct.Memory** %MEMORY

  ; Code: movl -0x78(%rbp), %ecx	 RIP: 416452	 Bytes: 3
  %loadMem_416452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416452 = call %struct.Memory* @routine_movl_MINUS0x78__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416452)
  store %struct.Memory* %call_416452, %struct.Memory** %MEMORY

  ; Code: movslq -0x74(%rbp), %rdx	 RIP: 416455	 Bytes: 4
  %loadMem_416455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416455 = call %struct.Memory* @routine_movslq_MINUS0x74__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416455)
  store %struct.Memory* %call_416455, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 416459	 Bytes: 7
  %loadMem_416459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416459 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416459)
  store %struct.Memory* %call_416459, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 416460	 Bytes: 3
  %loadMem_416460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416460 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416460)
  store %struct.Memory* %call_416460, %struct.Memory** %MEMORY

  ; Code: cmpl 0x60(%rax), %ecx	 RIP: 416463	 Bytes: 3
  %loadMem_416463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416463 = call %struct.Memory* @routine_cmpl_0x60__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416463)
  store %struct.Memory* %call_416463, %struct.Memory** %MEMORY

  ; Code: jge .L_4164ce	 RIP: 416466	 Bytes: 6
  %loadMem_416466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416466 = call %struct.Memory* @routine_jge_.L_4164ce(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416466, i8* %BRANCH_TAKEN, i64 104, i64 6, i64 6)
  store %struct.Memory* %call_416466, %struct.Memory** %MEMORY

  %loadBr_416466 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416466 = icmp eq i8 %loadBr_416466, 1
  br i1 %cmpBr_416466, label %block_.L_4164ce, label %block_41646c

block_41646c:
  ; Code: movq $0xa7f430, %rax	 RIP: 41646c	 Bytes: 10
  %loadMem_41646c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41646c = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41646c)
  store %struct.Memory* %call_41646c, %struct.Memory** %MEMORY

  ; Code: movslq -0x74(%rbp), %rcx	 RIP: 416476	 Bytes: 4
  %loadMem_416476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416476 = call %struct.Memory* @routine_movslq_MINUS0x74__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416476)
  store %struct.Memory* %call_416476, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 41647a	 Bytes: 7
  %loadMem_41647a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41647a = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41647a)
  store %struct.Memory* %call_41647a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 416481	 Bytes: 3
  %loadMem_416481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416481 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416481)
  store %struct.Memory* %call_416481, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 416484	 Bytes: 3
  %loadMem_416484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416484 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416484)
  store %struct.Memory* %call_416484, %struct.Memory** %MEMORY

  ; Code: movslq -0x78(%rbp), %rcx	 RIP: 416487	 Bytes: 4
  %loadMem_416487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416487 = call %struct.Memory* @routine_movslq_MINUS0x78__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416487)
  store %struct.Memory* %call_416487, %struct.Memory** %MEMORY

  ; Code: movslq 0x64(%rdx,%rcx,4), %rcx	 RIP: 41648b	 Bytes: 5
  %loadMem_41648b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41648b = call %struct.Memory* @routine_movslq_0x64__rdx__rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41648b)
  store %struct.Memory* %call_41648b, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 416490	 Bytes: 7
  %loadMem_416490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416490 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416490)
  store %struct.Memory* %call_416490, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 416497	 Bytes: 3
  %loadMem_416497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416497 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416497)
  store %struct.Memory* %call_416497, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x80(%rbp)	 RIP: 41649a	 Bytes: 4
  %loadMem_41649a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41649a = call %struct.Memory* @routine_movq__rax__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41649a)
  store %struct.Memory* %call_41649a, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rax	 RIP: 41649e	 Bytes: 4
  %loadMem_41649e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41649e = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41649e)
  store %struct.Memory* %call_41649e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xc(%rax)	 RIP: 4164a2	 Bytes: 4
  %loadMem_4164a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164a2 = call %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164a2)
  store %struct.Memory* %call_4164a2, %struct.Memory** %MEMORY

  ; Code: jne .L_4164bb	 RIP: 4164a6	 Bytes: 6
  %loadMem_4164a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164a6 = call %struct.Memory* @routine_jne_.L_4164bb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164a6, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_4164a6, %struct.Memory** %MEMORY

  %loadBr_4164a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4164a6 = icmp eq i8 %loadBr_4164a6, 1
  br i1 %cmpBr_4164a6, label %block_.L_4164bb, label %block_4164ac

block_4164ac:
  ; Code: movq -0x80(%rbp), %rax	 RIP: 4164ac	 Bytes: 4
  %loadMem_4164ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164ac = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164ac)
  store %struct.Memory* %call_4164ac, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 4164b0	 Bytes: 3
  %loadMem_4164b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164b0 = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164b0)
  store %struct.Memory* %call_4164b0, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rax	 RIP: 4164b3	 Bytes: 4
  %loadMem_4164b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164b3 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164b3)
  store %struct.Memory* %call_4164b3, %struct.Memory** %MEMORY

  ; Code: addl (%rax), %ecx	 RIP: 4164b7	 Bytes: 2
  %loadMem_4164b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164b7 = call %struct.Memory* @routine_addl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164b7)
  store %struct.Memory* %call_4164b7, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 4164b9	 Bytes: 2
  %loadMem_4164b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164b9 = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164b9)
  store %struct.Memory* %call_4164b9, %struct.Memory** %MEMORY

  ; Code: .L_4164bb:	 RIP: 4164bb	 Bytes: 0
  br label %block_.L_4164bb
block_.L_4164bb:

  ; Code: jmpq .L_4164c0	 RIP: 4164bb	 Bytes: 5
  %loadMem_4164bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164bb = call %struct.Memory* @routine_jmpq_.L_4164c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164bb, i64 5, i64 5)
  store %struct.Memory* %call_4164bb, %struct.Memory** %MEMORY

  br label %block_.L_4164c0

  ; Code: .L_4164c0:	 RIP: 4164c0	 Bytes: 0
block_.L_4164c0:

  ; Code: movl -0x78(%rbp), %eax	 RIP: 4164c0	 Bytes: 3
  %loadMem_4164c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164c0 = call %struct.Memory* @routine_movl_MINUS0x78__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164c0)
  store %struct.Memory* %call_4164c0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4164c3	 Bytes: 3
  %loadMem_4164c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164c3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164c3)
  store %struct.Memory* %call_4164c3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x78(%rbp)	 RIP: 4164c6	 Bytes: 3
  %loadMem_4164c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164c6 = call %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164c6)
  store %struct.Memory* %call_4164c6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_416448	 RIP: 4164c9	 Bytes: 5
  %loadMem_4164c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164c9 = call %struct.Memory* @routine_jmpq_.L_416448(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164c9, i64 -129, i64 5)
  store %struct.Memory* %call_4164c9, %struct.Memory** %MEMORY

  br label %block_.L_416448

  ; Code: .L_4164ce:	 RIP: 4164ce	 Bytes: 0
block_.L_4164ce:

  ; Code: jmpq .L_416580	 RIP: 4164ce	 Bytes: 5
  %loadMem_4164ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164ce = call %struct.Memory* @routine_jmpq_.L_416580(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164ce, i64 178, i64 5)
  store %struct.Memory* %call_4164ce, %struct.Memory** %MEMORY

  br label %block_.L_416580

  ; Code: .L_4164d3:	 RIP: 4164d3	 Bytes: 0
block_.L_4164d3:

  ; Code: movq $0xa7f430, %rax	 RIP: 4164d3	 Bytes: 10
  %loadMem_4164d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164d3 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164d3)
  store %struct.Memory* %call_4164d3, %struct.Memory** %MEMORY

  ; Code: movslq -0x74(%rbp), %rcx	 RIP: 4164dd	 Bytes: 4
  %loadMem_4164dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164dd = call %struct.Memory* @routine_movslq_MINUS0x74__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164dd)
  store %struct.Memory* %call_4164dd, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 4164e1	 Bytes: 7
  %loadMem_4164e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164e1 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164e1)
  store %struct.Memory* %call_4164e1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4164e8	 Bytes: 3
  %loadMem_4164e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164e8 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164e8)
  store %struct.Memory* %call_4164e8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0xc(%rax)	 RIP: 4164eb	 Bytes: 4
  %loadMem_4164eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164eb = call %struct.Memory* @routine_cmpl__0x2__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164eb)
  store %struct.Memory* %call_4164eb, %struct.Memory** %MEMORY

  ; Code: jne .L_41657b	 RIP: 4164ef	 Bytes: 6
  %loadMem_4164ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164ef = call %struct.Memory* @routine_jne_.L_41657b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164ef, i8* %BRANCH_TAKEN, i64 140, i64 6, i64 6)
  store %struct.Memory* %call_4164ef, %struct.Memory** %MEMORY

  %loadBr_4164ef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4164ef = icmp eq i8 %loadBr_4164ef, 1
  br i1 %cmpBr_4164ef, label %block_.L_41657b, label %block_4164f5

block_4164f5:
  ; Code: movq $0xa7f430, %rax	 RIP: 4164f5	 Bytes: 10
  %loadMem_4164f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164f5 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164f5)
  store %struct.Memory* %call_4164f5, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 4164ff	 Bytes: 3
  %loadMem_4164ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164ff = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164ff)
  store %struct.Memory* %call_4164ff, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 416502	 Bytes: 3
  %loadMem_416502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416502 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416502)
  store %struct.Memory* %call_416502, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 416505	 Bytes: 3
  %loadMem_416505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416505 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416505)
  store %struct.Memory* %call_416505, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 416508	 Bytes: 8
  %loadMem_416508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416508 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416508)
  store %struct.Memory* %call_416508, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 416510	 Bytes: 7
  %loadMem_416510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416510 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416510)
  store %struct.Memory* %call_416510, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 416517	 Bytes: 3
  %loadMem_416517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416517 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416517)
  store %struct.Memory* %call_416517, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %ecx	 RIP: 41651a	 Bytes: 6
  %loadMem_41651a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41651a = call %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41651a)
  store %struct.Memory* %call_41651a, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %ecx	 RIP: 416520	 Bytes: 7
  %loadMem_416520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416520 = call %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416520)
  store %struct.Memory* %call_416520, %struct.Memory** %MEMORY

  ; Code: je .L_41657b	 RIP: 416527	 Bytes: 6
  %loadMem_416527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416527 = call %struct.Memory* @routine_je_.L_41657b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416527, i8* %BRANCH_TAKEN, i64 84, i64 6, i64 6)
  store %struct.Memory* %call_416527, %struct.Memory** %MEMORY

  %loadBr_416527 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416527 = icmp eq i8 %loadBr_416527, 1
  br i1 %cmpBr_416527, label %block_.L_41657b, label %block_41652d

block_41652d:
  ; Code: movq $0xa7f430, %rax	 RIP: 41652d	 Bytes: 10
  %loadMem_41652d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41652d = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41652d)
  store %struct.Memory* %call_41652d, %struct.Memory** %MEMORY

  ; Code: movslq -0x74(%rbp), %rcx	 RIP: 416537	 Bytes: 4
  %loadMem_416537 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416537 = call %struct.Memory* @routine_movslq_MINUS0x74__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416537)
  store %struct.Memory* %call_416537, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 41653b	 Bytes: 7
  %loadMem_41653b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41653b = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41653b)
  store %struct.Memory* %call_41653b, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 416542	 Bytes: 3
  %loadMem_416542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416542 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416542)
  store %struct.Memory* %call_416542, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 416545	 Bytes: 3
  %loadMem_416545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416545 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416545)
  store %struct.Memory* %call_416545, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rdx), %esi	 RIP: 416548	 Bytes: 3
  %loadMem_416548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416548 = call %struct.Memory* @routine_movl_0x4__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416548)
  store %struct.Memory* %call_416548, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 41654b	 Bytes: 4
  %loadMem_41654b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41654b = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41654b)
  store %struct.Memory* %call_41654b, %struct.Memory** %MEMORY

  ; Code: addl (%rcx), %esi	 RIP: 41654f	 Bytes: 2
  %loadMem_41654f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41654f = call %struct.Memory* @routine_addl___rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41654f)
  store %struct.Memory* %call_41654f, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rcx)	 RIP: 416551	 Bytes: 2
  %loadMem_416551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416551 = call %struct.Memory* @routine_movl__esi____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416551)
  store %struct.Memory* %call_416551, %struct.Memory** %MEMORY

  ; Code: movl 0x99da08, %esi	 RIP: 416553	 Bytes: 7
  %loadMem_416553 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416553 = call %struct.Memory* @routine_movl_0x99da08___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416553)
  store %struct.Memory* %call_416553, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edi	 RIP: 41655a	 Bytes: 3
  %loadMem_41655a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41655a = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41655a)
  store %struct.Memory* %call_41655a, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edi	 RIP: 41655d	 Bytes: 3
  %loadMem_41655d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41655d = call %struct.Memory* @routine_subl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41655d)
  store %struct.Memory* %call_41655d, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rcx	 RIP: 416560	 Bytes: 3
  %loadMem_416560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416560 = call %struct.Memory* @routine_movslq__edi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416560)
  store %struct.Memory* %call_416560, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rcx,4), %rcx	 RIP: 416563	 Bytes: 8
  %loadMem_416563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416563 = call %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416563)
  store %struct.Memory* %call_416563, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 41656b	 Bytes: 7
  %loadMem_41656b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41656b = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41656b)
  store %struct.Memory* %call_41656b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 416572	 Bytes: 3
  %loadMem_416572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416572 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416572)
  store %struct.Memory* %call_416572, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x2e4(%rax)	 RIP: 416575	 Bytes: 6
  %loadMem_416575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416575 = call %struct.Memory* @routine_movl__esi__0x2e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416575)
  store %struct.Memory* %call_416575, %struct.Memory** %MEMORY

  ; Code: .L_41657b:	 RIP: 41657b	 Bytes: 0
  br label %block_.L_41657b
block_.L_41657b:

  ; Code: jmpq .L_416580	 RIP: 41657b	 Bytes: 5
  %loadMem_41657b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41657b = call %struct.Memory* @routine_jmpq_.L_416580(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41657b, i64 5, i64 5)
  store %struct.Memory* %call_41657b, %struct.Memory** %MEMORY

  br label %block_.L_416580

  ; Code: .L_416580:	 RIP: 416580	 Bytes: 0
block_.L_416580:

  ; Code: jmpq .L_416585	 RIP: 416580	 Bytes: 5
  %loadMem_416580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416580 = call %struct.Memory* @routine_jmpq_.L_416585(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416580, i64 5, i64 5)
  store %struct.Memory* %call_416580, %struct.Memory** %MEMORY

  br label %block_.L_416585

  ; Code: .L_416585:	 RIP: 416585	 Bytes: 0
block_.L_416585:

  ; Code: jmpq .L_41658a	 RIP: 416585	 Bytes: 5
  %loadMem_416585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416585 = call %struct.Memory* @routine_jmpq_.L_41658a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416585, i64 5, i64 5)
  store %struct.Memory* %call_416585, %struct.Memory** %MEMORY

  br label %block_.L_41658a

  ; Code: .L_41658a:	 RIP: 41658a	 Bytes: 0
block_.L_41658a:

  ; Code: jmpq .L_41658f	 RIP: 41658a	 Bytes: 5
  %loadMem_41658a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41658a = call %struct.Memory* @routine_jmpq_.L_41658f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41658a, i64 5, i64 5)
  store %struct.Memory* %call_41658a, %struct.Memory** %MEMORY

  br label %block_.L_41658f

  ; Code: .L_41658f:	 RIP: 41658f	 Bytes: 0
block_.L_41658f:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 41658f	 Bytes: 3
  %loadMem_41658f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41658f = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41658f)
  store %struct.Memory* %call_41658f, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 416592	 Bytes: 3
  %loadMem_416592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416592 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416592)
  store %struct.Memory* %call_416592, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 416595	 Bytes: 3
  %loadMem_416595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416595 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416595)
  store %struct.Memory* %call_416595, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 416598	 Bytes: 8
  %loadMem_416598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416598 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416598)
  store %struct.Memory* %call_416598, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 4165a0	 Bytes: 3
  %loadMem_4165a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165a0 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165a0)
  store %struct.Memory* %call_4165a0, %struct.Memory** %MEMORY

  ; Code: jne .L_4165b9	 RIP: 4165a3	 Bytes: 6
  %loadMem_4165a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165a3 = call %struct.Memory* @routine_jne_.L_4165b9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165a3, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4165a3, %struct.Memory** %MEMORY

  %loadBr_4165a3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4165a3 = icmp eq i8 %loadBr_4165a3, 1
  br i1 %cmpBr_4165a3, label %block_.L_4165b9, label %block_4165a9

block_4165a9:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 4165a9	 Bytes: 4
  %loadMem_4165a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165a9 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165a9)
  store %struct.Memory* %call_4165a9, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 4165ad	 Bytes: 2
  %loadMem_4165ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165ad = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165ad)
  store %struct.Memory* %call_4165ad, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4165af	 Bytes: 3
  %loadMem_4165af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165af = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165af)
  store %struct.Memory* %call_4165af, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 4165b2	 Bytes: 2
  %loadMem_4165b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165b2 = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165b2)
  store %struct.Memory* %call_4165b2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_416858	 RIP: 4165b4	 Bytes: 5
  %loadMem_4165b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165b4 = call %struct.Memory* @routine_jmpq_.L_416858(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165b4, i64 676, i64 5)
  store %struct.Memory* %call_4165b4, %struct.Memory** %MEMORY

  br label %block_.L_416858

  ; Code: .L_4165b9:	 RIP: 4165b9	 Bytes: 0
block_.L_4165b9:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 4165b9	 Bytes: 3
  %loadMem_4165b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165b9 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165b9)
  store %struct.Memory* %call_4165b9, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4165bc	 Bytes: 3
  %loadMem_4165bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165bc = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165bc)
  store %struct.Memory* %call_4165bc, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4165bf	 Bytes: 3
  %loadMem_4165bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165bf = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165bf)
  store %struct.Memory* %call_4165bf, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4165c2	 Bytes: 8
  %loadMem_4165c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165c2 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165c2)
  store %struct.Memory* %call_4165c2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4165ca	 Bytes: 3
  %loadMem_4165ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165ca = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165ca)
  store %struct.Memory* %call_4165ca, %struct.Memory** %MEMORY

  ; Code: jne .L_4165e3	 RIP: 4165cd	 Bytes: 6
  %loadMem_4165cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165cd = call %struct.Memory* @routine_jne_.L_4165e3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165cd, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4165cd, %struct.Memory** %MEMORY

  %loadBr_4165cd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4165cd = icmp eq i8 %loadBr_4165cd, 1
  br i1 %cmpBr_4165cd, label %block_.L_4165e3, label %block_4165d3

block_4165d3:
  ; Code: movq -0x60(%rbp), %rax	 RIP: 4165d3	 Bytes: 4
  %loadMem_4165d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165d3 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165d3)
  store %struct.Memory* %call_4165d3, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 4165d7	 Bytes: 2
  %loadMem_4165d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165d7 = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165d7)
  store %struct.Memory* %call_4165d7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4165d9	 Bytes: 3
  %loadMem_4165d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165d9 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165d9)
  store %struct.Memory* %call_4165d9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 4165dc	 Bytes: 2
  %loadMem_4165dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165dc = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165dc)
  store %struct.Memory* %call_4165dc, %struct.Memory** %MEMORY

  ; Code: jmpq .L_416853	 RIP: 4165de	 Bytes: 5
  %loadMem_4165de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165de = call %struct.Memory* @routine_jmpq_.L_416853(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165de, i64 629, i64 5)
  store %struct.Memory* %call_4165de, %struct.Memory** %MEMORY

  br label %block_.L_416853

  ; Code: .L_4165e3:	 RIP: 4165e3	 Bytes: 0
block_.L_4165e3:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 4165e3	 Bytes: 3
  %loadMem_4165e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165e3 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165e3)
  store %struct.Memory* %call_4165e3, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4165e6	 Bytes: 3
  %loadMem_4165e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165e6 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165e6)
  store %struct.Memory* %call_4165e6, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4165e9	 Bytes: 3
  %loadMem_4165e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165e9 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165e9)
  store %struct.Memory* %call_4165e9, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 4165ec	 Bytes: 7
  %loadMem_4165ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165ec = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165ec)
  store %struct.Memory* %call_4165ec, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x84(%rbp)	 RIP: 4165f3	 Bytes: 6
  %loadMem_4165f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165f3 = call %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165f3)
  store %struct.Memory* %call_4165f3, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 4165f9	 Bytes: 4
  %loadMem_4165f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165f9 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165f9)
  store %struct.Memory* %call_4165f9, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 4165fd	 Bytes: 7
  %loadMem_4165fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165fd = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165fd)
  store %struct.Memory* %call_4165fd, %struct.Memory** %MEMORY

  ; Code: cmpl -0x84(%rbp), %eax	 RIP: 416604	 Bytes: 6
  %loadMem_416604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416604 = call %struct.Memory* @routine_cmpl_MINUS0x84__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416604)
  store %struct.Memory* %call_416604, %struct.Memory** %MEMORY

  ; Code: jne .L_41661b	 RIP: 41660a	 Bytes: 6
  %loadMem_41660a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41660a = call %struct.Memory* @routine_jne_.L_41661b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41660a, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_41660a, %struct.Memory** %MEMORY

  %loadBr_41660a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41660a = icmp eq i8 %loadBr_41660a, 1
  br i1 %cmpBr_41660a, label %block_.L_41661b, label %block_416610

block_416610:
  ; Code: movq -0x30(%rbp), %rax	 RIP: 416610	 Bytes: 4
  %loadMem_416610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416610 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416610)
  store %struct.Memory* %call_416610, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 416614	 Bytes: 2
  %loadMem_416614 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416614 = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416614)
  store %struct.Memory* %call_416614, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 416616	 Bytes: 3
  %loadMem_416616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416616 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416616)
  store %struct.Memory* %call_416616, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 416619	 Bytes: 2
  %loadMem_416619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416619 = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416619)
  store %struct.Memory* %call_416619, %struct.Memory** %MEMORY

  ; Code: .L_41661b:	 RIP: 41661b	 Bytes: 0
  br label %block_.L_41661b
block_.L_41661b:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 41661b	 Bytes: 3
  %loadMem_41661b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41661b = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41661b)
  store %struct.Memory* %call_41661b, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 41661e	 Bytes: 3
  %loadMem_41661e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41661e = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41661e)
  store %struct.Memory* %call_41661e, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 416621	 Bytes: 3
  %loadMem_416621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416621 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416621)
  store %struct.Memory* %call_416621, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 416624	 Bytes: 8
  %loadMem_416624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416624 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416624)
  store %struct.Memory* %call_416624, %struct.Memory** %MEMORY

  ; Code: cmpl -0x18(%rbp), %eax	 RIP: 41662c	 Bytes: 3
  %loadMem_41662c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41662c = call %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41662c)
  store %struct.Memory* %call_41662c, %struct.Memory** %MEMORY

  ; Code: jne .L_416690	 RIP: 41662f	 Bytes: 6
  %loadMem_41662f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41662f = call %struct.Memory* @routine_jne_.L_416690(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41662f, i8* %BRANCH_TAKEN, i64 97, i64 6, i64 6)
  store %struct.Memory* %call_41662f, %struct.Memory** %MEMORY

  %loadBr_41662f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41662f = icmp eq i8 %loadBr_41662f, 1
  br i1 %cmpBr_41662f, label %block_.L_416690, label %block_416635

block_416635:
  ; Code: movq $0xa7f430, %rax	 RIP: 416635	 Bytes: 10
  %loadMem_416635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416635 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416635)
  store %struct.Memory* %call_416635, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 41663f	 Bytes: 4
  %loadMem_41663f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41663f = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41663f)
  store %struct.Memory* %call_41663f, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %edx	 RIP: 416643	 Bytes: 2
  %loadMem_416643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416643 = call %struct.Memory* @routine_movl___rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416643)
  store %struct.Memory* %call_416643, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 416645	 Bytes: 3
  %loadMem_416645 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416645 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416645)
  store %struct.Memory* %call_416645, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rcx)	 RIP: 416648	 Bytes: 2
  %loadMem_416648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416648 = call %struct.Memory* @routine_movl__edx____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416648)
  store %struct.Memory* %call_416648, %struct.Memory** %MEMORY

  ; Code: movslq -0x84(%rbp), %rcx	 RIP: 41664a	 Bytes: 7
  %loadMem_41664a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41664a = call %struct.Memory* @routine_movslq_MINUS0x84__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41664a)
  store %struct.Memory* %call_41664a, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 416651	 Bytes: 7
  %loadMem_416651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416651 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416651)
  store %struct.Memory* %call_416651, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 416658	 Bytes: 3
  %loadMem_416658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416658 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416658)
  store %struct.Memory* %call_416658, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xc(%rax)	 RIP: 41665b	 Bytes: 4
  %loadMem_41665b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41665b = call %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41665b)
  store %struct.Memory* %call_41665b, %struct.Memory** %MEMORY

  ; Code: jne .L_41668b	 RIP: 41665f	 Bytes: 6
  %loadMem_41665f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41665f = call %struct.Memory* @routine_jne_.L_41668b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41665f, i8* %BRANCH_TAKEN, i64 44, i64 6, i64 6)
  store %struct.Memory* %call_41665f, %struct.Memory** %MEMORY

  %loadBr_41665f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41665f = icmp eq i8 %loadBr_41665f, 1
  br i1 %cmpBr_41665f, label %block_.L_41668b, label %block_416665

block_416665:
  ; Code: movq $0xa7f430, %rax	 RIP: 416665	 Bytes: 10
  %loadMem_416665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416665 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416665)
  store %struct.Memory* %call_416665, %struct.Memory** %MEMORY

  ; Code: movslq -0x84(%rbp), %rcx	 RIP: 41666f	 Bytes: 7
  %loadMem_41666f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41666f = call %struct.Memory* @routine_movslq_MINUS0x84__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41666f)
  store %struct.Memory* %call_41666f, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 416676	 Bytes: 7
  %loadMem_416676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416676 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416676)
  store %struct.Memory* %call_416676, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41667d	 Bytes: 3
  %loadMem_41667d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41667d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41667d)
  store %struct.Memory* %call_41667d, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 416680	 Bytes: 3
  %loadMem_416680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416680 = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416680)
  store %struct.Memory* %call_416680, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rax	 RIP: 416683	 Bytes: 4
  %loadMem_416683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416683 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416683)
  store %struct.Memory* %call_416683, %struct.Memory** %MEMORY

  ; Code: addl (%rax), %edx	 RIP: 416687	 Bytes: 2
  %loadMem_416687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416687 = call %struct.Memory* @routine_addl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416687)
  store %struct.Memory* %call_416687, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax)	 RIP: 416689	 Bytes: 2
  %loadMem_416689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416689 = call %struct.Memory* @routine_movl__edx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416689)
  store %struct.Memory* %call_416689, %struct.Memory** %MEMORY

  ; Code: .L_41668b:	 RIP: 41668b	 Bytes: 0
  br label %block_.L_41668b
block_.L_41668b:

  ; Code: jmpq .L_41684e	 RIP: 41668b	 Bytes: 5
  %loadMem_41668b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41668b = call %struct.Memory* @routine_jmpq_.L_41684e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41668b, i64 451, i64 5)
  store %struct.Memory* %call_41668b, %struct.Memory** %MEMORY

  br label %block_.L_41684e

  ; Code: .L_416690:	 RIP: 416690	 Bytes: 0
block_.L_416690:

  ; Code: movq $0xa7f430, %rax	 RIP: 416690	 Bytes: 10
  %loadMem_416690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416690 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416690)
  store %struct.Memory* %call_416690, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 41669a	 Bytes: 4
  %loadMem_41669a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41669a = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41669a)
  store %struct.Memory* %call_41669a, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %edx	 RIP: 41669e	 Bytes: 2
  %loadMem_41669e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41669e = call %struct.Memory* @routine_movl___rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41669e)
  store %struct.Memory* %call_41669e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 4166a0	 Bytes: 3
  %loadMem_4166a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166a0 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166a0)
  store %struct.Memory* %call_4166a0, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rcx)	 RIP: 4166a3	 Bytes: 2
  %loadMem_4166a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166a3 = call %struct.Memory* @routine_movl__edx____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166a3)
  store %struct.Memory* %call_4166a3, %struct.Memory** %MEMORY

  ; Code: movslq -0x84(%rbp), %rcx	 RIP: 4166a5	 Bytes: 7
  %loadMem_4166a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166a5 = call %struct.Memory* @routine_movslq_MINUS0x84__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166a5)
  store %struct.Memory* %call_4166a5, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 4166ac	 Bytes: 7
  %loadMem_4166ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166ac = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166ac)
  store %struct.Memory* %call_4166ac, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4166b3	 Bytes: 3
  %loadMem_4166b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166b3 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166b3)
  store %struct.Memory* %call_4166b3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xc(%rax)	 RIP: 4166b6	 Bytes: 4
  %loadMem_4166b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166b6 = call %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166b6)
  store %struct.Memory* %call_4166b6, %struct.Memory** %MEMORY

  ; Code: jne .L_416796	 RIP: 4166ba	 Bytes: 6
  %loadMem_4166ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166ba = call %struct.Memory* @routine_jne_.L_416796(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166ba, i8* %BRANCH_TAKEN, i64 220, i64 6, i64 6)
  store %struct.Memory* %call_4166ba, %struct.Memory** %MEMORY

  %loadBr_4166ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4166ba = icmp eq i8 %loadBr_4166ba, 1
  br i1 %cmpBr_4166ba, label %block_.L_416796, label %block_4166c0

block_4166c0:
  ; Code: movq $0xa7f430, %rax	 RIP: 4166c0	 Bytes: 10
  %loadMem_4166c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166c0 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166c0)
  store %struct.Memory* %call_4166c0, %struct.Memory** %MEMORY

  ; Code: movslq -0x84(%rbp), %rcx	 RIP: 4166ca	 Bytes: 7
  %loadMem_4166ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166ca = call %struct.Memory* @routine_movslq_MINUS0x84__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166ca)
  store %struct.Memory* %call_4166ca, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 4166d1	 Bytes: 7
  %loadMem_4166d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166d1 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166d1)
  store %struct.Memory* %call_4166d1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4166d8	 Bytes: 3
  %loadMem_4166d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166d8 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166d8)
  store %struct.Memory* %call_4166d8, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 4166db	 Bytes: 3
  %loadMem_4166db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166db = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166db)
  store %struct.Memory* %call_4166db, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 4166de	 Bytes: 4
  %loadMem_4166de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166de = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166de)
  store %struct.Memory* %call_4166de, %struct.Memory** %MEMORY

  ; Code: addl (%rax), %edx	 RIP: 4166e2	 Bytes: 2
  %loadMem_4166e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166e2 = call %struct.Memory* @routine_addl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166e2)
  store %struct.Memory* %call_4166e2, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax)	 RIP: 4166e4	 Bytes: 2
  %loadMem_4166e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166e4 = call %struct.Memory* @routine_movl__edx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166e4)
  store %struct.Memory* %call_4166e4, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x88(%rbp)	 RIP: 4166e6	 Bytes: 10
  %loadMem_4166e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166e6 = call %struct.Memory* @routine_movl__0x0__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166e6)
  store %struct.Memory* %call_4166e6, %struct.Memory** %MEMORY

  ; Code: .L_4166f0:	 RIP: 4166f0	 Bytes: 0
  br label %block_.L_4166f0
block_.L_4166f0:

  ; Code: movq $0xa7f430, %rax	 RIP: 4166f0	 Bytes: 10
  %loadMem_4166f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166f0 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166f0)
  store %struct.Memory* %call_4166f0, %struct.Memory** %MEMORY

  ; Code: movl -0x88(%rbp), %ecx	 RIP: 4166fa	 Bytes: 6
  %loadMem_4166fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166fa = call %struct.Memory* @routine_movl_MINUS0x88__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166fa)
  store %struct.Memory* %call_4166fa, %struct.Memory** %MEMORY

  ; Code: movslq -0x84(%rbp), %rdx	 RIP: 416700	 Bytes: 7
  %loadMem_416700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416700 = call %struct.Memory* @routine_movslq_MINUS0x84__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416700)
  store %struct.Memory* %call_416700, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 416707	 Bytes: 7
  %loadMem_416707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416707 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416707)
  store %struct.Memory* %call_416707, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41670e	 Bytes: 3
  %loadMem_41670e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41670e = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41670e)
  store %struct.Memory* %call_41670e, %struct.Memory** %MEMORY

  ; Code: cmpl 0x60(%rax), %ecx	 RIP: 416711	 Bytes: 3
  %loadMem_416711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416711 = call %struct.Memory* @routine_cmpl_0x60__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416711)
  store %struct.Memory* %call_416711, %struct.Memory** %MEMORY

  ; Code: jge .L_416791	 RIP: 416714	 Bytes: 6
  %loadMem_416714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416714 = call %struct.Memory* @routine_jge_.L_416791(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416714, i8* %BRANCH_TAKEN, i64 125, i64 6, i64 6)
  store %struct.Memory* %call_416714, %struct.Memory** %MEMORY

  %loadBr_416714 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416714 = icmp eq i8 %loadBr_416714, 1
  br i1 %cmpBr_416714, label %block_.L_416791, label %block_41671a

block_41671a:
  ; Code: movq $0xa7f430, %rax	 RIP: 41671a	 Bytes: 10
  %loadMem_41671a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41671a = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41671a)
  store %struct.Memory* %call_41671a, %struct.Memory** %MEMORY

  ; Code: movslq -0x84(%rbp), %rcx	 RIP: 416724	 Bytes: 7
  %loadMem_416724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416724 = call %struct.Memory* @routine_movslq_MINUS0x84__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416724)
  store %struct.Memory* %call_416724, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 41672b	 Bytes: 7
  %loadMem_41672b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41672b = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41672b)
  store %struct.Memory* %call_41672b, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 416732	 Bytes: 3
  %loadMem_416732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416732 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416732)
  store %struct.Memory* %call_416732, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 416735	 Bytes: 3
  %loadMem_416735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416735 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416735)
  store %struct.Memory* %call_416735, %struct.Memory** %MEMORY

  ; Code: movslq -0x88(%rbp), %rcx	 RIP: 416738	 Bytes: 7
  %loadMem_416738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416738 = call %struct.Memory* @routine_movslq_MINUS0x88__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416738)
  store %struct.Memory* %call_416738, %struct.Memory** %MEMORY

  ; Code: movslq 0x64(%rdx,%rcx,4), %rcx	 RIP: 41673f	 Bytes: 5
  %loadMem_41673f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41673f = call %struct.Memory* @routine_movslq_0x64__rdx__rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41673f)
  store %struct.Memory* %call_41673f, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 416744	 Bytes: 7
  %loadMem_416744 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416744 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416744)
  store %struct.Memory* %call_416744, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41674b	 Bytes: 3
  %loadMem_41674b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41674b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41674b)
  store %struct.Memory* %call_41674b, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x90(%rbp)	 RIP: 41674e	 Bytes: 7
  %loadMem_41674e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41674e = call %struct.Memory* @routine_movq__rax__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41674e)
  store %struct.Memory* %call_41674e, %struct.Memory** %MEMORY

  ; Code: movq -0x90(%rbp), %rax	 RIP: 416755	 Bytes: 7
  %loadMem_416755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416755 = call %struct.Memory* @routine_movq_MINUS0x90__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416755)
  store %struct.Memory* %call_416755, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xc(%rax)	 RIP: 41675c	 Bytes: 4
  %loadMem_41675c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41675c = call %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41675c)
  store %struct.Memory* %call_41675c, %struct.Memory** %MEMORY

  ; Code: jne .L_416778	 RIP: 416760	 Bytes: 6
  %loadMem_416760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416760 = call %struct.Memory* @routine_jne_.L_416778(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416760, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_416760, %struct.Memory** %MEMORY

  %loadBr_416760 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416760 = icmp eq i8 %loadBr_416760, 1
  br i1 %cmpBr_416760, label %block_.L_416778, label %block_416766

block_416766:
  ; Code: movq -0x90(%rbp), %rax	 RIP: 416766	 Bytes: 7
  %loadMem_416766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416766 = call %struct.Memory* @routine_movq_MINUS0x90__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416766)
  store %struct.Memory* %call_416766, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 41676d	 Bytes: 3
  %loadMem_41676d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41676d = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41676d)
  store %struct.Memory* %call_41676d, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rax	 RIP: 416770	 Bytes: 4
  %loadMem_416770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416770 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416770)
  store %struct.Memory* %call_416770, %struct.Memory** %MEMORY

  ; Code: addl (%rax), %ecx	 RIP: 416774	 Bytes: 2
  %loadMem_416774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416774 = call %struct.Memory* @routine_addl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416774)
  store %struct.Memory* %call_416774, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 416776	 Bytes: 2
  %loadMem_416776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416776 = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416776)
  store %struct.Memory* %call_416776, %struct.Memory** %MEMORY

  ; Code: .L_416778:	 RIP: 416778	 Bytes: 0
  br label %block_.L_416778
block_.L_416778:

  ; Code: jmpq .L_41677d	 RIP: 416778	 Bytes: 5
  %loadMem_416778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416778 = call %struct.Memory* @routine_jmpq_.L_41677d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416778, i64 5, i64 5)
  store %struct.Memory* %call_416778, %struct.Memory** %MEMORY

  br label %block_.L_41677d

  ; Code: .L_41677d:	 RIP: 41677d	 Bytes: 0
block_.L_41677d:

  ; Code: movl -0x88(%rbp), %eax	 RIP: 41677d	 Bytes: 6
  %loadMem_41677d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41677d = call %struct.Memory* @routine_movl_MINUS0x88__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41677d)
  store %struct.Memory* %call_41677d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 416783	 Bytes: 3
  %loadMem_416783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416783 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416783)
  store %struct.Memory* %call_416783, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x88(%rbp)	 RIP: 416786	 Bytes: 6
  %loadMem_416786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416786 = call %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416786)
  store %struct.Memory* %call_416786, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4166f0	 RIP: 41678c	 Bytes: 5
  %loadMem_41678c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41678c = call %struct.Memory* @routine_jmpq_.L_4166f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41678c, i64 -156, i64 5)
  store %struct.Memory* %call_41678c, %struct.Memory** %MEMORY

  br label %block_.L_4166f0

  ; Code: .L_416791:	 RIP: 416791	 Bytes: 0
block_.L_416791:

  ; Code: jmpq .L_416849	 RIP: 416791	 Bytes: 5
  %loadMem_416791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416791 = call %struct.Memory* @routine_jmpq_.L_416849(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416791, i64 184, i64 5)
  store %struct.Memory* %call_416791, %struct.Memory** %MEMORY

  br label %block_.L_416849

  ; Code: .L_416796:	 RIP: 416796	 Bytes: 0
block_.L_416796:

  ; Code: movq $0xa7f430, %rax	 RIP: 416796	 Bytes: 10
  %loadMem_416796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416796 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416796)
  store %struct.Memory* %call_416796, %struct.Memory** %MEMORY

  ; Code: movslq -0x84(%rbp), %rcx	 RIP: 4167a0	 Bytes: 7
  %loadMem_4167a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167a0 = call %struct.Memory* @routine_movslq_MINUS0x84__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167a0)
  store %struct.Memory* %call_4167a0, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 4167a7	 Bytes: 7
  %loadMem_4167a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167a7 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167a7)
  store %struct.Memory* %call_4167a7, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4167ae	 Bytes: 3
  %loadMem_4167ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167ae = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167ae)
  store %struct.Memory* %call_4167ae, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0xc(%rax)	 RIP: 4167b1	 Bytes: 4
  %loadMem_4167b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167b1 = call %struct.Memory* @routine_cmpl__0x2__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167b1)
  store %struct.Memory* %call_4167b1, %struct.Memory** %MEMORY

  ; Code: jne .L_416844	 RIP: 4167b5	 Bytes: 6
  %loadMem_4167b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167b5 = call %struct.Memory* @routine_jne_.L_416844(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167b5, i8* %BRANCH_TAKEN, i64 143, i64 6, i64 6)
  store %struct.Memory* %call_4167b5, %struct.Memory** %MEMORY

  %loadBr_4167b5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4167b5 = icmp eq i8 %loadBr_4167b5, 1
  br i1 %cmpBr_4167b5, label %block_.L_416844, label %block_4167bb

block_4167bb:
  ; Code: movq $0xa7f430, %rax	 RIP: 4167bb	 Bytes: 10
  %loadMem_4167bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167bb = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167bb)
  store %struct.Memory* %call_4167bb, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 4167c5	 Bytes: 3
  %loadMem_4167c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167c5 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167c5)
  store %struct.Memory* %call_4167c5, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %ecx	 RIP: 4167c8	 Bytes: 3
  %loadMem_4167c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167c8 = call %struct.Memory* @routine_subl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167c8)
  store %struct.Memory* %call_4167c8, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4167cb	 Bytes: 3
  %loadMem_4167cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167cb = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167cb)
  store %struct.Memory* %call_4167cb, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 4167ce	 Bytes: 8
  %loadMem_4167ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167ce = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167ce)
  store %struct.Memory* %call_4167ce, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 4167d6	 Bytes: 7
  %loadMem_4167d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167d6 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167d6)
  store %struct.Memory* %call_4167d6, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4167dd	 Bytes: 3
  %loadMem_4167dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167dd = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167dd)
  store %struct.Memory* %call_4167dd, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %ecx	 RIP: 4167e0	 Bytes: 6
  %loadMem_4167e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167e0 = call %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167e0)
  store %struct.Memory* %call_4167e0, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %ecx	 RIP: 4167e6	 Bytes: 7
  %loadMem_4167e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167e6 = call %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167e6)
  store %struct.Memory* %call_4167e6, %struct.Memory** %MEMORY

  ; Code: je .L_416844	 RIP: 4167ed	 Bytes: 6
  %loadMem_4167ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167ed = call %struct.Memory* @routine_je_.L_416844(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167ed, i8* %BRANCH_TAKEN, i64 87, i64 6, i64 6)
  store %struct.Memory* %call_4167ed, %struct.Memory** %MEMORY

  %loadBr_4167ed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4167ed = icmp eq i8 %loadBr_4167ed, 1
  br i1 %cmpBr_4167ed, label %block_.L_416844, label %block_4167f3

block_4167f3:
  ; Code: movq $0xa7f430, %rax	 RIP: 4167f3	 Bytes: 10
  %loadMem_4167f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167f3 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167f3)
  store %struct.Memory* %call_4167f3, %struct.Memory** %MEMORY

  ; Code: movslq -0x84(%rbp), %rcx	 RIP: 4167fd	 Bytes: 7
  %loadMem_4167fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167fd = call %struct.Memory* @routine_movslq_MINUS0x84__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167fd)
  store %struct.Memory* %call_4167fd, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 416804	 Bytes: 7
  %loadMem_416804 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416804 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416804)
  store %struct.Memory* %call_416804, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 41680b	 Bytes: 3
  %loadMem_41680b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41680b = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41680b)
  store %struct.Memory* %call_41680b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 41680e	 Bytes: 3
  %loadMem_41680e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41680e = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41680e)
  store %struct.Memory* %call_41680e, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rdx), %esi	 RIP: 416811	 Bytes: 3
  %loadMem_416811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416811 = call %struct.Memory* @routine_movl_0x4__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416811)
  store %struct.Memory* %call_416811, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 416814	 Bytes: 4
  %loadMem_416814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416814 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416814)
  store %struct.Memory* %call_416814, %struct.Memory** %MEMORY

  ; Code: addl (%rcx), %esi	 RIP: 416818	 Bytes: 2
  %loadMem_416818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416818 = call %struct.Memory* @routine_addl___rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416818)
  store %struct.Memory* %call_416818, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rcx)	 RIP: 41681a	 Bytes: 2
  %loadMem_41681a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41681a = call %struct.Memory* @routine_movl__esi____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41681a)
  store %struct.Memory* %call_41681a, %struct.Memory** %MEMORY

  ; Code: movl 0x99da08, %esi	 RIP: 41681c	 Bytes: 7
  %loadMem_41681c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41681c = call %struct.Memory* @routine_movl_0x99da08___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41681c)
  store %struct.Memory* %call_41681c, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edi	 RIP: 416823	 Bytes: 3
  %loadMem_416823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416823 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416823)
  store %struct.Memory* %call_416823, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %edi	 RIP: 416826	 Bytes: 3
  %loadMem_416826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416826 = call %struct.Memory* @routine_subl__0x14___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416826)
  store %struct.Memory* %call_416826, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rcx	 RIP: 416829	 Bytes: 3
  %loadMem_416829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416829 = call %struct.Memory* @routine_movslq__edi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416829)
  store %struct.Memory* %call_416829, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rcx,4), %rcx	 RIP: 41682c	 Bytes: 8
  %loadMem_41682c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41682c = call %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41682c)
  store %struct.Memory* %call_41682c, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 416834	 Bytes: 7
  %loadMem_416834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416834 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416834)
  store %struct.Memory* %call_416834, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41683b	 Bytes: 3
  %loadMem_41683b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41683b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41683b)
  store %struct.Memory* %call_41683b, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x2e4(%rax)	 RIP: 41683e	 Bytes: 6
  %loadMem_41683e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41683e = call %struct.Memory* @routine_movl__esi__0x2e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41683e)
  store %struct.Memory* %call_41683e, %struct.Memory** %MEMORY

  ; Code: .L_416844:	 RIP: 416844	 Bytes: 0
  br label %block_.L_416844
block_.L_416844:

  ; Code: jmpq .L_416849	 RIP: 416844	 Bytes: 5
  %loadMem_416844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416844 = call %struct.Memory* @routine_jmpq_.L_416849(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416844, i64 5, i64 5)
  store %struct.Memory* %call_416844, %struct.Memory** %MEMORY

  br label %block_.L_416849

  ; Code: .L_416849:	 RIP: 416849	 Bytes: 0
block_.L_416849:

  ; Code: jmpq .L_41684e	 RIP: 416849	 Bytes: 5
  %loadMem_416849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416849 = call %struct.Memory* @routine_jmpq_.L_41684e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416849, i64 5, i64 5)
  store %struct.Memory* %call_416849, %struct.Memory** %MEMORY

  br label %block_.L_41684e

  ; Code: .L_41684e:	 RIP: 41684e	 Bytes: 0
block_.L_41684e:

  ; Code: jmpq .L_416853	 RIP: 41684e	 Bytes: 5
  %loadMem_41684e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41684e = call %struct.Memory* @routine_jmpq_.L_416853(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41684e, i64 5, i64 5)
  store %struct.Memory* %call_41684e, %struct.Memory** %MEMORY

  br label %block_.L_416853

  ; Code: .L_416853:	 RIP: 416853	 Bytes: 0
block_.L_416853:

  ; Code: jmpq .L_416858	 RIP: 416853	 Bytes: 5
  %loadMem_416853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416853 = call %struct.Memory* @routine_jmpq_.L_416858(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416853, i64 5, i64 5)
  store %struct.Memory* %call_416853, %struct.Memory** %MEMORY

  br label %block_.L_416858

  ; Code: .L_416858:	 RIP: 416858	 Bytes: 0
block_.L_416858:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 416858	 Bytes: 3
  %loadMem_416858 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416858 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416858)
  store %struct.Memory* %call_416858, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41685b	 Bytes: 3
  %loadMem_41685b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41685b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41685b)
  store %struct.Memory* %call_41685b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 41685e	 Bytes: 3
  %loadMem_41685e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41685e = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41685e)
  store %struct.Memory* %call_41685e, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 416861	 Bytes: 8
  %loadMem_416861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416861 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416861)
  store %struct.Memory* %call_416861, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 416869	 Bytes: 3
  %loadMem_416869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416869 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416869)
  store %struct.Memory* %call_416869, %struct.Memory** %MEMORY

  ; Code: jne .L_416882	 RIP: 41686c	 Bytes: 6
  %loadMem_41686c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41686c = call %struct.Memory* @routine_jne_.L_416882(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41686c, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_41686c, %struct.Memory** %MEMORY

  %loadBr_41686c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41686c = icmp eq i8 %loadBr_41686c, 1
  br i1 %cmpBr_41686c, label %block_.L_416882, label %block_416872

block_416872:
  ; Code: movq -0x28(%rbp), %rax	 RIP: 416872	 Bytes: 4
  %loadMem_416872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416872 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416872)
  store %struct.Memory* %call_416872, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 416876	 Bytes: 2
  %loadMem_416876 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416876 = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416876)
  store %struct.Memory* %call_416876, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 416878	 Bytes: 3
  %loadMem_416878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416878 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416878)
  store %struct.Memory* %call_416878, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 41687b	 Bytes: 2
  %loadMem_41687b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41687b = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41687b)
  store %struct.Memory* %call_41687b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_416b21	 RIP: 41687d	 Bytes: 5
  %loadMem_41687d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41687d = call %struct.Memory* @routine_jmpq_.L_416b21(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41687d, i64 676, i64 5)
  store %struct.Memory* %call_41687d, %struct.Memory** %MEMORY

  br label %block_.L_416b21

  ; Code: .L_416882:	 RIP: 416882	 Bytes: 0
block_.L_416882:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 416882	 Bytes: 3
  %loadMem_416882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416882 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416882)
  store %struct.Memory* %call_416882, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 416885	 Bytes: 3
  %loadMem_416885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416885 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416885)
  store %struct.Memory* %call_416885, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 416888	 Bytes: 3
  %loadMem_416888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416888 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416888)
  store %struct.Memory* %call_416888, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 41688b	 Bytes: 8
  %loadMem_41688b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41688b = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41688b)
  store %struct.Memory* %call_41688b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 416893	 Bytes: 3
  %loadMem_416893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416893 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416893)
  store %struct.Memory* %call_416893, %struct.Memory** %MEMORY

  ; Code: jne .L_4168ac	 RIP: 416896	 Bytes: 6
  %loadMem_416896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416896 = call %struct.Memory* @routine_jne_.L_4168ac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416896, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_416896, %struct.Memory** %MEMORY

  %loadBr_416896 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416896 = icmp eq i8 %loadBr_416896, 1
  br i1 %cmpBr_416896, label %block_.L_4168ac, label %block_41689c

block_41689c:
  ; Code: movq -0x60(%rbp), %rax	 RIP: 41689c	 Bytes: 4
  %loadMem_41689c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41689c = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41689c)
  store %struct.Memory* %call_41689c, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 4168a0	 Bytes: 2
  %loadMem_4168a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168a0 = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168a0)
  store %struct.Memory* %call_4168a0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4168a2	 Bytes: 3
  %loadMem_4168a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168a2 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168a2)
  store %struct.Memory* %call_4168a2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 4168a5	 Bytes: 2
  %loadMem_4168a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168a5 = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168a5)
  store %struct.Memory* %call_4168a5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_416b1c	 RIP: 4168a7	 Bytes: 5
  %loadMem_4168a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168a7 = call %struct.Memory* @routine_jmpq_.L_416b1c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168a7, i64 629, i64 5)
  store %struct.Memory* %call_4168a7, %struct.Memory** %MEMORY

  br label %block_.L_416b1c

  ; Code: .L_4168ac:	 RIP: 4168ac	 Bytes: 0
block_.L_4168ac:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 4168ac	 Bytes: 3
  %loadMem_4168ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168ac = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168ac)
  store %struct.Memory* %call_4168ac, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4168af	 Bytes: 3
  %loadMem_4168af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168af = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168af)
  store %struct.Memory* %call_4168af, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4168b2	 Bytes: 3
  %loadMem_4168b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168b2 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168b2)
  store %struct.Memory* %call_4168b2, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 4168b5	 Bytes: 7
  %loadMem_4168b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168b5 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168b5)
  store %struct.Memory* %call_4168b5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x94(%rbp)	 RIP: 4168bc	 Bytes: 6
  %loadMem_4168bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168bc = call %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168bc)
  store %struct.Memory* %call_4168bc, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 4168c2	 Bytes: 4
  %loadMem_4168c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168c2 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168c2)
  store %struct.Memory* %call_4168c2, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rcx,4), %eax	 RIP: 4168c6	 Bytes: 7
  %loadMem_4168c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168c6 = call %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168c6)
  store %struct.Memory* %call_4168c6, %struct.Memory** %MEMORY

  ; Code: cmpl -0x94(%rbp), %eax	 RIP: 4168cd	 Bytes: 6
  %loadMem_4168cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168cd = call %struct.Memory* @routine_cmpl_MINUS0x94__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168cd)
  store %struct.Memory* %call_4168cd, %struct.Memory** %MEMORY

  ; Code: jne .L_4168e4	 RIP: 4168d3	 Bytes: 6
  %loadMem_4168d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168d3 = call %struct.Memory* @routine_jne_.L_4168e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168d3, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_4168d3, %struct.Memory** %MEMORY

  %loadBr_4168d3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4168d3 = icmp eq i8 %loadBr_4168d3, 1
  br i1 %cmpBr_4168d3, label %block_.L_4168e4, label %block_4168d9

block_4168d9:
  ; Code: movq -0x30(%rbp), %rax	 RIP: 4168d9	 Bytes: 4
  %loadMem_4168d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168d9 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168d9)
  store %struct.Memory* %call_4168d9, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 4168dd	 Bytes: 2
  %loadMem_4168dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168dd = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168dd)
  store %struct.Memory* %call_4168dd, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4168df	 Bytes: 3
  %loadMem_4168df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168df = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168df)
  store %struct.Memory* %call_4168df, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 4168e2	 Bytes: 2
  %loadMem_4168e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168e2 = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168e2)
  store %struct.Memory* %call_4168e2, %struct.Memory** %MEMORY

  ; Code: .L_4168e4:	 RIP: 4168e4	 Bytes: 0
  br label %block_.L_4168e4
block_.L_4168e4:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 4168e4	 Bytes: 3
  %loadMem_4168e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168e4 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168e4)
  store %struct.Memory* %call_4168e4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4168e7	 Bytes: 3
  %loadMem_4168e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168e7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168e7)
  store %struct.Memory* %call_4168e7, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4168ea	 Bytes: 3
  %loadMem_4168ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168ea = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168ea)
  store %struct.Memory* %call_4168ea, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4168ed	 Bytes: 8
  %loadMem_4168ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168ed = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168ed)
  store %struct.Memory* %call_4168ed, %struct.Memory** %MEMORY

  ; Code: cmpl -0x18(%rbp), %eax	 RIP: 4168f5	 Bytes: 3
  %loadMem_4168f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168f5 = call %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168f5)
  store %struct.Memory* %call_4168f5, %struct.Memory** %MEMORY

  ; Code: jne .L_416959	 RIP: 4168f8	 Bytes: 6
  %loadMem_4168f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168f8 = call %struct.Memory* @routine_jne_.L_416959(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168f8, i8* %BRANCH_TAKEN, i64 97, i64 6, i64 6)
  store %struct.Memory* %call_4168f8, %struct.Memory** %MEMORY

  %loadBr_4168f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4168f8 = icmp eq i8 %loadBr_4168f8, 1
  br i1 %cmpBr_4168f8, label %block_.L_416959, label %block_4168fe

block_4168fe:
  ; Code: movq $0xa7f430, %rax	 RIP: 4168fe	 Bytes: 10
  %loadMem_4168fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168fe = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168fe)
  store %struct.Memory* %call_4168fe, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 416908	 Bytes: 4
  %loadMem_416908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416908 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416908)
  store %struct.Memory* %call_416908, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %edx	 RIP: 41690c	 Bytes: 2
  %loadMem_41690c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41690c = call %struct.Memory* @routine_movl___rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41690c)
  store %struct.Memory* %call_41690c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 41690e	 Bytes: 3
  %loadMem_41690e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41690e = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41690e)
  store %struct.Memory* %call_41690e, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rcx)	 RIP: 416911	 Bytes: 2
  %loadMem_416911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416911 = call %struct.Memory* @routine_movl__edx____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416911)
  store %struct.Memory* %call_416911, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 416913	 Bytes: 7
  %loadMem_416913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416913 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416913)
  store %struct.Memory* %call_416913, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 41691a	 Bytes: 7
  %loadMem_41691a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41691a = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41691a)
  store %struct.Memory* %call_41691a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 416921	 Bytes: 3
  %loadMem_416921 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416921 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416921)
  store %struct.Memory* %call_416921, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xc(%rax)	 RIP: 416924	 Bytes: 4
  %loadMem_416924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416924 = call %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416924)
  store %struct.Memory* %call_416924, %struct.Memory** %MEMORY

  ; Code: jne .L_416954	 RIP: 416928	 Bytes: 6
  %loadMem_416928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416928 = call %struct.Memory* @routine_jne_.L_416954(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416928, i8* %BRANCH_TAKEN, i64 44, i64 6, i64 6)
  store %struct.Memory* %call_416928, %struct.Memory** %MEMORY

  %loadBr_416928 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416928 = icmp eq i8 %loadBr_416928, 1
  br i1 %cmpBr_416928, label %block_.L_416954, label %block_41692e

block_41692e:
  ; Code: movq $0xa7f430, %rax	 RIP: 41692e	 Bytes: 10
  %loadMem_41692e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41692e = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41692e)
  store %struct.Memory* %call_41692e, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 416938	 Bytes: 7
  %loadMem_416938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416938 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416938)
  store %struct.Memory* %call_416938, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 41693f	 Bytes: 7
  %loadMem_41693f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41693f = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41693f)
  store %struct.Memory* %call_41693f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 416946	 Bytes: 3
  %loadMem_416946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416946 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416946)
  store %struct.Memory* %call_416946, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 416949	 Bytes: 3
  %loadMem_416949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416949 = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416949)
  store %struct.Memory* %call_416949, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rax	 RIP: 41694c	 Bytes: 4
  %loadMem_41694c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41694c = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41694c)
  store %struct.Memory* %call_41694c, %struct.Memory** %MEMORY

  ; Code: addl (%rax), %edx	 RIP: 416950	 Bytes: 2
  %loadMem_416950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416950 = call %struct.Memory* @routine_addl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416950)
  store %struct.Memory* %call_416950, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax)	 RIP: 416952	 Bytes: 2
  %loadMem_416952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416952 = call %struct.Memory* @routine_movl__edx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416952)
  store %struct.Memory* %call_416952, %struct.Memory** %MEMORY

  ; Code: .L_416954:	 RIP: 416954	 Bytes: 0
  br label %block_.L_416954
block_.L_416954:

  ; Code: jmpq .L_416b17	 RIP: 416954	 Bytes: 5
  %loadMem_416954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416954 = call %struct.Memory* @routine_jmpq_.L_416b17(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416954, i64 451, i64 5)
  store %struct.Memory* %call_416954, %struct.Memory** %MEMORY

  br label %block_.L_416b17

  ; Code: .L_416959:	 RIP: 416959	 Bytes: 0
block_.L_416959:

  ; Code: movq $0xa7f430, %rax	 RIP: 416959	 Bytes: 10
  %loadMem_416959 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416959 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416959)
  store %struct.Memory* %call_416959, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 416963	 Bytes: 4
  %loadMem_416963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416963 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416963)
  store %struct.Memory* %call_416963, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %edx	 RIP: 416967	 Bytes: 2
  %loadMem_416967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416967 = call %struct.Memory* @routine_movl___rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416967)
  store %struct.Memory* %call_416967, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 416969	 Bytes: 3
  %loadMem_416969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416969 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416969)
  store %struct.Memory* %call_416969, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rcx)	 RIP: 41696c	 Bytes: 2
  %loadMem_41696c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41696c = call %struct.Memory* @routine_movl__edx____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41696c)
  store %struct.Memory* %call_41696c, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 41696e	 Bytes: 7
  %loadMem_41696e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41696e = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41696e)
  store %struct.Memory* %call_41696e, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 416975	 Bytes: 7
  %loadMem_416975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416975 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416975)
  store %struct.Memory* %call_416975, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41697c	 Bytes: 3
  %loadMem_41697c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41697c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41697c)
  store %struct.Memory* %call_41697c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xc(%rax)	 RIP: 41697f	 Bytes: 4
  %loadMem_41697f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41697f = call %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41697f)
  store %struct.Memory* %call_41697f, %struct.Memory** %MEMORY

  ; Code: jne .L_416a5f	 RIP: 416983	 Bytes: 6
  %loadMem_416983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416983 = call %struct.Memory* @routine_jne_.L_416a5f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416983, i8* %BRANCH_TAKEN, i64 220, i64 6, i64 6)
  store %struct.Memory* %call_416983, %struct.Memory** %MEMORY

  %loadBr_416983 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416983 = icmp eq i8 %loadBr_416983, 1
  br i1 %cmpBr_416983, label %block_.L_416a5f, label %block_416989

block_416989:
  ; Code: movq $0xa7f430, %rax	 RIP: 416989	 Bytes: 10
  %loadMem_416989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416989 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416989)
  store %struct.Memory* %call_416989, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 416993	 Bytes: 7
  %loadMem_416993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416993 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416993)
  store %struct.Memory* %call_416993, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 41699a	 Bytes: 7
  %loadMem_41699a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41699a = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41699a)
  store %struct.Memory* %call_41699a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4169a1	 Bytes: 3
  %loadMem_4169a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169a1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169a1)
  store %struct.Memory* %call_4169a1, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 4169a4	 Bytes: 3
  %loadMem_4169a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169a4 = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169a4)
  store %struct.Memory* %call_4169a4, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 4169a7	 Bytes: 4
  %loadMem_4169a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169a7 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169a7)
  store %struct.Memory* %call_4169a7, %struct.Memory** %MEMORY

  ; Code: addl (%rax), %edx	 RIP: 4169ab	 Bytes: 2
  %loadMem_4169ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169ab = call %struct.Memory* @routine_addl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169ab)
  store %struct.Memory* %call_4169ab, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax)	 RIP: 4169ad	 Bytes: 2
  %loadMem_4169ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169ad = call %struct.Memory* @routine_movl__edx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169ad)
  store %struct.Memory* %call_4169ad, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x98(%rbp)	 RIP: 4169af	 Bytes: 10
  %loadMem_4169af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169af = call %struct.Memory* @routine_movl__0x0__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169af)
  store %struct.Memory* %call_4169af, %struct.Memory** %MEMORY

  ; Code: .L_4169b9:	 RIP: 4169b9	 Bytes: 0
  br label %block_.L_4169b9
block_.L_4169b9:

  ; Code: movq $0xa7f430, %rax	 RIP: 4169b9	 Bytes: 10
  %loadMem_4169b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169b9 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169b9)
  store %struct.Memory* %call_4169b9, %struct.Memory** %MEMORY

  ; Code: movl -0x98(%rbp), %ecx	 RIP: 4169c3	 Bytes: 6
  %loadMem_4169c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169c3 = call %struct.Memory* @routine_movl_MINUS0x98__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169c3)
  store %struct.Memory* %call_4169c3, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rdx	 RIP: 4169c9	 Bytes: 7
  %loadMem_4169c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169c9 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169c9)
  store %struct.Memory* %call_4169c9, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 4169d0	 Bytes: 7
  %loadMem_4169d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169d0 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169d0)
  store %struct.Memory* %call_4169d0, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4169d7	 Bytes: 3
  %loadMem_4169d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169d7 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169d7)
  store %struct.Memory* %call_4169d7, %struct.Memory** %MEMORY

  ; Code: cmpl 0x60(%rax), %ecx	 RIP: 4169da	 Bytes: 3
  %loadMem_4169da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169da = call %struct.Memory* @routine_cmpl_0x60__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169da)
  store %struct.Memory* %call_4169da, %struct.Memory** %MEMORY

  ; Code: jge .L_416a5a	 RIP: 4169dd	 Bytes: 6
  %loadMem_4169dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169dd = call %struct.Memory* @routine_jge_.L_416a5a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169dd, i8* %BRANCH_TAKEN, i64 125, i64 6, i64 6)
  store %struct.Memory* %call_4169dd, %struct.Memory** %MEMORY

  %loadBr_4169dd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4169dd = icmp eq i8 %loadBr_4169dd, 1
  br i1 %cmpBr_4169dd, label %block_.L_416a5a, label %block_4169e3

block_4169e3:
  ; Code: movq $0xa7f430, %rax	 RIP: 4169e3	 Bytes: 10
  %loadMem_4169e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169e3 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169e3)
  store %struct.Memory* %call_4169e3, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 4169ed	 Bytes: 7
  %loadMem_4169ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169ed = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169ed)
  store %struct.Memory* %call_4169ed, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 4169f4	 Bytes: 7
  %loadMem_4169f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169f4 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169f4)
  store %struct.Memory* %call_4169f4, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 4169fb	 Bytes: 3
  %loadMem_4169fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169fb = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169fb)
  store %struct.Memory* %call_4169fb, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 4169fe	 Bytes: 3
  %loadMem_4169fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169fe = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169fe)
  store %struct.Memory* %call_4169fe, %struct.Memory** %MEMORY

  ; Code: movslq -0x98(%rbp), %rcx	 RIP: 416a01	 Bytes: 7
  %loadMem_416a01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a01 = call %struct.Memory* @routine_movslq_MINUS0x98__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a01)
  store %struct.Memory* %call_416a01, %struct.Memory** %MEMORY

  ; Code: movslq 0x64(%rdx,%rcx,4), %rcx	 RIP: 416a08	 Bytes: 5
  %loadMem_416a08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a08 = call %struct.Memory* @routine_movslq_0x64__rdx__rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a08)
  store %struct.Memory* %call_416a08, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 416a0d	 Bytes: 7
  %loadMem_416a0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a0d = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a0d)
  store %struct.Memory* %call_416a0d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 416a14	 Bytes: 3
  %loadMem_416a14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a14 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a14)
  store %struct.Memory* %call_416a14, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xa0(%rbp)	 RIP: 416a17	 Bytes: 7
  %loadMem_416a17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a17 = call %struct.Memory* @routine_movq__rax__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a17)
  store %struct.Memory* %call_416a17, %struct.Memory** %MEMORY

  ; Code: movq -0xa0(%rbp), %rax	 RIP: 416a1e	 Bytes: 7
  %loadMem_416a1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a1e = call %struct.Memory* @routine_movq_MINUS0xa0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a1e)
  store %struct.Memory* %call_416a1e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xc(%rax)	 RIP: 416a25	 Bytes: 4
  %loadMem_416a25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a25 = call %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a25)
  store %struct.Memory* %call_416a25, %struct.Memory** %MEMORY

  ; Code: jne .L_416a41	 RIP: 416a29	 Bytes: 6
  %loadMem_416a29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a29 = call %struct.Memory* @routine_jne_.L_416a41(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a29, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_416a29, %struct.Memory** %MEMORY

  %loadBr_416a29 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416a29 = icmp eq i8 %loadBr_416a29, 1
  br i1 %cmpBr_416a29, label %block_.L_416a41, label %block_416a2f

block_416a2f:
  ; Code: movq -0xa0(%rbp), %rax	 RIP: 416a2f	 Bytes: 7
  %loadMem_416a2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a2f = call %struct.Memory* @routine_movq_MINUS0xa0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a2f)
  store %struct.Memory* %call_416a2f, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 416a36	 Bytes: 3
  %loadMem_416a36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a36 = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a36)
  store %struct.Memory* %call_416a36, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rax	 RIP: 416a39	 Bytes: 4
  %loadMem_416a39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a39 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a39)
  store %struct.Memory* %call_416a39, %struct.Memory** %MEMORY

  ; Code: addl (%rax), %ecx	 RIP: 416a3d	 Bytes: 2
  %loadMem_416a3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a3d = call %struct.Memory* @routine_addl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a3d)
  store %struct.Memory* %call_416a3d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 416a3f	 Bytes: 2
  %loadMem_416a3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a3f = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a3f)
  store %struct.Memory* %call_416a3f, %struct.Memory** %MEMORY

  ; Code: .L_416a41:	 RIP: 416a41	 Bytes: 0
  br label %block_.L_416a41
block_.L_416a41:

  ; Code: jmpq .L_416a46	 RIP: 416a41	 Bytes: 5
  %loadMem_416a41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a41 = call %struct.Memory* @routine_jmpq_.L_416a46(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a41, i64 5, i64 5)
  store %struct.Memory* %call_416a41, %struct.Memory** %MEMORY

  br label %block_.L_416a46

  ; Code: .L_416a46:	 RIP: 416a46	 Bytes: 0
block_.L_416a46:

  ; Code: movl -0x98(%rbp), %eax	 RIP: 416a46	 Bytes: 6
  %loadMem_416a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a46 = call %struct.Memory* @routine_movl_MINUS0x98__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a46)
  store %struct.Memory* %call_416a46, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 416a4c	 Bytes: 3
  %loadMem_416a4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a4c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a4c)
  store %struct.Memory* %call_416a4c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x98(%rbp)	 RIP: 416a4f	 Bytes: 6
  %loadMem_416a4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a4f = call %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a4f)
  store %struct.Memory* %call_416a4f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4169b9	 RIP: 416a55	 Bytes: 5
  %loadMem_416a55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a55 = call %struct.Memory* @routine_jmpq_.L_4169b9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a55, i64 -156, i64 5)
  store %struct.Memory* %call_416a55, %struct.Memory** %MEMORY

  br label %block_.L_4169b9

  ; Code: .L_416a5a:	 RIP: 416a5a	 Bytes: 0
block_.L_416a5a:

  ; Code: jmpq .L_416b12	 RIP: 416a5a	 Bytes: 5
  %loadMem_416a5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a5a = call %struct.Memory* @routine_jmpq_.L_416b12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a5a, i64 184, i64 5)
  store %struct.Memory* %call_416a5a, %struct.Memory** %MEMORY

  br label %block_.L_416b12

  ; Code: .L_416a5f:	 RIP: 416a5f	 Bytes: 0
block_.L_416a5f:

  ; Code: movq $0xa7f430, %rax	 RIP: 416a5f	 Bytes: 10
  %loadMem_416a5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a5f = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a5f)
  store %struct.Memory* %call_416a5f, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 416a69	 Bytes: 7
  %loadMem_416a69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a69 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a69)
  store %struct.Memory* %call_416a69, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 416a70	 Bytes: 7
  %loadMem_416a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a70 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a70)
  store %struct.Memory* %call_416a70, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 416a77	 Bytes: 3
  %loadMem_416a77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a77 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a77)
  store %struct.Memory* %call_416a77, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0xc(%rax)	 RIP: 416a7a	 Bytes: 4
  %loadMem_416a7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a7a = call %struct.Memory* @routine_cmpl__0x2__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a7a)
  store %struct.Memory* %call_416a7a, %struct.Memory** %MEMORY

  ; Code: jne .L_416b0d	 RIP: 416a7e	 Bytes: 6
  %loadMem_416a7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a7e = call %struct.Memory* @routine_jne_.L_416b0d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a7e, i8* %BRANCH_TAKEN, i64 143, i64 6, i64 6)
  store %struct.Memory* %call_416a7e, %struct.Memory** %MEMORY

  %loadBr_416a7e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416a7e = icmp eq i8 %loadBr_416a7e, 1
  br i1 %cmpBr_416a7e, label %block_.L_416b0d, label %block_416a84

block_416a84:
  ; Code: movq $0xa7f430, %rax	 RIP: 416a84	 Bytes: 10
  %loadMem_416a84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a84 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a84)
  store %struct.Memory* %call_416a84, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 416a8e	 Bytes: 3
  %loadMem_416a8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a8e = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a8e)
  store %struct.Memory* %call_416a8e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 416a91	 Bytes: 3
  %loadMem_416a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a91 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a91)
  store %struct.Memory* %call_416a91, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 416a94	 Bytes: 3
  %loadMem_416a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a94 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a94)
  store %struct.Memory* %call_416a94, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 416a97	 Bytes: 8
  %loadMem_416a97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a97 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a97)
  store %struct.Memory* %call_416a97, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 416a9f	 Bytes: 7
  %loadMem_416a9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a9f = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a9f)
  store %struct.Memory* %call_416a9f, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 416aa6	 Bytes: 3
  %loadMem_416aa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416aa6 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416aa6)
  store %struct.Memory* %call_416aa6, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %ecx	 RIP: 416aa9	 Bytes: 6
  %loadMem_416aa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416aa9 = call %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416aa9)
  store %struct.Memory* %call_416aa9, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %ecx	 RIP: 416aaf	 Bytes: 7
  %loadMem_416aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416aaf = call %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416aaf)
  store %struct.Memory* %call_416aaf, %struct.Memory** %MEMORY

  ; Code: je .L_416b0d	 RIP: 416ab6	 Bytes: 6
  %loadMem_416ab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ab6 = call %struct.Memory* @routine_je_.L_416b0d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ab6, i8* %BRANCH_TAKEN, i64 87, i64 6, i64 6)
  store %struct.Memory* %call_416ab6, %struct.Memory** %MEMORY

  %loadBr_416ab6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416ab6 = icmp eq i8 %loadBr_416ab6, 1
  br i1 %cmpBr_416ab6, label %block_.L_416b0d, label %block_416abc

block_416abc:
  ; Code: movq $0xa7f430, %rax	 RIP: 416abc	 Bytes: 10
  %loadMem_416abc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416abc = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416abc)
  store %struct.Memory* %call_416abc, %struct.Memory** %MEMORY

  ; Code: movslq -0x94(%rbp), %rcx	 RIP: 416ac6	 Bytes: 7
  %loadMem_416ac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ac6 = call %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ac6)
  store %struct.Memory* %call_416ac6, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 416acd	 Bytes: 7
  %loadMem_416acd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416acd = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416acd)
  store %struct.Memory* %call_416acd, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 416ad4	 Bytes: 3
  %loadMem_416ad4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ad4 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ad4)
  store %struct.Memory* %call_416ad4, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 416ad7	 Bytes: 3
  %loadMem_416ad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ad7 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ad7)
  store %struct.Memory* %call_416ad7, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rdx), %esi	 RIP: 416ada	 Bytes: 3
  %loadMem_416ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ada = call %struct.Memory* @routine_movl_0x4__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ada)
  store %struct.Memory* %call_416ada, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 416add	 Bytes: 4
  %loadMem_416add = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416add = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416add)
  store %struct.Memory* %call_416add, %struct.Memory** %MEMORY

  ; Code: addl (%rcx), %esi	 RIP: 416ae1	 Bytes: 2
  %loadMem_416ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ae1 = call %struct.Memory* @routine_addl___rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ae1)
  store %struct.Memory* %call_416ae1, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rcx)	 RIP: 416ae3	 Bytes: 2
  %loadMem_416ae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ae3 = call %struct.Memory* @routine_movl__esi____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ae3)
  store %struct.Memory* %call_416ae3, %struct.Memory** %MEMORY

  ; Code: movl 0x99da08, %esi	 RIP: 416ae5	 Bytes: 7
  %loadMem_416ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ae5 = call %struct.Memory* @routine_movl_0x99da08___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ae5)
  store %struct.Memory* %call_416ae5, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edi	 RIP: 416aec	 Bytes: 3
  %loadMem_416aec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416aec = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416aec)
  store %struct.Memory* %call_416aec, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edi	 RIP: 416aef	 Bytes: 3
  %loadMem_416aef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416aef = call %struct.Memory* @routine_addl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416aef)
  store %struct.Memory* %call_416aef, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rcx	 RIP: 416af2	 Bytes: 3
  %loadMem_416af2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416af2 = call %struct.Memory* @routine_movslq__edi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416af2)
  store %struct.Memory* %call_416af2, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rcx,4), %rcx	 RIP: 416af5	 Bytes: 8
  %loadMem_416af5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416af5 = call %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416af5)
  store %struct.Memory* %call_416af5, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 416afd	 Bytes: 7
  %loadMem_416afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416afd = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416afd)
  store %struct.Memory* %call_416afd, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 416b04	 Bytes: 3
  %loadMem_416b04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b04 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b04)
  store %struct.Memory* %call_416b04, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x2e4(%rax)	 RIP: 416b07	 Bytes: 6
  %loadMem_416b07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b07 = call %struct.Memory* @routine_movl__esi__0x2e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b07)
  store %struct.Memory* %call_416b07, %struct.Memory** %MEMORY

  ; Code: .L_416b0d:	 RIP: 416b0d	 Bytes: 0
  br label %block_.L_416b0d
block_.L_416b0d:

  ; Code: jmpq .L_416b12	 RIP: 416b0d	 Bytes: 5
  %loadMem_416b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b0d = call %struct.Memory* @routine_jmpq_.L_416b12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b0d, i64 5, i64 5)
  store %struct.Memory* %call_416b0d, %struct.Memory** %MEMORY

  br label %block_.L_416b12

  ; Code: .L_416b12:	 RIP: 416b12	 Bytes: 0
block_.L_416b12:

  ; Code: jmpq .L_416b17	 RIP: 416b12	 Bytes: 5
  %loadMem_416b12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b12 = call %struct.Memory* @routine_jmpq_.L_416b17(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b12, i64 5, i64 5)
  store %struct.Memory* %call_416b12, %struct.Memory** %MEMORY

  br label %block_.L_416b17

  ; Code: .L_416b17:	 RIP: 416b17	 Bytes: 0
block_.L_416b17:

  ; Code: jmpq .L_416b1c	 RIP: 416b17	 Bytes: 5
  %loadMem_416b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b17 = call %struct.Memory* @routine_jmpq_.L_416b1c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b17, i64 5, i64 5)
  store %struct.Memory* %call_416b17, %struct.Memory** %MEMORY

  br label %block_.L_416b1c

  ; Code: .L_416b1c:	 RIP: 416b1c	 Bytes: 0
block_.L_416b1c:

  ; Code: jmpq .L_416b21	 RIP: 416b1c	 Bytes: 5
  %loadMem_416b1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b1c = call %struct.Memory* @routine_jmpq_.L_416b21(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b1c, i64 5, i64 5)
  store %struct.Memory* %call_416b1c, %struct.Memory** %MEMORY

  br label %block_.L_416b21

  ; Code: .L_416b21:	 RIP: 416b21	 Bytes: 0
block_.L_416b21:

  ; Code: addq $0x10, %rsp	 RIP: 416b21	 Bytes: 4
  %loadMem_416b21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b21 = call %struct.Memory* @routine_addq__0x10___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b21)
  store %struct.Memory* %call_416b21, %struct.Memory** %MEMORY

  ; Code: popq %rbx	 RIP: 416b25	 Bytes: 1
  %loadMem_416b25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b25 = call %struct.Memory* @routine_popq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b25)
  store %struct.Memory* %call_416b25, %struct.Memory** %MEMORY

  ; Code: popq %r14	 RIP: 416b26	 Bytes: 2
  %loadMem_416b26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b26 = call %struct.Memory* @routine_popq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b26)
  store %struct.Memory* %call_416b26, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 416b28	 Bytes: 1
  %loadMem_416b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b28 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b28)
  store %struct.Memory* %call_416b28, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 416b29	 Bytes: 1
  %loadMem_416b29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b29 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b29)
  store %struct.Memory* %call_416b29, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_416b29
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


define %struct.Memory* @routine_pushq__r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R14
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_pushq__rbx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 1
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_subq__0x10___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 16)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_0x30__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x28__rbp____r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x20__rbp____r11(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x18__rbp____rbx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x10__rbp____r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R14, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edi__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__esi__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rcx__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r8__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r9__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %R9
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r14__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %R14
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rbx__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %RBX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r11__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %R11
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r10__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %R10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
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

define %struct.Memory* @routine_movl_0x99da08___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x99da08_type* @G_0x99da08 to i64))
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


define %struct.Memory* @routine_movl__edx__0x99da08(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x99da08_type* @G_0x99da08 to i64), i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_addl__0x14___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 20)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_cmpl__0x3___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
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

define %struct.Memory* @routine_jne_.L_416093(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl___rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
  ret %struct.Memory* %15
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_4162fc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jne_.L_4160bd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jmpq_.L_4162f7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_cmpl_MINUS0x64__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 100
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_4160ef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jne_.L_41615e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
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


define %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl___rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_movl__edx____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 100
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


define %struct.Memory* @routine_jne_.L_416159(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
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

define %struct.Memory* @routine_addl___rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_4162f2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}
















define %struct.Memory* @routine_jne_.L_416240(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 104
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_MINUS0x68__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x64__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_cmpl_0x60__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 96
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

define %struct.Memory* @routine_jge_.L_41623b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_0x64__rdx__rcx_4____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %17, 5
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %16)
  ret %struct.Memory* %19
}






define %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jne_.L_416228(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl___rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jmpq_.L_41622d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
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


define %struct.Memory* @routine_jmpq_.L_4161b5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4162ed(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_cmpl__0x2__0xc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4162e8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
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

define %struct.Memory* @routine_je_.L_4162e8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl___rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__esi____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_addl__0x14___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RDI
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 20)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq__edi___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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






define %struct.Memory* @routine_cmpl__0x3___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_416326(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_jmpq_.L_41658f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jne_.L_416350(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_jmpq_.L_41658a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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






define %struct.Memory* @routine_cmpl_MINUS0x74__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 116
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_416382(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




















define %struct.Memory* @routine_jne_.L_4163f1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_movslq_MINUS0x74__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jne_.L_4163ec(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


















define %struct.Memory* @routine_jmpq_.L_416585(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




















define %struct.Memory* @routine_jne_.L_4164d3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


















define %struct.Memory* @routine_movl__0x0__MINUS0x78__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 120
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_MINUS0x78__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x74__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 116
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jge_.L_4164ce(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movslq_MINUS0x78__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movq__rax__MINUS0x80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jne_.L_4164bb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_jmpq_.L_4164c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_MINUS0x78__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_416448(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_416580(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jne_.L_41657b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
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














define %struct.Memory* @routine_je_.L_41657b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_subl__0x1___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RDI
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 1)
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








define %struct.Memory* @routine_jne_.L_4165b9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_jmpq_.L_416858(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jne_.L_4165e3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_jmpq_.L_416853(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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






define %struct.Memory* @routine_cmpl_MINUS0x84__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 132
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_41661b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




















define %struct.Memory* @routine_jne_.L_416690(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_movslq_MINUS0x84__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jne_.L_41668b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


















define %struct.Memory* @routine_jmpq_.L_41684e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




















define %struct.Memory* @routine_jne_.L_416796(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


















define %struct.Memory* @routine_movl__0x0__MINUS0x88__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 136
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_MINUS0x88__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x84__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 132
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jge_.L_416791(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movslq_MINUS0x88__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movq__rax__MINUS0x90__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x90__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jne_.L_416778(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_jmpq_.L_41677d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_MINUS0x88__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4166f0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_416849(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jne_.L_416844(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
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














define %struct.Memory* @routine_je_.L_416844(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_subl__0x14___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RDI
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 20)
  ret %struct.Memory* %12
}






























define %struct.Memory* @routine_jne_.L_416882(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_jmpq_.L_416b21(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jne_.L_4168ac(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_jmpq_.L_416b1c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 148
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_cmpl_MINUS0x94__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 148
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_4168e4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




















define %struct.Memory* @routine_jne_.L_416959(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jne_.L_416954(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


















define %struct.Memory* @routine_jmpq_.L_416b17(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




















define %struct.Memory* @routine_jne_.L_416a5f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


















define %struct.Memory* @routine_movl__0x0__MINUS0x98__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 152
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_MINUS0x98__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x94__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jge_.L_416a5a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movslq_MINUS0x98__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movq__rax__MINUS0xa0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0xa0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jne_.L_416a41(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_jmpq_.L_416a46(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_MINUS0x98__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4169b9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_416b12(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jne_.L_416b0d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




















define %struct.Memory* @routine_je_.L_416b0d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_addl__0x1___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RDI
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 1)
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

define %struct.Memory* @routine_addq__0x10___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 16)
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

define %struct.Memory* @routine_popq__rbx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 1
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %RBX)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_popq__r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %R14)
  ret %struct.Memory* %11
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

