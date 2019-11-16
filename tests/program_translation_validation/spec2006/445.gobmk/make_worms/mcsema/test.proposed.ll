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

declare %struct.Memory* @sub_487530.build_worms(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_415e70.stones_on_board(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_487730.compute_effective_worm_sizes(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4877a0.compute_unconditional_status(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4879c0.find_worm_attacks_and_defenses(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_488130.ping_cave(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_488480.propagate_worm(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_488610.is_same_worm(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_410ed0.count_common_libs(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_488660.genus(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_408e30.trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4774b0.increase_depth_values(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_46a780.find_defense(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_45db40.attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_488740.change_attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_488800.change_defense(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4774c0.decrease_depth_values(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_477550.does_defend(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_488880.find_lunch(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_488b80.find_worm_threats(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_488e80.examine_cavity(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0xab0f24_type = type <{ [4 x i8] }>
@G_0xab0f24= global %G_0xab0f24_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xab0fb4_type = type <{ [1 x i8] }>
@G_0xab0fb4= global %G_0xab0fb4_type <{ [1 x i8] c"\00" }>
%G_0xb54ce4_type = type <{ [1 x i8] }>
@G_0xb54ce4= global %G_0xb54ce4_type <{ [1 x i8] c"\00" }>
%G__0x57a100_type = type <{ [8 x i8] }>
@G__0x57a100= global %G__0x57a100_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x582e3b_type = type <{ [8 x i8] }>
@G__0x582e3b= global %G__0x582e3b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x582eee_type = type <{ [8 x i8] }>
@G__0x582eee= global %G__0x582eee_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x582f0a_type = type <{ [8 x i8] }>
@G__0x582f0a= global %G__0x582f0a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x582f2f_type = type <{ [8 x i8] }>
@G__0x582f2f= global %G__0x582f2f_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x582f5f_type = type <{ [8 x i8] }>
@G__0x582f5f= global %G__0x582f5f_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x582f6a_type = type <{ [8 x i8] }>
@G__0x582f6a= global %G__0x582f6a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x582f76_type = type <{ [8 x i8] }>
@G__0x582f76= global %G__0x582f76_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x582fa9_type = type <{ [8 x i8] }>
@G__0x582fa9= global %G__0x582fa9_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x582fdd_type = type <{ [8 x i8] }>
@G__0x582fdd= global %G__0x582fdd_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x582ff9_type = type <{ [8 x i8] }>
@G__0x582ff9= global %G__0x582ff9_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xb0eff0_type = type <{ [8 x i8] }>
@G__0xb0eff0= global %G__0xb0eff0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @make_worms(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .make_worms:	 RIP: 486130	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 486130	 Bytes: 1
  %loadMem_486130 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486130 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486130)
  store %struct.Memory* %call_486130, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 486131	 Bytes: 3
  %loadMem_486131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486131 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486131)
  store %struct.Memory* %call_486131, %struct.Memory** %MEMORY

  ; Code: subq $0x6c0, %rsp	 RIP: 486134	 Bytes: 7
  %loadMem_486134 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486134 = call %struct.Memory* @routine_subq__0x6c0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486134)
  store %struct.Memory* %call_486134, %struct.Memory** %MEMORY

  ; Code: callq .build_worms	 RIP: 48613b	 Bytes: 5
  %loadMem1_48613b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48613b = call %struct.Memory* @routine_callq_.build_worms(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48613b, i64 5109, i64 5, i64 5)
  store %struct.Memory* %call1_48613b, %struct.Memory** %MEMORY

  %loadMem2_48613b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48613b = load i64, i64* %3
  %call2_48613b = call %struct.Memory* @sub_487530.build_worms(%struct.State* %0, i64  %loadPC_48613b, %struct.Memory* %loadMem2_48613b)
  store %struct.Memory* %call2_48613b, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %edi	 RIP: 486140	 Bytes: 5
  %loadMem_486140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486140 = call %struct.Memory* @routine_movl__0x3___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486140)
  store %struct.Memory* %call_486140, %struct.Memory** %MEMORY

  ; Code: callq .stones_on_board	 RIP: 486145	 Bytes: 5
  %loadMem1_486145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_486145 = call %struct.Memory* @routine_callq_.stones_on_board(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_486145, i64 -459477, i64 5, i64 5)
  store %struct.Memory* %call1_486145, %struct.Memory** %MEMORY

  %loadMem2_486145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_486145 = load i64, i64* %3
  %call2_486145 = call %struct.Memory* @sub_415e70.stones_on_board(%struct.State* %0, i64  %loadPC_486145, %struct.Memory* %loadMem2_486145)
  store %struct.Memory* %call2_486145, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 48614a	 Bytes: 3
  %loadMem_48614a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48614a = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48614a)
  store %struct.Memory* %call_48614a, %struct.Memory** %MEMORY

  ; Code: jne .L_486158	 RIP: 48614d	 Bytes: 6
  %loadMem_48614d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48614d = call %struct.Memory* @routine_jne_.L_486158(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48614d, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_48614d, %struct.Memory** %MEMORY

  %loadBr_48614d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48614d = icmp eq i8 %loadBr_48614d, 1
  br i1 %cmpBr_48614d, label %block_.L_486158, label %block_486153

block_486153:
  ; Code: jmpq .L_48751a	 RIP: 486153	 Bytes: 5
  %loadMem_486153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486153 = call %struct.Memory* @routine_jmpq_.L_48751a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486153, i64 5063, i64 5)
  store %struct.Memory* %call_486153, %struct.Memory** %MEMORY

  br label %block_.L_48751a

  ; Code: .L_486158:	 RIP: 486158	 Bytes: 0
block_.L_486158:

  ; Code: callq .compute_effective_worm_sizes	 RIP: 486158	 Bytes: 5
  %loadMem1_486158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_486158 = call %struct.Memory* @routine_callq_.compute_effective_worm_sizes(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_486158, i64 5592, i64 5, i64 5)
  store %struct.Memory* %call1_486158, %struct.Memory** %MEMORY

  %loadMem2_486158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_486158 = load i64, i64* %3
  %call2_486158 = call %struct.Memory* @sub_487730.compute_effective_worm_sizes(%struct.State* %0, i64  %loadPC_486158, %struct.Memory* %loadMem2_486158)
  store %struct.Memory* %call2_486158, %struct.Memory** %MEMORY

  ; Code: callq .compute_unconditional_status	 RIP: 48615d	 Bytes: 5
  %loadMem1_48615d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48615d = call %struct.Memory* @routine_callq_.compute_unconditional_status(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48615d, i64 5699, i64 5, i64 5)
  store %struct.Memory* %call1_48615d, %struct.Memory** %MEMORY

  %loadMem2_48615d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48615d = load i64, i64* %3
  %call2_48615d = call %struct.Memory* @sub_4877a0.compute_unconditional_status(%struct.State* %0, i64  %loadPC_48615d, %struct.Memory* %loadMem2_48615d)
  store %struct.Memory* %call2_48615d, %struct.Memory** %MEMORY

  ; Code: callq .find_worm_attacks_and_defenses	 RIP: 486162	 Bytes: 5
  %loadMem1_486162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_486162 = call %struct.Memory* @routine_callq_.find_worm_attacks_and_defenses(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_486162, i64 6238, i64 5, i64 5)
  store %struct.Memory* %call1_486162, %struct.Memory** %MEMORY

  %loadMem2_486162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_486162 = load i64, i64* %3
  %call2_486162 = call %struct.Memory* @sub_4879c0.find_worm_attacks_and_defenses(%struct.State* %0, i64  %loadPC_486162, %struct.Memory* %loadMem2_486162)
  store %struct.Memory* %call2_486162, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb54ce4	 RIP: 486167	 Bytes: 8
  %loadMem_486167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486167 = call %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486167)
  store %struct.Memory* %call_486167, %struct.Memory** %MEMORY

  ; Code: jne .L_48617a	 RIP: 48616f	 Bytes: 6
  %loadMem_48616f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48616f = call %struct.Memory* @routine_jne_.L_48617a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48616f, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_48616f, %struct.Memory** %MEMORY

  %loadBr_48616f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48616f = icmp eq i8 %loadBr_48616f, 1
  br i1 %cmpBr_48616f, label %block_.L_48617a, label %block_486175

block_486175:
  ; Code: jmpq .L_4861a2	 RIP: 486175	 Bytes: 5
  %loadMem_486175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486175 = call %struct.Memory* @routine_jmpq_.L_4861a2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486175, i64 45, i64 5)
  store %struct.Memory* %call_486175, %struct.Memory** %MEMORY

  br label %block_.L_4861a2

  ; Code: .L_48617a:	 RIP: 48617a	 Bytes: 0
block_.L_48617a:

  ; Code: movq $0x582e3b, %rdi	 RIP: 48617a	 Bytes: 10
  %loadMem_48617a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48617a = call %struct.Memory* @routine_movq__0x582e3b___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48617a)
  store %struct.Memory* %call_48617a, %struct.Memory** %MEMORY

  ; Code: movl $0x6c, %esi	 RIP: 486184	 Bytes: 5
  %loadMem_486184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486184 = call %struct.Memory* @routine_movl__0x6c___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486184)
  store %struct.Memory* %call_486184, %struct.Memory** %MEMORY

  ; Code: movq $0x57a100, %rdx	 RIP: 486189	 Bytes: 10
  %loadMem_486189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486189 = call %struct.Memory* @routine_movq__0x57a100___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486189)
  store %struct.Memory* %call_486189, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 486193	 Bytes: 5
  %loadMem_486193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486193 = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486193)
  store %struct.Memory* %call_486193, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 486198	 Bytes: 2
  %loadMem_486198 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486198 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486198)
  store %struct.Memory* %call_486198, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 48619a	 Bytes: 3
  %loadMem_48619a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48619a = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48619a)
  store %struct.Memory* %call_48619a, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 48619d	 Bytes: 5
  %loadMem1_48619d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48619d = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48619d, i64 -213261, i64 5, i64 5)
  store %struct.Memory* %call1_48619d, %struct.Memory** %MEMORY

  %loadMem2_48619d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48619d = load i64, i64* %3
  %call2_48619d = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_48619d, %struct.Memory* %loadMem2_48619d)
  store %struct.Memory* %call2_48619d, %struct.Memory** %MEMORY

  ; Code: .L_4861a2:	 RIP: 4861a2	 Bytes: 0
  br label %block_.L_4861a2
block_.L_4861a2:

  ; Code: movl $0x15, -0x4(%rbp)	 RIP: 4861a2	 Bytes: 7
  %loadMem_4861a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4861a2 = call %struct.Memory* @routine_movl__0x15__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4861a2)
  store %struct.Memory* %call_4861a2, %struct.Memory** %MEMORY

  ; Code: .L_4861a9:	 RIP: 4861a9	 Bytes: 0
  br label %block_.L_4861a9
block_.L_4861a9:

  ; Code: cmpl $0x190, -0x4(%rbp)	 RIP: 4861a9	 Bytes: 7
  %loadMem_4861a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4861a9 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4861a9)
  store %struct.Memory* %call_4861a9, %struct.Memory** %MEMORY

  ; Code: jge .L_4862f4	 RIP: 4861b0	 Bytes: 6
  %loadMem_4861b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4861b0 = call %struct.Memory* @routine_jge_.L_4862f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4861b0, i8* %BRANCH_TAKEN, i64 324, i64 6, i64 6)
  store %struct.Memory* %call_4861b0, %struct.Memory** %MEMORY

  %loadBr_4861b0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4861b0 = icmp eq i8 %loadBr_4861b0, 1
  br i1 %cmpBr_4861b0, label %block_.L_4862f4, label %block_4861b6

block_4861b6:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 4861b6	 Bytes: 4
  %loadMem_4861b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4861b6 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4861b6)
  store %struct.Memory* %call_4861b6, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 4861ba	 Bytes: 8
  %loadMem_4861ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4861ba = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4861ba)
  store %struct.Memory* %call_4861ba, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %ecx	 RIP: 4861c2	 Bytes: 3
  %loadMem_4861c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4861c2 = call %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4861c2)
  store %struct.Memory* %call_4861c2, %struct.Memory** %MEMORY

  ; Code: je .L_4861e0	 RIP: 4861c5	 Bytes: 6
  %loadMem_4861c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4861c5 = call %struct.Memory* @routine_je_.L_4861e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4861c5, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_4861c5, %struct.Memory** %MEMORY

  %loadBr_4861c5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4861c5 = icmp eq i8 %loadBr_4861c5, 1
  br i1 %cmpBr_4861c5, label %block_.L_4861e0, label %block_4861cb

block_4861cb:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 4861cb	 Bytes: 4
  %loadMem_4861cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4861cb = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4861cb)
  store %struct.Memory* %call_4861cb, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 4861cf	 Bytes: 8
  %loadMem_4861cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4861cf = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4861cf)
  store %struct.Memory* %call_4861cf, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %ecx	 RIP: 4861d7	 Bytes: 3
  %loadMem_4861d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4861d7 = call %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4861d7)
  store %struct.Memory* %call_4861d7, %struct.Memory** %MEMORY

  ; Code: jne .L_4862e1	 RIP: 4861da	 Bytes: 6
  %loadMem_4861da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4861da = call %struct.Memory* @routine_jne_.L_4862e1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4861da, i8* %BRANCH_TAKEN, i64 263, i64 6, i64 6)
  store %struct.Memory* %call_4861da, %struct.Memory** %MEMORY

  %loadBr_4861da = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4861da = icmp eq i8 %loadBr_4861da, 1
  br i1 %cmpBr_4861da, label %block_.L_4862e1, label %block_.L_4861e0

  ; Code: .L_4861e0:	 RIP: 4861e0	 Bytes: 0
block_.L_4861e0:

  ; Code: movl -0x4(%rbp), %edi	 RIP: 4861e0	 Bytes: 3
  %loadMem_4861e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4861e0 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4861e0)
  store %struct.Memory* %call_4861e0, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 4861e3	 Bytes: 3
  %loadMem_4861e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4861e3 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4861e3)
  store %struct.Memory* %call_4861e3, %struct.Memory** %MEMORY

  ; Code: callq .is_worm_origin	 RIP: 4861e6	 Bytes: 5
  %loadMem1_4861e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4861e6 = call %struct.Memory* @routine_callq_.is_worm_origin(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4861e6, i64 7946, i64 5, i64 5)
  store %struct.Memory* %call1_4861e6, %struct.Memory** %MEMORY

  %loadMem2_4861e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4861e6 = load i64, i64* %3
  %call2_4861e6 = call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* %0, i64  %loadPC_4861e6, %struct.Memory* %loadMem2_4861e6)
  store %struct.Memory* %call2_4861e6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4861eb	 Bytes: 3
  %loadMem_4861eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4861eb = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4861eb)
  store %struct.Memory* %call_4861eb, %struct.Memory** %MEMORY

  ; Code: je .L_4862e1	 RIP: 4861ee	 Bytes: 6
  %loadMem_4861ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4861ee = call %struct.Memory* @routine_je_.L_4862e1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4861ee, i8* %BRANCH_TAKEN, i64 243, i64 6, i64 6)
  store %struct.Memory* %call_4861ee, %struct.Memory** %MEMORY

  %loadBr_4861ee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4861ee = icmp eq i8 %loadBr_4861ee, 1
  br i1 %cmpBr_4861ee, label %block_.L_4862e1, label %block_4861f4

block_4861f4:
  ; Code: leaq -0x8(%rbp), %rsi	 RIP: 4861f4	 Bytes: 4
  %loadMem_4861f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4861f4 = call %struct.Memory* @routine_leaq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4861f4)
  store %struct.Memory* %call_4861f4, %struct.Memory** %MEMORY

  ; Code: leaq -0xc(%rbp), %rdx	 RIP: 4861f8	 Bytes: 4
  %loadMem_4861f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4861f8 = call %struct.Memory* @routine_leaq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4861f8)
  store %struct.Memory* %call_4861f8, %struct.Memory** %MEMORY

  ; Code: leaq -0x10(%rbp), %rcx	 RIP: 4861fc	 Bytes: 4
  %loadMem_4861fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4861fc = call %struct.Memory* @routine_leaq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4861fc)
  store %struct.Memory* %call_4861fc, %struct.Memory** %MEMORY

  ; Code: leaq -0x14(%rbp), %r8	 RIP: 486200	 Bytes: 4
  %loadMem_486200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486200 = call %struct.Memory* @routine_leaq_MINUS0x14__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486200)
  store %struct.Memory* %call_486200, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edi	 RIP: 486204	 Bytes: 3
  %loadMem_486204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486204 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486204)
  store %struct.Memory* %call_486204, %struct.Memory** %MEMORY

  ; Code: callq .ping_cave	 RIP: 486207	 Bytes: 5
  %loadMem1_486207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_486207 = call %struct.Memory* @routine_callq_.ping_cave(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_486207, i64 7977, i64 5, i64 5)
  store %struct.Memory* %call1_486207, %struct.Memory** %MEMORY

  %loadMem2_486207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_486207 = load i64, i64* %3
  %call2_486207 = call %struct.Memory* @sub_488130.ping_cave(%struct.State* %0, i64  %loadPC_486207, %struct.Memory* %loadMem2_486207)
  store %struct.Memory* %call2_486207, %struct.Memory** %MEMORY

  ; Code: movq $0xb0eff0, %rcx	 RIP: 48620c	 Bytes: 10
  %loadMem_48620c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48620c = call %struct.Memory* @routine_movq__0xb0eff0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48620c)
  store %struct.Memory* %call_48620c, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 486216	 Bytes: 4
  %loadMem_486216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486216 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486216)
  store %struct.Memory* %call_486216, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rdx, %rdx	 RIP: 48621a	 Bytes: 7
  %loadMem_48621a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48621a = call %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48621a)
  store %struct.Memory* %call_48621a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 486221	 Bytes: 3
  %loadMem_486221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486221 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486221)
  store %struct.Memory* %call_486221, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rcx), %edi	 RIP: 486224	 Bytes: 3
  %loadMem_486224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486224 = call %struct.Memory* @routine_movl_0x10__rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486224)
  store %struct.Memory* %call_486224, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %edi	 RIP: 486227	 Bytes: 3
  %loadMem_486227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486227 = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486227)
  store %struct.Memory* %call_486227, %struct.Memory** %MEMORY

  ; Code: jne .L_486235	 RIP: 48622a	 Bytes: 6
  %loadMem_48622a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48622a = call %struct.Memory* @routine_jne_.L_486235(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48622a, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_48622a, %struct.Memory** %MEMORY

  %loadBr_48622a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48622a = icmp eq i8 %loadBr_48622a, 1
  br i1 %cmpBr_48622a, label %block_.L_486235, label %block_486230

block_486230:
  ; Code: jmpq .L_48625d	 RIP: 486230	 Bytes: 5
  %loadMem_486230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486230 = call %struct.Memory* @routine_jmpq_.L_48625d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486230, i64 45, i64 5)
  store %struct.Memory* %call_486230, %struct.Memory** %MEMORY

  br label %block_.L_48625d

  ; Code: .L_486235:	 RIP: 486235	 Bytes: 0
block_.L_486235:

  ; Code: movq $0x582e3b, %rdi	 RIP: 486235	 Bytes: 10
  %loadMem_486235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486235 = call %struct.Memory* @routine_movq__0x582e3b___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486235)
  store %struct.Memory* %call_486235, %struct.Memory** %MEMORY

  ; Code: movl $0x74, %esi	 RIP: 48623f	 Bytes: 5
  %loadMem_48623f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48623f = call %struct.Memory* @routine_movl__0x74___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48623f)
  store %struct.Memory* %call_48623f, %struct.Memory** %MEMORY

  ; Code: movq $0x582eee, %rdx	 RIP: 486244	 Bytes: 10
  %loadMem_486244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486244 = call %struct.Memory* @routine_movq__0x582eee___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486244)
  store %struct.Memory* %call_486244, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 48624e	 Bytes: 5
  %loadMem_48624e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48624e = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48624e)
  store %struct.Memory* %call_48624e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 486253	 Bytes: 2
  %loadMem_486253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486253 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486253)
  store %struct.Memory* %call_486253, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 486255	 Bytes: 3
  %loadMem_486255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486255 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486255)
  store %struct.Memory* %call_486255, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 486258	 Bytes: 5
  %loadMem1_486258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_486258 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_486258, i64 -213448, i64 5, i64 5)
  store %struct.Memory* %call1_486258, %struct.Memory** %MEMORY

  %loadMem2_486258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_486258 = load i64, i64* %3
  %call2_486258 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_486258, %struct.Memory* %loadMem2_486258)
  store %struct.Memory* %call2_486258, %struct.Memory** %MEMORY

  ; Code: .L_48625d:	 RIP: 48625d	 Bytes: 0
  br label %block_.L_48625d
block_.L_48625d:

  ; Code: movq $0xb0eff0, %rax	 RIP: 48625d	 Bytes: 10
  %loadMem_48625d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48625d = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48625d)
  store %struct.Memory* %call_48625d, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 486267	 Bytes: 3
  %loadMem_486267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486267 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486267)
  store %struct.Memory* %call_486267, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 48626a	 Bytes: 4
  %loadMem_48626a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48626a = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48626a)
  store %struct.Memory* %call_48626a, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rdx, %rdx	 RIP: 48626e	 Bytes: 7
  %loadMem_48626e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48626e = call %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48626e)
  store %struct.Memory* %call_48626e, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 486275	 Bytes: 3
  %loadMem_486275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486275 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486275)
  store %struct.Memory* %call_486275, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 486278	 Bytes: 3
  %loadMem_486278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486278 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486278)
  store %struct.Memory* %call_486278, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x14(%rsi)	 RIP: 48627b	 Bytes: 3
  %loadMem_48627b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48627b = call %struct.Memory* @routine_movl__ecx__0x14__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48627b)
  store %struct.Memory* %call_48627b, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %ecx	 RIP: 48627e	 Bytes: 3
  %loadMem_48627e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48627e = call %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48627e)
  store %struct.Memory* %call_48627e, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 486281	 Bytes: 4
  %loadMem_486281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486281 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486281)
  store %struct.Memory* %call_486281, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rdx, %rdx	 RIP: 486285	 Bytes: 7
  %loadMem_486285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486285 = call %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486285)
  store %struct.Memory* %call_486285, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 48628c	 Bytes: 3
  %loadMem_48628c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48628c = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48628c)
  store %struct.Memory* %call_48628c, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 48628f	 Bytes: 3
  %loadMem_48628f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48628f = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48628f)
  store %struct.Memory* %call_48628f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18(%rsi)	 RIP: 486292	 Bytes: 3
  %loadMem_486292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486292 = call %struct.Memory* @routine_movl__ecx__0x18__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486292)
  store %struct.Memory* %call_486292, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 486295	 Bytes: 3
  %loadMem_486295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486295 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486295)
  store %struct.Memory* %call_486295, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 486298	 Bytes: 4
  %loadMem_486298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486298 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486298)
  store %struct.Memory* %call_486298, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rdx, %rdx	 RIP: 48629c	 Bytes: 7
  %loadMem_48629c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48629c = call %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48629c)
  store %struct.Memory* %call_48629c, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4862a3	 Bytes: 3
  %loadMem_4862a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4862a3 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4862a3)
  store %struct.Memory* %call_4862a3, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 4862a6	 Bytes: 3
  %loadMem_4862a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4862a6 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4862a6)
  store %struct.Memory* %call_4862a6, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1c(%rsi)	 RIP: 4862a9	 Bytes: 3
  %loadMem_4862a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4862a9 = call %struct.Memory* @routine_movl__ecx__0x1c__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4862a9)
  store %struct.Memory* %call_4862a9, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 4862ac	 Bytes: 4
  %loadMem_4862ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4862ac = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4862ac)
  store %struct.Memory* %call_4862ac, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rdx, %rdx	 RIP: 4862b0	 Bytes: 7
  %loadMem_4862b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4862b0 = call %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4862b0)
  store %struct.Memory* %call_4862b0, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4862b7	 Bytes: 3
  %loadMem_4862b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4862b7 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4862b7)
  store %struct.Memory* %call_4862b7, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 4862ba	 Bytes: 3
  %loadMem_4862ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4862ba = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4862ba)
  store %struct.Memory* %call_4862ba, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x24(%rsi)	 RIP: 4862bd	 Bytes: 7
  %loadMem_4862bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4862bd = call %struct.Memory* @routine_movl__0x0__0x24__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4862bd)
  store %struct.Memory* %call_4862bd, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 4862c4	 Bytes: 4
  %loadMem_4862c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4862c4 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4862c4)
  store %struct.Memory* %call_4862c4, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rdx, %rdx	 RIP: 4862c8	 Bytes: 7
  %loadMem_4862c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4862c8 = call %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4862c8)
  store %struct.Memory* %call_4862c8, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4862cf	 Bytes: 3
  %loadMem_4862cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4862cf = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4862cf)
  store %struct.Memory* %call_4862cf, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x28(%rax)	 RIP: 4862d2	 Bytes: 7
  %loadMem_4862d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4862d2 = call %struct.Memory* @routine_movl__0x0__0x28__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4862d2)
  store %struct.Memory* %call_4862d2, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edi	 RIP: 4862d9	 Bytes: 3
  %loadMem_4862d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4862d9 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4862d9)
  store %struct.Memory* %call_4862d9, %struct.Memory** %MEMORY

  ; Code: callq .propagate_worm	 RIP: 4862dc	 Bytes: 5
  %loadMem1_4862dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4862dc = call %struct.Memory* @routine_callq_.propagate_worm(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4862dc, i64 8612, i64 5, i64 5)
  store %struct.Memory* %call1_4862dc, %struct.Memory** %MEMORY

  %loadMem2_4862dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4862dc = load i64, i64* %3
  %call2_4862dc = call %struct.Memory* @sub_488480.propagate_worm(%struct.State* %0, i64  %loadPC_4862dc, %struct.Memory* %loadMem2_4862dc)
  store %struct.Memory* %call2_4862dc, %struct.Memory** %MEMORY

  ; Code: .L_4862e1:	 RIP: 4862e1	 Bytes: 0
  br label %block_.L_4862e1
block_.L_4862e1:

  ; Code: jmpq .L_4862e6	 RIP: 4862e1	 Bytes: 5
  %loadMem_4862e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4862e1 = call %struct.Memory* @routine_jmpq_.L_4862e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4862e1, i64 5, i64 5)
  store %struct.Memory* %call_4862e1, %struct.Memory** %MEMORY

  br label %block_.L_4862e6

  ; Code: .L_4862e6:	 RIP: 4862e6	 Bytes: 0
block_.L_4862e6:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4862e6	 Bytes: 3
  %loadMem_4862e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4862e6 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4862e6)
  store %struct.Memory* %call_4862e6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4862e9	 Bytes: 3
  %loadMem_4862e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4862e9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4862e9)
  store %struct.Memory* %call_4862e9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 4862ec	 Bytes: 3
  %loadMem_4862ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4862ec = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4862ec)
  store %struct.Memory* %call_4862ec, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4861a9	 RIP: 4862ef	 Bytes: 5
  %loadMem_4862ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4862ef = call %struct.Memory* @routine_jmpq_.L_4861a9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4862ef, i64 -326, i64 5)
  store %struct.Memory* %call_4862ef, %struct.Memory** %MEMORY

  br label %block_.L_4861a9

  ; Code: .L_4862f4:	 RIP: 4862f4	 Bytes: 0
block_.L_4862f4:

  ; Code: cmpl $0x0, 0xb54ce4	 RIP: 4862f4	 Bytes: 8
  %loadMem_4862f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4862f4 = call %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4862f4)
  store %struct.Memory* %call_4862f4, %struct.Memory** %MEMORY

  ; Code: jne .L_486307	 RIP: 4862fc	 Bytes: 6
  %loadMem_4862fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4862fc = call %struct.Memory* @routine_jne_.L_486307(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4862fc, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4862fc, %struct.Memory** %MEMORY

  %loadBr_4862fc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4862fc = icmp eq i8 %loadBr_4862fc, 1
  br i1 %cmpBr_4862fc, label %block_.L_486307, label %block_486302

block_486302:
  ; Code: jmpq .L_48632f	 RIP: 486302	 Bytes: 5
  %loadMem_486302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486302 = call %struct.Memory* @routine_jmpq_.L_48632f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486302, i64 45, i64 5)
  store %struct.Memory* %call_486302, %struct.Memory** %MEMORY

  br label %block_.L_48632f

  ; Code: .L_486307:	 RIP: 486307	 Bytes: 0
block_.L_486307:

  ; Code: movq $0x582e3b, %rdi	 RIP: 486307	 Bytes: 10
  %loadMem_486307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486307 = call %struct.Memory* @routine_movq__0x582e3b___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486307)
  store %struct.Memory* %call_486307, %struct.Memory** %MEMORY

  ; Code: movl $0x7e, %esi	 RIP: 486311	 Bytes: 5
  %loadMem_486311 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486311 = call %struct.Memory* @routine_movl__0x7e___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486311)
  store %struct.Memory* %call_486311, %struct.Memory** %MEMORY

  ; Code: movq $0x57a100, %rdx	 RIP: 486316	 Bytes: 10
  %loadMem_486316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486316 = call %struct.Memory* @routine_movq__0x57a100___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486316)
  store %struct.Memory* %call_486316, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 486320	 Bytes: 5
  %loadMem_486320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486320 = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486320)
  store %struct.Memory* %call_486320, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 486325	 Bytes: 2
  %loadMem_486325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486325 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486325)
  store %struct.Memory* %call_486325, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 486327	 Bytes: 3
  %loadMem_486327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486327 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486327)
  store %struct.Memory* %call_486327, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 48632a	 Bytes: 5
  %loadMem1_48632a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48632a = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48632a, i64 -213658, i64 5, i64 5)
  store %struct.Memory* %call1_48632a, %struct.Memory** %MEMORY

  %loadMem2_48632a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48632a = load i64, i64* %3
  %call2_48632a = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_48632a, %struct.Memory* %loadMem2_48632a)
  store %struct.Memory* %call2_48632a, %struct.Memory** %MEMORY

  ; Code: .L_48632f:	 RIP: 48632f	 Bytes: 0
  br label %block_.L_48632f
block_.L_48632f:

  ; Code: movl $0x15, -0x4(%rbp)	 RIP: 48632f	 Bytes: 7
  %loadMem_48632f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48632f = call %struct.Memory* @routine_movl__0x15__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48632f)
  store %struct.Memory* %call_48632f, %struct.Memory** %MEMORY

  ; Code: .L_486336:	 RIP: 486336	 Bytes: 0
  br label %block_.L_486336
block_.L_486336:

  ; Code: cmpl $0x190, -0x4(%rbp)	 RIP: 486336	 Bytes: 7
  %loadMem_486336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486336 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486336)
  store %struct.Memory* %call_486336, %struct.Memory** %MEMORY

  ; Code: jge .L_486634	 RIP: 48633d	 Bytes: 6
  %loadMem_48633d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48633d = call %struct.Memory* @routine_jge_.L_486634(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48633d, i8* %BRANCH_TAKEN, i64 759, i64 6, i64 6)
  store %struct.Memory* %call_48633d, %struct.Memory** %MEMORY

  %loadBr_48633d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48633d = icmp eq i8 %loadBr_48633d, 1
  br i1 %cmpBr_48633d, label %block_.L_486634, label %block_486343

block_486343:
  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 486343	 Bytes: 7
  %loadMem_486343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486343 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486343)
  store %struct.Memory* %call_486343, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 48634a	 Bytes: 7
  %loadMem_48634a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48634a = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48634a)
  store %struct.Memory* %call_48634a, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rax	 RIP: 486351	 Bytes: 4
  %loadMem_486351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486351 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486351)
  store %struct.Memory* %call_486351, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 486355	 Bytes: 8
  %loadMem_486355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486355 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486355)
  store %struct.Memory* %call_486355, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %ecx	 RIP: 48635d	 Bytes: 3
  %loadMem_48635d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48635d = call %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48635d)
  store %struct.Memory* %call_48635d, %struct.Memory** %MEMORY

  ; Code: je .L_48637b	 RIP: 486360	 Bytes: 6
  %loadMem_486360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486360 = call %struct.Memory* @routine_je_.L_48637b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486360, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_486360, %struct.Memory** %MEMORY

  %loadBr_486360 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486360 = icmp eq i8 %loadBr_486360, 1
  br i1 %cmpBr_486360, label %block_.L_48637b, label %block_486366

block_486366:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 486366	 Bytes: 4
  %loadMem_486366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486366 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486366)
  store %struct.Memory* %call_486366, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 48636a	 Bytes: 8
  %loadMem_48636a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48636a = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48636a)
  store %struct.Memory* %call_48636a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %ecx	 RIP: 486372	 Bytes: 3
  %loadMem_486372 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486372 = call %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486372)
  store %struct.Memory* %call_486372, %struct.Memory** %MEMORY

  ; Code: jne .L_48638f	 RIP: 486375	 Bytes: 6
  %loadMem_486375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486375 = call %struct.Memory* @routine_jne_.L_48638f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486375, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_486375, %struct.Memory** %MEMORY

  %loadBr_486375 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486375 = icmp eq i8 %loadBr_486375, 1
  br i1 %cmpBr_486375, label %block_.L_48638f, label %block_.L_48637b

  ; Code: .L_48637b:	 RIP: 48637b	 Bytes: 0
block_.L_48637b:

  ; Code: movl -0x4(%rbp), %edi	 RIP: 48637b	 Bytes: 3
  %loadMem_48637b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48637b = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48637b)
  store %struct.Memory* %call_48637b, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 48637e	 Bytes: 3
  %loadMem_48637e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48637e = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48637e)
  store %struct.Memory* %call_48637e, %struct.Memory** %MEMORY

  ; Code: callq .is_worm_origin	 RIP: 486381	 Bytes: 5
  %loadMem1_486381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_486381 = call %struct.Memory* @routine_callq_.is_worm_origin(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_486381, i64 7535, i64 5, i64 5)
  store %struct.Memory* %call1_486381, %struct.Memory** %MEMORY

  %loadMem2_486381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_486381 = load i64, i64* %3
  %call2_486381 = call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* %0, i64  %loadPC_486381, %struct.Memory* %loadMem2_486381)
  store %struct.Memory* %call2_486381, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 486386	 Bytes: 3
  %loadMem_486386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486386 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486386)
  store %struct.Memory* %call_486386, %struct.Memory** %MEMORY

  ; Code: jne .L_486394	 RIP: 486389	 Bytes: 6
  %loadMem_486389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486389 = call %struct.Memory* @routine_jne_.L_486394(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486389, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_486389, %struct.Memory** %MEMORY

  %loadBr_486389 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486389 = icmp eq i8 %loadBr_486389, 1
  br i1 %cmpBr_486389, label %block_.L_486394, label %block_.L_48638f

  ; Code: .L_48638f:	 RIP: 48638f	 Bytes: 0
block_.L_48638f:

  ; Code: jmpq .L_486626	 RIP: 48638f	 Bytes: 5
  %loadMem_48638f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48638f = call %struct.Memory* @routine_jmpq_.L_486626(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48638f, i64 663, i64 5)
  store %struct.Memory* %call_48638f, %struct.Memory** %MEMORY

  br label %block_.L_486626

  ; Code: .L_486394:	 RIP: 486394	 Bytes: 0
block_.L_486394:

  ; Code: movl $0x15, -0x24(%rbp)	 RIP: 486394	 Bytes: 7
  %loadMem_486394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486394 = call %struct.Memory* @routine_movl__0x15__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486394)
  store %struct.Memory* %call_486394, %struct.Memory** %MEMORY

  ; Code: .L_48639b:	 RIP: 48639b	 Bytes: 0
  br label %block_.L_48639b
