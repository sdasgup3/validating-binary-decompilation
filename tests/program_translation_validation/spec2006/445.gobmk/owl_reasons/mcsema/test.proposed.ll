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

declare %struct.Memory* @sub_4341e0.add_loss_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4347a0.add_owl_defense_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_44c3c0.owl_does_defend(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_433fe0.add_gain_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_434680.add_owl_attack_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_434b60.add_owl_defense_threat_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40ead0.is_legal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_434ca0.add_owl_prevent_threat_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4348c0.add_owl_attack_threat_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4349a0.add_owl_uncertain_defense_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x97a7e__rip__type = type <{ [4 x i8] }>
@G_0x97a7e__rip_= global %G_0x97a7e__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xab0f24_type = type <{ [4 x i8] }>
@G_0xab0f24= global %G_0xab0f24_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xab0fe0_type = type <{ [8 x i8] }>
@G_0xab0fe0= global %G_0xab0fe0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0xafdfb0_type = type <{ [4 x i8] }>
@G_0xafdfb0= global %G_0xafdfb0_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x57ea8e_type = type <{ [8 x i8] }>
@G__0x57ea8e= global %G__0x57ea8e_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57eab9_type = type <{ [8 x i8] }>
@G__0x57eab9= global %G__0x57eab9_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57eada_type = type <{ [8 x i8] }>
@G__0x57eada= global %G__0x57eada_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57eb13_type = type <{ [8 x i8] }>
@G__0x57eb13= global %G__0x57eb13_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57eb3e_type = type <{ [8 x i8] }>
@G__0x57eb3e= global %G__0x57eb3e_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57eb5f_type = type <{ [8 x i8] }>
@G__0x57eb5f= global %G__0x57eb5f_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57eb8c_type = type <{ [8 x i8] }>
@G__0x57eb8c= global %G__0x57eb8c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57ebbf_type = type <{ [8 x i8] }>
@G__0x57ebbf= global %G__0x57ebbf_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57ebe2_type = type <{ [8 x i8] }>
@G__0x57ebe2= global %G__0x57ebe2_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57ec19_type = type <{ [8 x i8] }>
@G__0x57ec19= global %G__0x57ec19_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57ec52_type = type <{ [8 x i8] }>
@G__0x57ec52= global %G__0x57ec52_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xb4bd20_type = type <{ [8 x i8] }>
@G__0xb4bd20= global %G__0xb4bd20_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @owl_reasons(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .owl_reasons:	 RIP: 44b4b0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 44b4b0	 Bytes: 1
  %loadMem_44b4b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b4b0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b4b0)
  store %struct.Memory* %call_44b4b0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 44b4b1	 Bytes: 3
  %loadMem_44b4b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b4b1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b4b1)
  store %struct.Memory* %call_44b4b1, %struct.Memory** %MEMORY

  ; Code: subq $0x60, %rsp	 RIP: 44b4b4	 Bytes: 4
  %loadMem_44b4b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b4b4 = call %struct.Memory* @routine_subq__0x60___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b4b4)
  store %struct.Memory* %call_44b4b4, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 44b4b8	 Bytes: 3
  %loadMem_44b4b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b4b8 = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b4b8)
  store %struct.Memory* %call_44b4b8, %struct.Memory** %MEMORY

  ; Code: movl $0x15, -0x8(%rbp)	 RIP: 44b4bb	 Bytes: 7
  %loadMem_44b4bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b4bb = call %struct.Memory* @routine_movl__0x15__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b4bb)
  store %struct.Memory* %call_44b4bb, %struct.Memory** %MEMORY

  ; Code: .L_44b4c2:	 RIP: 44b4c2	 Bytes: 0
  br label %block_.L_44b4c2
block_.L_44b4c2:

  ; Code: cmpl $0x190, -0x8(%rbp)	 RIP: 44b4c2	 Bytes: 7
  %loadMem_44b4c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b4c2 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b4c2)
  store %struct.Memory* %call_44b4c2, %struct.Memory** %MEMORY

  ; Code: jge .L_44c3b1	 RIP: 44b4c9	 Bytes: 6
  %loadMem_44b4c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b4c9 = call %struct.Memory* @routine_jge_.L_44c3b1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b4c9, i8* %BRANCH_TAKEN, i64 3816, i64 6, i64 6)
  store %struct.Memory* %call_44b4c9, %struct.Memory** %MEMORY

  %loadBr_44b4c9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b4c9 = icmp eq i8 %loadBr_44b4c9, 1
  br i1 %cmpBr_44b4c9, label %block_.L_44c3b1, label %block_44b4cf

block_44b4cf:
  ; Code: movslq -0x8(%rbp), %rax	 RIP: 44b4cf	 Bytes: 4
  %loadMem_44b4cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b4cf = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b4cf)
  store %struct.Memory* %call_44b4cf, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 44b4d3	 Bytes: 8
  %loadMem_44b4d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b4d3 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b4d3)
  store %struct.Memory* %call_44b4d3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 44b4db	 Bytes: 3
  %loadMem_44b4db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b4db = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b4db)
  store %struct.Memory* %call_44b4db, %struct.Memory** %MEMORY

  ; Code: je .L_44b51a	 RIP: 44b4de	 Bytes: 6
  %loadMem_44b4de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b4de = call %struct.Memory* @routine_je_.L_44b51a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b4de, i8* %BRANCH_TAKEN, i64 60, i64 6, i64 6)
  store %struct.Memory* %call_44b4de, %struct.Memory** %MEMORY

  %loadBr_44b4de = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b4de = icmp eq i8 %loadBr_44b4de, 1
  br i1 %cmpBr_44b4de, label %block_.L_44b51a, label %block_44b4e4

block_44b4e4:
  ; Code: movslq -0x8(%rbp), %rax	 RIP: 44b4e4	 Bytes: 4
  %loadMem_44b4e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b4e4 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b4e4)
  store %struct.Memory* %call_44b4e4, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 44b4e8	 Bytes: 8
  %loadMem_44b4e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b4e8 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b4e8)
  store %struct.Memory* %call_44b4e8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 44b4f0	 Bytes: 3
  %loadMem_44b4f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b4f0 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b4f0)
  store %struct.Memory* %call_44b4f0, %struct.Memory** %MEMORY

  ; Code: je .L_44b51a	 RIP: 44b4f3	 Bytes: 6
  %loadMem_44b4f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b4f3 = call %struct.Memory* @routine_je_.L_44b51a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b4f3, i8* %BRANCH_TAKEN, i64 39, i64 6, i64 6)
  store %struct.Memory* %call_44b4f3, %struct.Memory** %MEMORY

  %loadBr_44b4f3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b4f3 = icmp eq i8 %loadBr_44b4f3, 1
  br i1 %cmpBr_44b4f3, label %block_.L_44b51a, label %block_44b4f9

block_44b4f9:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44b4f9	 Bytes: 10
  %loadMem_44b4f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b4f9 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b4f9)
  store %struct.Memory* %call_44b4f9, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44b503	 Bytes: 4
  %loadMem_44b503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b503 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b503)
  store %struct.Memory* %call_44b503, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44b507	 Bytes: 4
  %loadMem_44b507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b507 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b507)
  store %struct.Memory* %call_44b507, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44b50b	 Bytes: 3
  %loadMem_44b50b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b50b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b50b)
  store %struct.Memory* %call_44b50b, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %edx	 RIP: 44b50e	 Bytes: 3
  %loadMem_44b50e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b50e = call %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b50e)
  store %struct.Memory* %call_44b50e, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %edx	 RIP: 44b511	 Bytes: 3
  %loadMem_44b511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b511 = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b511)
  store %struct.Memory* %call_44b511, %struct.Memory** %MEMORY

  ; Code: je .L_44b51f	 RIP: 44b514	 Bytes: 6
  %loadMem_44b514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b514 = call %struct.Memory* @routine_je_.L_44b51f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b514, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_44b514, %struct.Memory** %MEMORY

  %loadBr_44b514 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b514 = icmp eq i8 %loadBr_44b514, 1
  br i1 %cmpBr_44b514, label %block_.L_44b51f, label %block_.L_44b51a

  ; Code: .L_44b51a:	 RIP: 44b51a	 Bytes: 0
block_.L_44b51a:

  ; Code: jmpq .L_44c3a3	 RIP: 44b51a	 Bytes: 5
  %loadMem_44b51a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b51a = call %struct.Memory* @routine_jmpq_.L_44c3a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b51a, i64 3721, i64 5)
  store %struct.Memory* %call_44b51a, %struct.Memory** %MEMORY

  br label %block_.L_44c3a3

  ; Code: .L_44b51f:	 RIP: 44b51f	 Bytes: 0
block_.L_44b51f:

  ; Code: movq $0xb4bd20, %rax	 RIP: 44b51f	 Bytes: 10
  %loadMem_44b51f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b51f = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b51f)
  store %struct.Memory* %call_44b51f, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44b529	 Bytes: 4
  %loadMem_44b529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b529 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b529)
  store %struct.Memory* %call_44b529, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44b52d	 Bytes: 4
  %loadMem_44b52d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b52d = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b52d)
  store %struct.Memory* %call_44b52d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44b531	 Bytes: 3
  %loadMem_44b531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b531 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b531)
  store %struct.Memory* %call_44b531, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x40(%rax)	 RIP: 44b534	 Bytes: 4
  %loadMem_44b534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b534 = call %struct.Memory* @routine_cmpl__0x2__0x40__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b534)
  store %struct.Memory* %call_44b534, %struct.Memory** %MEMORY

  ; Code: jne .L_44ba2e	 RIP: 44b538	 Bytes: 6
  %loadMem_44b538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b538 = call %struct.Memory* @routine_jne_.L_44ba2e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b538, i8* %BRANCH_TAKEN, i64 1270, i64 6, i64 6)
  store %struct.Memory* %call_44b538, %struct.Memory** %MEMORY

  %loadBr_44b538 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b538 = icmp eq i8 %loadBr_44b538, 1
  br i1 %cmpBr_44b538, label %block_.L_44ba2e, label %block_44b53e

block_44b53e:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44b53e	 Bytes: 10
  %loadMem_44b53e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b53e = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b53e)
  store %struct.Memory* %call_44b53e, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44b548	 Bytes: 4
  %loadMem_44b548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b548 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b548)
  store %struct.Memory* %call_44b548, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44b54c	 Bytes: 4
  %loadMem_44b54c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b54c = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b54c)
  store %struct.Memory* %call_44b54c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44b550	 Bytes: 3
  %loadMem_44b550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b550 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b550)
  store %struct.Memory* %call_44b550, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x20(%rax)	 RIP: 44b553	 Bytes: 4
  %loadMem_44b553 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b553 = call %struct.Memory* @routine_cmpl__0x0__0x20__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b553)
  store %struct.Memory* %call_44b553, %struct.Memory** %MEMORY

  ; Code: je .L_44ba2e	 RIP: 44b557	 Bytes: 6
  %loadMem_44b557 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b557 = call %struct.Memory* @routine_je_.L_44ba2e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b557, i8* %BRANCH_TAKEN, i64 1239, i64 6, i64 6)
  store %struct.Memory* %call_44b557, %struct.Memory** %MEMORY

  %loadBr_44b557 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b557 = icmp eq i8 %loadBr_44b557, 1
  br i1 %cmpBr_44b557, label %block_.L_44ba2e, label %block_44b55d

block_44b55d:
  ; Code: movslq -0x8(%rbp), %rax	 RIP: 44b55d	 Bytes: 4
  %loadMem_44b55d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b55d = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b55d)
  store %struct.Memory* %call_44b55d, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 44b561	 Bytes: 8
  %loadMem_44b561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b561 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b561)
  store %struct.Memory* %call_44b561, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %ecx	 RIP: 44b569	 Bytes: 3
  %loadMem_44b569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b569 = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b569)
  store %struct.Memory* %call_44b569, %struct.Memory** %MEMORY

  ; Code: jne .L_44b6d2	 RIP: 44b56c	 Bytes: 6
  %loadMem_44b56c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b56c = call %struct.Memory* @routine_jne_.L_44b6d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b56c, i8* %BRANCH_TAKEN, i64 358, i64 6, i64 6)
  store %struct.Memory* %call_44b56c, %struct.Memory** %MEMORY

  %loadBr_44b56c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b56c = icmp eq i8 %loadBr_44b56c, 1
  br i1 %cmpBr_44b56c, label %block_.L_44b6d2, label %block_44b572

block_44b572:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44b572	 Bytes: 10
  %loadMem_44b572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b572 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b572)
  store %struct.Memory* %call_44b572, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44b57c	 Bytes: 4
  %loadMem_44b57c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b57c = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b57c)
  store %struct.Memory* %call_44b57c, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44b580	 Bytes: 4
  %loadMem_44b580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b580 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b580)
  store %struct.Memory* %call_44b580, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44b584	 Bytes: 3
  %loadMem_44b584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b584 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b584)
  store %struct.Memory* %call_44b584, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x30(%rax)	 RIP: 44b587	 Bytes: 4
  %loadMem_44b587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b587 = call %struct.Memory* @routine_cmpl__0x0__0x30__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b587)
  store %struct.Memory* %call_44b587, %struct.Memory** %MEMORY

  ; Code: je .L_44b6cd	 RIP: 44b58b	 Bytes: 6
  %loadMem_44b58b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b58b = call %struct.Memory* @routine_je_.L_44b6cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b58b, i8* %BRANCH_TAKEN, i64 322, i64 6, i64 6)
  store %struct.Memory* %call_44b58b, %struct.Memory** %MEMORY

  %loadBr_44b58b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b58b = icmp eq i8 %loadBr_44b58b, 1
  br i1 %cmpBr_44b58b, label %block_.L_44b6cd, label %block_44b591

block_44b591:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44b591	 Bytes: 10
  %loadMem_44b591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b591 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b591)
  store %struct.Memory* %call_44b591, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44b59b	 Bytes: 4
  %loadMem_44b59b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b59b = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b59b)
  store %struct.Memory* %call_44b59b, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44b59f	 Bytes: 4
  %loadMem_44b59f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b59f = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b59f)
  store %struct.Memory* %call_44b59f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44b5a3	 Bytes: 3
  %loadMem_44b5a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b5a3 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b5a3)
  store %struct.Memory* %call_44b5a3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x34(%rax)	 RIP: 44b5a6	 Bytes: 4
  %loadMem_44b5a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b5a6 = call %struct.Memory* @routine_cmpl__0x2__0x34__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b5a6)
  store %struct.Memory* %call_44b5a6, %struct.Memory** %MEMORY

  ; Code: jne .L_44b63c	 RIP: 44b5aa	 Bytes: 6
  %loadMem_44b5aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b5aa = call %struct.Memory* @routine_jne_.L_44b63c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b5aa, i8* %BRANCH_TAKEN, i64 146, i64 6, i64 6)
  store %struct.Memory* %call_44b5aa, %struct.Memory** %MEMORY

  %loadBr_44b5aa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b5aa = icmp eq i8 %loadBr_44b5aa, 1
  br i1 %cmpBr_44b5aa, label %block_.L_44b63c, label %block_44b5b0

block_44b5b0:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44b5b0	 Bytes: 10
  %loadMem_44b5b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b5b0 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b5b0)
  store %struct.Memory* %call_44b5b0, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44b5ba	 Bytes: 4
  %loadMem_44b5ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b5ba = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b5ba)
  store %struct.Memory* %call_44b5ba, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44b5be	 Bytes: 4
  %loadMem_44b5be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b5be = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b5be)
  store %struct.Memory* %call_44b5be, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 44b5c2	 Bytes: 3
  %loadMem_44b5c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b5c2 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b5c2)
  store %struct.Memory* %call_44b5c2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 44b5c5	 Bytes: 3
  %loadMem_44b5c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b5c5 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b5c5)
  store %struct.Memory* %call_44b5c5, %struct.Memory** %MEMORY

  ; Code: movl 0x30(%rdx), %edi	 RIP: 44b5c8	 Bytes: 3
  %loadMem_44b5c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b5c8 = call %struct.Memory* @routine_movl_0x30__rdx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b5c8)
  store %struct.Memory* %call_44b5c8, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 44b5cb	 Bytes: 3
  %loadMem_44b5cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b5cb = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b5cb)
  store %struct.Memory* %call_44b5cb, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44b5ce	 Bytes: 4
  %loadMem_44b5ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b5ce = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b5ce)
  store %struct.Memory* %call_44b5ce, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44b5d2	 Bytes: 4
  %loadMem_44b5d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b5d2 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b5d2)
  store %struct.Memory* %call_44b5d2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44b5d6	 Bytes: 3
  %loadMem_44b5d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b5d6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b5d6)
  store %struct.Memory* %call_44b5d6, %struct.Memory** %MEMORY

  ; Code: movl 0x48(%rax), %edx	 RIP: 44b5d9	 Bytes: 3
  %loadMem_44b5d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b5d9 = call %struct.Memory* @routine_movl_0x48__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b5d9)
  store %struct.Memory* %call_44b5d9, %struct.Memory** %MEMORY

  ; Code: callq .add_loss_move	 RIP: 44b5dc	 Bytes: 5
  %loadMem1_44b5dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44b5dc = call %struct.Memory* @routine_callq_.add_loss_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44b5dc, i64 -95228, i64 5, i64 5)
  store %struct.Memory* %call1_44b5dc, %struct.Memory** %MEMORY

  %loadMem2_44b5dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44b5dc = load i64, i64* %3
  %call2_44b5dc = call %struct.Memory* @sub_4341e0.add_loss_move(%struct.State* %0, i64  %loadPC_44b5dc, %struct.Memory* %loadMem2_44b5dc)
  store %struct.Memory* %call2_44b5dc, %struct.Memory** %MEMORY

  ; Code: movl 0xab0f24, %edx	 RIP: 44b5e1	 Bytes: 7
  %loadMem_44b5e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b5e1 = call %struct.Memory* @routine_movl_0xab0f24___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b5e1)
  store %struct.Memory* %call_44b5e1, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %edx	 RIP: 44b5e8	 Bytes: 3
  %loadMem_44b5e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b5e8 = call %struct.Memory* @routine_andl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b5e8)
  store %struct.Memory* %call_44b5e8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 44b5eb	 Bytes: 3
  %loadMem_44b5eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b5eb = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b5eb)
  store %struct.Memory* %call_44b5eb, %struct.Memory** %MEMORY

  ; Code: jne .L_44b5f9	 RIP: 44b5ee	 Bytes: 6
  %loadMem_44b5ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b5ee = call %struct.Memory* @routine_jne_.L_44b5f9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b5ee, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_44b5ee, %struct.Memory** %MEMORY

  %loadBr_44b5ee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b5ee = icmp eq i8 %loadBr_44b5ee, 1
  br i1 %cmpBr_44b5ee, label %block_.L_44b5f9, label %block_44b5f4

block_44b5f4:
  ; Code: jmpq .L_44b637	 RIP: 44b5f4	 Bytes: 5
  %loadMem_44b5f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b5f4 = call %struct.Memory* @routine_jmpq_.L_44b637(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b5f4, i64 67, i64 5)
  store %struct.Memory* %call_44b5f4, %struct.Memory** %MEMORY

  br label %block_.L_44b637

  ; Code: .L_44b5f9:	 RIP: 44b5f9	 Bytes: 0
block_.L_44b5f9:

  ; Code: movq $0x57ea8e, %rdi	 RIP: 44b5f9	 Bytes: 10
  %loadMem_44b5f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b5f9 = call %struct.Memory* @routine_movq__0x57ea8e___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b5f9)
  store %struct.Memory* %call_44b5f9, %struct.Memory** %MEMORY

  ; Code: movq $0xb4bd20, %rax	 RIP: 44b603	 Bytes: 10
  %loadMem_44b603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b603 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b603)
  store %struct.Memory* %call_44b603, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44b60d	 Bytes: 4
  %loadMem_44b60d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b60d = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b60d)
  store %struct.Memory* %call_44b60d, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44b611	 Bytes: 4
  %loadMem_44b611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b611 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b611)
  store %struct.Memory* %call_44b611, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44b615	 Bytes: 3
  %loadMem_44b615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b615 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b615)
  store %struct.Memory* %call_44b615, %struct.Memory** %MEMORY

  ; Code: movl 0x30(%rax), %esi	 RIP: 44b618	 Bytes: 3
  %loadMem_44b618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b618 = call %struct.Memory* @routine_movl_0x30__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b618)
  store %struct.Memory* %call_44b618, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 44b61b	 Bytes: 3
  %loadMem_44b61b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b61b = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b61b)
  store %struct.Memory* %call_44b61b, %struct.Memory** %MEMORY

  ; Code: movl 0xafdfb0, %r8d	 RIP: 44b61e	 Bytes: 8
  %loadMem_44b61e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b61e = call %struct.Memory* @routine_movl_0xafdfb0___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b61e)
  store %struct.Memory* %call_44b61e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r8d	 RIP: 44b626	 Bytes: 4
  %loadMem_44b626 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b626 = call %struct.Memory* @routine_addl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b626)
  store %struct.Memory* %call_44b626, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 44b62a	 Bytes: 3
  %loadMem_44b62a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b62a = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b62a)
  store %struct.Memory* %call_44b62a, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44b62d	 Bytes: 2
  %loadMem_44b62d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b62d = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b62d)
  store %struct.Memory* %call_44b62d, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 44b62f	 Bytes: 5
  %loadMem1_44b62f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44b62f = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44b62f, i64 26497, i64 5, i64 5)
  store %struct.Memory* %call1_44b62f, %struct.Memory** %MEMORY

  %loadMem2_44b62f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44b62f = load i64, i64* %3
  %call2_44b62f = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_44b62f, %struct.Memory* %loadMem2_44b62f)
  store %struct.Memory* %call2_44b62f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 44b634	 Bytes: 3
  %loadMem_44b634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b634 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b634)
  store %struct.Memory* %call_44b634, %struct.Memory** %MEMORY

  ; Code: .L_44b637:	 RIP: 44b637	 Bytes: 0
  br label %block_.L_44b637
block_.L_44b637:

  ; Code: jmpq .L_44b6c8	 RIP: 44b637	 Bytes: 5
  %loadMem_44b637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b637 = call %struct.Memory* @routine_jmpq_.L_44b6c8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b637, i64 145, i64 5)
  store %struct.Memory* %call_44b637, %struct.Memory** %MEMORY

  br label %block_.L_44b6c8

  ; Code: .L_44b63c:	 RIP: 44b63c	 Bytes: 0
block_.L_44b63c:

  ; Code: movq $0xb4bd20, %rax	 RIP: 44b63c	 Bytes: 10
  %loadMem_44b63c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b63c = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b63c)
  store %struct.Memory* %call_44b63c, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44b646	 Bytes: 4
  %loadMem_44b646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b646 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b646)
  store %struct.Memory* %call_44b646, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44b64a	 Bytes: 4
  %loadMem_44b64a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b64a = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b64a)
  store %struct.Memory* %call_44b64a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 44b64e	 Bytes: 3
  %loadMem_44b64e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b64e = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b64e)
  store %struct.Memory* %call_44b64e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 44b651	 Bytes: 3
  %loadMem_44b651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b651 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b651)
  store %struct.Memory* %call_44b651, %struct.Memory** %MEMORY

  ; Code: movl 0x30(%rdx), %edi	 RIP: 44b654	 Bytes: 3
  %loadMem_44b654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b654 = call %struct.Memory* @routine_movl_0x30__rdx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b654)
  store %struct.Memory* %call_44b654, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 44b657	 Bytes: 3
  %loadMem_44b657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b657 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b657)
  store %struct.Memory* %call_44b657, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44b65a	 Bytes: 4
  %loadMem_44b65a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b65a = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b65a)
  store %struct.Memory* %call_44b65a, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44b65e	 Bytes: 4
  %loadMem_44b65e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b65e = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b65e)
  store %struct.Memory* %call_44b65e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44b662	 Bytes: 3
  %loadMem_44b662 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b662 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b662)
  store %struct.Memory* %call_44b662, %struct.Memory** %MEMORY

  ; Code: movl 0x34(%rax), %edx	 RIP: 44b665	 Bytes: 3
  %loadMem_44b665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b665 = call %struct.Memory* @routine_movl_0x34__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b665)
  store %struct.Memory* %call_44b665, %struct.Memory** %MEMORY

  ; Code: callq .add_owl_defense_move	 RIP: 44b668	 Bytes: 5
  %loadMem1_44b668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44b668 = call %struct.Memory* @routine_callq_.add_owl_defense_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44b668, i64 -93896, i64 5, i64 5)
  store %struct.Memory* %call1_44b668, %struct.Memory** %MEMORY

  %loadMem2_44b668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44b668 = load i64, i64* %3
  %call2_44b668 = call %struct.Memory* @sub_4347a0.add_owl_defense_move(%struct.State* %0, i64  %loadPC_44b668, %struct.Memory* %loadMem2_44b668)
  store %struct.Memory* %call2_44b668, %struct.Memory** %MEMORY

  ; Code: movl 0xab0f24, %edx	 RIP: 44b66d	 Bytes: 7
  %loadMem_44b66d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b66d = call %struct.Memory* @routine_movl_0xab0f24___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b66d)
  store %struct.Memory* %call_44b66d, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %edx	 RIP: 44b674	 Bytes: 3
  %loadMem_44b674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b674 = call %struct.Memory* @routine_andl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b674)
  store %struct.Memory* %call_44b674, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 44b677	 Bytes: 3
  %loadMem_44b677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b677 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b677)
  store %struct.Memory* %call_44b677, %struct.Memory** %MEMORY

  ; Code: jne .L_44b685	 RIP: 44b67a	 Bytes: 6
  %loadMem_44b67a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b67a = call %struct.Memory* @routine_jne_.L_44b685(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b67a, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_44b67a, %struct.Memory** %MEMORY

  %loadBr_44b67a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b67a = icmp eq i8 %loadBr_44b67a, 1
  br i1 %cmpBr_44b67a, label %block_.L_44b685, label %block_44b680

block_44b680:
  ; Code: jmpq .L_44b6c3	 RIP: 44b680	 Bytes: 5
  %loadMem_44b680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b680 = call %struct.Memory* @routine_jmpq_.L_44b6c3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b680, i64 67, i64 5)
  store %struct.Memory* %call_44b680, %struct.Memory** %MEMORY

  br label %block_.L_44b6c3

  ; Code: .L_44b685:	 RIP: 44b685	 Bytes: 0
