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

declare %struct.Memory* @sub_413ec0.extended_chainlinks(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_45da70.disconnect(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_452950.string_connect(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_408e30.trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_432d50.add_connection_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_433070.add_cut_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4345c0.add_strategical_defense_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4771f0.cut_possible(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4860c0.bdist(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_488610.is_same_worm(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0xab0f24_type = type <{ [4 x i8] }>
@G_0xab0f24= global %G_0xab0f24_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xab0fe0_type = type <{ [8 x i8] }>
@G_0xab0fe0= global %G_0xab0fe0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x581daa_type = type <{ [8 x i8] }>
@G__0x581daa= global %G__0x581daa_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x582c08_type = type <{ [8 x i8] }>
@G__0x582c08= global %G__0x582c08_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x582c49_type = type <{ [8 x i8] }>
@G__0x582c49= global %G__0x582c49_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x582c84_type = type <{ [8 x i8] }>
@G__0x582c84= global %G__0x582c84_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x582cc6_type = type <{ [8 x i8] }>
@G__0x582cc6= global %G__0x582cc6_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xafdfc0_type = type <{ [8 x i8] }>
@G__0xafdfc0= global %G__0xafdfc0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xb0eff0_type = type <{ [8 x i8] }>
@G__0xb0eff0= global %G__0xb0eff0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xb4bd20_type = type <{ [8 x i8] }>
@G__0xb4bd20= global %G__0xb4bd20_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xb9d8f0_type = type <{ [8 x i8] }>
@G__0xb9d8f0= global %G__0xb9d8f0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @induce_secondary_move_reasons(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .induce_secondary_move_reasons:	 RIP: 47e400	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 47e400	 Bytes: 1
  %loadMem_47e400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e400 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e400)
  store %struct.Memory* %call_47e400, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 47e401	 Bytes: 3
  %loadMem_47e401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e401 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e401)
  store %struct.Memory* %call_47e401, %struct.Memory** %MEMORY

  ; Code: subq $0x2e0, %rsp	 RIP: 47e404	 Bytes: 7
  %loadMem_47e404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e404 = call %struct.Memory* @routine_subq__0x2e0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e404)
  store %struct.Memory* %call_47e404, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 47e40b	 Bytes: 3
  %loadMem_47e40b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e40b = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e40b)
  store %struct.Memory* %call_47e40b, %struct.Memory** %MEMORY

  ; Code: movl $0x15, -0x8(%rbp)	 RIP: 47e40e	 Bytes: 7
  %loadMem_47e40e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e40e = call %struct.Memory* @routine_movl__0x15__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e40e)
  store %struct.Memory* %call_47e40e, %struct.Memory** %MEMORY

  ; Code: .L_47e415:	 RIP: 47e415	 Bytes: 0
  br label %block_.L_47e415
block_.L_47e415:

  ; Code: cmpl $0x190, -0x8(%rbp)	 RIP: 47e415	 Bytes: 7
  %loadMem_47e415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e415 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e415)
  store %struct.Memory* %call_47e415, %struct.Memory** %MEMORY

  ; Code: jge .L_47ed5a	 RIP: 47e41c	 Bytes: 6
  %loadMem_47e41c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e41c = call %struct.Memory* @routine_jge_.L_47ed5a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e41c, i8* %BRANCH_TAKEN, i64 2366, i64 6, i64 6)
  store %struct.Memory* %call_47e41c, %struct.Memory** %MEMORY

  %loadBr_47e41c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e41c = icmp eq i8 %loadBr_47e41c, 1
  br i1 %cmpBr_47e41c, label %block_.L_47ed5a, label %block_47e422

block_47e422:
  ; Code: movslq -0x8(%rbp), %rax	 RIP: 47e422	 Bytes: 4
  %loadMem_47e422 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e422 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e422)
  store %struct.Memory* %call_47e422, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 47e426	 Bytes: 8
  %loadMem_47e426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e426 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e426)
  store %struct.Memory* %call_47e426, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 47e42e	 Bytes: 3
  %loadMem_47e42e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e42e = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e42e)
  store %struct.Memory* %call_47e42e, %struct.Memory** %MEMORY

  ; Code: jne .L_47e43c	 RIP: 47e431	 Bytes: 6
  %loadMem_47e431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e431 = call %struct.Memory* @routine_jne_.L_47e43c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e431, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47e431, %struct.Memory** %MEMORY

  %loadBr_47e431 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e431 = icmp eq i8 %loadBr_47e431, 1
  br i1 %cmpBr_47e431, label %block_.L_47e43c, label %block_47e437

block_47e437:
  ; Code: jmpq .L_47ed4c	 RIP: 47e437	 Bytes: 5
  %loadMem_47e437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e437 = call %struct.Memory* @routine_jmpq_.L_47ed4c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e437, i64 2325, i64 5)
  store %struct.Memory* %call_47e437, %struct.Memory** %MEMORY

  br label %block_.L_47ed4c

  ; Code: .L_47e43c:	 RIP: 47e43c	 Bytes: 0
block_.L_47e43c:

  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 47e43c	 Bytes: 7
  %loadMem_47e43c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e43c = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e43c)
  store %struct.Memory* %call_47e43c, %struct.Memory** %MEMORY

  ; Code: .L_47e443:	 RIP: 47e443	 Bytes: 0
  br label %block_.L_47e443
block_.L_47e443:

  ; Code: cmpl $0x78, -0xc(%rbp)	 RIP: 47e443	 Bytes: 4
  %loadMem_47e443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e443 = call %struct.Memory* @routine_cmpl__0x78__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e443)
  store %struct.Memory* %call_47e443, %struct.Memory** %MEMORY

  ; Code: jge .L_47ed47	 RIP: 47e447	 Bytes: 6
  %loadMem_47e447 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e447 = call %struct.Memory* @routine_jge_.L_47ed47(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e447, i8* %BRANCH_TAKEN, i64 2304, i64 6, i64 6)
  store %struct.Memory* %call_47e447, %struct.Memory** %MEMORY

  %loadBr_47e447 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e447 = icmp eq i8 %loadBr_47e447, 1
  br i1 %cmpBr_47e447, label %block_.L_47ed47, label %block_47e44d

block_47e44d:
  ; Code: movq $0xb9d8f0, %rax	 RIP: 47e44d	 Bytes: 10
  %loadMem_47e44d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e44d = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e44d)
  store %struct.Memory* %call_47e44d, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 47e457	 Bytes: 4
  %loadMem_47e457 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e457 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e457)
  store %struct.Memory* %call_47e457, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 47e45b	 Bytes: 7
  %loadMem_47e45b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e45b = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e45b)
  store %struct.Memory* %call_47e45b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47e462	 Bytes: 3
  %loadMem_47e462 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e462 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e462)
  store %struct.Memory* %call_47e462, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 47e465	 Bytes: 4
  %loadMem_47e465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e465 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e465)
  store %struct.Memory* %call_47e465, %struct.Memory** %MEMORY

  ; Code: movl 0x48(%rax,%rcx,4), %edx	 RIP: 47e469	 Bytes: 4
  %loadMem_47e469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e469 = call %struct.Memory* @routine_movl_0x48__rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e469)
  store %struct.Memory* %call_47e469, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x1c(%rbp)	 RIP: 47e46d	 Bytes: 3
  %loadMem_47e46d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e46d = call %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e46d)
  store %struct.Memory* %call_47e46d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x1c(%rbp)	 RIP: 47e470	 Bytes: 4
  %loadMem_47e470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e470 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e470)
  store %struct.Memory* %call_47e470, %struct.Memory** %MEMORY

  ; Code: jge .L_47e47f	 RIP: 47e474	 Bytes: 6
  %loadMem_47e474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e474 = call %struct.Memory* @routine_jge_.L_47e47f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e474, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47e474, %struct.Memory** %MEMORY

  %loadBr_47e474 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e474 = icmp eq i8 %loadBr_47e474, 1
  br i1 %cmpBr_47e474, label %block_.L_47e47f, label %block_47e47a

block_47e47a:
  ; Code: jmpq .L_47ed47	 RIP: 47e47a	 Bytes: 5
  %loadMem_47e47a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e47a = call %struct.Memory* @routine_jmpq_.L_47ed47(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e47a, i64 2253, i64 5)
  store %struct.Memory* %call_47e47a, %struct.Memory** %MEMORY

  br label %block_.L_47ed47

  ; Code: .L_47e47f:	 RIP: 47e47f	 Bytes: 0
block_.L_47e47f:

  ; Code: movq $0xafdfc0, %rax	 RIP: 47e47f	 Bytes: 10
  %loadMem_47e47f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e47f = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e47f)
  store %struct.Memory* %call_47e47f, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 47e489	 Bytes: 4
  %loadMem_47e489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e489 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e489)
  store %struct.Memory* %call_47e489, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47e48d	 Bytes: 4
  %loadMem_47e48d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e48d = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e48d)
  store %struct.Memory* %call_47e48d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47e491	 Bytes: 3
  %loadMem_47e491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e491 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e491)
  store %struct.Memory* %call_47e491, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, (%rax)	 RIP: 47e494	 Bytes: 3
  %loadMem_47e494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e494 = call %struct.Memory* @routine_cmpl__0x2____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e494)
  store %struct.Memory* %call_47e494, %struct.Memory** %MEMORY

  ; Code: je .L_47e4bb	 RIP: 47e497	 Bytes: 6
  %loadMem_47e497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e497 = call %struct.Memory* @routine_je_.L_47e4bb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e497, i8* %BRANCH_TAKEN, i64 36, i64 6, i64 6)
  store %struct.Memory* %call_47e497, %struct.Memory** %MEMORY

  %loadBr_47e497 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e497 = icmp eq i8 %loadBr_47e497, 1
  br i1 %cmpBr_47e497, label %block_.L_47e4bb, label %block_47e49d

block_47e49d:
  ; Code: movq $0xafdfc0, %rax	 RIP: 47e49d	 Bytes: 10
  %loadMem_47e49d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e49d = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e49d)
  store %struct.Memory* %call_47e49d, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 47e4a7	 Bytes: 4
  %loadMem_47e4a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e4a7 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e4a7)
  store %struct.Memory* %call_47e4a7, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47e4ab	 Bytes: 4
  %loadMem_47e4ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e4ab = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e4ab)
  store %struct.Memory* %call_47e4ab, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47e4af	 Bytes: 3
  %loadMem_47e4af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e4af = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e4af)
  store %struct.Memory* %call_47e4af, %struct.Memory** %MEMORY

  ; Code: cmpl $0x8, (%rax)	 RIP: 47e4b2	 Bytes: 3
  %loadMem_47e4b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e4b2 = call %struct.Memory* @routine_cmpl__0x8____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e4b2)
  store %struct.Memory* %call_47e4b2, %struct.Memory** %MEMORY

  ; Code: jne .L_47e9aa	 RIP: 47e4b5	 Bytes: 6
  %loadMem_47e4b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e4b5 = call %struct.Memory* @routine_jne_.L_47e9aa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e4b5, i8* %BRANCH_TAKEN, i64 1269, i64 6, i64 6)
  store %struct.Memory* %call_47e4b5, %struct.Memory** %MEMORY

  %loadBr_47e4b5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e4b5 = icmp eq i8 %loadBr_47e4b5, 1
  br i1 %cmpBr_47e4b5, label %block_.L_47e9aa, label %block_.L_47e4bb

  ; Code: .L_47e4bb:	 RIP: 47e4bb	 Bytes: 0
block_.L_47e4bb:

  ; Code: movq $0xafdfc0, %rax	 RIP: 47e4bb	 Bytes: 10
  %loadMem_47e4bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e4bb = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e4bb)
  store %struct.Memory* %call_47e4bb, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 47e4c5	 Bytes: 4
  %loadMem_47e4c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e4c5 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e4c5)
  store %struct.Memory* %call_47e4c5, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47e4c9	 Bytes: 4
  %loadMem_47e4c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e4c9 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e4c9)
  store %struct.Memory* %call_47e4c9, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 47e4cd	 Bytes: 3
  %loadMem_47e4cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e4cd = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e4cd)
  store %struct.Memory* %call_47e4cd, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 47e4d0	 Bytes: 3
  %loadMem_47e4d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e4d0 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e4d0)
  store %struct.Memory* %call_47e4d0, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rdx), %esi	 RIP: 47e4d3	 Bytes: 3
  %loadMem_47e4d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e4d3 = call %struct.Memory* @routine_movl_0x4__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e4d3)
  store %struct.Memory* %call_47e4d3, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x18(%rbp)	 RIP: 47e4d6	 Bytes: 3
  %loadMem_47e4d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e4d6 = call %struct.Memory* @routine_movl__esi__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e4d6)
  store %struct.Memory* %call_47e4d6, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 47e4d9	 Bytes: 4
  %loadMem_47e4d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e4d9 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e4d9)
  store %struct.Memory* %call_47e4d9, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47e4dd	 Bytes: 4
  %loadMem_47e4dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e4dd = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e4dd)
  store %struct.Memory* %call_47e4dd, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47e4e1	 Bytes: 3
  %loadMem_47e4e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e4e1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e4e1)
  store %struct.Memory* %call_47e4e1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, (%rax)	 RIP: 47e4e4	 Bytes: 3
  %loadMem_47e4e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e4e4 = call %struct.Memory* @routine_cmpl__0x2____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e4e4)
  store %struct.Memory* %call_47e4e4, %struct.Memory** %MEMORY

  ; Code: jne .L_47e50f	 RIP: 47e4e7	 Bytes: 6
  %loadMem_47e4e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e4e7 = call %struct.Memory* @routine_jne_.L_47e50f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e4e7, i8* %BRANCH_TAKEN, i64 40, i64 6, i64 6)
  store %struct.Memory* %call_47e4e7, %struct.Memory** %MEMORY

  %loadBr_47e4e7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e4e7 = icmp eq i8 %loadBr_47e4e7, 1
  br i1 %cmpBr_47e4e7, label %block_.L_47e50f, label %block_47e4ed

block_47e4ed:
  ; Code: movl $0x3, %eax	 RIP: 47e4ed	 Bytes: 5
  %loadMem_47e4ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e4ed = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e4ed)
  store %struct.Memory* %call_47e4ed, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x20(%rbp)	 RIP: 47e4f2	 Bytes: 7
  %loadMem_47e4f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e4f2 = call %struct.Memory* @routine_movl__0x1__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e4f2)
  store %struct.Memory* %call_47e4f2, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 47e4f9	 Bytes: 4
  %loadMem_47e4f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e4f9 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e4f9)
  store %struct.Memory* %call_47e4f9, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %edx	 RIP: 47e4fd	 Bytes: 8
  %loadMem_47e4fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e4fd = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e4fd)
  store %struct.Memory* %call_47e4fd, %struct.Memory** %MEMORY

  ; Code: subl %edx, %eax	 RIP: 47e505	 Bytes: 2
  %loadMem_47e505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e505 = call %struct.Memory* @routine_subl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e505)
  store %struct.Memory* %call_47e505, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 47e507	 Bytes: 3
  %loadMem_47e507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e507 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e507)
  store %struct.Memory* %call_47e507, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47e525	 RIP: 47e50a	 Bytes: 5
  %loadMem_47e50a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e50a = call %struct.Memory* @routine_jmpq_.L_47e525(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e50a, i64 27, i64 5)
  store %struct.Memory* %call_47e50a, %struct.Memory** %MEMORY

  br label %block_.L_47e525

  ; Code: .L_47e50f:	 RIP: 47e50f	 Bytes: 0
block_.L_47e50f:

  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 47e50f	 Bytes: 7
  %loadMem_47e50f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e50f = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e50f)
  store %struct.Memory* %call_47e50f, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 47e516	 Bytes: 4
  %loadMem_47e516 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e516 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e516)
  store %struct.Memory* %call_47e516, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 47e51a	 Bytes: 8
  %loadMem_47e51a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e51a = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e51a)
  store %struct.Memory* %call_47e51a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x24(%rbp)	 RIP: 47e522	 Bytes: 3
  %loadMem_47e522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e522 = call %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e522)
  store %struct.Memory* %call_47e522, %struct.Memory** %MEMORY

  ; Code: .L_47e525:	 RIP: 47e525	 Bytes: 0
  br label %block_.L_47e525
block_.L_47e525:

  ; Code: movq $0xb0eff0, %rax	 RIP: 47e525	 Bytes: 10
  %loadMem_47e525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e525 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e525)
  store %struct.Memory* %call_47e525, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 47e52f	 Bytes: 4
  %loadMem_47e52f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e52f = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e52f)
  store %struct.Memory* %call_47e52f, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 47e533	 Bytes: 7
  %loadMem_47e533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e533 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e533)
  store %struct.Memory* %call_47e533, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47e53a	 Bytes: 3
  %loadMem_47e53a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e53a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e53a)
  store %struct.Memory* %call_47e53a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb4(%rax)	 RIP: 47e53d	 Bytes: 7
  %loadMem_47e53d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e53d = call %struct.Memory* @routine_cmpl__0x0__0xb4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e53d)
  store %struct.Memory* %call_47e53d, %struct.Memory** %MEMORY

  ; Code: jne .L_47e54f	 RIP: 47e544	 Bytes: 6
  %loadMem_47e544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e544 = call %struct.Memory* @routine_jne_.L_47e54f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e544, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47e544, %struct.Memory** %MEMORY

  %loadBr_47e544 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e544 = icmp eq i8 %loadBr_47e544, 1
  br i1 %cmpBr_47e544, label %block_.L_47e54f, label %block_47e54a

block_47e54a:
  ; Code: jmpq .L_47ed39	 RIP: 47e54a	 Bytes: 5
  %loadMem_47e54a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e54a = call %struct.Memory* @routine_jmpq_.L_47ed39(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e54a, i64 2031, i64 5)
  store %struct.Memory* %call_47e54a, %struct.Memory** %MEMORY

  br label %block_.L_47ed39

  ; Code: .L_47e54f:	 RIP: 47e54f	 Bytes: 0