block_.L_48639b:

  ; Code: cmpl $0x190, -0x24(%rbp)	 RIP: 48639b	 Bytes: 7
  %loadMem_48639b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48639b = call %struct.Memory* @routine_cmpl__0x190__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48639b)
  store %struct.Memory* %call_48639b, %struct.Memory** %MEMORY

  ; Code: jge .L_48656a	 RIP: 4863a2	 Bytes: 6
  %loadMem_4863a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4863a2 = call %struct.Memory* @routine_jge_.L_48656a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4863a2, i8* %BRANCH_TAKEN, i64 456, i64 6, i64 6)
  store %struct.Memory* %call_4863a2, %struct.Memory** %MEMORY

  %loadBr_4863a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4863a2 = icmp eq i8 %loadBr_4863a2, 1
  br i1 %cmpBr_4863a2, label %block_.L_48656a, label %block_4863a8

block_4863a8:
  ; Code: movl $0x3, %eax	 RIP: 4863a8	 Bytes: 5
  %loadMem_4863a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4863a8 = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4863a8)
  store %struct.Memory* %call_4863a8, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 4863ad	 Bytes: 4
  %loadMem_4863ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4863ad = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4863ad)
  store %struct.Memory* %call_4863ad, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %edx	 RIP: 4863b1	 Bytes: 8
  %loadMem_4863b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4863b1 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4863b1)
  store %struct.Memory* %call_4863b1, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4863b9	 Bytes: 4
  %loadMem_4863b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4863b9 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4863b9)
  store %struct.Memory* %call_4863b9, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %esi	 RIP: 4863bd	 Bytes: 8
  %loadMem_4863bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4863bd = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4863bd)
  store %struct.Memory* %call_4863bd, %struct.Memory** %MEMORY

  ; Code: subl %esi, %eax	 RIP: 4863c5	 Bytes: 2
  %loadMem_4863c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4863c5 = call %struct.Memory* @routine_subl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4863c5)
  store %struct.Memory* %call_4863c5, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %edx	 RIP: 4863c7	 Bytes: 2
  %loadMem_4863c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4863c7 = call %struct.Memory* @routine_cmpl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4863c7)
  store %struct.Memory* %call_4863c7, %struct.Memory** %MEMORY

  ; Code: je .L_4863d4	 RIP: 4863c9	 Bytes: 6
  %loadMem_4863c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4863c9 = call %struct.Memory* @routine_je_.L_4863d4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4863c9, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4863c9, %struct.Memory** %MEMORY

  %loadBr_4863c9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4863c9 = icmp eq i8 %loadBr_4863c9, 1
  br i1 %cmpBr_4863c9, label %block_.L_4863d4, label %block_4863cf

block_4863cf:
  ; Code: jmpq .L_48655c	 RIP: 4863cf	 Bytes: 5
  %loadMem_4863cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4863cf = call %struct.Memory* @routine_jmpq_.L_48655c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4863cf, i64 397, i64 5)
  store %struct.Memory* %call_4863cf, %struct.Memory** %MEMORY

  br label %block_.L_48655c

  ; Code: .L_4863d4:	 RIP: 4863d4	 Bytes: 0
block_.L_4863d4:

  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 4863d4	 Bytes: 7
  %loadMem_4863d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4863d4 = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4863d4)
  store %struct.Memory* %call_4863d4, %struct.Memory** %MEMORY

  ; Code: .L_4863db:	 RIP: 4863db	 Bytes: 0
  br label %block_.L_4863db
block_.L_4863db:

  ; Code: cmpl $0x4, -0x20(%rbp)	 RIP: 4863db	 Bytes: 4
  %loadMem_4863db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4863db = call %struct.Memory* @routine_cmpl__0x4__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4863db)
  store %struct.Memory* %call_4863db, %struct.Memory** %MEMORY

  ; Code: jge .L_486557	 RIP: 4863df	 Bytes: 6
  %loadMem_4863df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4863df = call %struct.Memory* @routine_jge_.L_486557(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4863df, i8* %BRANCH_TAKEN, i64 376, i64 6, i64 6)
  store %struct.Memory* %call_4863df, %struct.Memory** %MEMORY

  %loadBr_4863df = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4863df = icmp eq i8 %loadBr_4863df, 1
  br i1 %cmpBr_4863df, label %block_.L_486557, label %block_4863e5

block_4863e5:
  ; Code: movl -0x24(%rbp), %eax	 RIP: 4863e5	 Bytes: 3
  %loadMem_4863e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4863e5 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4863e5)
  store %struct.Memory* %call_4863e5, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 4863e8	 Bytes: 4
  %loadMem_4863e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4863e8 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4863e8)
  store %struct.Memory* %call_4863e8, %struct.Memory** %MEMORY

  ; Code: addl 0x7ae1b0(,%rcx,4), %eax	 RIP: 4863ec	 Bytes: 7
  %loadMem_4863ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4863ec = call %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4863ec)
  store %struct.Memory* %call_4863ec, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4863f3	 Bytes: 3
  %loadMem_4863f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4863f3 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4863f3)
  store %struct.Memory* %call_4863f3, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4863f6	 Bytes: 8
  %loadMem_4863f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4863f6 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4863f6)
  store %struct.Memory* %call_4863f6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 4863fe	 Bytes: 3
  %loadMem_4863fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4863fe = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4863fe)
  store %struct.Memory* %call_4863fe, %struct.Memory** %MEMORY

  ; Code: je .L_486438	 RIP: 486401	 Bytes: 6
  %loadMem_486401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486401 = call %struct.Memory* @routine_je_.L_486438(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486401, i8* %BRANCH_TAKEN, i64 55, i64 6, i64 6)
  store %struct.Memory* %call_486401, %struct.Memory** %MEMORY

  %loadBr_486401 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486401 = icmp eq i8 %loadBr_486401, 1
  br i1 %cmpBr_486401, label %block_.L_486438, label %block_486407

block_486407:
  ; Code: movq $0xb0eff0, %rax	 RIP: 486407	 Bytes: 10
  %loadMem_486407 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486407 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486407)
  store %struct.Memory* %call_486407, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 486411	 Bytes: 3
  %loadMem_486411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486411 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486411)
  store %struct.Memory* %call_486411, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 486414	 Bytes: 4
  %loadMem_486414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486414 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486414)
  store %struct.Memory* %call_486414, %struct.Memory** %MEMORY

  ; Code: addl 0x7ae1b0(,%rdx,4), %ecx	 RIP: 486418	 Bytes: 7
  %loadMem_486418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486418 = call %struct.Memory* @routine_addl_0x7ae1b0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486418)
  store %struct.Memory* %call_486418, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 48641f	 Bytes: 3
  %loadMem_48641f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48641f = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48641f)
  store %struct.Memory* %call_48641f, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rdx, %rdx	 RIP: 486422	 Bytes: 7
  %loadMem_486422 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486422 = call %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486422)
  store %struct.Memory* %call_486422, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 486429	 Bytes: 3
  %loadMem_486429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486429 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486429)
  store %struct.Memory* %call_486429, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %ecx	 RIP: 48642c	 Bytes: 3
  %loadMem_48642c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48642c = call %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48642c)
  store %struct.Memory* %call_48642c, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %ecx	 RIP: 48642f	 Bytes: 3
  %loadMem_48642f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48642f = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48642f)
  store %struct.Memory* %call_48642f, %struct.Memory** %MEMORY

  ; Code: je .L_48643d	 RIP: 486432	 Bytes: 6
  %loadMem_486432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486432 = call %struct.Memory* @routine_je_.L_48643d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486432, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_486432, %struct.Memory** %MEMORY

  %loadBr_486432 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486432 = icmp eq i8 %loadBr_486432, 1
  br i1 %cmpBr_486432, label %block_.L_48643d, label %block_.L_486438

  ; Code: .L_486438:	 RIP: 486438	 Bytes: 0
block_.L_486438:

  ; Code: jmpq .L_486549	 RIP: 486438	 Bytes: 5
  %loadMem_486438 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486438 = call %struct.Memory* @routine_jmpq_.L_486549(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486438, i64 273, i64 5)
  store %struct.Memory* %call_486438, %struct.Memory** %MEMORY

  br label %block_.L_486549

  ; Code: .L_48643d:	 RIP: 48643d	 Bytes: 0
block_.L_48643d:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 48643d	 Bytes: 3
  %loadMem_48643d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48643d = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48643d)
  store %struct.Memory* %call_48643d, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 486440	 Bytes: 4
  %loadMem_486440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486440 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486440)
  store %struct.Memory* %call_486440, %struct.Memory** %MEMORY

  ; Code: addl 0x7ae1b0(,%rcx,4), %eax	 RIP: 486444	 Bytes: 7
  %loadMem_486444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486444 = call %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486444)
  store %struct.Memory* %call_486444, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 48644b	 Bytes: 3
  %loadMem_48644b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48644b = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48644b)
  store %struct.Memory* %call_48644b, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 48644e	 Bytes: 8
  %loadMem_48644e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48644e = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48644e)
  store %struct.Memory* %call_48644e, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 486456	 Bytes: 4
  %loadMem_486456 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486456 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486456)
  store %struct.Memory* %call_486456, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %edx	 RIP: 48645a	 Bytes: 8
  %loadMem_48645a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48645a = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48645a)
  store %struct.Memory* %call_48645a, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %eax	 RIP: 486462	 Bytes: 2
  %loadMem_486462 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486462 = call %struct.Memory* @routine_cmpl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486462)
  store %struct.Memory* %call_486462, %struct.Memory** %MEMORY

  ; Code: jne .L_48646f	 RIP: 486464	 Bytes: 6
  %loadMem_486464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486464 = call %struct.Memory* @routine_jne_.L_48646f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486464, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_486464, %struct.Memory** %MEMORY

  %loadBr_486464 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486464 = icmp eq i8 %loadBr_486464, 1
  br i1 %cmpBr_486464, label %block_.L_48646f, label %block_48646a

block_48646a:
  ; Code: jmpq .L_4864e0	 RIP: 48646a	 Bytes: 5
  %loadMem_48646a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48646a = call %struct.Memory* @routine_jmpq_.L_4864e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48646a, i64 118, i64 5)
  store %struct.Memory* %call_48646a, %struct.Memory** %MEMORY

  br label %block_.L_4864e0

  ; Code: .L_48646f:	 RIP: 48646f	 Bytes: 0
block_.L_48646f:

  ; Code: movq $0x582e3b, %rdi	 RIP: 48646f	 Bytes: 10
  %loadMem_48646f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48646f = call %struct.Memory* @routine_movq__0x582e3b___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48646f)
  store %struct.Memory* %call_48646f, %struct.Memory** %MEMORY

  ; Code: movl $0xca, %esi	 RIP: 486479	 Bytes: 5
  %loadMem_486479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486479 = call %struct.Memory* @routine_movl__0xca___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486479)
  store %struct.Memory* %call_486479, %struct.Memory** %MEMORY

  ; Code: movq $0x582f0a, %rdx	 RIP: 48647e	 Bytes: 10
  %loadMem_48647e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48647e = call %struct.Memory* @routine_movq__0x582f0a___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48647e)
  store %struct.Memory* %call_48647e, %struct.Memory** %MEMORY

  ; Code: movl $0x14, %eax	 RIP: 486488	 Bytes: 5
  %loadMem_486488 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486488 = call %struct.Memory* @routine_movl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486488)
  store %struct.Memory* %call_486488, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 48648d	 Bytes: 3
  %loadMem_48648d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48648d = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48648d)
  store %struct.Memory* %call_48648d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x698(%rbp)	 RIP: 486490	 Bytes: 6
  %loadMem_486490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486490 = call %struct.Memory* @routine_movl__eax__MINUS0x698__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486490)
  store %struct.Memory* %call_486490, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 486496	 Bytes: 2
  %loadMem_486496 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486496 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486496)
  store %struct.Memory* %call_486496, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x6a0(%rbp)	 RIP: 486498	 Bytes: 7
  %loadMem_486498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486498 = call %struct.Memory* @routine_movq__rdx__MINUS0x6a0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486498)
  store %struct.Memory* %call_486498, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 48649f	 Bytes: 1
  %loadMem_48649f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48649f = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48649f)
  store %struct.Memory* %call_48649f, %struct.Memory** %MEMORY

  ; Code: movl -0x698(%rbp), %ecx	 RIP: 4864a0	 Bytes: 6
  %loadMem_4864a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4864a0 = call %struct.Memory* @routine_movl_MINUS0x698__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4864a0)
  store %struct.Memory* %call_4864a0, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 4864a6	 Bytes: 2
  %loadMem_4864a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4864a6 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4864a6)
  store %struct.Memory* %call_4864a6, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4864a8	 Bytes: 3
  %loadMem_4864a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4864a8 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4864a8)
  store %struct.Memory* %call_4864a8, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %r8d	 RIP: 4864ab	 Bytes: 4
  %loadMem_4864ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4864ab = call %struct.Memory* @routine_movl_MINUS0x4__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4864ab)
  store %struct.Memory* %call_4864ab, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6a4(%rbp)	 RIP: 4864af	 Bytes: 6
  %loadMem_4864af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4864af = call %struct.Memory* @routine_movl__eax__MINUS0x6a4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4864af)
  store %struct.Memory* %call_4864af, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %eax	 RIP: 4864b5	 Bytes: 3
  %loadMem_4864b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4864b5 = call %struct.Memory* @routine_movl__r8d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4864b5)
  store %struct.Memory* %call_4864b5, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4864b8	 Bytes: 1
  %loadMem_4864b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4864b8 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4864b8)
  store %struct.Memory* %call_4864b8, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 4864b9	 Bytes: 2
  %loadMem_4864b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4864b9 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4864b9)
  store %struct.Memory* %call_4864b9, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 4864bb	 Bytes: 3
  %loadMem_4864bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4864bb = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4864bb)
  store %struct.Memory* %call_4864bb, %struct.Memory** %MEMORY

  ; Code: movq -0x6a0(%rbp), %r9	 RIP: 4864be	 Bytes: 7
  %loadMem_4864be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4864be = call %struct.Memory* @routine_movq_MINUS0x6a0__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4864be)
  store %struct.Memory* %call_4864be, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x6a8(%rbp)	 RIP: 4864c5	 Bytes: 6
  %loadMem_4864c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4864c5 = call %struct.Memory* @routine_movl__edx__MINUS0x6a8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4864c5)
  store %struct.Memory* %call_4864c5, %struct.Memory** %MEMORY

  ; Code: movq %r9, %rdx	 RIP: 4864cb	 Bytes: 3
  %loadMem_4864cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4864cb = call %struct.Memory* @routine_movq__r9___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4864cb)
  store %struct.Memory* %call_4864cb, %struct.Memory** %MEMORY

  ; Code: movl -0x6a4(%rbp), %ecx	 RIP: 4864ce	 Bytes: 6
  %loadMem_4864ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4864ce = call %struct.Memory* @routine_movl_MINUS0x6a4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4864ce)
  store %struct.Memory* %call_4864ce, %struct.Memory** %MEMORY

  ; Code: movl -0x6a8(%rbp), %r8d	 RIP: 4864d4	 Bytes: 7
  %loadMem_4864d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4864d4 = call %struct.Memory* @routine_movl_MINUS0x6a8__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4864d4)
  store %struct.Memory* %call_4864d4, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 4864db	 Bytes: 5
  %loadMem1_4864db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4864db = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4864db, i64 -214091, i64 5, i64 5)
  store %struct.Memory* %call1_4864db, %struct.Memory** %MEMORY

  %loadMem2_4864db = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4864db = load i64, i64* %3
  %call2_4864db = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_4864db, %struct.Memory* %loadMem2_4864db)
  store %struct.Memory* %call2_4864db, %struct.Memory** %MEMORY

  ; Code: .L_4864e0:	 RIP: 4864e0	 Bytes: 0
  br label %block_.L_4864e0
block_.L_4864e0:

  ; Code: cmpl $0x0, -0x18(%rbp)	 RIP: 4864e0	 Bytes: 4
  %loadMem_4864e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4864e0 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4864e0)
  store %struct.Memory* %call_4864e0, %struct.Memory** %MEMORY

  ; Code: jne .L_48650d	 RIP: 4864e4	 Bytes: 6
  %loadMem_4864e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4864e4 = call %struct.Memory* @routine_jne_.L_48650d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4864e4, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_4864e4, %struct.Memory** %MEMORY

  %loadBr_4864e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4864e4 = icmp eq i8 %loadBr_4864e4, 1
  br i1 %cmpBr_4864e4, label %block_.L_48650d, label %block_4864ea

block_4864ea:
  ; Code: movq $0xb0eff0, %rax	 RIP: 4864ea	 Bytes: 10
  %loadMem_4864ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4864ea = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4864ea)
  store %struct.Memory* %call_4864ea, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 4864f4	 Bytes: 4
  %loadMem_4864f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4864f4 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4864f4)
  store %struct.Memory* %call_4864f4, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 4864f8	 Bytes: 7
  %loadMem_4864f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4864f8 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4864f8)
  store %struct.Memory* %call_4864f8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4864ff	 Bytes: 3
  %loadMem_4864ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4864ff = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4864ff)
  store %struct.Memory* %call_4864ff, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 486502	 Bytes: 3
  %loadMem_486502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486502 = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486502)
  store %struct.Memory* %call_486502, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x18(%rbp)	 RIP: 486505	 Bytes: 3
  %loadMem_486505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486505 = call %struct.Memory* @routine_movl__edx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486505)
  store %struct.Memory* %call_486505, %struct.Memory** %MEMORY

  ; Code: jmpq .L_486544	 RIP: 486508	 Bytes: 5
  %loadMem_486508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486508 = call %struct.Memory* @routine_jmpq_.L_486544(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486508, i64 60, i64 5)
  store %struct.Memory* %call_486508, %struct.Memory** %MEMORY

  br label %block_.L_486544

  ; Code: .L_48650d:	 RIP: 48650d	 Bytes: 0
block_.L_48650d:

  ; Code: movl -0x24(%rbp), %edi	 RIP: 48650d	 Bytes: 3
  %loadMem_48650d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48650d = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48650d)
  store %struct.Memory* %call_48650d, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %esi	 RIP: 486510	 Bytes: 3
  %loadMem_486510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486510 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486510)
  store %struct.Memory* %call_486510, %struct.Memory** %MEMORY

  ; Code: callq .is_same_worm	 RIP: 486513	 Bytes: 5
  %loadMem1_486513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_486513 = call %struct.Memory* @routine_callq_.is_same_worm(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_486513, i64 8445, i64 5, i64 5)
  store %struct.Memory* %call1_486513, %struct.Memory** %MEMORY

  %loadMem2_486513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_486513 = load i64, i64* %3
  %call2_486513 = call %struct.Memory* @sub_488610.is_same_worm(%struct.State* %0, i64  %loadPC_486513, %struct.Memory* %loadMem2_486513)
  store %struct.Memory* %call2_486513, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 486518	 Bytes: 3
  %loadMem_486518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486518 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486518)
  store %struct.Memory* %call_486518, %struct.Memory** %MEMORY

  ; Code: jne .L_48653f	 RIP: 48651b	 Bytes: 6
  %loadMem_48651b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48651b = call %struct.Memory* @routine_jne_.L_48653f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48651b, i8* %BRANCH_TAKEN, i64 36, i64 6, i64 6)
  store %struct.Memory* %call_48651b, %struct.Memory** %MEMORY

  %loadBr_48651b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48651b = icmp eq i8 %loadBr_48651b, 1
  br i1 %cmpBr_48651b, label %block_.L_48653f, label %block_486521

block_486521:
  ; Code: movq $0xb0eff0, %rax	 RIP: 486521	 Bytes: 10
  %loadMem_486521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486521 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486521)
  store %struct.Memory* %call_486521, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 48652b	 Bytes: 4
  %loadMem_48652b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48652b = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48652b)
  store %struct.Memory* %call_48652b, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 48652f	 Bytes: 7
  %loadMem_48652f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48652f = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48652f)
  store %struct.Memory* %call_48652f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 486536	 Bytes: 3
  %loadMem_486536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486536 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486536)
  store %struct.Memory* %call_486536, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 486539	 Bytes: 3
  %loadMem_486539 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486539 = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486539)
  store %struct.Memory* %call_486539, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x1c(%rbp)	 RIP: 48653c	 Bytes: 3
  %loadMem_48653c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48653c = call %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48653c)
  store %struct.Memory* %call_48653c, %struct.Memory** %MEMORY

  ; Code: .L_48653f:	 RIP: 48653f	 Bytes: 0
  br label %block_.L_48653f
block_.L_48653f:

  ; Code: jmpq .L_486544	 RIP: 48653f	 Bytes: 5
  %loadMem_48653f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48653f = call %struct.Memory* @routine_jmpq_.L_486544(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48653f, i64 5, i64 5)
  store %struct.Memory* %call_48653f, %struct.Memory** %MEMORY

  br label %block_.L_486544

  ; Code: .L_486544:	 RIP: 486544	 Bytes: 0
block_.L_486544:

  ; Code: jmpq .L_486549	 RIP: 486544	 Bytes: 5
  %loadMem_486544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486544 = call %struct.Memory* @routine_jmpq_.L_486549(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486544, i64 5, i64 5)
  store %struct.Memory* %call_486544, %struct.Memory** %MEMORY

  br label %block_.L_486549

  ; Code: .L_486549:	 RIP: 486549	 Bytes: 0
block_.L_486549:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 486549	 Bytes: 3
  %loadMem_486549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486549 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486549)
  store %struct.Memory* %call_486549, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48654c	 Bytes: 3
  %loadMem_48654c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48654c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48654c)
  store %struct.Memory* %call_48654c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 48654f	 Bytes: 3
  %loadMem_48654f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48654f = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48654f)
  store %struct.Memory* %call_48654f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4863db	 RIP: 486552	 Bytes: 5
  %loadMem_486552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486552 = call %struct.Memory* @routine_jmpq_.L_4863db(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486552, i64 -375, i64 5)
  store %struct.Memory* %call_486552, %struct.Memory** %MEMORY

  br label %block_.L_4863db

  ; Code: .L_486557:	 RIP: 486557	 Bytes: 0
block_.L_486557:

  ; Code: jmpq .L_48655c	 RIP: 486557	 Bytes: 5
  %loadMem_486557 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486557 = call %struct.Memory* @routine_jmpq_.L_48655c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486557, i64 5, i64 5)
  store %struct.Memory* %call_486557, %struct.Memory** %MEMORY

  br label %block_.L_48655c

  ; Code: .L_48655c:	 RIP: 48655c	 Bytes: 0
block_.L_48655c:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 48655c	 Bytes: 3
  %loadMem_48655c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48655c = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48655c)
  store %struct.Memory* %call_48655c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48655f	 Bytes: 3
  %loadMem_48655f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48655f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48655f)
  store %struct.Memory* %call_48655f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 486562	 Bytes: 3
  %loadMem_486562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486562 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486562)
  store %struct.Memory* %call_486562, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48639b	 RIP: 486565	 Bytes: 5
  %loadMem_486565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486565 = call %struct.Memory* @routine_jmpq_.L_48639b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486565, i64 -458, i64 5)
  store %struct.Memory* %call_486565, %struct.Memory** %MEMORY

  br label %block_.L_48639b

  ; Code: .L_48656a:	 RIP: 48656a	 Bytes: 0
block_.L_48656a:

  ; Code: cmpl $0x0, -0x1c(%rbp)	 RIP: 48656a	 Bytes: 4
  %loadMem_48656a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48656a = call %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48656a)
  store %struct.Memory* %call_48656a, %struct.Memory** %MEMORY

  ; Code: je .L_486621	 RIP: 48656e	 Bytes: 6
  %loadMem_48656e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48656e = call %struct.Memory* @routine_je_.L_486621(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48656e, i8* %BRANCH_TAKEN, i64 179, i64 6, i64 6)
  store %struct.Memory* %call_48656e, %struct.Memory** %MEMORY

  %loadBr_48656e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48656e = icmp eq i8 %loadBr_48656e, 1
  br i1 %cmpBr_48656e, label %block_.L_486621, label %block_486574

block_486574:
  ; Code: movq $0xb0eff0, %rax	 RIP: 486574	 Bytes: 10
  %loadMem_486574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486574 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486574)
  store %struct.Memory* %call_486574, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 48657e	 Bytes: 4
  %loadMem_48657e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48657e = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48657e)
  store %struct.Memory* %call_48657e, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 486582	 Bytes: 7
  %loadMem_486582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486582 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486582)
  store %struct.Memory* %call_486582, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 486589	 Bytes: 3
  %loadMem_486589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486589 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486589)
  store %struct.Memory* %call_486589, %struct.Memory** %MEMORY

  ; Code: movl $0x2, 0x24(%rax)	 RIP: 48658c	 Bytes: 7
  %loadMem_48658c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48658c = call %struct.Memory* @routine_movl__0x2__0x24__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48658c)
  store %struct.Memory* %call_48658c, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edi	 RIP: 486593	 Bytes: 3
  %loadMem_486593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486593 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486593)
  store %struct.Memory* %call_486593, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %esi	 RIP: 486596	 Bytes: 3
  %loadMem_486596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486596 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486596)
  store %struct.Memory* %call_486596, %struct.Memory** %MEMORY

  ; Code: callq .count_common_libs	 RIP: 486599	 Bytes: 5
  %loadMem1_486599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_486599 = call %struct.Memory* @routine_callq_.count_common_libs(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_486599, i64 -480969, i64 5, i64 5)
  store %struct.Memory* %call1_486599, %struct.Memory** %MEMORY

  %loadMem2_486599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_486599 = load i64, i64* %3
  %call2_486599 = call %struct.Memory* @sub_410ed0.count_common_libs(%struct.State* %0, i64  %loadPC_486599, %struct.Memory* %loadMem2_486599)
  store %struct.Memory* %call2_486599, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 48659e	 Bytes: 3
  %loadMem_48659e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48659e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48659e)
  store %struct.Memory* %call_48659e, %struct.Memory** %MEMORY

  ; Code: jle .L_4865c6	 RIP: 4865a1	 Bytes: 6
  %loadMem_4865a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4865a1 = call %struct.Memory* @routine_jle_.L_4865c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4865a1, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_4865a1, %struct.Memory** %MEMORY

  %loadBr_4865a1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4865a1 = icmp eq i8 %loadBr_4865a1, 1
  br i1 %cmpBr_4865a1, label %block_.L_4865c6, label %block_4865a7

block_4865a7:
  ; Code: movq $0xb0eff0, %rax	 RIP: 4865a7	 Bytes: 10
  %loadMem_4865a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4865a7 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4865a7)
  store %struct.Memory* %call_4865a7, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4865b1	 Bytes: 4
  %loadMem_4865b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4865b1 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4865b1)
  store %struct.Memory* %call_4865b1, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 4865b5	 Bytes: 7
  %loadMem_4865b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4865b5 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4865b5)
  store %struct.Memory* %call_4865b5, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4865bc	 Bytes: 3
  %loadMem_4865bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4865bc = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4865bc)
  store %struct.Memory* %call_4865bc, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x24(%rax)	 RIP: 4865bf	 Bytes: 7
  %loadMem_4865bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4865bf = call %struct.Memory* @routine_movl__0x1__0x24__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4865bf)
  store %struct.Memory* %call_4865bf, %struct.Memory** %MEMORY

  ; Code: .L_4865c6:	 RIP: 4865c6	 Bytes: 0
  br label %block_.L_4865c6
block_.L_4865c6:

  ; Code: movl 0xab0f24, %eax	 RIP: 4865c6	 Bytes: 7
  %loadMem_4865c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4865c6 = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4865c6)
  store %struct.Memory* %call_4865c6, %struct.Memory** %MEMORY

  ; Code: andl $0x400, %eax	 RIP: 4865cd	 Bytes: 5
  %loadMem_4865cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4865cd = call %struct.Memory* @routine_andl__0x400___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4865cd)
  store %struct.Memory* %call_4865cd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4865d2	 Bytes: 3
  %loadMem_4865d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4865d2 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4865d2)
  store %struct.Memory* %call_4865d2, %struct.Memory** %MEMORY

  ; Code: jne .L_4865e0	 RIP: 4865d5	 Bytes: 6
  %loadMem_4865d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4865d5 = call %struct.Memory* @routine_jne_.L_4865e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4865d5, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4865d5, %struct.Memory** %MEMORY

  %loadBr_4865d5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4865d5 = icmp eq i8 %loadBr_4865d5, 1
  br i1 %cmpBr_4865d5, label %block_.L_4865e0, label %block_4865db

block_4865db:
  ; Code: jmpq .L_48661c	 RIP: 4865db	 Bytes: 5
  %loadMem_4865db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4865db = call %struct.Memory* @routine_jmpq_.L_48661c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4865db, i64 65, i64 5)
  store %struct.Memory* %call_4865db, %struct.Memory** %MEMORY

  br label %block_.L_48661c

  ; Code: .L_4865e0:	 RIP: 4865e0	 Bytes: 0
block_.L_4865e0:

  ; Code: movq $0x582f2f, %rdi	 RIP: 4865e0	 Bytes: 10
  %loadMem_4865e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4865e0 = call %struct.Memory* @routine_movq__0x582f2f___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4865e0)
  store %struct.Memory* %call_4865e0, %struct.Memory** %MEMORY

  ; Code: movq $0xb0eff0, %rax	 RIP: 4865ea	 Bytes: 10
  %loadMem_4865ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4865ea = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4865ea)
  store %struct.Memory* %call_4865ea, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 4865f4	 Bytes: 3
  %loadMem_4865f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4865f4 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4865f4)
  store %struct.Memory* %call_4865f4, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 4865f7	 Bytes: 3
  %loadMem_4865f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4865f7 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4865f7)
  store %struct.Memory* %call_4865f7, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 4865fa	 Bytes: 3
  %loadMem_4865fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4865fa = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4865fa)
  store %struct.Memory* %call_4865fa, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %r8	 RIP: 4865fd	 Bytes: 4
  %loadMem_4865fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4865fd = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4865fd)
  store %struct.Memory* %call_4865fd, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %r8, %r8	 RIP: 486601	 Bytes: 7
  %loadMem_486601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486601 = call %struct.Memory* @routine_imulq__0x17c___r8___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486601)
  store %struct.Memory* %call_486601, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rax	 RIP: 486608	 Bytes: 3
  %loadMem_486608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486608 = call %struct.Memory* @routine_addq__r8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486608)
  store %struct.Memory* %call_486608, %struct.Memory** %MEMORY

  ; Code: movl 0x24(%rax), %r8d	 RIP: 48660b	 Bytes: 4
  %loadMem_48660b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48660b = call %struct.Memory* @routine_movl_0x24__rax____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48660b)
  store %struct.Memory* %call_48660b, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48660f	 Bytes: 2
  %loadMem_48660f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48660f = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48660f)
  store %struct.Memory* %call_48660f, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 486611	 Bytes: 5
  %loadMem1_486611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_486611 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_486611, i64 -215137, i64 5, i64 5)
  store %struct.Memory* %call1_486611, %struct.Memory** %MEMORY

  %loadMem2_486611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_486611 = load i64, i64* %3
  %call2_486611 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_486611, %struct.Memory* %loadMem2_486611)
  store %struct.Memory* %call2_486611, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6ac(%rbp)	 RIP: 486616	 Bytes: 6
  %loadMem_486616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486616 = call %struct.Memory* @routine_movl__eax__MINUS0x6ac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486616)
  store %struct.Memory* %call_486616, %struct.Memory** %MEMORY

  ; Code: .L_48661c:	 RIP: 48661c	 Bytes: 0
  br label %block_.L_48661c
block_.L_48661c:

  ; Code: jmpq .L_486621	 RIP: 48661c	 Bytes: 5
  %loadMem_48661c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48661c = call %struct.Memory* @routine_jmpq_.L_486621(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48661c, i64 5, i64 5)
  store %struct.Memory* %call_48661c, %struct.Memory** %MEMORY

  br label %block_.L_486621

  ; Code: .L_486621:	 RIP: 486621	 Bytes: 0
block_.L_486621:

  ; Code: jmpq .L_486626	 RIP: 486621	 Bytes: 5
  %loadMem_486621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486621 = call %struct.Memory* @routine_jmpq_.L_486626(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486621, i64 5, i64 5)
  store %struct.Memory* %call_486621, %struct.Memory** %MEMORY

  br label %block_.L_486626

  ; Code: .L_486626:	 RIP: 486626	 Bytes: 0
block_.L_486626:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 486626	 Bytes: 3
  %loadMem_486626 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486626 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486626)
  store %struct.Memory* %call_486626, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 486629	 Bytes: 3
  %loadMem_486629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486629 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486629)
  store %struct.Memory* %call_486629, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 48662c	 Bytes: 3
  %loadMem_48662c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48662c = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48662c)
  store %struct.Memory* %call_48662c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_486336	 RIP: 48662f	 Bytes: 5
  %loadMem_48662f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48662f = call %struct.Memory* @routine_jmpq_.L_486336(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48662f, i64 -761, i64 5)
  store %struct.Memory* %call_48662f, %struct.Memory** %MEMORY

  br label %block_.L_486336

  ; Code: .L_486634:	 RIP: 486634	 Bytes: 0
block_.L_486634:

  ; Code: cmpl $0x0, 0xb54ce4	 RIP: 486634	 Bytes: 8
  %loadMem_486634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486634 = call %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486634)
  store %struct.Memory* %call_486634, %struct.Memory** %MEMORY

  ; Code: jne .L_486647	 RIP: 48663c	 Bytes: 6
  %loadMem_48663c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48663c = call %struct.Memory* @routine_jne_.L_486647(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48663c, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_48663c, %struct.Memory** %MEMORY

  %loadBr_48663c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48663c = icmp eq i8 %loadBr_48663c, 1
  br i1 %cmpBr_48663c, label %block_.L_486647, label %block_486642

block_486642:
  ; Code: jmpq .L_48666f	 RIP: 486642	 Bytes: 5
  %loadMem_486642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486642 = call %struct.Memory* @routine_jmpq_.L_48666f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486642, i64 45, i64 5)
  store %struct.Memory* %call_486642, %struct.Memory** %MEMORY

  br label %block_.L_48666f

  ; Code: .L_486647:	 RIP: 486647	 Bytes: 0