block_.L_44b685:

  ; Code: movq $0x57eab9, %rdi	 RIP: 44b685	 Bytes: 10
  %loadMem_44b685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b685 = call %struct.Memory* @routine_movq__0x57eab9___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b685)
  store %struct.Memory* %call_44b685, %struct.Memory** %MEMORY

  ; Code: movq $0xb4bd20, %rax	 RIP: 44b68f	 Bytes: 10
  %loadMem_44b68f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b68f = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b68f)
  store %struct.Memory* %call_44b68f, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44b699	 Bytes: 4
  %loadMem_44b699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b699 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b699)
  store %struct.Memory* %call_44b699, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44b69d	 Bytes: 4
  %loadMem_44b69d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b69d = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b69d)
  store %struct.Memory* %call_44b69d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44b6a1	 Bytes: 3
  %loadMem_44b6a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b6a1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b6a1)
  store %struct.Memory* %call_44b6a1, %struct.Memory** %MEMORY

  ; Code: movl 0x30(%rax), %esi	 RIP: 44b6a4	 Bytes: 3
  %loadMem_44b6a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b6a4 = call %struct.Memory* @routine_movl_0x30__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b6a4)
  store %struct.Memory* %call_44b6a4, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 44b6a7	 Bytes: 3
  %loadMem_44b6a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b6a7 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b6a7)
  store %struct.Memory* %call_44b6a7, %struct.Memory** %MEMORY

  ; Code: movl 0xafdfb0, %r8d	 RIP: 44b6aa	 Bytes: 8
  %loadMem_44b6aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b6aa = call %struct.Memory* @routine_movl_0xafdfb0___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b6aa)
  store %struct.Memory* %call_44b6aa, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r8d	 RIP: 44b6b2	 Bytes: 4
  %loadMem_44b6b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b6b2 = call %struct.Memory* @routine_addl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b6b2)
  store %struct.Memory* %call_44b6b2, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 44b6b6	 Bytes: 3
  %loadMem_44b6b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b6b6 = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b6b6)
  store %struct.Memory* %call_44b6b6, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44b6b9	 Bytes: 2
  %loadMem_44b6b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b6b9 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b6b9)
  store %struct.Memory* %call_44b6b9, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 44b6bb	 Bytes: 5
  %loadMem1_44b6bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44b6bb = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44b6bb, i64 26357, i64 5, i64 5)
  store %struct.Memory* %call1_44b6bb, %struct.Memory** %MEMORY

  %loadMem2_44b6bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44b6bb = load i64, i64* %3
  %call2_44b6bb = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_44b6bb, %struct.Memory* %loadMem2_44b6bb)
  store %struct.Memory* %call2_44b6bb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 44b6c0	 Bytes: 3
  %loadMem_44b6c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b6c0 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b6c0)
  store %struct.Memory* %call_44b6c0, %struct.Memory** %MEMORY

  ; Code: .L_44b6c3:	 RIP: 44b6c3	 Bytes: 0
  br label %block_.L_44b6c3
block_.L_44b6c3:

  ; Code: jmpq .L_44b6c8	 RIP: 44b6c3	 Bytes: 5
  %loadMem_44b6c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b6c3 = call %struct.Memory* @routine_jmpq_.L_44b6c8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b6c3, i64 5, i64 5)
  store %struct.Memory* %call_44b6c3, %struct.Memory** %MEMORY

  br label %block_.L_44b6c8

  ; Code: .L_44b6c8:	 RIP: 44b6c8	 Bytes: 0
block_.L_44b6c8:

  ; Code: jmpq .L_44b6cd	 RIP: 44b6c8	 Bytes: 5
  %loadMem_44b6c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b6c8 = call %struct.Memory* @routine_jmpq_.L_44b6cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b6c8, i64 5, i64 5)
  store %struct.Memory* %call_44b6c8, %struct.Memory** %MEMORY

  br label %block_.L_44b6cd

  ; Code: .L_44b6cd:	 RIP: 44b6cd	 Bytes: 0
block_.L_44b6cd:

  ; Code: jmpq .L_44ba29	 RIP: 44b6cd	 Bytes: 5
  %loadMem_44b6cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b6cd = call %struct.Memory* @routine_jmpq_.L_44ba29(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b6cd, i64 860, i64 5)
  store %struct.Memory* %call_44b6cd, %struct.Memory** %MEMORY

  br label %block_.L_44ba29

  ; Code: .L_44b6d2:	 RIP: 44b6d2	 Bytes: 0
block_.L_44b6d2:

  ; Code: movss 0x97a7e(%rip), %xmm0	 RIP: 44b6d2	 Bytes: 8
  %loadMem_44b6d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b6d2 = call %struct.Memory* @routine_movss_0x97a7e__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b6d2)
  store %struct.Memory* %call_44b6d2, %struct.Memory** %MEMORY

  ; Code: movq $0xb4bd20, %rax	 RIP: 44b6da	 Bytes: 10
  %loadMem_44b6da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b6da = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b6da)
  store %struct.Memory* %call_44b6da, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44b6e4	 Bytes: 4
  %loadMem_44b6e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b6e4 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b6e4)
  store %struct.Memory* %call_44b6e4, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44b6e8	 Bytes: 4
  %loadMem_44b6e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b6e8 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b6e8)
  store %struct.Memory* %call_44b6e8, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 44b6ec	 Bytes: 3
  %loadMem_44b6ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b6ec = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b6ec)
  store %struct.Memory* %call_44b6ec, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 44b6ef	 Bytes: 3
  %loadMem_44b6ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b6ef = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b6ef)
  store %struct.Memory* %call_44b6ef, %struct.Memory** %MEMORY

  ; Code: movl 0x20(%rdx), %esi	 RIP: 44b6f2	 Bytes: 3
  %loadMem_44b6f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b6f2 = call %struct.Memory* @routine_movl_0x20__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b6f2)
  store %struct.Memory* %call_44b6f2, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0xc(%rbp)	 RIP: 44b6f5	 Bytes: 3
  %loadMem_44b6f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b6f5 = call %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b6f5)
  store %struct.Memory* %call_44b6f5, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44b6f8	 Bytes: 4
  %loadMem_44b6f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b6f8 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b6f8)
  store %struct.Memory* %call_44b6f8, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44b6fc	 Bytes: 4
  %loadMem_44b6fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b6fc = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b6fc)
  store %struct.Memory* %call_44b6fc, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44b700	 Bytes: 3
  %loadMem_44b700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b700 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b700)
  store %struct.Memory* %call_44b700, %struct.Memory** %MEMORY

  ; Code: ucomiss 0x10(%rax), %xmm0	 RIP: 44b703	 Bytes: 4
  %loadMem_44b703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b703 = call %struct.Memory* @routine_ucomiss_0x10__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b703)
  store %struct.Memory* %call_44b703, %struct.Memory** %MEMORY

  ; Code: jbe .L_44b939	 RIP: 44b707	 Bytes: 6
  %loadMem_44b707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b707 = call %struct.Memory* @routine_jbe_.L_44b939(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b707, i8* %BRANCH_TAKEN, i64 562, i64 6, i64 6)
  store %struct.Memory* %call_44b707, %struct.Memory** %MEMORY

  %loadBr_44b707 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b707 = icmp eq i8 %loadBr_44b707, 1
  br i1 %cmpBr_44b707, label %block_.L_44b939, label %block_44b70d

block_44b70d:
  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 44b70d	 Bytes: 7
  %loadMem_44b70d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b70d = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b70d)
  store %struct.Memory* %call_44b70d, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 44b714	 Bytes: 7
  %loadMem_44b714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b714 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b714)
  store %struct.Memory* %call_44b714, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 44b71b	 Bytes: 7
  %loadMem_44b71b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b71b = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b71b)
  store %struct.Memory* %call_44b71b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 44b722	 Bytes: 7
  %loadMem_44b722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b722 = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b722)
  store %struct.Memory* %call_44b722, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 44b729	 Bytes: 7
  %loadMem_44b729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b729 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b729)
  store %struct.Memory* %call_44b729, %struct.Memory** %MEMORY

  ; Code: .L_44b730:	 RIP: 44b730	 Bytes: 0
  br label %block_.L_44b730
block_.L_44b730:

  ; Code: movq $0xb4bd20, %rax	 RIP: 44b730	 Bytes: 10
  %loadMem_44b730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b730 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b730)
  store %struct.Memory* %call_44b730, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 44b73a	 Bytes: 3
  %loadMem_44b73a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b73a = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b73a)
  store %struct.Memory* %call_44b73a, %struct.Memory** %MEMORY

  ; Code: movq 0xab0fe0, %rdx	 RIP: 44b73d	 Bytes: 8
  %loadMem_44b73d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b73d = call %struct.Memory* @routine_movq_0xab0fe0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b73d)
  store %struct.Memory* %call_44b73d, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rsi	 RIP: 44b745	 Bytes: 4
  %loadMem_44b745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b745 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b745)
  store %struct.Memory* %call_44b745, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rsi, %rsi	 RIP: 44b749	 Bytes: 4
  %loadMem_44b749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b749 = call %struct.Memory* @routine_imulq__0x4c___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b749)
  store %struct.Memory* %call_44b749, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rax	 RIP: 44b74d	 Bytes: 3
  %loadMem_44b74d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b74d = call %struct.Memory* @routine_addq__rsi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b74d)
  store %struct.Memory* %call_44b74d, %struct.Memory** %MEMORY

  ; Code: movslq 0x4(%rax), %rax	 RIP: 44b750	 Bytes: 4
  %loadMem_44b750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b750 = call %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b750)
  store %struct.Memory* %call_44b750, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, %rax, %rax	 RIP: 44b754	 Bytes: 4
  %loadMem_44b754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b754 = call %struct.Memory* @routine_imulq__0x68___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b754)
  store %struct.Memory* %call_44b754, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rdx	 RIP: 44b758	 Bytes: 3
  %loadMem_44b758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b758 = call %struct.Memory* @routine_addq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b758)
  store %struct.Memory* %call_44b758, %struct.Memory** %MEMORY

  ; Code: cmpl 0x2c(%rdx), %ecx	 RIP: 44b75b	 Bytes: 3
  %loadMem_44b75b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b75b = call %struct.Memory* @routine_cmpl_0x2c__rdx____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b75b)
  store %struct.Memory* %call_44b75b, %struct.Memory** %MEMORY

  ; Code: jge .L_44b88f	 RIP: 44b75e	 Bytes: 6
  %loadMem_44b75e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b75e = call %struct.Memory* @routine_jge_.L_44b88f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b75e, i8* %BRANCH_TAKEN, i64 305, i64 6, i64 6)
  store %struct.Memory* %call_44b75e, %struct.Memory** %MEMORY

  %loadBr_44b75e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b75e = icmp eq i8 %loadBr_44b75e, 1
  br i1 %cmpBr_44b75e, label %block_.L_44b88f, label %block_44b764

block_44b764:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44b764	 Bytes: 10
  %loadMem_44b764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b764 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b764)
  store %struct.Memory* %call_44b764, %struct.Memory** %MEMORY

  ; Code: movq 0xab0fe0, %rcx	 RIP: 44b76e	 Bytes: 8
  %loadMem_44b76e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b76e = call %struct.Memory* @routine_movq_0xab0fe0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b76e)
  store %struct.Memory* %call_44b76e, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 44b776	 Bytes: 4
  %loadMem_44b776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b776 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b776)
  store %struct.Memory* %call_44b776, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rdx, %rdx	 RIP: 44b77a	 Bytes: 4
  %loadMem_44b77a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b77a = call %struct.Memory* @routine_imulq__0x4c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b77a)
  store %struct.Memory* %call_44b77a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 44b77e	 Bytes: 3
  %loadMem_44b77e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b77e = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b77e)
  store %struct.Memory* %call_44b77e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 44b781	 Bytes: 3
  %loadMem_44b781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b781 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b781)
  store %struct.Memory* %call_44b781, %struct.Memory** %MEMORY

  ; Code: movslq 0x4(%rsi), %rdx	 RIP: 44b784	 Bytes: 4
  %loadMem_44b784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b784 = call %struct.Memory* @routine_movslq_0x4__rsi____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b784)
  store %struct.Memory* %call_44b784, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, %rdx, %rdx	 RIP: 44b788	 Bytes: 4
  %loadMem_44b788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b788 = call %struct.Memory* @routine_imulq__0x68___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b788)
  store %struct.Memory* %call_44b788, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 44b78c	 Bytes: 3
  %loadMem_44b78c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b78c = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b78c)
  store %struct.Memory* %call_44b78c, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 44b78f	 Bytes: 4
  %loadMem_44b78f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b78f = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b78f)
  store %struct.Memory* %call_44b78f, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rcx,%rdx,4), %edi	 RIP: 44b793	 Bytes: 4
  %loadMem_44b793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b793 = call %struct.Memory* @routine_movl_0x4__rcx__rdx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b793)
  store %struct.Memory* %call_44b793, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x24(%rbp)	 RIP: 44b797	 Bytes: 3
  %loadMem_44b797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b797 = call %struct.Memory* @routine_movl__edi__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b797)
  store %struct.Memory* %call_44b797, %struct.Memory** %MEMORY

  ; Code: movq 0xab0fe0, %rcx	 RIP: 44b79a	 Bytes: 8
  %loadMem_44b79a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b79a = call %struct.Memory* @routine_movq_0xab0fe0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b79a)
  store %struct.Memory* %call_44b79a, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 44b7a2	 Bytes: 4
  %loadMem_44b7a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7a2 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7a2)
  store %struct.Memory* %call_44b7a2, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, %rdx, %rdx	 RIP: 44b7a6	 Bytes: 4
  %loadMem_44b7a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7a6 = call %struct.Memory* @routine_imulq__0x68___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7a6)
  store %struct.Memory* %call_44b7a6, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 44b7aa	 Bytes: 3
  %loadMem_44b7aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7aa = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7aa)
  store %struct.Memory* %call_44b7aa, %struct.Memory** %MEMORY

  ; Code: movslq (%rcx), %rcx	 RIP: 44b7ad	 Bytes: 3
  %loadMem_44b7ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7ad = call %struct.Memory* @routine_movslq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7ad)
  store %struct.Memory* %call_44b7ad, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44b7b0	 Bytes: 4
  %loadMem_44b7b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7b0 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7b0)
  store %struct.Memory* %call_44b7b0, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44b7b4	 Bytes: 3
  %loadMem_44b7b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7b4 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7b4)
  store %struct.Memory* %call_44b7b4, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %edi	 RIP: 44b7b7	 Bytes: 2
  %loadMem_44b7b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7b7 = call %struct.Memory* @routine_movl___rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7b7)
  store %struct.Memory* %call_44b7b7, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %edi	 RIP: 44b7b9	 Bytes: 3
  %loadMem_44b7b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7b9 = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7b9)
  store %struct.Memory* %call_44b7b9, %struct.Memory** %MEMORY

  ; Code: jne .L_44b87c	 RIP: 44b7bc	 Bytes: 6
  %loadMem_44b7bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7bc = call %struct.Memory* @routine_jne_.L_44b87c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7bc, i8* %BRANCH_TAKEN, i64 192, i64 6, i64 6)
  store %struct.Memory* %call_44b7bc, %struct.Memory** %MEMORY

  %loadBr_44b7bc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b7bc = icmp eq i8 %loadBr_44b7bc, 1
  br i1 %cmpBr_44b7bc, label %block_.L_44b87c, label %block_44b7c2

block_44b7c2:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44b7c2	 Bytes: 10
  %loadMem_44b7c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7c2 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7c2)
  store %struct.Memory* %call_44b7c2, %struct.Memory** %MEMORY

  ; Code: movq 0xab0fe0, %rcx	 RIP: 44b7cc	 Bytes: 8
  %loadMem_44b7cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7cc = call %struct.Memory* @routine_movq_0xab0fe0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7cc)
  store %struct.Memory* %call_44b7cc, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 44b7d4	 Bytes: 4
  %loadMem_44b7d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7d4 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7d4)
  store %struct.Memory* %call_44b7d4, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, %rdx, %rdx	 RIP: 44b7d8	 Bytes: 4
  %loadMem_44b7d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7d8 = call %struct.Memory* @routine_imulq__0x68___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7d8)
  store %struct.Memory* %call_44b7d8, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 44b7dc	 Bytes: 3
  %loadMem_44b7dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7dc = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7dc)
  store %struct.Memory* %call_44b7dc, %struct.Memory** %MEMORY

  ; Code: movslq (%rcx), %rcx	 RIP: 44b7df	 Bytes: 3
  %loadMem_44b7df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7df = call %struct.Memory* @routine_movslq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7df)
  store %struct.Memory* %call_44b7df, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44b7e2	 Bytes: 4
  %loadMem_44b7e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7e2 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7e2)
  store %struct.Memory* %call_44b7e2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44b7e6	 Bytes: 3
  %loadMem_44b7e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7e6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7e6)
  store %struct.Memory* %call_44b7e6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x40(%rax)	 RIP: 44b7e9	 Bytes: 4
  %loadMem_44b7e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7e9 = call %struct.Memory* @routine_cmpl__0x1__0x40__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7e9)
  store %struct.Memory* %call_44b7e9, %struct.Memory** %MEMORY

  ; Code: jne .L_44b7ff	 RIP: 44b7ed	 Bytes: 6
  %loadMem_44b7ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7ed = call %struct.Memory* @routine_jne_.L_44b7ff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7ed, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_44b7ed, %struct.Memory** %MEMORY

  %loadBr_44b7ed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b7ed = icmp eq i8 %loadBr_44b7ed, 1
  br i1 %cmpBr_44b7ed, label %block_.L_44b7ff, label %block_44b7f3

block_44b7f3:
  ; Code: movl $0x1, -0x20(%rbp)	 RIP: 44b7f3	 Bytes: 7
  %loadMem_44b7f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7f3 = call %struct.Memory* @routine_movl__0x1__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7f3)
  store %struct.Memory* %call_44b7f3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44b88f	 RIP: 44b7fa	 Bytes: 5
  %loadMem_44b7fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7fa = call %struct.Memory* @routine_jmpq_.L_44b88f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7fa, i64 149, i64 5)
  store %struct.Memory* %call_44b7fa, %struct.Memory** %MEMORY

  br label %block_.L_44b88f

  ; Code: .L_44b7ff:	 RIP: 44b7ff	 Bytes: 0
block_.L_44b7ff:

  ; Code: movq $0xb4bd20, %rax	 RIP: 44b7ff	 Bytes: 10
  %loadMem_44b7ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b7ff = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b7ff)
  store %struct.Memory* %call_44b7ff, %struct.Memory** %MEMORY

  ; Code: movq 0xab0fe0, %rcx	 RIP: 44b809	 Bytes: 8
  %loadMem_44b809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b809 = call %struct.Memory* @routine_movq_0xab0fe0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b809)
  store %struct.Memory* %call_44b809, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 44b811	 Bytes: 4
  %loadMem_44b811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b811 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b811)
  store %struct.Memory* %call_44b811, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, %rdx, %rdx	 RIP: 44b815	 Bytes: 4
  %loadMem_44b815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b815 = call %struct.Memory* @routine_imulq__0x68___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b815)
  store %struct.Memory* %call_44b815, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 44b819	 Bytes: 3
  %loadMem_44b819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b819 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b819)
  store %struct.Memory* %call_44b819, %struct.Memory** %MEMORY

  ; Code: movslq (%rcx), %rcx	 RIP: 44b81c	 Bytes: 3
  %loadMem_44b81c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b81c = call %struct.Memory* @routine_movslq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b81c)
  store %struct.Memory* %call_44b81c, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44b81f	 Bytes: 4
  %loadMem_44b81f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b81f = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b81f)
  store %struct.Memory* %call_44b81f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44b823	 Bytes: 3
  %loadMem_44b823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b823 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b823)
  store %struct.Memory* %call_44b823, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %esi	 RIP: 44b826	 Bytes: 3
  %loadMem_44b826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b826 = call %struct.Memory* @routine_movl_0xc__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b826)
  store %struct.Memory* %call_44b826, %struct.Memory** %MEMORY

  ; Code: cmpl -0x10(%rbp), %esi	 RIP: 44b829	 Bytes: 3
  %loadMem_44b829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b829 = call %struct.Memory* @routine_cmpl_MINUS0x10__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b829)
  store %struct.Memory* %call_44b829, %struct.Memory** %MEMORY

  ; Code: jle .L_44b877	 RIP: 44b82c	 Bytes: 6
  %loadMem_44b82c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b82c = call %struct.Memory* @routine_jle_.L_44b877(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b82c, i8* %BRANCH_TAKEN, i64 75, i64 6, i64 6)
  store %struct.Memory* %call_44b82c, %struct.Memory** %MEMORY

  %loadBr_44b82c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b82c = icmp eq i8 %loadBr_44b82c, 1
  br i1 %cmpBr_44b82c, label %block_.L_44b877, label %block_44b832

block_44b832:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44b832	 Bytes: 10
  %loadMem_44b832 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b832 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b832)
  store %struct.Memory* %call_44b832, %struct.Memory** %MEMORY

  ; Code: movq 0xab0fe0, %rcx	 RIP: 44b83c	 Bytes: 8
  %loadMem_44b83c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b83c = call %struct.Memory* @routine_movq_0xab0fe0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b83c)
  store %struct.Memory* %call_44b83c, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 44b844	 Bytes: 4
  %loadMem_44b844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b844 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b844)
  store %struct.Memory* %call_44b844, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, %rdx, %rdx	 RIP: 44b848	 Bytes: 4
  %loadMem_44b848 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b848 = call %struct.Memory* @routine_imulq__0x68___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b848)
  store %struct.Memory* %call_44b848, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 44b84c	 Bytes: 3
  %loadMem_44b84c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b84c = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b84c)
  store %struct.Memory* %call_44b84c, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %esi	 RIP: 44b84f	 Bytes: 2
  %loadMem_44b84f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b84f = call %struct.Memory* @routine_movl___rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b84f)
  store %struct.Memory* %call_44b84f, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x18(%rbp)	 RIP: 44b851	 Bytes: 3
  %loadMem_44b851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b851 = call %struct.Memory* @routine_movl__esi__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b851)
  store %struct.Memory* %call_44b851, %struct.Memory** %MEMORY

  ; Code: movq 0xab0fe0, %rcx	 RIP: 44b854	 Bytes: 8
  %loadMem_44b854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b854 = call %struct.Memory* @routine_movq_0xab0fe0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b854)
  store %struct.Memory* %call_44b854, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 44b85c	 Bytes: 4
  %loadMem_44b85c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b85c = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b85c)
  store %struct.Memory* %call_44b85c, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, %rdx, %rdx	 RIP: 44b860	 Bytes: 4
  %loadMem_44b860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b860 = call %struct.Memory* @routine_imulq__0x68___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b860)
  store %struct.Memory* %call_44b860, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 44b864	 Bytes: 3
  %loadMem_44b864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b864 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b864)
  store %struct.Memory* %call_44b864, %struct.Memory** %MEMORY

  ; Code: movslq (%rcx), %rcx	 RIP: 44b867	 Bytes: 3
  %loadMem_44b867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b867 = call %struct.Memory* @routine_movslq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b867)
  store %struct.Memory* %call_44b867, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44b86a	 Bytes: 4
  %loadMem_44b86a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b86a = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b86a)
  store %struct.Memory* %call_44b86a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44b86e	 Bytes: 3
  %loadMem_44b86e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b86e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b86e)
  store %struct.Memory* %call_44b86e, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %esi	 RIP: 44b871	 Bytes: 3
  %loadMem_44b871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b871 = call %struct.Memory* @routine_movl_0xc__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b871)
  store %struct.Memory* %call_44b871, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x10(%rbp)	 RIP: 44b874	 Bytes: 3
  %loadMem_44b874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b874 = call %struct.Memory* @routine_movl__esi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b874)
  store %struct.Memory* %call_44b874, %struct.Memory** %MEMORY

  ; Code: .L_44b877:	 RIP: 44b877	 Bytes: 0
  br label %block_.L_44b877
block_.L_44b877:

  ; Code: jmpq .L_44b87c	 RIP: 44b877	 Bytes: 5
  %loadMem_44b877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b877 = call %struct.Memory* @routine_jmpq_.L_44b87c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b877, i64 5, i64 5)
  store %struct.Memory* %call_44b877, %struct.Memory** %MEMORY

  br label %block_.L_44b87c

  ; Code: .L_44b87c:	 RIP: 44b87c	 Bytes: 0
block_.L_44b87c:

  ; Code: jmpq .L_44b881	 RIP: 44b87c	 Bytes: 5
  %loadMem_44b87c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b87c = call %struct.Memory* @routine_jmpq_.L_44b881(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b87c, i64 5, i64 5)
  store %struct.Memory* %call_44b87c, %struct.Memory** %MEMORY

  br label %block_.L_44b881

  ; Code: .L_44b881:	 RIP: 44b881	 Bytes: 0
block_.L_44b881:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 44b881	 Bytes: 3
  %loadMem_44b881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b881 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b881)
  store %struct.Memory* %call_44b881, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44b884	 Bytes: 3
  %loadMem_44b884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b884 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b884)
  store %struct.Memory* %call_44b884, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 44b887	 Bytes: 3
  %loadMem_44b887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b887 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b887)
  store %struct.Memory* %call_44b887, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44b730	 RIP: 44b88a	 Bytes: 5
  %loadMem_44b88a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b88a = call %struct.Memory* @routine_jmpq_.L_44b730(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b88a, i64 -346, i64 5)
  store %struct.Memory* %call_44b88a, %struct.Memory** %MEMORY

  br label %block_.L_44b730

  ; Code: .L_44b88f:	 RIP: 44b88f	 Bytes: 0
block_.L_44b88f:

  ; Code: cmpl $0x0, -0x18(%rbp)	 RIP: 44b88f	 Bytes: 4
  %loadMem_44b88f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b88f = call %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b88f)
  store %struct.Memory* %call_44b88f, %struct.Memory** %MEMORY

  ; Code: jne .L_44b8a0	 RIP: 44b893	 Bytes: 6
  %loadMem_44b893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b893 = call %struct.Memory* @routine_jne_.L_44b8a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b893, i8* %BRANCH_TAKEN, i64 13, i64 6, i64 6)
  store %struct.Memory* %call_44b893, %struct.Memory** %MEMORY

  %loadBr_44b893 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b893 = icmp eq i8 %loadBr_44b893, 1
  br i1 %cmpBr_44b893, label %block_.L_44b8a0, label %block_44b899