block_.L_47e54f:

  ; Code: movq $0xb4bd20, %rax	 RIP: 47e54f	 Bytes: 10
  %loadMem_47e54f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e54f = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e54f)
  store %struct.Memory* %call_47e54f, %struct.Memory** %MEMORY

  ; Code: movq 0xab0fe0, %rcx	 RIP: 47e559	 Bytes: 8
  %loadMem_47e559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e559 = call %struct.Memory* @routine_movq_0xab0fe0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e559)
  store %struct.Memory* %call_47e559, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 47e561	 Bytes: 4
  %loadMem_47e561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e561 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e561)
  store %struct.Memory* %call_47e561, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rdx, %rdx	 RIP: 47e565	 Bytes: 4
  %loadMem_47e565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e565 = call %struct.Memory* @routine_imulq__0x4c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e565)
  store %struct.Memory* %call_47e565, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 47e569	 Bytes: 3
  %loadMem_47e569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e569 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e569)
  store %struct.Memory* %call_47e569, %struct.Memory** %MEMORY

  ; Code: movslq 0x4(%rax), %rax	 RIP: 47e56c	 Bytes: 4
  %loadMem_47e56c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e56c = call %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e56c)
  store %struct.Memory* %call_47e56c, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, %rax, %rax	 RIP: 47e570	 Bytes: 4
  %loadMem_47e570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e570 = call %struct.Memory* @routine_imulq__0x68___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e570)
  store %struct.Memory* %call_47e570, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rcx	 RIP: 47e574	 Bytes: 3
  %loadMem_47e574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e574 = call %struct.Memory* @routine_addq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e574)
  store %struct.Memory* %call_47e574, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, 0x3c(%rcx)	 RIP: 47e577	 Bytes: 4
  %loadMem_47e577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e577 = call %struct.Memory* @routine_cmpl__0x5__0x3c__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e577)
  store %struct.Memory* %call_47e577, %struct.Memory** %MEMORY

  ; Code: jne .L_47e586	 RIP: 47e57b	 Bytes: 6
  %loadMem_47e57b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e57b = call %struct.Memory* @routine_jne_.L_47e586(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e57b, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47e57b, %struct.Memory** %MEMORY

  %loadBr_47e57b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e57b = icmp eq i8 %loadBr_47e57b, 1
  br i1 %cmpBr_47e57b, label %block_.L_47e586, label %block_47e581

block_47e581:
  ; Code: jmpq .L_47ed39	 RIP: 47e581	 Bytes: 5
  %loadMem_47e581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e581 = call %struct.Memory* @routine_jmpq_.L_47ed39(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e581, i64 1976, i64 5)
  store %struct.Memory* %call_47e581, %struct.Memory** %MEMORY

  br label %block_.L_47ed39

  ; Code: .L_47e586:	 RIP: 47e586	 Bytes: 0
block_.L_47e586:

  ; Code: cmpl $0x0, -0x20(%rbp)	 RIP: 47e586	 Bytes: 4
  %loadMem_47e586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e586 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e586)
  store %struct.Memory* %call_47e586, %struct.Memory** %MEMORY

  ; Code: jne .L_47e5ba	 RIP: 47e58a	 Bytes: 6
  %loadMem_47e58a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e58a = call %struct.Memory* @routine_jne_.L_47e5ba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e58a, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_47e58a, %struct.Memory** %MEMORY

  %loadBr_47e58a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e58a = icmp eq i8 %loadBr_47e58a, 1
  br i1 %cmpBr_47e58a, label %block_.L_47e5ba, label %block_47e590

block_47e590:
  ; Code: movq $0xb9d8f0, %rax	 RIP: 47e590	 Bytes: 10
  %loadMem_47e590 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e590 = call %struct.Memory* @routine_movq__0xb9d8f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e590)
  store %struct.Memory* %call_47e590, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 47e59a	 Bytes: 4
  %loadMem_47e59a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e59a = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e59a)
  store %struct.Memory* %call_47e59a, %struct.Memory** %MEMORY

  ; Code: imulq $0x234, %rcx, %rcx	 RIP: 47e59e	 Bytes: 7
  %loadMem_47e59e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e59e = call %struct.Memory* @routine_imulq__0x234___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e59e)
  store %struct.Memory* %call_47e59e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47e5a5	 Bytes: 3
  %loadMem_47e5a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e5a5 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e5a5)
  store %struct.Memory* %call_47e5a5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x228(%rax)	 RIP: 47e5a8	 Bytes: 7
  %loadMem_47e5a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e5a8 = call %struct.Memory* @routine_cmpl__0x0__0x228__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e5a8)
  store %struct.Memory* %call_47e5a8, %struct.Memory** %MEMORY

  ; Code: jne .L_47e5ba	 RIP: 47e5af	 Bytes: 6
  %loadMem_47e5af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e5af = call %struct.Memory* @routine_jne_.L_47e5ba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e5af, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47e5af, %struct.Memory** %MEMORY

  %loadBr_47e5af = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e5af = icmp eq i8 %loadBr_47e5af, 1
  br i1 %cmpBr_47e5af, label %block_.L_47e5ba, label %block_47e5b5

block_47e5b5:
  ; Code: jmpq .L_47ed39	 RIP: 47e5b5	 Bytes: 5
  %loadMem_47e5b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e5b5 = call %struct.Memory* @routine_jmpq_.L_47ed39(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e5b5, i64 1924, i64 5)
  store %struct.Memory* %call_47e5b5, %struct.Memory** %MEMORY

  br label %block_.L_47ed39

  ; Code: .L_47e5ba:	 RIP: 47e5ba	 Bytes: 0
block_.L_47e5ba:

  ; Code: movl $0x1, %edx	 RIP: 47e5ba	 Bytes: 5
  %loadMem_47e5ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e5ba = call %struct.Memory* @routine_movl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e5ba)
  store %struct.Memory* %call_47e5ba, %struct.Memory** %MEMORY

  ; Code: leaq -0x2b0(%rbp), %rsi	 RIP: 47e5bf	 Bytes: 7
  %loadMem_47e5bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e5bf = call %struct.Memory* @routine_leaq_MINUS0x2b0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e5bf)
  store %struct.Memory* %call_47e5bf, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edi	 RIP: 47e5c6	 Bytes: 3
  %loadMem_47e5c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e5c6 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e5c6)
  store %struct.Memory* %call_47e5c6, %struct.Memory** %MEMORY

  ; Code: callq .extended_chainlinks	 RIP: 47e5c9	 Bytes: 5
  %loadMem1_47e5c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47e5c9 = call %struct.Memory* @routine_callq_.extended_chainlinks(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47e5c9, i64 -435977, i64 5, i64 5)
  store %struct.Memory* %call1_47e5c9, %struct.Memory** %MEMORY

  %loadMem2_47e5c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47e5c9 = load i64, i64* %3
  %call2_47e5c9 = call %struct.Memory* @sub_413ec0.extended_chainlinks(%struct.State* %0, i64  %loadPC_47e5c9, %struct.Memory* %loadMem2_47e5c9)
  store %struct.Memory* %call2_47e5c9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 47e5ce	 Bytes: 3
  %loadMem_47e5ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e5ce = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e5ce)
  store %struct.Memory* %call_47e5ce, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 47e5d1	 Bytes: 7
  %loadMem_47e5d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e5d1 = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e5d1)
  store %struct.Memory* %call_47e5d1, %struct.Memory** %MEMORY

  ; Code: .L_47e5d8:	 RIP: 47e5d8	 Bytes: 0
  br label %block_.L_47e5d8
block_.L_47e5d8:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 47e5d8	 Bytes: 3
  %loadMem_47e5d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e5d8 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e5d8)
  store %struct.Memory* %call_47e5d8, %struct.Memory** %MEMORY

  ; Code: cmpl -0x28(%rbp), %eax	 RIP: 47e5db	 Bytes: 3
  %loadMem_47e5db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e5db = call %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e5db)
  store %struct.Memory* %call_47e5db, %struct.Memory** %MEMORY

  ; Code: jge .L_47e9a5	 RIP: 47e5de	 Bytes: 6
  %loadMem_47e5de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e5de = call %struct.Memory* @routine_jge_.L_47e9a5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e5de, i8* %BRANCH_TAKEN, i64 967, i64 6, i64 6)
  store %struct.Memory* %call_47e5de, %struct.Memory** %MEMORY

  %loadBr_47e5de = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e5de = icmp eq i8 %loadBr_47e5de, 1
  br i1 %cmpBr_47e5de, label %block_.L_47e9a5, label %block_47e5e4

block_47e5e4:
  ; Code: movl -0x10(%rbp), %eax	 RIP: 47e5e4	 Bytes: 3
  %loadMem_47e5e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e5e4 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e5e4)
  store %struct.Memory* %call_47e5e4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47e5e7	 Bytes: 3
  %loadMem_47e5e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e5e7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e5e7)
  store %struct.Memory* %call_47e5e7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 47e5ea	 Bytes: 3
  %loadMem_47e5ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e5ea = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e5ea)
  store %struct.Memory* %call_47e5ea, %struct.Memory** %MEMORY

  ; Code: .L_47e5ed:	 RIP: 47e5ed	 Bytes: 0
  br label %block_.L_47e5ed
block_.L_47e5ed:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 47e5ed	 Bytes: 3
  %loadMem_47e5ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e5ed = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e5ed)
  store %struct.Memory* %call_47e5ed, %struct.Memory** %MEMORY

  ; Code: cmpl -0x28(%rbp), %eax	 RIP: 47e5f0	 Bytes: 3
  %loadMem_47e5f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e5f0 = call %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e5f0)
  store %struct.Memory* %call_47e5f0, %struct.Memory** %MEMORY

  ; Code: jge .L_47e992	 RIP: 47e5f3	 Bytes: 6
  %loadMem_47e5f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e5f3 = call %struct.Memory* @routine_jge_.L_47e992(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e5f3, i8* %BRANCH_TAKEN, i64 927, i64 6, i64 6)
  store %struct.Memory* %call_47e5f3, %struct.Memory** %MEMORY

  %loadBr_47e5f3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e5f3 = icmp eq i8 %loadBr_47e5f3, 1
  br i1 %cmpBr_47e5f3, label %block_.L_47e992, label %block_47e5f9

block_47e5f9:
  ; Code: movslq -0x10(%rbp), %rax	 RIP: 47e5f9	 Bytes: 4
  %loadMem_47e5f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e5f9 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e5f9)
  store %struct.Memory* %call_47e5f9, %struct.Memory** %MEMORY

  ; Code: movl -0x2b0(%rbp,%rax,4), %ecx	 RIP: 47e5fd	 Bytes: 7
  %loadMem_47e5fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e5fd = call %struct.Memory* @routine_movl_MINUS0x2b0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e5fd)
  store %struct.Memory* %call_47e5fd, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2b4(%rbp)	 RIP: 47e604	 Bytes: 6
  %loadMem_47e604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e604 = call %struct.Memory* @routine_movl__ecx__MINUS0x2b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e604)
  store %struct.Memory* %call_47e604, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rax	 RIP: 47e60a	 Bytes: 4
  %loadMem_47e60a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e60a = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e60a)
  store %struct.Memory* %call_47e60a, %struct.Memory** %MEMORY

  ; Code: movl -0x2b0(%rbp,%rax,4), %ecx	 RIP: 47e60e	 Bytes: 7
  %loadMem_47e60e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e60e = call %struct.Memory* @routine_movl_MINUS0x2b0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e60e)
  store %struct.Memory* %call_47e60e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2b8(%rbp)	 RIP: 47e615	 Bytes: 6
  %loadMem_47e615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e615 = call %struct.Memory* @routine_movl__ecx__MINUS0x2b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e615)
  store %struct.Memory* %call_47e615, %struct.Memory** %MEMORY

  ; Code: movslq -0x2b4(%rbp), %rax	 RIP: 47e61b	 Bytes: 7
  %loadMem_47e61b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e61b = call %struct.Memory* @routine_movslq_MINUS0x2b4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e61b)
  store %struct.Memory* %call_47e61b, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 47e622	 Bytes: 8
  %loadMem_47e622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e622 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e622)
  store %struct.Memory* %call_47e622, %struct.Memory** %MEMORY

  ; Code: movslq -0x2b8(%rbp), %rax	 RIP: 47e62a	 Bytes: 7
  %loadMem_47e62a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e62a = call %struct.Memory* @routine_movslq_MINUS0x2b8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e62a)
  store %struct.Memory* %call_47e62a, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %edx	 RIP: 47e631	 Bytes: 8
  %loadMem_47e631 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e631 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e631)
  store %struct.Memory* %call_47e631, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 47e639	 Bytes: 2
  %loadMem_47e639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e639 = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e639)
  store %struct.Memory* %call_47e639, %struct.Memory** %MEMORY

  ; Code: je .L_47e646	 RIP: 47e63b	 Bytes: 6
  %loadMem_47e63b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e63b = call %struct.Memory* @routine_je_.L_47e646(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e63b, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47e63b, %struct.Memory** %MEMORY

  %loadBr_47e63b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e63b = icmp eq i8 %loadBr_47e63b, 1
  br i1 %cmpBr_47e63b, label %block_.L_47e646, label %block_47e641

block_47e641:
  ; Code: jmpq .L_47e984	 RIP: 47e641	 Bytes: 5
  %loadMem_47e641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e641 = call %struct.Memory* @routine_jmpq_.L_47e984(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e641, i64 835, i64 5)
  store %struct.Memory* %call_47e641, %struct.Memory** %MEMORY

  br label %block_.L_47e984

  ; Code: .L_47e646:	 RIP: 47e646	 Bytes: 0
block_.L_47e646:

  ; Code: cmpl $0x0, -0x20(%rbp)	 RIP: 47e646	 Bytes: 4
  %loadMem_47e646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e646 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e646)
  store %struct.Memory* %call_47e646, %struct.Memory** %MEMORY

  ; Code: je .L_47e696	 RIP: 47e64a	 Bytes: 6
  %loadMem_47e64a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e64a = call %struct.Memory* @routine_je_.L_47e696(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e64a, i8* %BRANCH_TAKEN, i64 76, i64 6, i64 6)
  store %struct.Memory* %call_47e64a, %struct.Memory** %MEMORY

  %loadBr_47e64a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e64a = icmp eq i8 %loadBr_47e64a, 1
  br i1 %cmpBr_47e64a, label %block_.L_47e696, label %block_47e650

block_47e650:
  ; Code: movslq -0x2b4(%rbp), %rax	 RIP: 47e650	 Bytes: 7
  %loadMem_47e650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e650 = call %struct.Memory* @routine_movslq_MINUS0x2b4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e650)
  store %struct.Memory* %call_47e650, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 47e657	 Bytes: 8
  %loadMem_47e657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e657 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e657)
  store %struct.Memory* %call_47e657, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 47e65f	 Bytes: 4
  %loadMem_47e65f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e65f = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e65f)
  store %struct.Memory* %call_47e65f, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %edx	 RIP: 47e663	 Bytes: 8
  %loadMem_47e663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e663 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e663)
  store %struct.Memory* %call_47e663, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 47e66b	 Bytes: 2
  %loadMem_47e66b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e66b = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e66b)
  store %struct.Memory* %call_47e66b, %struct.Memory** %MEMORY

  ; Code: je .L_47e696	 RIP: 47e66d	 Bytes: 6
  %loadMem_47e66d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e66d = call %struct.Memory* @routine_je_.L_47e696(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e66d, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_47e66d, %struct.Memory** %MEMORY

  %loadBr_47e66d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e66d = icmp eq i8 %loadBr_47e66d, 1
  br i1 %cmpBr_47e66d, label %block_.L_47e696, label %block_47e673

block_47e673:
  ; Code: xorl %eax, %eax	 RIP: 47e673	 Bytes: 2
  %loadMem_47e673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e673 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e673)
  store %struct.Memory* %call_47e673, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 47e675	 Bytes: 2
  %loadMem_47e675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e675 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e675)
  store %struct.Memory* %call_47e675, %struct.Memory** %MEMORY

  ; Code: movl -0x2b4(%rbp), %edi	 RIP: 47e677	 Bytes: 6
  %loadMem_47e677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e677 = call %struct.Memory* @routine_movl_MINUS0x2b4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e677)
  store %struct.Memory* %call_47e677, %struct.Memory** %MEMORY

  ; Code: movl -0x2b8(%rbp), %esi	 RIP: 47e67d	 Bytes: 6
  %loadMem_47e67d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e67d = call %struct.Memory* @routine_movl_MINUS0x2b8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e67d)
  store %struct.Memory* %call_47e67d, %struct.Memory** %MEMORY

  ; Code: callq .disconnect	 RIP: 47e683	 Bytes: 5
  %loadMem1_47e683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47e683 = call %struct.Memory* @routine_callq_.disconnect(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47e683, i64 -134163, i64 5, i64 5)
  store %struct.Memory* %call1_47e683, %struct.Memory** %MEMORY

  %loadMem2_47e683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47e683 = load i64, i64* %3
  %call2_47e683 = call %struct.Memory* @sub_45da70.disconnect(%struct.State* %0, i64  %loadPC_47e683, %struct.Memory* %loadMem2_47e683)
  store %struct.Memory* %call2_47e683, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47e688	 Bytes: 3
  %loadMem_47e688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e688 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e688)
  store %struct.Memory* %call_47e688, %struct.Memory** %MEMORY

  ; Code: jne .L_47e696	 RIP: 47e68b	 Bytes: 6
  %loadMem_47e68b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e68b = call %struct.Memory* @routine_jne_.L_47e696(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e68b, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47e68b, %struct.Memory** %MEMORY

  %loadBr_47e68b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e68b = icmp eq i8 %loadBr_47e68b, 1
  br i1 %cmpBr_47e68b, label %block_.L_47e696, label %block_47e691

block_47e691:
  ; Code: jmpq .L_47e984	 RIP: 47e691	 Bytes: 5
  %loadMem_47e691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e691 = call %struct.Memory* @routine_jmpq_.L_47e984(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e691, i64 755, i64 5)
  store %struct.Memory* %call_47e691, %struct.Memory** %MEMORY

  br label %block_.L_47e984

  ; Code: .L_47e696:	 RIP: 47e696	 Bytes: 0
block_.L_47e696:

  ; Code: cmpl $0x0, -0x20(%rbp)	 RIP: 47e696	 Bytes: 4
  %loadMem_47e696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e696 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e696)
  store %struct.Memory* %call_47e696, %struct.Memory** %MEMORY

  ; Code: jne .L_47e6e6	 RIP: 47e69a	 Bytes: 6
  %loadMem_47e69a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e69a = call %struct.Memory* @routine_jne_.L_47e6e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e69a, i8* %BRANCH_TAKEN, i64 76, i64 6, i64 6)
  store %struct.Memory* %call_47e69a, %struct.Memory** %MEMORY

  %loadBr_47e69a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e69a = icmp eq i8 %loadBr_47e69a, 1
  br i1 %cmpBr_47e69a, label %block_.L_47e6e6, label %block_47e6a0