block_.L_486647:

  ; Code: movq $0x582e3b, %rdi	 RIP: 486647	 Bytes: 10
  %loadMem_486647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486647 = call %struct.Memory* @routine_movq__0x582e3b___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486647)
  store %struct.Memory* %call_486647, %struct.Memory** %MEMORY

  ; Code: movl $0xe8, %esi	 RIP: 486651	 Bytes: 5
  %loadMem_486651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486651 = call %struct.Memory* @routine_movl__0xe8___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486651)
  store %struct.Memory* %call_486651, %struct.Memory** %MEMORY

  ; Code: movq $0x57a100, %rdx	 RIP: 486656	 Bytes: 10
  %loadMem_486656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486656 = call %struct.Memory* @routine_movq__0x57a100___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486656)
  store %struct.Memory* %call_486656, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 486660	 Bytes: 5
  %loadMem_486660 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486660 = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486660)
  store %struct.Memory* %call_486660, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 486665	 Bytes: 2
  %loadMem_486665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486665 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486665)
  store %struct.Memory* %call_486665, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 486667	 Bytes: 3
  %loadMem_486667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486667 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486667)
  store %struct.Memory* %call_486667, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 48666a	 Bytes: 5
  %loadMem1_48666a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48666a = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48666a, i64 -214490, i64 5, i64 5)
  store %struct.Memory* %call1_48666a, %struct.Memory** %MEMORY

  %loadMem2_48666a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48666a = load i64, i64* %3
  %call2_48666a = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_48666a, %struct.Memory* %loadMem2_48666a)
  store %struct.Memory* %call2_48666a, %struct.Memory** %MEMORY

  ; Code: .L_48666f:	 RIP: 48666f	 Bytes: 0
  br label %block_.L_48666f
block_.L_48666f:

  ; Code: movl $0x15, -0x4(%rbp)	 RIP: 48666f	 Bytes: 7
  %loadMem_48666f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48666f = call %struct.Memory* @routine_movl__0x15__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48666f)
  store %struct.Memory* %call_48666f, %struct.Memory** %MEMORY

  ; Code: .L_486676:	 RIP: 486676	 Bytes: 0
  br label %block_.L_486676
block_.L_486676:

  ; Code: cmpl $0x190, -0x4(%rbp)	 RIP: 486676	 Bytes: 7
  %loadMem_486676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486676 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486676)
  store %struct.Memory* %call_486676, %struct.Memory** %MEMORY

  ; Code: jge .L_4866ff	 RIP: 48667d	 Bytes: 6
  %loadMem_48667d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48667d = call %struct.Memory* @routine_jge_.L_4866ff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48667d, i8* %BRANCH_TAKEN, i64 130, i64 6, i64 6)
  store %struct.Memory* %call_48667d, %struct.Memory** %MEMORY

  %loadBr_48667d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48667d = icmp eq i8 %loadBr_48667d, 1
  br i1 %cmpBr_48667d, label %block_.L_4866ff, label %block_486683

block_486683:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 486683	 Bytes: 4
  %loadMem_486683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486683 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486683)
  store %struct.Memory* %call_486683, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 486687	 Bytes: 8
  %loadMem_486687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486687 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486687)
  store %struct.Memory* %call_486687, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %ecx	 RIP: 48668f	 Bytes: 3
  %loadMem_48668f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48668f = call %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48668f)
  store %struct.Memory* %call_48668f, %struct.Memory** %MEMORY

  ; Code: je .L_4866ad	 RIP: 486692	 Bytes: 6
  %loadMem_486692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486692 = call %struct.Memory* @routine_je_.L_4866ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486692, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_486692, %struct.Memory** %MEMORY

  %loadBr_486692 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486692 = icmp eq i8 %loadBr_486692, 1
  br i1 %cmpBr_486692, label %block_.L_4866ad, label %block_486698

block_486698:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 486698	 Bytes: 4
  %loadMem_486698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486698 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486698)
  store %struct.Memory* %call_486698, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 48669c	 Bytes: 8
  %loadMem_48669c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48669c = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48669c)
  store %struct.Memory* %call_48669c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %ecx	 RIP: 4866a4	 Bytes: 3
  %loadMem_4866a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4866a4 = call %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4866a4)
  store %struct.Memory* %call_4866a4, %struct.Memory** %MEMORY

  ; Code: jne .L_4866ec	 RIP: 4866a7	 Bytes: 6
  %loadMem_4866a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4866a7 = call %struct.Memory* @routine_jne_.L_4866ec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4866a7, i8* %BRANCH_TAKEN, i64 69, i64 6, i64 6)
  store %struct.Memory* %call_4866a7, %struct.Memory** %MEMORY

  %loadBr_4866a7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4866a7 = icmp eq i8 %loadBr_4866a7, 1
  br i1 %cmpBr_4866a7, label %block_.L_4866ec, label %block_.L_4866ad

  ; Code: .L_4866ad:	 RIP: 4866ad	 Bytes: 0
block_.L_4866ad:

  ; Code: movl -0x4(%rbp), %edi	 RIP: 4866ad	 Bytes: 3
  %loadMem_4866ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4866ad = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4866ad)
  store %struct.Memory* %call_4866ad, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 4866b0	 Bytes: 3
  %loadMem_4866b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4866b0 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4866b0)
  store %struct.Memory* %call_4866b0, %struct.Memory** %MEMORY

  ; Code: callq .is_worm_origin	 RIP: 4866b3	 Bytes: 5
  %loadMem1_4866b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4866b3 = call %struct.Memory* @routine_callq_.is_worm_origin(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4866b3, i64 6717, i64 5, i64 5)
  store %struct.Memory* %call1_4866b3, %struct.Memory** %MEMORY

  %loadMem2_4866b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4866b3 = load i64, i64* %3
  %call2_4866b3 = call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* %0, i64  %loadPC_4866b3, %struct.Memory* %loadMem2_4866b3)
  store %struct.Memory* %call2_4866b3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4866b8	 Bytes: 3
  %loadMem_4866b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4866b8 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4866b8)
  store %struct.Memory* %call_4866b8, %struct.Memory** %MEMORY

  ; Code: je .L_4866ec	 RIP: 4866bb	 Bytes: 6
  %loadMem_4866bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4866bb = call %struct.Memory* @routine_je_.L_4866ec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4866bb, i8* %BRANCH_TAKEN, i64 49, i64 6, i64 6)
  store %struct.Memory* %call_4866bb, %struct.Memory** %MEMORY

  %loadBr_4866bb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4866bb = icmp eq i8 %loadBr_4866bb, 1
  br i1 %cmpBr_4866bb, label %block_.L_4866ec, label %block_4866c1

block_4866c1:
  ; Code: movl -0x4(%rbp), %edi	 RIP: 4866c1	 Bytes: 3
  %loadMem_4866c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4866c1 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4866c1)
  store %struct.Memory* %call_4866c1, %struct.Memory** %MEMORY

  ; Code: callq .genus	 RIP: 4866c4	 Bytes: 5
  %loadMem1_4866c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4866c4 = call %struct.Memory* @routine_callq_.genus(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4866c4, i64 8092, i64 5, i64 5)
  store %struct.Memory* %call1_4866c4, %struct.Memory** %MEMORY

  %loadMem2_4866c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4866c4 = load i64, i64* %3
  %call2_4866c4 = call %struct.Memory* @sub_488660.genus(%struct.State* %0, i64  %loadPC_4866c4, %struct.Memory* %loadMem2_4866c4)
  store %struct.Memory* %call2_4866c4, %struct.Memory** %MEMORY

  ; Code: movq $0xb0eff0, %rcx	 RIP: 4866c9	 Bytes: 10
  %loadMem_4866c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4866c9 = call %struct.Memory* @routine_movq__0xb0eff0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4866c9)
  store %struct.Memory* %call_4866c9, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 4866d3	 Bytes: 4
  %loadMem_4866d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4866d3 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4866d3)
  store %struct.Memory* %call_4866d3, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rdx, %rdx	 RIP: 4866d7	 Bytes: 7
  %loadMem_4866d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4866d7 = call %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4866d7)
  store %struct.Memory* %call_4866d7, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4866de	 Bytes: 3
  %loadMem_4866de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4866de = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4866de)
  store %struct.Memory* %call_4866de, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x2c(%rcx)	 RIP: 4866e1	 Bytes: 3
  %loadMem_4866e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4866e1 = call %struct.Memory* @routine_movl__eax__0x2c__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4866e1)
  store %struct.Memory* %call_4866e1, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edi	 RIP: 4866e4	 Bytes: 3
  %loadMem_4866e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4866e4 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4866e4)
  store %struct.Memory* %call_4866e4, %struct.Memory** %MEMORY

  ; Code: callq .propagate_worm	 RIP: 4866e7	 Bytes: 5
  %loadMem1_4866e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4866e7 = call %struct.Memory* @routine_callq_.propagate_worm(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4866e7, i64 7577, i64 5, i64 5)
  store %struct.Memory* %call1_4866e7, %struct.Memory** %MEMORY

  %loadMem2_4866e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4866e7 = load i64, i64* %3
  %call2_4866e7 = call %struct.Memory* @sub_488480.propagate_worm(%struct.State* %0, i64  %loadPC_4866e7, %struct.Memory* %loadMem2_4866e7)
  store %struct.Memory* %call2_4866e7, %struct.Memory** %MEMORY

  ; Code: .L_4866ec:	 RIP: 4866ec	 Bytes: 0
  br label %block_.L_4866ec
block_.L_4866ec:

  ; Code: jmpq .L_4866f1	 RIP: 4866ec	 Bytes: 5
  %loadMem_4866ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4866ec = call %struct.Memory* @routine_jmpq_.L_4866f1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4866ec, i64 5, i64 5)
  store %struct.Memory* %call_4866ec, %struct.Memory** %MEMORY

  br label %block_.L_4866f1

  ; Code: .L_4866f1:	 RIP: 4866f1	 Bytes: 0
block_.L_4866f1:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4866f1	 Bytes: 3
  %loadMem_4866f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4866f1 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4866f1)
  store %struct.Memory* %call_4866f1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4866f4	 Bytes: 3
  %loadMem_4866f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4866f4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4866f4)
  store %struct.Memory* %call_4866f4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 4866f7	 Bytes: 3
  %loadMem_4866f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4866f7 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4866f7)
  store %struct.Memory* %call_4866f7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_486676	 RIP: 4866fa	 Bytes: 5
  %loadMem_4866fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4866fa = call %struct.Memory* @routine_jmpq_.L_486676(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4866fa, i64 -132, i64 5)
  store %struct.Memory* %call_4866fa, %struct.Memory** %MEMORY

  br label %block_.L_486676

  ; Code: .L_4866ff:	 RIP: 4866ff	 Bytes: 0
block_.L_4866ff:

  ; Code: cmpl $0x0, 0xb54ce4	 RIP: 4866ff	 Bytes: 8
  %loadMem_4866ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4866ff = call %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4866ff)
  store %struct.Memory* %call_4866ff, %struct.Memory** %MEMORY

  ; Code: jne .L_486712	 RIP: 486707	 Bytes: 6
  %loadMem_486707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486707 = call %struct.Memory* @routine_jne_.L_486712(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486707, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_486707, %struct.Memory** %MEMORY

  %loadBr_486707 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486707 = icmp eq i8 %loadBr_486707, 1
  br i1 %cmpBr_486707, label %block_.L_486712, label %block_48670d

block_48670d:
  ; Code: jmpq .L_48673a	 RIP: 48670d	 Bytes: 5
  %loadMem_48670d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48670d = call %struct.Memory* @routine_jmpq_.L_48673a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48670d, i64 45, i64 5)
  store %struct.Memory* %call_48670d, %struct.Memory** %MEMORY

  br label %block_.L_48673a

  ; Code: .L_486712:	 RIP: 486712	 Bytes: 0
block_.L_486712:

  ; Code: movq $0x582e3b, %rdi	 RIP: 486712	 Bytes: 10
  %loadMem_486712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486712 = call %struct.Memory* @routine_movq__0x582e3b___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486712)
  store %struct.Memory* %call_486712, %struct.Memory** %MEMORY

  ; Code: movl $0xf1, %esi	 RIP: 48671c	 Bytes: 5
  %loadMem_48671c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48671c = call %struct.Memory* @routine_movl__0xf1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48671c)
  store %struct.Memory* %call_48671c, %struct.Memory** %MEMORY

  ; Code: movq $0x57a100, %rdx	 RIP: 486721	 Bytes: 10
  %loadMem_486721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486721 = call %struct.Memory* @routine_movq__0x57a100___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486721)
  store %struct.Memory* %call_486721, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 48672b	 Bytes: 5
  %loadMem_48672b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48672b = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48672b)
  store %struct.Memory* %call_48672b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 486730	 Bytes: 2
  %loadMem_486730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486730 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486730)
  store %struct.Memory* %call_486730, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 486732	 Bytes: 3
  %loadMem_486732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486732 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486732)
  store %struct.Memory* %call_486732, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 486735	 Bytes: 5
  %loadMem1_486735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_486735 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_486735, i64 -214693, i64 5, i64 5)
  store %struct.Memory* %call1_486735, %struct.Memory** %MEMORY

  %loadMem2_486735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_486735 = load i64, i64* %3
  %call2_486735 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_486735, %struct.Memory* %loadMem2_486735)
  store %struct.Memory* %call2_486735, %struct.Memory** %MEMORY

  ; Code: .L_48673a:	 RIP: 48673a	 Bytes: 0
  br label %block_.L_48673a
block_.L_48673a:

  ; Code: cmpl $0x0, 0xb54ce4	 RIP: 48673a	 Bytes: 8
  %loadMem_48673a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48673a = call %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48673a)
  store %struct.Memory* %call_48673a, %struct.Memory** %MEMORY

  ; Code: jne .L_48674d	 RIP: 486742	 Bytes: 6
  %loadMem_486742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486742 = call %struct.Memory* @routine_jne_.L_48674d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486742, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_486742, %struct.Memory** %MEMORY

  %loadBr_486742 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486742 = icmp eq i8 %loadBr_486742, 1
  br i1 %cmpBr_486742, label %block_.L_48674d, label %block_486748

block_486748:
  ; Code: jmpq .L_486775	 RIP: 486748	 Bytes: 5
  %loadMem_486748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486748 = call %struct.Memory* @routine_jmpq_.L_486775(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486748, i64 45, i64 5)
  store %struct.Memory* %call_486748, %struct.Memory** %MEMORY

  br label %block_.L_486775

  ; Code: .L_48674d:	 RIP: 48674d	 Bytes: 0
block_.L_48674d:

  ; Code: movq $0x582e3b, %rdi	 RIP: 48674d	 Bytes: 10
  %loadMem_48674d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48674d = call %struct.Memory* @routine_movq__0x582e3b___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48674d)
  store %struct.Memory* %call_48674d, %struct.Memory** %MEMORY

  ; Code: movl $0xf4, %esi	 RIP: 486757	 Bytes: 5
  %loadMem_486757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486757 = call %struct.Memory* @routine_movl__0xf4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486757)
  store %struct.Memory* %call_486757, %struct.Memory** %MEMORY

  ; Code: movq $0x57a100, %rdx	 RIP: 48675c	 Bytes: 10
  %loadMem_48675c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48675c = call %struct.Memory* @routine_movq__0x57a100___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48675c)
  store %struct.Memory* %call_48675c, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 486766	 Bytes: 5
  %loadMem_486766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486766 = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486766)
  store %struct.Memory* %call_486766, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 48676b	 Bytes: 2
  %loadMem_48676b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48676b = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48676b)
  store %struct.Memory* %call_48676b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 48676d	 Bytes: 3
  %loadMem_48676d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48676d = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48676d)
  store %struct.Memory* %call_48676d, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 486770	 Bytes: 5
  %loadMem1_486770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_486770 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_486770, i64 -214752, i64 5, i64 5)
  store %struct.Memory* %call1_486770, %struct.Memory** %MEMORY

  %loadMem2_486770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_486770 = load i64, i64* %3
  %call2_486770 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_486770, %struct.Memory* %loadMem2_486770)
  store %struct.Memory* %call2_486770, %struct.Memory** %MEMORY

  ; Code: .L_486775:	 RIP: 486775	 Bytes: 0
  br label %block_.L_486775
block_.L_486775:

  ; Code: xorl %esi, %esi	 RIP: 486775	 Bytes: 2
  %loadMem_486775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486775 = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486775)
  store %struct.Memory* %call_486775, %struct.Memory** %MEMORY

  ; Code: movl $0x640, %eax	 RIP: 486777	 Bytes: 5
  %loadMem_486777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486777 = call %struct.Memory* @routine_movl__0x640___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486777)
  store %struct.Memory* %call_486777, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 48677c	 Bytes: 2
  %loadMem_48677c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48677c = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48677c)
  store %struct.Memory* %call_48677c, %struct.Memory** %MEMORY

  ; Code: leaq -0x670(%rbp), %rcx	 RIP: 48677e	 Bytes: 7
  %loadMem_48677e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48677e = call %struct.Memory* @routine_leaq_MINUS0x670__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48677e)
  store %struct.Memory* %call_48677e, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 486785	 Bytes: 3
  %loadMem_486785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486785 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486785)
  store %struct.Memory* %call_486785, %struct.Memory** %MEMORY

  ; Code: callq .memset_plt	 RIP: 486788	 Bytes: 5
  %loadMem1_486788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_486788 = call %struct.Memory* @routine_callq_.memset_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_486788, i64 -546584, i64 5, i64 5)
  store %struct.Memory* %call1_486788, %struct.Memory** %MEMORY

  %loadMem2_486788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_486788 = load i64, i64* %3
  %call2_486788 = call %struct.Memory* @ext_memset(%struct.State* %0, i64  %loadPC_486788, %struct.Memory* %loadMem2_486788)
  store %struct.Memory* %call2_486788, %struct.Memory** %MEMORY

  ; Code: movl $0x15, -0x2c(%rbp)	 RIP: 48678d	 Bytes: 7
  %loadMem_48678d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48678d = call %struct.Memory* @routine_movl__0x15__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48678d)
  store %struct.Memory* %call_48678d, %struct.Memory** %MEMORY

  ; Code: .L_486794:	 RIP: 486794	 Bytes: 0
  br label %block_.L_486794
block_.L_486794:

  ; Code: cmpl $0x190, -0x2c(%rbp)	 RIP: 486794	 Bytes: 7
  %loadMem_486794 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486794 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486794)
  store %struct.Memory* %call_486794, %struct.Memory** %MEMORY

  ; Code: jge .L_48685c	 RIP: 48679b	 Bytes: 6
  %loadMem_48679b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48679b = call %struct.Memory* @routine_jge_.L_48685c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48679b, i8* %BRANCH_TAKEN, i64 193, i64 6, i64 6)
  store %struct.Memory* %call_48679b, %struct.Memory** %MEMORY

  %loadBr_48679b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48679b = icmp eq i8 %loadBr_48679b, 1
  br i1 %cmpBr_48679b, label %block_.L_48685c, label %block_4867a1

block_4867a1:
  ; Code: movslq -0x2c(%rbp), %rax	 RIP: 4867a1	 Bytes: 4
  %loadMem_4867a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4867a1 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4867a1)
  store %struct.Memory* %call_4867a1, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 4867a5	 Bytes: 8
  %loadMem_4867a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4867a5 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4867a5)
  store %struct.Memory* %call_4867a5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %ecx	 RIP: 4867ad	 Bytes: 3
  %loadMem_4867ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4867ad = call %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4867ad)
  store %struct.Memory* %call_4867ad, %struct.Memory** %MEMORY

  ; Code: je .L_4867cb	 RIP: 4867b0	 Bytes: 6
  %loadMem_4867b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4867b0 = call %struct.Memory* @routine_je_.L_4867cb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4867b0, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_4867b0, %struct.Memory** %MEMORY

  %loadBr_4867b0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4867b0 = icmp eq i8 %loadBr_4867b0, 1
  br i1 %cmpBr_4867b0, label %block_.L_4867cb, label %block_4867b6

block_4867b6:
  ; Code: movslq -0x2c(%rbp), %rax	 RIP: 4867b6	 Bytes: 4
  %loadMem_4867b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4867b6 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4867b6)
  store %struct.Memory* %call_4867b6, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 4867ba	 Bytes: 8
  %loadMem_4867ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4867ba = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4867ba)
  store %struct.Memory* %call_4867ba, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %ecx	 RIP: 4867c2	 Bytes: 3
  %loadMem_4867c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4867c2 = call %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4867c2)
  store %struct.Memory* %call_4867c2, %struct.Memory** %MEMORY

  ; Code: jne .L_486849	 RIP: 4867c5	 Bytes: 6
  %loadMem_4867c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4867c5 = call %struct.Memory* @routine_jne_.L_486849(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4867c5, i8* %BRANCH_TAKEN, i64 132, i64 6, i64 6)
  store %struct.Memory* %call_4867c5, %struct.Memory** %MEMORY

  %loadBr_4867c5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4867c5 = icmp eq i8 %loadBr_4867c5, 1
  br i1 %cmpBr_4867c5, label %block_.L_486849, label %block_.L_4867cb

  ; Code: .L_4867cb:	 RIP: 4867cb	 Bytes: 0
block_.L_4867cb:

  ; Code: movl -0x2c(%rbp), %edi	 RIP: 4867cb	 Bytes: 3
  %loadMem_4867cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4867cb = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4867cb)
  store %struct.Memory* %call_4867cb, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 4867ce	 Bytes: 3
  %loadMem_4867ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4867ce = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4867ce)
  store %struct.Memory* %call_4867ce, %struct.Memory** %MEMORY

  ; Code: callq .is_worm_origin	 RIP: 4867d1	 Bytes: 5
  %loadMem1_4867d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4867d1 = call %struct.Memory* @routine_callq_.is_worm_origin(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4867d1, i64 6431, i64 5, i64 5)
  store %struct.Memory* %call1_4867d1, %struct.Memory** %MEMORY

  %loadMem2_4867d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4867d1 = load i64, i64* %3
  %call2_4867d1 = call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* %0, i64  %loadPC_4867d1, %struct.Memory* %loadMem2_4867d1)
  store %struct.Memory* %call2_4867d1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4867d6	 Bytes: 3
  %loadMem_4867d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4867d6 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4867d6)
  store %struct.Memory* %call_4867d6, %struct.Memory** %MEMORY

  ; Code: je .L_486849	 RIP: 4867d9	 Bytes: 6
  %loadMem_4867d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4867d9 = call %struct.Memory* @routine_je_.L_486849(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4867d9, i8* %BRANCH_TAKEN, i64 112, i64 6, i64 6)
  store %struct.Memory* %call_4867d9, %struct.Memory** %MEMORY

  %loadBr_4867d9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4867d9 = icmp eq i8 %loadBr_4867d9, 1
  br i1 %cmpBr_4867d9, label %block_.L_486849, label %block_4867df

block_4867df:
  ; Code: movq $0xb0eff0, %rax	 RIP: 4867df	 Bytes: 10
  %loadMem_4867df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4867df = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4867df)
  store %struct.Memory* %call_4867df, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %ecx	 RIP: 4867e9	 Bytes: 5
  %loadMem_4867e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4867e9 = call %struct.Memory* @routine_movl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4867e9)
  store %struct.Memory* %call_4867e9, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 4867ee	 Bytes: 4
  %loadMem_4867ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4867ee = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4867ee)
  store %struct.Memory* %call_4867ee, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rdx,1), %esi	 RIP: 4867f2	 Bytes: 8
  %loadMem_4867f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4867f2 = call %struct.Memory* @routine_movzbl_0xb89e60___rdx_1____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4867f2)
  store %struct.Memory* %call_4867f2, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x28(%rbp)	 RIP: 4867fa	 Bytes: 3
  %loadMem_4867fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4867fa = call %struct.Memory* @routine_movl__esi__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4867fa)
  store %struct.Memory* %call_4867fa, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %esi	 RIP: 4867fd	 Bytes: 3
  %loadMem_4867fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4867fd = call %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4867fd)
  store %struct.Memory* %call_4867fd, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 486800	 Bytes: 4
  %loadMem_486800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486800 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486800)
  store %struct.Memory* %call_486800, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rdx, %rdx	 RIP: 486804	 Bytes: 7
  %loadMem_486804 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486804 = call %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486804)
  store %struct.Memory* %call_486804, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 48680b	 Bytes: 3
  %loadMem_48680b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48680b = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48680b)
  store %struct.Memory* %call_48680b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 48680e	 Bytes: 3
  %loadMem_48680e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48680e = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48680e)
  store %struct.Memory* %call_48680e, %struct.Memory** %MEMORY

  ; Code: movslq 0x8c(%rdi), %rdx	 RIP: 486811	 Bytes: 7
  %loadMem_486811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486811 = call %struct.Memory* @routine_movslq_0x8c__rdi____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486811)
  store %struct.Memory* %call_486811, %struct.Memory** %MEMORY

  ; Code: orl -0x670(%rbp,%rdx,4), %esi	 RIP: 486818	 Bytes: 7
  %loadMem_486818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486818 = call %struct.Memory* @routine_orl_MINUS0x670__rbp__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486818)
  store %struct.Memory* %call_486818, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x670(%rbp,%rdx,4)	 RIP: 48681f	 Bytes: 7
  %loadMem_48681f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48681f = call %struct.Memory* @routine_movl__esi__MINUS0x670__rbp__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48681f)
  store %struct.Memory* %call_48681f, %struct.Memory** %MEMORY

  ; Code: subl -0x28(%rbp), %ecx	 RIP: 486826	 Bytes: 3
  %loadMem_486826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486826 = call %struct.Memory* @routine_subl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486826)
  store %struct.Memory* %call_486826, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 486829	 Bytes: 4
  %loadMem_486829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486829 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486829)
  store %struct.Memory* %call_486829, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rdx, %rdx	 RIP: 48682d	 Bytes: 7
  %loadMem_48682d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48682d = call %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48682d)
  store %struct.Memory* %call_48682d, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 486834	 Bytes: 3
  %loadMem_486834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486834 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486834)
  store %struct.Memory* %call_486834, %struct.Memory** %MEMORY

  ; Code: movslq 0x3c(%rax), %rax	 RIP: 486837	 Bytes: 4
  %loadMem_486837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486837 = call %struct.Memory* @routine_movslq_0x3c__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486837)
  store %struct.Memory* %call_486837, %struct.Memory** %MEMORY

  ; Code: orl -0x670(%rbp,%rax,4), %ecx	 RIP: 48683b	 Bytes: 7
  %loadMem_48683b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48683b = call %struct.Memory* @routine_orl_MINUS0x670__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48683b)
  store %struct.Memory* %call_48683b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x670(%rbp,%rax,4)	 RIP: 486842	 Bytes: 7
  %loadMem_486842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486842 = call %struct.Memory* @routine_movl__ecx__MINUS0x670__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486842)
  store %struct.Memory* %call_486842, %struct.Memory** %MEMORY

  ; Code: .L_486849:	 RIP: 486849	 Bytes: 0
  br label %block_.L_486849
block_.L_486849:

  ; Code: jmpq .L_48684e	 RIP: 486849	 Bytes: 5
  %loadMem_486849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486849 = call %struct.Memory* @routine_jmpq_.L_48684e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486849, i64 5, i64 5)
  store %struct.Memory* %call_486849, %struct.Memory** %MEMORY

  br label %block_.L_48684e

  ; Code: .L_48684e:	 RIP: 48684e	 Bytes: 0
block_.L_48684e:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 48684e	 Bytes: 3
  %loadMem_48684e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48684e = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48684e)
  store %struct.Memory* %call_48684e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 486851	 Bytes: 3
  %loadMem_486851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486851 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486851)
  store %struct.Memory* %call_486851, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 486854	 Bytes: 3
  %loadMem_486854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486854 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486854)
  store %struct.Memory* %call_486854, %struct.Memory** %MEMORY

  ; Code: jmpq .L_486794	 RIP: 486857	 Bytes: 5
  %loadMem_486857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486857 = call %struct.Memory* @routine_jmpq_.L_486794(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486857, i64 -195, i64 5)
  store %struct.Memory* %call_486857, %struct.Memory** %MEMORY

  br label %block_.L_486794

  ; Code: .L_48685c:	 RIP: 48685c	 Bytes: 0
block_.L_48685c:

  ; Code: movl $0x15, -0x4(%rbp)	 RIP: 48685c	 Bytes: 7
  %loadMem_48685c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48685c = call %struct.Memory* @routine_movl__0x15__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48685c)
  store %struct.Memory* %call_48685c, %struct.Memory** %MEMORY

  ; Code: .L_486863:	 RIP: 486863	 Bytes: 0
  br label %block_.L_486863
block_.L_486863:

  ; Code: cmpl $0x190, -0x4(%rbp)	 RIP: 486863	 Bytes: 7
  %loadMem_486863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486863 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486863)
  store %struct.Memory* %call_486863, %struct.Memory** %MEMORY

  ; Code: jge .L_486dbf	 RIP: 48686a	 Bytes: 6
  %loadMem_48686a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48686a = call %struct.Memory* @routine_jge_.L_486dbf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48686a, i8* %BRANCH_TAKEN, i64 1365, i64 6, i64 6)
  store %struct.Memory* %call_48686a, %struct.Memory** %MEMORY

  %loadBr_48686a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48686a = icmp eq i8 %loadBr_48686a, 1
  br i1 %cmpBr_48686a, label %block_.L_486dbf, label %block_486870

block_486870:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 486870	 Bytes: 4
  %loadMem_486870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486870 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486870)
  store %struct.Memory* %call_486870, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 486874	 Bytes: 8
  %loadMem_486874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486874 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486874)
  store %struct.Memory* %call_486874, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 48687c	 Bytes: 3
  %loadMem_48687c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48687c = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48687c)
  store %struct.Memory* %call_48687c, %struct.Memory** %MEMORY

  ; Code: jne .L_48688a	 RIP: 48687f	 Bytes: 6
  %loadMem_48687f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48687f = call %struct.Memory* @routine_jne_.L_48688a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48687f, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_48687f, %struct.Memory** %MEMORY

  %loadBr_48687f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48687f = icmp eq i8 %loadBr_48687f, 1
  br i1 %cmpBr_48687f, label %block_.L_48688a, label %block_486885

block_486885:
  ; Code: jmpq .L_486db1	 RIP: 486885	 Bytes: 5
  %loadMem_486885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486885 = call %struct.Memory* @routine_jmpq_.L_486db1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486885, i64 1324, i64 5)
  store %struct.Memory* %call_486885, %struct.Memory** %MEMORY

  br label %block_.L_486db1

  ; Code: .L_48688a:	 RIP: 48688a	 Bytes: 0
block_.L_48688a:

  ; Code: movl $0x1, -0x28(%rbp)	 RIP: 48688a	 Bytes: 7
  %loadMem_48688a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48688a = call %struct.Memory* @routine_movl__0x1__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48688a)
  store %struct.Memory* %call_48688a, %struct.Memory** %MEMORY

  ; Code: .L_486891:	 RIP: 486891	 Bytes: 0
  br label %block_.L_486891
block_.L_486891:

  ; Code: cmpl $0x2, -0x28(%rbp)	 RIP: 486891	 Bytes: 4
  %loadMem_486891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486891 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486891)
  store %struct.Memory* %call_486891, %struct.Memory** %MEMORY

  ; Code: jg .L_486dac	 RIP: 486895	 Bytes: 6
  %loadMem_486895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486895 = call %struct.Memory* @routine_jg_.L_486dac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486895, i8* %BRANCH_TAKEN, i64 1303, i64 6, i64 6)
  store %struct.Memory* %call_486895, %struct.Memory** %MEMORY

  %loadBr_486895 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486895 = icmp eq i8 %loadBr_486895, 1
  br i1 %cmpBr_486895, label %block_.L_486dac, label %block_48689b

block_48689b:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 48689b	 Bytes: 4
  %loadMem_48689b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48689b = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48689b)
  store %struct.Memory* %call_48689b, %struct.Memory** %MEMORY

  ; Code: movl -0x670(%rbp,%rax,4), %ecx	 RIP: 48689f	 Bytes: 7
  %loadMem_48689f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48689f = call %struct.Memory* @routine_movl_MINUS0x670__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48689f)
  store %struct.Memory* %call_48689f, %struct.Memory** %MEMORY

  ; Code: andl -0x28(%rbp), %ecx	 RIP: 4868a6	 Bytes: 3
  %loadMem_4868a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4868a6 = call %struct.Memory* @routine_andl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4868a6)
  store %struct.Memory* %call_4868a6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 4868a9	 Bytes: 3
  %loadMem_4868a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4868a9 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4868a9)
  store %struct.Memory* %call_4868a9, %struct.Memory** %MEMORY

  ; Code: jne .L_4868b7	 RIP: 4868ac	 Bytes: 6
  %loadMem_4868ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4868ac = call %struct.Memory* @routine_jne_.L_4868b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4868ac, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4868ac, %struct.Memory** %MEMORY

  %loadBr_4868ac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4868ac = icmp eq i8 %loadBr_4868ac, 1
  br i1 %cmpBr_4868ac, label %block_.L_4868b7, label %block_4868b2

block_4868b2:
  ; Code: jmpq .L_486d9e	 RIP: 4868b2	 Bytes: 5
  %loadMem_4868b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4868b2 = call %struct.Memory* @routine_jmpq_.L_486d9e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4868b2, i64 1260, i64 5)
  store %struct.Memory* %call_4868b2, %struct.Memory** %MEMORY

  br label %block_.L_486d9e

  ; Code: .L_4868b7:	 RIP: 4868b7	 Bytes: 0
block_.L_4868b7:

  ; Code: movq $0x582f5f, %rdx	 RIP: 4868b7	 Bytes: 10
  %loadMem_4868b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4868b7 = call %struct.Memory* @routine_movq__0x582f5f___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4868b7)
  store %struct.Memory* %call_4868b7, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 4868c1	 Bytes: 2
  %loadMem_4868c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4868c1 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4868c1)
  store %struct.Memory* %call_4868c1, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edi	 RIP: 4868c3	 Bytes: 3
  %loadMem_4868c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4868c3 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4868c3)
  store %struct.Memory* %call_4868c3, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %esi	 RIP: 4868c6	 Bytes: 3
  %loadMem_4868c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4868c6 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4868c6)
  store %struct.Memory* %call_4868c6, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4868c9	 Bytes: 2
  %loadMem_4868c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4868c9 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4868c9)
  store %struct.Memory* %call_4868c9, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 4868cb	 Bytes: 3
  %loadMem_4868cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4868cb = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4868cb)
  store %struct.Memory* %call_4868cb, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 4868ce	 Bytes: 3
  %loadMem_4868ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4868ce = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4868ce)
  store %struct.Memory* %call_4868ce, %struct.Memory** %MEMORY

  ; Code: callq .trymove	 RIP: 4868d1	 Bytes: 5
  %loadMem1_4868d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4868d1 = call %struct.Memory* @routine_callq_.trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4868d1, i64 -514721, i64 5, i64 5)
  store %struct.Memory* %call1_4868d1, %struct.Memory** %MEMORY

  %loadMem2_4868d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4868d1 = load i64, i64* %3
  %call2_4868d1 = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64  %loadPC_4868d1, %struct.Memory* %loadMem2_4868d1)
  store %struct.Memory* %call2_4868d1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4868d6	 Bytes: 3
  %loadMem_4868d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4868d6 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4868d6)
  store %struct.Memory* %call_4868d6, %struct.Memory** %MEMORY

  ; Code: jne .L_4868e4	 RIP: 4868d9	 Bytes: 6
  %loadMem_4868d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4868d9 = call %struct.Memory* @routine_jne_.L_4868e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4868d9, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4868d9, %struct.Memory** %MEMORY

  %loadBr_4868d9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4868d9 = icmp eq i8 %loadBr_4868d9, 1
  br i1 %cmpBr_4868d9, label %block_.L_4868e4, label %block_4868df