block_44b899:
  ; Code: movl $0x1, -0x20(%rbp)	 RIP: 44b899	 Bytes: 7
  %loadMem_44b899 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b899 = call %struct.Memory* @routine_movl__0x1__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b899)
  store %struct.Memory* %call_44b899, %struct.Memory** %MEMORY

  ; Code: .L_44b8a0:	 RIP: 44b8a0	 Bytes: 0
  br label %block_.L_44b8a0
block_.L_44b8a0:

  ; Code: cmpl $0x0, -0x20(%rbp)	 RIP: 44b8a0	 Bytes: 4
  %loadMem_44b8a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8a0 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8a0)
  store %struct.Memory* %call_44b8a0, %struct.Memory** %MEMORY

  ; Code: jne .L_44b934	 RIP: 44b8a4	 Bytes: 6
  %loadMem_44b8a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8a4 = call %struct.Memory* @routine_jne_.L_44b934(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8a4, i8* %BRANCH_TAKEN, i64 144, i64 6, i64 6)
  store %struct.Memory* %call_44b8a4, %struct.Memory** %MEMORY

  %loadBr_44b8a4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b8a4 = icmp eq i8 %loadBr_44b8a4, 1
  br i1 %cmpBr_44b8a4, label %block_.L_44b934, label %block_44b8aa

block_44b8aa:
  ; Code: leaq -0x1c(%rbp), %rdx	 RIP: 44b8aa	 Bytes: 4
  %loadMem_44b8aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8aa = call %struct.Memory* @routine_leaq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8aa)
  store %struct.Memory* %call_44b8aa, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edi	 RIP: 44b8ae	 Bytes: 3
  %loadMem_44b8ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8ae = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8ae)
  store %struct.Memory* %call_44b8ae, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %esi	 RIP: 44b8b1	 Bytes: 3
  %loadMem_44b8b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8b1 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8b1)
  store %struct.Memory* %call_44b8b1, %struct.Memory** %MEMORY

  ; Code: callq .owl_does_defend	 RIP: 44b8b4	 Bytes: 5
  %loadMem1_44b8b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44b8b4 = call %struct.Memory* @routine_callq_.owl_does_defend(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44b8b4, i64 2828, i64 5, i64 5)
  store %struct.Memory* %call1_44b8b4, %struct.Memory** %MEMORY

  %loadMem2_44b8b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44b8b4 = load i64, i64* %3
  %call2_44b8b4 = call %struct.Memory* @sub_44c3c0.owl_does_defend(%struct.State* %0, i64  %loadPC_44b8b4, %struct.Memory* %loadMem2_44b8b4)
  store %struct.Memory* %call2_44b8b4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, %eax	 RIP: 44b8b9	 Bytes: 3
  %loadMem_44b8b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8b9 = call %struct.Memory* @routine_cmpl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8b9)
  store %struct.Memory* %call_44b8b9, %struct.Memory** %MEMORY

  ; Code: je .L_44b934	 RIP: 44b8bc	 Bytes: 6
  %loadMem_44b8bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8bc = call %struct.Memory* @routine_je_.L_44b934(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8bc, i8* %BRANCH_TAKEN, i64 120, i64 6, i64 6)
  store %struct.Memory* %call_44b8bc, %struct.Memory** %MEMORY

  %loadBr_44b8bc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b8bc = icmp eq i8 %loadBr_44b8bc, 1
  br i1 %cmpBr_44b8bc, label %block_.L_44b934, label %block_44b8c2

block_44b8c2:
  ; Code: movl 0xab0f24, %eax	 RIP: 44b8c2	 Bytes: 7
  %loadMem_44b8c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8c2 = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8c2)
  store %struct.Memory* %call_44b8c2, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %eax	 RIP: 44b8c9	 Bytes: 3
  %loadMem_44b8c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8c9 = call %struct.Memory* @routine_andl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8c9)
  store %struct.Memory* %call_44b8c9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44b8cc	 Bytes: 3
  %loadMem_44b8cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8cc = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8cc)
  store %struct.Memory* %call_44b8cc, %struct.Memory** %MEMORY

  ; Code: jne .L_44b8da	 RIP: 44b8cf	 Bytes: 6
  %loadMem_44b8cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8cf = call %struct.Memory* @routine_jne_.L_44b8da(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8cf, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_44b8cf, %struct.Memory** %MEMORY

  %loadBr_44b8cf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b8cf = icmp eq i8 %loadBr_44b8cf, 1
  br i1 %cmpBr_44b8cf, label %block_.L_44b8da, label %block_44b8d5

block_44b8d5:
  ; Code: jmpq .L_44b900	 RIP: 44b8d5	 Bytes: 5
  %loadMem_44b8d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8d5 = call %struct.Memory* @routine_jmpq_.L_44b900(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8d5, i64 43, i64 5)
  store %struct.Memory* %call_44b8d5, %struct.Memory** %MEMORY

  br label %block_.L_44b900

  ; Code: .L_44b8da:	 RIP: 44b8da	 Bytes: 0
block_.L_44b8da:

  ; Code: movq $0x57eada, %rdi	 RIP: 44b8da	 Bytes: 10
  %loadMem_44b8da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8da = call %struct.Memory* @routine_movq__0x57eada___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8da)
  store %struct.Memory* %call_44b8da, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %esi	 RIP: 44b8e4	 Bytes: 3
  %loadMem_44b8e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8e4 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8e4)
  store %struct.Memory* %call_44b8e4, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 44b8e7	 Bytes: 3
  %loadMem_44b8e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8e7 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8e7)
  store %struct.Memory* %call_44b8e7, %struct.Memory** %MEMORY

  ; Code: movl 0xafdfb0, %eax	 RIP: 44b8ea	 Bytes: 7
  %loadMem_44b8ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8ea = call %struct.Memory* @routine_movl_0xafdfb0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8ea)
  store %struct.Memory* %call_44b8ea, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44b8f1	 Bytes: 3
  %loadMem_44b8f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8f1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8f1)
  store %struct.Memory* %call_44b8f1, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 44b8f4	 Bytes: 2
  %loadMem_44b8f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8f4 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8f4)
  store %struct.Memory* %call_44b8f4, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44b8f6	 Bytes: 2
  %loadMem_44b8f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8f6 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8f6)
  store %struct.Memory* %call_44b8f6, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 44b8f8	 Bytes: 5
  %loadMem1_44b8f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44b8f8 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44b8f8, i64 25784, i64 5, i64 5)
  store %struct.Memory* %call1_44b8f8, %struct.Memory** %MEMORY

  %loadMem2_44b8f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44b8f8 = load i64, i64* %3
  %call2_44b8f8 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_44b8f8, %struct.Memory* %loadMem2_44b8f8)
  store %struct.Memory* %call2_44b8f8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 44b8fd	 Bytes: 3
  %loadMem_44b8fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b8fd = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b8fd)
  store %struct.Memory* %call_44b8fd, %struct.Memory** %MEMORY

  ; Code: .L_44b900:	 RIP: 44b900	 Bytes: 0
  br label %block_.L_44b900
block_.L_44b900:

  ; Code: movq $0xb4bd20, %rax	 RIP: 44b900	 Bytes: 10
  %loadMem_44b900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b900 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b900)
  store %struct.Memory* %call_44b900, %struct.Memory** %MEMORY

  ; Code: movq 0xab0fe0, %rcx	 RIP: 44b90a	 Bytes: 8
  %loadMem_44b90a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b90a = call %struct.Memory* @routine_movq_0xab0fe0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b90a)
  store %struct.Memory* %call_44b90a, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 44b912	 Bytes: 4
  %loadMem_44b912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b912 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b912)
  store %struct.Memory* %call_44b912, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rdx, %rdx	 RIP: 44b916	 Bytes: 4
  %loadMem_44b916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b916 = call %struct.Memory* @routine_imulq__0x4c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b916)
  store %struct.Memory* %call_44b916, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 44b91a	 Bytes: 3
  %loadMem_44b91a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b91a = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b91a)
  store %struct.Memory* %call_44b91a, %struct.Memory** %MEMORY

  ; Code: movslq 0x4(%rax), %rax	 RIP: 44b91d	 Bytes: 4
  %loadMem_44b91d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b91d = call %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b91d)
  store %struct.Memory* %call_44b91d, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, %rax, %rax	 RIP: 44b921	 Bytes: 4
  %loadMem_44b921 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b921 = call %struct.Memory* @routine_imulq__0x68___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b921)
  store %struct.Memory* %call_44b921, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rcx	 RIP: 44b925	 Bytes: 3
  %loadMem_44b925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b925 = call %struct.Memory* @routine_addq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b925)
  store %struct.Memory* %call_44b925, %struct.Memory** %MEMORY

  ; Code: movl $0x5, 0x3c(%rcx)	 RIP: 44b928	 Bytes: 7
  %loadMem_44b928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b928 = call %struct.Memory* @routine_movl__0x5__0x3c__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b928)
  store %struct.Memory* %call_44b928, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44c3a3	 RIP: 44b92f	 Bytes: 5
  %loadMem_44b92f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b92f = call %struct.Memory* @routine_jmpq_.L_44c3a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b92f, i64 2676, i64 5)
  store %struct.Memory* %call_44b92f, %struct.Memory** %MEMORY

  br label %block_.L_44c3a3

  ; Code: .L_44b934:	 RIP: 44b934	 Bytes: 0
block_.L_44b934:

  ; Code: jmpq .L_44b939	 RIP: 44b934	 Bytes: 5
  %loadMem_44b934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b934 = call %struct.Memory* @routine_jmpq_.L_44b939(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b934, i64 5, i64 5)
  store %struct.Memory* %call_44b934, %struct.Memory** %MEMORY

  br label %block_.L_44b939

  ; Code: .L_44b939:	 RIP: 44b939	 Bytes: 0
block_.L_44b939:

  ; Code: movq $0xb4bd20, %rax	 RIP: 44b939	 Bytes: 10
  %loadMem_44b939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b939 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b939)
  store %struct.Memory* %call_44b939, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44b943	 Bytes: 4
  %loadMem_44b943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b943 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b943)
  store %struct.Memory* %call_44b943, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44b947	 Bytes: 4
  %loadMem_44b947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b947 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b947)
  store %struct.Memory* %call_44b947, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44b94b	 Bytes: 3
  %loadMem_44b94b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b94b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b94b)
  store %struct.Memory* %call_44b94b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, 0x24(%rax)	 RIP: 44b94e	 Bytes: 4
  %loadMem_44b94e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b94e = call %struct.Memory* @routine_cmpl__0x3__0x24__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b94e)
  store %struct.Memory* %call_44b94e, %struct.Memory** %MEMORY

  ; Code: jne .L_44b9be	 RIP: 44b952	 Bytes: 6
  %loadMem_44b952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b952 = call %struct.Memory* @routine_jne_.L_44b9be(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b952, i8* %BRANCH_TAKEN, i64 108, i64 6, i64 6)
  store %struct.Memory* %call_44b952, %struct.Memory** %MEMORY

  %loadBr_44b952 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b952 = icmp eq i8 %loadBr_44b952, 1
  br i1 %cmpBr_44b952, label %block_.L_44b9be, label %block_44b958

block_44b958:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44b958	 Bytes: 10
  %loadMem_44b958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b958 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b958)
  store %struct.Memory* %call_44b958, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edi	 RIP: 44b962	 Bytes: 3
  %loadMem_44b962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b962 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b962)
  store %struct.Memory* %call_44b962, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 44b965	 Bytes: 3
  %loadMem_44b965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b965 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b965)
  store %struct.Memory* %call_44b965, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44b968	 Bytes: 4
  %loadMem_44b968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b968 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b968)
  store %struct.Memory* %call_44b968, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44b96c	 Bytes: 4
  %loadMem_44b96c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b96c = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b96c)
  store %struct.Memory* %call_44b96c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44b970	 Bytes: 3
  %loadMem_44b970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b970 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b970)
  store %struct.Memory* %call_44b970, %struct.Memory** %MEMORY

  ; Code: movl 0x44(%rax), %edx	 RIP: 44b973	 Bytes: 3
  %loadMem_44b973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b973 = call %struct.Memory* @routine_movl_0x44__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b973)
  store %struct.Memory* %call_44b973, %struct.Memory** %MEMORY

  ; Code: callq .add_gain_move	 RIP: 44b976	 Bytes: 5
  %loadMem1_44b976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44b976 = call %struct.Memory* @routine_callq_.add_gain_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44b976, i64 -96662, i64 5, i64 5)
  store %struct.Memory* %call1_44b976, %struct.Memory** %MEMORY

  %loadMem2_44b976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44b976 = load i64, i64* %3
  %call2_44b976 = call %struct.Memory* @sub_433fe0.add_gain_move(%struct.State* %0, i64  %loadPC_44b976, %struct.Memory* %loadMem2_44b976)
  store %struct.Memory* %call2_44b976, %struct.Memory** %MEMORY

  ; Code: movl 0xab0f24, %edx	 RIP: 44b97b	 Bytes: 7
  %loadMem_44b97b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b97b = call %struct.Memory* @routine_movl_0xab0f24___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b97b)
  store %struct.Memory* %call_44b97b, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %edx	 RIP: 44b982	 Bytes: 3
  %loadMem_44b982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b982 = call %struct.Memory* @routine_andl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b982)
  store %struct.Memory* %call_44b982, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 44b985	 Bytes: 3
  %loadMem_44b985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b985 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b985)
  store %struct.Memory* %call_44b985, %struct.Memory** %MEMORY

  ; Code: jne .L_44b993	 RIP: 44b988	 Bytes: 6
  %loadMem_44b988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b988 = call %struct.Memory* @routine_jne_.L_44b993(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b988, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_44b988, %struct.Memory** %MEMORY

  %loadBr_44b988 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b988 = icmp eq i8 %loadBr_44b988, 1
  br i1 %cmpBr_44b988, label %block_.L_44b993, label %block_44b98e

block_44b98e:
  ; Code: jmpq .L_44b9b9	 RIP: 44b98e	 Bytes: 5
  %loadMem_44b98e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b98e = call %struct.Memory* @routine_jmpq_.L_44b9b9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b98e, i64 43, i64 5)
  store %struct.Memory* %call_44b98e, %struct.Memory** %MEMORY

  br label %block_.L_44b9b9

  ; Code: .L_44b993:	 RIP: 44b993	 Bytes: 0
block_.L_44b993:

  ; Code: movq $0x57eb13, %rdi	 RIP: 44b993	 Bytes: 10
  %loadMem_44b993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b993 = call %struct.Memory* @routine_movq__0x57eb13___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b993)
  store %struct.Memory* %call_44b993, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %esi	 RIP: 44b99d	 Bytes: 3
  %loadMem_44b99d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b99d = call %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b99d)
  store %struct.Memory* %call_44b99d, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 44b9a0	 Bytes: 3
  %loadMem_44b9a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9a0 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9a0)
  store %struct.Memory* %call_44b9a0, %struct.Memory** %MEMORY

  ; Code: movl 0xafdfb0, %eax	 RIP: 44b9a3	 Bytes: 7
  %loadMem_44b9a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9a3 = call %struct.Memory* @routine_movl_0xafdfb0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9a3)
  store %struct.Memory* %call_44b9a3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44b9aa	 Bytes: 3
  %loadMem_44b9aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9aa = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9aa)
  store %struct.Memory* %call_44b9aa, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 44b9ad	 Bytes: 2
  %loadMem_44b9ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9ad = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9ad)
  store %struct.Memory* %call_44b9ad, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44b9af	 Bytes: 2
  %loadMem_44b9af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9af = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9af)
  store %struct.Memory* %call_44b9af, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 44b9b1	 Bytes: 5
  %loadMem1_44b9b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44b9b1 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44b9b1, i64 25599, i64 5, i64 5)
  store %struct.Memory* %call1_44b9b1, %struct.Memory** %MEMORY

  %loadMem2_44b9b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44b9b1 = load i64, i64* %3
  %call2_44b9b1 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_44b9b1, %struct.Memory* %loadMem2_44b9b1)
  store %struct.Memory* %call2_44b9b1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 44b9b6	 Bytes: 3
  %loadMem_44b9b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9b6 = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9b6)
  store %struct.Memory* %call_44b9b6, %struct.Memory** %MEMORY

  ; Code: .L_44b9b9:	 RIP: 44b9b9	 Bytes: 0
  br label %block_.L_44b9b9
block_.L_44b9b9:

  ; Code: jmpq .L_44ba24	 RIP: 44b9b9	 Bytes: 5
  %loadMem_44b9b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9b9 = call %struct.Memory* @routine_jmpq_.L_44ba24(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9b9, i64 107, i64 5)
  store %struct.Memory* %call_44b9b9, %struct.Memory** %MEMORY

  br label %block_.L_44ba24

  ; Code: .L_44b9be:	 RIP: 44b9be	 Bytes: 0
block_.L_44b9be:

  ; Code: movq $0xb4bd20, %rax	 RIP: 44b9be	 Bytes: 10
  %loadMem_44b9be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9be = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9be)
  store %struct.Memory* %call_44b9be, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %edi	 RIP: 44b9c8	 Bytes: 3
  %loadMem_44b9c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9c8 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9c8)
  store %struct.Memory* %call_44b9c8, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 44b9cb	 Bytes: 3
  %loadMem_44b9cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9cb = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9cb)
  store %struct.Memory* %call_44b9cb, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44b9ce	 Bytes: 4
  %loadMem_44b9ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9ce = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9ce)
  store %struct.Memory* %call_44b9ce, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44b9d2	 Bytes: 4
  %loadMem_44b9d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9d2 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9d2)
  store %struct.Memory* %call_44b9d2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44b9d6	 Bytes: 3
  %loadMem_44b9d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9d6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9d6)
  store %struct.Memory* %call_44b9d6, %struct.Memory** %MEMORY

  ; Code: movl 0x24(%rax), %edx	 RIP: 44b9d9	 Bytes: 3
  %loadMem_44b9d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9d9 = call %struct.Memory* @routine_movl_0x24__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9d9)
  store %struct.Memory* %call_44b9d9, %struct.Memory** %MEMORY

  ; Code: callq .add_owl_attack_move	 RIP: 44b9dc	 Bytes: 5
  %loadMem1_44b9dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44b9dc = call %struct.Memory* @routine_callq_.add_owl_attack_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44b9dc, i64 -95068, i64 5, i64 5)
  store %struct.Memory* %call1_44b9dc, %struct.Memory** %MEMORY

  %loadMem2_44b9dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44b9dc = load i64, i64* %3
  %call2_44b9dc = call %struct.Memory* @sub_434680.add_owl_attack_move(%struct.State* %0, i64  %loadPC_44b9dc, %struct.Memory* %loadMem2_44b9dc)
  store %struct.Memory* %call2_44b9dc, %struct.Memory** %MEMORY

  ; Code: movl 0xab0f24, %edx	 RIP: 44b9e1	 Bytes: 7
  %loadMem_44b9e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9e1 = call %struct.Memory* @routine_movl_0xab0f24___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9e1)
  store %struct.Memory* %call_44b9e1, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %edx	 RIP: 44b9e8	 Bytes: 3
  %loadMem_44b9e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9e8 = call %struct.Memory* @routine_andl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9e8)
  store %struct.Memory* %call_44b9e8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 44b9eb	 Bytes: 3
  %loadMem_44b9eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9eb = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9eb)
  store %struct.Memory* %call_44b9eb, %struct.Memory** %MEMORY

  ; Code: jne .L_44b9f9	 RIP: 44b9ee	 Bytes: 6
  %loadMem_44b9ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9ee = call %struct.Memory* @routine_jne_.L_44b9f9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9ee, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_44b9ee, %struct.Memory** %MEMORY

  %loadBr_44b9ee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44b9ee = icmp eq i8 %loadBr_44b9ee, 1
  br i1 %cmpBr_44b9ee, label %block_.L_44b9f9, label %block_44b9f4

block_44b9f4:
  ; Code: jmpq .L_44ba1f	 RIP: 44b9f4	 Bytes: 5
  %loadMem_44b9f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9f4 = call %struct.Memory* @routine_jmpq_.L_44ba1f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9f4, i64 43, i64 5)
  store %struct.Memory* %call_44b9f4, %struct.Memory** %MEMORY

  br label %block_.L_44ba1f

  ; Code: .L_44b9f9:	 RIP: 44b9f9	 Bytes: 0
block_.L_44b9f9:

  ; Code: movq $0x57eb3e, %rdi	 RIP: 44b9f9	 Bytes: 10
  %loadMem_44b9f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44b9f9 = call %struct.Memory* @routine_movq__0x57eb3e___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44b9f9)
  store %struct.Memory* %call_44b9f9, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %esi	 RIP: 44ba03	 Bytes: 3
  %loadMem_44ba03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba03 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba03)
  store %struct.Memory* %call_44ba03, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 44ba06	 Bytes: 3
  %loadMem_44ba06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba06 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba06)
  store %struct.Memory* %call_44ba06, %struct.Memory** %MEMORY

  ; Code: movl 0xafdfb0, %eax	 RIP: 44ba09	 Bytes: 7
  %loadMem_44ba09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba09 = call %struct.Memory* @routine_movl_0xafdfb0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba09)
  store %struct.Memory* %call_44ba09, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44ba10	 Bytes: 3
  %loadMem_44ba10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba10 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba10)
  store %struct.Memory* %call_44ba10, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 44ba13	 Bytes: 2
  %loadMem_44ba13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba13 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba13)
  store %struct.Memory* %call_44ba13, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44ba15	 Bytes: 2
  %loadMem_44ba15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba15 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba15)
  store %struct.Memory* %call_44ba15, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 44ba17	 Bytes: 5
  %loadMem1_44ba17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44ba17 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44ba17, i64 25497, i64 5, i64 5)
  store %struct.Memory* %call1_44ba17, %struct.Memory** %MEMORY

  %loadMem2_44ba17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ba17 = load i64, i64* %3
  %call2_44ba17 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_44ba17, %struct.Memory* %loadMem2_44ba17)
  store %struct.Memory* %call2_44ba17, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 44ba1c	 Bytes: 3
  %loadMem_44ba1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba1c = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba1c)
  store %struct.Memory* %call_44ba1c, %struct.Memory** %MEMORY

  ; Code: .L_44ba1f:	 RIP: 44ba1f	 Bytes: 0
  br label %block_.L_44ba1f
block_.L_44ba1f:

  ; Code: jmpq .L_44ba24	 RIP: 44ba1f	 Bytes: 5
  %loadMem_44ba1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba1f = call %struct.Memory* @routine_jmpq_.L_44ba24(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba1f, i64 5, i64 5)
  store %struct.Memory* %call_44ba1f, %struct.Memory** %MEMORY

  br label %block_.L_44ba24

  ; Code: .L_44ba24:	 RIP: 44ba24	 Bytes: 0
block_.L_44ba24:

  ; Code: jmpq .L_44ba29	 RIP: 44ba24	 Bytes: 5
  %loadMem_44ba24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba24 = call %struct.Memory* @routine_jmpq_.L_44ba29(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba24, i64 5, i64 5)
  store %struct.Memory* %call_44ba24, %struct.Memory** %MEMORY

  br label %block_.L_44ba29

  ; Code: .L_44ba29:	 RIP: 44ba29	 Bytes: 0
block_.L_44ba29:

  ; Code: jmpq .L_44c39e	 RIP: 44ba29	 Bytes: 5
  %loadMem_44ba29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba29 = call %struct.Memory* @routine_jmpq_.L_44c39e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba29, i64 2421, i64 5)
  store %struct.Memory* %call_44ba29, %struct.Memory** %MEMORY

  br label %block_.L_44c39e

  ; Code: .L_44ba2e:	 RIP: 44ba2e	 Bytes: 0
block_.L_44ba2e:

  ; Code: movq $0xb4bd20, %rax	 RIP: 44ba2e	 Bytes: 10
  %loadMem_44ba2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba2e = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba2e)
  store %struct.Memory* %call_44ba2e, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44ba38	 Bytes: 4
  %loadMem_44ba38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba38 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba38)
  store %struct.Memory* %call_44ba38, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44ba3c	 Bytes: 4
  %loadMem_44ba3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba3c = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba3c)
  store %struct.Memory* %call_44ba3c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44ba40	 Bytes: 3
  %loadMem_44ba40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba40 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba40)
  store %struct.Memory* %call_44ba40, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x1c(%rax)	 RIP: 44ba43	 Bytes: 4
  %loadMem_44ba43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba43 = call %struct.Memory* @routine_cmpl__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba43)
  store %struct.Memory* %call_44ba43, %struct.Memory** %MEMORY

  ; Code: jne .L_44bcd7	 RIP: 44ba47	 Bytes: 6
  %loadMem_44ba47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba47 = call %struct.Memory* @routine_jne_.L_44bcd7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba47, i8* %BRANCH_TAKEN, i64 656, i64 6, i64 6)
  store %struct.Memory* %call_44ba47, %struct.Memory** %MEMORY

  %loadBr_44ba47 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ba47 = icmp eq i8 %loadBr_44ba47, 1
  br i1 %cmpBr_44ba47, label %block_.L_44bcd7, label %block_44ba4d

block_44ba4d:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44ba4d	 Bytes: 10
  %loadMem_44ba4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba4d = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba4d)
  store %struct.Memory* %call_44ba4d, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44ba57	 Bytes: 4
  %loadMem_44ba57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba57 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba57)
  store %struct.Memory* %call_44ba57, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44ba5b	 Bytes: 4
  %loadMem_44ba5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba5b = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba5b)
  store %struct.Memory* %call_44ba5b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44ba5f	 Bytes: 3
  %loadMem_44ba5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba5f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba5f)
  store %struct.Memory* %call_44ba5f, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc, 0x18(%rax)	 RIP: 44ba62	 Bytes: 4
  %loadMem_44ba62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba62 = call %struct.Memory* @routine_cmpl__0xc__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba62)
  store %struct.Memory* %call_44ba62, %struct.Memory** %MEMORY

  ; Code: jne .L_44bcd7	 RIP: 44ba66	 Bytes: 6
  %loadMem_44ba66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba66 = call %struct.Memory* @routine_jne_.L_44bcd7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba66, i8* %BRANCH_TAKEN, i64 625, i64 6, i64 6)
  store %struct.Memory* %call_44ba66, %struct.Memory** %MEMORY

  %loadBr_44ba66 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ba66 = icmp eq i8 %loadBr_44ba66, 1
  br i1 %cmpBr_44ba66, label %block_.L_44bcd7, label %block_44ba6c