block_47e6a0:
  ; Code: movslq -0x2b4(%rbp), %rax	 RIP: 47e6a0	 Bytes: 7
  %loadMem_47e6a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e6a0 = call %struct.Memory* @routine_movslq_MINUS0x2b4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e6a0)
  store %struct.Memory* %call_47e6a0, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 47e6a7	 Bytes: 8
  %loadMem_47e6a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e6a7 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e6a7)
  store %struct.Memory* %call_47e6a7, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 47e6af	 Bytes: 4
  %loadMem_47e6af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e6af = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e6af)
  store %struct.Memory* %call_47e6af, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %edx	 RIP: 47e6b3	 Bytes: 8
  %loadMem_47e6b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e6b3 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e6b3)
  store %struct.Memory* %call_47e6b3, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 47e6bb	 Bytes: 2
  %loadMem_47e6bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e6bb = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e6bb)
  store %struct.Memory* %call_47e6bb, %struct.Memory** %MEMORY

  ; Code: je .L_47e6e6	 RIP: 47e6bd	 Bytes: 6
  %loadMem_47e6bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e6bd = call %struct.Memory* @routine_je_.L_47e6e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e6bd, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_47e6bd, %struct.Memory** %MEMORY

  %loadBr_47e6bd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e6bd = icmp eq i8 %loadBr_47e6bd, 1
  br i1 %cmpBr_47e6bd, label %block_.L_47e6e6, label %block_47e6c3

block_47e6c3:
  ; Code: xorl %eax, %eax	 RIP: 47e6c3	 Bytes: 2
  %loadMem_47e6c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e6c3 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e6c3)
  store %struct.Memory* %call_47e6c3, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 47e6c5	 Bytes: 2
  %loadMem_47e6c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e6c5 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e6c5)
  store %struct.Memory* %call_47e6c5, %struct.Memory** %MEMORY

  ; Code: movl -0x2b4(%rbp), %edi	 RIP: 47e6c7	 Bytes: 6
  %loadMem_47e6c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e6c7 = call %struct.Memory* @routine_movl_MINUS0x2b4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e6c7)
  store %struct.Memory* %call_47e6c7, %struct.Memory** %MEMORY

  ; Code: movl -0x2b8(%rbp), %esi	 RIP: 47e6cd	 Bytes: 6
  %loadMem_47e6cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e6cd = call %struct.Memory* @routine_movl_MINUS0x2b8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e6cd)
  store %struct.Memory* %call_47e6cd, %struct.Memory** %MEMORY

  ; Code: callq .string_connect	 RIP: 47e6d3	 Bytes: 5
  %loadMem1_47e6d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47e6d3 = call %struct.Memory* @routine_callq_.string_connect(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47e6d3, i64 -179587, i64 5, i64 5)
  store %struct.Memory* %call1_47e6d3, %struct.Memory** %MEMORY

  %loadMem2_47e6d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47e6d3 = load i64, i64* %3
  %call2_47e6d3 = call %struct.Memory* @sub_452950.string_connect(%struct.State* %0, i64  %loadPC_47e6d3, %struct.Memory* %loadMem2_47e6d3)
  store %struct.Memory* %call2_47e6d3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47e6d8	 Bytes: 3
  %loadMem_47e6d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e6d8 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e6d8)
  store %struct.Memory* %call_47e6d8, %struct.Memory** %MEMORY

  ; Code: jne .L_47e6e6	 RIP: 47e6db	 Bytes: 6
  %loadMem_47e6db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e6db = call %struct.Memory* @routine_jne_.L_47e6e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e6db, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47e6db, %struct.Memory** %MEMORY

  %loadBr_47e6db = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e6db = icmp eq i8 %loadBr_47e6db, 1
  br i1 %cmpBr_47e6db, label %block_.L_47e6e6, label %block_47e6e1

block_47e6e1:
  ; Code: jmpq .L_47e984	 RIP: 47e6e1	 Bytes: 5
  %loadMem_47e6e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e6e1 = call %struct.Memory* @routine_jmpq_.L_47e984(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e6e1, i64 675, i64 5)
  store %struct.Memory* %call_47e6e1, %struct.Memory** %MEMORY

  br label %block_.L_47e984

  ; Code: .L_47e6e6:	 RIP: 47e6e6	 Bytes: 0
block_.L_47e6e6:

  ; Code: cmpl $0x0, -0x20(%rbp)	 RIP: 47e6e6	 Bytes: 4
  %loadMem_47e6e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e6e6 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e6e6)
  store %struct.Memory* %call_47e6e6, %struct.Memory** %MEMORY

  ; Code: je .L_47e718	 RIP: 47e6ea	 Bytes: 6
  %loadMem_47e6ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e6ea = call %struct.Memory* @routine_je_.L_47e718(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e6ea, i8* %BRANCH_TAKEN, i64 46, i64 6, i64 6)
  store %struct.Memory* %call_47e6ea, %struct.Memory** %MEMORY

  %loadBr_47e6ea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e6ea = icmp eq i8 %loadBr_47e6ea, 1
  br i1 %cmpBr_47e6ea, label %block_.L_47e718, label %block_47e6f0

block_47e6f0:
  ; Code: movslq -0x2b4(%rbp), %rax	 RIP: 47e6f0	 Bytes: 7
  %loadMem_47e6f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e6f0 = call %struct.Memory* @routine_movslq_MINUS0x2b4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e6f0)
  store %struct.Memory* %call_47e6f0, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 47e6f7	 Bytes: 8
  %loadMem_47e6f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e6f7 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e6f7)
  store %struct.Memory* %call_47e6f7, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 47e6ff	 Bytes: 4
  %loadMem_47e6ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e6ff = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e6ff)
  store %struct.Memory* %call_47e6ff, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %edx	 RIP: 47e703	 Bytes: 8
  %loadMem_47e703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e703 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e703)
  store %struct.Memory* %call_47e703, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 47e70b	 Bytes: 2
  %loadMem_47e70b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e70b = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e70b)
  store %struct.Memory* %call_47e70b, %struct.Memory** %MEMORY

  ; Code: jne .L_47e718	 RIP: 47e70d	 Bytes: 6
  %loadMem_47e70d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e70d = call %struct.Memory* @routine_jne_.L_47e718(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e70d, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47e70d, %struct.Memory** %MEMORY

  %loadBr_47e70d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e70d = icmp eq i8 %loadBr_47e70d, 1
  br i1 %cmpBr_47e70d, label %block_.L_47e718, label %block_47e713

block_47e713:
  ; Code: jmpq .L_47e984	 RIP: 47e713	 Bytes: 5
  %loadMem_47e713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e713 = call %struct.Memory* @routine_jmpq_.L_47e984(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e713, i64 625, i64 5)
  store %struct.Memory* %call_47e713, %struct.Memory** %MEMORY

  br label %block_.L_47e984

  ; Code: .L_47e718:	 RIP: 47e718	 Bytes: 0
block_.L_47e718:

  ; Code: cmpl $0x0, -0x20(%rbp)	 RIP: 47e718	 Bytes: 4
  %loadMem_47e718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e718 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e718)
  store %struct.Memory* %call_47e718, %struct.Memory** %MEMORY

  ; Code: jne .L_47e768	 RIP: 47e71c	 Bytes: 6
  %loadMem_47e71c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e71c = call %struct.Memory* @routine_jne_.L_47e768(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e71c, i8* %BRANCH_TAKEN, i64 76, i64 6, i64 6)
  store %struct.Memory* %call_47e71c, %struct.Memory** %MEMORY

  %loadBr_47e71c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e71c = icmp eq i8 %loadBr_47e71c, 1
  br i1 %cmpBr_47e71c, label %block_.L_47e768, label %block_47e722

block_47e722:
  ; Code: movslq -0x2b4(%rbp), %rax	 RIP: 47e722	 Bytes: 7
  %loadMem_47e722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e722 = call %struct.Memory* @routine_movslq_MINUS0x2b4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e722)
  store %struct.Memory* %call_47e722, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 47e729	 Bytes: 8
  %loadMem_47e729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e729 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e729)
  store %struct.Memory* %call_47e729, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 47e731	 Bytes: 4
  %loadMem_47e731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e731 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e731)
  store %struct.Memory* %call_47e731, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %edx	 RIP: 47e735	 Bytes: 8
  %loadMem_47e735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e735 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e735)
  store %struct.Memory* %call_47e735, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 47e73d	 Bytes: 2
  %loadMem_47e73d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e73d = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e73d)
  store %struct.Memory* %call_47e73d, %struct.Memory** %MEMORY

  ; Code: jne .L_47e768	 RIP: 47e73f	 Bytes: 6
  %loadMem_47e73f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e73f = call %struct.Memory* @routine_jne_.L_47e768(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e73f, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_47e73f, %struct.Memory** %MEMORY

  %loadBr_47e73f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e73f = icmp eq i8 %loadBr_47e73f, 1
  br i1 %cmpBr_47e73f, label %block_.L_47e768, label %block_47e745

block_47e745:
  ; Code: xorl %eax, %eax	 RIP: 47e745	 Bytes: 2
  %loadMem_47e745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e745 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e745)
  store %struct.Memory* %call_47e745, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 47e747	 Bytes: 2
  %loadMem_47e747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e747 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e747)
  store %struct.Memory* %call_47e747, %struct.Memory** %MEMORY

  ; Code: movl -0x2b4(%rbp), %edi	 RIP: 47e749	 Bytes: 6
  %loadMem_47e749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e749 = call %struct.Memory* @routine_movl_MINUS0x2b4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e749)
  store %struct.Memory* %call_47e749, %struct.Memory** %MEMORY

  ; Code: movl -0x2b8(%rbp), %esi	 RIP: 47e74f	 Bytes: 6
  %loadMem_47e74f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e74f = call %struct.Memory* @routine_movl_MINUS0x2b8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e74f)
  store %struct.Memory* %call_47e74f, %struct.Memory** %MEMORY

  ; Code: callq .disconnect	 RIP: 47e755	 Bytes: 5
  %loadMem1_47e755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47e755 = call %struct.Memory* @routine_callq_.disconnect(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47e755, i64 -134373, i64 5, i64 5)
  store %struct.Memory* %call1_47e755, %struct.Memory** %MEMORY

  %loadMem2_47e755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47e755 = load i64, i64* %3
  %call2_47e755 = call %struct.Memory* @sub_45da70.disconnect(%struct.State* %0, i64  %loadPC_47e755, %struct.Memory* %loadMem2_47e755)
  store %struct.Memory* %call2_47e755, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47e75a	 Bytes: 3
  %loadMem_47e75a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e75a = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e75a)
  store %struct.Memory* %call_47e75a, %struct.Memory** %MEMORY

  ; Code: jne .L_47e768	 RIP: 47e75d	 Bytes: 6
  %loadMem_47e75d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e75d = call %struct.Memory* @routine_jne_.L_47e768(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e75d, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47e75d, %struct.Memory** %MEMORY

  %loadBr_47e75d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e75d = icmp eq i8 %loadBr_47e75d, 1
  br i1 %cmpBr_47e75d, label %block_.L_47e768, label %block_47e763

block_47e763:
  ; Code: jmpq .L_47e984	 RIP: 47e763	 Bytes: 5
  %loadMem_47e763 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e763 = call %struct.Memory* @routine_jmpq_.L_47e984(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e763, i64 545, i64 5)
  store %struct.Memory* %call_47e763, %struct.Memory** %MEMORY

  br label %block_.L_47e984

  ; Code: .L_47e768:	 RIP: 47e768	 Bytes: 0
block_.L_47e768:

  ; Code: movq $0x581daa, %rdx	 RIP: 47e768	 Bytes: 10
  %loadMem_47e768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e768 = call %struct.Memory* @routine_movq__0x581daa___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e768)
  store %struct.Memory* %call_47e768, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 47e772	 Bytes: 2
  %loadMem_47e772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e772 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e772)
  store %struct.Memory* %call_47e772, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edi	 RIP: 47e774	 Bytes: 3
  %loadMem_47e774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e774 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e774)
  store %struct.Memory* %call_47e774, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %esi	 RIP: 47e777	 Bytes: 3
  %loadMem_47e777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e777 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e777)
  store %struct.Memory* %call_47e777, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 47e77a	 Bytes: 3
  %loadMem_47e77a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e77a = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e77a)
  store %struct.Memory* %call_47e77a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 47e77d	 Bytes: 3
  %loadMem_47e77d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e77d = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e77d)
  store %struct.Memory* %call_47e77d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 47e780	 Bytes: 3
  %loadMem_47e780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e780 = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e780)
  store %struct.Memory* %call_47e780, %struct.Memory** %MEMORY

  ; Code: callq .trymove	 RIP: 47e783	 Bytes: 5
  %loadMem1_47e783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47e783 = call %struct.Memory* @routine_callq_.trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47e783, i64 -481619, i64 5, i64 5)
  store %struct.Memory* %call1_47e783, %struct.Memory** %MEMORY

  %loadMem2_47e783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47e783 = load i64, i64* %3
  %call2_47e783 = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64  %loadPC_47e783, %struct.Memory* %loadMem2_47e783)
  store %struct.Memory* %call2_47e783, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47e788	 Bytes: 3
  %loadMem_47e788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e788 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e788)
  store %struct.Memory* %call_47e788, %struct.Memory** %MEMORY

  ; Code: je .L_47e97f	 RIP: 47e78b	 Bytes: 6
  %loadMem_47e78b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e78b = call %struct.Memory* @routine_je_.L_47e97f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e78b, i8* %BRANCH_TAKEN, i64 500, i64 6, i64 6)
  store %struct.Memory* %call_47e78b, %struct.Memory** %MEMORY

  %loadBr_47e78b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e78b = icmp eq i8 %loadBr_47e78b, 1
  br i1 %cmpBr_47e78b, label %block_.L_47e97f, label %block_47e791

block_47e791:
  ; Code: cmpl $0x0, -0x20(%rbp)	 RIP: 47e791	 Bytes: 4
  %loadMem_47e791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e791 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e791)
  store %struct.Memory* %call_47e791, %struct.Memory** %MEMORY

  ; Code: je .L_47e834	 RIP: 47e795	 Bytes: 6
  %loadMem_47e795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e795 = call %struct.Memory* @routine_je_.L_47e834(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e795, i8* %BRANCH_TAKEN, i64 159, i64 6, i64 6)
  store %struct.Memory* %call_47e795, %struct.Memory** %MEMORY

  %loadBr_47e795 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e795 = icmp eq i8 %loadBr_47e795, 1
  br i1 %cmpBr_47e795, label %block_.L_47e834, label %block_47e79b

block_47e79b:
  ; Code: movslq -0x2b4(%rbp), %rax	 RIP: 47e79b	 Bytes: 7
  %loadMem_47e79b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e79b = call %struct.Memory* @routine_movslq_MINUS0x2b4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e79b)
  store %struct.Memory* %call_47e79b, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 47e7a2	 Bytes: 8
  %loadMem_47e7a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e7a2 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e7a2)
  store %struct.Memory* %call_47e7a2, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 47e7aa	 Bytes: 4
  %loadMem_47e7aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e7aa = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e7aa)
  store %struct.Memory* %call_47e7aa, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %edx	 RIP: 47e7ae	 Bytes: 8
  %loadMem_47e7ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e7ae = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e7ae)
  store %struct.Memory* %call_47e7ae, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 47e7b6	 Bytes: 2
  %loadMem_47e7b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e7b6 = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e7b6)
  store %struct.Memory* %call_47e7b6, %struct.Memory** %MEMORY

  ; Code: je .L_47e834	 RIP: 47e7b8	 Bytes: 6
  %loadMem_47e7b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e7b8 = call %struct.Memory* @routine_je_.L_47e834(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e7b8, i8* %BRANCH_TAKEN, i64 124, i64 6, i64 6)
  store %struct.Memory* %call_47e7b8, %struct.Memory** %MEMORY

  %loadBr_47e7b8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e7b8 = icmp eq i8 %loadBr_47e7b8, 1
  br i1 %cmpBr_47e7b8, label %block_.L_47e834, label %block_47e7be

block_47e7be:
  ; Code: xorl %eax, %eax	 RIP: 47e7be	 Bytes: 2
  %loadMem_47e7be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e7be = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e7be)
  store %struct.Memory* %call_47e7be, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 47e7c0	 Bytes: 2
  %loadMem_47e7c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e7c0 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e7c0)
  store %struct.Memory* %call_47e7c0, %struct.Memory** %MEMORY

  ; Code: movl -0x2b4(%rbp), %edi	 RIP: 47e7c2	 Bytes: 6
  %loadMem_47e7c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e7c2 = call %struct.Memory* @routine_movl_MINUS0x2b4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e7c2)
  store %struct.Memory* %call_47e7c2, %struct.Memory** %MEMORY

  ; Code: movl -0x2b8(%rbp), %esi	 RIP: 47e7c8	 Bytes: 6
  %loadMem_47e7c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e7c8 = call %struct.Memory* @routine_movl_MINUS0x2b8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e7c8)
  store %struct.Memory* %call_47e7c8, %struct.Memory** %MEMORY

  ; Code: callq .disconnect	 RIP: 47e7ce	 Bytes: 5
  %loadMem1_47e7ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47e7ce = call %struct.Memory* @routine_callq_.disconnect(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47e7ce, i64 -134494, i64 5, i64 5)
  store %struct.Memory* %call1_47e7ce, %struct.Memory** %MEMORY

  %loadMem2_47e7ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47e7ce = load i64, i64* %3
  %call2_47e7ce = call %struct.Memory* @sub_45da70.disconnect(%struct.State* %0, i64  %loadPC_47e7ce, %struct.Memory* %loadMem2_47e7ce)
  store %struct.Memory* %call2_47e7ce, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47e7d3	 Bytes: 3
  %loadMem_47e7d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e7d3 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e7d3)
  store %struct.Memory* %call_47e7d3, %struct.Memory** %MEMORY

  ; Code: jne .L_47e834	 RIP: 47e7d6	 Bytes: 6
  %loadMem_47e7d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e7d6 = call %struct.Memory* @routine_jne_.L_47e834(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e7d6, i8* %BRANCH_TAKEN, i64 94, i64 6, i64 6)
  store %struct.Memory* %call_47e7d6, %struct.Memory** %MEMORY

  %loadBr_47e7d6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e7d6 = icmp eq i8 %loadBr_47e7d6, 1
  br i1 %cmpBr_47e7d6, label %block_.L_47e834, label %block_47e7dc