block_4868df:
  ; Code: jmpq .L_486d9e	 RIP: 4868df	 Bytes: 5
  %loadMem_4868df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4868df = call %struct.Memory* @routine_jmpq_.L_486d9e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4868df, i64 1215, i64 5)
  store %struct.Memory* %call_4868df, %struct.Memory** %MEMORY

  br label %block_.L_486d9e

  ; Code: .L_4868e4:	 RIP: 4868e4	 Bytes: 0
block_.L_4868e4:

  ; Code: movl 0xab0f24, %eax	 RIP: 4868e4	 Bytes: 7
  %loadMem_4868e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4868e4 = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4868e4)
  store %struct.Memory* %call_4868e4, %struct.Memory** %MEMORY

  ; Code: andl $0x400, %eax	 RIP: 4868eb	 Bytes: 5
  %loadMem_4868eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4868eb = call %struct.Memory* @routine_andl__0x400___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4868eb)
  store %struct.Memory* %call_4868eb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4868f0	 Bytes: 3
  %loadMem_4868f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4868f0 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4868f0)
  store %struct.Memory* %call_4868f0, %struct.Memory** %MEMORY

  ; Code: jne .L_4868fe	 RIP: 4868f3	 Bytes: 6
  %loadMem_4868f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4868f3 = call %struct.Memory* @routine_jne_.L_4868fe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4868f3, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4868f3, %struct.Memory** %MEMORY

  %loadBr_4868f3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4868f3 = icmp eq i8 %loadBr_4868f3, 1
  br i1 %cmpBr_4868f3, label %block_.L_4868fe, label %block_4868f9

block_4868f9:
  ; Code: jmpq .L_486918	 RIP: 4868f9	 Bytes: 5
  %loadMem_4868f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4868f9 = call %struct.Memory* @routine_jmpq_.L_486918(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4868f9, i64 31, i64 5)
  store %struct.Memory* %call_4868f9, %struct.Memory** %MEMORY

  br label %block_.L_486918

  ; Code: .L_4868fe:	 RIP: 4868fe	 Bytes: 0
block_.L_4868fe:

  ; Code: movq $0x582f6a, %rdi	 RIP: 4868fe	 Bytes: 10
  %loadMem_4868fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4868fe = call %struct.Memory* @routine_movq__0x582f6a___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4868fe)
  store %struct.Memory* %call_4868fe, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 486908	 Bytes: 3
  %loadMem_486908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486908 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486908)
  store %struct.Memory* %call_486908, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48690b	 Bytes: 2
  %loadMem_48690b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48690b = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48690b)
  store %struct.Memory* %call_48690b, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48690d	 Bytes: 5
  %loadMem1_48690d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48690d = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48690d, i64 -215901, i64 5, i64 5)
  store %struct.Memory* %call1_48690d, %struct.Memory** %MEMORY

  %loadMem2_48690d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48690d = load i64, i64* %3
  %call2_48690d = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48690d, %struct.Memory* %loadMem2_48690d)
  store %struct.Memory* %call2_48690d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6b0(%rbp)	 RIP: 486912	 Bytes: 6
  %loadMem_486912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486912 = call %struct.Memory* @routine_movl__eax__MINUS0x6b0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486912)
  store %struct.Memory* %call_486912, %struct.Memory** %MEMORY

  ; Code: .L_486918:	 RIP: 486918	 Bytes: 0
  br label %block_.L_486918
block_.L_486918:

  ; Code: callq .increase_depth_values	 RIP: 486918	 Bytes: 5
  %loadMem1_486918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_486918 = call %struct.Memory* @routine_callq_.increase_depth_values(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_486918, i64 -62568, i64 5, i64 5)
  store %struct.Memory* %call1_486918, %struct.Memory** %MEMORY

  %loadMem2_486918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_486918 = load i64, i64* %3
  %call2_486918 = call %struct.Memory* @sub_4774b0.increase_depth_values(%struct.State* %0, i64  %loadPC_486918, %struct.Memory* %loadMem2_486918)
  store %struct.Memory* %call2_486918, %struct.Memory** %MEMORY

  ; Code: movl $0x15, -0x2c(%rbp)	 RIP: 48691d	 Bytes: 7
  %loadMem_48691d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48691d = call %struct.Memory* @routine_movl__0x15__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48691d)
  store %struct.Memory* %call_48691d, %struct.Memory** %MEMORY

  ; Code: .L_486924:	 RIP: 486924	 Bytes: 0
  br label %block_.L_486924
block_.L_486924:

  ; Code: cmpl $0x190, -0x2c(%rbp)	 RIP: 486924	 Bytes: 7
  %loadMem_486924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486924 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486924)
  store %struct.Memory* %call_486924, %struct.Memory** %MEMORY

  ; Code: jge .L_486d94	 RIP: 48692b	 Bytes: 6
  %loadMem_48692b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48692b = call %struct.Memory* @routine_jge_.L_486d94(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48692b, i8* %BRANCH_TAKEN, i64 1129, i64 6, i64 6)
  store %struct.Memory* %call_48692b, %struct.Memory** %MEMORY

  %loadBr_48692b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48692b = icmp eq i8 %loadBr_48692b, 1
  br i1 %cmpBr_48692b, label %block_.L_486d94, label %block_486931

block_486931:
  ; Code: movslq -0x2c(%rbp), %rax	 RIP: 486931	 Bytes: 4
  %loadMem_486931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486931 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486931)
  store %struct.Memory* %call_486931, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 486935	 Bytes: 8
  %loadMem_486935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486935 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486935)
  store %struct.Memory* %call_486935, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %ecx	 RIP: 48693d	 Bytes: 3
  %loadMem_48693d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48693d = call %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48693d)
  store %struct.Memory* %call_48693d, %struct.Memory** %MEMORY

  ; Code: je .L_48695b	 RIP: 486940	 Bytes: 6
  %loadMem_486940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486940 = call %struct.Memory* @routine_je_.L_48695b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486940, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_486940, %struct.Memory** %MEMORY

  %loadBr_486940 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486940 = icmp eq i8 %loadBr_486940, 1
  br i1 %cmpBr_486940, label %block_.L_48695b, label %block_486946

block_486946:
  ; Code: movslq -0x2c(%rbp), %rax	 RIP: 486946	 Bytes: 4
  %loadMem_486946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486946 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486946)
  store %struct.Memory* %call_486946, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 48694a	 Bytes: 8
  %loadMem_48694a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48694a = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48694a)
  store %struct.Memory* %call_48694a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %ecx	 RIP: 486952	 Bytes: 3
  %loadMem_486952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486952 = call %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486952)
  store %struct.Memory* %call_486952, %struct.Memory** %MEMORY

  ; Code: jne .L_48696f	 RIP: 486955	 Bytes: 6
  %loadMem_486955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486955 = call %struct.Memory* @routine_jne_.L_48696f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486955, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_486955, %struct.Memory** %MEMORY

  %loadBr_486955 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486955 = icmp eq i8 %loadBr_486955, 1
  br i1 %cmpBr_486955, label %block_.L_48696f, label %block_.L_48695b

  ; Code: .L_48695b:	 RIP: 48695b	 Bytes: 0
block_.L_48695b:

  ; Code: movl -0x2c(%rbp), %edi	 RIP: 48695b	 Bytes: 3
  %loadMem_48695b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48695b = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48695b)
  store %struct.Memory* %call_48695b, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 48695e	 Bytes: 3
  %loadMem_48695e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48695e = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48695e)
  store %struct.Memory* %call_48695e, %struct.Memory** %MEMORY

  ; Code: callq .is_worm_origin	 RIP: 486961	 Bytes: 5
  %loadMem1_486961 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_486961 = call %struct.Memory* @routine_callq_.is_worm_origin(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_486961, i64 6031, i64 5, i64 5)
  store %struct.Memory* %call1_486961, %struct.Memory** %MEMORY

  %loadMem2_486961 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_486961 = load i64, i64* %3
  %call2_486961 = call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* %0, i64  %loadPC_486961, %struct.Memory* %loadMem2_486961)
  store %struct.Memory* %call2_486961, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 486966	 Bytes: 3
  %loadMem_486966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486966 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486966)
  store %struct.Memory* %call_486966, %struct.Memory** %MEMORY

  ; Code: jne .L_486974	 RIP: 486969	 Bytes: 6
  %loadMem_486969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486969 = call %struct.Memory* @routine_jne_.L_486974(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486969, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_486969, %struct.Memory** %MEMORY

  %loadBr_486969 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486969 = icmp eq i8 %loadBr_486969, 1
  br i1 %cmpBr_486969, label %block_.L_486974, label %block_.L_48696f

  ; Code: .L_48696f:	 RIP: 48696f	 Bytes: 0
block_.L_48696f:

  ; Code: jmpq .L_486d86	 RIP: 48696f	 Bytes: 5
  %loadMem_48696f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48696f = call %struct.Memory* @routine_jmpq_.L_486d86(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48696f, i64 1047, i64 5)
  store %struct.Memory* %call_48696f, %struct.Memory** %MEMORY

  br label %block_.L_486d86

  ; Code: .L_486974:	 RIP: 486974	 Bytes: 0
block_.L_486974:

  ; Code: movl $0x3, %eax	 RIP: 486974	 Bytes: 5
  %loadMem_486974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486974 = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486974)
  store %struct.Memory* %call_486974, %struct.Memory** %MEMORY

  ; Code: movq $0xb0eff0, %rcx	 RIP: 486979	 Bytes: 10
  %loadMem_486979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486979 = call %struct.Memory* @routine_movq__0xb0eff0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486979)
  store %struct.Memory* %call_486979, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 486983	 Bytes: 4
  %loadMem_486983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486983 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486983)
  store %struct.Memory* %call_486983, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rdx, %rdx	 RIP: 486987	 Bytes: 7
  %loadMem_486987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486987 = call %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486987)
  store %struct.Memory* %call_486987, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 48698e	 Bytes: 3
  %loadMem_48698e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48698e = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48698e)
  store %struct.Memory* %call_48698e, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %esi	 RIP: 486991	 Bytes: 2
  %loadMem_486991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486991 = call %struct.Memory* @routine_movl___rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486991)
  store %struct.Memory* %call_486991, %struct.Memory** %MEMORY

  ; Code: subl -0x28(%rbp), %eax	 RIP: 486993	 Bytes: 3
  %loadMem_486993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486993 = call %struct.Memory* @routine_subl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486993)
  store %struct.Memory* %call_486993, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %esi	 RIP: 486996	 Bytes: 2
  %loadMem_486996 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486996 = call %struct.Memory* @routine_cmpl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486996)
  store %struct.Memory* %call_486996, %struct.Memory** %MEMORY

  ; Code: jne .L_486b82	 RIP: 486998	 Bytes: 6
  %loadMem_486998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486998 = call %struct.Memory* @routine_jne_.L_486b82(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486998, i8* %BRANCH_TAKEN, i64 490, i64 6, i64 6)
  store %struct.Memory* %call_486998, %struct.Memory** %MEMORY

  %loadBr_486998 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486998 = icmp eq i8 %loadBr_486998, 1
  br i1 %cmpBr_486998, label %block_.L_486b82, label %block_48699e

block_48699e:
  ; Code: movq $0xb0eff0, %rax	 RIP: 48699e	 Bytes: 10
  %loadMem_48699e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48699e = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48699e)
  store %struct.Memory* %call_48699e, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 4869a8	 Bytes: 4
  %loadMem_4869a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4869a8 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4869a8)
  store %struct.Memory* %call_4869a8, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 4869ac	 Bytes: 7
  %loadMem_4869ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4869ac = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4869ac)
  store %struct.Memory* %call_4869ac, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4869b3	 Bytes: 3
  %loadMem_4869b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4869b3 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4869b3)
  store %struct.Memory* %call_4869b3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x64(%rax)	 RIP: 4869b6	 Bytes: 4
  %loadMem_4869b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4869b6 = call %struct.Memory* @routine_cmpl__0x0__0x64__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4869b6)
  store %struct.Memory* %call_4869b6, %struct.Memory** %MEMORY

  ; Code: je .L_486b82	 RIP: 4869ba	 Bytes: 6
  %loadMem_4869ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4869ba = call %struct.Memory* @routine_je_.L_486b82(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4869ba, i8* %BRANCH_TAKEN, i64 456, i64 6, i64 6)
  store %struct.Memory* %call_4869ba, %struct.Memory** %MEMORY

  %loadBr_4869ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4869ba = icmp eq i8 %loadBr_4869ba, 1
  br i1 %cmpBr_4869ba, label %block_.L_486b82, label %block_4869c0

block_4869c0:
  ; Code: movq $0xb0eff0, %rax	 RIP: 4869c0	 Bytes: 10
  %loadMem_4869c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4869c0 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4869c0)
  store %struct.Memory* %call_4869c0, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 4869ca	 Bytes: 4
  %loadMem_4869ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4869ca = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4869ca)
  store %struct.Memory* %call_4869ca, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 4869ce	 Bytes: 7
  %loadMem_4869ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4869ce = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4869ce)
  store %struct.Memory* %call_4869ce, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4869d5	 Bytes: 3
  %loadMem_4869d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4869d5 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4869d5)
  store %struct.Memory* %call_4869d5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb4(%rax)	 RIP: 4869d8	 Bytes: 7
  %loadMem_4869d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4869d8 = call %struct.Memory* @routine_cmpl__0x0__0xb4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4869d8)
  store %struct.Memory* %call_4869d8, %struct.Memory** %MEMORY

  ; Code: je .L_486b82	 RIP: 4869df	 Bytes: 6
  %loadMem_4869df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4869df = call %struct.Memory* @routine_je_.L_486b82(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4869df, i8* %BRANCH_TAKEN, i64 419, i64 6, i64 6)
  store %struct.Memory* %call_4869df, %struct.Memory** %MEMORY

  %loadBr_4869df = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4869df = icmp eq i8 %loadBr_4869df, 1
  br i1 %cmpBr_4869df, label %block_.L_486b82, label %block_4869e5

block_4869e5:
  ; Code: xorl %eax, %eax	 RIP: 4869e5	 Bytes: 2
  %loadMem_4869e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4869e5 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4869e5)
  store %struct.Memory* %call_4869e5, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4869e7	 Bytes: 2
  %loadMem_4869e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4869e7 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4869e7)
  store %struct.Memory* %call_4869e7, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edi	 RIP: 4869e9	 Bytes: 3
  %loadMem_4869e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4869e9 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4869e9)
  store %struct.Memory* %call_4869e9, %struct.Memory** %MEMORY

  ; Code: callq .find_defense	 RIP: 4869ec	 Bytes: 5
  %loadMem1_4869ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4869ec = call %struct.Memory* @routine_callq_.find_defense(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4869ec, i64 -115308, i64 5, i64 5)
  store %struct.Memory* %call1_4869ec, %struct.Memory** %MEMORY

  %loadMem2_4869ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4869ec = load i64, i64* %3
  %call2_4869ec = call %struct.Memory* @sub_46a780.find_defense(%struct.State* %0, i64  %loadPC_4869ec, %struct.Memory* %loadMem2_4869ec)
  store %struct.Memory* %call2_4869ec, %struct.Memory** %MEMORY

  ; Code: movq $0xb0eff0, %rsi	 RIP: 4869f1	 Bytes: 10
  %loadMem_4869f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4869f1 = call %struct.Memory* @routine_movq__0xb0eff0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4869f1)
  store %struct.Memory* %call_4869f1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x674(%rbp)	 RIP: 4869fb	 Bytes: 6
  %loadMem_4869fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4869fb = call %struct.Memory* @routine_movl__eax__MINUS0x674__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4869fb)
  store %struct.Memory* %call_4869fb, %struct.Memory** %MEMORY

  ; Code: movl -0x674(%rbp), %eax	 RIP: 486a01	 Bytes: 6
  %loadMem_486a01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486a01 = call %struct.Memory* @routine_movl_MINUS0x674__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486a01)
  store %struct.Memory* %call_486a01, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 486a07	 Bytes: 4
  %loadMem_486a07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486a07 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486a07)
  store %struct.Memory* %call_486a07, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 486a0b	 Bytes: 7
  %loadMem_486a0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486a0b = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486a0b)
  store %struct.Memory* %call_486a0b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 486a12	 Bytes: 3
  %loadMem_486a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486a12 = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486a12)
  store %struct.Memory* %call_486a12, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb4(%rsi), %eax	 RIP: 486a15	 Bytes: 6
  %loadMem_486a15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486a15 = call %struct.Memory* @routine_cmpl_0xb4__rsi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486a15)
  store %struct.Memory* %call_486a15, %struct.Memory** %MEMORY

  ; Code: jge .L_486b7d	 RIP: 486a1b	 Bytes: 6
  %loadMem_486a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486a1b = call %struct.Memory* @routine_jge_.L_486b7d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486a1b, i8* %BRANCH_TAKEN, i64 354, i64 6, i64 6)
  store %struct.Memory* %call_486a1b, %struct.Memory** %MEMORY

  %loadBr_486a1b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486a1b = icmp eq i8 %loadBr_486a1b, 1
  br i1 %cmpBr_486a1b, label %block_.L_486b7d, label %block_486a21

block_486a21:
  ; Code: movq $0xb0eff0, %rax	 RIP: 486a21	 Bytes: 10
  %loadMem_486a21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486a21 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486a21)
  store %struct.Memory* %call_486a21, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x678(%rbp)	 RIP: 486a2b	 Bytes: 10
  %loadMem_486a2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486a2b = call %struct.Memory* @routine_movl__0x1__MINUS0x678__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486a2b)
  store %struct.Memory* %call_486a2b, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 486a35	 Bytes: 4
  %loadMem_486a35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486a35 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486a35)
  store %struct.Memory* %call_486a35, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 486a39	 Bytes: 7
  %loadMem_486a39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486a39 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486a39)
  store %struct.Memory* %call_486a39, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 486a40	 Bytes: 3
  %loadMem_486a40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486a40 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486a40)
  store %struct.Memory* %call_486a40, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb4(%rax)	 RIP: 486a43	 Bytes: 7
  %loadMem_486a43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486a43 = call %struct.Memory* @routine_cmpl__0x0__0xb4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486a43)
  store %struct.Memory* %call_486a43, %struct.Memory** %MEMORY

  ; Code: je .L_486b0f	 RIP: 486a4a	 Bytes: 6
  %loadMem_486a4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486a4a = call %struct.Memory* @routine_je_.L_486b0f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486a4a, i8* %BRANCH_TAKEN, i64 197, i64 6, i64 6)
  store %struct.Memory* %call_486a4a, %struct.Memory** %MEMORY

  %loadBr_486a4a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486a4a = icmp eq i8 %loadBr_486a4a, 1
  br i1 %cmpBr_486a4a, label %block_.L_486b0f, label %block_486a50

block_486a50:
  ; Code: movq $0x582f5f, %rdx	 RIP: 486a50	 Bytes: 10
  %loadMem_486a50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486a50 = call %struct.Memory* @routine_movq__0x582f5f___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486a50)
  store %struct.Memory* %call_486a50, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 486a5a	 Bytes: 2
  %loadMem_486a5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486a5a = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486a5a)
  store %struct.Memory* %call_486a5a, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %ecx	 RIP: 486a5c	 Bytes: 5
  %loadMem_486a5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486a5c = call %struct.Memory* @routine_movl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486a5c)
  store %struct.Memory* %call_486a5c, %struct.Memory** %MEMORY

  ; Code: movq $0xb0eff0, %rsi	 RIP: 486a61	 Bytes: 10
  %loadMem_486a61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486a61 = call %struct.Memory* @routine_movq__0xb0eff0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486a61)
  store %struct.Memory* %call_486a61, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdi	 RIP: 486a6b	 Bytes: 4
  %loadMem_486a6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486a6b = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486a6b)
  store %struct.Memory* %call_486a6b, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rdi, %rdi	 RIP: 486a6f	 Bytes: 7
  %loadMem_486a6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486a6f = call %struct.Memory* @routine_imulq__0x17c___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486a6f)
  store %struct.Memory* %call_486a6f, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 486a76	 Bytes: 3
  %loadMem_486a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486a76 = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486a76)
  store %struct.Memory* %call_486a76, %struct.Memory** %MEMORY

  ; Code: movl 0x8c(%rsi), %edi	 RIP: 486a79	 Bytes: 6
  %loadMem_486a79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486a79 = call %struct.Memory* @routine_movl_0x8c__rsi____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486a79)
  store %struct.Memory* %call_486a79, %struct.Memory** %MEMORY

  ; Code: subl -0x28(%rbp), %ecx	 RIP: 486a7f	 Bytes: 3
  %loadMem_486a7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486a7f = call %struct.Memory* @routine_subl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486a7f)
  store %struct.Memory* %call_486a7f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 486a82	 Bytes: 2
  %loadMem_486a82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486a82 = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486a82)
  store %struct.Memory* %call_486a82, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 486a84	 Bytes: 2
  %loadMem_486a84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486a84 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486a84)
  store %struct.Memory* %call_486a84, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 486a86	 Bytes: 3
  %loadMem_486a86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486a86 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486a86)
  store %struct.Memory* %call_486a86, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 486a89	 Bytes: 3
  %loadMem_486a89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486a89 = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486a89)
  store %struct.Memory* %call_486a89, %struct.Memory** %MEMORY

  ; Code: callq .trymove	 RIP: 486a8c	 Bytes: 5
  %loadMem1_486a8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_486a8c = call %struct.Memory* @routine_callq_.trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_486a8c, i64 -515164, i64 5, i64 5)
  store %struct.Memory* %call1_486a8c, %struct.Memory** %MEMORY

  %loadMem2_486a8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_486a8c = load i64, i64* %3
  %call2_486a8c = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64  %loadPC_486a8c, %struct.Memory* %loadMem2_486a8c)
  store %struct.Memory* %call2_486a8c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 486a91	 Bytes: 3
  %loadMem_486a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486a91 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486a91)
  store %struct.Memory* %call_486a91, %struct.Memory** %MEMORY

  ; Code: je .L_486b0f	 RIP: 486a94	 Bytes: 6
  %loadMem_486a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486a94 = call %struct.Memory* @routine_je_.L_486b0f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486a94, i8* %BRANCH_TAKEN, i64 123, i64 6, i64 6)
  store %struct.Memory* %call_486a94, %struct.Memory** %MEMORY

  %loadBr_486a94 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486a94 = icmp eq i8 %loadBr_486a94, 1
  br i1 %cmpBr_486a94, label %block_.L_486b0f, label %block_486a9a

block_486a9a:
  ; Code: xorl %eax, %eax	 RIP: 486a9a	 Bytes: 2
  %loadMem_486a9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486a9a = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486a9a)
  store %struct.Memory* %call_486a9a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 486a9c	 Bytes: 2
  %loadMem_486a9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486a9c = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486a9c)
  store %struct.Memory* %call_486a9c, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edi	 RIP: 486a9e	 Bytes: 3
  %loadMem_486a9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486a9e = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486a9e)
  store %struct.Memory* %call_486a9e, %struct.Memory** %MEMORY

  ; Code: callq .attack	 RIP: 486aa1	 Bytes: 5
  %loadMem1_486aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_486aa1 = call %struct.Memory* @routine_callq_.attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_486aa1, i64 -167777, i64 5, i64 5)
  store %struct.Memory* %call1_486aa1, %struct.Memory** %MEMORY

  %loadMem2_486aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_486aa1 = load i64, i64* %3
  %call2_486aa1 = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64  %loadPC_486aa1, %struct.Memory* %loadMem2_486aa1)
  store %struct.Memory* %call2_486aa1, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %edi	 RIP: 486aa6	 Bytes: 5
  %loadMem_486aa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486aa6 = call %struct.Memory* @routine_movl__0x5___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486aa6)
  store %struct.Memory* %call_486aa6, %struct.Memory** %MEMORY

  ; Code: subl %eax, %edi	 RIP: 486aab	 Bytes: 2
  %loadMem_486aab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486aab = call %struct.Memory* @routine_subl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486aab)
  store %struct.Memory* %call_486aab, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x67c(%rbp)	 RIP: 486aad	 Bytes: 6
  %loadMem_486aad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486aad = call %struct.Memory* @routine_movl__edi__MINUS0x67c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486aad)
  store %struct.Memory* %call_486aad, %struct.Memory** %MEMORY

  ; Code: movl -0x67c(%rbp), %eax	 RIP: 486ab3	 Bytes: 6
  %loadMem_486ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486ab3 = call %struct.Memory* @routine_movl_MINUS0x67c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486ab3)
  store %struct.Memory* %call_486ab3, %struct.Memory** %MEMORY

  ; Code: cmpl -0x674(%rbp), %eax	 RIP: 486ab9	 Bytes: 6
  %loadMem_486ab9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486ab9 = call %struct.Memory* @routine_cmpl_MINUS0x674__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486ab9)
  store %struct.Memory* %call_486ab9, %struct.Memory** %MEMORY

  ; Code: jle .L_486b0a	 RIP: 486abf	 Bytes: 6
  %loadMem_486abf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486abf = call %struct.Memory* @routine_jle_.L_486b0a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486abf, i8* %BRANCH_TAKEN, i64 75, i64 6, i64 6)
  store %struct.Memory* %call_486abf, %struct.Memory** %MEMORY

  %loadBr_486abf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486abf = icmp eq i8 %loadBr_486abf, 1
  br i1 %cmpBr_486abf, label %block_.L_486b0a, label %block_486ac5

block_486ac5:
  ; Code: movq $0xb0eff0, %rax	 RIP: 486ac5	 Bytes: 10
  %loadMem_486ac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486ac5 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486ac5)
  store %struct.Memory* %call_486ac5, %struct.Memory** %MEMORY

  ; Code: movl -0x67c(%rbp), %ecx	 RIP: 486acf	 Bytes: 6
  %loadMem_486acf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486acf = call %struct.Memory* @routine_movl_MINUS0x67c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486acf)
  store %struct.Memory* %call_486acf, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x674(%rbp)	 RIP: 486ad5	 Bytes: 6
  %loadMem_486ad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486ad5 = call %struct.Memory* @routine_movl__ecx__MINUS0x674__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486ad5)
  store %struct.Memory* %call_486ad5, %struct.Memory** %MEMORY

  ; Code: movl -0x674(%rbp), %ecx	 RIP: 486adb	 Bytes: 6
  %loadMem_486adb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486adb = call %struct.Memory* @routine_movl_MINUS0x674__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486adb)
  store %struct.Memory* %call_486adb, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 486ae1	 Bytes: 4
  %loadMem_486ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486ae1 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486ae1)
  store %struct.Memory* %call_486ae1, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rdx, %rdx	 RIP: 486ae5	 Bytes: 7
  %loadMem_486ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486ae5 = call %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486ae5)
  store %struct.Memory* %call_486ae5, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 486aec	 Bytes: 3
  %loadMem_486aec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486aec = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486aec)
  store %struct.Memory* %call_486aec, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb4(%rax), %ecx	 RIP: 486aef	 Bytes: 6
  %loadMem_486aef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486aef = call %struct.Memory* @routine_cmpl_0xb4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486aef)
  store %struct.Memory* %call_486aef, %struct.Memory** %MEMORY

  ; Code: jl .L_486b05	 RIP: 486af5	 Bytes: 6
  %loadMem_486af5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486af5 = call %struct.Memory* @routine_jl_.L_486b05(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486af5, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_486af5, %struct.Memory** %MEMORY

  %loadBr_486af5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486af5 = icmp eq i8 %loadBr_486af5, 1
  br i1 %cmpBr_486af5, label %block_.L_486b05, label %block_486afb

block_486afb:
  ; Code: movl $0x0, -0x678(%rbp)	 RIP: 486afb	 Bytes: 10
  %loadMem_486afb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486afb = call %struct.Memory* @routine_movl__0x0__MINUS0x678__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486afb)
  store %struct.Memory* %call_486afb, %struct.Memory** %MEMORY

  ; Code: .L_486b05:	 RIP: 486b05	 Bytes: 0
  br label %block_.L_486b05
block_.L_486b05:

  ; Code: jmpq .L_486b0a	 RIP: 486b05	 Bytes: 5
  %loadMem_486b05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486b05 = call %struct.Memory* @routine_jmpq_.L_486b0a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486b05, i64 5, i64 5)
  store %struct.Memory* %call_486b05, %struct.Memory** %MEMORY

  br label %block_.L_486b0a

  ; Code: .L_486b0a:	 RIP: 486b0a	 Bytes: 0
block_.L_486b0a:

  ; Code: callq .popgo	 RIP: 486b0a	 Bytes: 5
  %loadMem1_486b0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_486b0a = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_486b0a, i64 -495018, i64 5, i64 5)
  store %struct.Memory* %call1_486b0a, %struct.Memory** %MEMORY

  %loadMem2_486b0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_486b0a = load i64, i64* %3
  %call2_486b0a = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_486b0a, %struct.Memory* %loadMem2_486b0a)
  store %struct.Memory* %call2_486b0a, %struct.Memory** %MEMORY

  ; Code: .L_486b0f:	 RIP: 486b0f	 Bytes: 0
  br label %block_.L_486b0f
block_.L_486b0f:

  ; Code: cmpl $0x0, -0x678(%rbp)	 RIP: 486b0f	 Bytes: 7
  %loadMem_486b0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486b0f = call %struct.Memory* @routine_cmpl__0x0__MINUS0x678__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486b0f)
  store %struct.Memory* %call_486b0f, %struct.Memory** %MEMORY

  ; Code: je .L_486b78	 RIP: 486b16	 Bytes: 6
  %loadMem_486b16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486b16 = call %struct.Memory* @routine_je_.L_486b78(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486b16, i8* %BRANCH_TAKEN, i64 98, i64 6, i64 6)
  store %struct.Memory* %call_486b16, %struct.Memory** %MEMORY

  %loadBr_486b16 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486b16 = icmp eq i8 %loadBr_486b16, 1
  br i1 %cmpBr_486b16, label %block_.L_486b78, label %block_486b1c

block_486b1c:
  ; Code: movl 0xab0f24, %eax	 RIP: 486b1c	 Bytes: 7
  %loadMem_486b1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486b1c = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486b1c)
  store %struct.Memory* %call_486b1c, %struct.Memory** %MEMORY

  ; Code: andl $0x400, %eax	 RIP: 486b23	 Bytes: 5
  %loadMem_486b23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486b23 = call %struct.Memory* @routine_andl__0x400___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486b23)
  store %struct.Memory* %call_486b23, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 486b28	 Bytes: 3
  %loadMem_486b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486b28 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486b28)
  store %struct.Memory* %call_486b28, %struct.Memory** %MEMORY

  ; Code: jne .L_486b36	 RIP: 486b2b	 Bytes: 6
  %loadMem_486b2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486b2b = call %struct.Memory* @routine_jne_.L_486b36(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486b2b, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_486b2b, %struct.Memory** %MEMORY

  %loadBr_486b2b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486b2b = icmp eq i8 %loadBr_486b2b, 1
  br i1 %cmpBr_486b2b, label %block_.L_486b36, label %block_486b31

block_486b31:
  ; Code: jmpq .L_486b60	 RIP: 486b31	 Bytes: 5
  %loadMem_486b31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486b31 = call %struct.Memory* @routine_jmpq_.L_486b60(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486b31, i64 47, i64 5)
  store %struct.Memory* %call_486b31, %struct.Memory** %MEMORY

  br label %block_.L_486b60

  ; Code: .L_486b36:	 RIP: 486b36	 Bytes: 0
block_.L_486b36:

  ; Code: movq $0x582f76, %rdi	 RIP: 486b36	 Bytes: 10
  %loadMem_486b36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486b36 = call %struct.Memory* @routine_movq__0x582f76___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486b36)
  store %struct.Memory* %call_486b36, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 486b40	 Bytes: 5
  %loadMem_486b40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486b40 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486b40)
  store %struct.Memory* %call_486b40, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 486b45	 Bytes: 3
  %loadMem_486b45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486b45 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486b45)
  store %struct.Memory* %call_486b45, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edx	 RIP: 486b48	 Bytes: 3
  %loadMem_486b48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486b48 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486b48)
  store %struct.Memory* %call_486b48, %struct.Memory** %MEMORY

  ; Code: subl -0x674(%rbp), %eax	 RIP: 486b4b	 Bytes: 6
  %loadMem_486b4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486b4b = call %struct.Memory* @routine_subl_MINUS0x674__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486b4b)
  store %struct.Memory* %call_486b4b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 486b51	 Bytes: 2
  %loadMem_486b51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486b51 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486b51)
  store %struct.Memory* %call_486b51, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 486b53	 Bytes: 2
  %loadMem_486b53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486b53 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486b53)
  store %struct.Memory* %call_486b53, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 486b55	 Bytes: 5
  %loadMem1_486b55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_486b55 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_486b55, i64 -216485, i64 5, i64 5)
  store %struct.Memory* %call1_486b55, %struct.Memory** %MEMORY

  %loadMem2_486b55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_486b55 = load i64, i64* %3
  %call2_486b55 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_486b55, %struct.Memory* %loadMem2_486b55)
  store %struct.Memory* %call2_486b55, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6b4(%rbp)	 RIP: 486b5a	 Bytes: 6
  %loadMem_486b5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486b5a = call %struct.Memory* @routine_movl__eax__MINUS0x6b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486b5a)
  store %struct.Memory* %call_486b5a, %struct.Memory** %MEMORY

  ; Code: .L_486b60:	 RIP: 486b60	 Bytes: 0
  br label %block_.L_486b60