block_44ba6c:
  ; Code: movslq -0x8(%rbp), %rax	 RIP: 44ba6c	 Bytes: 4
  %loadMem_44ba6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba6c = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba6c)
  store %struct.Memory* %call_44ba6c, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 44ba70	 Bytes: 8
  %loadMem_44ba70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba70 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba70)
  store %struct.Memory* %call_44ba70, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %ecx	 RIP: 44ba78	 Bytes: 3
  %loadMem_44ba78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba78 = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba78)
  store %struct.Memory* %call_44ba78, %struct.Memory** %MEMORY

  ; Code: jne .L_44bb20	 RIP: 44ba7b	 Bytes: 6
  %loadMem_44ba7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba7b = call %struct.Memory* @routine_jne_.L_44bb20(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba7b, i8* %BRANCH_TAKEN, i64 165, i64 6, i64 6)
  store %struct.Memory* %call_44ba7b, %struct.Memory** %MEMORY

  %loadBr_44ba7b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ba7b = icmp eq i8 %loadBr_44ba7b, 1
  br i1 %cmpBr_44ba7b, label %block_.L_44bb20, label %block_44ba81

block_44ba81:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44ba81	 Bytes: 10
  %loadMem_44ba81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba81 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba81)
  store %struct.Memory* %call_44ba81, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44ba8b	 Bytes: 4
  %loadMem_44ba8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba8b = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba8b)
  store %struct.Memory* %call_44ba8b, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44ba8f	 Bytes: 4
  %loadMem_44ba8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba8f = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba8f)
  store %struct.Memory* %call_44ba8f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44ba93	 Bytes: 3
  %loadMem_44ba93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba93 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba93)
  store %struct.Memory* %call_44ba93, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x30(%rax)	 RIP: 44ba96	 Bytes: 4
  %loadMem_44ba96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba96 = call %struct.Memory* @routine_cmpl__0x0__0x30__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba96)
  store %struct.Memory* %call_44ba96, %struct.Memory** %MEMORY

  ; Code: je .L_44bb20	 RIP: 44ba9a	 Bytes: 6
  %loadMem_44ba9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ba9a = call %struct.Memory* @routine_je_.L_44bb20(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ba9a, i8* %BRANCH_TAKEN, i64 134, i64 6, i64 6)
  store %struct.Memory* %call_44ba9a, %struct.Memory** %MEMORY

  %loadBr_44ba9a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ba9a = icmp eq i8 %loadBr_44ba9a, 1
  br i1 %cmpBr_44ba9a, label %block_.L_44bb20, label %block_44baa0

block_44baa0:
  ; Code: movl $0x5, %edx	 RIP: 44baa0	 Bytes: 5
  %loadMem_44baa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44baa0 = call %struct.Memory* @routine_movl__0x5___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44baa0)
  store %struct.Memory* %call_44baa0, %struct.Memory** %MEMORY

  ; Code: movq $0xb4bd20, %rax	 RIP: 44baa5	 Bytes: 10
  %loadMem_44baa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44baa5 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44baa5)
  store %struct.Memory* %call_44baa5, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44baaf	 Bytes: 4
  %loadMem_44baaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44baaf = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44baaf)
  store %struct.Memory* %call_44baaf, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44bab3	 Bytes: 4
  %loadMem_44bab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bab3 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bab3)
  store %struct.Memory* %call_44bab3, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44bab7	 Bytes: 3
  %loadMem_44bab7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bab7 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bab7)
  store %struct.Memory* %call_44bab7, %struct.Memory** %MEMORY

  ; Code: movl 0x30(%rax), %edi	 RIP: 44baba	 Bytes: 3
  %loadMem_44baba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44baba = call %struct.Memory* @routine_movl_0x30__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44baba)
  store %struct.Memory* %call_44baba, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 44babd	 Bytes: 3
  %loadMem_44babd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44babd = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44babd)
  store %struct.Memory* %call_44babd, %struct.Memory** %MEMORY

  ; Code: callq .add_owl_defense_threat_move	 RIP: 44bac0	 Bytes: 5
  %loadMem1_44bac0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44bac0 = call %struct.Memory* @routine_callq_.add_owl_defense_threat_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44bac0, i64 -94048, i64 5, i64 5)
  store %struct.Memory* %call1_44bac0, %struct.Memory** %MEMORY

  %loadMem2_44bac0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bac0 = load i64, i64* %3
  %call2_44bac0 = call %struct.Memory* @sub_434b60.add_owl_defense_threat_move(%struct.State* %0, i64  %loadPC_44bac0, %struct.Memory* %loadMem2_44bac0)
  store %struct.Memory* %call2_44bac0, %struct.Memory** %MEMORY

  ; Code: movl 0xab0f24, %edx	 RIP: 44bac5	 Bytes: 7
  %loadMem_44bac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bac5 = call %struct.Memory* @routine_movl_0xab0f24___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bac5)
  store %struct.Memory* %call_44bac5, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %edx	 RIP: 44bacc	 Bytes: 3
  %loadMem_44bacc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bacc = call %struct.Memory* @routine_andl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bacc)
  store %struct.Memory* %call_44bacc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 44bacf	 Bytes: 3
  %loadMem_44bacf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bacf = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bacf)
  store %struct.Memory* %call_44bacf, %struct.Memory** %MEMORY

  ; Code: jne .L_44badd	 RIP: 44bad2	 Bytes: 6
  %loadMem_44bad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bad2 = call %struct.Memory* @routine_jne_.L_44badd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bad2, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_44bad2, %struct.Memory** %MEMORY

  %loadBr_44bad2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bad2 = icmp eq i8 %loadBr_44bad2, 1
  br i1 %cmpBr_44bad2, label %block_.L_44badd, label %block_44bad8

block_44bad8:
  ; Code: jmpq .L_44bb1b	 RIP: 44bad8	 Bytes: 5
  %loadMem_44bad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bad8 = call %struct.Memory* @routine_jmpq_.L_44bb1b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bad8, i64 67, i64 5)
  store %struct.Memory* %call_44bad8, %struct.Memory** %MEMORY

  br label %block_.L_44bb1b

  ; Code: .L_44badd:	 RIP: 44badd	 Bytes: 0
block_.L_44badd:

  ; Code: movq $0x57eb5f, %rdi	 RIP: 44badd	 Bytes: 10
  %loadMem_44badd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44badd = call %struct.Memory* @routine_movq__0x57eb5f___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44badd)
  store %struct.Memory* %call_44badd, %struct.Memory** %MEMORY

  ; Code: movq $0xb4bd20, %rax	 RIP: 44bae7	 Bytes: 10
  %loadMem_44bae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bae7 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bae7)
  store %struct.Memory* %call_44bae7, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44baf1	 Bytes: 4
  %loadMem_44baf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44baf1 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44baf1)
  store %struct.Memory* %call_44baf1, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44baf5	 Bytes: 4
  %loadMem_44baf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44baf5 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44baf5)
  store %struct.Memory* %call_44baf5, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44baf9	 Bytes: 3
  %loadMem_44baf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44baf9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44baf9)
  store %struct.Memory* %call_44baf9, %struct.Memory** %MEMORY

  ; Code: movl 0x30(%rax), %esi	 RIP: 44bafc	 Bytes: 3
  %loadMem_44bafc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bafc = call %struct.Memory* @routine_movl_0x30__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bafc)
  store %struct.Memory* %call_44bafc, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 44baff	 Bytes: 3
  %loadMem_44baff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44baff = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44baff)
  store %struct.Memory* %call_44baff, %struct.Memory** %MEMORY

  ; Code: movl 0xafdfb0, %r8d	 RIP: 44bb02	 Bytes: 8
  %loadMem_44bb02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb02 = call %struct.Memory* @routine_movl_0xafdfb0___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb02)
  store %struct.Memory* %call_44bb02, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r8d	 RIP: 44bb0a	 Bytes: 4
  %loadMem_44bb0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb0a = call %struct.Memory* @routine_addl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb0a)
  store %struct.Memory* %call_44bb0a, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 44bb0e	 Bytes: 3
  %loadMem_44bb0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb0e = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb0e)
  store %struct.Memory* %call_44bb0e, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44bb11	 Bytes: 2
  %loadMem_44bb11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb11 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb11)
  store %struct.Memory* %call_44bb11, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 44bb13	 Bytes: 5
  %loadMem1_44bb13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44bb13 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44bb13, i64 25245, i64 5, i64 5)
  store %struct.Memory* %call1_44bb13, %struct.Memory** %MEMORY

  %loadMem2_44bb13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bb13 = load i64, i64* %3
  %call2_44bb13 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_44bb13, %struct.Memory* %loadMem2_44bb13)
  store %struct.Memory* %call2_44bb13, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 44bb18	 Bytes: 3
  %loadMem_44bb18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb18 = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb18)
  store %struct.Memory* %call_44bb18, %struct.Memory** %MEMORY

  ; Code: .L_44bb1b:	 RIP: 44bb1b	 Bytes: 0
  br label %block_.L_44bb1b
block_.L_44bb1b:

  ; Code: jmpq .L_44bb20	 RIP: 44bb1b	 Bytes: 5
  %loadMem_44bb1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb1b = call %struct.Memory* @routine_jmpq_.L_44bb20(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb1b, i64 5, i64 5)
  store %struct.Memory* %call_44bb1b, %struct.Memory** %MEMORY

  br label %block_.L_44bb20

  ; Code: .L_44bb20:	 RIP: 44bb20	 Bytes: 0
block_.L_44bb20:

  ; Code: movslq -0x8(%rbp), %rax	 RIP: 44bb20	 Bytes: 4
  %loadMem_44bb20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb20 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb20)
  store %struct.Memory* %call_44bb20, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 44bb24	 Bytes: 8
  %loadMem_44bb24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb24 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb24)
  store %struct.Memory* %call_44bb24, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %ecx	 RIP: 44bb2c	 Bytes: 3
  %loadMem_44bb2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb2c = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb2c)
  store %struct.Memory* %call_44bb2c, %struct.Memory** %MEMORY

  ; Code: jne .L_44bbfd	 RIP: 44bb2f	 Bytes: 6
  %loadMem_44bb2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb2f = call %struct.Memory* @routine_jne_.L_44bbfd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb2f, i8* %BRANCH_TAKEN, i64 206, i64 6, i64 6)
  store %struct.Memory* %call_44bb2f, %struct.Memory** %MEMORY

  %loadBr_44bb2f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bb2f = icmp eq i8 %loadBr_44bb2f, 1
  br i1 %cmpBr_44bb2f, label %block_.L_44bbfd, label %block_44bb35

block_44bb35:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44bb35	 Bytes: 10
  %loadMem_44bb35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb35 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb35)
  store %struct.Memory* %call_44bb35, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44bb3f	 Bytes: 4
  %loadMem_44bb3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb3f = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb3f)
  store %struct.Memory* %call_44bb3f, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44bb43	 Bytes: 4
  %loadMem_44bb43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb43 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb43)
  store %struct.Memory* %call_44bb43, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44bb47	 Bytes: 3
  %loadMem_44bb47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb47 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb47)
  store %struct.Memory* %call_44bb47, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x3c(%rax)	 RIP: 44bb4a	 Bytes: 4
  %loadMem_44bb4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb4a = call %struct.Memory* @routine_cmpl__0x0__0x3c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb4a)
  store %struct.Memory* %call_44bb4a, %struct.Memory** %MEMORY

  ; Code: je .L_44bbfd	 RIP: 44bb4e	 Bytes: 6
  %loadMem_44bb4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb4e = call %struct.Memory* @routine_je_.L_44bbfd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb4e, i8* %BRANCH_TAKEN, i64 175, i64 6, i64 6)
  store %struct.Memory* %call_44bb4e, %struct.Memory** %MEMORY

  %loadBr_44bb4e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bb4e = icmp eq i8 %loadBr_44bb4e, 1
  br i1 %cmpBr_44bb4e, label %block_.L_44bbfd, label %block_44bb54

block_44bb54:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44bb54	 Bytes: 10
  %loadMem_44bb54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb54 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb54)
  store %struct.Memory* %call_44bb54, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44bb5e	 Bytes: 4
  %loadMem_44bb5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb5e = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb5e)
  store %struct.Memory* %call_44bb5e, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44bb62	 Bytes: 4
  %loadMem_44bb62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb62 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb62)
  store %struct.Memory* %call_44bb62, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44bb66	 Bytes: 3
  %loadMem_44bb66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb66 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb66)
  store %struct.Memory* %call_44bb66, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %edi	 RIP: 44bb69	 Bytes: 3
  %loadMem_44bb69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb69 = call %struct.Memory* @routine_movl_0x3c__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb69)
  store %struct.Memory* %call_44bb69, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 44bb6c	 Bytes: 3
  %loadMem_44bb6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb6c = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb6c)
  store %struct.Memory* %call_44bb6c, %struct.Memory** %MEMORY

  ; Code: callq .is_legal	 RIP: 44bb6f	 Bytes: 5
  %loadMem1_44bb6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44bb6f = call %struct.Memory* @routine_callq_.is_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44bb6f, i64 -250015, i64 5, i64 5)
  store %struct.Memory* %call1_44bb6f, %struct.Memory** %MEMORY

  %loadMem2_44bb6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bb6f = load i64, i64* %3
  %call2_44bb6f = call %struct.Memory* @sub_40ead0.is_legal(%struct.State* %0, i64  %loadPC_44bb6f, %struct.Memory* %loadMem2_44bb6f)
  store %struct.Memory* %call2_44bb6f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44bb74	 Bytes: 3
  %loadMem_44bb74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb74 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb74)
  store %struct.Memory* %call_44bb74, %struct.Memory** %MEMORY

  ; Code: je .L_44bbfd	 RIP: 44bb77	 Bytes: 6
  %loadMem_44bb77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb77 = call %struct.Memory* @routine_je_.L_44bbfd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb77, i8* %BRANCH_TAKEN, i64 134, i64 6, i64 6)
  store %struct.Memory* %call_44bb77, %struct.Memory** %MEMORY

  %loadBr_44bb77 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bb77 = icmp eq i8 %loadBr_44bb77, 1
  br i1 %cmpBr_44bb77, label %block_.L_44bbfd, label %block_44bb7d

block_44bb7d:
  ; Code: movl $0x5, %edx	 RIP: 44bb7d	 Bytes: 5
  %loadMem_44bb7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb7d = call %struct.Memory* @routine_movl__0x5___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb7d)
  store %struct.Memory* %call_44bb7d, %struct.Memory** %MEMORY

  ; Code: movq $0xb4bd20, %rax	 RIP: 44bb82	 Bytes: 10
  %loadMem_44bb82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb82 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb82)
  store %struct.Memory* %call_44bb82, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44bb8c	 Bytes: 4
  %loadMem_44bb8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb8c = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb8c)
  store %struct.Memory* %call_44bb8c, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44bb90	 Bytes: 4
  %loadMem_44bb90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb90 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb90)
  store %struct.Memory* %call_44bb90, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44bb94	 Bytes: 3
  %loadMem_44bb94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb94 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb94)
  store %struct.Memory* %call_44bb94, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %edi	 RIP: 44bb97	 Bytes: 3
  %loadMem_44bb97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb97 = call %struct.Memory* @routine_movl_0x3c__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb97)
  store %struct.Memory* %call_44bb97, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 44bb9a	 Bytes: 3
  %loadMem_44bb9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bb9a = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bb9a)
  store %struct.Memory* %call_44bb9a, %struct.Memory** %MEMORY

  ; Code: callq .add_owl_defense_threat_move	 RIP: 44bb9d	 Bytes: 5
  %loadMem1_44bb9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44bb9d = call %struct.Memory* @routine_callq_.add_owl_defense_threat_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44bb9d, i64 -94269, i64 5, i64 5)
  store %struct.Memory* %call1_44bb9d, %struct.Memory** %MEMORY

  %loadMem2_44bb9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bb9d = load i64, i64* %3
  %call2_44bb9d = call %struct.Memory* @sub_434b60.add_owl_defense_threat_move(%struct.State* %0, i64  %loadPC_44bb9d, %struct.Memory* %loadMem2_44bb9d)
  store %struct.Memory* %call2_44bb9d, %struct.Memory** %MEMORY

  ; Code: movl 0xab0f24, %edx	 RIP: 44bba2	 Bytes: 7
  %loadMem_44bba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bba2 = call %struct.Memory* @routine_movl_0xab0f24___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bba2)
  store %struct.Memory* %call_44bba2, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %edx	 RIP: 44bba9	 Bytes: 3
  %loadMem_44bba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bba9 = call %struct.Memory* @routine_andl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bba9)
  store %struct.Memory* %call_44bba9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 44bbac	 Bytes: 3
  %loadMem_44bbac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bbac = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bbac)
  store %struct.Memory* %call_44bbac, %struct.Memory** %MEMORY

  ; Code: jne .L_44bbba	 RIP: 44bbaf	 Bytes: 6
  %loadMem_44bbaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bbaf = call %struct.Memory* @routine_jne_.L_44bbba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bbaf, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_44bbaf, %struct.Memory** %MEMORY

  %loadBr_44bbaf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bbaf = icmp eq i8 %loadBr_44bbaf, 1
  br i1 %cmpBr_44bbaf, label %block_.L_44bbba, label %block_44bbb5

block_44bbb5:
  ; Code: jmpq .L_44bbf8	 RIP: 44bbb5	 Bytes: 5
  %loadMem_44bbb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bbb5 = call %struct.Memory* @routine_jmpq_.L_44bbf8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bbb5, i64 67, i64 5)
  store %struct.Memory* %call_44bbb5, %struct.Memory** %MEMORY

  br label %block_.L_44bbf8

  ; Code: .L_44bbba:	 RIP: 44bbba	 Bytes: 0
block_.L_44bbba:

  ; Code: movq $0x57eb5f, %rdi	 RIP: 44bbba	 Bytes: 10
  %loadMem_44bbba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bbba = call %struct.Memory* @routine_movq__0x57eb5f___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bbba)
  store %struct.Memory* %call_44bbba, %struct.Memory** %MEMORY

  ; Code: movq $0xb4bd20, %rax	 RIP: 44bbc4	 Bytes: 10
  %loadMem_44bbc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bbc4 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bbc4)
  store %struct.Memory* %call_44bbc4, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44bbce	 Bytes: 4
  %loadMem_44bbce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bbce = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bbce)
  store %struct.Memory* %call_44bbce, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44bbd2	 Bytes: 4
  %loadMem_44bbd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bbd2 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bbd2)
  store %struct.Memory* %call_44bbd2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44bbd6	 Bytes: 3
  %loadMem_44bbd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bbd6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bbd6)
  store %struct.Memory* %call_44bbd6, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %esi	 RIP: 44bbd9	 Bytes: 3
  %loadMem_44bbd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bbd9 = call %struct.Memory* @routine_movl_0x3c__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bbd9)
  store %struct.Memory* %call_44bbd9, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 44bbdc	 Bytes: 3
  %loadMem_44bbdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bbdc = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bbdc)
  store %struct.Memory* %call_44bbdc, %struct.Memory** %MEMORY

  ; Code: movl 0xafdfb0, %r8d	 RIP: 44bbdf	 Bytes: 8
  %loadMem_44bbdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bbdf = call %struct.Memory* @routine_movl_0xafdfb0___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bbdf)
  store %struct.Memory* %call_44bbdf, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r8d	 RIP: 44bbe7	 Bytes: 4
  %loadMem_44bbe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bbe7 = call %struct.Memory* @routine_addl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bbe7)
  store %struct.Memory* %call_44bbe7, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 44bbeb	 Bytes: 3
  %loadMem_44bbeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bbeb = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bbeb)
  store %struct.Memory* %call_44bbeb, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44bbee	 Bytes: 2
  %loadMem_44bbee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bbee = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bbee)
  store %struct.Memory* %call_44bbee, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 44bbf0	 Bytes: 5
  %loadMem1_44bbf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44bbf0 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44bbf0, i64 25024, i64 5, i64 5)
  store %struct.Memory* %call1_44bbf0, %struct.Memory** %MEMORY

  %loadMem2_44bbf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bbf0 = load i64, i64* %3
  %call2_44bbf0 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_44bbf0, %struct.Memory* %loadMem2_44bbf0)
  store %struct.Memory* %call2_44bbf0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40(%rbp)	 RIP: 44bbf5	 Bytes: 3
  %loadMem_44bbf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bbf5 = call %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bbf5)
  store %struct.Memory* %call_44bbf5, %struct.Memory** %MEMORY

  ; Code: .L_44bbf8:	 RIP: 44bbf8	 Bytes: 0
  br label %block_.L_44bbf8
block_.L_44bbf8:

  ; Code: jmpq .L_44bbfd	 RIP: 44bbf8	 Bytes: 5
  %loadMem_44bbf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bbf8 = call %struct.Memory* @routine_jmpq_.L_44bbfd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bbf8, i64 5, i64 5)
  store %struct.Memory* %call_44bbf8, %struct.Memory** %MEMORY

  br label %block_.L_44bbfd

  ; Code: .L_44bbfd:	 RIP: 44bbfd	 Bytes: 0
block_.L_44bbfd:

  ; Code: movl $0x3, %eax	 RIP: 44bbfd	 Bytes: 5
  %loadMem_44bbfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bbfd = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bbfd)
  store %struct.Memory* %call_44bbfd, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44bc02	 Bytes: 4
  %loadMem_44bc02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc02 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc02)
  store %struct.Memory* %call_44bc02, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %edx	 RIP: 44bc06	 Bytes: 8
  %loadMem_44bc06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc06 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc06)
  store %struct.Memory* %call_44bc06, %struct.Memory** %MEMORY

  ; Code: subl -0x4(%rbp), %eax	 RIP: 44bc0e	 Bytes: 3
  %loadMem_44bc0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc0e = call %struct.Memory* @routine_subl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc0e)
  store %struct.Memory* %call_44bc0e, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %edx	 RIP: 44bc11	 Bytes: 2
  %loadMem_44bc11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc11 = call %struct.Memory* @routine_cmpl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc11)
  store %struct.Memory* %call_44bc11, %struct.Memory** %MEMORY

  ; Code: jne .L_44bcd2	 RIP: 44bc13	 Bytes: 6
  %loadMem_44bc13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc13 = call %struct.Memory* @routine_jne_.L_44bcd2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc13, i8* %BRANCH_TAKEN, i64 191, i64 6, i64 6)
  store %struct.Memory* %call_44bc13, %struct.Memory** %MEMORY

  %loadBr_44bc13 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bc13 = icmp eq i8 %loadBr_44bc13, 1
  br i1 %cmpBr_44bc13, label %block_.L_44bcd2, label %block_44bc19

block_44bc19:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44bc19	 Bytes: 10
  %loadMem_44bc19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc19 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc19)
  store %struct.Memory* %call_44bc19, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44bc23	 Bytes: 4
  %loadMem_44bc23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc23 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc23)
  store %struct.Memory* %call_44bc23, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44bc27	 Bytes: 4
  %loadMem_44bc27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc27 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc27)
  store %struct.Memory* %call_44bc27, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44bc2b	 Bytes: 3
  %loadMem_44bc2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc2b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc2b)
  store %struct.Memory* %call_44bc2b, %struct.Memory** %MEMORY

  ; Code: cmpl $0xc, 0x18(%rax)	 RIP: 44bc2e	 Bytes: 4
  %loadMem_44bc2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc2e = call %struct.Memory* @routine_cmpl__0xc__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc2e)
  store %struct.Memory* %call_44bc2e, %struct.Memory** %MEMORY

  ; Code: jne .L_44bcd2	 RIP: 44bc32	 Bytes: 6
  %loadMem_44bc32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc32 = call %struct.Memory* @routine_jne_.L_44bcd2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc32, i8* %BRANCH_TAKEN, i64 160, i64 6, i64 6)
  store %struct.Memory* %call_44bc32, %struct.Memory** %MEMORY

  %loadBr_44bc32 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bc32 = icmp eq i8 %loadBr_44bc32, 1
  br i1 %cmpBr_44bc32, label %block_.L_44bcd2, label %block_44bc38

block_44bc38:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44bc38	 Bytes: 10
  %loadMem_44bc38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc38 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc38)
  store %struct.Memory* %call_44bc38, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44bc42	 Bytes: 4
  %loadMem_44bc42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc42 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc42)
  store %struct.Memory* %call_44bc42, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44bc46	 Bytes: 4
  %loadMem_44bc46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc46 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc46)
  store %struct.Memory* %call_44bc46, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44bc4a	 Bytes: 3
  %loadMem_44bc4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc4a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc4a)
  store %struct.Memory* %call_44bc4a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x20(%rax)	 RIP: 44bc4d	 Bytes: 4
  %loadMem_44bc4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc4d = call %struct.Memory* @routine_cmpl__0x0__0x20__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc4d)
  store %struct.Memory* %call_44bc4d, %struct.Memory** %MEMORY

  ; Code: je .L_44bcd2	 RIP: 44bc51	 Bytes: 6
  %loadMem_44bc51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc51 = call %struct.Memory* @routine_je_.L_44bcd2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc51, i8* %BRANCH_TAKEN, i64 129, i64 6, i64 6)
  store %struct.Memory* %call_44bc51, %struct.Memory** %MEMORY

  %loadBr_44bc51 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bc51 = icmp eq i8 %loadBr_44bc51, 1
  br i1 %cmpBr_44bc51, label %block_.L_44bcd2, label %block_44bc57