block_47e7dc:
  ; Code: movl 0xab0f24, %eax	 RIP: 47e7dc	 Bytes: 7
  %loadMem_47e7dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e7dc = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e7dc)
  store %struct.Memory* %call_47e7dc, %struct.Memory** %MEMORY

  ; Code: andl $0x800, %eax	 RIP: 47e7e3	 Bytes: 5
  %loadMem_47e7e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e7e3 = call %struct.Memory* @routine_andl__0x800___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e7e3)
  store %struct.Memory* %call_47e7e3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47e7e8	 Bytes: 3
  %loadMem_47e7e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e7e8 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e7e8)
  store %struct.Memory* %call_47e7e8, %struct.Memory** %MEMORY

  ; Code: jne .L_47e7f6	 RIP: 47e7eb	 Bytes: 6
  %loadMem_47e7eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e7eb = call %struct.Memory* @routine_jne_.L_47e7f6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e7eb, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47e7eb, %struct.Memory** %MEMORY

  %loadBr_47e7eb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e7eb = icmp eq i8 %loadBr_47e7eb, 1
  br i1 %cmpBr_47e7eb, label %block_.L_47e7f6, label %block_47e7f1

block_47e7f1:
  ; Code: jmpq .L_47e820	 RIP: 47e7f1	 Bytes: 5
  %loadMem_47e7f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e7f1 = call %struct.Memory* @routine_jmpq_.L_47e820(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e7f1, i64 47, i64 5)
  store %struct.Memory* %call_47e7f1, %struct.Memory** %MEMORY

  br label %block_.L_47e820

  ; Code: .L_47e7f6:	 RIP: 47e7f6	 Bytes: 0
block_.L_47e7f6:

  ; Code: movq $0x582c08, %rdi	 RIP: 47e7f6	 Bytes: 10
  %loadMem_47e7f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e7f6 = call %struct.Memory* @routine_movq__0x582c08___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e7f6)
  store %struct.Memory* %call_47e7f6, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 47e800	 Bytes: 3
  %loadMem_47e800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e800 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e800)
  store %struct.Memory* %call_47e800, %struct.Memory** %MEMORY

  ; Code: movl -0x2b4(%rbp), %edx	 RIP: 47e803	 Bytes: 6
  %loadMem_47e803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e803 = call %struct.Memory* @routine_movl_MINUS0x2b4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e803)
  store %struct.Memory* %call_47e803, %struct.Memory** %MEMORY

  ; Code: movl -0x2b8(%rbp), %ecx	 RIP: 47e809	 Bytes: 6
  %loadMem_47e809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e809 = call %struct.Memory* @routine_movl_MINUS0x2b8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e809)
  store %struct.Memory* %call_47e809, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %r8d	 RIP: 47e80f	 Bytes: 4
  %loadMem_47e80f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e80f = call %struct.Memory* @routine_movl_MINUS0x18__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e80f)
  store %struct.Memory* %call_47e80f, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 47e813	 Bytes: 2
  %loadMem_47e813 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e813 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e813)
  store %struct.Memory* %call_47e813, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 47e815	 Bytes: 5
  %loadMem1_47e815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47e815 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47e815, i64 -182885, i64 5, i64 5)
  store %struct.Memory* %call1_47e815, %struct.Memory** %MEMORY

  %loadMem2_47e815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47e815 = load i64, i64* %3
  %call2_47e815 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_47e815, %struct.Memory* %loadMem2_47e815)
  store %struct.Memory* %call2_47e815, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2d0(%rbp)	 RIP: 47e81a	 Bytes: 6
  %loadMem_47e81a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e81a = call %struct.Memory* @routine_movl__eax__MINUS0x2d0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e81a)
  store %struct.Memory* %call_47e81a, %struct.Memory** %MEMORY

  ; Code: .L_47e820:	 RIP: 47e820	 Bytes: 0
  br label %block_.L_47e820
block_.L_47e820:

  ; Code: movl -0x8(%rbp), %edi	 RIP: 47e820	 Bytes: 3
  %loadMem_47e820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e820 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e820)
  store %struct.Memory* %call_47e820, %struct.Memory** %MEMORY

  ; Code: movl -0x2b4(%rbp), %esi	 RIP: 47e823	 Bytes: 6
  %loadMem_47e823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e823 = call %struct.Memory* @routine_movl_MINUS0x2b4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e823)
  store %struct.Memory* %call_47e823, %struct.Memory** %MEMORY

  ; Code: movl -0x2b8(%rbp), %edx	 RIP: 47e829	 Bytes: 6
  %loadMem_47e829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e829 = call %struct.Memory* @routine_movl_MINUS0x2b8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e829)
  store %struct.Memory* %call_47e829, %struct.Memory** %MEMORY

  ; Code: callq .add_connection_move	 RIP: 47e82f	 Bytes: 5
  %loadMem1_47e82f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47e82f = call %struct.Memory* @routine_callq_.add_connection_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47e82f, i64 -309983, i64 5, i64 5)
  store %struct.Memory* %call1_47e82f, %struct.Memory** %MEMORY

  %loadMem2_47e82f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47e82f = load i64, i64* %3
  %call2_47e82f = call %struct.Memory* @sub_432d50.add_connection_move(%struct.State* %0, i64  %loadPC_47e82f, %struct.Memory* %loadMem2_47e82f)
  store %struct.Memory* %call2_47e82f, %struct.Memory** %MEMORY

  ; Code: .L_47e834:	 RIP: 47e834	 Bytes: 0
  br label %block_.L_47e834
block_.L_47e834:

  ; Code: cmpl $0x0, -0x20(%rbp)	 RIP: 47e834	 Bytes: 4
  %loadMem_47e834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e834 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e834)
  store %struct.Memory* %call_47e834, %struct.Memory** %MEMORY

  ; Code: jne .L_47e8d7	 RIP: 47e838	 Bytes: 6
  %loadMem_47e838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e838 = call %struct.Memory* @routine_jne_.L_47e8d7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e838, i8* %BRANCH_TAKEN, i64 159, i64 6, i64 6)
  store %struct.Memory* %call_47e838, %struct.Memory** %MEMORY

  %loadBr_47e838 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e838 = icmp eq i8 %loadBr_47e838, 1
  br i1 %cmpBr_47e838, label %block_.L_47e8d7, label %block_47e83e

block_47e83e:
  ; Code: movslq -0x2b4(%rbp), %rax	 RIP: 47e83e	 Bytes: 7
  %loadMem_47e83e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e83e = call %struct.Memory* @routine_movslq_MINUS0x2b4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e83e)
  store %struct.Memory* %call_47e83e, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 47e845	 Bytes: 8
  %loadMem_47e845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e845 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e845)
  store %struct.Memory* %call_47e845, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 47e84d	 Bytes: 4
  %loadMem_47e84d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e84d = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e84d)
  store %struct.Memory* %call_47e84d, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %edx	 RIP: 47e851	 Bytes: 8
  %loadMem_47e851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e851 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e851)
  store %struct.Memory* %call_47e851, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 47e859	 Bytes: 2
  %loadMem_47e859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e859 = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e859)
  store %struct.Memory* %call_47e859, %struct.Memory** %MEMORY

  ; Code: je .L_47e8d7	 RIP: 47e85b	 Bytes: 6
  %loadMem_47e85b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e85b = call %struct.Memory* @routine_je_.L_47e8d7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e85b, i8* %BRANCH_TAKEN, i64 124, i64 6, i64 6)
  store %struct.Memory* %call_47e85b, %struct.Memory** %MEMORY

  %loadBr_47e85b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e85b = icmp eq i8 %loadBr_47e85b, 1
  br i1 %cmpBr_47e85b, label %block_.L_47e8d7, label %block_47e861

block_47e861:
  ; Code: xorl %eax, %eax	 RIP: 47e861	 Bytes: 2
  %loadMem_47e861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e861 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e861)
  store %struct.Memory* %call_47e861, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 47e863	 Bytes: 2
  %loadMem_47e863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e863 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e863)
  store %struct.Memory* %call_47e863, %struct.Memory** %MEMORY

  ; Code: movl -0x2b4(%rbp), %edi	 RIP: 47e865	 Bytes: 6
  %loadMem_47e865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e865 = call %struct.Memory* @routine_movl_MINUS0x2b4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e865)
  store %struct.Memory* %call_47e865, %struct.Memory** %MEMORY

  ; Code: movl -0x2b8(%rbp), %esi	 RIP: 47e86b	 Bytes: 6
  %loadMem_47e86b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e86b = call %struct.Memory* @routine_movl_MINUS0x2b8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e86b)
  store %struct.Memory* %call_47e86b, %struct.Memory** %MEMORY

  ; Code: callq .string_connect	 RIP: 47e871	 Bytes: 5
  %loadMem1_47e871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47e871 = call %struct.Memory* @routine_callq_.string_connect(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47e871, i64 -180001, i64 5, i64 5)
  store %struct.Memory* %call1_47e871, %struct.Memory** %MEMORY

  %loadMem2_47e871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47e871 = load i64, i64* %3
  %call2_47e871 = call %struct.Memory* @sub_452950.string_connect(%struct.State* %0, i64  %loadPC_47e871, %struct.Memory* %loadMem2_47e871)
  store %struct.Memory* %call2_47e871, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47e876	 Bytes: 3
  %loadMem_47e876 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e876 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e876)
  store %struct.Memory* %call_47e876, %struct.Memory** %MEMORY

  ; Code: jne .L_47e8d7	 RIP: 47e879	 Bytes: 6
  %loadMem_47e879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e879 = call %struct.Memory* @routine_jne_.L_47e8d7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e879, i8* %BRANCH_TAKEN, i64 94, i64 6, i64 6)
  store %struct.Memory* %call_47e879, %struct.Memory** %MEMORY

  %loadBr_47e879 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e879 = icmp eq i8 %loadBr_47e879, 1
  br i1 %cmpBr_47e879, label %block_.L_47e8d7, label %block_47e87f

block_47e87f:
  ; Code: movl 0xab0f24, %eax	 RIP: 47e87f	 Bytes: 7
  %loadMem_47e87f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e87f = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e87f)
  store %struct.Memory* %call_47e87f, %struct.Memory** %MEMORY

  ; Code: andl $0x800, %eax	 RIP: 47e886	 Bytes: 5
  %loadMem_47e886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e886 = call %struct.Memory* @routine_andl__0x800___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e886)
  store %struct.Memory* %call_47e886, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47e88b	 Bytes: 3
  %loadMem_47e88b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e88b = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e88b)
  store %struct.Memory* %call_47e88b, %struct.Memory** %MEMORY

  ; Code: jne .L_47e899	 RIP: 47e88e	 Bytes: 6
  %loadMem_47e88e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e88e = call %struct.Memory* @routine_jne_.L_47e899(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e88e, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47e88e, %struct.Memory** %MEMORY

  %loadBr_47e88e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e88e = icmp eq i8 %loadBr_47e88e, 1
  br i1 %cmpBr_47e88e, label %block_.L_47e899, label %block_47e894

block_47e894:
  ; Code: jmpq .L_47e8c3	 RIP: 47e894	 Bytes: 5
  %loadMem_47e894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e894 = call %struct.Memory* @routine_jmpq_.L_47e8c3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e894, i64 47, i64 5)
  store %struct.Memory* %call_47e894, %struct.Memory** %MEMORY

  br label %block_.L_47e8c3

  ; Code: .L_47e899:	 RIP: 47e899	 Bytes: 0
block_.L_47e899:

  ; Code: movq $0x582c49, %rdi	 RIP: 47e899	 Bytes: 10
  %loadMem_47e899 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e899 = call %struct.Memory* @routine_movq__0x582c49___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e899)
  store %struct.Memory* %call_47e899, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 47e8a3	 Bytes: 3
  %loadMem_47e8a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e8a3 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e8a3)
  store %struct.Memory* %call_47e8a3, %struct.Memory** %MEMORY

  ; Code: movl -0x2b4(%rbp), %edx	 RIP: 47e8a6	 Bytes: 6
  %loadMem_47e8a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e8a6 = call %struct.Memory* @routine_movl_MINUS0x2b4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e8a6)
  store %struct.Memory* %call_47e8a6, %struct.Memory** %MEMORY

  ; Code: movl -0x2b8(%rbp), %ecx	 RIP: 47e8ac	 Bytes: 6
  %loadMem_47e8ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e8ac = call %struct.Memory* @routine_movl_MINUS0x2b8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e8ac)
  store %struct.Memory* %call_47e8ac, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %r8d	 RIP: 47e8b2	 Bytes: 4
  %loadMem_47e8b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e8b2 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e8b2)
  store %struct.Memory* %call_47e8b2, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 47e8b6	 Bytes: 2
  %loadMem_47e8b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e8b6 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e8b6)
  store %struct.Memory* %call_47e8b6, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 47e8b8	 Bytes: 5
  %loadMem1_47e8b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47e8b8 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47e8b8, i64 -183048, i64 5, i64 5)
  store %struct.Memory* %call1_47e8b8, %struct.Memory** %MEMORY

  %loadMem2_47e8b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47e8b8 = load i64, i64* %3
  %call2_47e8b8 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_47e8b8, %struct.Memory* %loadMem2_47e8b8)
  store %struct.Memory* %call2_47e8b8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2d4(%rbp)	 RIP: 47e8bd	 Bytes: 6
  %loadMem_47e8bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e8bd = call %struct.Memory* @routine_movl__eax__MINUS0x2d4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e8bd)
  store %struct.Memory* %call_47e8bd, %struct.Memory** %MEMORY

  ; Code: .L_47e8c3:	 RIP: 47e8c3	 Bytes: 0
  br label %block_.L_47e8c3
block_.L_47e8c3:

  ; Code: movl -0x8(%rbp), %edi	 RIP: 47e8c3	 Bytes: 3
  %loadMem_47e8c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e8c3 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e8c3)
  store %struct.Memory* %call_47e8c3, %struct.Memory** %MEMORY

  ; Code: movl -0x2b4(%rbp), %esi	 RIP: 47e8c6	 Bytes: 6
  %loadMem_47e8c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e8c6 = call %struct.Memory* @routine_movl_MINUS0x2b4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e8c6)
  store %struct.Memory* %call_47e8c6, %struct.Memory** %MEMORY

  ; Code: movl -0x2b8(%rbp), %edx	 RIP: 47e8cc	 Bytes: 6
  %loadMem_47e8cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e8cc = call %struct.Memory* @routine_movl_MINUS0x2b8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e8cc)
  store %struct.Memory* %call_47e8cc, %struct.Memory** %MEMORY

  ; Code: callq .add_cut_move	 RIP: 47e8d2	 Bytes: 5
  %loadMem1_47e8d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47e8d2 = call %struct.Memory* @routine_callq_.add_cut_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47e8d2, i64 -309346, i64 5, i64 5)
  store %struct.Memory* %call1_47e8d2, %struct.Memory** %MEMORY

  %loadMem2_47e8d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47e8d2 = load i64, i64* %3
  %call2_47e8d2 = call %struct.Memory* @sub_433070.add_cut_move(%struct.State* %0, i64  %loadPC_47e8d2, %struct.Memory* %loadMem2_47e8d2)
  store %struct.Memory* %call2_47e8d2, %struct.Memory** %MEMORY

  ; Code: .L_47e8d7:	 RIP: 47e8d7	 Bytes: 0
  br label %block_.L_47e8d7
block_.L_47e8d7:

  ; Code: cmpl $0x0, -0x20(%rbp)	 RIP: 47e8d7	 Bytes: 4
  %loadMem_47e8d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e8d7 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e8d7)
  store %struct.Memory* %call_47e8d7, %struct.Memory** %MEMORY

  ; Code: jne .L_47e97a	 RIP: 47e8db	 Bytes: 6
  %loadMem_47e8db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e8db = call %struct.Memory* @routine_jne_.L_47e97a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e8db, i8* %BRANCH_TAKEN, i64 159, i64 6, i64 6)
  store %struct.Memory* %call_47e8db, %struct.Memory** %MEMORY

  %loadBr_47e8db = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e8db = icmp eq i8 %loadBr_47e8db, 1
  br i1 %cmpBr_47e8db, label %block_.L_47e97a, label %block_47e8e1

block_47e8e1:
  ; Code: movslq -0x2b4(%rbp), %rax	 RIP: 47e8e1	 Bytes: 7
  %loadMem_47e8e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e8e1 = call %struct.Memory* @routine_movslq_MINUS0x2b4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e8e1)
  store %struct.Memory* %call_47e8e1, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 47e8e8	 Bytes: 8
  %loadMem_47e8e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e8e8 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e8e8)
  store %struct.Memory* %call_47e8e8, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 47e8f0	 Bytes: 4
  %loadMem_47e8f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e8f0 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e8f0)
  store %struct.Memory* %call_47e8f0, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %edx	 RIP: 47e8f4	 Bytes: 8
  %loadMem_47e8f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e8f4 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e8f4)
  store %struct.Memory* %call_47e8f4, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %ecx	 RIP: 47e8fc	 Bytes: 2
  %loadMem_47e8fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e8fc = call %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e8fc)
  store %struct.Memory* %call_47e8fc, %struct.Memory** %MEMORY

  ; Code: jne .L_47e97a	 RIP: 47e8fe	 Bytes: 6
  %loadMem_47e8fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e8fe = call %struct.Memory* @routine_jne_.L_47e97a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e8fe, i8* %BRANCH_TAKEN, i64 124, i64 6, i64 6)
  store %struct.Memory* %call_47e8fe, %struct.Memory** %MEMORY

  %loadBr_47e8fe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e8fe = icmp eq i8 %loadBr_47e8fe, 1
  br i1 %cmpBr_47e8fe, label %block_.L_47e97a, label %block_47e904