block_.L_486b60:

  ; Code: movl $0x5, %eax	 RIP: 486b60	 Bytes: 5
  %loadMem_486b60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486b60 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486b60)
  store %struct.Memory* %call_486b60, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edi	 RIP: 486b65	 Bytes: 3
  %loadMem_486b65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486b65 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486b65)
  store %struct.Memory* %call_486b65, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 486b68	 Bytes: 3
  %loadMem_486b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486b68 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486b68)
  store %struct.Memory* %call_486b68, %struct.Memory** %MEMORY

  ; Code: subl -0x674(%rbp), %eax	 RIP: 486b6b	 Bytes: 6
  %loadMem_486b6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486b6b = call %struct.Memory* @routine_subl_MINUS0x674__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486b6b)
  store %struct.Memory* %call_486b6b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 486b71	 Bytes: 2
  %loadMem_486b71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486b71 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486b71)
  store %struct.Memory* %call_486b71, %struct.Memory** %MEMORY

  ; Code: callq .change_attack	 RIP: 486b73	 Bytes: 5
  %loadMem1_486b73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_486b73 = call %struct.Memory* @routine_callq_.change_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_486b73, i64 7117, i64 5, i64 5)
  store %struct.Memory* %call1_486b73, %struct.Memory** %MEMORY

  %loadMem2_486b73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_486b73 = load i64, i64* %3
  %call2_486b73 = call %struct.Memory* @sub_488740.change_attack(%struct.State* %0, i64  %loadPC_486b73, %struct.Memory* %loadMem2_486b73)
  store %struct.Memory* %call2_486b73, %struct.Memory** %MEMORY

  ; Code: .L_486b78:	 RIP: 486b78	 Bytes: 0
  br label %block_.L_486b78
block_.L_486b78:

  ; Code: jmpq .L_486b7d	 RIP: 486b78	 Bytes: 5
  %loadMem_486b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486b78 = call %struct.Memory* @routine_jmpq_.L_486b7d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486b78, i64 5, i64 5)
  store %struct.Memory* %call_486b78, %struct.Memory** %MEMORY

  br label %block_.L_486b7d

  ; Code: .L_486b7d:	 RIP: 486b7d	 Bytes: 0
block_.L_486b7d:

  ; Code: jmpq .L_486d81	 RIP: 486b7d	 Bytes: 5
  %loadMem_486b7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486b7d = call %struct.Memory* @routine_jmpq_.L_486d81(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486b7d, i64 516, i64 5)
  store %struct.Memory* %call_486b7d, %struct.Memory** %MEMORY

  br label %block_.L_486d81

  ; Code: .L_486b82:	 RIP: 486b82	 Bytes: 0
block_.L_486b82:

  ; Code: movq $0xb0eff0, %rax	 RIP: 486b82	 Bytes: 10
  %loadMem_486b82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486b82 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486b82)
  store %struct.Memory* %call_486b82, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 486b8c	 Bytes: 4
  %loadMem_486b8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486b8c = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486b8c)
  store %struct.Memory* %call_486b8c, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 486b90	 Bytes: 7
  %loadMem_486b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486b90 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486b90)
  store %struct.Memory* %call_486b90, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 486b97	 Bytes: 3
  %loadMem_486b97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486b97 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486b97)
  store %struct.Memory* %call_486b97, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %edx	 RIP: 486b9a	 Bytes: 2
  %loadMem_486b9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486b9a = call %struct.Memory* @routine_movl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486b9a)
  store %struct.Memory* %call_486b9a, %struct.Memory** %MEMORY

  ; Code: cmpl -0x28(%rbp), %edx	 RIP: 486b9c	 Bytes: 3
  %loadMem_486b9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486b9c = call %struct.Memory* @routine_cmpl_MINUS0x28__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486b9c)
  store %struct.Memory* %call_486b9c, %struct.Memory** %MEMORY

  ; Code: jne .L_486d7c	 RIP: 486b9f	 Bytes: 6
  %loadMem_486b9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486b9f = call %struct.Memory* @routine_jne_.L_486d7c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486b9f, i8* %BRANCH_TAKEN, i64 477, i64 6, i64 6)
  store %struct.Memory* %call_486b9f, %struct.Memory** %MEMORY

  %loadBr_486b9f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486b9f = icmp eq i8 %loadBr_486b9f, 1
  br i1 %cmpBr_486b9f, label %block_.L_486d7c, label %block_486ba5

block_486ba5:
  ; Code: movq $0xb0eff0, %rax	 RIP: 486ba5	 Bytes: 10
  %loadMem_486ba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486ba5 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486ba5)
  store %struct.Memory* %call_486ba5, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 486baf	 Bytes: 4
  %loadMem_486baf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486baf = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486baf)
  store %struct.Memory* %call_486baf, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 486bb3	 Bytes: 7
  %loadMem_486bb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486bb3 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486bb3)
  store %struct.Memory* %call_486bb3, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 486bba	 Bytes: 3
  %loadMem_486bba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486bba = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486bba)
  store %struct.Memory* %call_486bba, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x64(%rax)	 RIP: 486bbd	 Bytes: 4
  %loadMem_486bbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486bbd = call %struct.Memory* @routine_cmpl__0x0__0x64__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486bbd)
  store %struct.Memory* %call_486bbd, %struct.Memory** %MEMORY

  ; Code: je .L_486d7c	 RIP: 486bc1	 Bytes: 6
  %loadMem_486bc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486bc1 = call %struct.Memory* @routine_je_.L_486d7c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486bc1, i8* %BRANCH_TAKEN, i64 443, i64 6, i64 6)
  store %struct.Memory* %call_486bc1, %struct.Memory** %MEMORY

  %loadBr_486bc1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486bc1 = icmp eq i8 %loadBr_486bc1, 1
  br i1 %cmpBr_486bc1, label %block_.L_486d7c, label %block_486bc7

block_486bc7:
  ; Code: xorl %eax, %eax	 RIP: 486bc7	 Bytes: 2
  %loadMem_486bc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486bc7 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486bc7)
  store %struct.Memory* %call_486bc7, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 486bc9	 Bytes: 2
  %loadMem_486bc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486bc9 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486bc9)
  store %struct.Memory* %call_486bc9, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edi	 RIP: 486bcb	 Bytes: 3
  %loadMem_486bcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486bcb = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486bcb)
  store %struct.Memory* %call_486bcb, %struct.Memory** %MEMORY

  ; Code: callq .attack	 RIP: 486bce	 Bytes: 5
  %loadMem1_486bce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_486bce = call %struct.Memory* @routine_callq_.attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_486bce, i64 -168078, i64 5, i64 5)
  store %struct.Memory* %call1_486bce, %struct.Memory** %MEMORY

  %loadMem2_486bce = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_486bce = load i64, i64* %3
  %call2_486bce = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64  %loadPC_486bce, %struct.Memory* %loadMem2_486bce)
  store %struct.Memory* %call2_486bce, %struct.Memory** %MEMORY

  ; Code: movq $0xb0eff0, %rsi	 RIP: 486bd3	 Bytes: 10
  %loadMem_486bd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486bd3 = call %struct.Memory* @routine_movq__0xb0eff0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486bd3)
  store %struct.Memory* %call_486bd3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x680(%rbp)	 RIP: 486bdd	 Bytes: 6
  %loadMem_486bdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486bdd = call %struct.Memory* @routine_movl__eax__MINUS0x680__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486bdd)
  store %struct.Memory* %call_486bdd, %struct.Memory** %MEMORY

  ; Code: movl -0x680(%rbp), %eax	 RIP: 486be3	 Bytes: 6
  %loadMem_486be3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486be3 = call %struct.Memory* @routine_movl_MINUS0x680__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486be3)
  store %struct.Memory* %call_486be3, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 486be9	 Bytes: 4
  %loadMem_486be9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486be9 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486be9)
  store %struct.Memory* %call_486be9, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 486bed	 Bytes: 7
  %loadMem_486bed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486bed = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486bed)
  store %struct.Memory* %call_486bed, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 486bf4	 Bytes: 3
  %loadMem_486bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486bf4 = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486bf4)
  store %struct.Memory* %call_486bf4, %struct.Memory** %MEMORY

  ; Code: cmpl 0x64(%rsi), %eax	 RIP: 486bf7	 Bytes: 3
  %loadMem_486bf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486bf7 = call %struct.Memory* @routine_cmpl_0x64__rsi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486bf7)
  store %struct.Memory* %call_486bf7, %struct.Memory** %MEMORY

  ; Code: jge .L_486d77	 RIP: 486bfa	 Bytes: 6
  %loadMem_486bfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486bfa = call %struct.Memory* @routine_jge_.L_486d77(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486bfa, i8* %BRANCH_TAKEN, i64 381, i64 6, i64 6)
  store %struct.Memory* %call_486bfa, %struct.Memory** %MEMORY

  %loadBr_486bfa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486bfa = icmp eq i8 %loadBr_486bfa, 1
  br i1 %cmpBr_486bfa, label %block_.L_486d77, label %block_486c00

block_486c00:
  ; Code: movq $0xb0eff0, %rax	 RIP: 486c00	 Bytes: 10
  %loadMem_486c00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486c00 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486c00)
  store %struct.Memory* %call_486c00, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x684(%rbp)	 RIP: 486c0a	 Bytes: 10
  %loadMem_486c0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486c0a = call %struct.Memory* @routine_movl__0x1__MINUS0x684__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486c0a)
  store %struct.Memory* %call_486c0a, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 486c14	 Bytes: 4
  %loadMem_486c14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486c14 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486c14)
  store %struct.Memory* %call_486c14, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 486c18	 Bytes: 7
  %loadMem_486c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486c18 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486c18)
  store %struct.Memory* %call_486c18, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 486c1f	 Bytes: 3
  %loadMem_486c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486c1f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486c1f)
  store %struct.Memory* %call_486c1f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x64(%rax)	 RIP: 486c22	 Bytes: 4
  %loadMem_486c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486c22 = call %struct.Memory* @routine_cmpl__0x0__0x64__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486c22)
  store %struct.Memory* %call_486c22, %struct.Memory** %MEMORY

  ; Code: je .L_486d09	 RIP: 486c26	 Bytes: 6
  %loadMem_486c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486c26 = call %struct.Memory* @routine_je_.L_486d09(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486c26, i8* %BRANCH_TAKEN, i64 227, i64 6, i64 6)
  store %struct.Memory* %call_486c26, %struct.Memory** %MEMORY

  %loadBr_486c26 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486c26 = icmp eq i8 %loadBr_486c26, 1
  br i1 %cmpBr_486c26, label %block_.L_486d09, label %block_486c2c

block_486c2c:
  ; Code: movq $0x582f5f, %rdx	 RIP: 486c2c	 Bytes: 10
  %loadMem_486c2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486c2c = call %struct.Memory* @routine_movq__0x582f5f___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486c2c)
  store %struct.Memory* %call_486c2c, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 486c36	 Bytes: 2
  %loadMem_486c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486c36 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486c36)
  store %struct.Memory* %call_486c36, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %ecx	 RIP: 486c38	 Bytes: 5
  %loadMem_486c38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486c38 = call %struct.Memory* @routine_movl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486c38)
  store %struct.Memory* %call_486c38, %struct.Memory** %MEMORY

  ; Code: movq $0xb0eff0, %rsi	 RIP: 486c3d	 Bytes: 10
  %loadMem_486c3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486c3d = call %struct.Memory* @routine_movq__0xb0eff0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486c3d)
  store %struct.Memory* %call_486c3d, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdi	 RIP: 486c47	 Bytes: 4
  %loadMem_486c47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486c47 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486c47)
  store %struct.Memory* %call_486c47, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rdi, %rdi	 RIP: 486c4b	 Bytes: 7
  %loadMem_486c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486c4b = call %struct.Memory* @routine_imulq__0x17c___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486c4b)
  store %struct.Memory* %call_486c4b, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 486c52	 Bytes: 3
  %loadMem_486c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486c52 = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486c52)
  store %struct.Memory* %call_486c52, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rsi), %edi	 RIP: 486c55	 Bytes: 3
  %loadMem_486c55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486c55 = call %struct.Memory* @routine_movl_0x3c__rsi____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486c55)
  store %struct.Memory* %call_486c55, %struct.Memory** %MEMORY

  ; Code: subl -0x28(%rbp), %ecx	 RIP: 486c58	 Bytes: 3
  %loadMem_486c58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486c58 = call %struct.Memory* @routine_subl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486c58)
  store %struct.Memory* %call_486c58, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 486c5b	 Bytes: 2
  %loadMem_486c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486c5b = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486c5b)
  store %struct.Memory* %call_486c5b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 486c5d	 Bytes: 2
  %loadMem_486c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486c5d = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486c5d)
  store %struct.Memory* %call_486c5d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 486c5f	 Bytes: 3
  %loadMem_486c5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486c5f = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486c5f)
  store %struct.Memory* %call_486c5f, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 486c62	 Bytes: 3
  %loadMem_486c62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486c62 = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486c62)
  store %struct.Memory* %call_486c62, %struct.Memory** %MEMORY

  ; Code: callq .trymove	 RIP: 486c65	 Bytes: 5
  %loadMem1_486c65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_486c65 = call %struct.Memory* @routine_callq_.trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_486c65, i64 -515637, i64 5, i64 5)
  store %struct.Memory* %call1_486c65, %struct.Memory** %MEMORY

  %loadMem2_486c65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_486c65 = load i64, i64* %3
  %call2_486c65 = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64  %loadPC_486c65, %struct.Memory* %loadMem2_486c65)
  store %struct.Memory* %call2_486c65, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 486c6a	 Bytes: 3
  %loadMem_486c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486c6a = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486c6a)
  store %struct.Memory* %call_486c6a, %struct.Memory** %MEMORY

  ; Code: je .L_486d09	 RIP: 486c6d	 Bytes: 6
  %loadMem_486c6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486c6d = call %struct.Memory* @routine_je_.L_486d09(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486c6d, i8* %BRANCH_TAKEN, i64 156, i64 6, i64 6)
  store %struct.Memory* %call_486c6d, %struct.Memory** %MEMORY

  %loadBr_486c6d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486c6d = icmp eq i8 %loadBr_486c6d, 1
  br i1 %cmpBr_486c6d, label %block_.L_486d09, label %block_486c73

block_486c73:
  ; Code: movslq -0x2c(%rbp), %rax	 RIP: 486c73	 Bytes: 4
  %loadMem_486c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486c73 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486c73)
  store %struct.Memory* %call_486c73, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 486c77	 Bytes: 8
  %loadMem_486c77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486c77 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486c77)
  store %struct.Memory* %call_486c77, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 486c7f	 Bytes: 3
  %loadMem_486c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486c7f = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486c7f)
  store %struct.Memory* %call_486c7f, %struct.Memory** %MEMORY

  ; Code: jne .L_486c97	 RIP: 486c82	 Bytes: 6
  %loadMem_486c82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486c82 = call %struct.Memory* @routine_jne_.L_486c97(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486c82, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_486c82, %struct.Memory** %MEMORY

  %loadBr_486c82 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486c82 = icmp eq i8 %loadBr_486c82, 1
  br i1 %cmpBr_486c82, label %block_.L_486c97, label %block_486c88

block_486c88:
  ; Code: movl $0x5, -0x688(%rbp)	 RIP: 486c88	 Bytes: 10
  %loadMem_486c88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486c88 = call %struct.Memory* @routine_movl__0x5__MINUS0x688__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486c88)
  store %struct.Memory* %call_486c88, %struct.Memory** %MEMORY

  ; Code: jmpq .L_486cb0	 RIP: 486c92	 Bytes: 5
  %loadMem_486c92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486c92 = call %struct.Memory* @routine_jmpq_.L_486cb0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486c92, i64 30, i64 5)
  store %struct.Memory* %call_486c92, %struct.Memory** %MEMORY

  br label %block_.L_486cb0

  ; Code: .L_486c97:	 RIP: 486c97	 Bytes: 0
block_.L_486c97:

  ; Code: xorl %eax, %eax	 RIP: 486c97	 Bytes: 2
  %loadMem_486c97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486c97 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486c97)
  store %struct.Memory* %call_486c97, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 486c99	 Bytes: 2
  %loadMem_486c99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486c99 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486c99)
  store %struct.Memory* %call_486c99, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edi	 RIP: 486c9b	 Bytes: 3
  %loadMem_486c9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486c9b = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486c9b)
  store %struct.Memory* %call_486c9b, %struct.Memory** %MEMORY

  ; Code: callq .find_defense	 RIP: 486c9e	 Bytes: 5
  %loadMem1_486c9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_486c9e = call %struct.Memory* @routine_callq_.find_defense(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_486c9e, i64 -115998, i64 5, i64 5)
  store %struct.Memory* %call1_486c9e, %struct.Memory** %MEMORY

  %loadMem2_486c9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_486c9e = load i64, i64* %3
  %call2_486c9e = call %struct.Memory* @sub_46a780.find_defense(%struct.State* %0, i64  %loadPC_486c9e, %struct.Memory* %loadMem2_486c9e)
  store %struct.Memory* %call2_486c9e, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %edi	 RIP: 486ca3	 Bytes: 5
  %loadMem_486ca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486ca3 = call %struct.Memory* @routine_movl__0x5___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486ca3)
  store %struct.Memory* %call_486ca3, %struct.Memory** %MEMORY

  ; Code: subl %eax, %edi	 RIP: 486ca8	 Bytes: 2
  %loadMem_486ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486ca8 = call %struct.Memory* @routine_subl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486ca8)
  store %struct.Memory* %call_486ca8, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x688(%rbp)	 RIP: 486caa	 Bytes: 6
  %loadMem_486caa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486caa = call %struct.Memory* @routine_movl__edi__MINUS0x688__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486caa)
  store %struct.Memory* %call_486caa, %struct.Memory** %MEMORY

  ; Code: .L_486cb0:	 RIP: 486cb0	 Bytes: 0
  br label %block_.L_486cb0
block_.L_486cb0:

  ; Code: movl -0x688(%rbp), %eax	 RIP: 486cb0	 Bytes: 6
  %loadMem_486cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486cb0 = call %struct.Memory* @routine_movl_MINUS0x688__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486cb0)
  store %struct.Memory* %call_486cb0, %struct.Memory** %MEMORY

  ; Code: cmpl -0x680(%rbp), %eax	 RIP: 486cb6	 Bytes: 6
  %loadMem_486cb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486cb6 = call %struct.Memory* @routine_cmpl_MINUS0x680__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486cb6)
  store %struct.Memory* %call_486cb6, %struct.Memory** %MEMORY

  ; Code: jle .L_486d04	 RIP: 486cbc	 Bytes: 6
  %loadMem_486cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486cbc = call %struct.Memory* @routine_jle_.L_486d04(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486cbc, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_486cbc, %struct.Memory** %MEMORY

  %loadBr_486cbc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486cbc = icmp eq i8 %loadBr_486cbc, 1
  br i1 %cmpBr_486cbc, label %block_.L_486d04, label %block_486cc2

block_486cc2:
  ; Code: movq $0xb0eff0, %rax	 RIP: 486cc2	 Bytes: 10
  %loadMem_486cc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486cc2 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486cc2)
  store %struct.Memory* %call_486cc2, %struct.Memory** %MEMORY

  ; Code: movl -0x688(%rbp), %ecx	 RIP: 486ccc	 Bytes: 6
  %loadMem_486ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486ccc = call %struct.Memory* @routine_movl_MINUS0x688__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486ccc)
  store %struct.Memory* %call_486ccc, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x680(%rbp)	 RIP: 486cd2	 Bytes: 6
  %loadMem_486cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486cd2 = call %struct.Memory* @routine_movl__ecx__MINUS0x680__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486cd2)
  store %struct.Memory* %call_486cd2, %struct.Memory** %MEMORY

  ; Code: movl -0x680(%rbp), %ecx	 RIP: 486cd8	 Bytes: 6
  %loadMem_486cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486cd8 = call %struct.Memory* @routine_movl_MINUS0x680__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486cd8)
  store %struct.Memory* %call_486cd8, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 486cde	 Bytes: 4
  %loadMem_486cde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486cde = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486cde)
  store %struct.Memory* %call_486cde, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rdx, %rdx	 RIP: 486ce2	 Bytes: 7
  %loadMem_486ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486ce2 = call %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486ce2)
  store %struct.Memory* %call_486ce2, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 486ce9	 Bytes: 3
  %loadMem_486ce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486ce9 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486ce9)
  store %struct.Memory* %call_486ce9, %struct.Memory** %MEMORY

  ; Code: cmpl 0x64(%rax), %ecx	 RIP: 486cec	 Bytes: 3
  %loadMem_486cec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486cec = call %struct.Memory* @routine_cmpl_0x64__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486cec)
  store %struct.Memory* %call_486cec, %struct.Memory** %MEMORY

  ; Code: jl .L_486cff	 RIP: 486cef	 Bytes: 6
  %loadMem_486cef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486cef = call %struct.Memory* @routine_jl_.L_486cff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486cef, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_486cef, %struct.Memory** %MEMORY

  %loadBr_486cef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486cef = icmp eq i8 %loadBr_486cef, 1
  br i1 %cmpBr_486cef, label %block_.L_486cff, label %block_486cf5

block_486cf5:
  ; Code: movl $0x0, -0x684(%rbp)	 RIP: 486cf5	 Bytes: 10
  %loadMem_486cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486cf5 = call %struct.Memory* @routine_movl__0x0__MINUS0x684__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486cf5)
  store %struct.Memory* %call_486cf5, %struct.Memory** %MEMORY

  ; Code: .L_486cff:	 RIP: 486cff	 Bytes: 0
  br label %block_.L_486cff
block_.L_486cff:

  ; Code: jmpq .L_486d04	 RIP: 486cff	 Bytes: 5
  %loadMem_486cff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486cff = call %struct.Memory* @routine_jmpq_.L_486d04(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486cff, i64 5, i64 5)
  store %struct.Memory* %call_486cff, %struct.Memory** %MEMORY

  br label %block_.L_486d04

  ; Code: .L_486d04:	 RIP: 486d04	 Bytes: 0
block_.L_486d04:

  ; Code: callq .popgo	 RIP: 486d04	 Bytes: 5
  %loadMem1_486d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_486d04 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_486d04, i64 -495524, i64 5, i64 5)
  store %struct.Memory* %call1_486d04, %struct.Memory** %MEMORY

  %loadMem2_486d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_486d04 = load i64, i64* %3
  %call2_486d04 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_486d04, %struct.Memory* %loadMem2_486d04)
  store %struct.Memory* %call2_486d04, %struct.Memory** %MEMORY

  ; Code: .L_486d09:	 RIP: 486d09	 Bytes: 0
  br label %block_.L_486d09
block_.L_486d09:

  ; Code: cmpl $0x0, -0x684(%rbp)	 RIP: 486d09	 Bytes: 7
  %loadMem_486d09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486d09 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x684__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486d09)
  store %struct.Memory* %call_486d09, %struct.Memory** %MEMORY

  ; Code: je .L_486d72	 RIP: 486d10	 Bytes: 6
  %loadMem_486d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486d10 = call %struct.Memory* @routine_je_.L_486d72(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486d10, i8* %BRANCH_TAKEN, i64 98, i64 6, i64 6)
  store %struct.Memory* %call_486d10, %struct.Memory** %MEMORY

  %loadBr_486d10 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486d10 = icmp eq i8 %loadBr_486d10, 1
  br i1 %cmpBr_486d10, label %block_.L_486d72, label %block_486d16

block_486d16:
  ; Code: movl 0xab0f24, %eax	 RIP: 486d16	 Bytes: 7
  %loadMem_486d16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486d16 = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486d16)
  store %struct.Memory* %call_486d16, %struct.Memory** %MEMORY

  ; Code: andl $0x400, %eax	 RIP: 486d1d	 Bytes: 5
  %loadMem_486d1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486d1d = call %struct.Memory* @routine_andl__0x400___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486d1d)
  store %struct.Memory* %call_486d1d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 486d22	 Bytes: 3
  %loadMem_486d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486d22 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486d22)
  store %struct.Memory* %call_486d22, %struct.Memory** %MEMORY

  ; Code: jne .L_486d30	 RIP: 486d25	 Bytes: 6
  %loadMem_486d25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486d25 = call %struct.Memory* @routine_jne_.L_486d30(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486d25, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_486d25, %struct.Memory** %MEMORY

  %loadBr_486d25 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486d25 = icmp eq i8 %loadBr_486d25, 1
  br i1 %cmpBr_486d25, label %block_.L_486d30, label %block_486d2b

block_486d2b:
  ; Code: jmpq .L_486d5a	 RIP: 486d2b	 Bytes: 5
  %loadMem_486d2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486d2b = call %struct.Memory* @routine_jmpq_.L_486d5a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486d2b, i64 47, i64 5)
  store %struct.Memory* %call_486d2b, %struct.Memory** %MEMORY

  br label %block_.L_486d5a

  ; Code: .L_486d30:	 RIP: 486d30	 Bytes: 0
block_.L_486d30:

  ; Code: movq $0x582fa9, %rdi	 RIP: 486d30	 Bytes: 10
  %loadMem_486d30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486d30 = call %struct.Memory* @routine_movq__0x582fa9___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486d30)
  store %struct.Memory* %call_486d30, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 486d3a	 Bytes: 5
  %loadMem_486d3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486d3a = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486d3a)
  store %struct.Memory* %call_486d3a, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %esi	 RIP: 486d3f	 Bytes: 3
  %loadMem_486d3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486d3f = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486d3f)
  store %struct.Memory* %call_486d3f, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edx	 RIP: 486d42	 Bytes: 3
  %loadMem_486d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486d42 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486d42)
  store %struct.Memory* %call_486d42, %struct.Memory** %MEMORY

  ; Code: subl -0x680(%rbp), %eax	 RIP: 486d45	 Bytes: 6
  %loadMem_486d45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486d45 = call %struct.Memory* @routine_subl_MINUS0x680__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486d45)
  store %struct.Memory* %call_486d45, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 486d4b	 Bytes: 2
  %loadMem_486d4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486d4b = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486d4b)
  store %struct.Memory* %call_486d4b, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 486d4d	 Bytes: 2
  %loadMem_486d4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486d4d = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486d4d)
  store %struct.Memory* %call_486d4d, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 486d4f	 Bytes: 5
  %loadMem1_486d4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_486d4f = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_486d4f, i64 -216991, i64 5, i64 5)
  store %struct.Memory* %call1_486d4f, %struct.Memory** %MEMORY

  %loadMem2_486d4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_486d4f = load i64, i64* %3
  %call2_486d4f = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_486d4f, %struct.Memory* %loadMem2_486d4f)
  store %struct.Memory* %call2_486d4f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6b8(%rbp)	 RIP: 486d54	 Bytes: 6
  %loadMem_486d54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486d54 = call %struct.Memory* @routine_movl__eax__MINUS0x6b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486d54)
  store %struct.Memory* %call_486d54, %struct.Memory** %MEMORY

  ; Code: .L_486d5a:	 RIP: 486d5a	 Bytes: 0
  br label %block_.L_486d5a
block_.L_486d5a:

  ; Code: movl $0x5, %eax	 RIP: 486d5a	 Bytes: 5
  %loadMem_486d5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486d5a = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486d5a)
  store %struct.Memory* %call_486d5a, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edi	 RIP: 486d5f	 Bytes: 3
  %loadMem_486d5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486d5f = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486d5f)
  store %struct.Memory* %call_486d5f, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 486d62	 Bytes: 3
  %loadMem_486d62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486d62 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486d62)
  store %struct.Memory* %call_486d62, %struct.Memory** %MEMORY

  ; Code: subl -0x680(%rbp), %eax	 RIP: 486d65	 Bytes: 6
  %loadMem_486d65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486d65 = call %struct.Memory* @routine_subl_MINUS0x680__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486d65)
  store %struct.Memory* %call_486d65, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 486d6b	 Bytes: 2
  %loadMem_486d6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486d6b = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486d6b)
  store %struct.Memory* %call_486d6b, %struct.Memory** %MEMORY

  ; Code: callq .change_defense	 RIP: 486d6d	 Bytes: 5
  %loadMem1_486d6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_486d6d = call %struct.Memory* @routine_callq_.change_defense(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_486d6d, i64 6803, i64 5, i64 5)
  store %struct.Memory* %call1_486d6d, %struct.Memory** %MEMORY

  %loadMem2_486d6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_486d6d = load i64, i64* %3
  %call2_486d6d = call %struct.Memory* @sub_488800.change_defense(%struct.State* %0, i64  %loadPC_486d6d, %struct.Memory* %loadMem2_486d6d)
  store %struct.Memory* %call2_486d6d, %struct.Memory** %MEMORY

  ; Code: .L_486d72:	 RIP: 486d72	 Bytes: 0
  br label %block_.L_486d72
block_.L_486d72:

  ; Code: jmpq .L_486d77	 RIP: 486d72	 Bytes: 5
  %loadMem_486d72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486d72 = call %struct.Memory* @routine_jmpq_.L_486d77(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486d72, i64 5, i64 5)
  store %struct.Memory* %call_486d72, %struct.Memory** %MEMORY

  br label %block_.L_486d77

  ; Code: .L_486d77:	 RIP: 486d77	 Bytes: 0
block_.L_486d77:

  ; Code: jmpq .L_486d7c	 RIP: 486d77	 Bytes: 5
  %loadMem_486d77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486d77 = call %struct.Memory* @routine_jmpq_.L_486d7c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486d77, i64 5, i64 5)
  store %struct.Memory* %call_486d77, %struct.Memory** %MEMORY

  br label %block_.L_486d7c

  ; Code: .L_486d7c:	 RIP: 486d7c	 Bytes: 0
block_.L_486d7c:

  ; Code: jmpq .L_486d81	 RIP: 486d7c	 Bytes: 5
  %loadMem_486d7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486d7c = call %struct.Memory* @routine_jmpq_.L_486d81(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486d7c, i64 5, i64 5)
  store %struct.Memory* %call_486d7c, %struct.Memory** %MEMORY

  br label %block_.L_486d81

  ; Code: .L_486d81:	 RIP: 486d81	 Bytes: 0
block_.L_486d81:

  ; Code: jmpq .L_486d86	 RIP: 486d81	 Bytes: 5
  %loadMem_486d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486d81 = call %struct.Memory* @routine_jmpq_.L_486d86(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486d81, i64 5, i64 5)
  store %struct.Memory* %call_486d81, %struct.Memory** %MEMORY

  br label %block_.L_486d86

  ; Code: .L_486d86:	 RIP: 486d86	 Bytes: 0
block_.L_486d86:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 486d86	 Bytes: 3
  %loadMem_486d86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486d86 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486d86)
  store %struct.Memory* %call_486d86, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 486d89	 Bytes: 3
  %loadMem_486d89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486d89 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486d89)
  store %struct.Memory* %call_486d89, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 486d8c	 Bytes: 3
  %loadMem_486d8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486d8c = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486d8c)
  store %struct.Memory* %call_486d8c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_486924	 RIP: 486d8f	 Bytes: 5
  %loadMem_486d8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486d8f = call %struct.Memory* @routine_jmpq_.L_486924(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486d8f, i64 -1131, i64 5)
  store %struct.Memory* %call_486d8f, %struct.Memory** %MEMORY

  br label %block_.L_486924

  ; Code: .L_486d94:	 RIP: 486d94	 Bytes: 0
block_.L_486d94:

  ; Code: callq .decrease_depth_values	 RIP: 486d94	 Bytes: 5
  %loadMem1_486d94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_486d94 = call %struct.Memory* @routine_callq_.decrease_depth_values(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_486d94, i64 -63700, i64 5, i64 5)
  store %struct.Memory* %call1_486d94, %struct.Memory** %MEMORY

  %loadMem2_486d94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_486d94 = load i64, i64* %3
  %call2_486d94 = call %struct.Memory* @sub_4774c0.decrease_depth_values(%struct.State* %0, i64  %loadPC_486d94, %struct.Memory* %loadMem2_486d94)
  store %struct.Memory* %call2_486d94, %struct.Memory** %MEMORY

  ; Code: callq .popgo	 RIP: 486d99	 Bytes: 5
  %loadMem1_486d99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_486d99 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_486d99, i64 -495673, i64 5, i64 5)
  store %struct.Memory* %call1_486d99, %struct.Memory** %MEMORY

  %loadMem2_486d99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_486d99 = load i64, i64* %3
  %call2_486d99 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_486d99, %struct.Memory* %loadMem2_486d99)
  store %struct.Memory* %call2_486d99, %struct.Memory** %MEMORY

  ; Code: .L_486d9e:	 RIP: 486d9e	 Bytes: 0
  br label %block_.L_486d9e
block_.L_486d9e:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 486d9e	 Bytes: 3
  %loadMem_486d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486d9e = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486d9e)
  store %struct.Memory* %call_486d9e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 486da1	 Bytes: 3
  %loadMem_486da1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486da1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486da1)
  store %struct.Memory* %call_486da1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 486da4	 Bytes: 3
  %loadMem_486da4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486da4 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486da4)
  store %struct.Memory* %call_486da4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_486891	 RIP: 486da7	 Bytes: 5
  %loadMem_486da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486da7 = call %struct.Memory* @routine_jmpq_.L_486891(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486da7, i64 -1302, i64 5)
  store %struct.Memory* %call_486da7, %struct.Memory** %MEMORY

  br label %block_.L_486891

  ; Code: .L_486dac:	 RIP: 486dac	 Bytes: 0
block_.L_486dac:

  ; Code: jmpq .L_486db1	 RIP: 486dac	 Bytes: 5
  %loadMem_486dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486dac = call %struct.Memory* @routine_jmpq_.L_486db1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486dac, i64 5, i64 5)
  store %struct.Memory* %call_486dac, %struct.Memory** %MEMORY

  br label %block_.L_486db1

  ; Code: .L_486db1:	 RIP: 486db1	 Bytes: 0
block_.L_486db1:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 486db1	 Bytes: 3
  %loadMem_486db1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486db1 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486db1)
  store %struct.Memory* %call_486db1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 486db4	 Bytes: 3
  %loadMem_486db4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486db4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486db4)
  store %struct.Memory* %call_486db4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 486db7	 Bytes: 3
  %loadMem_486db7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486db7 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486db7)
  store %struct.Memory* %call_486db7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_486863	 RIP: 486dba	 Bytes: 5
  %loadMem_486dba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486dba = call %struct.Memory* @routine_jmpq_.L_486863(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486dba, i64 -1367, i64 5)
  store %struct.Memory* %call_486dba, %struct.Memory** %MEMORY

  br label %block_.L_486863

  ; Code: .L_486dbf:	 RIP: 486dbf	 Bytes: 0
block_.L_486dbf:

  ; Code: cmpl $0x0, 0xb54ce4	 RIP: 486dbf	 Bytes: 8
  %loadMem_486dbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486dbf = call %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486dbf)
  store %struct.Memory* %call_486dbf, %struct.Memory** %MEMORY

  ; Code: jne .L_486dd2	 RIP: 486dc7	 Bytes: 6
  %loadMem_486dc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486dc7 = call %struct.Memory* @routine_jne_.L_486dd2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486dc7, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_486dc7, %struct.Memory** %MEMORY

  %loadBr_486dc7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486dc7 = icmp eq i8 %loadBr_486dc7, 1
  br i1 %cmpBr_486dc7, label %block_.L_486dd2, label %block_486dcd