block_44bc57:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44bc57	 Bytes: 10
  %loadMem_44bc57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc57 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc57)
  store %struct.Memory* %call_44bc57, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44bc61	 Bytes: 4
  %loadMem_44bc61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc61 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc61)
  store %struct.Memory* %call_44bc61, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44bc65	 Bytes: 4
  %loadMem_44bc65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc65 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc65)
  store %struct.Memory* %call_44bc65, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44bc69	 Bytes: 3
  %loadMem_44bc69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc69 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc69)
  store %struct.Memory* %call_44bc69, %struct.Memory** %MEMORY

  ; Code: movl 0x20(%rax), %edi	 RIP: 44bc6c	 Bytes: 3
  %loadMem_44bc6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc6c = call %struct.Memory* @routine_movl_0x20__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc6c)
  store %struct.Memory* %call_44bc6c, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 44bc6f	 Bytes: 3
  %loadMem_44bc6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc6f = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc6f)
  store %struct.Memory* %call_44bc6f, %struct.Memory** %MEMORY

  ; Code: callq .add_owl_prevent_threat_move	 RIP: 44bc72	 Bytes: 5
  %loadMem1_44bc72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44bc72 = call %struct.Memory* @routine_callq_.add_owl_prevent_threat_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44bc72, i64 -94162, i64 5, i64 5)
  store %struct.Memory* %call1_44bc72, %struct.Memory** %MEMORY

  %loadMem2_44bc72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bc72 = load i64, i64* %3
  %call2_44bc72 = call %struct.Memory* @sub_434ca0.add_owl_prevent_threat_move(%struct.State* %0, i64  %loadPC_44bc72, %struct.Memory* %loadMem2_44bc72)
  store %struct.Memory* %call2_44bc72, %struct.Memory** %MEMORY

  ; Code: movl 0xab0f24, %esi	 RIP: 44bc77	 Bytes: 7
  %loadMem_44bc77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc77 = call %struct.Memory* @routine_movl_0xab0f24___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc77)
  store %struct.Memory* %call_44bc77, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %esi	 RIP: 44bc7e	 Bytes: 3
  %loadMem_44bc7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc7e = call %struct.Memory* @routine_andl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc7e)
  store %struct.Memory* %call_44bc7e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %esi	 RIP: 44bc81	 Bytes: 3
  %loadMem_44bc81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc81 = call %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc81)
  store %struct.Memory* %call_44bc81, %struct.Memory** %MEMORY

  ; Code: jne .L_44bc8f	 RIP: 44bc84	 Bytes: 6
  %loadMem_44bc84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc84 = call %struct.Memory* @routine_jne_.L_44bc8f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc84, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_44bc84, %struct.Memory** %MEMORY

  %loadBr_44bc84 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bc84 = icmp eq i8 %loadBr_44bc84, 1
  br i1 %cmpBr_44bc84, label %block_.L_44bc8f, label %block_44bc8a

block_44bc8a:
  ; Code: jmpq .L_44bccd	 RIP: 44bc8a	 Bytes: 5
  %loadMem_44bc8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc8a = call %struct.Memory* @routine_jmpq_.L_44bccd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc8a, i64 67, i64 5)
  store %struct.Memory* %call_44bc8a, %struct.Memory** %MEMORY

  br label %block_.L_44bccd

  ; Code: .L_44bc8f:	 RIP: 44bc8f	 Bytes: 0
block_.L_44bc8f:

  ; Code: movq $0x57eb8c, %rdi	 RIP: 44bc8f	 Bytes: 10
  %loadMem_44bc8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc8f = call %struct.Memory* @routine_movq__0x57eb8c___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc8f)
  store %struct.Memory* %call_44bc8f, %struct.Memory** %MEMORY

  ; Code: movq $0xb4bd20, %rax	 RIP: 44bc99	 Bytes: 10
  %loadMem_44bc99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bc99 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bc99)
  store %struct.Memory* %call_44bc99, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44bca3	 Bytes: 4
  %loadMem_44bca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bca3 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bca3)
  store %struct.Memory* %call_44bca3, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44bca7	 Bytes: 4
  %loadMem_44bca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bca7 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bca7)
  store %struct.Memory* %call_44bca7, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44bcab	 Bytes: 3
  %loadMem_44bcab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bcab = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bcab)
  store %struct.Memory* %call_44bcab, %struct.Memory** %MEMORY

  ; Code: movl 0x20(%rax), %esi	 RIP: 44bcae	 Bytes: 3
  %loadMem_44bcae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bcae = call %struct.Memory* @routine_movl_0x20__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bcae)
  store %struct.Memory* %call_44bcae, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 44bcb1	 Bytes: 3
  %loadMem_44bcb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bcb1 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bcb1)
  store %struct.Memory* %call_44bcb1, %struct.Memory** %MEMORY

  ; Code: movl 0xafdfb0, %r8d	 RIP: 44bcb4	 Bytes: 8
  %loadMem_44bcb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bcb4 = call %struct.Memory* @routine_movl_0xafdfb0___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bcb4)
  store %struct.Memory* %call_44bcb4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r8d	 RIP: 44bcbc	 Bytes: 4
  %loadMem_44bcbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bcbc = call %struct.Memory* @routine_addl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bcbc)
  store %struct.Memory* %call_44bcbc, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 44bcc0	 Bytes: 3
  %loadMem_44bcc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bcc0 = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bcc0)
  store %struct.Memory* %call_44bcc0, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44bcc3	 Bytes: 2
  %loadMem_44bcc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bcc3 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bcc3)
  store %struct.Memory* %call_44bcc3, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 44bcc5	 Bytes: 5
  %loadMem1_44bcc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44bcc5 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44bcc5, i64 24811, i64 5, i64 5)
  store %struct.Memory* %call1_44bcc5, %struct.Memory** %MEMORY

  %loadMem2_44bcc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bcc5 = load i64, i64* %3
  %call2_44bcc5 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_44bcc5, %struct.Memory* %loadMem2_44bcc5)
  store %struct.Memory* %call2_44bcc5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x44(%rbp)	 RIP: 44bcca	 Bytes: 3
  %loadMem_44bcca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bcca = call %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bcca)
  store %struct.Memory* %call_44bcca, %struct.Memory** %MEMORY

  ; Code: .L_44bccd:	 RIP: 44bccd	 Bytes: 0
  br label %block_.L_44bccd
block_.L_44bccd:

  ; Code: jmpq .L_44bcd2	 RIP: 44bccd	 Bytes: 5
  %loadMem_44bccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bccd = call %struct.Memory* @routine_jmpq_.L_44bcd2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bccd, i64 5, i64 5)
  store %struct.Memory* %call_44bccd, %struct.Memory** %MEMORY

  br label %block_.L_44bcd2

  ; Code: .L_44bcd2:	 RIP: 44bcd2	 Bytes: 0
block_.L_44bcd2:

  ; Code: jmpq .L_44c399	 RIP: 44bcd2	 Bytes: 5
  %loadMem_44bcd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bcd2 = call %struct.Memory* @routine_jmpq_.L_44c399(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bcd2, i64 1735, i64 5)
  store %struct.Memory* %call_44bcd2, %struct.Memory** %MEMORY

  br label %block_.L_44c399

  ; Code: .L_44bcd7:	 RIP: 44bcd7	 Bytes: 0
block_.L_44bcd7:

  ; Code: movq $0xb4bd20, %rax	 RIP: 44bcd7	 Bytes: 10
  %loadMem_44bcd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bcd7 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bcd7)
  store %struct.Memory* %call_44bcd7, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44bce1	 Bytes: 4
  %loadMem_44bce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bce1 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bce1)
  store %struct.Memory* %call_44bce1, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44bce5	 Bytes: 4
  %loadMem_44bce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bce5 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bce5)
  store %struct.Memory* %call_44bce5, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44bce9	 Bytes: 3
  %loadMem_44bce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bce9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bce9)
  store %struct.Memory* %call_44bce9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x1c(%rax)	 RIP: 44bcec	 Bytes: 4
  %loadMem_44bcec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bcec = call %struct.Memory* @routine_cmpl__0x1__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bcec)
  store %struct.Memory* %call_44bcec, %struct.Memory** %MEMORY

  ; Code: jne .L_44c290	 RIP: 44bcf0	 Bytes: 6
  %loadMem_44bcf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bcf0 = call %struct.Memory* @routine_jne_.L_44c290(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bcf0, i8* %BRANCH_TAKEN, i64 1440, i64 6, i64 6)
  store %struct.Memory* %call_44bcf0, %struct.Memory** %MEMORY

  %loadBr_44bcf0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bcf0 = icmp eq i8 %loadBr_44bcf0, 1
  br i1 %cmpBr_44bcf0, label %block_.L_44c290, label %block_44bcf6

block_44bcf6:
  ; Code: movl $0x3, %eax	 RIP: 44bcf6	 Bytes: 5
  %loadMem_44bcf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bcf6 = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bcf6)
  store %struct.Memory* %call_44bcf6, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44bcfb	 Bytes: 4
  %loadMem_44bcfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bcfb = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bcfb)
  store %struct.Memory* %call_44bcfb, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %edx	 RIP: 44bcff	 Bytes: 8
  %loadMem_44bcff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bcff = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bcff)
  store %struct.Memory* %call_44bcff, %struct.Memory** %MEMORY

  ; Code: subl -0x4(%rbp), %eax	 RIP: 44bd07	 Bytes: 3
  %loadMem_44bd07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd07 = call %struct.Memory* @routine_subl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd07)
  store %struct.Memory* %call_44bd07, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %edx	 RIP: 44bd0a	 Bytes: 2
  %loadMem_44bd0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd0a = call %struct.Memory* @routine_cmpl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd0a)
  store %struct.Memory* %call_44bd0a, %struct.Memory** %MEMORY

  ; Code: jne .L_44be9d	 RIP: 44bd0c	 Bytes: 6
  %loadMem_44bd0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd0c = call %struct.Memory* @routine_jne_.L_44be9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd0c, i8* %BRANCH_TAKEN, i64 401, i64 6, i64 6)
  store %struct.Memory* %call_44bd0c, %struct.Memory** %MEMORY

  %loadBr_44bd0c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bd0c = icmp eq i8 %loadBr_44bd0c, 1
  br i1 %cmpBr_44bd0c, label %block_.L_44be9d, label %block_44bd12

block_44bd12:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44bd12	 Bytes: 10
  %loadMem_44bd12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd12 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd12)
  store %struct.Memory* %call_44bd12, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44bd1c	 Bytes: 4
  %loadMem_44bd1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd1c = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd1c)
  store %struct.Memory* %call_44bd1c, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44bd20	 Bytes: 4
  %loadMem_44bd20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd20 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd20)
  store %struct.Memory* %call_44bd20, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44bd24	 Bytes: 3
  %loadMem_44bd24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd24 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd24)
  store %struct.Memory* %call_44bd24, %struct.Memory** %MEMORY

  ; Code: cmpl $0xb, 0x18(%rax)	 RIP: 44bd27	 Bytes: 4
  %loadMem_44bd27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd27 = call %struct.Memory* @routine_cmpl__0xb__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd27)
  store %struct.Memory* %call_44bd27, %struct.Memory** %MEMORY

  ; Code: jne .L_44be9d	 RIP: 44bd2b	 Bytes: 6
  %loadMem_44bd2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd2b = call %struct.Memory* @routine_jne_.L_44be9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd2b, i8* %BRANCH_TAKEN, i64 370, i64 6, i64 6)
  store %struct.Memory* %call_44bd2b, %struct.Memory** %MEMORY

  %loadBr_44bd2b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bd2b = icmp eq i8 %loadBr_44bd2b, 1
  br i1 %cmpBr_44bd2b, label %block_.L_44be9d, label %block_44bd31

block_44bd31:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44bd31	 Bytes: 10
  %loadMem_44bd31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd31 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd31)
  store %struct.Memory* %call_44bd31, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44bd3b	 Bytes: 4
  %loadMem_44bd3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd3b = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd3b)
  store %struct.Memory* %call_44bd3b, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44bd3f	 Bytes: 4
  %loadMem_44bd3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd3f = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd3f)
  store %struct.Memory* %call_44bd3f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44bd43	 Bytes: 3
  %loadMem_44bd43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd43 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd43)
  store %struct.Memory* %call_44bd43, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x20(%rax)	 RIP: 44bd46	 Bytes: 4
  %loadMem_44bd46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd46 = call %struct.Memory* @routine_cmpl__0x0__0x20__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd46)
  store %struct.Memory* %call_44bd46, %struct.Memory** %MEMORY

  ; Code: je .L_44bdd0	 RIP: 44bd4a	 Bytes: 6
  %loadMem_44bd4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd4a = call %struct.Memory* @routine_je_.L_44bdd0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd4a, i8* %BRANCH_TAKEN, i64 134, i64 6, i64 6)
  store %struct.Memory* %call_44bd4a, %struct.Memory** %MEMORY

  %loadBr_44bd4a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bd4a = icmp eq i8 %loadBr_44bd4a, 1
  br i1 %cmpBr_44bd4a, label %block_.L_44bdd0, label %block_44bd50

block_44bd50:
  ; Code: movl $0x5, %edx	 RIP: 44bd50	 Bytes: 5
  %loadMem_44bd50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd50 = call %struct.Memory* @routine_movl__0x5___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd50)
  store %struct.Memory* %call_44bd50, %struct.Memory** %MEMORY

  ; Code: movq $0xb4bd20, %rax	 RIP: 44bd55	 Bytes: 10
  %loadMem_44bd55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd55 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd55)
  store %struct.Memory* %call_44bd55, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44bd5f	 Bytes: 4
  %loadMem_44bd5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd5f = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd5f)
  store %struct.Memory* %call_44bd5f, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44bd63	 Bytes: 4
  %loadMem_44bd63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd63 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd63)
  store %struct.Memory* %call_44bd63, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44bd67	 Bytes: 3
  %loadMem_44bd67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd67 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd67)
  store %struct.Memory* %call_44bd67, %struct.Memory** %MEMORY

  ; Code: movl 0x20(%rax), %edi	 RIP: 44bd6a	 Bytes: 3
  %loadMem_44bd6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd6a = call %struct.Memory* @routine_movl_0x20__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd6a)
  store %struct.Memory* %call_44bd6a, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 44bd6d	 Bytes: 3
  %loadMem_44bd6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd6d = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd6d)
  store %struct.Memory* %call_44bd6d, %struct.Memory** %MEMORY

  ; Code: callq .add_owl_attack_threat_move	 RIP: 44bd70	 Bytes: 5
  %loadMem1_44bd70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44bd70 = call %struct.Memory* @routine_callq_.add_owl_attack_threat_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44bd70, i64 -95408, i64 5, i64 5)
  store %struct.Memory* %call1_44bd70, %struct.Memory** %MEMORY

  %loadMem2_44bd70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bd70 = load i64, i64* %3
  %call2_44bd70 = call %struct.Memory* @sub_4348c0.add_owl_attack_threat_move(%struct.State* %0, i64  %loadPC_44bd70, %struct.Memory* %loadMem2_44bd70)
  store %struct.Memory* %call2_44bd70, %struct.Memory** %MEMORY

  ; Code: movl 0xab0f24, %edx	 RIP: 44bd75	 Bytes: 7
  %loadMem_44bd75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd75 = call %struct.Memory* @routine_movl_0xab0f24___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd75)
  store %struct.Memory* %call_44bd75, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %edx	 RIP: 44bd7c	 Bytes: 3
  %loadMem_44bd7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd7c = call %struct.Memory* @routine_andl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd7c)
  store %struct.Memory* %call_44bd7c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 44bd7f	 Bytes: 3
  %loadMem_44bd7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd7f = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd7f)
  store %struct.Memory* %call_44bd7f, %struct.Memory** %MEMORY

  ; Code: jne .L_44bd8d	 RIP: 44bd82	 Bytes: 6
  %loadMem_44bd82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd82 = call %struct.Memory* @routine_jne_.L_44bd8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd82, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_44bd82, %struct.Memory** %MEMORY

  %loadBr_44bd82 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bd82 = icmp eq i8 %loadBr_44bd82, 1
  br i1 %cmpBr_44bd82, label %block_.L_44bd8d, label %block_44bd88

block_44bd88:
  ; Code: jmpq .L_44bdcb	 RIP: 44bd88	 Bytes: 5
  %loadMem_44bd88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd88 = call %struct.Memory* @routine_jmpq_.L_44bdcb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd88, i64 67, i64 5)
  store %struct.Memory* %call_44bd88, %struct.Memory** %MEMORY

  br label %block_.L_44bdcb

  ; Code: .L_44bd8d:	 RIP: 44bd8d	 Bytes: 0
block_.L_44bd8d:

  ; Code: movq $0x57ebbf, %rdi	 RIP: 44bd8d	 Bytes: 10
  %loadMem_44bd8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd8d = call %struct.Memory* @routine_movq__0x57ebbf___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd8d)
  store %struct.Memory* %call_44bd8d, %struct.Memory** %MEMORY

  ; Code: movq $0xb4bd20, %rax	 RIP: 44bd97	 Bytes: 10
  %loadMem_44bd97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bd97 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bd97)
  store %struct.Memory* %call_44bd97, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44bda1	 Bytes: 4
  %loadMem_44bda1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bda1 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bda1)
  store %struct.Memory* %call_44bda1, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44bda5	 Bytes: 4
  %loadMem_44bda5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bda5 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bda5)
  store %struct.Memory* %call_44bda5, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44bda9	 Bytes: 3
  %loadMem_44bda9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bda9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bda9)
  store %struct.Memory* %call_44bda9, %struct.Memory** %MEMORY

  ; Code: movl 0x20(%rax), %esi	 RIP: 44bdac	 Bytes: 3
  %loadMem_44bdac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bdac = call %struct.Memory* @routine_movl_0x20__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bdac)
  store %struct.Memory* %call_44bdac, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 44bdaf	 Bytes: 3
  %loadMem_44bdaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bdaf = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bdaf)
  store %struct.Memory* %call_44bdaf, %struct.Memory** %MEMORY

  ; Code: movl 0xafdfb0, %r8d	 RIP: 44bdb2	 Bytes: 8
  %loadMem_44bdb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bdb2 = call %struct.Memory* @routine_movl_0xafdfb0___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bdb2)
  store %struct.Memory* %call_44bdb2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r8d	 RIP: 44bdba	 Bytes: 4
  %loadMem_44bdba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bdba = call %struct.Memory* @routine_addl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bdba)
  store %struct.Memory* %call_44bdba, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 44bdbe	 Bytes: 3
  %loadMem_44bdbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bdbe = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bdbe)
  store %struct.Memory* %call_44bdbe, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44bdc1	 Bytes: 2
  %loadMem_44bdc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bdc1 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bdc1)
  store %struct.Memory* %call_44bdc1, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 44bdc3	 Bytes: 5
  %loadMem1_44bdc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44bdc3 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44bdc3, i64 24557, i64 5, i64 5)
  store %struct.Memory* %call1_44bdc3, %struct.Memory** %MEMORY

  %loadMem2_44bdc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bdc3 = load i64, i64* %3
  %call2_44bdc3 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_44bdc3, %struct.Memory* %loadMem2_44bdc3)
  store %struct.Memory* %call2_44bdc3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 44bdc8	 Bytes: 3
  %loadMem_44bdc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bdc8 = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bdc8)
  store %struct.Memory* %call_44bdc8, %struct.Memory** %MEMORY

  ; Code: .L_44bdcb:	 RIP: 44bdcb	 Bytes: 0
  br label %block_.L_44bdcb
block_.L_44bdcb:

  ; Code: jmpq .L_44bdd0	 RIP: 44bdcb	 Bytes: 5
  %loadMem_44bdcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bdcb = call %struct.Memory* @routine_jmpq_.L_44bdd0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bdcb, i64 5, i64 5)
  store %struct.Memory* %call_44bdcb, %struct.Memory** %MEMORY

  br label %block_.L_44bdd0

  ; Code: .L_44bdd0:	 RIP: 44bdd0	 Bytes: 0
block_.L_44bdd0:

  ; Code: movq $0xb4bd20, %rax	 RIP: 44bdd0	 Bytes: 10
  %loadMem_44bdd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bdd0 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bdd0)
  store %struct.Memory* %call_44bdd0, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44bdda	 Bytes: 4
  %loadMem_44bdda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bdda = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bdda)
  store %struct.Memory* %call_44bdda, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44bdde	 Bytes: 4
  %loadMem_44bdde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bdde = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bdde)
  store %struct.Memory* %call_44bdde, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44bde2	 Bytes: 3
  %loadMem_44bde2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bde2 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bde2)
  store %struct.Memory* %call_44bde2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x2c(%rax)	 RIP: 44bde5	 Bytes: 4
  %loadMem_44bde5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bde5 = call %struct.Memory* @routine_cmpl__0x0__0x2c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bde5)
  store %struct.Memory* %call_44bde5, %struct.Memory** %MEMORY

  ; Code: je .L_44be98	 RIP: 44bde9	 Bytes: 6
  %loadMem_44bde9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bde9 = call %struct.Memory* @routine_je_.L_44be98(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bde9, i8* %BRANCH_TAKEN, i64 175, i64 6, i64 6)
  store %struct.Memory* %call_44bde9, %struct.Memory** %MEMORY

  %loadBr_44bde9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bde9 = icmp eq i8 %loadBr_44bde9, 1
  br i1 %cmpBr_44bde9, label %block_.L_44be98, label %block_44bdef

block_44bdef:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44bdef	 Bytes: 10
  %loadMem_44bdef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bdef = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bdef)
  store %struct.Memory* %call_44bdef, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44bdf9	 Bytes: 4
  %loadMem_44bdf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bdf9 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bdf9)
  store %struct.Memory* %call_44bdf9, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44bdfd	 Bytes: 4
  %loadMem_44bdfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bdfd = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bdfd)
  store %struct.Memory* %call_44bdfd, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44be01	 Bytes: 3
  %loadMem_44be01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be01 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be01)
  store %struct.Memory* %call_44be01, %struct.Memory** %MEMORY

  ; Code: movl 0x2c(%rax), %edi	 RIP: 44be04	 Bytes: 3
  %loadMem_44be04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be04 = call %struct.Memory* @routine_movl_0x2c__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be04)
  store %struct.Memory* %call_44be04, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %esi	 RIP: 44be07	 Bytes: 3
  %loadMem_44be07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be07 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be07)
  store %struct.Memory* %call_44be07, %struct.Memory** %MEMORY

  ; Code: callq .is_legal	 RIP: 44be0a	 Bytes: 5
  %loadMem1_44be0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44be0a = call %struct.Memory* @routine_callq_.is_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44be0a, i64 -250682, i64 5, i64 5)
  store %struct.Memory* %call1_44be0a, %struct.Memory** %MEMORY

  %loadMem2_44be0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44be0a = load i64, i64* %3
  %call2_44be0a = call %struct.Memory* @sub_40ead0.is_legal(%struct.State* %0, i64  %loadPC_44be0a, %struct.Memory* %loadMem2_44be0a)
  store %struct.Memory* %call2_44be0a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44be0f	 Bytes: 3
  %loadMem_44be0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be0f = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be0f)
  store %struct.Memory* %call_44be0f, %struct.Memory** %MEMORY

  ; Code: je .L_44be98	 RIP: 44be12	 Bytes: 6
  %loadMem_44be12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be12 = call %struct.Memory* @routine_je_.L_44be98(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be12, i8* %BRANCH_TAKEN, i64 134, i64 6, i64 6)
  store %struct.Memory* %call_44be12, %struct.Memory** %MEMORY

  %loadBr_44be12 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44be12 = icmp eq i8 %loadBr_44be12, 1
  br i1 %cmpBr_44be12, label %block_.L_44be98, label %block_44be18