block_47e904:
  ; Code: xorl %eax, %eax	 RIP: 47e904	 Bytes: 2
  %loadMem_47e904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e904 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e904)
  store %struct.Memory* %call_47e904, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 47e906	 Bytes: 2
  %loadMem_47e906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e906 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e906)
  store %struct.Memory* %call_47e906, %struct.Memory** %MEMORY

  ; Code: movl -0x2b4(%rbp), %edi	 RIP: 47e908	 Bytes: 6
  %loadMem_47e908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e908 = call %struct.Memory* @routine_movl_MINUS0x2b4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e908)
  store %struct.Memory* %call_47e908, %struct.Memory** %MEMORY

  ; Code: movl -0x2b8(%rbp), %esi	 RIP: 47e90e	 Bytes: 6
  %loadMem_47e90e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e90e = call %struct.Memory* @routine_movl_MINUS0x2b8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e90e)
  store %struct.Memory* %call_47e90e, %struct.Memory** %MEMORY

  ; Code: callq .disconnect	 RIP: 47e914	 Bytes: 5
  %loadMem1_47e914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47e914 = call %struct.Memory* @routine_callq_.disconnect(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47e914, i64 -134820, i64 5, i64 5)
  store %struct.Memory* %call1_47e914, %struct.Memory** %MEMORY

  %loadMem2_47e914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47e914 = load i64, i64* %3
  %call2_47e914 = call %struct.Memory* @sub_45da70.disconnect(%struct.State* %0, i64  %loadPC_47e914, %struct.Memory* %loadMem2_47e914)
  store %struct.Memory* %call2_47e914, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47e919	 Bytes: 3
  %loadMem_47e919 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e919 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e919)
  store %struct.Memory* %call_47e919, %struct.Memory** %MEMORY

  ; Code: jne .L_47e97a	 RIP: 47e91c	 Bytes: 6
  %loadMem_47e91c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e91c = call %struct.Memory* @routine_jne_.L_47e97a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e91c, i8* %BRANCH_TAKEN, i64 94, i64 6, i64 6)
  store %struct.Memory* %call_47e91c, %struct.Memory** %MEMORY

  %loadBr_47e91c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e91c = icmp eq i8 %loadBr_47e91c, 1
  br i1 %cmpBr_47e91c, label %block_.L_47e97a, label %block_47e922

block_47e922:
  ; Code: movl 0xab0f24, %eax	 RIP: 47e922	 Bytes: 7
  %loadMem_47e922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e922 = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e922)
  store %struct.Memory* %call_47e922, %struct.Memory** %MEMORY

  ; Code: andl $0x800, %eax	 RIP: 47e929	 Bytes: 5
  %loadMem_47e929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e929 = call %struct.Memory* @routine_andl__0x800___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e929)
  store %struct.Memory* %call_47e929, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47e92e	 Bytes: 3
  %loadMem_47e92e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e92e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e92e)
  store %struct.Memory* %call_47e92e, %struct.Memory** %MEMORY

  ; Code: jne .L_47e93c	 RIP: 47e931	 Bytes: 6
  %loadMem_47e931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e931 = call %struct.Memory* @routine_jne_.L_47e93c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e931, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47e931, %struct.Memory** %MEMORY

  %loadBr_47e931 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e931 = icmp eq i8 %loadBr_47e931, 1
  br i1 %cmpBr_47e931, label %block_.L_47e93c, label %block_47e937

block_47e937:
  ; Code: jmpq .L_47e966	 RIP: 47e937	 Bytes: 5
  %loadMem_47e937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e937 = call %struct.Memory* @routine_jmpq_.L_47e966(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e937, i64 47, i64 5)
  store %struct.Memory* %call_47e937, %struct.Memory** %MEMORY

  br label %block_.L_47e966

  ; Code: .L_47e93c:	 RIP: 47e93c	 Bytes: 0
block_.L_47e93c:

  ; Code: movq $0x582c84, %rdi	 RIP: 47e93c	 Bytes: 10
  %loadMem_47e93c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e93c = call %struct.Memory* @routine_movq__0x582c84___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e93c)
  store %struct.Memory* %call_47e93c, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 47e946	 Bytes: 3
  %loadMem_47e946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e946 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e946)
  store %struct.Memory* %call_47e946, %struct.Memory** %MEMORY

  ; Code: movl -0x2b4(%rbp), %edx	 RIP: 47e949	 Bytes: 6
  %loadMem_47e949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e949 = call %struct.Memory* @routine_movl_MINUS0x2b4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e949)
  store %struct.Memory* %call_47e949, %struct.Memory** %MEMORY

  ; Code: movl -0x2b8(%rbp), %ecx	 RIP: 47e94f	 Bytes: 6
  %loadMem_47e94f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e94f = call %struct.Memory* @routine_movl_MINUS0x2b8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e94f)
  store %struct.Memory* %call_47e94f, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %r8d	 RIP: 47e955	 Bytes: 4
  %loadMem_47e955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e955 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e955)
  store %struct.Memory* %call_47e955, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 47e959	 Bytes: 2
  %loadMem_47e959 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e959 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e959)
  store %struct.Memory* %call_47e959, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 47e95b	 Bytes: 5
  %loadMem1_47e95b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47e95b = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47e95b, i64 -183211, i64 5, i64 5)
  store %struct.Memory* %call1_47e95b, %struct.Memory** %MEMORY

  %loadMem2_47e95b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47e95b = load i64, i64* %3
  %call2_47e95b = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_47e95b, %struct.Memory* %loadMem2_47e95b)
  store %struct.Memory* %call2_47e95b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2d8(%rbp)	 RIP: 47e960	 Bytes: 6
  %loadMem_47e960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e960 = call %struct.Memory* @routine_movl__eax__MINUS0x2d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e960)
  store %struct.Memory* %call_47e960, %struct.Memory** %MEMORY

  ; Code: .L_47e966:	 RIP: 47e966	 Bytes: 0
  br label %block_.L_47e966
block_.L_47e966:

  ; Code: movl -0x8(%rbp), %edi	 RIP: 47e966	 Bytes: 3
  %loadMem_47e966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e966 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e966)
  store %struct.Memory* %call_47e966, %struct.Memory** %MEMORY

  ; Code: movl -0x2b4(%rbp), %esi	 RIP: 47e969	 Bytes: 6
  %loadMem_47e969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e969 = call %struct.Memory* @routine_movl_MINUS0x2b4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e969)
  store %struct.Memory* %call_47e969, %struct.Memory** %MEMORY

  ; Code: movl -0x2b8(%rbp), %edx	 RIP: 47e96f	 Bytes: 6
  %loadMem_47e96f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e96f = call %struct.Memory* @routine_movl_MINUS0x2b8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e96f)
  store %struct.Memory* %call_47e96f, %struct.Memory** %MEMORY

  ; Code: callq .add_connection_move	 RIP: 47e975	 Bytes: 5
  %loadMem1_47e975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47e975 = call %struct.Memory* @routine_callq_.add_connection_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47e975, i64 -310309, i64 5, i64 5)
  store %struct.Memory* %call1_47e975, %struct.Memory** %MEMORY

  %loadMem2_47e975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47e975 = load i64, i64* %3
  %call2_47e975 = call %struct.Memory* @sub_432d50.add_connection_move(%struct.State* %0, i64  %loadPC_47e975, %struct.Memory* %loadMem2_47e975)
  store %struct.Memory* %call2_47e975, %struct.Memory** %MEMORY

  ; Code: .L_47e97a:	 RIP: 47e97a	 Bytes: 0
  br label %block_.L_47e97a
block_.L_47e97a:

  ; Code: callq .popgo	 RIP: 47e97a	 Bytes: 5
  %loadMem1_47e97a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47e97a = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47e97a, i64 -461850, i64 5, i64 5)
  store %struct.Memory* %call1_47e97a, %struct.Memory** %MEMORY

  %loadMem2_47e97a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47e97a = load i64, i64* %3
  %call2_47e97a = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_47e97a, %struct.Memory* %loadMem2_47e97a)
  store %struct.Memory* %call2_47e97a, %struct.Memory** %MEMORY

  ; Code: .L_47e97f:	 RIP: 47e97f	 Bytes: 0
  br label %block_.L_47e97f
block_.L_47e97f:

  ; Code: jmpq .L_47e984	 RIP: 47e97f	 Bytes: 5
  %loadMem_47e97f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e97f = call %struct.Memory* @routine_jmpq_.L_47e984(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e97f, i64 5, i64 5)
  store %struct.Memory* %call_47e97f, %struct.Memory** %MEMORY

  br label %block_.L_47e984

  ; Code: .L_47e984:	 RIP: 47e984	 Bytes: 0
block_.L_47e984:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 47e984	 Bytes: 3
  %loadMem_47e984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e984 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e984)
  store %struct.Memory* %call_47e984, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47e987	 Bytes: 3
  %loadMem_47e987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e987 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e987)
  store %struct.Memory* %call_47e987, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 47e98a	 Bytes: 3
  %loadMem_47e98a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e98a = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e98a)
  store %struct.Memory* %call_47e98a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47e5ed	 RIP: 47e98d	 Bytes: 5
  %loadMem_47e98d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e98d = call %struct.Memory* @routine_jmpq_.L_47e5ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e98d, i64 -928, i64 5)
  store %struct.Memory* %call_47e98d, %struct.Memory** %MEMORY

  br label %block_.L_47e5ed

  ; Code: .L_47e992:	 RIP: 47e992	 Bytes: 0
block_.L_47e992:

  ; Code: jmpq .L_47e997	 RIP: 47e992	 Bytes: 5
  %loadMem_47e992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e992 = call %struct.Memory* @routine_jmpq_.L_47e997(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e992, i64 5, i64 5)
  store %struct.Memory* %call_47e992, %struct.Memory** %MEMORY

  br label %block_.L_47e997

  ; Code: .L_47e997:	 RIP: 47e997	 Bytes: 0
block_.L_47e997:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 47e997	 Bytes: 3
  %loadMem_47e997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e997 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e997)
  store %struct.Memory* %call_47e997, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47e99a	 Bytes: 3
  %loadMem_47e99a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e99a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e99a)
  store %struct.Memory* %call_47e99a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 47e99d	 Bytes: 3
  %loadMem_47e99d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e99d = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e99d)
  store %struct.Memory* %call_47e99d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47e5d8	 RIP: 47e9a0	 Bytes: 5
  %loadMem_47e9a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e9a0 = call %struct.Memory* @routine_jmpq_.L_47e5d8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e9a0, i64 -968, i64 5)
  store %struct.Memory* %call_47e9a0, %struct.Memory** %MEMORY

  br label %block_.L_47e5d8

  ; Code: .L_47e9a5:	 RIP: 47e9a5	 Bytes: 0
block_.L_47e9a5:

  ; Code: jmpq .L_47ed34	 RIP: 47e9a5	 Bytes: 5
  %loadMem_47e9a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e9a5 = call %struct.Memory* @routine_jmpq_.L_47ed34(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e9a5, i64 911, i64 5)
  store %struct.Memory* %call_47e9a5, %struct.Memory** %MEMORY

  br label %block_.L_47ed34

  ; Code: .L_47e9aa:	 RIP: 47e9aa	 Bytes: 0
block_.L_47e9aa:

  ; Code: movq $0xafdfc0, %rax	 RIP: 47e9aa	 Bytes: 10
  %loadMem_47e9aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e9aa = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e9aa)
  store %struct.Memory* %call_47e9aa, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 47e9b4	 Bytes: 4
  %loadMem_47e9b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e9b4 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e9b4)
  store %struct.Memory* %call_47e9b4, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47e9b8	 Bytes: 4
  %loadMem_47e9b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e9b8 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e9b8)
  store %struct.Memory* %call_47e9b8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47e9bc	 Bytes: 3
  %loadMem_47e9bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e9bc = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e9bc)
  store %struct.Memory* %call_47e9bc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1a, (%rax)	 RIP: 47e9bf	 Bytes: 3
  %loadMem_47e9bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e9bf = call %struct.Memory* @routine_cmpl__0x1a____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e9bf)
  store %struct.Memory* %call_47e9bf, %struct.Memory** %MEMORY

  ; Code: jne .L_47ead1	 RIP: 47e9c2	 Bytes: 6
  %loadMem_47e9c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e9c2 = call %struct.Memory* @routine_jne_.L_47ead1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e9c2, i8* %BRANCH_TAKEN, i64 271, i64 6, i64 6)
  store %struct.Memory* %call_47e9c2, %struct.Memory** %MEMORY

  %loadBr_47e9c2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47e9c2 = icmp eq i8 %loadBr_47e9c2, 1
  br i1 %cmpBr_47e9c2, label %block_.L_47ead1, label %block_47e9c8

block_47e9c8:
  ; Code: movq $0xafdfc0, %rax	 RIP: 47e9c8	 Bytes: 10
  %loadMem_47e9c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e9c8 = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e9c8)
  store %struct.Memory* %call_47e9c8, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 47e9d2	 Bytes: 4
  %loadMem_47e9d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e9d2 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e9d2)
  store %struct.Memory* %call_47e9d2, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47e9d6	 Bytes: 4
  %loadMem_47e9d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e9d6 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e9d6)
  store %struct.Memory* %call_47e9d6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47e9da	 Bytes: 3
  %loadMem_47e9da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e9da = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e9da)
  store %struct.Memory* %call_47e9da, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 47e9dd	 Bytes: 3
  %loadMem_47e9dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e9dd = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e9dd)
  store %struct.Memory* %call_47e9dd, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x18(%rbp)	 RIP: 47e9e0	 Bytes: 3
  %loadMem_47e9e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e9e0 = call %struct.Memory* @routine_movl__edx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e9e0)
  store %struct.Memory* %call_47e9e0, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 47e9e3	 Bytes: 7
  %loadMem_47e9e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e9e3 = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e9e3)
  store %struct.Memory* %call_47e9e3, %struct.Memory** %MEMORY

  ; Code: .L_47e9ea:	 RIP: 47e9ea	 Bytes: 0
  br label %block_.L_47e9ea
block_.L_47e9ea:

  ; Code: movq $0xb4bd20, %rax	 RIP: 47e9ea	 Bytes: 10
  %loadMem_47e9ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e9ea = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e9ea)
  store %struct.Memory* %call_47e9ea, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %ecx	 RIP: 47e9f4	 Bytes: 3
  %loadMem_47e9f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e9f4 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e9f4)
  store %struct.Memory* %call_47e9f4, %struct.Memory** %MEMORY

  ; Code: movq 0xab0fe0, %rdx	 RIP: 47e9f7	 Bytes: 8
  %loadMem_47e9f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e9f7 = call %struct.Memory* @routine_movq_0xab0fe0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e9f7)
  store %struct.Memory* %call_47e9f7, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rsi	 RIP: 47e9ff	 Bytes: 4
  %loadMem_47e9ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47e9ff = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47e9ff)
  store %struct.Memory* %call_47e9ff, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rsi, %rsi	 RIP: 47ea03	 Bytes: 4
  %loadMem_47ea03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ea03 = call %struct.Memory* @routine_imulq__0x4c___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ea03)
  store %struct.Memory* %call_47ea03, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rax	 RIP: 47ea07	 Bytes: 3
  %loadMem_47ea07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ea07 = call %struct.Memory* @routine_addq__rsi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ea07)
  store %struct.Memory* %call_47ea07, %struct.Memory** %MEMORY

  ; Code: movslq 0x4(%rax), %rax	 RIP: 47ea0a	 Bytes: 4
  %loadMem_47ea0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ea0a = call %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ea0a)
  store %struct.Memory* %call_47ea0a, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, %rax, %rax	 RIP: 47ea0e	 Bytes: 4
  %loadMem_47ea0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ea0e = call %struct.Memory* @routine_imulq__0x68___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ea0e)
  store %struct.Memory* %call_47ea0e, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rdx	 RIP: 47ea12	 Bytes: 3
  %loadMem_47ea12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ea12 = call %struct.Memory* @routine_addq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ea12)
  store %struct.Memory* %call_47ea12, %struct.Memory** %MEMORY

  ; Code: cmpl 0x2c(%rdx), %ecx	 RIP: 47ea15	 Bytes: 3
  %loadMem_47ea15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ea15 = call %struct.Memory* @routine_cmpl_0x2c__rdx____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ea15)
  store %struct.Memory* %call_47ea15, %struct.Memory** %MEMORY

  ; Code: jge .L_47eacc	 RIP: 47ea18	 Bytes: 6
  %loadMem_47ea18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ea18 = call %struct.Memory* @routine_jge_.L_47eacc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ea18, i8* %BRANCH_TAKEN, i64 180, i64 6, i64 6)
  store %struct.Memory* %call_47ea18, %struct.Memory** %MEMORY

  %loadBr_47ea18 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ea18 = icmp eq i8 %loadBr_47ea18, 1
  br i1 %cmpBr_47ea18, label %block_.L_47eacc, label %block_47ea1e

block_47ea1e:
  ; Code: movq $0xb4bd20, %rax	 RIP: 47ea1e	 Bytes: 10
  %loadMem_47ea1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ea1e = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ea1e)
  store %struct.Memory* %call_47ea1e, %struct.Memory** %MEMORY

  ; Code: movq 0xab0fe0, %rcx	 RIP: 47ea28	 Bytes: 8
  %loadMem_47ea28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ea28 = call %struct.Memory* @routine_movq_0xab0fe0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ea28)
  store %struct.Memory* %call_47ea28, %struct.Memory** %MEMORY

  ; Code: movq 0xab0fe0, %rdx	 RIP: 47ea30	 Bytes: 8
  %loadMem_47ea30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ea30 = call %struct.Memory* @routine_movq_0xab0fe0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ea30)
  store %struct.Memory* %call_47ea30, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rsi	 RIP: 47ea38	 Bytes: 4
  %loadMem_47ea38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ea38 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ea38)
  store %struct.Memory* %call_47ea38, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rsi, %rsi	 RIP: 47ea3c	 Bytes: 4
  %loadMem_47ea3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ea3c = call %struct.Memory* @routine_imulq__0x4c___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ea3c)
  store %struct.Memory* %call_47ea3c, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 47ea40	 Bytes: 3
  %loadMem_47ea40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ea40 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ea40)
  store %struct.Memory* %call_47ea40, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 47ea43	 Bytes: 3
  %loadMem_47ea43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ea43 = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ea43)
  store %struct.Memory* %call_47ea43, %struct.Memory** %MEMORY

  ; Code: movslq 0x4(%rdi), %rsi	 RIP: 47ea46	 Bytes: 4
  %loadMem_47ea46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ea46 = call %struct.Memory* @routine_movslq_0x4__rdi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ea46)
  store %struct.Memory* %call_47ea46, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, %rsi, %rsi	 RIP: 47ea4a	 Bytes: 4
  %loadMem_47ea4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ea4a = call %struct.Memory* @routine_imulq__0x68___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ea4a)
  store %struct.Memory* %call_47ea4a, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 47ea4e	 Bytes: 3
  %loadMem_47ea4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ea4e = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ea4e)
  store %struct.Memory* %call_47ea4e, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rsi	 RIP: 47ea51	 Bytes: 4
  %loadMem_47ea51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ea51 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ea51)
  store %struct.Memory* %call_47ea51, %struct.Memory** %MEMORY

  ; Code: movslq 0x4(%rdx,%rsi,4), %rdx	 RIP: 47ea55	 Bytes: 5
  %loadMem_47ea55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ea55 = call %struct.Memory* @routine_movslq_0x4__rdx__rsi_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ea55)
  store %struct.Memory* %call_47ea55, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, %rdx, %rdx	 RIP: 47ea5a	 Bytes: 4
  %loadMem_47ea5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ea5a = call %struct.Memory* @routine_imulq__0x68___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ea5a)
  store %struct.Memory* %call_47ea5a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 47ea5e	 Bytes: 3
  %loadMem_47ea5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ea5e = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ea5e)
  store %struct.Memory* %call_47ea5e, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %r8d	 RIP: 47ea61	 Bytes: 3
  %loadMem_47ea61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ea61 = call %struct.Memory* @routine_movl___rcx____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ea61)
  store %struct.Memory* %call_47ea61, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x2bc(%rbp)	 RIP: 47ea64	 Bytes: 7
  %loadMem_47ea64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ea64 = call %struct.Memory* @routine_movl__r8d__MINUS0x2bc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ea64)
  store %struct.Memory* %call_47ea64, %struct.Memory** %MEMORY

  ; Code: movslq -0x2bc(%rbp), %rcx	 RIP: 47ea6b	 Bytes: 7
  %loadMem_47ea6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ea6b = call %struct.Memory* @routine_movslq_MINUS0x2bc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ea6b)
  store %struct.Memory* %call_47ea6b, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 47ea72	 Bytes: 4
  %loadMem_47ea72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ea72 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ea72)
  store %struct.Memory* %call_47ea72, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47ea76	 Bytes: 3
  %loadMem_47ea76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ea76 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ea76)
  store %struct.Memory* %call_47ea76, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %r8d	 RIP: 47ea79	 Bytes: 3
  %loadMem_47ea79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ea79 = call %struct.Memory* @routine_movl___rax____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ea79)
  store %struct.Memory* %call_47ea79, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %r8d	 RIP: 47ea7c	 Bytes: 4
  %loadMem_47ea7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ea7c = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ea7c)
  store %struct.Memory* %call_47ea7c, %struct.Memory** %MEMORY

  ; Code: jne .L_47eab9	 RIP: 47ea80	 Bytes: 6
  %loadMem_47ea80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ea80 = call %struct.Memory* @routine_jne_.L_47eab9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ea80, i8* %BRANCH_TAKEN, i64 57, i64 6, i64 6)
  store %struct.Memory* %call_47ea80, %struct.Memory** %MEMORY

  %loadBr_47ea80 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ea80 = icmp eq i8 %loadBr_47ea80, 1
  br i1 %cmpBr_47ea80, label %block_.L_47eab9, label %block_47ea86