block_486dcd:
  ; Code: jmpq .L_486dfa	 RIP: 486dcd	 Bytes: 5
  %loadMem_486dcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486dcd = call %struct.Memory* @routine_jmpq_.L_486dfa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486dcd, i64 45, i64 5)
  store %struct.Memory* %call_486dcd, %struct.Memory** %MEMORY

  br label %block_.L_486dfa

  ; Code: .L_486dd2:	 RIP: 486dd2	 Bytes: 0
block_.L_486dd2:

  ; Code: movq $0x582e3b, %rdi	 RIP: 486dd2	 Bytes: 10
  %loadMem_486dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486dd2 = call %struct.Memory* @routine_movq__0x582e3b___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486dd2)
  store %struct.Memory* %call_486dd2, %struct.Memory** %MEMORY

  ; Code: movl $0x17e, %esi	 RIP: 486ddc	 Bytes: 5
  %loadMem_486ddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486ddc = call %struct.Memory* @routine_movl__0x17e___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486ddc)
  store %struct.Memory* %call_486ddc, %struct.Memory** %MEMORY

  ; Code: movq $0x57a100, %rdx	 RIP: 486de1	 Bytes: 10
  %loadMem_486de1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486de1 = call %struct.Memory* @routine_movq__0x57a100___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486de1)
  store %struct.Memory* %call_486de1, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 486deb	 Bytes: 5
  %loadMem_486deb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486deb = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486deb)
  store %struct.Memory* %call_486deb, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 486df0	 Bytes: 2
  %loadMem_486df0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486df0 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486df0)
  store %struct.Memory* %call_486df0, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 486df2	 Bytes: 3
  %loadMem_486df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486df2 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486df2)
  store %struct.Memory* %call_486df2, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 486df5	 Bytes: 5
  %loadMem1_486df5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_486df5 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_486df5, i64 -216421, i64 5, i64 5)
  store %struct.Memory* %call1_486df5, %struct.Memory** %MEMORY

  %loadMem2_486df5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_486df5 = load i64, i64* %3
  %call2_486df5 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_486df5, %struct.Memory* %loadMem2_486df5)
  store %struct.Memory* %call2_486df5, %struct.Memory** %MEMORY

  ; Code: .L_486dfa:	 RIP: 486dfa	 Bytes: 0
  br label %block_.L_486dfa
block_.L_486dfa:

  ; Code: movl $0x15, -0x4(%rbp)	 RIP: 486dfa	 Bytes: 7
  %loadMem_486dfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486dfa = call %struct.Memory* @routine_movl__0x15__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486dfa)
  store %struct.Memory* %call_486dfa, %struct.Memory** %MEMORY

  ; Code: .L_486e01:	 RIP: 486e01	 Bytes: 0
  br label %block_.L_486e01
block_.L_486e01:

  ; Code: cmpl $0x190, -0x4(%rbp)	 RIP: 486e01	 Bytes: 7
  %loadMem_486e01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486e01 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486e01)
  store %struct.Memory* %call_486e01, %struct.Memory** %MEMORY

  ; Code: jge .L_486ff6	 RIP: 486e08	 Bytes: 6
  %loadMem_486e08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486e08 = call %struct.Memory* @routine_jge_.L_486ff6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486e08, i8* %BRANCH_TAKEN, i64 494, i64 6, i64 6)
  store %struct.Memory* %call_486e08, %struct.Memory** %MEMORY

  %loadBr_486e08 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486e08 = icmp eq i8 %loadBr_486e08, 1
  br i1 %cmpBr_486e08, label %block_.L_486ff6, label %block_486e0e

block_486e0e:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 486e0e	 Bytes: 4
  %loadMem_486e0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486e0e = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486e0e)
  store %struct.Memory* %call_486e0e, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 486e12	 Bytes: 8
  %loadMem_486e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486e12 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486e12)
  store %struct.Memory* %call_486e12, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %ecx	 RIP: 486e1a	 Bytes: 3
  %loadMem_486e1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486e1a = call %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486e1a)
  store %struct.Memory* %call_486e1a, %struct.Memory** %MEMORY

  ; Code: je .L_486e38	 RIP: 486e1d	 Bytes: 6
  %loadMem_486e1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486e1d = call %struct.Memory* @routine_je_.L_486e38(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486e1d, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_486e1d, %struct.Memory** %MEMORY

  %loadBr_486e1d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486e1d = icmp eq i8 %loadBr_486e1d, 1
  br i1 %cmpBr_486e1d, label %block_.L_486e38, label %block_486e23

block_486e23:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 486e23	 Bytes: 4
  %loadMem_486e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486e23 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486e23)
  store %struct.Memory* %call_486e23, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 486e27	 Bytes: 8
  %loadMem_486e27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486e27 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486e27)
  store %struct.Memory* %call_486e27, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %ecx	 RIP: 486e2f	 Bytes: 3
  %loadMem_486e2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486e2f = call %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486e2f)
  store %struct.Memory* %call_486e2f, %struct.Memory** %MEMORY

  ; Code: jne .L_486fe3	 RIP: 486e32	 Bytes: 6
  %loadMem_486e32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486e32 = call %struct.Memory* @routine_jne_.L_486fe3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486e32, i8* %BRANCH_TAKEN, i64 433, i64 6, i64 6)
  store %struct.Memory* %call_486e32, %struct.Memory** %MEMORY

  %loadBr_486e32 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486e32 = icmp eq i8 %loadBr_486e32, 1
  br i1 %cmpBr_486e32, label %block_.L_486fe3, label %block_.L_486e38

  ; Code: .L_486e38:	 RIP: 486e38	 Bytes: 0
block_.L_486e38:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 486e38	 Bytes: 3
  %loadMem_486e38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486e38 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486e38)
  store %struct.Memory* %call_486e38, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 486e3b	 Bytes: 3
  %loadMem_486e3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486e3b = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486e3b)
  store %struct.Memory* %call_486e3b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 486e3e	 Bytes: 3
  %loadMem_486e3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486e3e = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486e3e)
  store %struct.Memory* %call_486e3e, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 486e41	 Bytes: 8
  %loadMem_486e41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486e41 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486e41)
  store %struct.Memory* %call_486e41, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %eax	 RIP: 486e49	 Bytes: 3
  %loadMem_486e49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486e49 = call %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486e49)
  store %struct.Memory* %call_486e49, %struct.Memory** %MEMORY

  ; Code: je .L_486e6c	 RIP: 486e4c	 Bytes: 6
  %loadMem_486e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486e4c = call %struct.Memory* @routine_je_.L_486e6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486e4c, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_486e4c, %struct.Memory** %MEMORY

  %loadBr_486e4c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486e4c = icmp eq i8 %loadBr_486e4c, 1
  br i1 %cmpBr_486e4c, label %block_.L_486e6c, label %block_486e52

block_486e52:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 486e52	 Bytes: 3
  %loadMem_486e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486e52 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486e52)
  store %struct.Memory* %call_486e52, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 486e55	 Bytes: 3
  %loadMem_486e55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486e55 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486e55)
  store %struct.Memory* %call_486e55, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 486e58	 Bytes: 3
  %loadMem_486e58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486e58 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486e58)
  store %struct.Memory* %call_486e58, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 486e5b	 Bytes: 8
  %loadMem_486e5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486e5b = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486e5b)
  store %struct.Memory* %call_486e5b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %eax	 RIP: 486e63	 Bytes: 3
  %loadMem_486e63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486e63 = call %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486e63)
  store %struct.Memory* %call_486e63, %struct.Memory** %MEMORY

  ; Code: jne .L_486fe3	 RIP: 486e66	 Bytes: 6
  %loadMem_486e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486e66 = call %struct.Memory* @routine_jne_.L_486fe3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486e66, i8* %BRANCH_TAKEN, i64 381, i64 6, i64 6)
  store %struct.Memory* %call_486e66, %struct.Memory** %MEMORY

  %loadBr_486e66 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486e66 = icmp eq i8 %loadBr_486e66, 1
  br i1 %cmpBr_486e66, label %block_.L_486fe3, label %block_.L_486e6c

  ; Code: .L_486e6c:	 RIP: 486e6c	 Bytes: 0
block_.L_486e6c:

  ; Code: movl -0x4(%rbp), %edi	 RIP: 486e6c	 Bytes: 3
  %loadMem_486e6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486e6c = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486e6c)
  store %struct.Memory* %call_486e6c, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 486e6f	 Bytes: 3
  %loadMem_486e6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486e6f = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486e6f)
  store %struct.Memory* %call_486e6f, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 486e72	 Bytes: 3
  %loadMem_486e72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486e72 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486e72)
  store %struct.Memory* %call_486e72, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 486e75	 Bytes: 2
  %loadMem_486e75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486e75 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486e75)
  store %struct.Memory* %call_486e75, %struct.Memory** %MEMORY

  ; Code: callq .is_same_worm	 RIP: 486e77	 Bytes: 5
  %loadMem1_486e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_486e77 = call %struct.Memory* @routine_callq_.is_same_worm(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_486e77, i64 6041, i64 5, i64 5)
  store %struct.Memory* %call1_486e77, %struct.Memory** %MEMORY

  %loadMem2_486e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_486e77 = load i64, i64* %3
  %call2_486e77 = call %struct.Memory* @sub_488610.is_same_worm(%struct.State* %0, i64  %loadPC_486e77, %struct.Memory* %loadMem2_486e77)
  store %struct.Memory* %call2_486e77, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 486e7c	 Bytes: 3
  %loadMem_486e7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486e7c = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486e7c)
  store %struct.Memory* %call_486e7c, %struct.Memory** %MEMORY

  ; Code: jne .L_486fe3	 RIP: 486e7f	 Bytes: 6
  %loadMem_486e7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486e7f = call %struct.Memory* @routine_jne_.L_486fe3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486e7f, i8* %BRANCH_TAKEN, i64 356, i64 6, i64 6)
  store %struct.Memory* %call_486e7f, %struct.Memory** %MEMORY

  %loadBr_486e7f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486e7f = icmp eq i8 %loadBr_486e7f, 1
  br i1 %cmpBr_486e7f, label %block_.L_486fe3, label %block_486e85

block_486e85:
  ; Code: movq $0xb0eff0, %rax	 RIP: 486e85	 Bytes: 10
  %loadMem_486e85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486e85 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486e85)
  store %struct.Memory* %call_486e85, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 486e8f	 Bytes: 4
  %loadMem_486e8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486e8f = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486e8f)
  store %struct.Memory* %call_486e8f, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 486e93	 Bytes: 7
  %loadMem_486e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486e93 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486e93)
  store %struct.Memory* %call_486e93, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 486e9a	 Bytes: 3
  %loadMem_486e9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486e9a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486e9a)
  store %struct.Memory* %call_486e9a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x64(%rax)	 RIP: 486e9d	 Bytes: 4
  %loadMem_486e9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486e9d = call %struct.Memory* @routine_cmpl__0x0__0x64__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486e9d)
  store %struct.Memory* %call_486e9d, %struct.Memory** %MEMORY

  ; Code: je .L_486fde	 RIP: 486ea1	 Bytes: 6
  %loadMem_486ea1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486ea1 = call %struct.Memory* @routine_je_.L_486fde(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486ea1, i8* %BRANCH_TAKEN, i64 317, i64 6, i64 6)
  store %struct.Memory* %call_486ea1, %struct.Memory** %MEMORY

  %loadBr_486ea1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486ea1 = icmp eq i8 %loadBr_486ea1, 1
  br i1 %cmpBr_486ea1, label %block_.L_486fde, label %block_486ea7

block_486ea7:
  ; Code: movq $0xb0eff0, %rax	 RIP: 486ea7	 Bytes: 10
  %loadMem_486ea7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486ea7 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486ea7)
  store %struct.Memory* %call_486ea7, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 486eb1	 Bytes: 3
  %loadMem_486eb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486eb1 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486eb1)
  store %struct.Memory* %call_486eb1, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 486eb4	 Bytes: 3
  %loadMem_486eb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486eb4 = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486eb4)
  store %struct.Memory* %call_486eb4, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 486eb7	 Bytes: 3
  %loadMem_486eb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486eb7 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486eb7)
  store %struct.Memory* %call_486eb7, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rdx, %rdx	 RIP: 486eba	 Bytes: 7
  %loadMem_486eba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486eba = call %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486eba)
  store %struct.Memory* %call_486eba, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 486ec1	 Bytes: 3
  %loadMem_486ec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486ec1 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486ec1)
  store %struct.Memory* %call_486ec1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x64(%rax)	 RIP: 486ec4	 Bytes: 4
  %loadMem_486ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486ec4 = call %struct.Memory* @routine_cmpl__0x0__0x64__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486ec4)
  store %struct.Memory* %call_486ec4, %struct.Memory** %MEMORY

  ; Code: je .L_486fde	 RIP: 486ec8	 Bytes: 6
  %loadMem_486ec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486ec8 = call %struct.Memory* @routine_je_.L_486fde(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486ec8, i8* %BRANCH_TAKEN, i64 278, i64 6, i64 6)
  store %struct.Memory* %call_486ec8, %struct.Memory** %MEMORY

  %loadBr_486ec8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486ec8 = icmp eq i8 %loadBr_486ec8, 1
  br i1 %cmpBr_486ec8, label %block_.L_486fde, label %block_486ece

block_486ece:
  ; Code: movq $0xb0eff0, %rax	 RIP: 486ece	 Bytes: 10
  %loadMem_486ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486ece = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486ece)
  store %struct.Memory* %call_486ece, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 486ed8	 Bytes: 4
  %loadMem_486ed8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486ed8 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486ed8)
  store %struct.Memory* %call_486ed8, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 486edc	 Bytes: 7
  %loadMem_486edc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486edc = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486edc)
  store %struct.Memory* %call_486edc, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 486ee3	 Bytes: 3
  %loadMem_486ee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486ee3 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486ee3)
  store %struct.Memory* %call_486ee3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb4(%rax)	 RIP: 486ee6	 Bytes: 7
  %loadMem_486ee6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486ee6 = call %struct.Memory* @routine_cmpl__0x0__0xb4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486ee6)
  store %struct.Memory* %call_486ee6, %struct.Memory** %MEMORY

  ; Code: jne .L_486f51	 RIP: 486eed	 Bytes: 6
  %loadMem_486eed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486eed = call %struct.Memory* @routine_jne_.L_486f51(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486eed, i8* %BRANCH_TAKEN, i64 100, i64 6, i64 6)
  store %struct.Memory* %call_486eed, %struct.Memory** %MEMORY

  %loadBr_486eed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486eed = icmp eq i8 %loadBr_486eed, 1
  br i1 %cmpBr_486eed, label %block_.L_486f51, label %block_486ef3

block_486ef3:
  ; Code: movq $0xb0eff0, %rax	 RIP: 486ef3	 Bytes: 10
  %loadMem_486ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486ef3 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486ef3)
  store %struct.Memory* %call_486ef3, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 486efd	 Bytes: 3
  %loadMem_486efd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486efd = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486efd)
  store %struct.Memory* %call_486efd, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 486f00	 Bytes: 3
  %loadMem_486f00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486f00 = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486f00)
  store %struct.Memory* %call_486f00, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 486f03	 Bytes: 3
  %loadMem_486f03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486f03 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486f03)
  store %struct.Memory* %call_486f03, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rdx, %rdx	 RIP: 486f06	 Bytes: 7
  %loadMem_486f06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486f06 = call %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486f06)
  store %struct.Memory* %call_486f06, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 486f0d	 Bytes: 3
  %loadMem_486f0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486f0d = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486f0d)
  store %struct.Memory* %call_486f0d, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %edi	 RIP: 486f10	 Bytes: 3
  %loadMem_486f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486f10 = call %struct.Memory* @routine_movl_0x3c__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486f10)
  store %struct.Memory* %call_486f10, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 486f13	 Bytes: 3
  %loadMem_486f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486f13 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486f13)
  store %struct.Memory* %call_486f13, %struct.Memory** %MEMORY

  ; Code: callq .does_defend	 RIP: 486f16	 Bytes: 5
  %loadMem1_486f16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_486f16 = call %struct.Memory* @routine_callq_.does_defend(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_486f16, i64 -63942, i64 5, i64 5)
  store %struct.Memory* %call1_486f16, %struct.Memory** %MEMORY

  %loadMem2_486f16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_486f16 = load i64, i64* %3
  %call2_486f16 = call %struct.Memory* @sub_477550.does_defend(%struct.State* %0, i64  %loadPC_486f16, %struct.Memory* %loadMem2_486f16)
  store %struct.Memory* %call2_486f16, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 486f1b	 Bytes: 3
  %loadMem_486f1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486f1b = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486f1b)
  store %struct.Memory* %call_486f1b, %struct.Memory** %MEMORY

  ; Code: je .L_486f51	 RIP: 486f1e	 Bytes: 6
  %loadMem_486f1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486f1e = call %struct.Memory* @routine_je_.L_486f51(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486f1e, i8* %BRANCH_TAKEN, i64 51, i64 6, i64 6)
  store %struct.Memory* %call_486f1e, %struct.Memory** %MEMORY

  %loadBr_486f1e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486f1e = icmp eq i8 %loadBr_486f1e, 1
  br i1 %cmpBr_486f1e, label %block_.L_486f51, label %block_486f24

block_486f24:
  ; Code: movl $0x5, %edx	 RIP: 486f24	 Bytes: 5
  %loadMem_486f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486f24 = call %struct.Memory* @routine_movl__0x5___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486f24)
  store %struct.Memory* %call_486f24, %struct.Memory** %MEMORY

  ; Code: movq $0xb0eff0, %rax	 RIP: 486f29	 Bytes: 10
  %loadMem_486f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486f29 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486f29)
  store %struct.Memory* %call_486f29, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edi	 RIP: 486f33	 Bytes: 3
  %loadMem_486f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486f33 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486f33)
  store %struct.Memory* %call_486f33, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 486f36	 Bytes: 3
  %loadMem_486f36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486f36 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486f36)
  store %struct.Memory* %call_486f36, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 486f39	 Bytes: 3
  %loadMem_486f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486f39 = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486f39)
  store %struct.Memory* %call_486f39, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 486f3c	 Bytes: 3
  %loadMem_486f3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486f3c = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486f3c)
  store %struct.Memory* %call_486f3c, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rsi, %rsi	 RIP: 486f3f	 Bytes: 7
  %loadMem_486f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486f3f = call %struct.Memory* @routine_imulq__0x17c___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486f3f)
  store %struct.Memory* %call_486f3f, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rax	 RIP: 486f46	 Bytes: 3
  %loadMem_486f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486f46 = call %struct.Memory* @routine_addq__rsi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486f46)
  store %struct.Memory* %call_486f46, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %esi	 RIP: 486f49	 Bytes: 3
  %loadMem_486f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486f49 = call %struct.Memory* @routine_movl_0x3c__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486f49)
  store %struct.Memory* %call_486f49, %struct.Memory** %MEMORY

  ; Code: callq .change_defense	 RIP: 486f4c	 Bytes: 5
  %loadMem1_486f4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_486f4c = call %struct.Memory* @routine_callq_.change_defense(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_486f4c, i64 6324, i64 5, i64 5)
  store %struct.Memory* %call1_486f4c, %struct.Memory** %MEMORY

  %loadMem2_486f4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_486f4c = load i64, i64* %3
  %call2_486f4c = call %struct.Memory* @sub_488800.change_defense(%struct.State* %0, i64  %loadPC_486f4c, %struct.Memory* %loadMem2_486f4c)
  store %struct.Memory* %call2_486f4c, %struct.Memory** %MEMORY

  ; Code: .L_486f51:	 RIP: 486f51	 Bytes: 0
  br label %block_.L_486f51
block_.L_486f51:

  ; Code: movq $0xb0eff0, %rax	 RIP: 486f51	 Bytes: 10
  %loadMem_486f51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486f51 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486f51)
  store %struct.Memory* %call_486f51, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 486f5b	 Bytes: 3
  %loadMem_486f5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486f5b = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486f5b)
  store %struct.Memory* %call_486f5b, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 486f5e	 Bytes: 3
  %loadMem_486f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486f5e = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486f5e)
  store %struct.Memory* %call_486f5e, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 486f61	 Bytes: 3
  %loadMem_486f61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486f61 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486f61)
  store %struct.Memory* %call_486f61, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rdx, %rdx	 RIP: 486f64	 Bytes: 7
  %loadMem_486f64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486f64 = call %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486f64)
  store %struct.Memory* %call_486f64, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 486f6b	 Bytes: 3
  %loadMem_486f6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486f6b = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486f6b)
  store %struct.Memory* %call_486f6b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb4(%rax)	 RIP: 486f6e	 Bytes: 7
  %loadMem_486f6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486f6e = call %struct.Memory* @routine_cmpl__0x0__0xb4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486f6e)
  store %struct.Memory* %call_486f6e, %struct.Memory** %MEMORY

  ; Code: jne .L_486fd9	 RIP: 486f75	 Bytes: 6
  %loadMem_486f75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486f75 = call %struct.Memory* @routine_jne_.L_486fd9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486f75, i8* %BRANCH_TAKEN, i64 100, i64 6, i64 6)
  store %struct.Memory* %call_486f75, %struct.Memory** %MEMORY

  %loadBr_486f75 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486f75 = icmp eq i8 %loadBr_486f75, 1
  br i1 %cmpBr_486f75, label %block_.L_486fd9, label %block_486f7b

block_486f7b:
  ; Code: movq $0xb0eff0, %rax	 RIP: 486f7b	 Bytes: 10
  %loadMem_486f7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486f7b = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486f7b)
  store %struct.Memory* %call_486f7b, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 486f85	 Bytes: 4
  %loadMem_486f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486f85 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486f85)
  store %struct.Memory* %call_486f85, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 486f89	 Bytes: 7
  %loadMem_486f89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486f89 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486f89)
  store %struct.Memory* %call_486f89, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 486f90	 Bytes: 3
  %loadMem_486f90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486f90 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486f90)
  store %struct.Memory* %call_486f90, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %edi	 RIP: 486f93	 Bytes: 3
  %loadMem_486f93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486f93 = call %struct.Memory* @routine_movl_0x3c__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486f93)
  store %struct.Memory* %call_486f93, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edx	 RIP: 486f96	 Bytes: 3
  %loadMem_486f96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486f96 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486f96)
  store %struct.Memory* %call_486f96, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %edx	 RIP: 486f99	 Bytes: 3
  %loadMem_486f99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486f99 = call %struct.Memory* @routine_addl__0x14___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486f99)
  store %struct.Memory* %call_486f99, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 486f9c	 Bytes: 2
  %loadMem_486f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486f9c = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486f9c)
  store %struct.Memory* %call_486f9c, %struct.Memory** %MEMORY

  ; Code: callq .does_defend	 RIP: 486f9e	 Bytes: 5
  %loadMem1_486f9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_486f9e = call %struct.Memory* @routine_callq_.does_defend(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_486f9e, i64 -64078, i64 5, i64 5)
  store %struct.Memory* %call1_486f9e, %struct.Memory** %MEMORY

  %loadMem2_486f9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_486f9e = load i64, i64* %3
  %call2_486f9e = call %struct.Memory* @sub_477550.does_defend(%struct.State* %0, i64  %loadPC_486f9e, %struct.Memory* %loadMem2_486f9e)
  store %struct.Memory* %call2_486f9e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 486fa3	 Bytes: 3
  %loadMem_486fa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486fa3 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486fa3)
  store %struct.Memory* %call_486fa3, %struct.Memory** %MEMORY

  ; Code: je .L_486fd9	 RIP: 486fa6	 Bytes: 6
  %loadMem_486fa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486fa6 = call %struct.Memory* @routine_je_.L_486fd9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486fa6, i8* %BRANCH_TAKEN, i64 51, i64 6, i64 6)
  store %struct.Memory* %call_486fa6, %struct.Memory** %MEMORY

  %loadBr_486fa6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_486fa6 = icmp eq i8 %loadBr_486fa6, 1
  br i1 %cmpBr_486fa6, label %block_.L_486fd9, label %block_486fac

block_486fac:
  ; Code: movl $0x5, %edx	 RIP: 486fac	 Bytes: 5
  %loadMem_486fac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486fac = call %struct.Memory* @routine_movl__0x5___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486fac)
  store %struct.Memory* %call_486fac, %struct.Memory** %MEMORY

  ; Code: movq $0xb0eff0, %rax	 RIP: 486fb1	 Bytes: 10
  %loadMem_486fb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486fb1 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486fb1)
  store %struct.Memory* %call_486fb1, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 486fbb	 Bytes: 3
  %loadMem_486fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486fbb = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486fbb)
  store %struct.Memory* %call_486fbb, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 486fbe	 Bytes: 3
  %loadMem_486fbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486fbe = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486fbe)
  store %struct.Memory* %call_486fbe, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rsi	 RIP: 486fc1	 Bytes: 4
  %loadMem_486fc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486fc1 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486fc1)
  store %struct.Memory* %call_486fc1, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rsi, %rsi	 RIP: 486fc5	 Bytes: 7
  %loadMem_486fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486fc5 = call %struct.Memory* @routine_imulq__0x17c___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486fc5)
  store %struct.Memory* %call_486fc5, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rax	 RIP: 486fcc	 Bytes: 3
  %loadMem_486fcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486fcc = call %struct.Memory* @routine_addq__rsi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486fcc)
  store %struct.Memory* %call_486fcc, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %esi	 RIP: 486fcf	 Bytes: 3
  %loadMem_486fcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486fcf = call %struct.Memory* @routine_movl_0x3c__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486fcf)
  store %struct.Memory* %call_486fcf, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edi	 RIP: 486fd2	 Bytes: 2
  %loadMem_486fd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486fd2 = call %struct.Memory* @routine_movl__ecx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486fd2)
  store %struct.Memory* %call_486fd2, %struct.Memory** %MEMORY

  ; Code: callq .change_defense	 RIP: 486fd4	 Bytes: 5
  %loadMem1_486fd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_486fd4 = call %struct.Memory* @routine_callq_.change_defense(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_486fd4, i64 6188, i64 5, i64 5)
  store %struct.Memory* %call1_486fd4, %struct.Memory** %MEMORY

  %loadMem2_486fd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_486fd4 = load i64, i64* %3
  %call2_486fd4 = call %struct.Memory* @sub_488800.change_defense(%struct.State* %0, i64  %loadPC_486fd4, %struct.Memory* %loadMem2_486fd4)
  store %struct.Memory* %call2_486fd4, %struct.Memory** %MEMORY

  ; Code: .L_486fd9:	 RIP: 486fd9	 Bytes: 0
  br label %block_.L_486fd9
block_.L_486fd9:

  ; Code: jmpq .L_486fde	 RIP: 486fd9	 Bytes: 5
  %loadMem_486fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486fd9 = call %struct.Memory* @routine_jmpq_.L_486fde(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486fd9, i64 5, i64 5)
  store %struct.Memory* %call_486fd9, %struct.Memory** %MEMORY

  br label %block_.L_486fde

  ; Code: .L_486fde:	 RIP: 486fde	 Bytes: 0
block_.L_486fde:

  ; Code: jmpq .L_486fe3	 RIP: 486fde	 Bytes: 5
  %loadMem_486fde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486fde = call %struct.Memory* @routine_jmpq_.L_486fe3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486fde, i64 5, i64 5)
  store %struct.Memory* %call_486fde, %struct.Memory** %MEMORY

  br label %block_.L_486fe3

  ; Code: .L_486fe3:	 RIP: 486fe3	 Bytes: 0
block_.L_486fe3:

  ; Code: jmpq .L_486fe8	 RIP: 486fe3	 Bytes: 5
  %loadMem_486fe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486fe3 = call %struct.Memory* @routine_jmpq_.L_486fe8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486fe3, i64 5, i64 5)
  store %struct.Memory* %call_486fe3, %struct.Memory** %MEMORY

  br label %block_.L_486fe8

  ; Code: .L_486fe8:	 RIP: 486fe8	 Bytes: 0
block_.L_486fe8:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 486fe8	 Bytes: 3
  %loadMem_486fe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486fe8 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486fe8)
  store %struct.Memory* %call_486fe8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 486feb	 Bytes: 3
  %loadMem_486feb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486feb = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486feb)
  store %struct.Memory* %call_486feb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 486fee	 Bytes: 3
  %loadMem_486fee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486fee = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486fee)
  store %struct.Memory* %call_486fee, %struct.Memory** %MEMORY

  ; Code: jmpq .L_486e01	 RIP: 486ff1	 Bytes: 5
  %loadMem_486ff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486ff1 = call %struct.Memory* @routine_jmpq_.L_486e01(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486ff1, i64 -496, i64 5)
  store %struct.Memory* %call_486ff1, %struct.Memory** %MEMORY

  br label %block_.L_486e01

  ; Code: .L_486ff6:	 RIP: 486ff6	 Bytes: 0
block_.L_486ff6:

  ; Code: movl $0x15, -0x4(%rbp)	 RIP: 486ff6	 Bytes: 7
  %loadMem_486ff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486ff6 = call %struct.Memory* @routine_movl__0x15__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486ff6)
  store %struct.Memory* %call_486ff6, %struct.Memory** %MEMORY

  ; Code: .L_486ffd:	 RIP: 486ffd	 Bytes: 0
  br label %block_.L_486ffd
block_.L_486ffd:

  ; Code: cmpl $0x190, -0x4(%rbp)	 RIP: 486ffd	 Bytes: 7
  %loadMem_486ffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_486ffd = call %struct.Memory* @routine_cmpl__0x190__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_486ffd)
  store %struct.Memory* %call_486ffd, %struct.Memory** %MEMORY

  ; Code: jge .L_4871f2	 RIP: 487004	 Bytes: 6
  %loadMem_487004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487004 = call %struct.Memory* @routine_jge_.L_4871f2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487004, i8* %BRANCH_TAKEN, i64 494, i64 6, i64 6)
  store %struct.Memory* %call_487004, %struct.Memory** %MEMORY

  %loadBr_487004 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487004 = icmp eq i8 %loadBr_487004, 1
  br i1 %cmpBr_487004, label %block_.L_4871f2, label %block_48700a

block_48700a:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 48700a	 Bytes: 4
  %loadMem_48700a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48700a = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48700a)
  store %struct.Memory* %call_48700a, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 48700e	 Bytes: 8
  %loadMem_48700e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48700e = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48700e)
  store %struct.Memory* %call_48700e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %ecx	 RIP: 487016	 Bytes: 3
  %loadMem_487016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487016 = call %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487016)
  store %struct.Memory* %call_487016, %struct.Memory** %MEMORY

  ; Code: je .L_487034	 RIP: 487019	 Bytes: 6
  %loadMem_487019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487019 = call %struct.Memory* @routine_je_.L_487034(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487019, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_487019, %struct.Memory** %MEMORY

  %loadBr_487019 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487019 = icmp eq i8 %loadBr_487019, 1
  br i1 %cmpBr_487019, label %block_.L_487034, label %block_48701f

block_48701f:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 48701f	 Bytes: 4
  %loadMem_48701f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48701f = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48701f)
  store %struct.Memory* %call_48701f, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 487023	 Bytes: 8
  %loadMem_487023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487023 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487023)
  store %struct.Memory* %call_487023, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %ecx	 RIP: 48702b	 Bytes: 3
  %loadMem_48702b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48702b = call %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48702b)
  store %struct.Memory* %call_48702b, %struct.Memory** %MEMORY

  ; Code: jne .L_4871df	 RIP: 48702e	 Bytes: 6
  %loadMem_48702e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48702e = call %struct.Memory* @routine_jne_.L_4871df(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48702e, i8* %BRANCH_TAKEN, i64 433, i64 6, i64 6)
  store %struct.Memory* %call_48702e, %struct.Memory** %MEMORY

  %loadBr_48702e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48702e = icmp eq i8 %loadBr_48702e, 1
  br i1 %cmpBr_48702e, label %block_.L_4871df, label %block_.L_487034

  ; Code: .L_487034:	 RIP: 487034	 Bytes: 0
block_.L_487034:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 487034	 Bytes: 3
  %loadMem_487034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487034 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487034)
  store %struct.Memory* %call_487034, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 487037	 Bytes: 3
  %loadMem_487037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487037 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487037)
  store %struct.Memory* %call_487037, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 48703a	 Bytes: 3
  %loadMem_48703a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48703a = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48703a)
  store %struct.Memory* %call_48703a, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 48703d	 Bytes: 8
  %loadMem_48703d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48703d = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48703d)
  store %struct.Memory* %call_48703d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %eax	 RIP: 487045	 Bytes: 3
  %loadMem_487045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487045 = call %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487045)
  store %struct.Memory* %call_487045, %struct.Memory** %MEMORY

  ; Code: je .L_487068	 RIP: 487048	 Bytes: 6
  %loadMem_487048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487048 = call %struct.Memory* @routine_je_.L_487068(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487048, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_487048, %struct.Memory** %MEMORY

  %loadBr_487048 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487048 = icmp eq i8 %loadBr_487048, 1
  br i1 %cmpBr_487048, label %block_.L_487068, label %block_48704e

block_48704e:
  ; Code: movl -0x4(%rbp), %eax	 RIP: 48704e	 Bytes: 3
  %loadMem_48704e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48704e = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48704e)
  store %struct.Memory* %call_48704e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 487051	 Bytes: 3
  %loadMem_487051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487051 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487051)
  store %struct.Memory* %call_487051, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 487054	 Bytes: 3
  %loadMem_487054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487054 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487054)
  store %struct.Memory* %call_487054, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 487057	 Bytes: 8
  %loadMem_487057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487057 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487057)
  store %struct.Memory* %call_487057, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %eax	 RIP: 48705f	 Bytes: 3
  %loadMem_48705f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48705f = call %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48705f)
  store %struct.Memory* %call_48705f, %struct.Memory** %MEMORY

  ; Code: jne .L_4871df	 RIP: 487062	 Bytes: 6
  %loadMem_487062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487062 = call %struct.Memory* @routine_jne_.L_4871df(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487062, i8* %BRANCH_TAKEN, i64 381, i64 6, i64 6)
  store %struct.Memory* %call_487062, %struct.Memory** %MEMORY

  %loadBr_487062 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487062 = icmp eq i8 %loadBr_487062, 1
  br i1 %cmpBr_487062, label %block_.L_4871df, label %block_.L_487068

  ; Code: .L_487068:	 RIP: 487068	 Bytes: 0