block_44be18:
  ; Code: movl $0x5, %edx	 RIP: 44be18	 Bytes: 5
  %loadMem_44be18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be18 = call %struct.Memory* @routine_movl__0x5___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be18)
  store %struct.Memory* %call_44be18, %struct.Memory** %MEMORY

  ; Code: movq $0xb4bd20, %rax	 RIP: 44be1d	 Bytes: 10
  %loadMem_44be1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be1d = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be1d)
  store %struct.Memory* %call_44be1d, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44be27	 Bytes: 4
  %loadMem_44be27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be27 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be27)
  store %struct.Memory* %call_44be27, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44be2b	 Bytes: 4
  %loadMem_44be2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be2b = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be2b)
  store %struct.Memory* %call_44be2b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44be2f	 Bytes: 3
  %loadMem_44be2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be2f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be2f)
  store %struct.Memory* %call_44be2f, %struct.Memory** %MEMORY

  ; Code: movl 0x2c(%rax), %edi	 RIP: 44be32	 Bytes: 3
  %loadMem_44be32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be32 = call %struct.Memory* @routine_movl_0x2c__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be32)
  store %struct.Memory* %call_44be32, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 44be35	 Bytes: 3
  %loadMem_44be35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be35 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be35)
  store %struct.Memory* %call_44be35, %struct.Memory** %MEMORY

  ; Code: callq .add_owl_attack_threat_move	 RIP: 44be38	 Bytes: 5
  %loadMem1_44be38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44be38 = call %struct.Memory* @routine_callq_.add_owl_attack_threat_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44be38, i64 -95608, i64 5, i64 5)
  store %struct.Memory* %call1_44be38, %struct.Memory** %MEMORY

  %loadMem2_44be38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44be38 = load i64, i64* %3
  %call2_44be38 = call %struct.Memory* @sub_4348c0.add_owl_attack_threat_move(%struct.State* %0, i64  %loadPC_44be38, %struct.Memory* %loadMem2_44be38)
  store %struct.Memory* %call2_44be38, %struct.Memory** %MEMORY

  ; Code: movl 0xab0f24, %edx	 RIP: 44be3d	 Bytes: 7
  %loadMem_44be3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be3d = call %struct.Memory* @routine_movl_0xab0f24___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be3d)
  store %struct.Memory* %call_44be3d, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %edx	 RIP: 44be44	 Bytes: 3
  %loadMem_44be44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be44 = call %struct.Memory* @routine_andl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be44)
  store %struct.Memory* %call_44be44, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 44be47	 Bytes: 3
  %loadMem_44be47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be47 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be47)
  store %struct.Memory* %call_44be47, %struct.Memory** %MEMORY

  ; Code: jne .L_44be55	 RIP: 44be4a	 Bytes: 6
  %loadMem_44be4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be4a = call %struct.Memory* @routine_jne_.L_44be55(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be4a, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_44be4a, %struct.Memory** %MEMORY

  %loadBr_44be4a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44be4a = icmp eq i8 %loadBr_44be4a, 1
  br i1 %cmpBr_44be4a, label %block_.L_44be55, label %block_44be50

block_44be50:
  ; Code: jmpq .L_44be93	 RIP: 44be50	 Bytes: 5
  %loadMem_44be50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be50 = call %struct.Memory* @routine_jmpq_.L_44be93(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be50, i64 67, i64 5)
  store %struct.Memory* %call_44be50, %struct.Memory** %MEMORY

  br label %block_.L_44be93

  ; Code: .L_44be55:	 RIP: 44be55	 Bytes: 0
block_.L_44be55:

  ; Code: movq $0x57ebbf, %rdi	 RIP: 44be55	 Bytes: 10
  %loadMem_44be55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be55 = call %struct.Memory* @routine_movq__0x57ebbf___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be55)
  store %struct.Memory* %call_44be55, %struct.Memory** %MEMORY

  ; Code: movq $0xb4bd20, %rax	 RIP: 44be5f	 Bytes: 10
  %loadMem_44be5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be5f = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be5f)
  store %struct.Memory* %call_44be5f, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44be69	 Bytes: 4
  %loadMem_44be69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be69 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be69)
  store %struct.Memory* %call_44be69, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44be6d	 Bytes: 4
  %loadMem_44be6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be6d = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be6d)
  store %struct.Memory* %call_44be6d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44be71	 Bytes: 3
  %loadMem_44be71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be71 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be71)
  store %struct.Memory* %call_44be71, %struct.Memory** %MEMORY

  ; Code: movl 0x2c(%rax), %esi	 RIP: 44be74	 Bytes: 3
  %loadMem_44be74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be74 = call %struct.Memory* @routine_movl_0x2c__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be74)
  store %struct.Memory* %call_44be74, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 44be77	 Bytes: 3
  %loadMem_44be77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be77 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be77)
  store %struct.Memory* %call_44be77, %struct.Memory** %MEMORY

  ; Code: movl 0xafdfb0, %r8d	 RIP: 44be7a	 Bytes: 8
  %loadMem_44be7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be7a = call %struct.Memory* @routine_movl_0xafdfb0___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be7a)
  store %struct.Memory* %call_44be7a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r8d	 RIP: 44be82	 Bytes: 4
  %loadMem_44be82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be82 = call %struct.Memory* @routine_addl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be82)
  store %struct.Memory* %call_44be82, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 44be86	 Bytes: 3
  %loadMem_44be86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be86 = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be86)
  store %struct.Memory* %call_44be86, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44be89	 Bytes: 2
  %loadMem_44be89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be89 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be89)
  store %struct.Memory* %call_44be89, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 44be8b	 Bytes: 5
  %loadMem1_44be8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44be8b = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44be8b, i64 24357, i64 5, i64 5)
  store %struct.Memory* %call1_44be8b, %struct.Memory** %MEMORY

  %loadMem2_44be8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44be8b = load i64, i64* %3
  %call2_44be8b = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_44be8b, %struct.Memory* %loadMem2_44be8b)
  store %struct.Memory* %call2_44be8b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 44be90	 Bytes: 3
  %loadMem_44be90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be90 = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be90)
  store %struct.Memory* %call_44be90, %struct.Memory** %MEMORY

  ; Code: .L_44be93:	 RIP: 44be93	 Bytes: 0
  br label %block_.L_44be93
block_.L_44be93:

  ; Code: jmpq .L_44be98	 RIP: 44be93	 Bytes: 5
  %loadMem_44be93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be93 = call %struct.Memory* @routine_jmpq_.L_44be98(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be93, i64 5, i64 5)
  store %struct.Memory* %call_44be93, %struct.Memory** %MEMORY

  br label %block_.L_44be98

  ; Code: .L_44be98:	 RIP: 44be98	 Bytes: 0
block_.L_44be98:

  ; Code: jmpq .L_44c28b	 RIP: 44be98	 Bytes: 5
  %loadMem_44be98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be98 = call %struct.Memory* @routine_jmpq_.L_44c28b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be98, i64 1011, i64 5)
  store %struct.Memory* %call_44be98, %struct.Memory** %MEMORY

  br label %block_.L_44c28b

  ; Code: .L_44be9d:	 RIP: 44be9d	 Bytes: 0
block_.L_44be9d:

  ; Code: movl $0x3, %eax	 RIP: 44be9d	 Bytes: 5
  %loadMem_44be9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44be9d = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44be9d)
  store %struct.Memory* %call_44be9d, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44bea2	 Bytes: 4
  %loadMem_44bea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bea2 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bea2)
  store %struct.Memory* %call_44bea2, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %edx	 RIP: 44bea6	 Bytes: 8
  %loadMem_44bea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bea6 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bea6)
  store %struct.Memory* %call_44bea6, %struct.Memory** %MEMORY

  ; Code: subl -0x4(%rbp), %eax	 RIP: 44beae	 Bytes: 3
  %loadMem_44beae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44beae = call %struct.Memory* @routine_subl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44beae)
  store %struct.Memory* %call_44beae, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %edx	 RIP: 44beb1	 Bytes: 2
  %loadMem_44beb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44beb1 = call %struct.Memory* @routine_cmpl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44beb1)
  store %struct.Memory* %call_44beb1, %struct.Memory** %MEMORY

  ; Code: jne .L_44bf83	 RIP: 44beb3	 Bytes: 6
  %loadMem_44beb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44beb3 = call %struct.Memory* @routine_jne_.L_44bf83(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44beb3, i8* %BRANCH_TAKEN, i64 208, i64 6, i64 6)
  store %struct.Memory* %call_44beb3, %struct.Memory** %MEMORY

  %loadBr_44beb3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44beb3 = icmp eq i8 %loadBr_44beb3, 1
  br i1 %cmpBr_44beb3, label %block_.L_44bf83, label %block_44beb9

block_44beb9:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44beb9	 Bytes: 10
  %loadMem_44beb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44beb9 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44beb9)
  store %struct.Memory* %call_44beb9, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44bec3	 Bytes: 4
  %loadMem_44bec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bec3 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bec3)
  store %struct.Memory* %call_44bec3, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44bec7	 Bytes: 4
  %loadMem_44bec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bec7 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bec7)
  store %struct.Memory* %call_44bec7, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44becb	 Bytes: 3
  %loadMem_44becb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44becb = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44becb)
  store %struct.Memory* %call_44becb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x20(%rax)	 RIP: 44bece	 Bytes: 4
  %loadMem_44bece = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bece = call %struct.Memory* @routine_cmpl__0x0__0x20__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bece)
  store %struct.Memory* %call_44bece, %struct.Memory** %MEMORY

  ; Code: je .L_44bf83	 RIP: 44bed2	 Bytes: 6
  %loadMem_44bed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bed2 = call %struct.Memory* @routine_je_.L_44bf83(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bed2, i8* %BRANCH_TAKEN, i64 177, i64 6, i64 6)
  store %struct.Memory* %call_44bed2, %struct.Memory** %MEMORY

  %loadBr_44bed2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bed2 = icmp eq i8 %loadBr_44bed2, 1
  br i1 %cmpBr_44bed2, label %block_.L_44bf83, label %block_44bed8

block_44bed8:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44bed8	 Bytes: 10
  %loadMem_44bed8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bed8 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bed8)
  store %struct.Memory* %call_44bed8, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44bee2	 Bytes: 4
  %loadMem_44bee2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bee2 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bee2)
  store %struct.Memory* %call_44bee2, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44bee6	 Bytes: 4
  %loadMem_44bee6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bee6 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bee6)
  store %struct.Memory* %call_44bee6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44beea	 Bytes: 3
  %loadMem_44beea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44beea = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44beea)
  store %struct.Memory* %call_44beea, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, 0x24(%rax)	 RIP: 44beed	 Bytes: 4
  %loadMem_44beed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44beed = call %struct.Memory* @routine_cmpl__0x3__0x24__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44beed)
  store %struct.Memory* %call_44beed, %struct.Memory** %MEMORY

  ; Code: jne .L_44bf83	 RIP: 44bef1	 Bytes: 6
  %loadMem_44bef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bef1 = call %struct.Memory* @routine_jne_.L_44bf83(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bef1, i8* %BRANCH_TAKEN, i64 146, i64 6, i64 6)
  store %struct.Memory* %call_44bef1, %struct.Memory** %MEMORY

  %loadBr_44bef1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bef1 = icmp eq i8 %loadBr_44bef1, 1
  br i1 %cmpBr_44bef1, label %block_.L_44bf83, label %block_44bef7

block_44bef7:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44bef7	 Bytes: 10
  %loadMem_44bef7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bef7 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bef7)
  store %struct.Memory* %call_44bef7, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44bf01	 Bytes: 4
  %loadMem_44bf01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf01 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf01)
  store %struct.Memory* %call_44bf01, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44bf05	 Bytes: 4
  %loadMem_44bf05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf05 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf05)
  store %struct.Memory* %call_44bf05, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 44bf09	 Bytes: 3
  %loadMem_44bf09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf09 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf09)
  store %struct.Memory* %call_44bf09, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 44bf0c	 Bytes: 3
  %loadMem_44bf0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf0c = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf0c)
  store %struct.Memory* %call_44bf0c, %struct.Memory** %MEMORY

  ; Code: movl 0x20(%rdx), %edi	 RIP: 44bf0f	 Bytes: 3
  %loadMem_44bf0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf0f = call %struct.Memory* @routine_movl_0x20__rdx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf0f)
  store %struct.Memory* %call_44bf0f, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 44bf12	 Bytes: 3
  %loadMem_44bf12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf12 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf12)
  store %struct.Memory* %call_44bf12, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44bf15	 Bytes: 4
  %loadMem_44bf15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf15 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf15)
  store %struct.Memory* %call_44bf15, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44bf19	 Bytes: 4
  %loadMem_44bf19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf19 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf19)
  store %struct.Memory* %call_44bf19, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44bf1d	 Bytes: 3
  %loadMem_44bf1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf1d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf1d)
  store %struct.Memory* %call_44bf1d, %struct.Memory** %MEMORY

  ; Code: movl 0x44(%rax), %edx	 RIP: 44bf20	 Bytes: 3
  %loadMem_44bf20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf20 = call %struct.Memory* @routine_movl_0x44__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf20)
  store %struct.Memory* %call_44bf20, %struct.Memory** %MEMORY

  ; Code: callq .add_gain_move	 RIP: 44bf23	 Bytes: 5
  %loadMem1_44bf23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44bf23 = call %struct.Memory* @routine_callq_.add_gain_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44bf23, i64 -98115, i64 5, i64 5)
  store %struct.Memory* %call1_44bf23, %struct.Memory** %MEMORY

  %loadMem2_44bf23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bf23 = load i64, i64* %3
  %call2_44bf23 = call %struct.Memory* @sub_433fe0.add_gain_move(%struct.State* %0, i64  %loadPC_44bf23, %struct.Memory* %loadMem2_44bf23)
  store %struct.Memory* %call2_44bf23, %struct.Memory** %MEMORY

  ; Code: movl 0xab0f24, %edx	 RIP: 44bf28	 Bytes: 7
  %loadMem_44bf28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf28 = call %struct.Memory* @routine_movl_0xab0f24___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf28)
  store %struct.Memory* %call_44bf28, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %edx	 RIP: 44bf2f	 Bytes: 3
  %loadMem_44bf2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf2f = call %struct.Memory* @routine_andl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf2f)
  store %struct.Memory* %call_44bf2f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 44bf32	 Bytes: 3
  %loadMem_44bf32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf32 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf32)
  store %struct.Memory* %call_44bf32, %struct.Memory** %MEMORY

  ; Code: jne .L_44bf40	 RIP: 44bf35	 Bytes: 6
  %loadMem_44bf35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf35 = call %struct.Memory* @routine_jne_.L_44bf40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf35, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_44bf35, %struct.Memory** %MEMORY

  %loadBr_44bf35 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bf35 = icmp eq i8 %loadBr_44bf35, 1
  br i1 %cmpBr_44bf35, label %block_.L_44bf40, label %block_44bf3b

block_44bf3b:
  ; Code: jmpq .L_44bf7e	 RIP: 44bf3b	 Bytes: 5
  %loadMem_44bf3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf3b = call %struct.Memory* @routine_jmpq_.L_44bf7e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf3b, i64 67, i64 5)
  store %struct.Memory* %call_44bf3b, %struct.Memory** %MEMORY

  br label %block_.L_44bf7e

  ; Code: .L_44bf40:	 RIP: 44bf40	 Bytes: 0
block_.L_44bf40:

  ; Code: movq $0x57eb13, %rdi	 RIP: 44bf40	 Bytes: 10
  %loadMem_44bf40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf40 = call %struct.Memory* @routine_movq__0x57eb13___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf40)
  store %struct.Memory* %call_44bf40, %struct.Memory** %MEMORY

  ; Code: movq $0xb4bd20, %rax	 RIP: 44bf4a	 Bytes: 10
  %loadMem_44bf4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf4a = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf4a)
  store %struct.Memory* %call_44bf4a, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44bf54	 Bytes: 4
  %loadMem_44bf54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf54 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf54)
  store %struct.Memory* %call_44bf54, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44bf58	 Bytes: 4
  %loadMem_44bf58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf58 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf58)
  store %struct.Memory* %call_44bf58, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44bf5c	 Bytes: 3
  %loadMem_44bf5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf5c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf5c)
  store %struct.Memory* %call_44bf5c, %struct.Memory** %MEMORY

  ; Code: movl 0x20(%rax), %esi	 RIP: 44bf5f	 Bytes: 3
  %loadMem_44bf5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf5f = call %struct.Memory* @routine_movl_0x20__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf5f)
  store %struct.Memory* %call_44bf5f, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 44bf62	 Bytes: 3
  %loadMem_44bf62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf62 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf62)
  store %struct.Memory* %call_44bf62, %struct.Memory** %MEMORY

  ; Code: movl 0xafdfb0, %r8d	 RIP: 44bf65	 Bytes: 8
  %loadMem_44bf65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf65 = call %struct.Memory* @routine_movl_0xafdfb0___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf65)
  store %struct.Memory* %call_44bf65, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r8d	 RIP: 44bf6d	 Bytes: 4
  %loadMem_44bf6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf6d = call %struct.Memory* @routine_addl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf6d)
  store %struct.Memory* %call_44bf6d, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 44bf71	 Bytes: 3
  %loadMem_44bf71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf71 = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf71)
  store %struct.Memory* %call_44bf71, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44bf74	 Bytes: 2
  %loadMem_44bf74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf74 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf74)
  store %struct.Memory* %call_44bf74, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 44bf76	 Bytes: 5
  %loadMem1_44bf76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44bf76 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44bf76, i64 24122, i64 5, i64 5)
  store %struct.Memory* %call1_44bf76, %struct.Memory** %MEMORY

  %loadMem2_44bf76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44bf76 = load i64, i64* %3
  %call2_44bf76 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_44bf76, %struct.Memory* %loadMem2_44bf76)
  store %struct.Memory* %call2_44bf76, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 44bf7b	 Bytes: 3
  %loadMem_44bf7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf7b = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf7b)
  store %struct.Memory* %call_44bf7b, %struct.Memory** %MEMORY

  ; Code: .L_44bf7e:	 RIP: 44bf7e	 Bytes: 0
  br label %block_.L_44bf7e
block_.L_44bf7e:

  ; Code: jmpq .L_44c286	 RIP: 44bf7e	 Bytes: 5
  %loadMem_44bf7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf7e = call %struct.Memory* @routine_jmpq_.L_44c286(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf7e, i64 776, i64 5)
  store %struct.Memory* %call_44bf7e, %struct.Memory** %MEMORY

  br label %block_.L_44c286

  ; Code: .L_44bf83:	 RIP: 44bf83	 Bytes: 0
block_.L_44bf83:

  ; Code: movslq -0x8(%rbp), %rax	 RIP: 44bf83	 Bytes: 4
  %loadMem_44bf83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf83 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf83)
  store %struct.Memory* %call_44bf83, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 44bf87	 Bytes: 8
  %loadMem_44bf87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf87 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf87)
  store %struct.Memory* %call_44bf87, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %ecx	 RIP: 44bf8f	 Bytes: 3
  %loadMem_44bf8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf8f = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf8f)
  store %struct.Memory* %call_44bf8f, %struct.Memory** %MEMORY

  ; Code: jne .L_44c062	 RIP: 44bf92	 Bytes: 6
  %loadMem_44bf92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf92 = call %struct.Memory* @routine_jne_.L_44c062(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf92, i8* %BRANCH_TAKEN, i64 208, i64 6, i64 6)
  store %struct.Memory* %call_44bf92, %struct.Memory** %MEMORY

  %loadBr_44bf92 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bf92 = icmp eq i8 %loadBr_44bf92, 1
  br i1 %cmpBr_44bf92, label %block_.L_44c062, label %block_44bf98

block_44bf98:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44bf98	 Bytes: 10
  %loadMem_44bf98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bf98 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bf98)
  store %struct.Memory* %call_44bf98, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44bfa2	 Bytes: 4
  %loadMem_44bfa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfa2 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfa2)
  store %struct.Memory* %call_44bfa2, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44bfa6	 Bytes: 4
  %loadMem_44bfa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfa6 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfa6)
  store %struct.Memory* %call_44bfa6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44bfaa	 Bytes: 3
  %loadMem_44bfaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfaa = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfaa)
  store %struct.Memory* %call_44bfaa, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x30(%rax)	 RIP: 44bfad	 Bytes: 4
  %loadMem_44bfad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfad = call %struct.Memory* @routine_cmpl__0x0__0x30__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfad)
  store %struct.Memory* %call_44bfad, %struct.Memory** %MEMORY

  ; Code: je .L_44c062	 RIP: 44bfb1	 Bytes: 6
  %loadMem_44bfb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfb1 = call %struct.Memory* @routine_je_.L_44c062(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfb1, i8* %BRANCH_TAKEN, i64 177, i64 6, i64 6)
  store %struct.Memory* %call_44bfb1, %struct.Memory** %MEMORY

  %loadBr_44bfb1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bfb1 = icmp eq i8 %loadBr_44bfb1, 1
  br i1 %cmpBr_44bfb1, label %block_.L_44c062, label %block_44bfb7

block_44bfb7:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44bfb7	 Bytes: 10
  %loadMem_44bfb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfb7 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfb7)
  store %struct.Memory* %call_44bfb7, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44bfc1	 Bytes: 4
  %loadMem_44bfc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfc1 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfc1)
  store %struct.Memory* %call_44bfc1, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44bfc5	 Bytes: 4
  %loadMem_44bfc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfc5 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfc5)
  store %struct.Memory* %call_44bfc5, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44bfc9	 Bytes: 3
  %loadMem_44bfc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfc9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfc9)
  store %struct.Memory* %call_44bfc9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x34(%rax)	 RIP: 44bfcc	 Bytes: 4
  %loadMem_44bfcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfcc = call %struct.Memory* @routine_cmpl__0x2__0x34__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfcc)
  store %struct.Memory* %call_44bfcc, %struct.Memory** %MEMORY

  ; Code: jne .L_44c062	 RIP: 44bfd0	 Bytes: 6
  %loadMem_44bfd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfd0 = call %struct.Memory* @routine_jne_.L_44c062(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfd0, i8* %BRANCH_TAKEN, i64 146, i64 6, i64 6)
  store %struct.Memory* %call_44bfd0, %struct.Memory** %MEMORY

  %loadBr_44bfd0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44bfd0 = icmp eq i8 %loadBr_44bfd0, 1
  br i1 %cmpBr_44bfd0, label %block_.L_44c062, label %block_44bfd6

block_44bfd6:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44bfd6	 Bytes: 10
  %loadMem_44bfd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfd6 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfd6)
  store %struct.Memory* %call_44bfd6, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44bfe0	 Bytes: 4
  %loadMem_44bfe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfe0 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfe0)
  store %struct.Memory* %call_44bfe0, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44bfe4	 Bytes: 4
  %loadMem_44bfe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfe4 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfe4)
  store %struct.Memory* %call_44bfe4, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 44bfe8	 Bytes: 3
  %loadMem_44bfe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfe8 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfe8)
  store %struct.Memory* %call_44bfe8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 44bfeb	 Bytes: 3
  %loadMem_44bfeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfeb = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfeb)
  store %struct.Memory* %call_44bfeb, %struct.Memory** %MEMORY

  ; Code: movl 0x30(%rdx), %edi	 RIP: 44bfee	 Bytes: 3
  %loadMem_44bfee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfee = call %struct.Memory* @routine_movl_0x30__rdx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfee)
  store %struct.Memory* %call_44bfee, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 44bff1	 Bytes: 3
  %loadMem_44bff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bff1 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bff1)
  store %struct.Memory* %call_44bff1, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44bff4	 Bytes: 4
  %loadMem_44bff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bff4 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bff4)
  store %struct.Memory* %call_44bff4, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44bff8	 Bytes: 4
  %loadMem_44bff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bff8 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bff8)
  store %struct.Memory* %call_44bff8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44bffc	 Bytes: 3
  %loadMem_44bffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bffc = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bffc)
  store %struct.Memory* %call_44bffc, %struct.Memory** %MEMORY

  ; Code: movl 0x48(%rax), %edx	 RIP: 44bfff	 Bytes: 3
  %loadMem_44bfff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44bfff = call %struct.Memory* @routine_movl_0x48__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44bfff)
  store %struct.Memory* %call_44bfff, %struct.Memory** %MEMORY

  ; Code: callq .add_loss_move	 RIP: 44c002	 Bytes: 5
  %loadMem1_44c002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c002 = call %struct.Memory* @routine_callq_.add_loss_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c002, i64 -97826, i64 5, i64 5)
  store %struct.Memory* %call1_44c002, %struct.Memory** %MEMORY

  %loadMem2_44c002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c002 = load i64, i64* %3
  %call2_44c002 = call %struct.Memory* @sub_4341e0.add_loss_move(%struct.State* %0, i64  %loadPC_44c002, %struct.Memory* %loadMem2_44c002)
  store %struct.Memory* %call2_44c002, %struct.Memory** %MEMORY

  ; Code: movl 0xab0f24, %edx	 RIP: 44c007	 Bytes: 7
  %loadMem_44c007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c007 = call %struct.Memory* @routine_movl_0xab0f24___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c007)
  store %struct.Memory* %call_44c007, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %edx	 RIP: 44c00e	 Bytes: 3
  %loadMem_44c00e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c00e = call %struct.Memory* @routine_andl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c00e)
  store %struct.Memory* %call_44c00e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 44c011	 Bytes: 3
  %loadMem_44c011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c011 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c011)
  store %struct.Memory* %call_44c011, %struct.Memory** %MEMORY

  ; Code: jne .L_44c01f	 RIP: 44c014	 Bytes: 6
  %loadMem_44c014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c014 = call %struct.Memory* @routine_jne_.L_44c01f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c014, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_44c014, %struct.Memory** %MEMORY

  %loadBr_44c014 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c014 = icmp eq i8 %loadBr_44c014, 1
  br i1 %cmpBr_44c014, label %block_.L_44c01f, label %block_44c01a

block_44c01a:
  ; Code: jmpq .L_44c05d	 RIP: 44c01a	 Bytes: 5
  %loadMem_44c01a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c01a = call %struct.Memory* @routine_jmpq_.L_44c05d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c01a, i64 67, i64 5)
  store %struct.Memory* %call_44c01a, %struct.Memory** %MEMORY

  br label %block_.L_44c05d

  ; Code: .L_44c01f:	 RIP: 44c01f	 Bytes: 0
block_.L_44c01f:

  ; Code: movq $0x57ea8e, %rdi	 RIP: 44c01f	 Bytes: 10
  %loadMem_44c01f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c01f = call %struct.Memory* @routine_movq__0x57ea8e___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c01f)
  store %struct.Memory* %call_44c01f, %struct.Memory** %MEMORY

  ; Code: movq $0xb4bd20, %rax	 RIP: 44c029	 Bytes: 10
  %loadMem_44c029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c029 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c029)
  store %struct.Memory* %call_44c029, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44c033	 Bytes: 4
  %loadMem_44c033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c033 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c033)
  store %struct.Memory* %call_44c033, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44c037	 Bytes: 4
  %loadMem_44c037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c037 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c037)
  store %struct.Memory* %call_44c037, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44c03b	 Bytes: 3
  %loadMem_44c03b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c03b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c03b)
  store %struct.Memory* %call_44c03b, %struct.Memory** %MEMORY

  ; Code: movl 0x30(%rax), %esi	 RIP: 44c03e	 Bytes: 3
  %loadMem_44c03e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c03e = call %struct.Memory* @routine_movl_0x30__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c03e)
  store %struct.Memory* %call_44c03e, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 44c041	 Bytes: 3
  %loadMem_44c041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c041 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c041)
  store %struct.Memory* %call_44c041, %struct.Memory** %MEMORY

  ; Code: movl 0xafdfb0, %r8d	 RIP: 44c044	 Bytes: 8
  %loadMem_44c044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c044 = call %struct.Memory* @routine_movl_0xafdfb0___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c044)
  store %struct.Memory* %call_44c044, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r8d	 RIP: 44c04c	 Bytes: 4
  %loadMem_44c04c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c04c = call %struct.Memory* @routine_addl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c04c)
  store %struct.Memory* %call_44c04c, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 44c050	 Bytes: 3
  %loadMem_44c050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c050 = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c050)
  store %struct.Memory* %call_44c050, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44c053	 Bytes: 2
  %loadMem_44c053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c053 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c053)
  store %struct.Memory* %call_44c053, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 44c055	 Bytes: 5
  %loadMem1_44c055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c055 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c055, i64 23899, i64 5, i64 5)
  store %struct.Memory* %call1_44c055, %struct.Memory** %MEMORY

  %loadMem2_44c055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c055 = load i64, i64* %3
  %call2_44c055 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_44c055, %struct.Memory* %loadMem2_44c055)
  store %struct.Memory* %call2_44c055, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x54(%rbp)	 RIP: 44c05a	 Bytes: 3
  %loadMem_44c05a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c05a = call %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c05a)
  store %struct.Memory* %call_44c05a, %struct.Memory** %MEMORY

  ; Code: .L_44c05d:	 RIP: 44c05d	 Bytes: 0
  br label %block_.L_44c05d