block_47ea86:
  ; Code: movq $0xb0eff0, %rax	 RIP: 47ea86	 Bytes: 10
  %loadMem_47ea86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ea86 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ea86)
  store %struct.Memory* %call_47ea86, %struct.Memory** %MEMORY

  ; Code: movslq -0x2bc(%rbp), %rcx	 RIP: 47ea90	 Bytes: 7
  %loadMem_47ea90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ea90 = call %struct.Memory* @routine_movslq_MINUS0x2bc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ea90)
  store %struct.Memory* %call_47ea90, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 47ea97	 Bytes: 7
  %loadMem_47ea97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ea97 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ea97)
  store %struct.Memory* %call_47ea97, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47ea9e	 Bytes: 3
  %loadMem_47ea9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ea9e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ea9e)
  store %struct.Memory* %call_47ea9e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x64(%rax)	 RIP: 47eaa1	 Bytes: 4
  %loadMem_47eaa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eaa1 = call %struct.Memory* @routine_cmpl__0x0__0x64__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eaa1)
  store %struct.Memory* %call_47eaa1, %struct.Memory** %MEMORY

  ; Code: jne .L_47eab9	 RIP: 47eaa5	 Bytes: 6
  %loadMem_47eaa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eaa5 = call %struct.Memory* @routine_jne_.L_47eab9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eaa5, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_47eaa5, %struct.Memory** %MEMORY

  %loadBr_47eaa5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47eaa5 = icmp eq i8 %loadBr_47eaa5, 1
  br i1 %cmpBr_47eaa5, label %block_.L_47eab9, label %block_47eaab

block_47eaab:
  ; Code: movl -0x8(%rbp), %edi	 RIP: 47eaab	 Bytes: 3
  %loadMem_47eaab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eaab = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eaab)
  store %struct.Memory* %call_47eaab, %struct.Memory** %MEMORY

  ; Code: movl -0x2bc(%rbp), %esi	 RIP: 47eaae	 Bytes: 6
  %loadMem_47eaae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eaae = call %struct.Memory* @routine_movl_MINUS0x2bc__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eaae)
  store %struct.Memory* %call_47eaae, %struct.Memory** %MEMORY

  ; Code: callq .add_strategical_defense_move	 RIP: 47eab4	 Bytes: 5
  %loadMem1_47eab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47eab4 = call %struct.Memory* @routine_callq_.add_strategical_defense_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47eab4, i64 -304372, i64 5, i64 5)
  store %struct.Memory* %call1_47eab4, %struct.Memory** %MEMORY

  %loadMem2_47eab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47eab4 = load i64, i64* %3
  %call2_47eab4 = call %struct.Memory* @sub_4345c0.add_strategical_defense_move(%struct.State* %0, i64  %loadPC_47eab4, %struct.Memory* %loadMem2_47eab4)
  store %struct.Memory* %call2_47eab4, %struct.Memory** %MEMORY

  ; Code: .L_47eab9:	 RIP: 47eab9	 Bytes: 0
  br label %block_.L_47eab9
block_.L_47eab9:

  ; Code: jmpq .L_47eabe	 RIP: 47eab9	 Bytes: 5
  %loadMem_47eab9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eab9 = call %struct.Memory* @routine_jmpq_.L_47eabe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eab9, i64 5, i64 5)
  store %struct.Memory* %call_47eab9, %struct.Memory** %MEMORY

  br label %block_.L_47eabe

  ; Code: .L_47eabe:	 RIP: 47eabe	 Bytes: 0
block_.L_47eabe:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 47eabe	 Bytes: 3
  %loadMem_47eabe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eabe = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eabe)
  store %struct.Memory* %call_47eabe, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47eac1	 Bytes: 3
  %loadMem_47eac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eac1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eac1)
  store %struct.Memory* %call_47eac1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 47eac4	 Bytes: 3
  %loadMem_47eac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eac4 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eac4)
  store %struct.Memory* %call_47eac4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47e9ea	 RIP: 47eac7	 Bytes: 5
  %loadMem_47eac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eac7 = call %struct.Memory* @routine_jmpq_.L_47e9ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eac7, i64 -221, i64 5)
  store %struct.Memory* %call_47eac7, %struct.Memory** %MEMORY

  br label %block_.L_47e9ea

  ; Code: .L_47eacc:	 RIP: 47eacc	 Bytes: 0
block_.L_47eacc:

  ; Code: jmpq .L_47ed2f	 RIP: 47eacc	 Bytes: 5
  %loadMem_47eacc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eacc = call %struct.Memory* @routine_jmpq_.L_47ed2f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eacc, i64 611, i64 5)
  store %struct.Memory* %call_47eacc, %struct.Memory** %MEMORY

  br label %block_.L_47ed2f

  ; Code: .L_47ead1:	 RIP: 47ead1	 Bytes: 0
block_.L_47ead1:

  ; Code: movq $0xafdfc0, %rax	 RIP: 47ead1	 Bytes: 10
  %loadMem_47ead1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ead1 = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ead1)
  store %struct.Memory* %call_47ead1, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 47eadb	 Bytes: 4
  %loadMem_47eadb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eadb = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eadb)
  store %struct.Memory* %call_47eadb, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47eadf	 Bytes: 4
  %loadMem_47eadf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eadf = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eadf)
  store %struct.Memory* %call_47eadf, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47eae3	 Bytes: 3
  %loadMem_47eae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eae3 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eae3)
  store %struct.Memory* %call_47eae3, %struct.Memory** %MEMORY

  ; Code: cmpl $0xe, (%rax)	 RIP: 47eae6	 Bytes: 3
  %loadMem_47eae6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eae6 = call %struct.Memory* @routine_cmpl__0xe____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eae6)
  store %struct.Memory* %call_47eae6, %struct.Memory** %MEMORY

  ; Code: jne .L_47ed2a	 RIP: 47eae9	 Bytes: 6
  %loadMem_47eae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eae9 = call %struct.Memory* @routine_jne_.L_47ed2a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eae9, i8* %BRANCH_TAKEN, i64 577, i64 6, i64 6)
  store %struct.Memory* %call_47eae9, %struct.Memory** %MEMORY

  %loadBr_47eae9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47eae9 = icmp eq i8 %loadBr_47eae9, 1
  br i1 %cmpBr_47eae9, label %block_.L_47ed2a, label %block_47eaef

block_47eaef:
  ; Code: movl $0x3, %eax	 RIP: 47eaef	 Bytes: 5
  %loadMem_47eaef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eaef = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eaef)
  store %struct.Memory* %call_47eaef, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edi	 RIP: 47eaf4	 Bytes: 3
  %loadMem_47eaf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eaf4 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eaf4)
  store %struct.Memory* %call_47eaf4, %struct.Memory** %MEMORY

  ; Code: subl -0x4(%rbp), %eax	 RIP: 47eaf7	 Bytes: 3
  %loadMem_47eaf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eaf7 = call %struct.Memory* @routine_subl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eaf7)
  store %struct.Memory* %call_47eaf7, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 47eafa	 Bytes: 2
  %loadMem_47eafa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eafa = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eafa)
  store %struct.Memory* %call_47eafa, %struct.Memory** %MEMORY

  ; Code: callq .cut_possible	 RIP: 47eafc	 Bytes: 5
  %loadMem1_47eafc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47eafc = call %struct.Memory* @routine_callq_.cut_possible(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47eafc, i64 -30988, i64 5, i64 5)
  store %struct.Memory* %call1_47eafc, %struct.Memory** %MEMORY

  %loadMem2_47eafc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47eafc = load i64, i64* %3
  %call2_47eafc = call %struct.Memory* @sub_4771f0.cut_possible(%struct.State* %0, i64  %loadPC_47eafc, %struct.Memory* %loadMem2_47eafc)
  store %struct.Memory* %call2_47eafc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47eb01	 Bytes: 3
  %loadMem_47eb01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eb01 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eb01)
  store %struct.Memory* %call_47eb01, %struct.Memory** %MEMORY

  ; Code: je .L_47ed2a	 RIP: 47eb04	 Bytes: 6
  %loadMem_47eb04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eb04 = call %struct.Memory* @routine_je_.L_47ed2a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eb04, i8* %BRANCH_TAKEN, i64 550, i64 6, i64 6)
  store %struct.Memory* %call_47eb04, %struct.Memory** %MEMORY

  %loadBr_47eb04 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47eb04 = icmp eq i8 %loadBr_47eb04, 1
  br i1 %cmpBr_47eb04, label %block_.L_47ed2a, label %block_47eb0a

block_47eb0a:
  ; Code: movq $0xafdfc0, %rax	 RIP: 47eb0a	 Bytes: 10
  %loadMem_47eb0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eb0a = call %struct.Memory* @routine_movq__0xafdfc0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eb0a)
  store %struct.Memory* %call_47eb0a, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 47eb14	 Bytes: 4
  %loadMem_47eb14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eb14 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eb14)
  store %struct.Memory* %call_47eb14, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47eb18	 Bytes: 4
  %loadMem_47eb18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eb18 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eb18)
  store %struct.Memory* %call_47eb18, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 47eb1c	 Bytes: 3
  %loadMem_47eb1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eb1c = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eb1c)
  store %struct.Memory* %call_47eb1c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 47eb1f	 Bytes: 3
  %loadMem_47eb1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eb1f = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eb1f)
  store %struct.Memory* %call_47eb1f, %struct.Memory** %MEMORY

  ; Code: movslq 0x4(%rdx), %rcx	 RIP: 47eb22	 Bytes: 4
  %loadMem_47eb22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eb22 = call %struct.Memory* @routine_movslq_0x4__rdx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eb22)
  store %struct.Memory* %call_47eb22, %struct.Memory** %MEMORY

  ; Code: movl 0xb8a010(,%rcx,4), %esi	 RIP: 47eb26	 Bytes: 7
  %loadMem_47eb26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eb26 = call %struct.Memory* @routine_movl_0xb8a010___rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eb26)
  store %struct.Memory* %call_47eb26, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x2c0(%rbp)	 RIP: 47eb2d	 Bytes: 6
  %loadMem_47eb2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eb2d = call %struct.Memory* @routine_movl__esi__MINUS0x2c0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eb2d)
  store %struct.Memory* %call_47eb2d, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 47eb33	 Bytes: 4
  %loadMem_47eb33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eb33 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eb33)
  store %struct.Memory* %call_47eb33, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 47eb37	 Bytes: 4
  %loadMem_47eb37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eb37 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eb37)
  store %struct.Memory* %call_47eb37, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47eb3b	 Bytes: 3
  %loadMem_47eb3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eb3b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eb3b)
  store %struct.Memory* %call_47eb3b, %struct.Memory** %MEMORY

  ; Code: movslq 0x4(%rax), %rax	 RIP: 47eb3e	 Bytes: 4
  %loadMem_47eb3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eb3e = call %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eb3e)
  store %struct.Memory* %call_47eb3e, %struct.Memory** %MEMORY

  ; Code: movl 0xb051b0(,%rax,4), %esi	 RIP: 47eb42	 Bytes: 7
  %loadMem_47eb42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eb42 = call %struct.Memory* @routine_movl_0xb051b0___rax_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eb42)
  store %struct.Memory* %call_47eb42, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x2c4(%rbp)	 RIP: 47eb49	 Bytes: 6
  %loadMem_47eb49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eb49 = call %struct.Memory* @routine_movl__esi__MINUS0x2c4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eb49)
  store %struct.Memory* %call_47eb49, %struct.Memory** %MEMORY

  ; Code: movl $0x15, -0x2c8(%rbp)	 RIP: 47eb4f	 Bytes: 10
  %loadMem_47eb4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eb4f = call %struct.Memory* @routine_movl__0x15__MINUS0x2c8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eb4f)
  store %struct.Memory* %call_47eb4f, %struct.Memory** %MEMORY

  ; Code: .L_47eb59:	 RIP: 47eb59	 Bytes: 0
  br label %block_.L_47eb59
block_.L_47eb59:

  ; Code: cmpl $0x190, -0x2c8(%rbp)	 RIP: 47eb59	 Bytes: 10
  %loadMem_47eb59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eb59 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x2c8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eb59)
  store %struct.Memory* %call_47eb59, %struct.Memory** %MEMORY

  ; Code: jge .L_47ed25	 RIP: 47eb63	 Bytes: 6
  %loadMem_47eb63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eb63 = call %struct.Memory* @routine_jge_.L_47ed25(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eb63, i8* %BRANCH_TAKEN, i64 450, i64 6, i64 6)
  store %struct.Memory* %call_47eb63, %struct.Memory** %MEMORY

  %loadBr_47eb63 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47eb63 = icmp eq i8 %loadBr_47eb63, 1
  br i1 %cmpBr_47eb63, label %block_.L_47ed25, label %block_47eb69

block_47eb69:
  ; Code: movslq -0x2c8(%rbp), %rax	 RIP: 47eb69	 Bytes: 7
  %loadMem_47eb69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eb69 = call %struct.Memory* @routine_movslq_MINUS0x2c8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eb69)
  store %struct.Memory* %call_47eb69, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 47eb70	 Bytes: 8
  %loadMem_47eb70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eb70 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eb70)
  store %struct.Memory* %call_47eb70, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 47eb78	 Bytes: 3
  %loadMem_47eb78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eb78 = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eb78)
  store %struct.Memory* %call_47eb78, %struct.Memory** %MEMORY

  ; Code: je .L_47ed0c	 RIP: 47eb7b	 Bytes: 6
  %loadMem_47eb7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eb7b = call %struct.Memory* @routine_je_.L_47ed0c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eb7b, i8* %BRANCH_TAKEN, i64 401, i64 6, i64 6)
  store %struct.Memory* %call_47eb7b, %struct.Memory** %MEMORY

  %loadBr_47eb7b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47eb7b = icmp eq i8 %loadBr_47eb7b, 1
  br i1 %cmpBr_47eb7b, label %block_.L_47ed0c, label %block_47eb81

block_47eb81:
  ; Code: movslq -0x2c8(%rbp), %rax	 RIP: 47eb81	 Bytes: 7
  %loadMem_47eb81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eb81 = call %struct.Memory* @routine_movslq_MINUS0x2c8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eb81)
  store %struct.Memory* %call_47eb81, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 47eb88	 Bytes: 8
  %loadMem_47eb88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eb88 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eb88)
  store %struct.Memory* %call_47eb88, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 47eb90	 Bytes: 3
  %loadMem_47eb90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eb90 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eb90)
  store %struct.Memory* %call_47eb90, %struct.Memory** %MEMORY

  ; Code: jne .L_47ed0c	 RIP: 47eb93	 Bytes: 6
  %loadMem_47eb93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eb93 = call %struct.Memory* @routine_jne_.L_47ed0c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eb93, i8* %BRANCH_TAKEN, i64 377, i64 6, i64 6)
  store %struct.Memory* %call_47eb93, %struct.Memory** %MEMORY

  %loadBr_47eb93 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47eb93 = icmp eq i8 %loadBr_47eb93, 1
  br i1 %cmpBr_47eb93, label %block_.L_47ed0c, label %block_47eb99