block_.L_487068:

  ; Code: movl -0x4(%rbp), %edi	 RIP: 487068	 Bytes: 3
  %loadMem_487068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487068 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487068)
  store %struct.Memory* %call_487068, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 48706b	 Bytes: 3
  %loadMem_48706b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48706b = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48706b)
  store %struct.Memory* %call_48706b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48706e	 Bytes: 3
  %loadMem_48706e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48706e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48706e)
  store %struct.Memory* %call_48706e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 487071	 Bytes: 2
  %loadMem_487071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487071 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487071)
  store %struct.Memory* %call_487071, %struct.Memory** %MEMORY

  ; Code: callq .is_same_worm	 RIP: 487073	 Bytes: 5
  %loadMem1_487073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487073 = call %struct.Memory* @routine_callq_.is_same_worm(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487073, i64 5533, i64 5, i64 5)
  store %struct.Memory* %call1_487073, %struct.Memory** %MEMORY

  %loadMem2_487073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487073 = load i64, i64* %3
  %call2_487073 = call %struct.Memory* @sub_488610.is_same_worm(%struct.State* %0, i64  %loadPC_487073, %struct.Memory* %loadMem2_487073)
  store %struct.Memory* %call2_487073, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 487078	 Bytes: 3
  %loadMem_487078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487078 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487078)
  store %struct.Memory* %call_487078, %struct.Memory** %MEMORY

  ; Code: jne .L_4871df	 RIP: 48707b	 Bytes: 6
  %loadMem_48707b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48707b = call %struct.Memory* @routine_jne_.L_4871df(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48707b, i8* %BRANCH_TAKEN, i64 356, i64 6, i64 6)
  store %struct.Memory* %call_48707b, %struct.Memory** %MEMORY

  %loadBr_48707b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48707b = icmp eq i8 %loadBr_48707b, 1
  br i1 %cmpBr_48707b, label %block_.L_4871df, label %block_487081

block_487081:
  ; Code: movq $0xb0eff0, %rax	 RIP: 487081	 Bytes: 10
  %loadMem_487081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487081 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487081)
  store %struct.Memory* %call_487081, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 48708b	 Bytes: 4
  %loadMem_48708b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48708b = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48708b)
  store %struct.Memory* %call_48708b, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 48708f	 Bytes: 7
  %loadMem_48708f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48708f = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48708f)
  store %struct.Memory* %call_48708f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 487096	 Bytes: 3
  %loadMem_487096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487096 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487096)
  store %struct.Memory* %call_487096, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x64(%rax)	 RIP: 487099	 Bytes: 4
  %loadMem_487099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487099 = call %struct.Memory* @routine_cmpl__0x0__0x64__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487099)
  store %struct.Memory* %call_487099, %struct.Memory** %MEMORY

  ; Code: je .L_4871da	 RIP: 48709d	 Bytes: 6
  %loadMem_48709d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48709d = call %struct.Memory* @routine_je_.L_4871da(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48709d, i8* %BRANCH_TAKEN, i64 317, i64 6, i64 6)
  store %struct.Memory* %call_48709d, %struct.Memory** %MEMORY

  %loadBr_48709d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48709d = icmp eq i8 %loadBr_48709d, 1
  br i1 %cmpBr_48709d, label %block_.L_4871da, label %block_4870a3

block_4870a3:
  ; Code: movq $0xb0eff0, %rax	 RIP: 4870a3	 Bytes: 10
  %loadMem_4870a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4870a3 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4870a3)
  store %struct.Memory* %call_4870a3, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 4870ad	 Bytes: 3
  %loadMem_4870ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4870ad = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4870ad)
  store %struct.Memory* %call_4870ad, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4870b0	 Bytes: 3
  %loadMem_4870b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4870b0 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4870b0)
  store %struct.Memory* %call_4870b0, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4870b3	 Bytes: 3
  %loadMem_4870b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4870b3 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4870b3)
  store %struct.Memory* %call_4870b3, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rdx, %rdx	 RIP: 4870b6	 Bytes: 7
  %loadMem_4870b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4870b6 = call %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4870b6)
  store %struct.Memory* %call_4870b6, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4870bd	 Bytes: 3
  %loadMem_4870bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4870bd = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4870bd)
  store %struct.Memory* %call_4870bd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x64(%rax)	 RIP: 4870c0	 Bytes: 4
  %loadMem_4870c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4870c0 = call %struct.Memory* @routine_cmpl__0x0__0x64__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4870c0)
  store %struct.Memory* %call_4870c0, %struct.Memory** %MEMORY

  ; Code: je .L_4871da	 RIP: 4870c4	 Bytes: 6
  %loadMem_4870c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4870c4 = call %struct.Memory* @routine_je_.L_4871da(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4870c4, i8* %BRANCH_TAKEN, i64 278, i64 6, i64 6)
  store %struct.Memory* %call_4870c4, %struct.Memory** %MEMORY

  %loadBr_4870c4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4870c4 = icmp eq i8 %loadBr_4870c4, 1
  br i1 %cmpBr_4870c4, label %block_.L_4871da, label %block_4870ca

block_4870ca:
  ; Code: movq $0xb0eff0, %rax	 RIP: 4870ca	 Bytes: 10
  %loadMem_4870ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4870ca = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4870ca)
  store %struct.Memory* %call_4870ca, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4870d4	 Bytes: 4
  %loadMem_4870d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4870d4 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4870d4)
  store %struct.Memory* %call_4870d4, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 4870d8	 Bytes: 7
  %loadMem_4870d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4870d8 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4870d8)
  store %struct.Memory* %call_4870d8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4870df	 Bytes: 3
  %loadMem_4870df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4870df = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4870df)
  store %struct.Memory* %call_4870df, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb4(%rax)	 RIP: 4870e2	 Bytes: 7
  %loadMem_4870e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4870e2 = call %struct.Memory* @routine_cmpl__0x0__0xb4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4870e2)
  store %struct.Memory* %call_4870e2, %struct.Memory** %MEMORY

  ; Code: jne .L_48714d	 RIP: 4870e9	 Bytes: 6
  %loadMem_4870e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4870e9 = call %struct.Memory* @routine_jne_.L_48714d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4870e9, i8* %BRANCH_TAKEN, i64 100, i64 6, i64 6)
  store %struct.Memory* %call_4870e9, %struct.Memory** %MEMORY

  %loadBr_4870e9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4870e9 = icmp eq i8 %loadBr_4870e9, 1
  br i1 %cmpBr_4870e9, label %block_.L_48714d, label %block_4870ef

block_4870ef:
  ; Code: movq $0xb0eff0, %rax	 RIP: 4870ef	 Bytes: 10
  %loadMem_4870ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4870ef = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4870ef)
  store %struct.Memory* %call_4870ef, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 4870f9	 Bytes: 3
  %loadMem_4870f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4870f9 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4870f9)
  store %struct.Memory* %call_4870f9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4870fc	 Bytes: 3
  %loadMem_4870fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4870fc = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4870fc)
  store %struct.Memory* %call_4870fc, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4870ff	 Bytes: 3
  %loadMem_4870ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4870ff = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4870ff)
  store %struct.Memory* %call_4870ff, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rdx, %rdx	 RIP: 487102	 Bytes: 7
  %loadMem_487102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487102 = call %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487102)
  store %struct.Memory* %call_487102, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 487109	 Bytes: 3
  %loadMem_487109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487109 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487109)
  store %struct.Memory* %call_487109, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %edi	 RIP: 48710c	 Bytes: 3
  %loadMem_48710c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48710c = call %struct.Memory* @routine_movl_0x3c__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48710c)
  store %struct.Memory* %call_48710c, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 48710f	 Bytes: 3
  %loadMem_48710f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48710f = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48710f)
  store %struct.Memory* %call_48710f, %struct.Memory** %MEMORY

  ; Code: callq .does_defend	 RIP: 487112	 Bytes: 5
  %loadMem1_487112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487112 = call %struct.Memory* @routine_callq_.does_defend(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487112, i64 -64450, i64 5, i64 5)
  store %struct.Memory* %call1_487112, %struct.Memory** %MEMORY

  %loadMem2_487112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487112 = load i64, i64* %3
  %call2_487112 = call %struct.Memory* @sub_477550.does_defend(%struct.State* %0, i64  %loadPC_487112, %struct.Memory* %loadMem2_487112)
  store %struct.Memory* %call2_487112, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 487117	 Bytes: 3
  %loadMem_487117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487117 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487117)
  store %struct.Memory* %call_487117, %struct.Memory** %MEMORY

  ; Code: je .L_48714d	 RIP: 48711a	 Bytes: 6
  %loadMem_48711a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48711a = call %struct.Memory* @routine_je_.L_48714d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48711a, i8* %BRANCH_TAKEN, i64 51, i64 6, i64 6)
  store %struct.Memory* %call_48711a, %struct.Memory** %MEMORY

  %loadBr_48711a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48711a = icmp eq i8 %loadBr_48711a, 1
  br i1 %cmpBr_48711a, label %block_.L_48714d, label %block_487120

block_487120:
  ; Code: movl $0x5, %edx	 RIP: 487120	 Bytes: 5
  %loadMem_487120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487120 = call %struct.Memory* @routine_movl__0x5___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487120)
  store %struct.Memory* %call_487120, %struct.Memory** %MEMORY

  ; Code: movq $0xb0eff0, %rax	 RIP: 487125	 Bytes: 10
  %loadMem_487125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487125 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487125)
  store %struct.Memory* %call_487125, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edi	 RIP: 48712f	 Bytes: 3
  %loadMem_48712f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48712f = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48712f)
  store %struct.Memory* %call_48712f, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 487132	 Bytes: 3
  %loadMem_487132 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487132 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487132)
  store %struct.Memory* %call_487132, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 487135	 Bytes: 3
  %loadMem_487135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487135 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487135)
  store %struct.Memory* %call_487135, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 487138	 Bytes: 3
  %loadMem_487138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487138 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487138)
  store %struct.Memory* %call_487138, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rsi, %rsi	 RIP: 48713b	 Bytes: 7
  %loadMem_48713b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48713b = call %struct.Memory* @routine_imulq__0x17c___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48713b)
  store %struct.Memory* %call_48713b, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rax	 RIP: 487142	 Bytes: 3
  %loadMem_487142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487142 = call %struct.Memory* @routine_addq__rsi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487142)
  store %struct.Memory* %call_487142, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %esi	 RIP: 487145	 Bytes: 3
  %loadMem_487145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487145 = call %struct.Memory* @routine_movl_0x3c__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487145)
  store %struct.Memory* %call_487145, %struct.Memory** %MEMORY

  ; Code: callq .change_defense	 RIP: 487148	 Bytes: 5
  %loadMem1_487148 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487148 = call %struct.Memory* @routine_callq_.change_defense(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487148, i64 5816, i64 5, i64 5)
  store %struct.Memory* %call1_487148, %struct.Memory** %MEMORY

  %loadMem2_487148 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487148 = load i64, i64* %3
  %call2_487148 = call %struct.Memory* @sub_488800.change_defense(%struct.State* %0, i64  %loadPC_487148, %struct.Memory* %loadMem2_487148)
  store %struct.Memory* %call2_487148, %struct.Memory** %MEMORY

  ; Code: .L_48714d:	 RIP: 48714d	 Bytes: 0
  br label %block_.L_48714d
block_.L_48714d:

  ; Code: movq $0xb0eff0, %rax	 RIP: 48714d	 Bytes: 10
  %loadMem_48714d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48714d = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48714d)
  store %struct.Memory* %call_48714d, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 487157	 Bytes: 3
  %loadMem_487157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487157 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487157)
  store %struct.Memory* %call_487157, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 48715a	 Bytes: 3
  %loadMem_48715a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48715a = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48715a)
  store %struct.Memory* %call_48715a, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 48715d	 Bytes: 3
  %loadMem_48715d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48715d = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48715d)
  store %struct.Memory* %call_48715d, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rdx, %rdx	 RIP: 487160	 Bytes: 7
  %loadMem_487160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487160 = call %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487160)
  store %struct.Memory* %call_487160, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 487167	 Bytes: 3
  %loadMem_487167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487167 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487167)
  store %struct.Memory* %call_487167, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb4(%rax)	 RIP: 48716a	 Bytes: 7
  %loadMem_48716a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48716a = call %struct.Memory* @routine_cmpl__0x0__0xb4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48716a)
  store %struct.Memory* %call_48716a, %struct.Memory** %MEMORY

  ; Code: jne .L_4871d5	 RIP: 487171	 Bytes: 6
  %loadMem_487171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487171 = call %struct.Memory* @routine_jne_.L_4871d5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487171, i8* %BRANCH_TAKEN, i64 100, i64 6, i64 6)
  store %struct.Memory* %call_487171, %struct.Memory** %MEMORY

  %loadBr_487171 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487171 = icmp eq i8 %loadBr_487171, 1
  br i1 %cmpBr_487171, label %block_.L_4871d5, label %block_487177

block_487177:
  ; Code: movq $0xb0eff0, %rax	 RIP: 487177	 Bytes: 10
  %loadMem_487177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487177 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487177)
  store %struct.Memory* %call_487177, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 487181	 Bytes: 4
  %loadMem_487181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487181 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487181)
  store %struct.Memory* %call_487181, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 487185	 Bytes: 7
  %loadMem_487185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487185 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487185)
  store %struct.Memory* %call_487185, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48718c	 Bytes: 3
  %loadMem_48718c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48718c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48718c)
  store %struct.Memory* %call_48718c, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %edi	 RIP: 48718f	 Bytes: 3
  %loadMem_48718f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48718f = call %struct.Memory* @routine_movl_0x3c__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48718f)
  store %struct.Memory* %call_48718f, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edx	 RIP: 487192	 Bytes: 3
  %loadMem_487192 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487192 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487192)
  store %struct.Memory* %call_487192, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 487195	 Bytes: 3
  %loadMem_487195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487195 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487195)
  store %struct.Memory* %call_487195, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 487198	 Bytes: 2
  %loadMem_487198 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487198 = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487198)
  store %struct.Memory* %call_487198, %struct.Memory** %MEMORY

  ; Code: callq .does_defend	 RIP: 48719a	 Bytes: 5
  %loadMem1_48719a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48719a = call %struct.Memory* @routine_callq_.does_defend(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48719a, i64 -64586, i64 5, i64 5)
  store %struct.Memory* %call1_48719a, %struct.Memory** %MEMORY

  %loadMem2_48719a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48719a = load i64, i64* %3
  %call2_48719a = call %struct.Memory* @sub_477550.does_defend(%struct.State* %0, i64  %loadPC_48719a, %struct.Memory* %loadMem2_48719a)
  store %struct.Memory* %call2_48719a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 48719f	 Bytes: 3
  %loadMem_48719f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48719f = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48719f)
  store %struct.Memory* %call_48719f, %struct.Memory** %MEMORY

  ; Code: je .L_4871d5	 RIP: 4871a2	 Bytes: 6
  %loadMem_4871a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4871a2 = call %struct.Memory* @routine_je_.L_4871d5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4871a2, i8* %BRANCH_TAKEN, i64 51, i64 6, i64 6)
  store %struct.Memory* %call_4871a2, %struct.Memory** %MEMORY

  %loadBr_4871a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4871a2 = icmp eq i8 %loadBr_4871a2, 1
  br i1 %cmpBr_4871a2, label %block_.L_4871d5, label %block_4871a8

block_4871a8:
  ; Code: movl $0x5, %edx	 RIP: 4871a8	 Bytes: 5
  %loadMem_4871a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4871a8 = call %struct.Memory* @routine_movl__0x5___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4871a8)
  store %struct.Memory* %call_4871a8, %struct.Memory** %MEMORY

  ; Code: movq $0xb0eff0, %rax	 RIP: 4871ad	 Bytes: 10
  %loadMem_4871ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4871ad = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4871ad)
  store %struct.Memory* %call_4871ad, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 4871b7	 Bytes: 3
  %loadMem_4871b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4871b7 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4871b7)
  store %struct.Memory* %call_4871b7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4871ba	 Bytes: 3
  %loadMem_4871ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4871ba = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4871ba)
  store %struct.Memory* %call_4871ba, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rsi	 RIP: 4871bd	 Bytes: 4
  %loadMem_4871bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4871bd = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4871bd)
  store %struct.Memory* %call_4871bd, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rsi, %rsi	 RIP: 4871c1	 Bytes: 7
  %loadMem_4871c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4871c1 = call %struct.Memory* @routine_imulq__0x17c___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4871c1)
  store %struct.Memory* %call_4871c1, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rax	 RIP: 4871c8	 Bytes: 3
  %loadMem_4871c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4871c8 = call %struct.Memory* @routine_addq__rsi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4871c8)
  store %struct.Memory* %call_4871c8, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %esi	 RIP: 4871cb	 Bytes: 3
  %loadMem_4871cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4871cb = call %struct.Memory* @routine_movl_0x3c__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4871cb)
  store %struct.Memory* %call_4871cb, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edi	 RIP: 4871ce	 Bytes: 2
  %loadMem_4871ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4871ce = call %struct.Memory* @routine_movl__ecx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4871ce)
  store %struct.Memory* %call_4871ce, %struct.Memory** %MEMORY

  ; Code: callq .change_defense	 RIP: 4871d0	 Bytes: 5
  %loadMem1_4871d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4871d0 = call %struct.Memory* @routine_callq_.change_defense(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4871d0, i64 5680, i64 5, i64 5)
  store %struct.Memory* %call1_4871d0, %struct.Memory** %MEMORY

  %loadMem2_4871d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4871d0 = load i64, i64* %3
  %call2_4871d0 = call %struct.Memory* @sub_488800.change_defense(%struct.State* %0, i64  %loadPC_4871d0, %struct.Memory* %loadMem2_4871d0)
  store %struct.Memory* %call2_4871d0, %struct.Memory** %MEMORY

  ; Code: .L_4871d5:	 RIP: 4871d5	 Bytes: 0
  br label %block_.L_4871d5
block_.L_4871d5:

  ; Code: jmpq .L_4871da	 RIP: 4871d5	 Bytes: 5
  %loadMem_4871d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4871d5 = call %struct.Memory* @routine_jmpq_.L_4871da(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4871d5, i64 5, i64 5)
  store %struct.Memory* %call_4871d5, %struct.Memory** %MEMORY

  br label %block_.L_4871da

  ; Code: .L_4871da:	 RIP: 4871da	 Bytes: 0
block_.L_4871da:

  ; Code: jmpq .L_4871df	 RIP: 4871da	 Bytes: 5
  %loadMem_4871da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4871da = call %struct.Memory* @routine_jmpq_.L_4871df(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4871da, i64 5, i64 5)
  store %struct.Memory* %call_4871da, %struct.Memory** %MEMORY

  br label %block_.L_4871df

  ; Code: .L_4871df:	 RIP: 4871df	 Bytes: 0
block_.L_4871df:

  ; Code: jmpq .L_4871e4	 RIP: 4871df	 Bytes: 5
  %loadMem_4871df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4871df = call %struct.Memory* @routine_jmpq_.L_4871e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4871df, i64 5, i64 5)
  store %struct.Memory* %call_4871df, %struct.Memory** %MEMORY

  br label %block_.L_4871e4

  ; Code: .L_4871e4:	 RIP: 4871e4	 Bytes: 0
block_.L_4871e4:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4871e4	 Bytes: 3
  %loadMem_4871e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4871e4 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4871e4)
  store %struct.Memory* %call_4871e4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4871e7	 Bytes: 3
  %loadMem_4871e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4871e7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4871e7)
  store %struct.Memory* %call_4871e7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 4871ea	 Bytes: 3
  %loadMem_4871ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4871ea = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4871ea)
  store %struct.Memory* %call_4871ea, %struct.Memory** %MEMORY

  ; Code: jmpq .L_486ffd	 RIP: 4871ed	 Bytes: 5
  %loadMem_4871ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4871ed = call %struct.Memory* @routine_jmpq_.L_486ffd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4871ed, i64 -496, i64 5)
  store %struct.Memory* %call_4871ed, %struct.Memory** %MEMORY

  br label %block_.L_486ffd

  ; Code: .L_4871f2:	 RIP: 4871f2	 Bytes: 0
block_.L_4871f2:

  ; Code: cmpl $0x0, 0xb54ce4	 RIP: 4871f2	 Bytes: 8
  %loadMem_4871f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4871f2 = call %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4871f2)
  store %struct.Memory* %call_4871f2, %struct.Memory** %MEMORY

  ; Code: jne .L_487205	 RIP: 4871fa	 Bytes: 6
  %loadMem_4871fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4871fa = call %struct.Memory* @routine_jne_.L_487205(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4871fa, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4871fa, %struct.Memory** %MEMORY

  %loadBr_4871fa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4871fa = icmp eq i8 %loadBr_4871fa, 1
  br i1 %cmpBr_4871fa, label %block_.L_487205, label %block_487200

block_487200:
  ; Code: jmpq .L_48722d	 RIP: 487200	 Bytes: 5
  %loadMem_487200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487200 = call %struct.Memory* @routine_jmpq_.L_48722d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487200, i64 45, i64 5)
  store %struct.Memory* %call_487200, %struct.Memory** %MEMORY

  br label %block_.L_48722d

  ; Code: .L_487205:	 RIP: 487205	 Bytes: 0
block_.L_487205:

  ; Code: movq $0x582e3b, %rdi	 RIP: 487205	 Bytes: 10
  %loadMem_487205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487205 = call %struct.Memory* @routine_movq__0x582e3b___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487205)
  store %struct.Memory* %call_487205, %struct.Memory** %MEMORY

  ; Code: movl $0x1bb, %esi	 RIP: 48720f	 Bytes: 5
  %loadMem_48720f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48720f = call %struct.Memory* @routine_movl__0x1bb___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48720f)
  store %struct.Memory* %call_48720f, %struct.Memory** %MEMORY

  ; Code: movq $0x57a100, %rdx	 RIP: 487214	 Bytes: 10
  %loadMem_487214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487214 = call %struct.Memory* @routine_movq__0x57a100___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487214)
  store %struct.Memory* %call_487214, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 48721e	 Bytes: 5
  %loadMem_48721e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48721e = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48721e)
  store %struct.Memory* %call_48721e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 487223	 Bytes: 2
  %loadMem_487223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487223 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487223)
  store %struct.Memory* %call_487223, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 487225	 Bytes: 3
  %loadMem_487225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487225 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487225)
  store %struct.Memory* %call_487225, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 487228	 Bytes: 5
  %loadMem1_487228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487228 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487228, i64 -217496, i64 5, i64 5)
  store %struct.Memory* %call1_487228, %struct.Memory** %MEMORY

  %loadMem2_487228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487228 = load i64, i64* %3
  %call2_487228 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_487228, %struct.Memory* %loadMem2_487228)
  store %struct.Memory* %call2_487228, %struct.Memory** %MEMORY

  ; Code: .L_48722d:	 RIP: 48722d	 Bytes: 0
  br label %block_.L_48722d
block_.L_48722d:

  ; Code: movl $0x15, -0x4(%rbp)	 RIP: 48722d	 Bytes: 7
  %loadMem_48722d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48722d = call %struct.Memory* @routine_movl__0x15__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48722d)
  store %struct.Memory* %call_48722d, %struct.Memory** %MEMORY

  ; Code: .L_487234:	 RIP: 487234	 Bytes: 0
  br label %block_.L_487234
block_.L_487234:

  ; Code: cmpl $0x190, -0x4(%rbp)	 RIP: 487234	 Bytes: 7
  %loadMem_487234 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487234 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487234)
  store %struct.Memory* %call_487234, %struct.Memory** %MEMORY

  ; Code: jge .L_48737b	 RIP: 48723b	 Bytes: 6
  %loadMem_48723b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48723b = call %struct.Memory* @routine_jge_.L_48737b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48723b, i8* %BRANCH_TAKEN, i64 320, i64 6, i64 6)
  store %struct.Memory* %call_48723b, %struct.Memory** %MEMORY

  %loadBr_48723b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48723b = icmp eq i8 %loadBr_48723b, 1
  br i1 %cmpBr_48723b, label %block_.L_48737b, label %block_487241

block_487241:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 487241	 Bytes: 4
  %loadMem_487241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487241 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487241)
  store %struct.Memory* %call_487241, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 487245	 Bytes: 8
  %loadMem_487245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487245 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487245)
  store %struct.Memory* %call_487245, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %ecx	 RIP: 48724d	 Bytes: 3
  %loadMem_48724d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48724d = call %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48724d)
  store %struct.Memory* %call_48724d, %struct.Memory** %MEMORY

  ; Code: je .L_48726b	 RIP: 487250	 Bytes: 6
  %loadMem_487250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487250 = call %struct.Memory* @routine_je_.L_48726b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487250, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_487250, %struct.Memory** %MEMORY

  %loadBr_487250 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487250 = icmp eq i8 %loadBr_487250, 1
  br i1 %cmpBr_487250, label %block_.L_48726b, label %block_487256

block_487256:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 487256	 Bytes: 4
  %loadMem_487256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487256 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487256)
  store %struct.Memory* %call_487256, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 48725a	 Bytes: 8
  %loadMem_48725a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48725a = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48725a)
  store %struct.Memory* %call_48725a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %ecx	 RIP: 487262	 Bytes: 3
  %loadMem_487262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487262 = call %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487262)
  store %struct.Memory* %call_487262, %struct.Memory** %MEMORY

  ; Code: jne .L_48727f	 RIP: 487265	 Bytes: 6
  %loadMem_487265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487265 = call %struct.Memory* @routine_jne_.L_48727f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487265, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_487265, %struct.Memory** %MEMORY

  %loadBr_487265 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487265 = icmp eq i8 %loadBr_487265, 1
  br i1 %cmpBr_487265, label %block_.L_48727f, label %block_.L_48726b

  ; Code: .L_48726b:	 RIP: 48726b	 Bytes: 0
block_.L_48726b:

  ; Code: movl -0x4(%rbp), %edi	 RIP: 48726b	 Bytes: 3
  %loadMem_48726b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48726b = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48726b)
  store %struct.Memory* %call_48726b, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 48726e	 Bytes: 3
  %loadMem_48726e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48726e = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48726e)
  store %struct.Memory* %call_48726e, %struct.Memory** %MEMORY

  ; Code: callq .is_worm_origin	 RIP: 487271	 Bytes: 5
  %loadMem1_487271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487271 = call %struct.Memory* @routine_callq_.is_worm_origin(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487271, i64 3711, i64 5, i64 5)
  store %struct.Memory* %call1_487271, %struct.Memory** %MEMORY

  %loadMem2_487271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487271 = load i64, i64* %3
  %call2_487271 = call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* %0, i64  %loadPC_487271, %struct.Memory* %loadMem2_487271)
  store %struct.Memory* %call2_487271, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 487276	 Bytes: 3
  %loadMem_487276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487276 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487276)
  store %struct.Memory* %call_487276, %struct.Memory** %MEMORY

  ; Code: jne .L_487284	 RIP: 487279	 Bytes: 6
  %loadMem_487279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487279 = call %struct.Memory* @routine_jne_.L_487284(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487279, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_487279, %struct.Memory** %MEMORY

  %loadBr_487279 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487279 = icmp eq i8 %loadBr_487279, 1
  br i1 %cmpBr_487279, label %block_.L_487284, label %block_.L_48727f

  ; Code: .L_48727f:	 RIP: 48727f	 Bytes: 0
block_.L_48727f:

  ; Code: jmpq .L_48736d	 RIP: 48727f	 Bytes: 5
  %loadMem_48727f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48727f = call %struct.Memory* @routine_jmpq_.L_48736d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48727f, i64 238, i64 5)
  store %struct.Memory* %call_48727f, %struct.Memory** %MEMORY

  br label %block_.L_48736d

  ; Code: .L_487284:	 RIP: 487284	 Bytes: 0
block_.L_487284:

  ; Code: leaq -0x68c(%rbp), %rsi	 RIP: 487284	 Bytes: 7
  %loadMem_487284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487284 = call %struct.Memory* @routine_leaq_MINUS0x68c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487284)
  store %struct.Memory* %call_487284, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edi	 RIP: 48728b	 Bytes: 3
  %loadMem_48728b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48728b = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48728b)
  store %struct.Memory* %call_48728b, %struct.Memory** %MEMORY

  ; Code: callq .find_lunch	 RIP: 48728e	 Bytes: 5
  %loadMem1_48728e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48728e = call %struct.Memory* @routine_callq_.find_lunch(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48728e, i64 5618, i64 5, i64 5)
  store %struct.Memory* %call1_48728e, %struct.Memory** %MEMORY

  %loadMem2_48728e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48728e = load i64, i64* %3
  %call2_48728e = call %struct.Memory* @sub_488880.find_lunch(%struct.State* %0, i64  %loadPC_48728e, %struct.Memory* %loadMem2_48728e)
  store %struct.Memory* %call2_48728e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 487293	 Bytes: 3
  %loadMem_487293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487293 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487293)
  store %struct.Memory* %call_487293, %struct.Memory** %MEMORY

  ; Code: je .L_487346	 RIP: 487296	 Bytes: 6
  %loadMem_487296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487296 = call %struct.Memory* @routine_je_.L_487346(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487296, i8* %BRANCH_TAKEN, i64 176, i64 6, i64 6)
  store %struct.Memory* %call_487296, %struct.Memory** %MEMORY

  %loadBr_487296 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487296 = icmp eq i8 %loadBr_487296, 1
  br i1 %cmpBr_487296, label %block_.L_487346, label %block_48729c

block_48729c:
  ; Code: movq $0xb0eff0, %rax	 RIP: 48729c	 Bytes: 10
  %loadMem_48729c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48729c = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48729c)
  store %struct.Memory* %call_48729c, %struct.Memory** %MEMORY

  ; Code: movslq -0x68c(%rbp), %rcx	 RIP: 4872a6	 Bytes: 7
  %loadMem_4872a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4872a6 = call %struct.Memory* @routine_movslq_MINUS0x68c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4872a6)
  store %struct.Memory* %call_4872a6, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 4872ad	 Bytes: 7
  %loadMem_4872ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4872ad = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4872ad)
  store %struct.Memory* %call_4872ad, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4872b4	 Bytes: 3
  %loadMem_4872b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4872b4 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4872b4)
  store %struct.Memory* %call_4872b4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, 0x64(%rax)	 RIP: 4872b7	 Bytes: 4
  %loadMem_4872b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4872b7 = call %struct.Memory* @routine_cmpl__0x5__0x64__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4872b7)
  store %struct.Memory* %call_4872b7, %struct.Memory** %MEMORY

  ; Code: je .L_4872e6	 RIP: 4872bb	 Bytes: 6
  %loadMem_4872bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4872bb = call %struct.Memory* @routine_je_.L_4872e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4872bb, i8* %BRANCH_TAKEN, i64 43, i64 6, i64 6)
  store %struct.Memory* %call_4872bb, %struct.Memory** %MEMORY

  %loadBr_4872bb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4872bb = icmp eq i8 %loadBr_4872bb, 1
  br i1 %cmpBr_4872bb, label %block_.L_4872e6, label %block_4872c1

block_4872c1:
  ; Code: movq $0xb0eff0, %rax	 RIP: 4872c1	 Bytes: 10
  %loadMem_4872c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4872c1 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4872c1)
  store %struct.Memory* %call_4872c1, %struct.Memory** %MEMORY

  ; Code: movslq -0x68c(%rbp), %rcx	 RIP: 4872cb	 Bytes: 7
  %loadMem_4872cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4872cb = call %struct.Memory* @routine_movslq_MINUS0x68c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4872cb)
  store %struct.Memory* %call_4872cb, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 4872d2	 Bytes: 7
  %loadMem_4872d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4872d2 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4872d2)
  store %struct.Memory* %call_4872d2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4872d9	 Bytes: 3
  %loadMem_4872d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4872d9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4872d9)
  store %struct.Memory* %call_4872d9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, 0x64(%rax)	 RIP: 4872dc	 Bytes: 4
  %loadMem_4872dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4872dc = call %struct.Memory* @routine_cmpl__0x4__0x64__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4872dc)
  store %struct.Memory* %call_4872dc, %struct.Memory** %MEMORY

  ; Code: jne .L_487346	 RIP: 4872e0	 Bytes: 6
  %loadMem_4872e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4872e0 = call %struct.Memory* @routine_jne_.L_487346(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4872e0, i8* %BRANCH_TAKEN, i64 102, i64 6, i64 6)
  store %struct.Memory* %call_4872e0, %struct.Memory** %MEMORY

  %loadBr_4872e0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4872e0 = icmp eq i8 %loadBr_4872e0, 1
  br i1 %cmpBr_4872e0, label %block_.L_487346, label %block_.L_4872e6

  ; Code: .L_4872e6:	 RIP: 4872e6	 Bytes: 0
block_.L_4872e6:

  ; Code: movl 0xab0f24, %eax	 RIP: 4872e6	 Bytes: 7
  %loadMem_4872e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4872e6 = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4872e6)
  store %struct.Memory* %call_4872e6, %struct.Memory** %MEMORY

  ; Code: andl $0x400, %eax	 RIP: 4872ed	 Bytes: 5
  %loadMem_4872ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4872ed = call %struct.Memory* @routine_andl__0x400___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4872ed)
  store %struct.Memory* %call_4872ed, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4872f2	 Bytes: 3
  %loadMem_4872f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4872f2 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4872f2)
  store %struct.Memory* %call_4872f2, %struct.Memory** %MEMORY

  ; Code: jne .L_487300	 RIP: 4872f5	 Bytes: 6
  %loadMem_4872f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4872f5 = call %struct.Memory* @routine_jne_.L_487300(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4872f5, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4872f5, %struct.Memory** %MEMORY

  %loadBr_4872f5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4872f5 = icmp eq i8 %loadBr_4872f5, 1
  br i1 %cmpBr_4872f5, label %block_.L_487300, label %block_4872fb

block_4872fb:
  ; Code: jmpq .L_487320	 RIP: 4872fb	 Bytes: 5
  %loadMem_4872fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4872fb = call %struct.Memory* @routine_jmpq_.L_487320(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4872fb, i64 37, i64 5)
  store %struct.Memory* %call_4872fb, %struct.Memory** %MEMORY

  br label %block_.L_487320

  ; Code: .L_487300:	 RIP: 487300	 Bytes: 0
block_.L_487300:

  ; Code: movq $0x582fdd, %rdi	 RIP: 487300	 Bytes: 10
  %loadMem_487300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487300 = call %struct.Memory* @routine_movq__0x582fdd___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487300)
  store %struct.Memory* %call_487300, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 48730a	 Bytes: 3
  %loadMem_48730a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48730a = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48730a)
  store %struct.Memory* %call_48730a, %struct.Memory** %MEMORY

  ; Code: movl -0x68c(%rbp), %edx	 RIP: 48730d	 Bytes: 6
  %loadMem_48730d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48730d = call %struct.Memory* @routine_movl_MINUS0x68c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48730d)
  store %struct.Memory* %call_48730d, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 487313	 Bytes: 2
  %loadMem_487313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487313 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487313)
  store %struct.Memory* %call_487313, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 487315	 Bytes: 5
  %loadMem1_487315 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487315 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487315, i64 -218469, i64 5, i64 5)
  store %struct.Memory* %call1_487315, %struct.Memory** %MEMORY

  %loadMem2_487315 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487315 = load i64, i64* %3
  %call2_487315 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_487315, %struct.Memory* %loadMem2_487315)
  store %struct.Memory* %call2_487315, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6bc(%rbp)	 RIP: 48731a	 Bytes: 6
  %loadMem_48731a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48731a = call %struct.Memory* @routine_movl__eax__MINUS0x6bc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48731a)
  store %struct.Memory* %call_48731a, %struct.Memory** %MEMORY

  ; Code: .L_487320:	 RIP: 487320	 Bytes: 0
  br label %block_.L_487320