block_.L_44c05d:

  ; Code: jmpq .L_44c281	 RIP: 44c05d	 Bytes: 5
  %loadMem_44c05d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c05d = call %struct.Memory* @routine_jmpq_.L_44c281(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c05d, i64 548, i64 5)
  store %struct.Memory* %call_44c05d, %struct.Memory** %MEMORY

  br label %block_.L_44c281

  ; Code: .L_44c062:	 RIP: 44c062	 Bytes: 0
block_.L_44c062:

  ; Code: movslq -0x8(%rbp), %rax	 RIP: 44c062	 Bytes: 4
  %loadMem_44c062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c062 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c062)
  store %struct.Memory* %call_44c062, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 44c066	 Bytes: 8
  %loadMem_44c066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c066 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c066)
  store %struct.Memory* %call_44c066, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %ecx	 RIP: 44c06e	 Bytes: 3
  %loadMem_44c06e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c06e = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c06e)
  store %struct.Memory* %call_44c06e, %struct.Memory** %MEMORY

  ; Code: jne .L_44c17f	 RIP: 44c071	 Bytes: 6
  %loadMem_44c071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c071 = call %struct.Memory* @routine_jne_.L_44c17f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c071, i8* %BRANCH_TAKEN, i64 270, i64 6, i64 6)
  store %struct.Memory* %call_44c071, %struct.Memory** %MEMORY

  %loadBr_44c071 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c071 = icmp eq i8 %loadBr_44c071, 1
  br i1 %cmpBr_44c071, label %block_.L_44c17f, label %block_44c077

block_44c077:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44c077	 Bytes: 10
  %loadMem_44c077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c077 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c077)
  store %struct.Memory* %call_44c077, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44c081	 Bytes: 4
  %loadMem_44c081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c081 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c081)
  store %struct.Memory* %call_44c081, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44c085	 Bytes: 4
  %loadMem_44c085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c085 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c085)
  store %struct.Memory* %call_44c085, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44c089	 Bytes: 3
  %loadMem_44c089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c089 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c089)
  store %struct.Memory* %call_44c089, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x20(%rax)	 RIP: 44c08c	 Bytes: 4
  %loadMem_44c08c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c08c = call %struct.Memory* @routine_cmpl__0x0__0x20__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c08c)
  store %struct.Memory* %call_44c08c, %struct.Memory** %MEMORY

  ; Code: je .L_44c17f	 RIP: 44c090	 Bytes: 6
  %loadMem_44c090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c090 = call %struct.Memory* @routine_je_.L_44c17f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c090, i8* %BRANCH_TAKEN, i64 239, i64 6, i64 6)
  store %struct.Memory* %call_44c090, %struct.Memory** %MEMORY

  %loadBr_44c090 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c090 = icmp eq i8 %loadBr_44c090, 1
  br i1 %cmpBr_44c090, label %block_.L_44c17f, label %block_44c096

block_44c096:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44c096	 Bytes: 10
  %loadMem_44c096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c096 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c096)
  store %struct.Memory* %call_44c096, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44c0a0	 Bytes: 4
  %loadMem_44c0a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0a0 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0a0)
  store %struct.Memory* %call_44c0a0, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44c0a4	 Bytes: 4
  %loadMem_44c0a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0a4 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0a4)
  store %struct.Memory* %call_44c0a4, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44c0a8	 Bytes: 3
  %loadMem_44c0a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0a8 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0a8)
  store %struct.Memory* %call_44c0a8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, 0x24(%rax)	 RIP: 44c0ab	 Bytes: 4
  %loadMem_44c0ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0ab = call %struct.Memory* @routine_cmpl__0x3__0x24__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0ab)
  store %struct.Memory* %call_44c0ab, %struct.Memory** %MEMORY

  ; Code: jne .L_44c17f	 RIP: 44c0af	 Bytes: 6
  %loadMem_44c0af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0af = call %struct.Memory* @routine_jne_.L_44c17f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0af, i8* %BRANCH_TAKEN, i64 208, i64 6, i64 6)
  store %struct.Memory* %call_44c0af, %struct.Memory** %MEMORY

  %loadBr_44c0af = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c0af = icmp eq i8 %loadBr_44c0af, 1
  br i1 %cmpBr_44c0af, label %block_.L_44c17f, label %block_44c0b5

block_44c0b5:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44c0b5	 Bytes: 10
  %loadMem_44c0b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0b5 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0b5)
  store %struct.Memory* %call_44c0b5, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44c0bf	 Bytes: 4
  %loadMem_44c0bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0bf = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0bf)
  store %struct.Memory* %call_44c0bf, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44c0c3	 Bytes: 4
  %loadMem_44c0c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0c3 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0c3)
  store %struct.Memory* %call_44c0c3, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44c0c7	 Bytes: 3
  %loadMem_44c0c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0c7 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0c7)
  store %struct.Memory* %call_44c0c7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, 0x34(%rax)	 RIP: 44c0ca	 Bytes: 4
  %loadMem_44c0ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0ca = call %struct.Memory* @routine_cmpl__0x5__0x34__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0ca)
  store %struct.Memory* %call_44c0ca, %struct.Memory** %MEMORY

  ; Code: jne .L_44c17f	 RIP: 44c0ce	 Bytes: 6
  %loadMem_44c0ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0ce = call %struct.Memory* @routine_jne_.L_44c17f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0ce, i8* %BRANCH_TAKEN, i64 177, i64 6, i64 6)
  store %struct.Memory* %call_44c0ce, %struct.Memory** %MEMORY

  %loadBr_44c0ce = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c0ce = icmp eq i8 %loadBr_44c0ce, 1
  br i1 %cmpBr_44c0ce, label %block_.L_44c17f, label %block_44c0d4

block_44c0d4:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44c0d4	 Bytes: 10
  %loadMem_44c0d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0d4 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0d4)
  store %struct.Memory* %call_44c0d4, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44c0de	 Bytes: 4
  %loadMem_44c0de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0de = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0de)
  store %struct.Memory* %call_44c0de, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44c0e2	 Bytes: 4
  %loadMem_44c0e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0e2 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0e2)
  store %struct.Memory* %call_44c0e2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44c0e6	 Bytes: 3
  %loadMem_44c0e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0e6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0e6)
  store %struct.Memory* %call_44c0e6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x30(%rax)	 RIP: 44c0e9	 Bytes: 4
  %loadMem_44c0e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0e9 = call %struct.Memory* @routine_cmpl__0x0__0x30__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0e9)
  store %struct.Memory* %call_44c0e9, %struct.Memory** %MEMORY

  ; Code: je .L_44c17f	 RIP: 44c0ed	 Bytes: 6
  %loadMem_44c0ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0ed = call %struct.Memory* @routine_je_.L_44c17f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0ed, i8* %BRANCH_TAKEN, i64 146, i64 6, i64 6)
  store %struct.Memory* %call_44c0ed, %struct.Memory** %MEMORY

  %loadBr_44c0ed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c0ed = icmp eq i8 %loadBr_44c0ed, 1
  br i1 %cmpBr_44c0ed, label %block_.L_44c17f, label %block_44c0f3

block_44c0f3:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44c0f3	 Bytes: 10
  %loadMem_44c0f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0f3 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0f3)
  store %struct.Memory* %call_44c0f3, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44c0fd	 Bytes: 4
  %loadMem_44c0fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c0fd = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c0fd)
  store %struct.Memory* %call_44c0fd, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44c101	 Bytes: 4
  %loadMem_44c101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c101 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c101)
  store %struct.Memory* %call_44c101, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 44c105	 Bytes: 3
  %loadMem_44c105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c105 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c105)
  store %struct.Memory* %call_44c105, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 44c108	 Bytes: 3
  %loadMem_44c108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c108 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c108)
  store %struct.Memory* %call_44c108, %struct.Memory** %MEMORY

  ; Code: movl 0x30(%rdx), %edi	 RIP: 44c10b	 Bytes: 3
  %loadMem_44c10b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c10b = call %struct.Memory* @routine_movl_0x30__rdx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c10b)
  store %struct.Memory* %call_44c10b, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 44c10e	 Bytes: 3
  %loadMem_44c10e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c10e = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c10e)
  store %struct.Memory* %call_44c10e, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44c111	 Bytes: 4
  %loadMem_44c111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c111 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c111)
  store %struct.Memory* %call_44c111, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44c115	 Bytes: 4
  %loadMem_44c115 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c115 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c115)
  store %struct.Memory* %call_44c115, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44c119	 Bytes: 3
  %loadMem_44c119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c119 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c119)
  store %struct.Memory* %call_44c119, %struct.Memory** %MEMORY

  ; Code: movl 0x34(%rax), %edx	 RIP: 44c11c	 Bytes: 3
  %loadMem_44c11c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c11c = call %struct.Memory* @routine_movl_0x34__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c11c)
  store %struct.Memory* %call_44c11c, %struct.Memory** %MEMORY

  ; Code: callq .add_owl_defense_move	 RIP: 44c11f	 Bytes: 5
  %loadMem1_44c11f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c11f = call %struct.Memory* @routine_callq_.add_owl_defense_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c11f, i64 -96639, i64 5, i64 5)
  store %struct.Memory* %call1_44c11f, %struct.Memory** %MEMORY

  %loadMem2_44c11f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c11f = load i64, i64* %3
  %call2_44c11f = call %struct.Memory* @sub_4347a0.add_owl_defense_move(%struct.State* %0, i64  %loadPC_44c11f, %struct.Memory* %loadMem2_44c11f)
  store %struct.Memory* %call2_44c11f, %struct.Memory** %MEMORY

  ; Code: movl 0xab0f24, %edx	 RIP: 44c124	 Bytes: 7
  %loadMem_44c124 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c124 = call %struct.Memory* @routine_movl_0xab0f24___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c124)
  store %struct.Memory* %call_44c124, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %edx	 RIP: 44c12b	 Bytes: 3
  %loadMem_44c12b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c12b = call %struct.Memory* @routine_andl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c12b)
  store %struct.Memory* %call_44c12b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 44c12e	 Bytes: 3
  %loadMem_44c12e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c12e = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c12e)
  store %struct.Memory* %call_44c12e, %struct.Memory** %MEMORY

  ; Code: jne .L_44c13c	 RIP: 44c131	 Bytes: 6
  %loadMem_44c131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c131 = call %struct.Memory* @routine_jne_.L_44c13c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c131, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_44c131, %struct.Memory** %MEMORY

  %loadBr_44c131 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c131 = icmp eq i8 %loadBr_44c131, 1
  br i1 %cmpBr_44c131, label %block_.L_44c13c, label %block_44c137

block_44c137:
  ; Code: jmpq .L_44c17a	 RIP: 44c137	 Bytes: 5
  %loadMem_44c137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c137 = call %struct.Memory* @routine_jmpq_.L_44c17a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c137, i64 67, i64 5)
  store %struct.Memory* %call_44c137, %struct.Memory** %MEMORY

  br label %block_.L_44c17a

  ; Code: .L_44c13c:	 RIP: 44c13c	 Bytes: 0
block_.L_44c13c:

  ; Code: movq $0x57ebe2, %rdi	 RIP: 44c13c	 Bytes: 10
  %loadMem_44c13c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c13c = call %struct.Memory* @routine_movq__0x57ebe2___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c13c)
  store %struct.Memory* %call_44c13c, %struct.Memory** %MEMORY

  ; Code: movq $0xb4bd20, %rax	 RIP: 44c146	 Bytes: 10
  %loadMem_44c146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c146 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c146)
  store %struct.Memory* %call_44c146, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44c150	 Bytes: 4
  %loadMem_44c150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c150 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c150)
  store %struct.Memory* %call_44c150, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44c154	 Bytes: 4
  %loadMem_44c154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c154 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c154)
  store %struct.Memory* %call_44c154, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44c158	 Bytes: 3
  %loadMem_44c158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c158 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c158)
  store %struct.Memory* %call_44c158, %struct.Memory** %MEMORY

  ; Code: movl 0x30(%rax), %esi	 RIP: 44c15b	 Bytes: 3
  %loadMem_44c15b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c15b = call %struct.Memory* @routine_movl_0x30__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c15b)
  store %struct.Memory* %call_44c15b, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 44c15e	 Bytes: 3
  %loadMem_44c15e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c15e = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c15e)
  store %struct.Memory* %call_44c15e, %struct.Memory** %MEMORY

  ; Code: movl 0xafdfb0, %r8d	 RIP: 44c161	 Bytes: 8
  %loadMem_44c161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c161 = call %struct.Memory* @routine_movl_0xafdfb0___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c161)
  store %struct.Memory* %call_44c161, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r8d	 RIP: 44c169	 Bytes: 4
  %loadMem_44c169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c169 = call %struct.Memory* @routine_addl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c169)
  store %struct.Memory* %call_44c169, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 44c16d	 Bytes: 3
  %loadMem_44c16d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c16d = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c16d)
  store %struct.Memory* %call_44c16d, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44c170	 Bytes: 2
  %loadMem_44c170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c170 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c170)
  store %struct.Memory* %call_44c170, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 44c172	 Bytes: 5
  %loadMem1_44c172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c172 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c172, i64 23614, i64 5, i64 5)
  store %struct.Memory* %call1_44c172, %struct.Memory** %MEMORY

  %loadMem2_44c172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c172 = load i64, i64* %3
  %call2_44c172 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_44c172, %struct.Memory* %loadMem2_44c172)
  store %struct.Memory* %call2_44c172, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x58(%rbp)	 RIP: 44c177	 Bytes: 3
  %loadMem_44c177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c177 = call %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c177)
  store %struct.Memory* %call_44c177, %struct.Memory** %MEMORY

  ; Code: .L_44c17a:	 RIP: 44c17a	 Bytes: 0
  br label %block_.L_44c17a
block_.L_44c17a:

  ; Code: jmpq .L_44c27c	 RIP: 44c17a	 Bytes: 5
  %loadMem_44c17a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c17a = call %struct.Memory* @routine_jmpq_.L_44c27c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c17a, i64 258, i64 5)
  store %struct.Memory* %call_44c17a, %struct.Memory** %MEMORY

  br label %block_.L_44c27c

  ; Code: .L_44c17f:	 RIP: 44c17f	 Bytes: 0
block_.L_44c17f:

  ; Code: movslq -0x8(%rbp), %rax	 RIP: 44c17f	 Bytes: 4
  %loadMem_44c17f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c17f = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c17f)
  store %struct.Memory* %call_44c17f, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 44c183	 Bytes: 8
  %loadMem_44c183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c183 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c183)
  store %struct.Memory* %call_44c183, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %ecx	 RIP: 44c18b	 Bytes: 3
  %loadMem_44c18b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c18b = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c18b)
  store %struct.Memory* %call_44c18b, %struct.Memory** %MEMORY

  ; Code: jne .L_44c277	 RIP: 44c18e	 Bytes: 6
  %loadMem_44c18e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c18e = call %struct.Memory* @routine_jne_.L_44c277(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c18e, i8* %BRANCH_TAKEN, i64 233, i64 6, i64 6)
  store %struct.Memory* %call_44c18e, %struct.Memory** %MEMORY

  %loadBr_44c18e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c18e = icmp eq i8 %loadBr_44c18e, 1
  br i1 %cmpBr_44c18e, label %block_.L_44c277, label %block_44c194

block_44c194:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44c194	 Bytes: 10
  %loadMem_44c194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c194 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c194)
  store %struct.Memory* %call_44c194, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44c19e	 Bytes: 4
  %loadMem_44c19e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c19e = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c19e)
  store %struct.Memory* %call_44c19e, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44c1a2	 Bytes: 4
  %loadMem_44c1a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1a2 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1a2)
  store %struct.Memory* %call_44c1a2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44c1a6	 Bytes: 3
  %loadMem_44c1a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1a6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1a6)
  store %struct.Memory* %call_44c1a6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x28(%rax)	 RIP: 44c1a9	 Bytes: 4
  %loadMem_44c1a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1a9 = call %struct.Memory* @routine_cmpl__0x0__0x28__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1a9)
  store %struct.Memory* %call_44c1a9, %struct.Memory** %MEMORY

  ; Code: jne .L_44c277	 RIP: 44c1ad	 Bytes: 6
  %loadMem_44c1ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1ad = call %struct.Memory* @routine_jne_.L_44c277(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1ad, i8* %BRANCH_TAKEN, i64 202, i64 6, i64 6)
  store %struct.Memory* %call_44c1ad, %struct.Memory** %MEMORY

  %loadBr_44c1ad = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c1ad = icmp eq i8 %loadBr_44c1ad, 1
  br i1 %cmpBr_44c1ad, label %block_.L_44c277, label %block_44c1b3

block_44c1b3:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44c1b3	 Bytes: 10
  %loadMem_44c1b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1b3 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1b3)
  store %struct.Memory* %call_44c1b3, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44c1bd	 Bytes: 4
  %loadMem_44c1bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1bd = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1bd)
  store %struct.Memory* %call_44c1bd, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44c1c1	 Bytes: 4
  %loadMem_44c1c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1c1 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1c1)
  store %struct.Memory* %call_44c1c1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44c1c5	 Bytes: 3
  %loadMem_44c1c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1c5 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1c5)
  store %struct.Memory* %call_44c1c5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x38(%rax)	 RIP: 44c1c8	 Bytes: 4
  %loadMem_44c1c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1c8 = call %struct.Memory* @routine_cmpl__0x0__0x38__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1c8)
  store %struct.Memory* %call_44c1c8, %struct.Memory** %MEMORY

  ; Code: je .L_44c277	 RIP: 44c1cc	 Bytes: 6
  %loadMem_44c1cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1cc = call %struct.Memory* @routine_je_.L_44c277(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1cc, i8* %BRANCH_TAKEN, i64 171, i64 6, i64 6)
  store %struct.Memory* %call_44c1cc, %struct.Memory** %MEMORY

  %loadBr_44c1cc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c1cc = icmp eq i8 %loadBr_44c1cc, 1
  br i1 %cmpBr_44c1cc, label %block_.L_44c277, label %block_44c1d2

block_44c1d2:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44c1d2	 Bytes: 10
  %loadMem_44c1d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1d2 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1d2)
  store %struct.Memory* %call_44c1d2, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44c1dc	 Bytes: 4
  %loadMem_44c1dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1dc = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1dc)
  store %struct.Memory* %call_44c1dc, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44c1e0	 Bytes: 4
  %loadMem_44c1e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1e0 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1e0)
  store %struct.Memory* %call_44c1e0, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44c1e4	 Bytes: 3
  %loadMem_44c1e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1e4 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1e4)
  store %struct.Memory* %call_44c1e4, %struct.Memory** %MEMORY

  ; Code: movslq 0x30(%rax), %rax	 RIP: 44c1e7	 Bytes: 4
  %loadMem_44c1e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1e7 = call %struct.Memory* @routine_movslq_0x30__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1e7)
  store %struct.Memory* %call_44c1e7, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %edx	 RIP: 44c1eb	 Bytes: 8
  %loadMem_44c1eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1eb = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1eb)
  store %struct.Memory* %call_44c1eb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %edx	 RIP: 44c1f3	 Bytes: 3
  %loadMem_44c1f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1f3 = call %struct.Memory* @routine_cmpl__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1f3)
  store %struct.Memory* %call_44c1f3, %struct.Memory** %MEMORY

  ; Code: je .L_44c277	 RIP: 44c1f6	 Bytes: 6
  %loadMem_44c1f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1f6 = call %struct.Memory* @routine_je_.L_44c277(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1f6, i8* %BRANCH_TAKEN, i64 129, i64 6, i64 6)
  store %struct.Memory* %call_44c1f6, %struct.Memory** %MEMORY

  %loadBr_44c1f6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c1f6 = icmp eq i8 %loadBr_44c1f6, 1
  br i1 %cmpBr_44c1f6, label %block_.L_44c277, label %block_44c1fc

block_44c1fc:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44c1fc	 Bytes: 10
  %loadMem_44c1fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c1fc = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c1fc)
  store %struct.Memory* %call_44c1fc, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44c206	 Bytes: 4
  %loadMem_44c206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c206 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c206)
  store %struct.Memory* %call_44c206, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44c20a	 Bytes: 4
  %loadMem_44c20a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c20a = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c20a)
  store %struct.Memory* %call_44c20a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44c20e	 Bytes: 3
  %loadMem_44c20e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c20e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c20e)
  store %struct.Memory* %call_44c20e, %struct.Memory** %MEMORY

  ; Code: movl 0x30(%rax), %edi	 RIP: 44c211	 Bytes: 3
  %loadMem_44c211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c211 = call %struct.Memory* @routine_movl_0x30__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c211)
  store %struct.Memory* %call_44c211, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 44c214	 Bytes: 3
  %loadMem_44c214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c214 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c214)
  store %struct.Memory* %call_44c214, %struct.Memory** %MEMORY

  ; Code: callq .add_owl_uncertain_defense_move	 RIP: 44c217	 Bytes: 5
  %loadMem1_44c217 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c217 = call %struct.Memory* @routine_callq_.add_owl_uncertain_defense_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c217, i64 -96375, i64 5, i64 5)
  store %struct.Memory* %call1_44c217, %struct.Memory** %MEMORY

  %loadMem2_44c217 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c217 = load i64, i64* %3
  %call2_44c217 = call %struct.Memory* @sub_4349a0.add_owl_uncertain_defense_move(%struct.State* %0, i64  %loadPC_44c217, %struct.Memory* %loadMem2_44c217)
  store %struct.Memory* %call2_44c217, %struct.Memory** %MEMORY

  ; Code: movl 0xab0f24, %esi	 RIP: 44c21c	 Bytes: 7
  %loadMem_44c21c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c21c = call %struct.Memory* @routine_movl_0xab0f24___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c21c)
  store %struct.Memory* %call_44c21c, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %esi	 RIP: 44c223	 Bytes: 3
  %loadMem_44c223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c223 = call %struct.Memory* @routine_andl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c223)
  store %struct.Memory* %call_44c223, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %esi	 RIP: 44c226	 Bytes: 3
  %loadMem_44c226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c226 = call %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c226)
  store %struct.Memory* %call_44c226, %struct.Memory** %MEMORY

  ; Code: jne .L_44c234	 RIP: 44c229	 Bytes: 6
  %loadMem_44c229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c229 = call %struct.Memory* @routine_jne_.L_44c234(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c229, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_44c229, %struct.Memory** %MEMORY

  %loadBr_44c229 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c229 = icmp eq i8 %loadBr_44c229, 1
  br i1 %cmpBr_44c229, label %block_.L_44c234, label %block_44c22f

block_44c22f:
  ; Code: jmpq .L_44c272	 RIP: 44c22f	 Bytes: 5
  %loadMem_44c22f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c22f = call %struct.Memory* @routine_jmpq_.L_44c272(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c22f, i64 67, i64 5)
  store %struct.Memory* %call_44c22f, %struct.Memory** %MEMORY

  br label %block_.L_44c272

  ; Code: .L_44c234:	 RIP: 44c234	 Bytes: 0
block_.L_44c234:

  ; Code: movq $0x57ec19, %rdi	 RIP: 44c234	 Bytes: 10
  %loadMem_44c234 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c234 = call %struct.Memory* @routine_movq__0x57ec19___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c234)
  store %struct.Memory* %call_44c234, %struct.Memory** %MEMORY

  ; Code: movq $0xb4bd20, %rax	 RIP: 44c23e	 Bytes: 10
  %loadMem_44c23e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c23e = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c23e)
  store %struct.Memory* %call_44c23e, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44c248	 Bytes: 4
  %loadMem_44c248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c248 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c248)
  store %struct.Memory* %call_44c248, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44c24c	 Bytes: 4
  %loadMem_44c24c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c24c = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c24c)
  store %struct.Memory* %call_44c24c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44c250	 Bytes: 3
  %loadMem_44c250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c250 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c250)
  store %struct.Memory* %call_44c250, %struct.Memory** %MEMORY

  ; Code: movl 0x30(%rax), %esi	 RIP: 44c253	 Bytes: 3
  %loadMem_44c253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c253 = call %struct.Memory* @routine_movl_0x30__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c253)
  store %struct.Memory* %call_44c253, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 44c256	 Bytes: 3
  %loadMem_44c256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c256 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c256)
  store %struct.Memory* %call_44c256, %struct.Memory** %MEMORY

  ; Code: movl 0xafdfb0, %r8d	 RIP: 44c259	 Bytes: 8
  %loadMem_44c259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c259 = call %struct.Memory* @routine_movl_0xafdfb0___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c259)
  store %struct.Memory* %call_44c259, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r8d	 RIP: 44c261	 Bytes: 4
  %loadMem_44c261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c261 = call %struct.Memory* @routine_addl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c261)
  store %struct.Memory* %call_44c261, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 44c265	 Bytes: 3
  %loadMem_44c265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c265 = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c265)
  store %struct.Memory* %call_44c265, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44c268	 Bytes: 2
  %loadMem_44c268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c268 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c268)
  store %struct.Memory* %call_44c268, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 44c26a	 Bytes: 5
  %loadMem1_44c26a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c26a = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c26a, i64 23366, i64 5, i64 5)
  store %struct.Memory* %call1_44c26a, %struct.Memory** %MEMORY

  %loadMem2_44c26a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c26a = load i64, i64* %3
  %call2_44c26a = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_44c26a, %struct.Memory* %loadMem2_44c26a)
  store %struct.Memory* %call2_44c26a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5c(%rbp)	 RIP: 44c26f	 Bytes: 3
  %loadMem_44c26f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c26f = call %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c26f)
  store %struct.Memory* %call_44c26f, %struct.Memory** %MEMORY

  ; Code: .L_44c272:	 RIP: 44c272	 Bytes: 0
  br label %block_.L_44c272
block_.L_44c272:

  ; Code: jmpq .L_44c277	 RIP: 44c272	 Bytes: 5
  %loadMem_44c272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c272 = call %struct.Memory* @routine_jmpq_.L_44c277(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c272, i64 5, i64 5)
  store %struct.Memory* %call_44c272, %struct.Memory** %MEMORY

  br label %block_.L_44c277

  ; Code: .L_44c277:	 RIP: 44c277	 Bytes: 0