block_47eb99:
  ; Code: movl $0x3, %eax	 RIP: 47eb99	 Bytes: 5
  %loadMem_47eb99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eb99 = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eb99)
  store %struct.Memory* %call_47eb99, %struct.Memory** %MEMORY

  ; Code: movl -0x2c8(%rbp), %edi	 RIP: 47eb9e	 Bytes: 6
  %loadMem_47eb9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eb9e = call %struct.Memory* @routine_movl_MINUS0x2c8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eb9e)
  store %struct.Memory* %call_47eb9e, %struct.Memory** %MEMORY

  ; Code: subl -0x4(%rbp), %eax	 RIP: 47eba4	 Bytes: 3
  %loadMem_47eba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eba4 = call %struct.Memory* @routine_subl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eba4)
  store %struct.Memory* %call_47eba4, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 47eba7	 Bytes: 2
  %loadMem_47eba7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eba7 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eba7)
  store %struct.Memory* %call_47eba7, %struct.Memory** %MEMORY

  ; Code: callq .cut_possible	 RIP: 47eba9	 Bytes: 5
  %loadMem1_47eba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47eba9 = call %struct.Memory* @routine_callq_.cut_possible(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47eba9, i64 -31161, i64 5, i64 5)
  store %struct.Memory* %call1_47eba9, %struct.Memory** %MEMORY

  %loadMem2_47eba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47eba9 = load i64, i64* %3
  %call2_47eba9 = call %struct.Memory* @sub_4771f0.cut_possible(%struct.State* %0, i64  %loadPC_47eba9, %struct.Memory* %loadMem2_47eba9)
  store %struct.Memory* %call2_47eba9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47ebae	 Bytes: 3
  %loadMem_47ebae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ebae = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ebae)
  store %struct.Memory* %call_47ebae, %struct.Memory** %MEMORY

  ; Code: je .L_47ed0c	 RIP: 47ebb1	 Bytes: 6
  %loadMem_47ebb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ebb1 = call %struct.Memory* @routine_je_.L_47ed0c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ebb1, i8* %BRANCH_TAKEN, i64 347, i64 6, i64 6)
  store %struct.Memory* %call_47ebb1, %struct.Memory** %MEMORY

  %loadBr_47ebb1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ebb1 = icmp eq i8 %loadBr_47ebb1, 1
  br i1 %cmpBr_47ebb1, label %block_.L_47ed0c, label %block_47ebb7

block_47ebb7:
  ; Code: movl -0x8(%rbp), %edi	 RIP: 47ebb7	 Bytes: 3
  %loadMem_47ebb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ebb7 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ebb7)
  store %struct.Memory* %call_47ebb7, %struct.Memory** %MEMORY

  ; Code: movl -0x2c8(%rbp), %esi	 RIP: 47ebba	 Bytes: 6
  %loadMem_47ebba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ebba = call %struct.Memory* @routine_movl_MINUS0x2c8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ebba)
  store %struct.Memory* %call_47ebba, %struct.Memory** %MEMORY

  ; Code: callq .bdist	 RIP: 47ebc0	 Bytes: 5
  %loadMem1_47ebc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47ebc0 = call %struct.Memory* @routine_callq_.bdist(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47ebc0, i64 29952, i64 5, i64 5)
  store %struct.Memory* %call1_47ebc0, %struct.Memory** %MEMORY

  %loadMem2_47ebc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ebc0 = load i64, i64* %3
  %call2_47ebc0 = call %struct.Memory* @sub_4860c0.bdist(%struct.State* %0, i64  %loadPC_47ebc0, %struct.Memory* %loadMem2_47ebc0)
  store %struct.Memory* %call2_47ebc0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, %eax	 RIP: 47ebc5	 Bytes: 3
  %loadMem_47ebc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ebc5 = call %struct.Memory* @routine_cmpl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ebc5)
  store %struct.Memory* %call_47ebc5, %struct.Memory** %MEMORY

  ; Code: jg .L_47ed0c	 RIP: 47ebc8	 Bytes: 6
  %loadMem_47ebc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ebc8 = call %struct.Memory* @routine_jg_.L_47ed0c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ebc8, i8* %BRANCH_TAKEN, i64 324, i64 6, i64 6)
  store %struct.Memory* %call_47ebc8, %struct.Memory** %MEMORY

  %loadBr_47ebc8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ebc8 = icmp eq i8 %loadBr_47ebc8, 1
  br i1 %cmpBr_47ebc8, label %block_.L_47ed0c, label %block_47ebce

block_47ebce:
  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 47ebce	 Bytes: 7
  %loadMem_47ebce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ebce = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ebce)
  store %struct.Memory* %call_47ebce, %struct.Memory** %MEMORY

  ; Code: .L_47ebd5:	 RIP: 47ebd5	 Bytes: 0
  br label %block_.L_47ebd5
block_.L_47ebd5:

  ; Code: cmpl $0x8, -0x14(%rbp)	 RIP: 47ebd5	 Bytes: 4
  %loadMem_47ebd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ebd5 = call %struct.Memory* @routine_cmpl__0x8__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ebd5)
  store %struct.Memory* %call_47ebd5, %struct.Memory** %MEMORY

  ; Code: jge .L_47ed07	 RIP: 47ebd9	 Bytes: 6
  %loadMem_47ebd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ebd9 = call %struct.Memory* @routine_jge_.L_47ed07(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ebd9, i8* %BRANCH_TAKEN, i64 302, i64 6, i64 6)
  store %struct.Memory* %call_47ebd9, %struct.Memory** %MEMORY

  %loadBr_47ebd9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ebd9 = icmp eq i8 %loadBr_47ebd9, 1
  br i1 %cmpBr_47ebd9, label %block_.L_47ed07, label %block_47ebdf

block_47ebdf:
  ; Code: movl -0x2c8(%rbp), %eax	 RIP: 47ebdf	 Bytes: 6
  %loadMem_47ebdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ebdf = call %struct.Memory* @routine_movl_MINUS0x2c8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ebdf)
  store %struct.Memory* %call_47ebdf, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 47ebe5	 Bytes: 4
  %loadMem_47ebe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ebe5 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ebe5)
  store %struct.Memory* %call_47ebe5, %struct.Memory** %MEMORY

  ; Code: addl 0x7ae1b0(,%rcx,4), %eax	 RIP: 47ebe9	 Bytes: 7
  %loadMem_47ebe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ebe9 = call %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ebe9)
  store %struct.Memory* %call_47ebe9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2cc(%rbp)	 RIP: 47ebf0	 Bytes: 6
  %loadMem_47ebf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ebf0 = call %struct.Memory* @routine_movl__eax__MINUS0x2cc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ebf0)
  store %struct.Memory* %call_47ebf0, %struct.Memory** %MEMORY

  ; Code: movslq -0x2cc(%rbp), %rcx	 RIP: 47ebf6	 Bytes: 7
  %loadMem_47ebf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ebf6 = call %struct.Memory* @routine_movslq_MINUS0x2cc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ebf6)
  store %struct.Memory* %call_47ebf6, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 47ebfd	 Bytes: 8
  %loadMem_47ebfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ebfd = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ebfd)
  store %struct.Memory* %call_47ebfd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 47ec05	 Bytes: 3
  %loadMem_47ec05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ec05 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ec05)
  store %struct.Memory* %call_47ec05, %struct.Memory** %MEMORY

  ; Code: je .L_47ecf4	 RIP: 47ec08	 Bytes: 6
  %loadMem_47ec08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ec08 = call %struct.Memory* @routine_je_.L_47ecf4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ec08, i8* %BRANCH_TAKEN, i64 236, i64 6, i64 6)
  store %struct.Memory* %call_47ec08, %struct.Memory** %MEMORY

  %loadBr_47ec08 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ec08 = icmp eq i8 %loadBr_47ec08, 1
  br i1 %cmpBr_47ec08, label %block_.L_47ecf4, label %block_47ec0e

block_47ec0e:
  ; Code: movslq -0x2cc(%rbp), %rax	 RIP: 47ec0e	 Bytes: 7
  %loadMem_47ec0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ec0e = call %struct.Memory* @routine_movslq_MINUS0x2cc__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ec0e)
  store %struct.Memory* %call_47ec0e, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 47ec15	 Bytes: 8
  %loadMem_47ec15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ec15 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ec15)
  store %struct.Memory* %call_47ec15, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %ecx	 RIP: 47ec1d	 Bytes: 3
  %loadMem_47ec1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ec1d = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ec1d)
  store %struct.Memory* %call_47ec1d, %struct.Memory** %MEMORY

  ; Code: jne .L_47ecf4	 RIP: 47ec20	 Bytes: 6
  %loadMem_47ec20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ec20 = call %struct.Memory* @routine_jne_.L_47ecf4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ec20, i8* %BRANCH_TAKEN, i64 212, i64 6, i64 6)
  store %struct.Memory* %call_47ec20, %struct.Memory** %MEMORY

  %loadBr_47ec20 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ec20 = icmp eq i8 %loadBr_47ec20, 1
  br i1 %cmpBr_47ec20, label %block_.L_47ecf4, label %block_47ec26

block_47ec26:
  ; Code: movl -0x2cc(%rbp), %edi	 RIP: 47ec26	 Bytes: 6
  %loadMem_47ec26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ec26 = call %struct.Memory* @routine_movl_MINUS0x2cc__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ec26)
  store %struct.Memory* %call_47ec26, %struct.Memory** %MEMORY

  ; Code: movl -0x2c0(%rbp), %esi	 RIP: 47ec2c	 Bytes: 6
  %loadMem_47ec2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ec2c = call %struct.Memory* @routine_movl_MINUS0x2c0__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ec2c)
  store %struct.Memory* %call_47ec2c, %struct.Memory** %MEMORY

  ; Code: callq .is_same_worm	 RIP: 47ec32	 Bytes: 5
  %loadMem1_47ec32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47ec32 = call %struct.Memory* @routine_callq_.is_same_worm(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47ec32, i64 39390, i64 5, i64 5)
  store %struct.Memory* %call1_47ec32, %struct.Memory** %MEMORY

  %loadMem2_47ec32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ec32 = load i64, i64* %3
  %call2_47ec32 = call %struct.Memory* @sub_488610.is_same_worm(%struct.State* %0, i64  %loadPC_47ec32, %struct.Memory* %loadMem2_47ec32)
  store %struct.Memory* %call2_47ec32, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47ec37	 Bytes: 3
  %loadMem_47ec37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ec37 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ec37)
  store %struct.Memory* %call_47ec37, %struct.Memory** %MEMORY

  ; Code: jne .L_47ecf4	 RIP: 47ec3a	 Bytes: 6
  %loadMem_47ec3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ec3a = call %struct.Memory* @routine_jne_.L_47ecf4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ec3a, i8* %BRANCH_TAKEN, i64 186, i64 6, i64 6)
  store %struct.Memory* %call_47ec3a, %struct.Memory** %MEMORY

  %loadBr_47ec3a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ec3a = icmp eq i8 %loadBr_47ec3a, 1
  br i1 %cmpBr_47ec3a, label %block_.L_47ecf4, label %block_47ec40

block_47ec40:
  ; Code: movl -0x2cc(%rbp), %edi	 RIP: 47ec40	 Bytes: 6
  %loadMem_47ec40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ec40 = call %struct.Memory* @routine_movl_MINUS0x2cc__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ec40)
  store %struct.Memory* %call_47ec40, %struct.Memory** %MEMORY

  ; Code: movl -0x2c4(%rbp), %esi	 RIP: 47ec46	 Bytes: 6
  %loadMem_47ec46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ec46 = call %struct.Memory* @routine_movl_MINUS0x2c4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ec46)
  store %struct.Memory* %call_47ec46, %struct.Memory** %MEMORY

  ; Code: callq .is_same_worm	 RIP: 47ec4c	 Bytes: 5
  %loadMem1_47ec4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47ec4c = call %struct.Memory* @routine_callq_.is_same_worm(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47ec4c, i64 39364, i64 5, i64 5)
  store %struct.Memory* %call1_47ec4c, %struct.Memory** %MEMORY

  %loadMem2_47ec4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ec4c = load i64, i64* %3
  %call2_47ec4c = call %struct.Memory* @sub_488610.is_same_worm(%struct.State* %0, i64  %loadPC_47ec4c, %struct.Memory* %loadMem2_47ec4c)
  store %struct.Memory* %call2_47ec4c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47ec51	 Bytes: 3
  %loadMem_47ec51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ec51 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ec51)
  store %struct.Memory* %call_47ec51, %struct.Memory** %MEMORY

  ; Code: jne .L_47ecf4	 RIP: 47ec54	 Bytes: 6
  %loadMem_47ec54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ec54 = call %struct.Memory* @routine_jne_.L_47ecf4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ec54, i8* %BRANCH_TAKEN, i64 160, i64 6, i64 6)
  store %struct.Memory* %call_47ec54, %struct.Memory** %MEMORY

  %loadBr_47ec54 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ec54 = icmp eq i8 %loadBr_47ec54, 1
  br i1 %cmpBr_47ec54, label %block_.L_47ecf4, label %block_47ec5a

block_47ec5a:
  ; Code: movq $0x582cc6, %rdx	 RIP: 47ec5a	 Bytes: 10
  %loadMem_47ec5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ec5a = call %struct.Memory* @routine_movq__0x582cc6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ec5a)
  store %struct.Memory* %call_47ec5a, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 47ec64	 Bytes: 2
  %loadMem_47ec64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ec64 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ec64)
  store %struct.Memory* %call_47ec64, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edi	 RIP: 47ec66	 Bytes: 3
  %loadMem_47ec66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ec66 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ec66)
  store %struct.Memory* %call_47ec66, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 47ec69	 Bytes: 3
  %loadMem_47ec69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ec69 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ec69)
  store %struct.Memory* %call_47ec69, %struct.Memory** %MEMORY

  ; Code: movl -0x2c0(%rbp), %ecx	 RIP: 47ec6c	 Bytes: 6
  %loadMem_47ec6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ec6c = call %struct.Memory* @routine_movl_MINUS0x2c0__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ec6c)
  store %struct.Memory* %call_47ec6c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 47ec72	 Bytes: 3
  %loadMem_47ec72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ec72 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ec72)
  store %struct.Memory* %call_47ec72, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 47ec75	 Bytes: 3
  %loadMem_47ec75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ec75 = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ec75)
  store %struct.Memory* %call_47ec75, %struct.Memory** %MEMORY

  ; Code: callq .trymove	 RIP: 47ec78	 Bytes: 5
  %loadMem1_47ec78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47ec78 = call %struct.Memory* @routine_callq_.trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47ec78, i64 -482888, i64 5, i64 5)
  store %struct.Memory* %call1_47ec78, %struct.Memory** %MEMORY

  %loadMem2_47ec78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ec78 = load i64, i64* %3
  %call2_47ec78 = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64  %loadPC_47ec78, %struct.Memory* %loadMem2_47ec78)
  store %struct.Memory* %call2_47ec78, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47ec7d	 Bytes: 3
  %loadMem_47ec7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ec7d = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ec7d)
  store %struct.Memory* %call_47ec7d, %struct.Memory** %MEMORY

  ; Code: je .L_47ecef	 RIP: 47ec80	 Bytes: 6
  %loadMem_47ec80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ec80 = call %struct.Memory* @routine_je_.L_47ecef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ec80, i8* %BRANCH_TAKEN, i64 111, i64 6, i64 6)
  store %struct.Memory* %call_47ec80, %struct.Memory** %MEMORY

  %loadBr_47ec80 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ec80 = icmp eq i8 %loadBr_47ec80, 1
  br i1 %cmpBr_47ec80, label %block_.L_47ecef, label %block_47ec86

block_47ec86:
  ; Code: xorl %eax, %eax	 RIP: 47ec86	 Bytes: 2
  %loadMem_47ec86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ec86 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ec86)
  store %struct.Memory* %call_47ec86, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 47ec88	 Bytes: 2
  %loadMem_47ec88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ec88 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ec88)
  store %struct.Memory* %call_47ec88, %struct.Memory** %MEMORY

  ; Code: movl -0x2cc(%rbp), %edi	 RIP: 47ec8a	 Bytes: 6
  %loadMem_47ec8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ec8a = call %struct.Memory* @routine_movl_MINUS0x2cc__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ec8a)
  store %struct.Memory* %call_47ec8a, %struct.Memory** %MEMORY

  ; Code: movl -0x2c0(%rbp), %esi	 RIP: 47ec90	 Bytes: 6
  %loadMem_47ec90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ec90 = call %struct.Memory* @routine_movl_MINUS0x2c0__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ec90)
  store %struct.Memory* %call_47ec90, %struct.Memory** %MEMORY

  ; Code: callq .disconnect	 RIP: 47ec96	 Bytes: 5
  %loadMem1_47ec96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47ec96 = call %struct.Memory* @routine_callq_.disconnect(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47ec96, i64 -135718, i64 5, i64 5)
  store %struct.Memory* %call1_47ec96, %struct.Memory** %MEMORY

  %loadMem2_47ec96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ec96 = load i64, i64* %3
  %call2_47ec96 = call %struct.Memory* @sub_45da70.disconnect(%struct.State* %0, i64  %loadPC_47ec96, %struct.Memory* %loadMem2_47ec96)
  store %struct.Memory* %call2_47ec96, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47ec9b	 Bytes: 3
  %loadMem_47ec9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ec9b = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ec9b)
  store %struct.Memory* %call_47ec9b, %struct.Memory** %MEMORY

  ; Code: jne .L_47ecb8	 RIP: 47ec9e	 Bytes: 6
  %loadMem_47ec9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ec9e = call %struct.Memory* @routine_jne_.L_47ecb8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ec9e, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_47ec9e, %struct.Memory** %MEMORY

  %loadBr_47ec9e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ec9e = icmp eq i8 %loadBr_47ec9e, 1
  br i1 %cmpBr_47ec9e, label %block_.L_47ecb8, label %block_47eca4

block_47eca4:
  ; Code: movl -0x8(%rbp), %edi	 RIP: 47eca4	 Bytes: 3
  %loadMem_47eca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eca4 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eca4)
  store %struct.Memory* %call_47eca4, %struct.Memory** %MEMORY

  ; Code: movl -0x2cc(%rbp), %esi	 RIP: 47eca7	 Bytes: 6
  %loadMem_47eca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eca7 = call %struct.Memory* @routine_movl_MINUS0x2cc__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eca7)
  store %struct.Memory* %call_47eca7, %struct.Memory** %MEMORY

  ; Code: movl -0x2c0(%rbp), %edx	 RIP: 47ecad	 Bytes: 6
  %loadMem_47ecad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ecad = call %struct.Memory* @routine_movl_MINUS0x2c0__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ecad)
  store %struct.Memory* %call_47ecad, %struct.Memory** %MEMORY

  ; Code: callq .add_connection_move	 RIP: 47ecb3	 Bytes: 5
  %loadMem1_47ecb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47ecb3 = call %struct.Memory* @routine_callq_.add_connection_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47ecb3, i64 -311139, i64 5, i64 5)
  store %struct.Memory* %call1_47ecb3, %struct.Memory** %MEMORY

  %loadMem2_47ecb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ecb3 = load i64, i64* %3
  %call2_47ecb3 = call %struct.Memory* @sub_432d50.add_connection_move(%struct.State* %0, i64  %loadPC_47ecb3, %struct.Memory* %loadMem2_47ecb3)
  store %struct.Memory* %call2_47ecb3, %struct.Memory** %MEMORY

  ; Code: .L_47ecb8:	 RIP: 47ecb8	 Bytes: 0
  br label %block_.L_47ecb8