block_.L_487320:

  ; Code: movq $0xb0eff0, %rax	 RIP: 487320	 Bytes: 10
  %loadMem_487320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487320 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487320)
  store %struct.Memory* %call_487320, %struct.Memory** %MEMORY

  ; Code: movl -0x68c(%rbp), %ecx	 RIP: 48732a	 Bytes: 6
  %loadMem_48732a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48732a = call %struct.Memory* @routine_movl_MINUS0x68c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48732a)
  store %struct.Memory* %call_48732a, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 487330	 Bytes: 4
  %loadMem_487330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487330 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487330)
  store %struct.Memory* %call_487330, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rdx, %rdx	 RIP: 487334	 Bytes: 7
  %loadMem_487334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487334 = call %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487334)
  store %struct.Memory* %call_487334, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 48733b	 Bytes: 3
  %loadMem_48733b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48733b = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48733b)
  store %struct.Memory* %call_48733b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x20(%rax)	 RIP: 48733e	 Bytes: 3
  %loadMem_48733e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48733e = call %struct.Memory* @routine_movl__ecx__0x20__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48733e)
  store %struct.Memory* %call_48733e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_487365	 RIP: 487341	 Bytes: 5
  %loadMem_487341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487341 = call %struct.Memory* @routine_jmpq_.L_487365(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487341, i64 36, i64 5)
  store %struct.Memory* %call_487341, %struct.Memory** %MEMORY

  br label %block_.L_487365

  ; Code: .L_487346:	 RIP: 487346	 Bytes: 0
block_.L_487346:

  ; Code: movq $0xb0eff0, %rax	 RIP: 487346	 Bytes: 10
  %loadMem_487346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487346 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487346)
  store %struct.Memory* %call_487346, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 487350	 Bytes: 4
  %loadMem_487350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487350 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487350)
  store %struct.Memory* %call_487350, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 487354	 Bytes: 7
  %loadMem_487354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487354 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487354)
  store %struct.Memory* %call_487354, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48735b	 Bytes: 3
  %loadMem_48735b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48735b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48735b)
  store %struct.Memory* %call_48735b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x20(%rax)	 RIP: 48735e	 Bytes: 7
  %loadMem_48735e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48735e = call %struct.Memory* @routine_movl__0x0__0x20__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48735e)
  store %struct.Memory* %call_48735e, %struct.Memory** %MEMORY

  ; Code: .L_487365:	 RIP: 487365	 Bytes: 0
  br label %block_.L_487365
block_.L_487365:

  ; Code: movl -0x4(%rbp), %edi	 RIP: 487365	 Bytes: 3
  %loadMem_487365 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487365 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487365)
  store %struct.Memory* %call_487365, %struct.Memory** %MEMORY

  ; Code: callq .propagate_worm	 RIP: 487368	 Bytes: 5
  %loadMem1_487368 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487368 = call %struct.Memory* @routine_callq_.propagate_worm(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487368, i64 4376, i64 5, i64 5)
  store %struct.Memory* %call1_487368, %struct.Memory** %MEMORY

  %loadMem2_487368 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487368 = load i64, i64* %3
  %call2_487368 = call %struct.Memory* @sub_488480.propagate_worm(%struct.State* %0, i64  %loadPC_487368, %struct.Memory* %loadMem2_487368)
  store %struct.Memory* %call2_487368, %struct.Memory** %MEMORY

  ; Code: .L_48736d:	 RIP: 48736d	 Bytes: 0
  br label %block_.L_48736d
block_.L_48736d:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 48736d	 Bytes: 3
  %loadMem_48736d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48736d = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48736d)
  store %struct.Memory* %call_48736d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 487370	 Bytes: 3
  %loadMem_487370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487370 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487370)
  store %struct.Memory* %call_487370, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 487373	 Bytes: 3
  %loadMem_487373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487373 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487373)
  store %struct.Memory* %call_487373, %struct.Memory** %MEMORY

  ; Code: jmpq .L_487234	 RIP: 487376	 Bytes: 5
  %loadMem_487376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487376 = call %struct.Memory* @routine_jmpq_.L_487234(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487376, i64 -322, i64 5)
  store %struct.Memory* %call_487376, %struct.Memory** %MEMORY

  br label %block_.L_487234

  ; Code: .L_48737b:	 RIP: 48737b	 Bytes: 0
block_.L_48737b:

  ; Code: cmpl $0x0, 0xab0fb4	 RIP: 48737b	 Bytes: 8
  %loadMem_48737b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48737b = call %struct.Memory* @routine_cmpl__0x0__0xab0fb4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48737b)
  store %struct.Memory* %call_48737b, %struct.Memory** %MEMORY

  ; Code: jne .L_48738e	 RIP: 487383	 Bytes: 6
  %loadMem_487383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487383 = call %struct.Memory* @routine_jne_.L_48738e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487383, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_487383, %struct.Memory** %MEMORY

  %loadBr_487383 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487383 = icmp eq i8 %loadBr_487383, 1
  br i1 %cmpBr_487383, label %block_.L_48738e, label %block_487389

block_487389:
  ; Code: callq .find_worm_threats	 RIP: 487389	 Bytes: 5
  %loadMem1_487389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487389 = call %struct.Memory* @routine_callq_.find_worm_threats(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487389, i64 6135, i64 5, i64 5)
  store %struct.Memory* %call1_487389, %struct.Memory** %MEMORY

  %loadMem2_487389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487389 = load i64, i64* %3
  %call2_487389 = call %struct.Memory* @sub_488b80.find_worm_threats(%struct.State* %0, i64  %loadPC_487389, %struct.Memory* %loadMem2_487389)
  store %struct.Memory* %call2_487389, %struct.Memory** %MEMORY

  ; Code: .L_48738e:	 RIP: 48738e	 Bytes: 0
  br label %block_.L_48738e
block_.L_48738e:

  ; Code: movl $0x15, -0x4(%rbp)	 RIP: 48738e	 Bytes: 7
  %loadMem_48738e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48738e = call %struct.Memory* @routine_movl__0x15__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48738e)
  store %struct.Memory* %call_48738e, %struct.Memory** %MEMORY

  ; Code: .L_487395:	 RIP: 487395	 Bytes: 0
  br label %block_.L_487395
block_.L_487395:

  ; Code: cmpl $0x190, -0x4(%rbp)	 RIP: 487395	 Bytes: 7
  %loadMem_487395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487395 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487395)
  store %struct.Memory* %call_487395, %struct.Memory** %MEMORY

  ; Code: jge .L_48751a	 RIP: 48739c	 Bytes: 6
  %loadMem_48739c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48739c = call %struct.Memory* @routine_jge_.L_48751a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48739c, i8* %BRANCH_TAKEN, i64 382, i64 6, i64 6)
  store %struct.Memory* %call_48739c, %struct.Memory** %MEMORY

  %loadBr_48739c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48739c = icmp eq i8 %loadBr_48739c, 1
  br i1 %cmpBr_48739c, label %block_.L_48751a, label %block_4873a2

block_4873a2:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 4873a2	 Bytes: 4
  %loadMem_4873a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4873a2 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4873a2)
  store %struct.Memory* %call_4873a2, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 4873a6	 Bytes: 8
  %loadMem_4873a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4873a6 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4873a6)
  store %struct.Memory* %call_4873a6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %ecx	 RIP: 4873ae	 Bytes: 3
  %loadMem_4873ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4873ae = call %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4873ae)
  store %struct.Memory* %call_4873ae, %struct.Memory** %MEMORY

  ; Code: je .L_4873cc	 RIP: 4873b1	 Bytes: 6
  %loadMem_4873b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4873b1 = call %struct.Memory* @routine_je_.L_4873cc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4873b1, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_4873b1, %struct.Memory** %MEMORY

  %loadBr_4873b1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4873b1 = icmp eq i8 %loadBr_4873b1, 1
  br i1 %cmpBr_4873b1, label %block_.L_4873cc, label %block_4873b7

block_4873b7:
  ; Code: movslq -0x4(%rbp), %rax	 RIP: 4873b7	 Bytes: 4
  %loadMem_4873b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4873b7 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4873b7)
  store %struct.Memory* %call_4873b7, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 4873bb	 Bytes: 8
  %loadMem_4873bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4873bb = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4873bb)
  store %struct.Memory* %call_4873bb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %ecx	 RIP: 4873c3	 Bytes: 3
  %loadMem_4873c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4873c3 = call %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4873c3)
  store %struct.Memory* %call_4873c3, %struct.Memory** %MEMORY

  ; Code: jne .L_487507	 RIP: 4873c6	 Bytes: 6
  %loadMem_4873c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4873c6 = call %struct.Memory* @routine_jne_.L_487507(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4873c6, i8* %BRANCH_TAKEN, i64 321, i64 6, i64 6)
  store %struct.Memory* %call_4873c6, %struct.Memory** %MEMORY

  %loadBr_4873c6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4873c6 = icmp eq i8 %loadBr_4873c6, 1
  br i1 %cmpBr_4873c6, label %block_.L_487507, label %block_.L_4873cc

  ; Code: .L_4873cc:	 RIP: 4873cc	 Bytes: 0
block_.L_4873cc:

  ; Code: movq $0xb0eff0, %rax	 RIP: 4873cc	 Bytes: 10
  %loadMem_4873cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4873cc = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4873cc)
  store %struct.Memory* %call_4873cc, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4873d6	 Bytes: 4
  %loadMem_4873d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4873d6 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4873d6)
  store %struct.Memory* %call_4873d6, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 4873da	 Bytes: 7
  %loadMem_4873da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4873da = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4873da)
  store %struct.Memory* %call_4873da, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4873e1	 Bytes: 3
  %loadMem_4873e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4873e1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4873e1)
  store %struct.Memory* %call_4873e1, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 4873e4	 Bytes: 3
  %loadMem_4873e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4873e4 = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4873e4)
  store %struct.Memory* %call_4873e4, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %edx	 RIP: 4873e7	 Bytes: 3
  %loadMem_4873e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4873e7 = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4873e7)
  store %struct.Memory* %call_4873e7, %struct.Memory** %MEMORY

  ; Code: jne .L_487507	 RIP: 4873ea	 Bytes: 6
  %loadMem_4873ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4873ea = call %struct.Memory* @routine_jne_.L_487507(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4873ea, i8* %BRANCH_TAKEN, i64 285, i64 6, i64 6)
  store %struct.Memory* %call_4873ea, %struct.Memory** %MEMORY

  %loadBr_4873ea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4873ea = icmp eq i8 %loadBr_4873ea, 1
  br i1 %cmpBr_4873ea, label %block_.L_487507, label %block_4873f0

block_4873f0:
  ; Code: movq $0xb0eff0, %rax	 RIP: 4873f0	 Bytes: 10
  %loadMem_4873f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4873f0 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4873f0)
  store %struct.Memory* %call_4873f0, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4873fa	 Bytes: 4
  %loadMem_4873fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4873fa = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4873fa)
  store %struct.Memory* %call_4873fa, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 4873fe	 Bytes: 7
  %loadMem_4873fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4873fe = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4873fe)
  store %struct.Memory* %call_4873fe, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 487405	 Bytes: 3
  %loadMem_487405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487405 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487405)
  store %struct.Memory* %call_487405, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x2c(%rax)	 RIP: 487408	 Bytes: 4
  %loadMem_487408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487408 = call %struct.Memory* @routine_cmpl__0x0__0x2c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487408)
  store %struct.Memory* %call_487408, %struct.Memory** %MEMORY

  ; Code: jne .L_487507	 RIP: 48740c	 Bytes: 6
  %loadMem_48740c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48740c = call %struct.Memory* @routine_jne_.L_487507(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48740c, i8* %BRANCH_TAKEN, i64 251, i64 6, i64 6)
  store %struct.Memory* %call_48740c, %struct.Memory** %MEMORY

  %loadBr_48740c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48740c = icmp eq i8 %loadBr_48740c, 1
  br i1 %cmpBr_48740c, label %block_.L_487507, label %block_487412

block_487412:
  ; Code: movq $0xb0eff0, %rax	 RIP: 487412	 Bytes: 10
  %loadMem_487412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487412 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487412)
  store %struct.Memory* %call_487412, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 48741c	 Bytes: 4
  %loadMem_48741c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48741c = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48741c)
  store %struct.Memory* %call_48741c, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 487420	 Bytes: 7
  %loadMem_487420 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487420 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487420)
  store %struct.Memory* %call_487420, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 487427	 Bytes: 3
  %loadMem_487427 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487427 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487427)
  store %struct.Memory* %call_487427, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x14(%rax)	 RIP: 48742a	 Bytes: 4
  %loadMem_48742a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48742a = call %struct.Memory* @routine_cmpl__0x0__0x14__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48742a)
  store %struct.Memory* %call_48742a, %struct.Memory** %MEMORY

  ; Code: jne .L_487507	 RIP: 48742e	 Bytes: 6
  %loadMem_48742e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48742e = call %struct.Memory* @routine_jne_.L_487507(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48742e, i8* %BRANCH_TAKEN, i64 217, i64 6, i64 6)
  store %struct.Memory* %call_48742e, %struct.Memory** %MEMORY

  %loadBr_48742e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48742e = icmp eq i8 %loadBr_48742e, 1
  br i1 %cmpBr_48742e, label %block_.L_487507, label %block_487434

block_487434:
  ; Code: movq $0xb0eff0, %rax	 RIP: 487434	 Bytes: 10
  %loadMem_487434 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487434 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487434)
  store %struct.Memory* %call_487434, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 48743e	 Bytes: 4
  %loadMem_48743e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48743e = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48743e)
  store %struct.Memory* %call_48743e, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 487442	 Bytes: 7
  %loadMem_487442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487442 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487442)
  store %struct.Memory* %call_487442, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 487449	 Bytes: 3
  %loadMem_487449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487449 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487449)
  store %struct.Memory* %call_487449, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x24(%rax)	 RIP: 48744c	 Bytes: 4
  %loadMem_48744c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48744c = call %struct.Memory* @routine_cmpl__0x0__0x24__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48744c)
  store %struct.Memory* %call_48744c, %struct.Memory** %MEMORY

  ; Code: jne .L_487507	 RIP: 487450	 Bytes: 6
  %loadMem_487450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487450 = call %struct.Memory* @routine_jne_.L_487507(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487450, i8* %BRANCH_TAKEN, i64 183, i64 6, i64 6)
  store %struct.Memory* %call_487450, %struct.Memory** %MEMORY

  %loadBr_487450 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487450 = icmp eq i8 %loadBr_487450, 1
  br i1 %cmpBr_487450, label %block_.L_487507, label %block_487456

block_487456:
  ; Code: movq $0xb0eff0, %rax	 RIP: 487456	 Bytes: 10
  %loadMem_487456 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487456 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487456)
  store %struct.Memory* %call_487456, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 487460	 Bytes: 4
  %loadMem_487460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487460 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487460)
  store %struct.Memory* %call_487460, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 487464	 Bytes: 7
  %loadMem_487464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487464 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487464)
  store %struct.Memory* %call_487464, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48746b	 Bytes: 3
  %loadMem_48746b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48746b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48746b)
  store %struct.Memory* %call_48746b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x20(%rax)	 RIP: 48746e	 Bytes: 4
  %loadMem_48746e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48746e = call %struct.Memory* @routine_cmpl__0x0__0x20__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48746e)
  store %struct.Memory* %call_48746e, %struct.Memory** %MEMORY

  ; Code: jne .L_487507	 RIP: 487472	 Bytes: 6
  %loadMem_487472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487472 = call %struct.Memory* @routine_jne_.L_487507(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487472, i8* %BRANCH_TAKEN, i64 149, i64 6, i64 6)
  store %struct.Memory* %call_487472, %struct.Memory** %MEMORY

  %loadBr_487472 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487472 = icmp eq i8 %loadBr_487472, 1
  br i1 %cmpBr_487472, label %block_.L_487507, label %block_487478

block_487478:
  ; Code: leaq -0x690(%rbp), %rsi	 RIP: 487478	 Bytes: 7
  %loadMem_487478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487478 = call %struct.Memory* @routine_leaq_MINUS0x690__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487478)
  store %struct.Memory* %call_487478, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edi	 RIP: 48747f	 Bytes: 3
  %loadMem_48747f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48747f = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48747f)
  store %struct.Memory* %call_48747f, %struct.Memory** %MEMORY

  ; Code: callq .examine_cavity	 RIP: 487482	 Bytes: 5
  %loadMem1_487482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_487482 = call %struct.Memory* @routine_callq_.examine_cavity(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_487482, i64 6654, i64 5, i64 5)
  store %struct.Memory* %call1_487482, %struct.Memory** %MEMORY

  %loadMem2_487482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_487482 = load i64, i64* %3
  %call2_487482 = call %struct.Memory* @sub_488e80.examine_cavity(%struct.State* %0, i64  %loadPC_487482, %struct.Memory* %loadMem2_487482)
  store %struct.Memory* %call2_487482, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x694(%rbp)	 RIP: 487487	 Bytes: 6
  %loadMem_487487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487487 = call %struct.Memory* @routine_movl__eax__MINUS0x694__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487487)
  store %struct.Memory* %call_487487, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, -0x694(%rbp)	 RIP: 48748d	 Bytes: 7
  %loadMem_48748d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48748d = call %struct.Memory* @routine_cmpl__0x3__MINUS0x694__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48748d)
  store %struct.Memory* %call_48748d, %struct.Memory** %MEMORY

  ; Code: je .L_487502	 RIP: 487494	 Bytes: 6
  %loadMem_487494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487494 = call %struct.Memory* @routine_je_.L_487502(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487494, i8* %BRANCH_TAKEN, i64 110, i64 6, i64 6)
  store %struct.Memory* %call_487494, %struct.Memory** %MEMORY

  %loadBr_487494 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_487494 = icmp eq i8 %loadBr_487494, 1
  br i1 %cmpBr_487494, label %block_.L_487502, label %block_48749a

block_48749a:
  ; Code: cmpl $0x3, -0x690(%rbp)	 RIP: 48749a	 Bytes: 7
  %loadMem_48749a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48749a = call %struct.Memory* @routine_cmpl__0x3__MINUS0x690__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48749a)
  store %struct.Memory* %call_48749a, %struct.Memory** %MEMORY

  ; Code: jge .L_487502	 RIP: 4874a1	 Bytes: 6
  %loadMem_4874a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4874a1 = call %struct.Memory* @routine_jge_.L_487502(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4874a1, i8* %BRANCH_TAKEN, i64 97, i64 6, i64 6)
  store %struct.Memory* %call_4874a1, %struct.Memory** %MEMORY

  %loadBr_4874a1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4874a1 = icmp eq i8 %loadBr_4874a1, 1
  br i1 %cmpBr_4874a1, label %block_.L_487502, label %block_4874a7

block_4874a7:
  ; Code: movl 0xab0f24, %eax	 RIP: 4874a7	 Bytes: 7
  %loadMem_4874a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4874a7 = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4874a7)
  store %struct.Memory* %call_4874a7, %struct.Memory** %MEMORY

  ; Code: andl $0x400, %eax	 RIP: 4874ae	 Bytes: 5
  %loadMem_4874ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4874ae = call %struct.Memory* @routine_andl__0x400___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4874ae)
  store %struct.Memory* %call_4874ae, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4874b3	 Bytes: 3
  %loadMem_4874b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4874b3 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4874b3)
  store %struct.Memory* %call_4874b3, %struct.Memory** %MEMORY

  ; Code: jne .L_4874c1	 RIP: 4874b6	 Bytes: 6
  %loadMem_4874b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4874b6 = call %struct.Memory* @routine_jne_.L_4874c1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4874b6, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4874b6, %struct.Memory** %MEMORY

  %loadBr_4874b6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4874b6 = icmp eq i8 %loadBr_4874b6, 1
  br i1 %cmpBr_4874b6, label %block_.L_4874c1, label %block_4874bc

block_4874bc:
  ; Code: jmpq .L_4874db	 RIP: 4874bc	 Bytes: 5
  %loadMem_4874bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4874bc = call %struct.Memory* @routine_jmpq_.L_4874db(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4874bc, i64 31, i64 5)
  store %struct.Memory* %call_4874bc, %struct.Memory** %MEMORY

  br label %block_.L_4874db

  ; Code: .L_4874c1:	 RIP: 4874c1	 Bytes: 0
block_.L_4874c1:

  ; Code: movq $0x582ff9, %rdi	 RIP: 4874c1	 Bytes: 10
  %loadMem_4874c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4874c1 = call %struct.Memory* @routine_movq__0x582ff9___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4874c1)
  store %struct.Memory* %call_4874c1, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 4874cb	 Bytes: 3
  %loadMem_4874cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4874cb = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4874cb)
  store %struct.Memory* %call_4874cb, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4874ce	 Bytes: 2
  %loadMem_4874ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4874ce = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4874ce)
  store %struct.Memory* %call_4874ce, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 4874d0	 Bytes: 5
  %loadMem1_4874d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4874d0 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4874d0, i64 -218912, i64 5, i64 5)
  store %struct.Memory* %call1_4874d0, %struct.Memory** %MEMORY

  %loadMem2_4874d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4874d0 = load i64, i64* %3
  %call2_4874d0 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_4874d0, %struct.Memory* %loadMem2_4874d0)
  store %struct.Memory* %call2_4874d0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6c0(%rbp)	 RIP: 4874d5	 Bytes: 6
  %loadMem_4874d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4874d5 = call %struct.Memory* @routine_movl__eax__MINUS0x6c0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4874d5)
  store %struct.Memory* %call_4874d5, %struct.Memory** %MEMORY

  ; Code: .L_4874db:	 RIP: 4874db	 Bytes: 0
  br label %block_.L_4874db
block_.L_4874db:

  ; Code: movq $0xb0eff0, %rax	 RIP: 4874db	 Bytes: 10
  %loadMem_4874db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4874db = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4874db)
  store %struct.Memory* %call_4874db, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4874e5	 Bytes: 4
  %loadMem_4874e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4874e5 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4874e5)
  store %struct.Memory* %call_4874e5, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 4874e9	 Bytes: 7
  %loadMem_4874e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4874e9 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4874e9)
  store %struct.Memory* %call_4874e9, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4874f0	 Bytes: 3
  %loadMem_4874f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4874f0 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4874f0)
  store %struct.Memory* %call_4874f0, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x30(%rax)	 RIP: 4874f3	 Bytes: 7
  %loadMem_4874f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4874f3 = call %struct.Memory* @routine_movl__0x1__0x30__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4874f3)
  store %struct.Memory* %call_4874f3, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edi	 RIP: 4874fa	 Bytes: 3
  %loadMem_4874fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4874fa = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4874fa)
  store %struct.Memory* %call_4874fa, %struct.Memory** %MEMORY

  ; Code: callq .propagate_worm	 RIP: 4874fd	 Bytes: 5
  %loadMem1_4874fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4874fd = call %struct.Memory* @routine_callq_.propagate_worm(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4874fd, i64 3971, i64 5, i64 5)
  store %struct.Memory* %call1_4874fd, %struct.Memory** %MEMORY

  %loadMem2_4874fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4874fd = load i64, i64* %3
  %call2_4874fd = call %struct.Memory* @sub_488480.propagate_worm(%struct.State* %0, i64  %loadPC_4874fd, %struct.Memory* %loadMem2_4874fd)
  store %struct.Memory* %call2_4874fd, %struct.Memory** %MEMORY

  ; Code: .L_487502:	 RIP: 487502	 Bytes: 0
  br label %block_.L_487502
block_.L_487502:

  ; Code: jmpq .L_487507	 RIP: 487502	 Bytes: 5
  %loadMem_487502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487502 = call %struct.Memory* @routine_jmpq_.L_487507(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487502, i64 5, i64 5)
  store %struct.Memory* %call_487502, %struct.Memory** %MEMORY

  br label %block_.L_487507

  ; Code: .L_487507:	 RIP: 487507	 Bytes: 0
block_.L_487507:

  ; Code: jmpq .L_48750c	 RIP: 487507	 Bytes: 5
  %loadMem_487507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487507 = call %struct.Memory* @routine_jmpq_.L_48750c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487507, i64 5, i64 5)
  store %struct.Memory* %call_487507, %struct.Memory** %MEMORY

  br label %block_.L_48750c

  ; Code: .L_48750c:	 RIP: 48750c	 Bytes: 0
block_.L_48750c:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 48750c	 Bytes: 3
  %loadMem_48750c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48750c = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48750c)
  store %struct.Memory* %call_48750c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48750f	 Bytes: 3
  %loadMem_48750f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48750f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48750f)
  store %struct.Memory* %call_48750f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 487512	 Bytes: 3
  %loadMem_487512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487512 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487512)
  store %struct.Memory* %call_487512, %struct.Memory** %MEMORY

  ; Code: jmpq .L_487395	 RIP: 487515	 Bytes: 5
  %loadMem_487515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487515 = call %struct.Memory* @routine_jmpq_.L_487395(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487515, i64 -384, i64 5)
  store %struct.Memory* %call_487515, %struct.Memory** %MEMORY

  br label %block_.L_487395

  ; Code: .L_48751a:	 RIP: 48751a	 Bytes: 0
block_.L_48751a:

  ; Code: addq $0x6c0, %rsp	 RIP: 48751a	 Bytes: 7
  %loadMem_48751a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48751a = call %struct.Memory* @routine_addq__0x6c0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48751a)
  store %struct.Memory* %call_48751a, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 487521	 Bytes: 1
  %loadMem_487521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487521 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487521)
  store %struct.Memory* %call_487521, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 487522	 Bytes: 1
  %loadMem_487522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_487522 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_487522)
  store %struct.Memory* %call_487522, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_487522
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

define %struct.Memory* @routine_callq_.build_worms(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_jne_.L_486158(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
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

define %struct.Memory* @routine_jmpq_.L_48751a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_callq_.compute_effective_worm_sizes(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.compute_unconditional_status(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.find_worm_attacks_and_defenses(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_48617a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_4861a2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_movl__0x6c___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 108)
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

define %struct.Memory* @routine_jge_.L_4862f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_4861e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_4862e1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
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




define %struct.Memory* @routine_je_.L_4862e1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x8__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0xc__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x10__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x14__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_callq_.ping_cave(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x10__rcx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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

define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 8
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_486235(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_48625d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__0x74___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 116)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x582eee___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x582eee_type* @G__0x582eee to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_addq__rdx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__ecx__0x14__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 20
  %14 = load i32, i32* %ECX
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










define %struct.Memory* @routine_movl__ecx__0x18__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 24
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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










define %struct.Memory* @routine_movl__ecx__0x1c__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 28
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_movl__0x0__0x24__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 36
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movl__0x0__0x28__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_jmpq_.L_4862e6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jmpq_.L_4861a9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jne_.L_486307(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_48632f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__0x7e___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 126)
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_jge_.L_486634(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_48637b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_48638f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_jne_.L_486394(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_486626(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x15__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 21)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x190__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 400)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_48656a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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

define %struct.Memory* @routine_subl__esi___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
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


define %struct.Memory* @routine_je_.L_4863d4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_48655c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jge_.L_486557(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_486438(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_addl_0x7ae1b0___rdx_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, 8053168
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %15)
  ret %struct.Memory* %18
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






define %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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


define %struct.Memory* @routine_je_.L_48643d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_486549(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}
















define %struct.Memory* @routine_cmpl__edx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_48646f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_4864e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__0xca___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 202)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x582f0a___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x582f0a_type* @G__0x582f0a to i64))
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

define %struct.Memory* @routine_movq__rdx__MINUS0x6a0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1696
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
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


define %struct.Memory* @routine_movl_MINUS0x4__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_movq_MINUS0x6a0__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1696
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0x6a8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1704
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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


define %struct.Memory* @routine_movl_MINUS0x6a4__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1700
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x6a8__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1704
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_jne_.L_48650d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_jmpq_.L_486544(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_MINUS0x24__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_jne_.L_48653f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_jmpq_.L_4863db(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jmpq_.L_48639b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_je_.L_486621(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movl__0x2__0x24__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 36
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_jle_.L_4865c6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movl__0x1__0x24__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 36
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
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




define %struct.Memory* @routine_jne_.L_4865e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_48661c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x582f2f___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x582f2f_type* @G__0x582f2f to i64))
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


define %struct.Memory* @routine_movslq_MINUS0x4__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0x17c___r8___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R8
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %9, i64 380)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__r8___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x24__rax____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 36
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


define %struct.Memory* @routine_jmpq_.L_486621(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_jmpq_.L_486336(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jne_.L_486647(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_48666f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__0xe8___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 232)
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_jge_.L_4866ff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_4866ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_4866ec(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_je_.L_4866ec(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.genus(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movl__eax__0x2c__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 44
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_jmpq_.L_4866f1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_486676(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jne_.L_486712(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_48673a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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














define %struct.Memory* @routine_jne_.L_48674d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_486775(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__0xf4___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 244)
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


define %struct.Memory* @routine_movl__0x640___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 1600)
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_leaq_MINUS0x670__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1648
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__0x15__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 21)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x190__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 400)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_48685c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_je_.L_4867cb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_486849(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
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






define %struct.Memory* @routine_je_.L_486849(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movzbl_0xb89e60___rdx_1____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__esi__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_addq__rdx___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RDX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_0x8c__rdi____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_orl_MINUS0x670__rbp__rdx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -1648
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %15, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movl__esi__MINUS0x670__rbp__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1648
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ESI
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
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

define %struct.Memory* @routine_subl_MINUS0x28__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movslq_0x3c__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 60
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_jmpq_.L_48684e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jmpq_.L_486794(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_486dbf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_48688a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_486db1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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

define %struct.Memory* @routine_jg_.L_486dac(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x670__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, -1648
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %3 to i32
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7
  %9 = and i32 %8, %6
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

define %struct.Memory* @routine_andl_MINUS0x28__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_jne_.L_4868b7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_486d9e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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




define %struct.Memory* @routine_jne_.L_4868e4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_jne_.L_4868fe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_486918(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x582f6a___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x582f6a_type* @G__0x582f6a to i64))
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


define %struct.Memory* @routine_callq_.increase_depth_values(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_486d94(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_48695b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_48696f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_jne_.L_486974(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_486d86(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_cmpl__eax___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %ESI = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_486b82(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
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


define %struct.Memory* @routine_je_.L_486b82(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0xb0eff0___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0xb0eff0_type* @G__0xb0eff0 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl_MINUS0x674__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1652
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_cmpl_0xb4__rsi____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RSI
  %15 = add i64 %14, 180
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_486b7d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0x1__MINUS0x678__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_je_.L_486b0f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0x17c___rdi___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 380)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__rdi___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RDI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x8c__rsi____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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


define %struct.Memory* @routine_subl__eax___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edi__MINUS0x67c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1660
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_cmpl_MINUS0x674__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 1652
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jle_.L_486b0a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__ecx__MINUS0x674__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1652
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x674__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_cmpl_0xb4__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 180
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_jl_.L_486b05(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x678__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_486b0a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_je_.L_486b78(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_486b36(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_486b60(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x582f76___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x582f76_type* @G__0x582f76 to i64))
  ret %struct.Memory* %11
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




define %struct.Memory* @routine_movl_MINUS0x4__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subl_MINUS0x674__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1652
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_jmpq_.L_486b7d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_486d81(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_movl___rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_cmpl_MINUS0x28__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 40
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_486d7c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_je_.L_486d7c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_cmpl_0x64__rsi____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RSI
  %15 = add i64 %14, 100
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_486d77(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0x1__MINUS0x684__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_je_.L_486d09(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_movl_0x3c__rsi____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}
























define %struct.Memory* @routine_jne_.L_486c97(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__0x5__MINUS0x688__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_486cb0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}














define %struct.Memory* @routine_movl__edi__MINUS0x688__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1672
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_cmpl_MINUS0x680__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 1664
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jle_.L_486d04(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__ecx__MINUS0x680__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1664
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x680__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1664
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_cmpl_0x64__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 100
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jl_.L_486cff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_486d04(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_cmpl__0x0__MINUS0x684__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_486d72(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_486d30(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_486d5a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x582fa9___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x582fa9_type* @G__0x582fa9 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_subl_MINUS0x680__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1664
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_jmpq_.L_486d77(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_486d7c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jmpq_.L_486924(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_callq_.decrease_depth_values(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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


define %struct.Memory* @routine_jmpq_.L_486891(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_jmpq_.L_486863(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jne_.L_486dd2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_486dfa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__0x17e___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 382)
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_jge_.L_486ff6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_486e38(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_486fe3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_je_.L_486e6c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_je_.L_486fde(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_jne_.L_486f51(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
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




define %struct.Memory* @routine_callq_.does_defend(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_486f51(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x5___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 5)
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movslq__ecx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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


define %struct.Memory* @routine_movl_0x3c__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


















define %struct.Memory* @routine_jne_.L_486fd9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movl__edx___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_je_.L_486fd9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl__ecx___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jmpq_.L_486fde(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_486fe3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_486fe8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_486e01(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_4871f2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_487034(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_4871df(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_je_.L_487068(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






































define %struct.Memory* @routine_je_.L_4871da(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_jne_.L_48714d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}






















define %struct.Memory* @routine_je_.L_48714d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




































define %struct.Memory* @routine_jne_.L_4871d5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
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








define %struct.Memory* @routine_je_.L_4871d5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_jmpq_.L_4871da(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4871df(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4871e4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_486ffd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jne_.L_487205(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_48722d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__0x1bb___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 443)
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_jge_.L_48737b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_48726b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_48727f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_jne_.L_487284(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_48736d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_leaq_MINUS0x68c__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1676
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_callq_.find_lunch(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_487346(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movslq_MINUS0x68c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_je_.L_4872e6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_cmpl__0x4__0x64__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_487346(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_jne_.L_487300(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_487320(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x582fdd___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x582fdd_type* @G__0x582fdd to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl_MINUS0x68c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1676
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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








define %struct.Memory* @routine_movl__ecx__0x20__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 32
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_487365(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_movl__0x0__0x20__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}












define %struct.Memory* @routine_jmpq_.L_487234(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpl__0x0__0xab0fb4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0fb4_type* @G_0xab0fb4 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_48738e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_callq_.find_worm_threats(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_48751a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_4873cc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_487507(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
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












define %struct.Memory* @routine_cmpl__0x0__0x2c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 44
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}












define %struct.Memory* @routine_cmpl__0x0__0x14__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 20
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}












define %struct.Memory* @routine_cmpl__0x0__0x24__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 36
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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




define %struct.Memory* @routine_leaq_MINUS0x690__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1680
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_callq_.examine_cavity(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x3__MINUS0x694__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_487502(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x3__MINUS0x690__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_487502(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_4874c1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_4874db(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x582ff9___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x582ff9_type* @G__0x582ff9 to i64))
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










define %struct.Memory* @routine_movl__0x1__0x30__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_jmpq_.L_487507(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48750c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_487395(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