block_.L_44c277:

  ; Code: jmpq .L_44c27c	 RIP: 44c277	 Bytes: 5
  %loadMem_44c277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c277 = call %struct.Memory* @routine_jmpq_.L_44c27c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c277, i64 5, i64 5)
  store %struct.Memory* %call_44c277, %struct.Memory** %MEMORY

  br label %block_.L_44c27c

  ; Code: .L_44c27c:	 RIP: 44c27c	 Bytes: 0
block_.L_44c27c:

  ; Code: jmpq .L_44c281	 RIP: 44c27c	 Bytes: 5
  %loadMem_44c27c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c27c = call %struct.Memory* @routine_jmpq_.L_44c281(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c27c, i64 5, i64 5)
  store %struct.Memory* %call_44c27c, %struct.Memory** %MEMORY

  br label %block_.L_44c281

  ; Code: .L_44c281:	 RIP: 44c281	 Bytes: 0
block_.L_44c281:

  ; Code: jmpq .L_44c286	 RIP: 44c281	 Bytes: 5
  %loadMem_44c281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c281 = call %struct.Memory* @routine_jmpq_.L_44c286(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c281, i64 5, i64 5)
  store %struct.Memory* %call_44c281, %struct.Memory** %MEMORY

  br label %block_.L_44c286

  ; Code: .L_44c286:	 RIP: 44c286	 Bytes: 0
block_.L_44c286:

  ; Code: jmpq .L_44c28b	 RIP: 44c286	 Bytes: 5
  %loadMem_44c286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c286 = call %struct.Memory* @routine_jmpq_.L_44c28b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c286, i64 5, i64 5)
  store %struct.Memory* %call_44c286, %struct.Memory** %MEMORY

  br label %block_.L_44c28b

  ; Code: .L_44c28b:	 RIP: 44c28b	 Bytes: 0
block_.L_44c28b:

  ; Code: jmpq .L_44c394	 RIP: 44c28b	 Bytes: 5
  %loadMem_44c28b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c28b = call %struct.Memory* @routine_jmpq_.L_44c394(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c28b, i64 265, i64 5)
  store %struct.Memory* %call_44c28b, %struct.Memory** %MEMORY

  br label %block_.L_44c394

  ; Code: .L_44c290:	 RIP: 44c290	 Bytes: 0
block_.L_44c290:

  ; Code: movq $0xb4bd20, %rax	 RIP: 44c290	 Bytes: 10
  %loadMem_44c290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c290 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c290)
  store %struct.Memory* %call_44c290, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44c29a	 Bytes: 4
  %loadMem_44c29a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c29a = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c29a)
  store %struct.Memory* %call_44c29a, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44c29e	 Bytes: 4
  %loadMem_44c29e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c29e = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c29e)
  store %struct.Memory* %call_44c29e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44c2a2	 Bytes: 3
  %loadMem_44c2a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2a2 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2a2)
  store %struct.Memory* %call_44c2a2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x1c(%rax)	 RIP: 44c2a5	 Bytes: 4
  %loadMem_44c2a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2a5 = call %struct.Memory* @routine_cmpl__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2a5)
  store %struct.Memory* %call_44c2a5, %struct.Memory** %MEMORY

  ; Code: jne .L_44c38f	 RIP: 44c2a9	 Bytes: 6
  %loadMem_44c2a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2a9 = call %struct.Memory* @routine_jne_.L_44c38f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2a9, i8* %BRANCH_TAKEN, i64 230, i64 6, i64 6)
  store %struct.Memory* %call_44c2a9, %struct.Memory** %MEMORY

  %loadBr_44c2a9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c2a9 = icmp eq i8 %loadBr_44c2a9, 1
  br i1 %cmpBr_44c2a9, label %block_.L_44c38f, label %block_44c2af

block_44c2af:
  ; Code: movl $0x3, %eax	 RIP: 44c2af	 Bytes: 5
  %loadMem_44c2af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2af = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2af)
  store %struct.Memory* %call_44c2af, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44c2b4	 Bytes: 4
  %loadMem_44c2b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2b4 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2b4)
  store %struct.Memory* %call_44c2b4, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %edx	 RIP: 44c2b8	 Bytes: 8
  %loadMem_44c2b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2b8 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2b8)
  store %struct.Memory* %call_44c2b8, %struct.Memory** %MEMORY

  ; Code: subl -0x4(%rbp), %eax	 RIP: 44c2c0	 Bytes: 3
  %loadMem_44c2c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2c0 = call %struct.Memory* @routine_subl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2c0)
  store %struct.Memory* %call_44c2c0, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %edx	 RIP: 44c2c3	 Bytes: 2
  %loadMem_44c2c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2c3 = call %struct.Memory* @routine_cmpl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2c3)
  store %struct.Memory* %call_44c2c3, %struct.Memory** %MEMORY

  ; Code: jne .L_44c38f	 RIP: 44c2c5	 Bytes: 6
  %loadMem_44c2c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2c5 = call %struct.Memory* @routine_jne_.L_44c38f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2c5, i8* %BRANCH_TAKEN, i64 202, i64 6, i64 6)
  store %struct.Memory* %call_44c2c5, %struct.Memory** %MEMORY

  %loadBr_44c2c5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c2c5 = icmp eq i8 %loadBr_44c2c5, 1
  br i1 %cmpBr_44c2c5, label %block_.L_44c38f, label %block_44c2cb

block_44c2cb:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44c2cb	 Bytes: 10
  %loadMem_44c2cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2cb = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2cb)
  store %struct.Memory* %call_44c2cb, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44c2d5	 Bytes: 4
  %loadMem_44c2d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2d5 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2d5)
  store %struct.Memory* %call_44c2d5, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44c2d9	 Bytes: 4
  %loadMem_44c2d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2d9 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2d9)
  store %struct.Memory* %call_44c2d9, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44c2dd	 Bytes: 3
  %loadMem_44c2dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2dd = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2dd)
  store %struct.Memory* %call_44c2dd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x28(%rax)	 RIP: 44c2e0	 Bytes: 4
  %loadMem_44c2e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2e0 = call %struct.Memory* @routine_cmpl__0x0__0x28__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2e0)
  store %struct.Memory* %call_44c2e0, %struct.Memory** %MEMORY

  ; Code: jne .L_44c38f	 RIP: 44c2e4	 Bytes: 6
  %loadMem_44c2e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2e4 = call %struct.Memory* @routine_jne_.L_44c38f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2e4, i8* %BRANCH_TAKEN, i64 171, i64 6, i64 6)
  store %struct.Memory* %call_44c2e4, %struct.Memory** %MEMORY

  %loadBr_44c2e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c2e4 = icmp eq i8 %loadBr_44c2e4, 1
  br i1 %cmpBr_44c2e4, label %block_.L_44c38f, label %block_44c2ea

block_44c2ea:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44c2ea	 Bytes: 10
  %loadMem_44c2ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2ea = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2ea)
  store %struct.Memory* %call_44c2ea, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44c2f4	 Bytes: 4
  %loadMem_44c2f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2f4 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2f4)
  store %struct.Memory* %call_44c2f4, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44c2f8	 Bytes: 4
  %loadMem_44c2f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2f8 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2f8)
  store %struct.Memory* %call_44c2f8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44c2fc	 Bytes: 3
  %loadMem_44c2fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2fc = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2fc)
  store %struct.Memory* %call_44c2fc, %struct.Memory** %MEMORY

  ; Code: movslq 0x20(%rax), %rax	 RIP: 44c2ff	 Bytes: 4
  %loadMem_44c2ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c2ff = call %struct.Memory* @routine_movslq_0x20__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c2ff)
  store %struct.Memory* %call_44c2ff, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %edx	 RIP: 44c303	 Bytes: 8
  %loadMem_44c303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c303 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c303)
  store %struct.Memory* %call_44c303, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %edx	 RIP: 44c30b	 Bytes: 3
  %loadMem_44c30b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c30b = call %struct.Memory* @routine_cmpl__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c30b)
  store %struct.Memory* %call_44c30b, %struct.Memory** %MEMORY

  ; Code: je .L_44c38f	 RIP: 44c30e	 Bytes: 6
  %loadMem_44c30e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c30e = call %struct.Memory* @routine_je_.L_44c38f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c30e, i8* %BRANCH_TAKEN, i64 129, i64 6, i64 6)
  store %struct.Memory* %call_44c30e, %struct.Memory** %MEMORY

  %loadBr_44c30e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c30e = icmp eq i8 %loadBr_44c30e, 1
  br i1 %cmpBr_44c30e, label %block_.L_44c38f, label %block_44c314

block_44c314:
  ; Code: movq $0xb4bd20, %rax	 RIP: 44c314	 Bytes: 10
  %loadMem_44c314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c314 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c314)
  store %struct.Memory* %call_44c314, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44c31e	 Bytes: 4
  %loadMem_44c31e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c31e = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c31e)
  store %struct.Memory* %call_44c31e, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44c322	 Bytes: 4
  %loadMem_44c322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c322 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c322)
  store %struct.Memory* %call_44c322, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44c326	 Bytes: 3
  %loadMem_44c326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c326 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c326)
  store %struct.Memory* %call_44c326, %struct.Memory** %MEMORY

  ; Code: movl 0x20(%rax), %edi	 RIP: 44c329	 Bytes: 3
  %loadMem_44c329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c329 = call %struct.Memory* @routine_movl_0x20__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c329)
  store %struct.Memory* %call_44c329, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 44c32c	 Bytes: 3
  %loadMem_44c32c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c32c = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c32c)
  store %struct.Memory* %call_44c32c, %struct.Memory** %MEMORY

  ; Code: callq .add_owl_uncertain_defense_move	 RIP: 44c32f	 Bytes: 5
  %loadMem1_44c32f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c32f = call %struct.Memory* @routine_callq_.add_owl_uncertain_defense_move(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c32f, i64 -96655, i64 5, i64 5)
  store %struct.Memory* %call1_44c32f, %struct.Memory** %MEMORY

  %loadMem2_44c32f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c32f = load i64, i64* %3
  %call2_44c32f = call %struct.Memory* @sub_4349a0.add_owl_uncertain_defense_move(%struct.State* %0, i64  %loadPC_44c32f, %struct.Memory* %loadMem2_44c32f)
  store %struct.Memory* %call2_44c32f, %struct.Memory** %MEMORY

  ; Code: movl 0xab0f24, %esi	 RIP: 44c334	 Bytes: 7
  %loadMem_44c334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c334 = call %struct.Memory* @routine_movl_0xab0f24___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c334)
  store %struct.Memory* %call_44c334, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %esi	 RIP: 44c33b	 Bytes: 3
  %loadMem_44c33b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c33b = call %struct.Memory* @routine_andl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c33b)
  store %struct.Memory* %call_44c33b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %esi	 RIP: 44c33e	 Bytes: 3
  %loadMem_44c33e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c33e = call %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c33e)
  store %struct.Memory* %call_44c33e, %struct.Memory** %MEMORY

  ; Code: jne .L_44c34c	 RIP: 44c341	 Bytes: 6
  %loadMem_44c341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c341 = call %struct.Memory* @routine_jne_.L_44c34c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c341, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_44c341, %struct.Memory** %MEMORY

  %loadBr_44c341 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44c341 = icmp eq i8 %loadBr_44c341, 1
  br i1 %cmpBr_44c341, label %block_.L_44c34c, label %block_44c347

block_44c347:
  ; Code: jmpq .L_44c38a	 RIP: 44c347	 Bytes: 5
  %loadMem_44c347 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c347 = call %struct.Memory* @routine_jmpq_.L_44c38a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c347, i64 67, i64 5)
  store %struct.Memory* %call_44c347, %struct.Memory** %MEMORY

  br label %block_.L_44c38a

  ; Code: .L_44c34c:	 RIP: 44c34c	 Bytes: 0
block_.L_44c34c:

  ; Code: movq $0x57ec52, %rdi	 RIP: 44c34c	 Bytes: 10
  %loadMem_44c34c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c34c = call %struct.Memory* @routine_movq__0x57ec52___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c34c)
  store %struct.Memory* %call_44c34c, %struct.Memory** %MEMORY

  ; Code: movq $0xb4bd20, %rax	 RIP: 44c356	 Bytes: 10
  %loadMem_44c356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c356 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c356)
  store %struct.Memory* %call_44c356, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 44c360	 Bytes: 4
  %loadMem_44c360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c360 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c360)
  store %struct.Memory* %call_44c360, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 44c364	 Bytes: 4
  %loadMem_44c364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c364 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c364)
  store %struct.Memory* %call_44c364, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44c368	 Bytes: 3
  %loadMem_44c368 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c368 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c368)
  store %struct.Memory* %call_44c368, %struct.Memory** %MEMORY

  ; Code: movl 0x20(%rax), %esi	 RIP: 44c36b	 Bytes: 3
  %loadMem_44c36b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c36b = call %struct.Memory* @routine_movl_0x20__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c36b)
  store %struct.Memory* %call_44c36b, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edx	 RIP: 44c36e	 Bytes: 3
  %loadMem_44c36e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c36e = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c36e)
  store %struct.Memory* %call_44c36e, %struct.Memory** %MEMORY

  ; Code: movl 0xafdfb0, %r8d	 RIP: 44c371	 Bytes: 8
  %loadMem_44c371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c371 = call %struct.Memory* @routine_movl_0xafdfb0___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c371)
  store %struct.Memory* %call_44c371, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r8d	 RIP: 44c379	 Bytes: 4
  %loadMem_44c379 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c379 = call %struct.Memory* @routine_addl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c379)
  store %struct.Memory* %call_44c379, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 44c37d	 Bytes: 3
  %loadMem_44c37d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c37d = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c37d)
  store %struct.Memory* %call_44c37d, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44c380	 Bytes: 2
  %loadMem_44c380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c380 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c380)
  store %struct.Memory* %call_44c380, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 44c382	 Bytes: 5
  %loadMem1_44c382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44c382 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44c382, i64 23086, i64 5, i64 5)
  store %struct.Memory* %call1_44c382, %struct.Memory** %MEMORY

  %loadMem2_44c382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44c382 = load i64, i64* %3
  %call2_44c382 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_44c382, %struct.Memory* %loadMem2_44c382)
  store %struct.Memory* %call2_44c382, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x60(%rbp)	 RIP: 44c387	 Bytes: 3
  %loadMem_44c387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c387 = call %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c387)
  store %struct.Memory* %call_44c387, %struct.Memory** %MEMORY

  ; Code: .L_44c38a:	 RIP: 44c38a	 Bytes: 0
  br label %block_.L_44c38a
block_.L_44c38a:

  ; Code: jmpq .L_44c38f	 RIP: 44c38a	 Bytes: 5
  %loadMem_44c38a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c38a = call %struct.Memory* @routine_jmpq_.L_44c38f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c38a, i64 5, i64 5)
  store %struct.Memory* %call_44c38a, %struct.Memory** %MEMORY

  br label %block_.L_44c38f

  ; Code: .L_44c38f:	 RIP: 44c38f	 Bytes: 0
block_.L_44c38f:

  ; Code: jmpq .L_44c394	 RIP: 44c38f	 Bytes: 5
  %loadMem_44c38f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c38f = call %struct.Memory* @routine_jmpq_.L_44c394(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c38f, i64 5, i64 5)
  store %struct.Memory* %call_44c38f, %struct.Memory** %MEMORY

  br label %block_.L_44c394

  ; Code: .L_44c394:	 RIP: 44c394	 Bytes: 0
block_.L_44c394:

  ; Code: jmpq .L_44c399	 RIP: 44c394	 Bytes: 5
  %loadMem_44c394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c394 = call %struct.Memory* @routine_jmpq_.L_44c399(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c394, i64 5, i64 5)
  store %struct.Memory* %call_44c394, %struct.Memory** %MEMORY

  br label %block_.L_44c399

  ; Code: .L_44c399:	 RIP: 44c399	 Bytes: 0
block_.L_44c399:

  ; Code: jmpq .L_44c39e	 RIP: 44c399	 Bytes: 5
  %loadMem_44c399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c399 = call %struct.Memory* @routine_jmpq_.L_44c39e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c399, i64 5, i64 5)
  store %struct.Memory* %call_44c399, %struct.Memory** %MEMORY

  br label %block_.L_44c39e

  ; Code: .L_44c39e:	 RIP: 44c39e	 Bytes: 0
block_.L_44c39e:

  ; Code: jmpq .L_44c3a3	 RIP: 44c39e	 Bytes: 5
  %loadMem_44c39e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c39e = call %struct.Memory* @routine_jmpq_.L_44c3a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c39e, i64 5, i64 5)
  store %struct.Memory* %call_44c39e, %struct.Memory** %MEMORY

  br label %block_.L_44c3a3

  ; Code: .L_44c3a3:	 RIP: 44c3a3	 Bytes: 0
block_.L_44c3a3:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 44c3a3	 Bytes: 3
  %loadMem_44c3a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3a3 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3a3)
  store %struct.Memory* %call_44c3a3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44c3a6	 Bytes: 3
  %loadMem_44c3a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3a6 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3a6)
  store %struct.Memory* %call_44c3a6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 44c3a9	 Bytes: 3
  %loadMem_44c3a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3a9 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3a9)
  store %struct.Memory* %call_44c3a9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44b4c2	 RIP: 44c3ac	 Bytes: 5
  %loadMem_44c3ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3ac = call %struct.Memory* @routine_jmpq_.L_44b4c2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3ac, i64 -3818, i64 5)
  store %struct.Memory* %call_44c3ac, %struct.Memory** %MEMORY

  br label %block_.L_44b4c2

  ; Code: .L_44c3b1:	 RIP: 44c3b1	 Bytes: 0
block_.L_44c3b1:

  ; Code: addq $0x60, %rsp	 RIP: 44c3b1	 Bytes: 4
  %loadMem_44c3b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3b1 = call %struct.Memory* @routine_addq__0x60___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3b1)
  store %struct.Memory* %call_44c3b1, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 44c3b5	 Bytes: 1
  %loadMem_44c3b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3b5 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3b5)
  store %struct.Memory* %call_44c3b5, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 44c3b6	 Bytes: 1
  %loadMem_44c3b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44c3b6 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44c3b6)
  store %struct.Memory* %call_44c3b6, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_44c3b6
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

define %struct.Memory* @routine_jge_.L_44c3b1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_44b51a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_je_.L_44b51f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_44c3a3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_cmpl__0x2__0x40__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
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

define %struct.Memory* @routine_jne_.L_44ba2e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_je_.L_44ba2e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_44b6d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_je_.L_44b6cd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_cmpl__0x2__0x34__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 52
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_44b63c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
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


define %struct.Memory* @routine_movl_0x30__rdx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 48
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








define %struct.Memory* @routine_movl_0x48__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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


define %struct.Memory* @routine_movl_0xab0f24___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0xab0f24_type* @G_0xab0f24 to i64))
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

define %struct.Memory* @routine_andl__0x4___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 4)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_jne_.L_44b5f9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_44b637(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57ea8e___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57ea8e_type* @G__0x57ea8e to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movl_0x30__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_0xafdfb0___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 ptrtoint( %G_0xafdfb0_type* @G_0xafdfb0 to i64))
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

define %struct.Memory* @routine_addl__0x1___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i32, i32* %R8D
  %11 = zext i32 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 1)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__r8d___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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


define %struct.Memory* @routine_jmpq_.L_44b6c8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






















define %struct.Memory* @routine_movl_0x34__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 52
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








define %struct.Memory* @routine_jne_.L_44b685(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_44b6c3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57eab9___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57eab9_type* @G__0x57eab9 to i64))
  ret %struct.Memory* %11
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




define %struct.Memory* @routine_jmpq_.L_44b6cd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_44ba29(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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

define %struct.Memory* @routine_movss_0x97a7e__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x97a7e__rip__type* @G_0x97a7e__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}












define %struct.Memory* @routine_movl_0x20__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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







define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory*, %struct.State* dereferenceable(3376), i8* nocapture readonly, i64) #0 {
  %5 = bitcast i8* %2 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = inttoptr i64 %3 to float*
  %9 = load float, float* %8
  %10 = fcmp uno float %7, %9
  br i1 %10, label %11, label %23

; <label>:11:                                     ; preds = %4
  %12 = fadd float %7, %9
  %13 = bitcast float %12 to i32
  %14 = and i32 %13, 2143289344
  %15 = icmp eq i32 %14, 2139095040
  %16 = and i32 %13, 4194303
  %17 = icmp ne i32 %16, 0
  %18 = and i1 %15, %17
  br i1 %18, label %19, label %29

; <label>:19:                                     ; preds = %11
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %21, %struct.Memory* %0) #21
  br label %40

; <label>:23:                                     ; preds = %4
  %24 = fcmp ogt float %7, %9
  br i1 %24, label %29, label %25

; <label>:25:                                     ; preds = %23
  %26 = fcmp olt float %7, %9
  br i1 %26, label %29, label %27

; <label>:27:                                     ; preds = %25
  %28 = fcmp oeq float %7, %9
  br i1 %28, label %29, label %36

; <label>:29:                                     ; preds = %27, %25, %23, %11
  %30 = phi i8 [ 0, %23 ], [ 0, %25 ], [ 1, %27 ], [ 1, %11 ]
  %31 = phi i8 [ 0, %23 ], [ 0, %25 ], [ 0, %27 ], [ 1, %11 ]
  %32 = phi i8 [ 0, %23 ], [ 1, %25 ], [ 0, %27 ], [ 1, %11 ]
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %32, i8* %35, align 1
  br label %36

; <label>:36:                                     ; preds = %29, %27
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %39, align 1
  br label %40

; <label>:40:                                     ; preds = %36, %19
  %41 = phi %struct.Memory* [ %22, %19 ], [ %0, %36 ]
  ret %struct.Memory* %41
}

define %struct.Memory* @routine_ucomiss_0x10__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_jbe_.L_44b939(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_jge_.L_44b88f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movslq_0x4__rsi____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x4__rcx__rdx_4____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 4
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__edi__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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






define %struct.Memory* @routine_movslq___rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 4
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_44b87c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
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


define %struct.Memory* @routine_jne_.L_44b7ff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_jmpq_.L_44b88f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


















define %struct.Memory* @routine_movl_0xc__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 16
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_jle_.L_44b877(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_movl__esi__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_44b87c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_44b881(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jmpq_.L_44b730(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jne_.L_44b8a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
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


define %struct.Memory* @routine_jne_.L_44b934(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x1c__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_je_.L_44b934(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_andl__0x4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 4)
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


define %struct.Memory* @routine_jne_.L_44b8da(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_44b900(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57eada___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57eada_type* @G__0x57eada to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_0xafdfb0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0xafdfb0_type* @G_0xafdfb0 to i64))
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


define %struct.Memory* @routine_movl__0x5__0x3c__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_jmpq_.L_44b939(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_cmpl__0x3__0x24__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_44b9be(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}














define %struct.Memory* @routine_movl_0x44__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 68
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








define %struct.Memory* @routine_jne_.L_44b993(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_44b9b9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57eb13___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57eb13_type* @G__0x57eb13 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_jmpq_.L_44ba24(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}














define %struct.Memory* @routine_movl_0x24__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 36
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








define %struct.Memory* @routine_jne_.L_44b9f9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_44ba1f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57eb3e___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57eb3e_type* @G__0x57eb3e to i64))
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






define %struct.Memory* @routine_jmpq_.L_44c39e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_cmpl__0x0__0x1c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_44bcd7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_cmpl__0xc__0x18__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 12)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_jne_.L_44bb20(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_je_.L_44bb20(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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










define %struct.Memory* @routine_movl_0x30__rax____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_callq_.add_owl_defense_threat_move(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_44badd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_44bb1b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57eb5f___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57eb5f_type* @G__0x57eb5f to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_jmpq_.L_44bb20(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jne_.L_44bbfd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_cmpl__0x0__0x3c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_44bbfd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_jne_.L_44bbba(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_44bbf8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jmpq_.L_44bbfd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jne_.L_44bcd2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}
























define %struct.Memory* @routine_je_.L_44bcd2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movl_0x20__rax____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_callq_.add_owl_prevent_threat_move(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0xab0f24___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0xab0f24_type* @G_0xab0f24 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_andl__0x4___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 4)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_cmpl__0x0___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %ESI
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_44bc8f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_44bccd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57eb8c___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57eb8c_type* @G__0x57eb8c to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movl_0x20__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jmpq_.L_44bcd2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_44c399(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_cmpl__0x1__0x1c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_44c290(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_jne_.L_44be9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_cmpl__0xb__0x18__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 11)
  ret %struct.Memory* %13
}














define %struct.Memory* @routine_je_.L_44bdd0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_callq_.add_owl_attack_threat_move(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_44bd8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_44bdcb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57ebbf___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57ebbf_type* @G__0x57ebbf to i64))
  ret %struct.Memory* %11
}
























define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_44bdd0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_je_.L_44be98(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movl_0x2c__rax____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}
































define %struct.Memory* @routine_jne_.L_44be55(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_44be93(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_movl_0x2c__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jmpq_.L_44be98(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_44c28b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jne_.L_44bf83(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_je_.L_44bf83(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_movl_0x20__rdx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




















define %struct.Memory* @routine_jne_.L_44bf40(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_44bf7e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


























define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_44c286(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jne_.L_44c062(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_je_.L_44c062(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












































define %struct.Memory* @routine_jne_.L_44c01f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_44c05d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jmpq_.L_44c281(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jne_.L_44c17f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_je_.L_44c17f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_cmpl__0x5__0x34__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 52
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}














































define %struct.Memory* @routine_jne_.L_44c13c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_44c17a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57ebe2___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57ebe2_type* @G__0x57ebe2 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_jmpq_.L_44c27c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jne_.L_44c277(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_cmpl__0x0__0x28__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}












define %struct.Memory* @routine_cmpl__0x0__0x38__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_44c277(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movslq_0x30__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
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
















define %struct.Memory* @routine_callq_.add_owl_uncertain_defense_move(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_44c234(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_44c272(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57ec19___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57ec19_type* @G__0x57ec19 to i64))
  ret %struct.Memory* %11
}
























define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_44c277(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_jmpq_.L_44c394(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jne_.L_44c38f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


































define %struct.Memory* @routine_movslq_0x20__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_je_.L_44c38f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_jne_.L_44c34c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_44c38a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57ec52___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57ec52_type* @G__0x57ec52 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_jmpq_.L_44c38f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jmpq_.L_44b4c2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