block_.L_47ecb8:

  ; Code: xorl %eax, %eax	 RIP: 47ecb8	 Bytes: 2
  %loadMem_47ecb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ecb8 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ecb8)
  store %struct.Memory* %call_47ecb8, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 47ecba	 Bytes: 2
  %loadMem_47ecba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ecba = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ecba)
  store %struct.Memory* %call_47ecba, %struct.Memory** %MEMORY

  ; Code: movl -0x2cc(%rbp), %edi	 RIP: 47ecbc	 Bytes: 6
  %loadMem_47ecbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ecbc = call %struct.Memory* @routine_movl_MINUS0x2cc__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ecbc)
  store %struct.Memory* %call_47ecbc, %struct.Memory** %MEMORY

  ; Code: movl -0x2c4(%rbp), %esi	 RIP: 47ecc2	 Bytes: 6
  %loadMem_47ecc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ecc2 = call %struct.Memory* @routine_movl_MINUS0x2c4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ecc2)
  store %struct.Memory* %call_47ecc2, %struct.Memory** %MEMORY

  ; Code: callq .disconnect	 RIP: 47ecc8	 Bytes: 5
  %loadMem1_47ecc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47ecc8 = call %struct.Memory* @routine_callq_.disconnect(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47ecc8, i64 -135768, i64 5, i64 5)
  store %struct.Memory* %call1_47ecc8, %struct.Memory** %MEMORY

  %loadMem2_47ecc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ecc8 = load i64, i64* %3
  %call2_47ecc8 = call %struct.Memory* @sub_45da70.disconnect(%struct.State* %0, i64  %loadPC_47ecc8, %struct.Memory* %loadMem2_47ecc8)
  store %struct.Memory* %call2_47ecc8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47eccd	 Bytes: 3
  %loadMem_47eccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47eccd = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47eccd)
  store %struct.Memory* %call_47eccd, %struct.Memory** %MEMORY

  ; Code: jne .L_47ecea	 RIP: 47ecd0	 Bytes: 6
  %loadMem_47ecd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ecd0 = call %struct.Memory* @routine_jne_.L_47ecea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ecd0, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_47ecd0, %struct.Memory** %MEMORY

  %loadBr_47ecd0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ecd0 = icmp eq i8 %loadBr_47ecd0, 1
  br i1 %cmpBr_47ecd0, label %block_.L_47ecea, label %block_47ecd6

block_47ecd6:
  ; Code: movl -0x8(%rbp), %edi	 RIP: 47ecd6	 Bytes: 3
  %loadMem_47ecd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ecd6 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ecd6)
  store %struct.Memory* %call_47ecd6, %struct.Memory** %MEMORY

  ; Code: movl -0x2cc(%rbp), %esi	 RIP: 47ecd9	 Bytes: 6
  %loadMem_47ecd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ecd9 = call %struct.Memory* @routine_movl_MINUS0x2cc__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ecd9)
  store %struct.Memory* %call_47ecd9, %struct.Memory** %MEMORY

  ; Code: movl -0x2c4(%rbp), %edx	 RIP: 47ecdf	 Bytes: 6
  %loadMem_47ecdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ecdf = call %struct.Memory* @routine_movl_MINUS0x2c4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ecdf)
  store %struct.Memory* %call_47ecdf, %struct.Memory** %MEMORY

  ; Code: callq .add_connection_move	 RIP: 47ece5	 Bytes: 5
  %loadMem1_47ece5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47ece5 = call %struct.Memory* @routine_callq_.add_connection_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47ece5, i64 -311189, i64 5, i64 5)
  store %struct.Memory* %call1_47ece5, %struct.Memory** %MEMORY

  %loadMem2_47ece5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ece5 = load i64, i64* %3
  %call2_47ece5 = call %struct.Memory* @sub_432d50.add_connection_move(%struct.State* %0, i64  %loadPC_47ece5, %struct.Memory* %loadMem2_47ece5)
  store %struct.Memory* %call2_47ece5, %struct.Memory** %MEMORY

  ; Code: .L_47ecea:	 RIP: 47ecea	 Bytes: 0
  br label %block_.L_47ecea
block_.L_47ecea:

  ; Code: callq .popgo	 RIP: 47ecea	 Bytes: 5
  %loadMem1_47ecea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47ecea = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47ecea, i64 -462730, i64 5, i64 5)
  store %struct.Memory* %call1_47ecea, %struct.Memory** %MEMORY

  %loadMem2_47ecea = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ecea = load i64, i64* %3
  %call2_47ecea = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_47ecea, %struct.Memory* %loadMem2_47ecea)
  store %struct.Memory* %call2_47ecea, %struct.Memory** %MEMORY

  ; Code: .L_47ecef:	 RIP: 47ecef	 Bytes: 0
  br label %block_.L_47ecef
block_.L_47ecef:

  ; Code: jmpq .L_47ecf4	 RIP: 47ecef	 Bytes: 5
  %loadMem_47ecef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ecef = call %struct.Memory* @routine_jmpq_.L_47ecf4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ecef, i64 5, i64 5)
  store %struct.Memory* %call_47ecef, %struct.Memory** %MEMORY

  br label %block_.L_47ecf4

  ; Code: .L_47ecf4:	 RIP: 47ecf4	 Bytes: 0
block_.L_47ecf4:

  ; Code: jmpq .L_47ecf9	 RIP: 47ecf4	 Bytes: 5
  %loadMem_47ecf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ecf4 = call %struct.Memory* @routine_jmpq_.L_47ecf9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ecf4, i64 5, i64 5)
  store %struct.Memory* %call_47ecf4, %struct.Memory** %MEMORY

  br label %block_.L_47ecf9

  ; Code: .L_47ecf9:	 RIP: 47ecf9	 Bytes: 0
block_.L_47ecf9:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 47ecf9	 Bytes: 3
  %loadMem_47ecf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ecf9 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ecf9)
  store %struct.Memory* %call_47ecf9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47ecfc	 Bytes: 3
  %loadMem_47ecfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ecfc = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ecfc)
  store %struct.Memory* %call_47ecfc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 47ecff	 Bytes: 3
  %loadMem_47ecff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ecff = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ecff)
  store %struct.Memory* %call_47ecff, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47ebd5	 RIP: 47ed02	 Bytes: 5
  %loadMem_47ed02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ed02 = call %struct.Memory* @routine_jmpq_.L_47ebd5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ed02, i64 -301, i64 5)
  store %struct.Memory* %call_47ed02, %struct.Memory** %MEMORY

  br label %block_.L_47ebd5

  ; Code: .L_47ed07:	 RIP: 47ed07	 Bytes: 0
block_.L_47ed07:

  ; Code: jmpq .L_47ed0c	 RIP: 47ed07	 Bytes: 5
  %loadMem_47ed07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ed07 = call %struct.Memory* @routine_jmpq_.L_47ed0c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ed07, i64 5, i64 5)
  store %struct.Memory* %call_47ed07, %struct.Memory** %MEMORY

  br label %block_.L_47ed0c

  ; Code: .L_47ed0c:	 RIP: 47ed0c	 Bytes: 0
block_.L_47ed0c:

  ; Code: jmpq .L_47ed11	 RIP: 47ed0c	 Bytes: 5
  %loadMem_47ed0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ed0c = call %struct.Memory* @routine_jmpq_.L_47ed11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ed0c, i64 5, i64 5)
  store %struct.Memory* %call_47ed0c, %struct.Memory** %MEMORY

  br label %block_.L_47ed11

  ; Code: .L_47ed11:	 RIP: 47ed11	 Bytes: 0
block_.L_47ed11:

  ; Code: movl -0x2c8(%rbp), %eax	 RIP: 47ed11	 Bytes: 6
  %loadMem_47ed11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ed11 = call %struct.Memory* @routine_movl_MINUS0x2c8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ed11)
  store %struct.Memory* %call_47ed11, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47ed17	 Bytes: 3
  %loadMem_47ed17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ed17 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ed17)
  store %struct.Memory* %call_47ed17, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c8(%rbp)	 RIP: 47ed1a	 Bytes: 6
  %loadMem_47ed1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ed1a = call %struct.Memory* @routine_movl__eax__MINUS0x2c8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ed1a)
  store %struct.Memory* %call_47ed1a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47eb59	 RIP: 47ed20	 Bytes: 5
  %loadMem_47ed20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ed20 = call %struct.Memory* @routine_jmpq_.L_47eb59(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ed20, i64 -455, i64 5)
  store %struct.Memory* %call_47ed20, %struct.Memory** %MEMORY

  br label %block_.L_47eb59

  ; Code: .L_47ed25:	 RIP: 47ed25	 Bytes: 0
block_.L_47ed25:

  ; Code: jmpq .L_47ed2a	 RIP: 47ed25	 Bytes: 5
  %loadMem_47ed25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ed25 = call %struct.Memory* @routine_jmpq_.L_47ed2a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ed25, i64 5, i64 5)
  store %struct.Memory* %call_47ed25, %struct.Memory** %MEMORY

  br label %block_.L_47ed2a

  ; Code: .L_47ed2a:	 RIP: 47ed2a	 Bytes: 0
block_.L_47ed2a:

  ; Code: jmpq .L_47ed2f	 RIP: 47ed2a	 Bytes: 5
  %loadMem_47ed2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ed2a = call %struct.Memory* @routine_jmpq_.L_47ed2f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ed2a, i64 5, i64 5)
  store %struct.Memory* %call_47ed2a, %struct.Memory** %MEMORY

  br label %block_.L_47ed2f

  ; Code: .L_47ed2f:	 RIP: 47ed2f	 Bytes: 0
block_.L_47ed2f:

  ; Code: jmpq .L_47ed34	 RIP: 47ed2f	 Bytes: 5
  %loadMem_47ed2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ed2f = call %struct.Memory* @routine_jmpq_.L_47ed34(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ed2f, i64 5, i64 5)
  store %struct.Memory* %call_47ed2f, %struct.Memory** %MEMORY

  br label %block_.L_47ed34

  ; Code: .L_47ed34:	 RIP: 47ed34	 Bytes: 0
block_.L_47ed34:

  ; Code: jmpq .L_47ed39	 RIP: 47ed34	 Bytes: 5
  %loadMem_47ed34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ed34 = call %struct.Memory* @routine_jmpq_.L_47ed39(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ed34, i64 5, i64 5)
  store %struct.Memory* %call_47ed34, %struct.Memory** %MEMORY

  br label %block_.L_47ed39

  ; Code: .L_47ed39:	 RIP: 47ed39	 Bytes: 0
block_.L_47ed39:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 47ed39	 Bytes: 3
  %loadMem_47ed39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ed39 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ed39)
  store %struct.Memory* %call_47ed39, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47ed3c	 Bytes: 3
  %loadMem_47ed3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ed3c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ed3c)
  store %struct.Memory* %call_47ed3c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 47ed3f	 Bytes: 3
  %loadMem_47ed3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ed3f = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ed3f)
  store %struct.Memory* %call_47ed3f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47e443	 RIP: 47ed42	 Bytes: 5
  %loadMem_47ed42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ed42 = call %struct.Memory* @routine_jmpq_.L_47e443(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ed42, i64 -2303, i64 5)
  store %struct.Memory* %call_47ed42, %struct.Memory** %MEMORY

  br label %block_.L_47e443

  ; Code: .L_47ed47:	 RIP: 47ed47	 Bytes: 0
block_.L_47ed47:

  ; Code: jmpq .L_47ed4c	 RIP: 47ed47	 Bytes: 5
  %loadMem_47ed47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ed47 = call %struct.Memory* @routine_jmpq_.L_47ed4c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ed47, i64 5, i64 5)
  store %struct.Memory* %call_47ed47, %struct.Memory** %MEMORY

  br label %block_.L_47ed4c

  ; Code: .L_47ed4c:	 RIP: 47ed4c	 Bytes: 0
block_.L_47ed4c:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 47ed4c	 Bytes: 3
  %loadMem_47ed4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ed4c = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ed4c)
  store %struct.Memory* %call_47ed4c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47ed4f	 Bytes: 3
  %loadMem_47ed4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ed4f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ed4f)
  store %struct.Memory* %call_47ed4f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 47ed52	 Bytes: 3
  %loadMem_47ed52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ed52 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ed52)
  store %struct.Memory* %call_47ed52, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47e415	 RIP: 47ed55	 Bytes: 5
  %loadMem_47ed55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ed55 = call %struct.Memory* @routine_jmpq_.L_47e415(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ed55, i64 -2368, i64 5)
  store %struct.Memory* %call_47ed55, %struct.Memory** %MEMORY

  br label %block_.L_47e415

  ; Code: .L_47ed5a:	 RIP: 47ed5a	 Bytes: 0
block_.L_47ed5a:

  ; Code: addq $0x2e0, %rsp	 RIP: 47ed5a	 Bytes: 7
  %loadMem_47ed5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ed5a = call %struct.Memory* @routine_addq__0x2e0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ed5a)
  store %struct.Memory* %call_47ed5a, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 47ed61	 Bytes: 1
  %loadMem_47ed61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ed61 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ed61)
  store %struct.Memory* %call_47ed61, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 47ed62	 Bytes: 1
  %loadMem_47ed62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ed62 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ed62)
  store %struct.Memory* %call_47ed62, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_47ed62
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

define %struct.Memory* @routine_subq__0x2e0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 736)
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

define %struct.Memory* @routine_jge_.L_47ed5a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_47e43c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
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

define %struct.Memory* @routine_jmpq_.L_47ed4c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x78__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 120)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_47ed47(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_jge_.L_47e47f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47ed47(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

define %struct.Memory* @routine_je_.L_47e4bb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_47e9aa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
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










define %struct.Memory* @routine_jne_.L_47e50f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
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


define %struct.Memory* @routine_movl__0x1__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_jmpq_.L_47e525(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jne_.L_47e54f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_47ed39(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_jne_.L_47e586(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_jne_.L_47e5ba(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_cmpl__0x0__0x228__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 552
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_leaq_MINUS0x2b0__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 688
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x18__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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

define %struct.Memory* @routine_callq_.extended_chainlinks(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 40
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_47e9a5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jge_.L_47e992(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x2b0__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, -688
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__ecx__MINUS0x2b4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 692
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__ecx__MINUS0x2b8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 696
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0x2b4__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 692
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movslq_MINUS0x2b8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 696
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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


define %struct.Memory* @routine_je_.L_47e646(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47e984(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_47e696(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x2b4__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 692
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x2b8__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 696
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.disconnect(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_47e696(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_jne_.L_47e6e6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_je_.L_47e6e6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_callq_.string_connect(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_je_.L_47e718(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_47e718(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_jne_.L_47e768(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}






























define %struct.Memory* @routine_movq__0x581daa___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x581daa_type* @G__0x581daa to i64))
  ret %struct.Memory* %11
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




define %struct.Memory* @routine_je_.L_47e97f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_47e834(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


























define %struct.Memory* @routine_jne_.L_47e834(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
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

define %struct.Memory* @routine_andl__0x800___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 2048)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jne_.L_47e7f6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_47e820(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x582c08___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x582c08_type* @G__0x582c08 to i64))
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


define %struct.Memory* @routine_movl_MINUS0x2b4__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 692
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x2b8__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 696
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x18__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movl__eax__MINUS0x2d0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 720
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x2b4__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 692
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x2b8__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 696
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.add_connection_move(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_47e8d7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_je_.L_47e8d7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_jne_.L_47e899(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_47e8c3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x582c49___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x582c49_type* @G__0x582c49 to i64))
  ret %struct.Memory* %11
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








define %struct.Memory* @routine_callq_.add_cut_move(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_47e97a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


































define %struct.Memory* @routine_jne_.L_47e93c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_47e966(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x582c84___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x582c84_type* @G__0x582c84 to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_movl__eax__MINUS0x2d8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 728
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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










define %struct.Memory* @routine_jmpq_.L_47e5ed(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_47e997(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jmpq_.L_47e5d8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_47ed34(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jne_.L_47ead1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
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


define %struct.Memory* @routine_movq_0xab0fe0___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0xab0fe0_type* @G_0xab0fe0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_addq__rsi___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RSI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_addq__rax___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_0x2c__rdx____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDX
  %15 = add i64 %14, 44
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_47eacc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movq__rax___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_addq__rsi___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RSI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_0x4__rdi____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0x68___rsi___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 104)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__rsi___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RSI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_0x4__rdx__rsi_4____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RSI
  %14 = mul i64 %13, 4
  %15 = add i64 %12, 4
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 5
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_imulq__0x68___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 104)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__rdx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RDX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl___rcx____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__r8d__MINUS0x2bc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 700
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0x2bc__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 700
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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




define %struct.Memory* @routine_movl___rax____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 4
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_47eab9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
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






define %struct.Memory* @routine_movl_MINUS0x2bc__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 700
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.add_strategical_defense_move(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47eabe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_47e9ea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_47ed2f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jne_.L_47ed2a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_callq_.cut_possible(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_47ed2a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movslq_0x4__rdx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0xb8a010___rcx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 12099600
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__esi__MINUS0x2c0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 704
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_movl_0xb051b0___rax_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11555248
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__esi__MINUS0x2c4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 708
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x15__MINUS0x2c8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 712
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 21)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x190__MINUS0x2c8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 712
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 400)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_47ed25(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x2c8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 712
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_je_.L_47ed0c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_47ed0c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movl_MINUS0x2c8__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 712
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_movl_MINUS0x2c8__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 712
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.bdist(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jg_.L_47ed0c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x8__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 8)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_47ed07(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x2c8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 712
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__eax__MINUS0x2cc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 716
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0x2cc__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 716
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


define %struct.Memory* @routine_je_.L_47ecf4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x2cc__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 716
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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


define %struct.Memory* @routine_jne_.L_47ecf4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl_MINUS0x2cc__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 716
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x2c0__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 704
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.is_same_worm(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl_MINUS0x2c4__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 708
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movq__0x582cc6___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x582cc6_type* @G__0x582cc6 to i64))
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


define %struct.Memory* @routine_movl_MINUS0x2c0__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 704
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_je_.L_47ecef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_47ecb8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movl_MINUS0x2cc__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 716
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x2c0__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 704
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}
















define %struct.Memory* @routine_jne_.L_47ecea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movl_MINUS0x2c4__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 708
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jmpq_.L_47ecf4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_47ecf9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_47ebd5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_47ed0c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_47ed11(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movl__eax__MINUS0x2c8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 712
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_47eb59(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_47ed2a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jmpq_.L_47e443(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jmpq_.L_47e415(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

define %struct.Memory* @routine_addq__0x2e0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 736)
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

