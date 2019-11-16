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

declare %struct.Memory* @sub_401030.strchr_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x99c0a0_type = type <{ [8 x i8] }>
@G_0x99c0a0= global %G_0x99c0a0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0xaf3458_type = type <{ [1 x i8] }>
@G_0xaf3458= global %G_0xaf3458_type <{ [1 x i8] c"\00" }>
%G__0x579d93_type = type <{ [8 x i8] }>
@G__0x579d93= global %G__0x579d93_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x586073_type = type <{ [8 x i8] }>
@G__0x586073= global %G__0x586073_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x588897_type = type <{ [8 x i8] }>
@G__0x588897= global %G__0x588897_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x588b0b_type = type <{ [8 x i8] }>
@G__0x588b0b= global %G__0x588b0b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x588b2c_type = type <{ [8 x i8] }>
@G__0x588b2c= global %G__0x588b2c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x588b35_type = type <{ [8 x i8] }>
@G__0x588b35= global %G__0x588b35_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xb8c050_type = type <{ [8 x i8] }>
@G__0xb8c050= global %G__0xb8c050_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @pattern_2_string(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .pattern_2_string:	 RIP: 4a9220	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 4a9220	 Bytes: 1
  %loadMem_4a9220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9220 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9220)
  store %struct.Memory* %call_4a9220, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 4a9221	 Bytes: 3
  %loadMem_4a9221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9221 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9221)
  store %struct.Memory* %call_4a9221, %struct.Memory** %MEMORY

  ; Code: pushq %r15	 RIP: 4a9224	 Bytes: 2
  %loadMem_4a9224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9224 = call %struct.Memory* @routine_pushq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9224)
  store %struct.Memory* %call_4a9224, %struct.Memory** %MEMORY

  ; Code: pushq %r14	 RIP: 4a9226	 Bytes: 2
  %loadMem_4a9226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9226 = call %struct.Memory* @routine_pushq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9226)
  store %struct.Memory* %call_4a9226, %struct.Memory** %MEMORY

  ; Code: pushq %rbx	 RIP: 4a9228	 Bytes: 1
  %loadMem_4a9228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9228 = call %struct.Memory* @routine_pushq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9228)
  store %struct.Memory* %call_4a9228, %struct.Memory** %MEMORY

  ; Code: subq $0x1c28, %rsp	 RIP: 4a9229	 Bytes: 7
  %loadMem_4a9229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9229 = call %struct.Memory* @routine_subq__0x1c28___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9229)
  store %struct.Memory* %call_4a9229, %struct.Memory** %MEMORY

  ; Code: movl $0x23, %eax	 RIP: 4a9230	 Bytes: 5
  %loadMem_4a9230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9230 = call %struct.Memory* @routine_movl__0x23___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9230)
  store %struct.Memory* %call_4a9230, %struct.Memory** %MEMORY

  ; Code: movl $0x1b90, %r10d	 RIP: 4a9235	 Bytes: 6
  %loadMem_4a9235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9235 = call %struct.Memory* @routine_movl__0x1b90___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9235)
  store %struct.Memory* %call_4a9235, %struct.Memory** %MEMORY

  ; Code: movl %r10d, %r11d	 RIP: 4a923b	 Bytes: 3
  %loadMem_4a923b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a923b = call %struct.Memory* @routine_movl__r10d___r11d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a923b)
  store %struct.Memory* %call_4a923b, %struct.Memory** %MEMORY

  ; Code: leaq -0x1bd0(%rbp), %rbx	 RIP: 4a923e	 Bytes: 7
  %loadMem_4a923e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a923e = call %struct.Memory* @routine_leaq_MINUS0x1bd0__rbp____rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a923e)
  store %struct.Memory* %call_4a923e, %struct.Memory** %MEMORY

  ; Code: xorl %r10d, %r10d	 RIP: 4a9245	 Bytes: 3
  %loadMem_4a9245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9245 = call %struct.Memory* @routine_xorl__r10d___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9245)
  store %struct.Memory* %call_4a9245, %struct.Memory** %MEMORY

  ; Code: movl $0x6e4, %r14d	 RIP: 4a9248	 Bytes: 6
  %loadMem_4a9248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9248 = call %struct.Memory* @routine_movl__0x6e4___r14d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9248)
  store %struct.Memory* %call_4a9248, %struct.Memory** %MEMORY

  ; Code: movl %r14d, %r15d	 RIP: 4a924e	 Bytes: 3
  %loadMem_4a924e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a924e = call %struct.Memory* @routine_movl__r14d___r15d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a924e)
  store %struct.Memory* %call_4a924e, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x20(%rbp)	 RIP: 4a9251	 Bytes: 4
  %loadMem_4a9251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9251 = call %struct.Memory* @routine_movq__rdi__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9251)
  store %struct.Memory* %call_4a9251, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x28(%rbp)	 RIP: 4a9255	 Bytes: 4
  %loadMem_4a9255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9255 = call %struct.Memory* @routine_movq__rsi__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9255)
  store %struct.Memory* %call_4a9255, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x30(%rbp)	 RIP: 4a9259	 Bytes: 4
  %loadMem_4a9259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9259 = call %struct.Memory* @routine_movq__rdx__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9259)
  store %struct.Memory* %call_4a9259, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x34(%rbp)	 RIP: 4a925d	 Bytes: 3
  %loadMem_4a925d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a925d = call %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a925d)
  store %struct.Memory* %call_4a925d, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x38(%rbp)	 RIP: 4a9260	 Bytes: 4
  %loadMem_4a9260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9260 = call %struct.Memory* @routine_movl__r8d__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9260)
  store %struct.Memory* %call_4a9260, %struct.Memory** %MEMORY

  ; Code: movl %r9d, -0x3c(%rbp)	 RIP: 4a9264	 Bytes: 4
  %loadMem_4a9264 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9264 = call %struct.Memory* @routine_movl__r9d__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9264)
  store %struct.Memory* %call_4a9264, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %ecx	 RIP: 4a9268	 Bytes: 3
  %loadMem_4a9268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9268 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9268)
  store %struct.Memory* %call_4a9268, %struct.Memory** %MEMORY

  ; Code: addl $0x2a, %ecx	 RIP: 4a926b	 Bytes: 3
  %loadMem_4a926b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a926b = call %struct.Memory* @routine_addl__0x2a___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a926b)
  store %struct.Memory* %call_4a926b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1bd4(%rbp)	 RIP: 4a926e	 Bytes: 6
  %loadMem_4a926e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a926e = call %struct.Memory* @routine_movl__ecx__MINUS0x1bd4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a926e)
  store %struct.Memory* %call_4a926e, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %ecx	 RIP: 4a9274	 Bytes: 3
  %loadMem_4a9274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9274 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9274)
  store %struct.Memory* %call_4a9274, %struct.Memory** %MEMORY

  ; Code: addl $0x2a, %ecx	 RIP: 4a9277	 Bytes: 3
  %loadMem_4a9277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9277 = call %struct.Memory* @routine_addl__0x2a___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9277)
  store %struct.Memory* %call_4a9277, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1bd8(%rbp)	 RIP: 4a927a	 Bytes: 6
  %loadMem_4a927a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a927a = call %struct.Memory* @routine_movl__ecx__MINUS0x1bd8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a927a)
  store %struct.Memory* %call_4a927a, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rdi	 RIP: 4a9280	 Bytes: 4
  %loadMem_4a9280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9280 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9280)
  store %struct.Memory* %call_4a9280, %struct.Memory** %MEMORY

  ; Code: movl %r10d, %esi	 RIP: 4a9284	 Bytes: 3
  %loadMem_4a9284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9284 = call %struct.Memory* @routine_movl__r10d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9284)
  store %struct.Memory* %call_4a9284, %struct.Memory** %MEMORY

  ; Code: movq %r15, %rdx	 RIP: 4a9287	 Bytes: 3
  %loadMem_4a9287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9287 = call %struct.Memory* @routine_movq__r15___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9287)
  store %struct.Memory* %call_4a9287, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1bf8(%rbp)	 RIP: 4a928a	 Bytes: 6
  %loadMem_4a928a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a928a = call %struct.Memory* @routine_movl__eax__MINUS0x1bf8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a928a)
  store %struct.Memory* %call_4a928a, %struct.Memory** %MEMORY

  ; Code: movq %r11, -0x1c00(%rbp)	 RIP: 4a9290	 Bytes: 7
  %loadMem_4a9290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9290 = call %struct.Memory* @routine_movq__r11__MINUS0x1c00__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9290)
  store %struct.Memory* %call_4a9290, %struct.Memory** %MEMORY

  ; Code: movq %rbx, -0x1c08(%rbp)	 RIP: 4a9297	 Bytes: 7
  %loadMem_4a9297 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9297 = call %struct.Memory* @routine_movq__rbx__MINUS0x1c08__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9297)
  store %struct.Memory* %call_4a9297, %struct.Memory** %MEMORY

  ; Code: callq .memset_plt	 RIP: 4a929e	 Bytes: 5
  %loadMem1_4a929e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4a929e = call %struct.Memory* @routine_callq_.memset_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4a929e, i64 -688686, i64 5, i64 5)
  store %struct.Memory* %call1_4a929e, %struct.Memory** %MEMORY

  %loadMem2_4a929e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4a929e = load i64, i64* %3
  %call2_4a929e = call %struct.Memory* @ext_memset(%struct.State* %0, i64  %loadPC_4a929e, %struct.Memory* %loadMem2_4a929e)
  store %struct.Memory* %call2_4a929e, %struct.Memory** %MEMORY

  ; Code: movq -0x1c08(%rbp), %rdx	 RIP: 4a92a3	 Bytes: 7
  %loadMem_4a92a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a92a3 = call %struct.Memory* @routine_movq_MINUS0x1c08__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a92a3)
  store %struct.Memory* %call_4a92a3, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rdi	 RIP: 4a92aa	 Bytes: 3
  %loadMem_4a92aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a92aa = call %struct.Memory* @routine_movq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a92aa)
  store %struct.Memory* %call_4a92aa, %struct.Memory** %MEMORY

  ; Code: movl -0x1bf8(%rbp), %esi	 RIP: 4a92ad	 Bytes: 6
  %loadMem_4a92ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a92ad = call %struct.Memory* @routine_movl_MINUS0x1bf8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a92ad)
  store %struct.Memory* %call_4a92ad, %struct.Memory** %MEMORY

  ; Code: movq -0x1c00(%rbp), %rdx	 RIP: 4a92b3	 Bytes: 7
  %loadMem_4a92b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a92b3 = call %struct.Memory* @routine_movq_MINUS0x1c00__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a92b3)
  store %struct.Memory* %call_4a92b3, %struct.Memory** %MEMORY

  ; Code: callq .memset_plt	 RIP: 4a92ba	 Bytes: 5
  %loadMem1_4a92ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4a92ba = call %struct.Memory* @routine_callq_.memset_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4a92ba, i64 -688714, i64 5, i64 5)
  store %struct.Memory* %call1_4a92ba, %struct.Memory** %MEMORY

  %loadMem2_4a92ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4a92ba = load i64, i64* %3
  %call2_4a92ba = call %struct.Memory* @ext_memset(%struct.State* %0, i64  %loadPC_4a92ba, %struct.Memory* %loadMem2_4a92ba)
  store %struct.Memory* %call2_4a92ba, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xaf3458	 RIP: 4a92bf	 Bytes: 8
  %loadMem_4a92bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a92bf = call %struct.Memory* @routine_cmpl__0x0__0xaf3458(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a92bf)
  store %struct.Memory* %call_4a92bf, %struct.Memory** %MEMORY

  ; Code: jle .L_4a92ec	 RIP: 4a92c7	 Bytes: 6
  %loadMem_4a92c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a92c7 = call %struct.Memory* @routine_jle_.L_4a92ec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a92c7, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_4a92c7, %struct.Memory** %MEMORY

  %loadBr_4a92c7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a92c7 = icmp eq i8 %loadBr_4a92c7, 1
  br i1 %cmpBr_4a92c7, label %block_.L_4a92ec, label %block_4a92cd

block_4a92cd:
  ; Code: movq $0x588b0b, %rsi	 RIP: 4a92cd	 Bytes: 10
  %loadMem_4a92cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a92cd = call %struct.Memory* @routine_movq__0x588b0b___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a92cd)
  store %struct.Memory* %call_4a92cd, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 4a92d7	 Bytes: 8
  %loadMem_4a92d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a92d7 = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a92d7)
  store %struct.Memory* %call_4a92d7, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4a92df	 Bytes: 2
  %loadMem_4a92df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a92df = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a92df)
  store %struct.Memory* %call_4a92df, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4a92e1	 Bytes: 5
  %loadMem1_4a92e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4a92e1 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4a92e1, i64 -688657, i64 5, i64 5)
  store %struct.Memory* %call1_4a92e1, %struct.Memory** %MEMORY

  %loadMem2_4a92e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4a92e1 = load i64, i64* %3
  %call2_4a92e1 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4a92e1, %struct.Memory* %loadMem2_4a92e1)
  store %struct.Memory* %call2_4a92e1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c0c(%rbp)	 RIP: 4a92e6	 Bytes: 6
  %loadMem_4a92e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a92e6 = call %struct.Memory* @routine_movl__eax__MINUS0x1c0c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a92e6)
  store %struct.Memory* %call_4a92e6, %struct.Memory** %MEMORY

  ; Code: .L_4a92ec:	 RIP: 4a92ec	 Bytes: 0
  br label %block_.L_4a92ec
block_.L_4a92ec:

  ; Code: movl $0x15, -0x1be8(%rbp)	 RIP: 4a92ec	 Bytes: 10
  %loadMem_4a92ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a92ec = call %struct.Memory* @routine_movl__0x15__MINUS0x1be8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a92ec)
  store %struct.Memory* %call_4a92ec, %struct.Memory** %MEMORY

  ; Code: .L_4a92f6:	 RIP: 4a92f6	 Bytes: 0
  br label %block_.L_4a92f6
block_.L_4a92f6:

  ; Code: cmpl $0x3f, -0x1be8(%rbp)	 RIP: 4a92f6	 Bytes: 7
  %loadMem_4a92f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a92f6 = call %struct.Memory* @routine_cmpl__0x3f__MINUS0x1be8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a92f6)
  store %struct.Memory* %call_4a92f6, %struct.Memory** %MEMORY

  ; Code: je .L_4a9367	 RIP: 4a92fd	 Bytes: 6
  %loadMem_4a92fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a92fd = call %struct.Memory* @routine_je_.L_4a9367(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a92fd, i8* %BRANCH_TAKEN, i64 106, i64 6, i64 6)
  store %struct.Memory* %call_4a92fd, %struct.Memory** %MEMORY

  %loadBr_4a92fd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a92fd = icmp eq i8 %loadBr_4a92fd, 1
  br i1 %cmpBr_4a92fd, label %block_.L_4a9367, label %block_4a9303

block_4a9303:
  ; Code: movl $0x15, -0x1bec(%rbp)	 RIP: 4a9303	 Bytes: 10
  %loadMem_4a9303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9303 = call %struct.Memory* @routine_movl__0x15__MINUS0x1bec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9303)
  store %struct.Memory* %call_4a9303, %struct.Memory** %MEMORY

  ; Code: .L_4a930d:	 RIP: 4a930d	 Bytes: 0
  br label %block_.L_4a930d
block_.L_4a930d:

  ; Code: cmpl $0x3f, -0x1bec(%rbp)	 RIP: 4a930d	 Bytes: 7
  %loadMem_4a930d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a930d = call %struct.Memory* @routine_cmpl__0x3f__MINUS0x1bec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a930d)
  store %struct.Memory* %call_4a930d, %struct.Memory** %MEMORY

  ; Code: je .L_4a934e	 RIP: 4a9314	 Bytes: 6
  %loadMem_4a9314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9314 = call %struct.Memory* @routine_je_.L_4a934e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9314, i8* %BRANCH_TAKEN, i64 58, i64 6, i64 6)
  store %struct.Memory* %call_4a9314, %struct.Memory** %MEMORY

  %loadBr_4a9314 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a9314 = icmp eq i8 %loadBr_4a9314, 1
  br i1 %cmpBr_4a9314, label %block_.L_4a934e, label %block_4a931a

block_4a931a:
  ; Code: leaq -0x1bd0(%rbp), %rax	 RIP: 4a931a	 Bytes: 7
  %loadMem_4a931a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a931a = call %struct.Memory* @routine_leaq_MINUS0x1bd0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a931a)
  store %struct.Memory* %call_4a931a, %struct.Memory** %MEMORY

  ; Code: movslq -0x1be8(%rbp), %rcx	 RIP: 4a9321	 Bytes: 7
  %loadMem_4a9321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9321 = call %struct.Memory* @routine_movslq_MINUS0x1be8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9321)
  store %struct.Memory* %call_4a9321, %struct.Memory** %MEMORY

  ; Code: imulq $0x54, %rcx, %rcx	 RIP: 4a9328	 Bytes: 4
  %loadMem_4a9328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9328 = call %struct.Memory* @routine_imulq__0x54___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9328)
  store %struct.Memory* %call_4a9328, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4a932c	 Bytes: 3
  %loadMem_4a932c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a932c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a932c)
  store %struct.Memory* %call_4a932c, %struct.Memory** %MEMORY

  ; Code: movslq -0x1bec(%rbp), %rcx	 RIP: 4a932f	 Bytes: 7
  %loadMem_4a932f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a932f = call %struct.Memory* @routine_movslq_MINUS0x1bec__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a932f)
  store %struct.Memory* %call_4a932f, %struct.Memory** %MEMORY

  ; Code: movb $0x24, (%rax,%rcx,1)	 RIP: 4a9336	 Bytes: 4
  %loadMem_4a9336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9336 = call %struct.Memory* @routine_movb__0x24____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9336)
  store %struct.Memory* %call_4a9336, %struct.Memory** %MEMORY

  ; Code: movl -0x1bec(%rbp), %eax	 RIP: 4a933a	 Bytes: 6
  %loadMem_4a933a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a933a = call %struct.Memory* @routine_movl_MINUS0x1bec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a933a)
  store %struct.Memory* %call_4a933a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a9340	 Bytes: 3
  %loadMem_4a9340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9340 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9340)
  store %struct.Memory* %call_4a9340, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1bec(%rbp)	 RIP: 4a9343	 Bytes: 6
  %loadMem_4a9343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9343 = call %struct.Memory* @routine_movl__eax__MINUS0x1bec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9343)
  store %struct.Memory* %call_4a9343, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a930d	 RIP: 4a9349	 Bytes: 5
  %loadMem_4a9349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9349 = call %struct.Memory* @routine_jmpq_.L_4a930d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9349, i64 -60, i64 5)
  store %struct.Memory* %call_4a9349, %struct.Memory** %MEMORY

  br label %block_.L_4a930d

  ; Code: .L_4a934e:	 RIP: 4a934e	 Bytes: 0
block_.L_4a934e:

  ; Code: jmpq .L_4a9353	 RIP: 4a934e	 Bytes: 5
  %loadMem_4a934e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a934e = call %struct.Memory* @routine_jmpq_.L_4a9353(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a934e, i64 5, i64 5)
  store %struct.Memory* %call_4a934e, %struct.Memory** %MEMORY

  br label %block_.L_4a9353

  ; Code: .L_4a9353:	 RIP: 4a9353	 Bytes: 0
block_.L_4a9353:

  ; Code: movl -0x1be8(%rbp), %eax	 RIP: 4a9353	 Bytes: 6
  %loadMem_4a9353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9353 = call %struct.Memory* @routine_movl_MINUS0x1be8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9353)
  store %struct.Memory* %call_4a9353, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a9359	 Bytes: 3
  %loadMem_4a9359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9359 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9359)
  store %struct.Memory* %call_4a9359, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1be8(%rbp)	 RIP: 4a935c	 Bytes: 6
  %loadMem_4a935c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a935c = call %struct.Memory* @routine_movl__eax__MINUS0x1be8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a935c)
  store %struct.Memory* %call_4a935c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a92f6	 RIP: 4a9362	 Bytes: 5
  %loadMem_4a9362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9362 = call %struct.Memory* @routine_jmpq_.L_4a92f6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9362, i64 -108, i64 5)
  store %struct.Memory* %call_4a9362, %struct.Memory** %MEMORY

  br label %block_.L_4a92f6

  ; Code: .L_4a9367:	 RIP: 4a9367	 Bytes: 0
block_.L_4a9367:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4a9367	 Bytes: 4
  %loadMem_4a9367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9367 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9367)
  store %struct.Memory* %call_4a9367, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rax), %ecx	 RIP: 4a936b	 Bytes: 3
  %loadMem_4a936b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a936b = call %struct.Memory* @routine_movl_0x18__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a936b)
  store %struct.Memory* %call_4a936b, %struct.Memory** %MEMORY

  ; Code: addl -0x1bd4(%rbp), %ecx	 RIP: 4a936e	 Bytes: 6
  %loadMem_4a936e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a936e = call %struct.Memory* @routine_addl_MINUS0x1bd4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a936e)
  store %struct.Memory* %call_4a936e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1be8(%rbp)	 RIP: 4a9374	 Bytes: 6
  %loadMem_4a9374 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9374 = call %struct.Memory* @routine_movl__ecx__MINUS0x1be8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9374)
  store %struct.Memory* %call_4a9374, %struct.Memory** %MEMORY

  ; Code: .L_4a937a:	 RIP: 4a937a	 Bytes: 0
  br label %block_.L_4a937a
block_.L_4a937a:

  ; Code: movl -0x1be8(%rbp), %eax	 RIP: 4a937a	 Bytes: 6
  %loadMem_4a937a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a937a = call %struct.Memory* @routine_movl_MINUS0x1be8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a937a)
  store %struct.Memory* %call_4a937a, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4a9380	 Bytes: 4
  %loadMem_4a9380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9380 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9380)
  store %struct.Memory* %call_4a9380, %struct.Memory** %MEMORY

  ; Code: movl 0x20(%rcx), %edx	 RIP: 4a9384	 Bytes: 3
  %loadMem_4a9384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9384 = call %struct.Memory* @routine_movl_0x20__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9384)
  store %struct.Memory* %call_4a9384, %struct.Memory** %MEMORY

  ; Code: addl -0x1bd4(%rbp), %edx	 RIP: 4a9387	 Bytes: 6
  %loadMem_4a9387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9387 = call %struct.Memory* @routine_addl_MINUS0x1bd4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9387)
  store %struct.Memory* %call_4a9387, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 4a938d	 Bytes: 3
  %loadMem_4a938d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a938d = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a938d)
  store %struct.Memory* %call_4a938d, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %eax	 RIP: 4a9390	 Bytes: 2
  %loadMem_4a9390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9390 = call %struct.Memory* @routine_cmpl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9390)
  store %struct.Memory* %call_4a9390, %struct.Memory** %MEMORY

  ; Code: je .L_4a9416	 RIP: 4a9392	 Bytes: 6
  %loadMem_4a9392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9392 = call %struct.Memory* @routine_je_.L_4a9416(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9392, i8* %BRANCH_TAKEN, i64 132, i64 6, i64 6)
  store %struct.Memory* %call_4a9392, %struct.Memory** %MEMORY

  %loadBr_4a9392 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a9392 = icmp eq i8 %loadBr_4a9392, 1
  br i1 %cmpBr_4a9392, label %block_.L_4a9416, label %block_4a9398

block_4a9398:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 4a9398	 Bytes: 4
  %loadMem_4a9398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9398 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9398)
  store %struct.Memory* %call_4a9398, %struct.Memory** %MEMORY

  ; Code: movl 0x1c(%rax), %ecx	 RIP: 4a939c	 Bytes: 3
  %loadMem_4a939c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a939c = call %struct.Memory* @routine_movl_0x1c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a939c)
  store %struct.Memory* %call_4a939c, %struct.Memory** %MEMORY

  ; Code: addl -0x1bd8(%rbp), %ecx	 RIP: 4a939f	 Bytes: 6
  %loadMem_4a939f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a939f = call %struct.Memory* @routine_addl_MINUS0x1bd8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a939f)
  store %struct.Memory* %call_4a939f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1bec(%rbp)	 RIP: 4a93a5	 Bytes: 6
  %loadMem_4a93a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a93a5 = call %struct.Memory* @routine_movl__ecx__MINUS0x1bec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a93a5)
  store %struct.Memory* %call_4a93a5, %struct.Memory** %MEMORY

  ; Code: .L_4a93ab:	 RIP: 4a93ab	 Bytes: 0
  br label %block_.L_4a93ab
block_.L_4a93ab:

  ; Code: movl -0x1bec(%rbp), %eax	 RIP: 4a93ab	 Bytes: 6
  %loadMem_4a93ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a93ab = call %struct.Memory* @routine_movl_MINUS0x1bec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a93ab)
  store %struct.Memory* %call_4a93ab, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4a93b1	 Bytes: 4
  %loadMem_4a93b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a93b1 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a93b1)
  store %struct.Memory* %call_4a93b1, %struct.Memory** %MEMORY

  ; Code: movl 0x24(%rcx), %edx	 RIP: 4a93b5	 Bytes: 3
  %loadMem_4a93b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a93b5 = call %struct.Memory* @routine_movl_0x24__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a93b5)
  store %struct.Memory* %call_4a93b5, %struct.Memory** %MEMORY

  ; Code: addl -0x1bd8(%rbp), %edx	 RIP: 4a93b8	 Bytes: 6
  %loadMem_4a93b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a93b8 = call %struct.Memory* @routine_addl_MINUS0x1bd8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a93b8)
  store %struct.Memory* %call_4a93b8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 4a93be	 Bytes: 3
  %loadMem_4a93be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a93be = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a93be)
  store %struct.Memory* %call_4a93be, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %eax	 RIP: 4a93c1	 Bytes: 2
  %loadMem_4a93c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a93c1 = call %struct.Memory* @routine_cmpl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a93c1)
  store %struct.Memory* %call_4a93c1, %struct.Memory** %MEMORY

  ; Code: je .L_4a93fd	 RIP: 4a93c3	 Bytes: 6
  %loadMem_4a93c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a93c3 = call %struct.Memory* @routine_je_.L_4a93fd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a93c3, i8* %BRANCH_TAKEN, i64 58, i64 6, i64 6)
  store %struct.Memory* %call_4a93c3, %struct.Memory** %MEMORY

  %loadBr_4a93c3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a93c3 = icmp eq i8 %loadBr_4a93c3, 1
  br i1 %cmpBr_4a93c3, label %block_.L_4a93fd, label %block_4a93c9

block_4a93c9:
  ; Code: leaq -0x1bd0(%rbp), %rax	 RIP: 4a93c9	 Bytes: 7
  %loadMem_4a93c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a93c9 = call %struct.Memory* @routine_leaq_MINUS0x1bd0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a93c9)
  store %struct.Memory* %call_4a93c9, %struct.Memory** %MEMORY

  ; Code: movslq -0x1be8(%rbp), %rcx	 RIP: 4a93d0	 Bytes: 7
  %loadMem_4a93d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a93d0 = call %struct.Memory* @routine_movslq_MINUS0x1be8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a93d0)
  store %struct.Memory* %call_4a93d0, %struct.Memory** %MEMORY

  ; Code: imulq $0x54, %rcx, %rcx	 RIP: 4a93d7	 Bytes: 4
  %loadMem_4a93d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a93d7 = call %struct.Memory* @routine_imulq__0x54___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a93d7)
  store %struct.Memory* %call_4a93d7, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4a93db	 Bytes: 3
  %loadMem_4a93db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a93db = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a93db)
  store %struct.Memory* %call_4a93db, %struct.Memory** %MEMORY

  ; Code: movslq -0x1bec(%rbp), %rcx	 RIP: 4a93de	 Bytes: 7
  %loadMem_4a93de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a93de = call %struct.Memory* @routine_movslq_MINUS0x1bec__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a93de)
  store %struct.Memory* %call_4a93de, %struct.Memory** %MEMORY

  ; Code: movb $0x3f, (%rax,%rcx,1)	 RIP: 4a93e5	 Bytes: 4
  %loadMem_4a93e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a93e5 = call %struct.Memory* @routine_movb__0x3f____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a93e5)
  store %struct.Memory* %call_4a93e5, %struct.Memory** %MEMORY

  ; Code: movl -0x1bec(%rbp), %eax	 RIP: 4a93e9	 Bytes: 6
  %loadMem_4a93e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a93e9 = call %struct.Memory* @routine_movl_MINUS0x1bec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a93e9)
  store %struct.Memory* %call_4a93e9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a93ef	 Bytes: 3
  %loadMem_4a93ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a93ef = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a93ef)
  store %struct.Memory* %call_4a93ef, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1bec(%rbp)	 RIP: 4a93f2	 Bytes: 6
  %loadMem_4a93f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a93f2 = call %struct.Memory* @routine_movl__eax__MINUS0x1bec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a93f2)
  store %struct.Memory* %call_4a93f2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a93ab	 RIP: 4a93f8	 Bytes: 5
  %loadMem_4a93f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a93f8 = call %struct.Memory* @routine_jmpq_.L_4a93ab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a93f8, i64 -77, i64 5)
  store %struct.Memory* %call_4a93f8, %struct.Memory** %MEMORY

  br label %block_.L_4a93ab

  ; Code: .L_4a93fd:	 RIP: 4a93fd	 Bytes: 0
block_.L_4a93fd:

  ; Code: jmpq .L_4a9402	 RIP: 4a93fd	 Bytes: 5
  %loadMem_4a93fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a93fd = call %struct.Memory* @routine_jmpq_.L_4a9402(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a93fd, i64 5, i64 5)
  store %struct.Memory* %call_4a93fd, %struct.Memory** %MEMORY

  br label %block_.L_4a9402

  ; Code: .L_4a9402:	 RIP: 4a9402	 Bytes: 0
block_.L_4a9402:

  ; Code: movl -0x1be8(%rbp), %eax	 RIP: 4a9402	 Bytes: 6
  %loadMem_4a9402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9402 = call %struct.Memory* @routine_movl_MINUS0x1be8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9402)
  store %struct.Memory* %call_4a9402, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a9408	 Bytes: 3
  %loadMem_4a9408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9408 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9408)
  store %struct.Memory* %call_4a9408, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1be8(%rbp)	 RIP: 4a940b	 Bytes: 6
  %loadMem_4a940b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a940b = call %struct.Memory* @routine_movl__eax__MINUS0x1be8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a940b)
  store %struct.Memory* %call_4a940b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a937a	 RIP: 4a9411	 Bytes: 5
  %loadMem_4a9411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9411 = call %struct.Memory* @routine_jmpq_.L_4a937a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9411, i64 -151, i64 5)
  store %struct.Memory* %call_4a9411, %struct.Memory** %MEMORY

  br label %block_.L_4a937a

  ; Code: .L_4a9416:	 RIP: 4a9416	 Bytes: 0
block_.L_4a9416:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4a9416	 Bytes: 4
  %loadMem_4a9416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9416 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9416)
  store %struct.Memory* %call_4a9416, %struct.Memory** %MEMORY

  ; Code: movl 0x30(%rax), %ecx	 RIP: 4a941a	 Bytes: 3
  %loadMem_4a941a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a941a = call %struct.Memory* @routine_movl_0x30__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a941a)
  store %struct.Memory* %call_4a941a, %struct.Memory** %MEMORY

  ; Code: andl $0x2, %ecx	 RIP: 4a941d	 Bytes: 3
  %loadMem_4a941d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a941d = call %struct.Memory* @routine_andl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a941d)
  store %struct.Memory* %call_4a941d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 4a9420	 Bytes: 3
  %loadMem_4a9420 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9420 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9420)
  store %struct.Memory* %call_4a9420, %struct.Memory** %MEMORY

  ; Code: je .L_4a94b5	 RIP: 4a9423	 Bytes: 6
  %loadMem_4a9423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9423 = call %struct.Memory* @routine_je_.L_4a94b5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9423, i8* %BRANCH_TAKEN, i64 146, i64 6, i64 6)
  store %struct.Memory* %call_4a9423, %struct.Memory** %MEMORY

  %loadBr_4a9423 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a9423 = icmp eq i8 %loadBr_4a9423, 1
  br i1 %cmpBr_4a9423, label %block_.L_4a94b5, label %block_4a9429

block_4a9429:
  ; Code: movl -0x1bd4(%rbp), %eax	 RIP: 4a9429	 Bytes: 6
  %loadMem_4a9429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9429 = call %struct.Memory* @routine_movl_MINUS0x1bd4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9429)
  store %struct.Memory* %call_4a9429, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4a942f	 Bytes: 4
  %loadMem_4a942f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a942f = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a942f)
  store %struct.Memory* %call_4a942f, %struct.Memory** %MEMORY

  ; Code: addl 0x20(%rcx), %eax	 RIP: 4a9433	 Bytes: 3
  %loadMem_4a9433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9433 = call %struct.Memory* @routine_addl_0x20__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9433)
  store %struct.Memory* %call_4a9433, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a9436	 Bytes: 3
  %loadMem_4a9436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9436 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9436)
  store %struct.Memory* %call_4a9436, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1be8(%rbp)	 RIP: 4a9439	 Bytes: 6
  %loadMem_4a9439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9439 = call %struct.Memory* @routine_movl__eax__MINUS0x1be8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9439)
  store %struct.Memory* %call_4a9439, %struct.Memory** %MEMORY

  ; Code: .L_4a943f:	 RIP: 4a943f	 Bytes: 0
  br label %block_.L_4a943f
block_.L_4a943f:

  ; Code: cmpl $0x3f, -0x1be8(%rbp)	 RIP: 4a943f	 Bytes: 7
  %loadMem_4a943f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a943f = call %struct.Memory* @routine_cmpl__0x3f__MINUS0x1be8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a943f)
  store %struct.Memory* %call_4a943f, %struct.Memory** %MEMORY

  ; Code: je .L_4a94b0	 RIP: 4a9446	 Bytes: 6
  %loadMem_4a9446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9446 = call %struct.Memory* @routine_je_.L_4a94b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9446, i8* %BRANCH_TAKEN, i64 106, i64 6, i64 6)
  store %struct.Memory* %call_4a9446, %struct.Memory** %MEMORY

  %loadBr_4a9446 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a9446 = icmp eq i8 %loadBr_4a9446, 1
  br i1 %cmpBr_4a9446, label %block_.L_4a94b0, label %block_4a944c

block_4a944c:
  ; Code: movl $0x0, -0x1bec(%rbp)	 RIP: 4a944c	 Bytes: 10
  %loadMem_4a944c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a944c = call %struct.Memory* @routine_movl__0x0__MINUS0x1bec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a944c)
  store %struct.Memory* %call_4a944c, %struct.Memory** %MEMORY

  ; Code: .L_4a9456:	 RIP: 4a9456	 Bytes: 0
  br label %block_.L_4a9456
block_.L_4a9456:

  ; Code: cmpl $0x3f, -0x1bec(%rbp)	 RIP: 4a9456	 Bytes: 7
  %loadMem_4a9456 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9456 = call %struct.Memory* @routine_cmpl__0x3f__MINUS0x1bec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9456)
  store %struct.Memory* %call_4a9456, %struct.Memory** %MEMORY

  ; Code: je .L_4a9497	 RIP: 4a945d	 Bytes: 6
  %loadMem_4a945d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a945d = call %struct.Memory* @routine_je_.L_4a9497(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a945d, i8* %BRANCH_TAKEN, i64 58, i64 6, i64 6)
  store %struct.Memory* %call_4a945d, %struct.Memory** %MEMORY

  %loadBr_4a945d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a945d = icmp eq i8 %loadBr_4a945d, 1
  br i1 %cmpBr_4a945d, label %block_.L_4a9497, label %block_4a9463

block_4a9463:
  ; Code: leaq -0x1bd0(%rbp), %rax	 RIP: 4a9463	 Bytes: 7
  %loadMem_4a9463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9463 = call %struct.Memory* @routine_leaq_MINUS0x1bd0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9463)
  store %struct.Memory* %call_4a9463, %struct.Memory** %MEMORY

  ; Code: movslq -0x1be8(%rbp), %rcx	 RIP: 4a946a	 Bytes: 7
  %loadMem_4a946a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a946a = call %struct.Memory* @routine_movslq_MINUS0x1be8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a946a)
  store %struct.Memory* %call_4a946a, %struct.Memory** %MEMORY

  ; Code: imulq $0x54, %rcx, %rcx	 RIP: 4a9471	 Bytes: 4
  %loadMem_4a9471 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9471 = call %struct.Memory* @routine_imulq__0x54___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9471)
  store %struct.Memory* %call_4a9471, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4a9475	 Bytes: 3
  %loadMem_4a9475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9475 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9475)
  store %struct.Memory* %call_4a9475, %struct.Memory** %MEMORY

  ; Code: movslq -0x1bec(%rbp), %rcx	 RIP: 4a9478	 Bytes: 7
  %loadMem_4a9478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9478 = call %struct.Memory* @routine_movslq_MINUS0x1bec__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9478)
  store %struct.Memory* %call_4a9478, %struct.Memory** %MEMORY

  ; Code: movb $0x2d, (%rax,%rcx,1)	 RIP: 4a947f	 Bytes: 4
  %loadMem_4a947f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a947f = call %struct.Memory* @routine_movb__0x2d____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a947f)
  store %struct.Memory* %call_4a947f, %struct.Memory** %MEMORY

  ; Code: movl -0x1bec(%rbp), %eax	 RIP: 4a9483	 Bytes: 6
  %loadMem_4a9483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9483 = call %struct.Memory* @routine_movl_MINUS0x1bec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9483)
  store %struct.Memory* %call_4a9483, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a9489	 Bytes: 3
  %loadMem_4a9489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9489 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9489)
  store %struct.Memory* %call_4a9489, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1bec(%rbp)	 RIP: 4a948c	 Bytes: 6
  %loadMem_4a948c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a948c = call %struct.Memory* @routine_movl__eax__MINUS0x1bec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a948c)
  store %struct.Memory* %call_4a948c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a9456	 RIP: 4a9492	 Bytes: 5
  %loadMem_4a9492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9492 = call %struct.Memory* @routine_jmpq_.L_4a9456(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9492, i64 -60, i64 5)
  store %struct.Memory* %call_4a9492, %struct.Memory** %MEMORY

  br label %block_.L_4a9456

  ; Code: .L_4a9497:	 RIP: 4a9497	 Bytes: 0
block_.L_4a9497:

  ; Code: jmpq .L_4a949c	 RIP: 4a9497	 Bytes: 5
  %loadMem_4a9497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9497 = call %struct.Memory* @routine_jmpq_.L_4a949c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9497, i64 5, i64 5)
  store %struct.Memory* %call_4a9497, %struct.Memory** %MEMORY

  br label %block_.L_4a949c

  ; Code: .L_4a949c:	 RIP: 4a949c	 Bytes: 0
block_.L_4a949c:

  ; Code: movl -0x1be8(%rbp), %eax	 RIP: 4a949c	 Bytes: 6
  %loadMem_4a949c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a949c = call %struct.Memory* @routine_movl_MINUS0x1be8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a949c)
  store %struct.Memory* %call_4a949c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a94a2	 Bytes: 3
  %loadMem_4a94a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a94a2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a94a2)
  store %struct.Memory* %call_4a94a2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1be8(%rbp)	 RIP: 4a94a5	 Bytes: 6
  %loadMem_4a94a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a94a5 = call %struct.Memory* @routine_movl__eax__MINUS0x1be8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a94a5)
  store %struct.Memory* %call_4a94a5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a943f	 RIP: 4a94ab	 Bytes: 5
  %loadMem_4a94ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a94ab = call %struct.Memory* @routine_jmpq_.L_4a943f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a94ab, i64 -108, i64 5)
  store %struct.Memory* %call_4a94ab, %struct.Memory** %MEMORY

  br label %block_.L_4a943f

  ; Code: .L_4a94b0:	 RIP: 4a94b0	 Bytes: 0
block_.L_4a94b0:

  ; Code: jmpq .L_4a94b5	 RIP: 4a94b0	 Bytes: 5
  %loadMem_4a94b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a94b0 = call %struct.Memory* @routine_jmpq_.L_4a94b5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a94b0, i64 5, i64 5)
  store %struct.Memory* %call_4a94b0, %struct.Memory** %MEMORY

  br label %block_.L_4a94b5

  ; Code: .L_4a94b5:	 RIP: 4a94b5	 Bytes: 0
block_.L_4a94b5:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4a94b5	 Bytes: 4
  %loadMem_4a94b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a94b5 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a94b5)
  store %struct.Memory* %call_4a94b5, %struct.Memory** %MEMORY

  ; Code: movl 0x30(%rax), %ecx	 RIP: 4a94b9	 Bytes: 3
  %loadMem_4a94b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a94b9 = call %struct.Memory* @routine_movl_0x30__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a94b9)
  store %struct.Memory* %call_4a94b9, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %ecx	 RIP: 4a94bc	 Bytes: 3
  %loadMem_4a94bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a94bc = call %struct.Memory* @routine_andl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a94bc)
  store %struct.Memory* %call_4a94bc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 4a94bf	 Bytes: 3
  %loadMem_4a94bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a94bf = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a94bf)
  store %struct.Memory* %call_4a94bf, %struct.Memory** %MEMORY

  ; Code: je .L_4a9554	 RIP: 4a94c2	 Bytes: 6
  %loadMem_4a94c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a94c2 = call %struct.Memory* @routine_je_.L_4a9554(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a94c2, i8* %BRANCH_TAKEN, i64 146, i64 6, i64 6)
  store %struct.Memory* %call_4a94c2, %struct.Memory** %MEMORY

  %loadBr_4a94c2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a94c2 = icmp eq i8 %loadBr_4a94c2, 1
  br i1 %cmpBr_4a94c2, label %block_.L_4a9554, label %block_4a94c8

block_4a94c8:
  ; Code: movl $0x0, -0x1be8(%rbp)	 RIP: 4a94c8	 Bytes: 10
  %loadMem_4a94c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a94c8 = call %struct.Memory* @routine_movl__0x0__MINUS0x1be8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a94c8)
  store %struct.Memory* %call_4a94c8, %struct.Memory** %MEMORY

  ; Code: .L_4a94d2:	 RIP: 4a94d2	 Bytes: 0
  br label %block_.L_4a94d2
block_.L_4a94d2:

  ; Code: cmpl $0x3f, -0x1be8(%rbp)	 RIP: 4a94d2	 Bytes: 7
  %loadMem_4a94d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a94d2 = call %struct.Memory* @routine_cmpl__0x3f__MINUS0x1be8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a94d2)
  store %struct.Memory* %call_4a94d2, %struct.Memory** %MEMORY

  ; Code: je .L_4a954f	 RIP: 4a94d9	 Bytes: 6
  %loadMem_4a94d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a94d9 = call %struct.Memory* @routine_je_.L_4a954f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a94d9, i8* %BRANCH_TAKEN, i64 118, i64 6, i64 6)
  store %struct.Memory* %call_4a94d9, %struct.Memory** %MEMORY

  %loadBr_4a94d9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a94d9 = icmp eq i8 %loadBr_4a94d9, 1
  br i1 %cmpBr_4a94d9, label %block_.L_4a954f, label %block_4a94df

block_4a94df:
  ; Code: movl -0x1bd8(%rbp), %eax	 RIP: 4a94df	 Bytes: 6
  %loadMem_4a94df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a94df = call %struct.Memory* @routine_movl_MINUS0x1bd8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a94df)
  store %struct.Memory* %call_4a94df, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4a94e5	 Bytes: 4
  %loadMem_4a94e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a94e5 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a94e5)
  store %struct.Memory* %call_4a94e5, %struct.Memory** %MEMORY

  ; Code: addl 0x24(%rcx), %eax	 RIP: 4a94e9	 Bytes: 3
  %loadMem_4a94e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a94e9 = call %struct.Memory* @routine_addl_0x24__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a94e9)
  store %struct.Memory* %call_4a94e9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a94ec	 Bytes: 3
  %loadMem_4a94ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a94ec = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a94ec)
  store %struct.Memory* %call_4a94ec, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1bec(%rbp)	 RIP: 4a94ef	 Bytes: 6
  %loadMem_4a94ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a94ef = call %struct.Memory* @routine_movl__eax__MINUS0x1bec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a94ef)
  store %struct.Memory* %call_4a94ef, %struct.Memory** %MEMORY

  ; Code: .L_4a94f5:	 RIP: 4a94f5	 Bytes: 0
  br label %block_.L_4a94f5
block_.L_4a94f5:

  ; Code: cmpl $0x3f, -0x1bec(%rbp)	 RIP: 4a94f5	 Bytes: 7
  %loadMem_4a94f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a94f5 = call %struct.Memory* @routine_cmpl__0x3f__MINUS0x1bec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a94f5)
  store %struct.Memory* %call_4a94f5, %struct.Memory** %MEMORY

  ; Code: je .L_4a9536	 RIP: 4a94fc	 Bytes: 6
  %loadMem_4a94fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a94fc = call %struct.Memory* @routine_je_.L_4a9536(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a94fc, i8* %BRANCH_TAKEN, i64 58, i64 6, i64 6)
  store %struct.Memory* %call_4a94fc, %struct.Memory** %MEMORY

  %loadBr_4a94fc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a94fc = icmp eq i8 %loadBr_4a94fc, 1
  br i1 %cmpBr_4a94fc, label %block_.L_4a9536, label %block_4a9502

block_4a9502:
  ; Code: leaq -0x1bd0(%rbp), %rax	 RIP: 4a9502	 Bytes: 7
  %loadMem_4a9502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9502 = call %struct.Memory* @routine_leaq_MINUS0x1bd0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9502)
  store %struct.Memory* %call_4a9502, %struct.Memory** %MEMORY

  ; Code: movslq -0x1be8(%rbp), %rcx	 RIP: 4a9509	 Bytes: 7
  %loadMem_4a9509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9509 = call %struct.Memory* @routine_movslq_MINUS0x1be8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9509)
  store %struct.Memory* %call_4a9509, %struct.Memory** %MEMORY

  ; Code: imulq $0x54, %rcx, %rcx	 RIP: 4a9510	 Bytes: 4
  %loadMem_4a9510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9510 = call %struct.Memory* @routine_imulq__0x54___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9510)
  store %struct.Memory* %call_4a9510, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4a9514	 Bytes: 3
  %loadMem_4a9514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9514 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9514)
  store %struct.Memory* %call_4a9514, %struct.Memory** %MEMORY

  ; Code: movslq -0x1bec(%rbp), %rcx	 RIP: 4a9517	 Bytes: 7
  %loadMem_4a9517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9517 = call %struct.Memory* @routine_movslq_MINUS0x1bec__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9517)
  store %struct.Memory* %call_4a9517, %struct.Memory** %MEMORY

  ; Code: movb $0x7c, (%rax,%rcx,1)	 RIP: 4a951e	 Bytes: 4
  %loadMem_4a951e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a951e = call %struct.Memory* @routine_movb__0x7c____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a951e)
  store %struct.Memory* %call_4a951e, %struct.Memory** %MEMORY

  ; Code: movl -0x1bec(%rbp), %eax	 RIP: 4a9522	 Bytes: 6
  %loadMem_4a9522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9522 = call %struct.Memory* @routine_movl_MINUS0x1bec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9522)
  store %struct.Memory* %call_4a9522, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a9528	 Bytes: 3
  %loadMem_4a9528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9528 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9528)
  store %struct.Memory* %call_4a9528, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1bec(%rbp)	 RIP: 4a952b	 Bytes: 6
  %loadMem_4a952b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a952b = call %struct.Memory* @routine_movl__eax__MINUS0x1bec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a952b)
  store %struct.Memory* %call_4a952b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a94f5	 RIP: 4a9531	 Bytes: 5
  %loadMem_4a9531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9531 = call %struct.Memory* @routine_jmpq_.L_4a94f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9531, i64 -60, i64 5)
  store %struct.Memory* %call_4a9531, %struct.Memory** %MEMORY

  br label %block_.L_4a94f5

  ; Code: .L_4a9536:	 RIP: 4a9536	 Bytes: 0
block_.L_4a9536:

  ; Code: jmpq .L_4a953b	 RIP: 4a9536	 Bytes: 5
  %loadMem_4a9536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9536 = call %struct.Memory* @routine_jmpq_.L_4a953b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9536, i64 5, i64 5)
  store %struct.Memory* %call_4a9536, %struct.Memory** %MEMORY

  br label %block_.L_4a953b

  ; Code: .L_4a953b:	 RIP: 4a953b	 Bytes: 0
block_.L_4a953b:

  ; Code: movl -0x1be8(%rbp), %eax	 RIP: 4a953b	 Bytes: 6
  %loadMem_4a953b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a953b = call %struct.Memory* @routine_movl_MINUS0x1be8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a953b)
  store %struct.Memory* %call_4a953b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a9541	 Bytes: 3
  %loadMem_4a9541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9541 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9541)
  store %struct.Memory* %call_4a9541, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1be8(%rbp)	 RIP: 4a9544	 Bytes: 6
  %loadMem_4a9544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9544 = call %struct.Memory* @routine_movl__eax__MINUS0x1be8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9544)
  store %struct.Memory* %call_4a9544, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a94d2	 RIP: 4a954a	 Bytes: 5
  %loadMem_4a954a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a954a = call %struct.Memory* @routine_jmpq_.L_4a94d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a954a, i64 -120, i64 5)
  store %struct.Memory* %call_4a954a, %struct.Memory** %MEMORY

  br label %block_.L_4a94d2

  ; Code: .L_4a954f:	 RIP: 4a954f	 Bytes: 0
block_.L_4a954f:

  ; Code: jmpq .L_4a9554	 RIP: 4a954f	 Bytes: 5
  %loadMem_4a954f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a954f = call %struct.Memory* @routine_jmpq_.L_4a9554(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a954f, i64 5, i64 5)
  store %struct.Memory* %call_4a954f, %struct.Memory** %MEMORY

  br label %block_.L_4a9554

  ; Code: .L_4a9554:	 RIP: 4a9554	 Bytes: 0
block_.L_4a9554:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4a9554	 Bytes: 4
  %loadMem_4a9554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9554 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9554)
  store %struct.Memory* %call_4a9554, %struct.Memory** %MEMORY

  ; Code: movl 0x30(%rax), %ecx	 RIP: 4a9558	 Bytes: 3
  %loadMem_4a9558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9558 = call %struct.Memory* @routine_movl_0x30__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9558)
  store %struct.Memory* %call_4a9558, %struct.Memory** %MEMORY

  ; Code: andl $0x1, %ecx	 RIP: 4a955b	 Bytes: 3
  %loadMem_4a955b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a955b = call %struct.Memory* @routine_andl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a955b)
  store %struct.Memory* %call_4a955b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 4a955e	 Bytes: 3
  %loadMem_4a955e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a955e = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a955e)
  store %struct.Memory* %call_4a955e, %struct.Memory** %MEMORY

  ; Code: je .L_4a95f5	 RIP: 4a9561	 Bytes: 6
  %loadMem_4a9561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9561 = call %struct.Memory* @routine_je_.L_4a95f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9561, i8* %BRANCH_TAKEN, i64 148, i64 6, i64 6)
  store %struct.Memory* %call_4a9561, %struct.Memory** %MEMORY

  %loadBr_4a9561 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a9561 = icmp eq i8 %loadBr_4a9561, 1
  br i1 %cmpBr_4a9561, label %block_.L_4a95f5, label %block_4a9567

block_4a9567:
  ; Code: movl $0x0, -0x1be8(%rbp)	 RIP: 4a9567	 Bytes: 10
  %loadMem_4a9567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9567 = call %struct.Memory* @routine_movl__0x0__MINUS0x1be8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9567)
  store %struct.Memory* %call_4a9567, %struct.Memory** %MEMORY

  ; Code: .L_4a9571:	 RIP: 4a9571	 Bytes: 0
  br label %block_.L_4a9571
block_.L_4a9571:

  ; Code: movl -0x1be8(%rbp), %eax	 RIP: 4a9571	 Bytes: 6
  %loadMem_4a9571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9571 = call %struct.Memory* @routine_movl_MINUS0x1be8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9571)
  store %struct.Memory* %call_4a9571, %struct.Memory** %MEMORY

  ; Code: movl -0x1bd4(%rbp), %ecx	 RIP: 4a9577	 Bytes: 6
  %loadMem_4a9577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9577 = call %struct.Memory* @routine_movl_MINUS0x1bd4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9577)
  store %struct.Memory* %call_4a9577, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdx	 RIP: 4a957d	 Bytes: 4
  %loadMem_4a957d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a957d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a957d)
  store %struct.Memory* %call_4a957d, %struct.Memory** %MEMORY

  ; Code: addl 0x18(%rdx), %ecx	 RIP: 4a9581	 Bytes: 3
  %loadMem_4a9581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9581 = call %struct.Memory* @routine_addl_0x18__rdx____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9581)
  store %struct.Memory* %call_4a9581, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 4a9584	 Bytes: 2
  %loadMem_4a9584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9584 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9584)
  store %struct.Memory* %call_4a9584, %struct.Memory** %MEMORY

  ; Code: je .L_4a95f0	 RIP: 4a9586	 Bytes: 6
  %loadMem_4a9586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9586 = call %struct.Memory* @routine_je_.L_4a95f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9586, i8* %BRANCH_TAKEN, i64 106, i64 6, i64 6)
  store %struct.Memory* %call_4a9586, %struct.Memory** %MEMORY

  %loadBr_4a9586 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a9586 = icmp eq i8 %loadBr_4a9586, 1
  br i1 %cmpBr_4a9586, label %block_.L_4a95f0, label %block_4a958c

block_4a958c:
  ; Code: movl $0x0, -0x1bec(%rbp)	 RIP: 4a958c	 Bytes: 10
  %loadMem_4a958c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a958c = call %struct.Memory* @routine_movl__0x0__MINUS0x1bec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a958c)
  store %struct.Memory* %call_4a958c, %struct.Memory** %MEMORY

  ; Code: .L_4a9596:	 RIP: 4a9596	 Bytes: 0
  br label %block_.L_4a9596
block_.L_4a9596:

  ; Code: cmpl $0x54, -0x1bec(%rbp)	 RIP: 4a9596	 Bytes: 7
  %loadMem_4a9596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9596 = call %struct.Memory* @routine_cmpl__0x54__MINUS0x1bec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9596)
  store %struct.Memory* %call_4a9596, %struct.Memory** %MEMORY

  ; Code: je .L_4a95d7	 RIP: 4a959d	 Bytes: 6
  %loadMem_4a959d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a959d = call %struct.Memory* @routine_je_.L_4a95d7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a959d, i8* %BRANCH_TAKEN, i64 58, i64 6, i64 6)
  store %struct.Memory* %call_4a959d, %struct.Memory** %MEMORY

  %loadBr_4a959d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a959d = icmp eq i8 %loadBr_4a959d, 1
  br i1 %cmpBr_4a959d, label %block_.L_4a95d7, label %block_4a95a3

block_4a95a3:
  ; Code: leaq -0x1bd0(%rbp), %rax	 RIP: 4a95a3	 Bytes: 7
  %loadMem_4a95a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a95a3 = call %struct.Memory* @routine_leaq_MINUS0x1bd0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a95a3)
  store %struct.Memory* %call_4a95a3, %struct.Memory** %MEMORY

  ; Code: movslq -0x1be8(%rbp), %rcx	 RIP: 4a95aa	 Bytes: 7
  %loadMem_4a95aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a95aa = call %struct.Memory* @routine_movslq_MINUS0x1be8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a95aa)
  store %struct.Memory* %call_4a95aa, %struct.Memory** %MEMORY

  ; Code: imulq $0x54, %rcx, %rcx	 RIP: 4a95b1	 Bytes: 4
  %loadMem_4a95b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a95b1 = call %struct.Memory* @routine_imulq__0x54___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a95b1)
  store %struct.Memory* %call_4a95b1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4a95b5	 Bytes: 3
  %loadMem_4a95b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a95b5 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a95b5)
  store %struct.Memory* %call_4a95b5, %struct.Memory** %MEMORY

  ; Code: movslq -0x1bec(%rbp), %rcx	 RIP: 4a95b8	 Bytes: 7
  %loadMem_4a95b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a95b8 = call %struct.Memory* @routine_movslq_MINUS0x1bec__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a95b8)
  store %struct.Memory* %call_4a95b8, %struct.Memory** %MEMORY

  ; Code: movb $0x2d, (%rax,%rcx,1)	 RIP: 4a95bf	 Bytes: 4
  %loadMem_4a95bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a95bf = call %struct.Memory* @routine_movb__0x2d____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a95bf)
  store %struct.Memory* %call_4a95bf, %struct.Memory** %MEMORY

  ; Code: movl -0x1bec(%rbp), %eax	 RIP: 4a95c3	 Bytes: 6
  %loadMem_4a95c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a95c3 = call %struct.Memory* @routine_movl_MINUS0x1bec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a95c3)
  store %struct.Memory* %call_4a95c3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a95c9	 Bytes: 3
  %loadMem_4a95c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a95c9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a95c9)
  store %struct.Memory* %call_4a95c9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1bec(%rbp)	 RIP: 4a95cc	 Bytes: 6
  %loadMem_4a95cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a95cc = call %struct.Memory* @routine_movl__eax__MINUS0x1bec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a95cc)
  store %struct.Memory* %call_4a95cc, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a9596	 RIP: 4a95d2	 Bytes: 5
  %loadMem_4a95d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a95d2 = call %struct.Memory* @routine_jmpq_.L_4a9596(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a95d2, i64 -60, i64 5)
  store %struct.Memory* %call_4a95d2, %struct.Memory** %MEMORY

  br label %block_.L_4a9596

  ; Code: .L_4a95d7:	 RIP: 4a95d7	 Bytes: 0
block_.L_4a95d7:

  ; Code: jmpq .L_4a95dc	 RIP: 4a95d7	 Bytes: 5
  %loadMem_4a95d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a95d7 = call %struct.Memory* @routine_jmpq_.L_4a95dc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a95d7, i64 5, i64 5)
  store %struct.Memory* %call_4a95d7, %struct.Memory** %MEMORY

  br label %block_.L_4a95dc

  ; Code: .L_4a95dc:	 RIP: 4a95dc	 Bytes: 0
block_.L_4a95dc:

  ; Code: movl -0x1be8(%rbp), %eax	 RIP: 4a95dc	 Bytes: 6
  %loadMem_4a95dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a95dc = call %struct.Memory* @routine_movl_MINUS0x1be8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a95dc)
  store %struct.Memory* %call_4a95dc, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a95e2	 Bytes: 3
  %loadMem_4a95e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a95e2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a95e2)
  store %struct.Memory* %call_4a95e2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1be8(%rbp)	 RIP: 4a95e5	 Bytes: 6
  %loadMem_4a95e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a95e5 = call %struct.Memory* @routine_movl__eax__MINUS0x1be8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a95e5)
  store %struct.Memory* %call_4a95e5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a9571	 RIP: 4a95eb	 Bytes: 5
  %loadMem_4a95eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a95eb = call %struct.Memory* @routine_jmpq_.L_4a9571(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a95eb, i64 -122, i64 5)
  store %struct.Memory* %call_4a95eb, %struct.Memory** %MEMORY

  br label %block_.L_4a9571

  ; Code: .L_4a95f0:	 RIP: 4a95f0	 Bytes: 0
block_.L_4a95f0:

  ; Code: jmpq .L_4a95f5	 RIP: 4a95f0	 Bytes: 5
  %loadMem_4a95f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a95f0 = call %struct.Memory* @routine_jmpq_.L_4a95f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a95f0, i64 5, i64 5)
  store %struct.Memory* %call_4a95f0, %struct.Memory** %MEMORY

  br label %block_.L_4a95f5

  ; Code: .L_4a95f5:	 RIP: 4a95f5	 Bytes: 0
block_.L_4a95f5:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4a95f5	 Bytes: 4
  %loadMem_4a95f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a95f5 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a95f5)
  store %struct.Memory* %call_4a95f5, %struct.Memory** %MEMORY

  ; Code: movl 0x30(%rax), %ecx	 RIP: 4a95f9	 Bytes: 3
  %loadMem_4a95f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a95f9 = call %struct.Memory* @routine_movl_0x30__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a95f9)
  store %struct.Memory* %call_4a95f9, %struct.Memory** %MEMORY

  ; Code: andl $0x8, %ecx	 RIP: 4a95fc	 Bytes: 3
  %loadMem_4a95fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a95fc = call %struct.Memory* @routine_andl__0x8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a95fc)
  store %struct.Memory* %call_4a95fc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 4a95ff	 Bytes: 3
  %loadMem_4a95ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a95ff = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a95ff)
  store %struct.Memory* %call_4a95ff, %struct.Memory** %MEMORY

  ; Code: je .L_4a9754	 RIP: 4a9602	 Bytes: 6
  %loadMem_4a9602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9602 = call %struct.Memory* @routine_je_.L_4a9754(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9602, i8* %BRANCH_TAKEN, i64 338, i64 6, i64 6)
  store %struct.Memory* %call_4a9602, %struct.Memory** %MEMORY

  %loadBr_4a9602 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a9602 = icmp eq i8 %loadBr_4a9602, 1
  br i1 %cmpBr_4a9602, label %block_.L_4a9754, label %block_4a9608

block_4a9608:
  ; Code: movl $0x0, -0x1be8(%rbp)	 RIP: 4a9608	 Bytes: 10
  %loadMem_4a9608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9608 = call %struct.Memory* @routine_movl__0x0__MINUS0x1be8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9608)
  store %struct.Memory* %call_4a9608, %struct.Memory** %MEMORY

  ; Code: .L_4a9612:	 RIP: 4a9612	 Bytes: 0
  br label %block_.L_4a9612
block_.L_4a9612:

  ; Code: movl -0x1be8(%rbp), %eax	 RIP: 4a9612	 Bytes: 6
  %loadMem_4a9612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9612 = call %struct.Memory* @routine_movl_MINUS0x1be8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9612)
  store %struct.Memory* %call_4a9612, %struct.Memory** %MEMORY

  ; Code: movl -0x1bd4(%rbp), %ecx	 RIP: 4a9618	 Bytes: 6
  %loadMem_4a9618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9618 = call %struct.Memory* @routine_movl_MINUS0x1bd4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9618)
  store %struct.Memory* %call_4a9618, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdx	 RIP: 4a961e	 Bytes: 4
  %loadMem_4a961e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a961e = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a961e)
  store %struct.Memory* %call_4a961e, %struct.Memory** %MEMORY

  ; Code: addl 0x20(%rdx), %ecx	 RIP: 4a9622	 Bytes: 3
  %loadMem_4a9622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9622 = call %struct.Memory* @routine_addl_0x20__rdx____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9622)
  store %struct.Memory* %call_4a9622, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4a9625	 Bytes: 3
  %loadMem_4a9625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9625 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9625)
  store %struct.Memory* %call_4a9625, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 4a9628	 Bytes: 2
  %loadMem_4a9628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9628 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9628)
  store %struct.Memory* %call_4a9628, %struct.Memory** %MEMORY

  ; Code: je .L_4a96a2	 RIP: 4a962a	 Bytes: 6
  %loadMem_4a962a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a962a = call %struct.Memory* @routine_je_.L_4a96a2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a962a, i8* %BRANCH_TAKEN, i64 120, i64 6, i64 6)
  store %struct.Memory* %call_4a962a, %struct.Memory** %MEMORY

  %loadBr_4a962a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a962a = icmp eq i8 %loadBr_4a962a, 1
  br i1 %cmpBr_4a962a, label %block_.L_4a96a2, label %block_4a9630

block_4a9630:
  ; Code: movl $0x0, -0x1bec(%rbp)	 RIP: 4a9630	 Bytes: 10
  %loadMem_4a9630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9630 = call %struct.Memory* @routine_movl__0x0__MINUS0x1bec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9630)
  store %struct.Memory* %call_4a9630, %struct.Memory** %MEMORY

  ; Code: .L_4a963a:	 RIP: 4a963a	 Bytes: 0
  br label %block_.L_4a963a
block_.L_4a963a:

  ; Code: movl -0x1bec(%rbp), %eax	 RIP: 4a963a	 Bytes: 6
  %loadMem_4a963a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a963a = call %struct.Memory* @routine_movl_MINUS0x1bec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a963a)
  store %struct.Memory* %call_4a963a, %struct.Memory** %MEMORY

  ; Code: movl -0x1bd8(%rbp), %ecx	 RIP: 4a9640	 Bytes: 6
  %loadMem_4a9640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9640 = call %struct.Memory* @routine_movl_MINUS0x1bd8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9640)
  store %struct.Memory* %call_4a9640, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdx	 RIP: 4a9646	 Bytes: 4
  %loadMem_4a9646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9646 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9646)
  store %struct.Memory* %call_4a9646, %struct.Memory** %MEMORY

  ; Code: addl 0x1c(%rdx), %ecx	 RIP: 4a964a	 Bytes: 3
  %loadMem_4a964a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a964a = call %struct.Memory* @routine_addl_0x1c__rdx____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a964a)
  store %struct.Memory* %call_4a964a, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 4a964d	 Bytes: 2
  %loadMem_4a964d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a964d = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a964d)
  store %struct.Memory* %call_4a964d, %struct.Memory** %MEMORY

  ; Code: je .L_4a9689	 RIP: 4a964f	 Bytes: 6
  %loadMem_4a964f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a964f = call %struct.Memory* @routine_je_.L_4a9689(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a964f, i8* %BRANCH_TAKEN, i64 58, i64 6, i64 6)
  store %struct.Memory* %call_4a964f, %struct.Memory** %MEMORY

  %loadBr_4a964f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a964f = icmp eq i8 %loadBr_4a964f, 1
  br i1 %cmpBr_4a964f, label %block_.L_4a9689, label %block_4a9655

block_4a9655:
  ; Code: leaq -0x1bd0(%rbp), %rax	 RIP: 4a9655	 Bytes: 7
  %loadMem_4a9655 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9655 = call %struct.Memory* @routine_leaq_MINUS0x1bd0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9655)
  store %struct.Memory* %call_4a9655, %struct.Memory** %MEMORY

  ; Code: movslq -0x1be8(%rbp), %rcx	 RIP: 4a965c	 Bytes: 7
  %loadMem_4a965c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a965c = call %struct.Memory* @routine_movslq_MINUS0x1be8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a965c)
  store %struct.Memory* %call_4a965c, %struct.Memory** %MEMORY

  ; Code: imulq $0x54, %rcx, %rcx	 RIP: 4a9663	 Bytes: 4
  %loadMem_4a9663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9663 = call %struct.Memory* @routine_imulq__0x54___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9663)
  store %struct.Memory* %call_4a9663, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4a9667	 Bytes: 3
  %loadMem_4a9667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9667 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9667)
  store %struct.Memory* %call_4a9667, %struct.Memory** %MEMORY

  ; Code: movslq -0x1bec(%rbp), %rcx	 RIP: 4a966a	 Bytes: 7
  %loadMem_4a966a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a966a = call %struct.Memory* @routine_movslq_MINUS0x1bec__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a966a)
  store %struct.Memory* %call_4a966a, %struct.Memory** %MEMORY

  ; Code: movb $0x7c, (%rax,%rcx,1)	 RIP: 4a9671	 Bytes: 4
  %loadMem_4a9671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9671 = call %struct.Memory* @routine_movb__0x7c____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9671)
  store %struct.Memory* %call_4a9671, %struct.Memory** %MEMORY

  ; Code: movl -0x1bec(%rbp), %eax	 RIP: 4a9675	 Bytes: 6
  %loadMem_4a9675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9675 = call %struct.Memory* @routine_movl_MINUS0x1bec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9675)
  store %struct.Memory* %call_4a9675, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a967b	 Bytes: 3
  %loadMem_4a967b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a967b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a967b)
  store %struct.Memory* %call_4a967b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1bec(%rbp)	 RIP: 4a967e	 Bytes: 6
  %loadMem_4a967e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a967e = call %struct.Memory* @routine_movl__eax__MINUS0x1bec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a967e)
  store %struct.Memory* %call_4a967e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a963a	 RIP: 4a9684	 Bytes: 5
  %loadMem_4a9684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9684 = call %struct.Memory* @routine_jmpq_.L_4a963a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9684, i64 -74, i64 5)
  store %struct.Memory* %call_4a9684, %struct.Memory** %MEMORY

  br label %block_.L_4a963a

  ; Code: .L_4a9689:	 RIP: 4a9689	 Bytes: 0
block_.L_4a9689:

  ; Code: jmpq .L_4a968e	 RIP: 4a9689	 Bytes: 5
  %loadMem_4a9689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9689 = call %struct.Memory* @routine_jmpq_.L_4a968e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9689, i64 5, i64 5)
  store %struct.Memory* %call_4a9689, %struct.Memory** %MEMORY

  br label %block_.L_4a968e

  ; Code: .L_4a968e:	 RIP: 4a968e	 Bytes: 0
block_.L_4a968e:

  ; Code: movl -0x1be8(%rbp), %eax	 RIP: 4a968e	 Bytes: 6
  %loadMem_4a968e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a968e = call %struct.Memory* @routine_movl_MINUS0x1be8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a968e)
  store %struct.Memory* %call_4a968e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a9694	 Bytes: 3
  %loadMem_4a9694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9694 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9694)
  store %struct.Memory* %call_4a9694, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1be8(%rbp)	 RIP: 4a9697	 Bytes: 6
  %loadMem_4a9697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9697 = call %struct.Memory* @routine_movl__eax__MINUS0x1be8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9697)
  store %struct.Memory* %call_4a9697, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a9612	 RIP: 4a969d	 Bytes: 5
  %loadMem_4a969d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a969d = call %struct.Memory* @routine_jmpq_.L_4a9612(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a969d, i64 -139, i64 5)
  store %struct.Memory* %call_4a969d, %struct.Memory** %MEMORY

  br label %block_.L_4a9612

  ; Code: .L_4a96a2:	 RIP: 4a96a2	 Bytes: 0
block_.L_4a96a2:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4a96a2	 Bytes: 4
  %loadMem_4a96a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a96a2 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a96a2)
  store %struct.Memory* %call_4a96a2, %struct.Memory** %MEMORY

  ; Code: movl 0x30(%rax), %ecx	 RIP: 4a96a6	 Bytes: 3
  %loadMem_4a96a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a96a6 = call %struct.Memory* @routine_movl_0x30__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a96a6)
  store %struct.Memory* %call_4a96a6, %struct.Memory** %MEMORY

  ; Code: andl $0x2, %ecx	 RIP: 4a96a9	 Bytes: 3
  %loadMem_4a96a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a96a9 = call %struct.Memory* @routine_andl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a96a9)
  store %struct.Memory* %call_4a96a9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 4a96ac	 Bytes: 3
  %loadMem_4a96ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a96ac = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a96ac)
  store %struct.Memory* %call_4a96ac, %struct.Memory** %MEMORY

  ; Code: jne .L_4a974f	 RIP: 4a96af	 Bytes: 6
  %loadMem_4a96af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a96af = call %struct.Memory* @routine_jne_.L_4a974f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a96af, i8* %BRANCH_TAKEN, i64 160, i64 6, i64 6)
  store %struct.Memory* %call_4a96af, %struct.Memory** %MEMORY

  %loadBr_4a96af = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a96af = icmp eq i8 %loadBr_4a96af, 1
  br i1 %cmpBr_4a96af, label %block_.L_4a974f, label %block_4a96b5

block_4a96b5:
  ; Code: movl -0x1bd4(%rbp), %eax	 RIP: 4a96b5	 Bytes: 6
  %loadMem_4a96b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a96b5 = call %struct.Memory* @routine_movl_MINUS0x1bd4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a96b5)
  store %struct.Memory* %call_4a96b5, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4a96bb	 Bytes: 4
  %loadMem_4a96bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a96bb = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a96bb)
  store %struct.Memory* %call_4a96bb, %struct.Memory** %MEMORY

  ; Code: addl 0x20(%rcx), %eax	 RIP: 4a96bf	 Bytes: 3
  %loadMem_4a96bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a96bf = call %struct.Memory* @routine_addl_0x20__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a96bf)
  store %struct.Memory* %call_4a96bf, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a96c2	 Bytes: 3
  %loadMem_4a96c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a96c2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a96c2)
  store %struct.Memory* %call_4a96c2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1be8(%rbp)	 RIP: 4a96c5	 Bytes: 6
  %loadMem_4a96c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a96c5 = call %struct.Memory* @routine_movl__eax__MINUS0x1be8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a96c5)
  store %struct.Memory* %call_4a96c5, %struct.Memory** %MEMORY

  ; Code: .L_4a96cb:	 RIP: 4a96cb	 Bytes: 0
  br label %block_.L_4a96cb
block_.L_4a96cb:

  ; Code: cmpl $0x3f, -0x1be8(%rbp)	 RIP: 4a96cb	 Bytes: 7
  %loadMem_4a96cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a96cb = call %struct.Memory* @routine_cmpl__0x3f__MINUS0x1be8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a96cb)
  store %struct.Memory* %call_4a96cb, %struct.Memory** %MEMORY

  ; Code: je .L_4a974a	 RIP: 4a96d2	 Bytes: 6
  %loadMem_4a96d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a96d2 = call %struct.Memory* @routine_je_.L_4a974a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a96d2, i8* %BRANCH_TAKEN, i64 120, i64 6, i64 6)
  store %struct.Memory* %call_4a96d2, %struct.Memory** %MEMORY

  %loadBr_4a96d2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a96d2 = icmp eq i8 %loadBr_4a96d2, 1
  br i1 %cmpBr_4a96d2, label %block_.L_4a974a, label %block_4a96d8

block_4a96d8:
  ; Code: movl $0x0, -0x1bec(%rbp)	 RIP: 4a96d8	 Bytes: 10
  %loadMem_4a96d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a96d8 = call %struct.Memory* @routine_movl__0x0__MINUS0x1bec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a96d8)
  store %struct.Memory* %call_4a96d8, %struct.Memory** %MEMORY

  ; Code: .L_4a96e2:	 RIP: 4a96e2	 Bytes: 0
  br label %block_.L_4a96e2
block_.L_4a96e2:

  ; Code: movl -0x1bec(%rbp), %eax	 RIP: 4a96e2	 Bytes: 6
  %loadMem_4a96e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a96e2 = call %struct.Memory* @routine_movl_MINUS0x1bec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a96e2)
  store %struct.Memory* %call_4a96e2, %struct.Memory** %MEMORY

  ; Code: movl -0x1bd8(%rbp), %ecx	 RIP: 4a96e8	 Bytes: 6
  %loadMem_4a96e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a96e8 = call %struct.Memory* @routine_movl_MINUS0x1bd8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a96e8)
  store %struct.Memory* %call_4a96e8, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdx	 RIP: 4a96ee	 Bytes: 4
  %loadMem_4a96ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a96ee = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a96ee)
  store %struct.Memory* %call_4a96ee, %struct.Memory** %MEMORY

  ; Code: addl 0x1c(%rdx), %ecx	 RIP: 4a96f2	 Bytes: 3
  %loadMem_4a96f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a96f2 = call %struct.Memory* @routine_addl_0x1c__rdx____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a96f2)
  store %struct.Memory* %call_4a96f2, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 4a96f5	 Bytes: 2
  %loadMem_4a96f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a96f5 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a96f5)
  store %struct.Memory* %call_4a96f5, %struct.Memory** %MEMORY

  ; Code: je .L_4a9731	 RIP: 4a96f7	 Bytes: 6
  %loadMem_4a96f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a96f7 = call %struct.Memory* @routine_je_.L_4a9731(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a96f7, i8* %BRANCH_TAKEN, i64 58, i64 6, i64 6)
  store %struct.Memory* %call_4a96f7, %struct.Memory** %MEMORY

  %loadBr_4a96f7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a96f7 = icmp eq i8 %loadBr_4a96f7, 1
  br i1 %cmpBr_4a96f7, label %block_.L_4a9731, label %block_4a96fd

block_4a96fd:
  ; Code: leaq -0x1bd0(%rbp), %rax	 RIP: 4a96fd	 Bytes: 7
  %loadMem_4a96fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a96fd = call %struct.Memory* @routine_leaq_MINUS0x1bd0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a96fd)
  store %struct.Memory* %call_4a96fd, %struct.Memory** %MEMORY

  ; Code: movslq -0x1be8(%rbp), %rcx	 RIP: 4a9704	 Bytes: 7
  %loadMem_4a9704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9704 = call %struct.Memory* @routine_movslq_MINUS0x1be8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9704)
  store %struct.Memory* %call_4a9704, %struct.Memory** %MEMORY

  ; Code: imulq $0x54, %rcx, %rcx	 RIP: 4a970b	 Bytes: 4
  %loadMem_4a970b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a970b = call %struct.Memory* @routine_imulq__0x54___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a970b)
  store %struct.Memory* %call_4a970b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4a970f	 Bytes: 3
  %loadMem_4a970f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a970f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a970f)
  store %struct.Memory* %call_4a970f, %struct.Memory** %MEMORY

  ; Code: movslq -0x1bec(%rbp), %rcx	 RIP: 4a9712	 Bytes: 7
  %loadMem_4a9712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9712 = call %struct.Memory* @routine_movslq_MINUS0x1bec__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9712)
  store %struct.Memory* %call_4a9712, %struct.Memory** %MEMORY

  ; Code: movb $0x7c, (%rax,%rcx,1)	 RIP: 4a9719	 Bytes: 4
  %loadMem_4a9719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9719 = call %struct.Memory* @routine_movb__0x7c____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9719)
  store %struct.Memory* %call_4a9719, %struct.Memory** %MEMORY

  ; Code: movl -0x1bec(%rbp), %eax	 RIP: 4a971d	 Bytes: 6
  %loadMem_4a971d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a971d = call %struct.Memory* @routine_movl_MINUS0x1bec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a971d)
  store %struct.Memory* %call_4a971d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a9723	 Bytes: 3
  %loadMem_4a9723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9723 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9723)
  store %struct.Memory* %call_4a9723, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1bec(%rbp)	 RIP: 4a9726	 Bytes: 6
  %loadMem_4a9726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9726 = call %struct.Memory* @routine_movl__eax__MINUS0x1bec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9726)
  store %struct.Memory* %call_4a9726, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a96e2	 RIP: 4a972c	 Bytes: 5
  %loadMem_4a972c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a972c = call %struct.Memory* @routine_jmpq_.L_4a96e2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a972c, i64 -74, i64 5)
  store %struct.Memory* %call_4a972c, %struct.Memory** %MEMORY

  br label %block_.L_4a96e2

  ; Code: .L_4a9731:	 RIP: 4a9731	 Bytes: 0
block_.L_4a9731:

  ; Code: jmpq .L_4a9736	 RIP: 4a9731	 Bytes: 5
  %loadMem_4a9731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9731 = call %struct.Memory* @routine_jmpq_.L_4a9736(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9731, i64 5, i64 5)
  store %struct.Memory* %call_4a9731, %struct.Memory** %MEMORY

  br label %block_.L_4a9736

  ; Code: .L_4a9736:	 RIP: 4a9736	 Bytes: 0
block_.L_4a9736:

  ; Code: movl -0x1be8(%rbp), %eax	 RIP: 4a9736	 Bytes: 6
  %loadMem_4a9736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9736 = call %struct.Memory* @routine_movl_MINUS0x1be8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9736)
  store %struct.Memory* %call_4a9736, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a973c	 Bytes: 3
  %loadMem_4a973c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a973c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a973c)
  store %struct.Memory* %call_4a973c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1be8(%rbp)	 RIP: 4a973f	 Bytes: 6
  %loadMem_4a973f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a973f = call %struct.Memory* @routine_movl__eax__MINUS0x1be8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a973f)
  store %struct.Memory* %call_4a973f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a96cb	 RIP: 4a9745	 Bytes: 5
  %loadMem_4a9745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9745 = call %struct.Memory* @routine_jmpq_.L_4a96cb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9745, i64 -122, i64 5)
  store %struct.Memory* %call_4a9745, %struct.Memory** %MEMORY

  br label %block_.L_4a96cb

  ; Code: .L_4a974a:	 RIP: 4a974a	 Bytes: 0
block_.L_4a974a:

  ; Code: jmpq .L_4a974f	 RIP: 4a974a	 Bytes: 5
  %loadMem_4a974a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a974a = call %struct.Memory* @routine_jmpq_.L_4a974f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a974a, i64 5, i64 5)
  store %struct.Memory* %call_4a974a, %struct.Memory** %MEMORY

  br label %block_.L_4a974f

  ; Code: .L_4a974f:	 RIP: 4a974f	 Bytes: 0
block_.L_4a974f:

  ; Code: jmpq .L_4a9754	 RIP: 4a974f	 Bytes: 5
  %loadMem_4a974f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a974f = call %struct.Memory* @routine_jmpq_.L_4a9754(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a974f, i64 5, i64 5)
  store %struct.Memory* %call_4a974f, %struct.Memory** %MEMORY

  br label %block_.L_4a9754

  ; Code: .L_4a9754:	 RIP: 4a9754	 Bytes: 0
block_.L_4a9754:

  ; Code: cmpl $0x4, 0xaf3458	 RIP: 4a9754	 Bytes: 8
  %loadMem_4a9754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9754 = call %struct.Memory* @routine_cmpl__0x4__0xaf3458(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9754)
  store %struct.Memory* %call_4a9754, %struct.Memory** %MEMORY

  ; Code: jle .L_4a9882	 RIP: 4a975c	 Bytes: 6
  %loadMem_4a975c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a975c = call %struct.Memory* @routine_jle_.L_4a9882(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a975c, i8* %BRANCH_TAKEN, i64 294, i64 6, i64 6)
  store %struct.Memory* %call_4a975c, %struct.Memory** %MEMORY

  %loadBr_4a975c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a975c = icmp eq i8 %loadBr_4a975c, 1
  br i1 %cmpBr_4a975c, label %block_.L_4a9882, label %block_4a9762

block_4a9762:
  ; Code: movl $0x14, -0x1be8(%rbp)	 RIP: 4a9762	 Bytes: 10
  %loadMem_4a9762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9762 = call %struct.Memory* @routine_movl__0x14__MINUS0x1be8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9762)
  store %struct.Memory* %call_4a9762, %struct.Memory** %MEMORY

  ; Code: .L_4a976c:	 RIP: 4a976c	 Bytes: 0
  br label %block_.L_4a976c
block_.L_4a976c:

  ; Code: cmpl $0x40, -0x1be8(%rbp)	 RIP: 4a976c	 Bytes: 7
  %loadMem_4a976c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a976c = call %struct.Memory* @routine_cmpl__0x40__MINUS0x1be8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a976c)
  store %struct.Memory* %call_4a976c, %struct.Memory** %MEMORY

  ; Code: je .L_4a9863	 RIP: 4a9773	 Bytes: 6
  %loadMem_4a9773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9773 = call %struct.Memory* @routine_je_.L_4a9863(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9773, i8* %BRANCH_TAKEN, i64 240, i64 6, i64 6)
  store %struct.Memory* %call_4a9773, %struct.Memory** %MEMORY

  %loadBr_4a9773 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a9773 = icmp eq i8 %loadBr_4a9773, 1
  br i1 %cmpBr_4a9773, label %block_.L_4a9863, label %block_4a9779

block_4a9779:
  ; Code: movl $0x14, -0x1bec(%rbp)	 RIP: 4a9779	 Bytes: 10
  %loadMem_4a9779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9779 = call %struct.Memory* @routine_movl__0x14__MINUS0x1bec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9779)
  store %struct.Memory* %call_4a9779, %struct.Memory** %MEMORY

  ; Code: .L_4a9783:	 RIP: 4a9783	 Bytes: 0
  br label %block_.L_4a9783
block_.L_4a9783:

  ; Code: cmpl $0x40, -0x1bec(%rbp)	 RIP: 4a9783	 Bytes: 7
  %loadMem_4a9783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9783 = call %struct.Memory* @routine_cmpl__0x40__MINUS0x1bec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9783)
  store %struct.Memory* %call_4a9783, %struct.Memory** %MEMORY

  ; Code: je .L_4a9830	 RIP: 4a978a	 Bytes: 6
  %loadMem_4a978a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a978a = call %struct.Memory* @routine_je_.L_4a9830(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a978a, i8* %BRANCH_TAKEN, i64 166, i64 6, i64 6)
  store %struct.Memory* %call_4a978a, %struct.Memory** %MEMORY

  %loadBr_4a978a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a978a = icmp eq i8 %loadBr_4a978a, 1
  br i1 %cmpBr_4a978a, label %block_.L_4a9830, label %block_4a9790

block_4a9790:
  ; Code: movl -0x1be8(%rbp), %eax	 RIP: 4a9790	 Bytes: 6
  %loadMem_4a9790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9790 = call %struct.Memory* @routine_movl_MINUS0x1be8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9790)
  store %struct.Memory* %call_4a9790, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1bd4(%rbp), %eax	 RIP: 4a9796	 Bytes: 6
  %loadMem_4a9796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9796 = call %struct.Memory* @routine_cmpl_MINUS0x1bd4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9796)
  store %struct.Memory* %call_4a9796, %struct.Memory** %MEMORY

  ; Code: jne .L_4a97d8	 RIP: 4a979c	 Bytes: 6
  %loadMem_4a979c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a979c = call %struct.Memory* @routine_jne_.L_4a97d8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a979c, i8* %BRANCH_TAKEN, i64 60, i64 6, i64 6)
  store %struct.Memory* %call_4a979c, %struct.Memory** %MEMORY

  %loadBr_4a979c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a979c = icmp eq i8 %loadBr_4a979c, 1
  br i1 %cmpBr_4a979c, label %block_.L_4a97d8, label %block_4a97a2

block_4a97a2:
  ; Code: movl -0x1bec(%rbp), %eax	 RIP: 4a97a2	 Bytes: 6
  %loadMem_4a97a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a97a2 = call %struct.Memory* @routine_movl_MINUS0x1bec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a97a2)
  store %struct.Memory* %call_4a97a2, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1bd8(%rbp), %eax	 RIP: 4a97a8	 Bytes: 6
  %loadMem_4a97a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a97a8 = call %struct.Memory* @routine_cmpl_MINUS0x1bd8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a97a8)
  store %struct.Memory* %call_4a97a8, %struct.Memory** %MEMORY

  ; Code: jne .L_4a97d8	 RIP: 4a97ae	 Bytes: 6
  %loadMem_4a97ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a97ae = call %struct.Memory* @routine_jne_.L_4a97d8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a97ae, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_4a97ae, %struct.Memory** %MEMORY

  %loadBr_4a97ae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a97ae = icmp eq i8 %loadBr_4a97ae, 1
  br i1 %cmpBr_4a97ae, label %block_.L_4a97d8, label %block_4a97b4

block_4a97b4:
  ; Code: movq $0x588897, %rsi	 RIP: 4a97b4	 Bytes: 10
  %loadMem_4a97b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a97b4 = call %struct.Memory* @routine_movq__0x588897___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a97b4)
  store %struct.Memory* %call_4a97b4, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 4a97be	 Bytes: 8
  %loadMem_4a97be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a97be = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a97be)
  store %struct.Memory* %call_4a97be, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4a97c6	 Bytes: 2
  %loadMem_4a97c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a97c6 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a97c6)
  store %struct.Memory* %call_4a97c6, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4a97c8	 Bytes: 5
  %loadMem1_4a97c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4a97c8 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4a97c8, i64 -689912, i64 5, i64 5)
  store %struct.Memory* %call1_4a97c8, %struct.Memory** %MEMORY

  %loadMem2_4a97c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4a97c8 = load i64, i64* %3
  %call2_4a97c8 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4a97c8, %struct.Memory* %loadMem2_4a97c8)
  store %struct.Memory* %call2_4a97c8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c10(%rbp)	 RIP: 4a97cd	 Bytes: 6
  %loadMem_4a97cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a97cd = call %struct.Memory* @routine_movl__eax__MINUS0x1c10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a97cd)
  store %struct.Memory* %call_4a97cd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a9817	 RIP: 4a97d3	 Bytes: 5
  %loadMem_4a97d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a97d3 = call %struct.Memory* @routine_jmpq_.L_4a9817(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a97d3, i64 68, i64 5)
  store %struct.Memory* %call_4a97d3, %struct.Memory** %MEMORY

  br label %block_.L_4a9817

  ; Code: .L_4a97d8:	 RIP: 4a97d8	 Bytes: 0
block_.L_4a97d8:

  ; Code: movq $0x579d93, %rsi	 RIP: 4a97d8	 Bytes: 10
  %loadMem_4a97d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a97d8 = call %struct.Memory* @routine_movq__0x579d93___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a97d8)
  store %struct.Memory* %call_4a97d8, %struct.Memory** %MEMORY

  ; Code: leaq -0x1bd0(%rbp), %rax	 RIP: 4a97e2	 Bytes: 7
  %loadMem_4a97e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a97e2 = call %struct.Memory* @routine_leaq_MINUS0x1bd0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a97e2)
  store %struct.Memory* %call_4a97e2, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 4a97e9	 Bytes: 8
  %loadMem_4a97e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a97e9 = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a97e9)
  store %struct.Memory* %call_4a97e9, %struct.Memory** %MEMORY

  ; Code: movslq -0x1be8(%rbp), %rcx	 RIP: 4a97f1	 Bytes: 7
  %loadMem_4a97f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a97f1 = call %struct.Memory* @routine_movslq_MINUS0x1be8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a97f1)
  store %struct.Memory* %call_4a97f1, %struct.Memory** %MEMORY

  ; Code: imulq $0x54, %rcx, %rcx	 RIP: 4a97f8	 Bytes: 4
  %loadMem_4a97f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a97f8 = call %struct.Memory* @routine_imulq__0x54___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a97f8)
  store %struct.Memory* %call_4a97f8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4a97fc	 Bytes: 3
  %loadMem_4a97fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a97fc = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a97fc)
  store %struct.Memory* %call_4a97fc, %struct.Memory** %MEMORY

  ; Code: movslq -0x1bec(%rbp), %rcx	 RIP: 4a97ff	 Bytes: 7
  %loadMem_4a97ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a97ff = call %struct.Memory* @routine_movslq_MINUS0x1bec__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a97ff)
  store %struct.Memory* %call_4a97ff, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 4a9806	 Bytes: 4
  %loadMem_4a9806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9806 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9806)
  store %struct.Memory* %call_4a9806, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4a980a	 Bytes: 2
  %loadMem_4a980a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a980a = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a980a)
  store %struct.Memory* %call_4a980a, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4a980c	 Bytes: 5
  %loadMem1_4a980c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4a980c = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4a980c, i64 -689980, i64 5, i64 5)
  store %struct.Memory* %call1_4a980c, %struct.Memory** %MEMORY

  %loadMem2_4a980c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4a980c = load i64, i64* %3
  %call2_4a980c = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4a980c, %struct.Memory* %loadMem2_4a980c)
  store %struct.Memory* %call2_4a980c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c14(%rbp)	 RIP: 4a9811	 Bytes: 6
  %loadMem_4a9811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9811 = call %struct.Memory* @routine_movl__eax__MINUS0x1c14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9811)
  store %struct.Memory* %call_4a9811, %struct.Memory** %MEMORY

  ; Code: .L_4a9817:	 RIP: 4a9817	 Bytes: 0
  br label %block_.L_4a9817
block_.L_4a9817:

  ; Code: jmpq .L_4a981c	 RIP: 4a9817	 Bytes: 5
  %loadMem_4a9817 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9817 = call %struct.Memory* @routine_jmpq_.L_4a981c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9817, i64 5, i64 5)
  store %struct.Memory* %call_4a9817, %struct.Memory** %MEMORY

  br label %block_.L_4a981c

  ; Code: .L_4a981c:	 RIP: 4a981c	 Bytes: 0
block_.L_4a981c:

  ; Code: movl -0x1bec(%rbp), %eax	 RIP: 4a981c	 Bytes: 6
  %loadMem_4a981c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a981c = call %struct.Memory* @routine_movl_MINUS0x1bec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a981c)
  store %struct.Memory* %call_4a981c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a9822	 Bytes: 3
  %loadMem_4a9822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9822 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9822)
  store %struct.Memory* %call_4a9822, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1bec(%rbp)	 RIP: 4a9825	 Bytes: 6
  %loadMem_4a9825 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9825 = call %struct.Memory* @routine_movl__eax__MINUS0x1bec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9825)
  store %struct.Memory* %call_4a9825, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a9783	 RIP: 4a982b	 Bytes: 5
  %loadMem_4a982b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a982b = call %struct.Memory* @routine_jmpq_.L_4a9783(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a982b, i64 -168, i64 5)
  store %struct.Memory* %call_4a982b, %struct.Memory** %MEMORY

  br label %block_.L_4a9783

  ; Code: .L_4a9830:	 RIP: 4a9830	 Bytes: 0
block_.L_4a9830:

  ; Code: movq $0x586073, %rsi	 RIP: 4a9830	 Bytes: 10
  %loadMem_4a9830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9830 = call %struct.Memory* @routine_movq__0x586073___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9830)
  store %struct.Memory* %call_4a9830, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 4a983a	 Bytes: 8
  %loadMem_4a983a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a983a = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a983a)
  store %struct.Memory* %call_4a983a, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4a9842	 Bytes: 2
  %loadMem_4a9842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9842 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9842)
  store %struct.Memory* %call_4a9842, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4a9844	 Bytes: 5
  %loadMem1_4a9844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4a9844 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4a9844, i64 -690036, i64 5, i64 5)
  store %struct.Memory* %call1_4a9844, %struct.Memory** %MEMORY

  %loadMem2_4a9844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4a9844 = load i64, i64* %3
  %call2_4a9844 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4a9844, %struct.Memory* %loadMem2_4a9844)
  store %struct.Memory* %call2_4a9844, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c18(%rbp)	 RIP: 4a9849	 Bytes: 6
  %loadMem_4a9849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9849 = call %struct.Memory* @routine_movl__eax__MINUS0x1c18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9849)
  store %struct.Memory* %call_4a9849, %struct.Memory** %MEMORY

  ; Code: movl -0x1be8(%rbp), %eax	 RIP: 4a984f	 Bytes: 6
  %loadMem_4a984f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a984f = call %struct.Memory* @routine_movl_MINUS0x1be8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a984f)
  store %struct.Memory* %call_4a984f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a9855	 Bytes: 3
  %loadMem_4a9855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9855 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9855)
  store %struct.Memory* %call_4a9855, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1be8(%rbp)	 RIP: 4a9858	 Bytes: 6
  %loadMem_4a9858 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9858 = call %struct.Memory* @routine_movl__eax__MINUS0x1be8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9858)
  store %struct.Memory* %call_4a9858, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a976c	 RIP: 4a985e	 Bytes: 5
  %loadMem_4a985e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a985e = call %struct.Memory* @routine_jmpq_.L_4a976c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a985e, i64 -242, i64 5)
  store %struct.Memory* %call_4a985e, %struct.Memory** %MEMORY

  br label %block_.L_4a976c

  ; Code: .L_4a9863:	 RIP: 4a9863	 Bytes: 0
block_.L_4a9863:

  ; Code: movq $0x586073, %rsi	 RIP: 4a9863	 Bytes: 10
  %loadMem_4a9863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9863 = call %struct.Memory* @routine_movq__0x586073___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9863)
  store %struct.Memory* %call_4a9863, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 4a986d	 Bytes: 8
  %loadMem_4a986d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a986d = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a986d)
  store %struct.Memory* %call_4a986d, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4a9875	 Bytes: 2
  %loadMem_4a9875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9875 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9875)
  store %struct.Memory* %call_4a9875, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4a9877	 Bytes: 5
  %loadMem1_4a9877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4a9877 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4a9877, i64 -690087, i64 5, i64 5)
  store %struct.Memory* %call1_4a9877, %struct.Memory** %MEMORY

  %loadMem2_4a9877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4a9877 = load i64, i64* %3
  %call2_4a9877 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4a9877, %struct.Memory* %loadMem2_4a9877)
  store %struct.Memory* %call2_4a9877, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c1c(%rbp)	 RIP: 4a987c	 Bytes: 6
  %loadMem_4a987c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a987c = call %struct.Memory* @routine_movl__eax__MINUS0x1c1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a987c)
  store %struct.Memory* %call_4a987c, %struct.Memory** %MEMORY

  ; Code: .L_4a9882:	 RIP: 4a9882	 Bytes: 0
  br label %block_.L_4a9882
block_.L_4a9882:

  ; Code: movl $0x0, -0x1bf0(%rbp)	 RIP: 4a9882	 Bytes: 10
  %loadMem_4a9882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9882 = call %struct.Memory* @routine_movl__0x0__MINUS0x1bf0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9882)
  store %struct.Memory* %call_4a9882, %struct.Memory** %MEMORY

  ; Code: .L_4a988c:	 RIP: 4a988c	 Bytes: 0
  br label %block_.L_4a988c
block_.L_4a988c:

  ; Code: movl -0x1bf0(%rbp), %eax	 RIP: 4a988c	 Bytes: 6
  %loadMem_4a988c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a988c = call %struct.Memory* @routine_movl_MINUS0x1bf0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a988c)
  store %struct.Memory* %call_4a988c, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4a9892	 Bytes: 4
  %loadMem_4a9892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9892 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9892)
  store %struct.Memory* %call_4a9892, %struct.Memory** %MEMORY

  ; Code: cmpl 0x8(%rcx), %eax	 RIP: 4a9896	 Bytes: 3
  %loadMem_4a9896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9896 = call %struct.Memory* @routine_cmpl_0x8__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9896)
  store %struct.Memory* %call_4a9896, %struct.Memory** %MEMORY

  ; Code: je .L_4a9932	 RIP: 4a9899	 Bytes: 6
  %loadMem_4a9899 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9899 = call %struct.Memory* @routine_je_.L_4a9932(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9899, i8* %BRANCH_TAKEN, i64 153, i64 6, i64 6)
  store %struct.Memory* %call_4a9899, %struct.Memory** %MEMORY

  %loadBr_4a9899 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a9899 = icmp eq i8 %loadBr_4a9899, 1
  br i1 %cmpBr_4a9899, label %block_.L_4a9932, label %block_4a989f

block_4a989f:
  ; Code: leaq -0x1bd0(%rbp), %rax	 RIP: 4a989f	 Bytes: 7
  %loadMem_4a989f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a989f = call %struct.Memory* @routine_leaq_MINUS0x1bd0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a989f)
  store %struct.Memory* %call_4a989f, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4a98a6	 Bytes: 4
  %loadMem_4a98a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a98a6 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a98a6)
  store %struct.Memory* %call_4a98a6, %struct.Memory** %MEMORY

  ; Code: movslq -0x1bf0(%rbp), %rdx	 RIP: 4a98aa	 Bytes: 7
  %loadMem_4a98aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a98aa = call %struct.Memory* @routine_movslq_MINUS0x1bf0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a98aa)
  store %struct.Memory* %call_4a98aa, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdx, %rdx	 RIP: 4a98b1	 Bytes: 4
  %loadMem_4a98b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a98b1 = call %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a98b1)
  store %struct.Memory* %call_4a98b1, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4a98b5	 Bytes: 3
  %loadMem_4a98b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a98b5 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a98b5)
  store %struct.Memory* %call_4a98b5, %struct.Memory** %MEMORY

  ; Code: movslq 0x8(%rcx), %rcx	 RIP: 4a98b8	 Bytes: 4
  %loadMem_4a98b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a98b8 = call %struct.Memory* @routine_movslq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a98b8)
  store %struct.Memory* %call_4a98b8, %struct.Memory** %MEMORY

  ; Code: movb 0x4e69c0(,%rcx,1), %sil	 RIP: 4a98bc	 Bytes: 8
  %loadMem_4a98bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a98bc = call %struct.Memory* @routine_movb_0x4e69c0___rcx_1____sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a98bc)
  store %struct.Memory* %call_4a98bc, %struct.Memory** %MEMORY

  ; Code: movb %sil, -0x1bf1(%rbp)	 RIP: 4a98c4	 Bytes: 7
  %loadMem_4a98c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a98c4 = call %struct.Memory* @routine_movb__sil__MINUS0x1bf1__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a98c4)
  store %struct.Memory* %call_4a98c4, %struct.Memory** %MEMORY

  ; Code: movb -0x1bf1(%rbp), %sil	 RIP: 4a98cb	 Bytes: 7
  %loadMem_4a98cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a98cb = call %struct.Memory* @routine_movb_MINUS0x1bf1__rbp____sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a98cb)
  store %struct.Memory* %call_4a98cb, %struct.Memory** %MEMORY

  ; Code: movl -0x1bd4(%rbp), %edi	 RIP: 4a98d2	 Bytes: 6
  %loadMem_4a98d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a98d2 = call %struct.Memory* @routine_movl_MINUS0x1bd4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a98d2)
  store %struct.Memory* %call_4a98d2, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4a98d8	 Bytes: 4
  %loadMem_4a98d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a98d8 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a98d8)
  store %struct.Memory* %call_4a98d8, %struct.Memory** %MEMORY

  ; Code: movslq -0x1bf0(%rbp), %rdx	 RIP: 4a98dc	 Bytes: 7
  %loadMem_4a98dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a98dc = call %struct.Memory* @routine_movslq_MINUS0x1bf0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a98dc)
  store %struct.Memory* %call_4a98dc, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdx, %rdx	 RIP: 4a98e3	 Bytes: 4
  %loadMem_4a98e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a98e3 = call %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a98e3)
  store %struct.Memory* %call_4a98e3, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4a98e7	 Bytes: 3
  %loadMem_4a98e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a98e7 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a98e7)
  store %struct.Memory* %call_4a98e7, %struct.Memory** %MEMORY

  ; Code: addl (%rcx), %edi	 RIP: 4a98ea	 Bytes: 2
  %loadMem_4a98ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a98ea = call %struct.Memory* @routine_addl___rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a98ea)
  store %struct.Memory* %call_4a98ea, %struct.Memory** %MEMORY

  ; Code: subl -0x38(%rbp), %edi	 RIP: 4a98ec	 Bytes: 3
  %loadMem_4a98ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a98ec = call %struct.Memory* @routine_subl_MINUS0x38__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a98ec)
  store %struct.Memory* %call_4a98ec, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rcx	 RIP: 4a98ef	 Bytes: 3
  %loadMem_4a98ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a98ef = call %struct.Memory* @routine_movslq__edi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a98ef)
  store %struct.Memory* %call_4a98ef, %struct.Memory** %MEMORY

  ; Code: imulq $0x54, %rcx, %rcx	 RIP: 4a98f2	 Bytes: 4
  %loadMem_4a98f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a98f2 = call %struct.Memory* @routine_imulq__0x54___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a98f2)
  store %struct.Memory* %call_4a98f2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4a98f6	 Bytes: 3
  %loadMem_4a98f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a98f6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a98f6)
  store %struct.Memory* %call_4a98f6, %struct.Memory** %MEMORY

  ; Code: movl -0x1bd8(%rbp), %edi	 RIP: 4a98f9	 Bytes: 6
  %loadMem_4a98f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a98f9 = call %struct.Memory* @routine_movl_MINUS0x1bd8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a98f9)
  store %struct.Memory* %call_4a98f9, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4a98ff	 Bytes: 4
  %loadMem_4a98ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a98ff = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a98ff)
  store %struct.Memory* %call_4a98ff, %struct.Memory** %MEMORY

  ; Code: movslq -0x1bf0(%rbp), %rdx	 RIP: 4a9903	 Bytes: 7
  %loadMem_4a9903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9903 = call %struct.Memory* @routine_movslq_MINUS0x1bf0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9903)
  store %struct.Memory* %call_4a9903, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdx, %rdx	 RIP: 4a990a	 Bytes: 4
  %loadMem_4a990a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a990a = call %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a990a)
  store %struct.Memory* %call_4a990a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4a990e	 Bytes: 3
  %loadMem_4a990e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a990e = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a990e)
  store %struct.Memory* %call_4a990e, %struct.Memory** %MEMORY

  ; Code: addl 0x4(%rcx), %edi	 RIP: 4a9911	 Bytes: 3
  %loadMem_4a9911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9911 = call %struct.Memory* @routine_addl_0x4__rcx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9911)
  store %struct.Memory* %call_4a9911, %struct.Memory** %MEMORY

  ; Code: subl -0x3c(%rbp), %edi	 RIP: 4a9914	 Bytes: 3
  %loadMem_4a9914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9914 = call %struct.Memory* @routine_subl_MINUS0x3c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9914)
  store %struct.Memory* %call_4a9914, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rcx	 RIP: 4a9917	 Bytes: 3
  %loadMem_4a9917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9917 = call %struct.Memory* @routine_movslq__edi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9917)
  store %struct.Memory* %call_4a9917, %struct.Memory** %MEMORY

  ; Code: movb %sil, (%rax,%rcx,1)	 RIP: 4a991a	 Bytes: 4
  %loadMem_4a991a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a991a = call %struct.Memory* @routine_movb__sil____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a991a)
  store %struct.Memory* %call_4a991a, %struct.Memory** %MEMORY

  ; Code: movl -0x1bf0(%rbp), %eax	 RIP: 4a991e	 Bytes: 6
  %loadMem_4a991e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a991e = call %struct.Memory* @routine_movl_MINUS0x1bf0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a991e)
  store %struct.Memory* %call_4a991e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a9924	 Bytes: 3
  %loadMem_4a9924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9924 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9924)
  store %struct.Memory* %call_4a9924, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1bf0(%rbp)	 RIP: 4a9927	 Bytes: 6
  %loadMem_4a9927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9927 = call %struct.Memory* @routine_movl__eax__MINUS0x1bf0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9927)
  store %struct.Memory* %call_4a9927, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a988c	 RIP: 4a992d	 Bytes: 5
  %loadMem_4a992d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a992d = call %struct.Memory* @routine_jmpq_.L_4a988c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a992d, i64 -161, i64 5)
  store %struct.Memory* %call_4a992d, %struct.Memory** %MEMORY

  br label %block_.L_4a988c

  ; Code: .L_4a9932:	 RIP: 4a9932	 Bytes: 0
block_.L_4a9932:

  ; Code: cmpl $0x3, 0xaf3458	 RIP: 4a9932	 Bytes: 8
  %loadMem_4a9932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9932 = call %struct.Memory* @routine_cmpl__0x3__0xaf3458(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9932)
  store %struct.Memory* %call_4a9932, %struct.Memory** %MEMORY

  ; Code: jle .L_4a9a60	 RIP: 4a993a	 Bytes: 6
  %loadMem_4a993a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a993a = call %struct.Memory* @routine_jle_.L_4a9a60(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a993a, i8* %BRANCH_TAKEN, i64 294, i64 6, i64 6)
  store %struct.Memory* %call_4a993a, %struct.Memory** %MEMORY

  %loadBr_4a993a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a993a = icmp eq i8 %loadBr_4a993a, 1
  br i1 %cmpBr_4a993a, label %block_.L_4a9a60, label %block_4a9940

block_4a9940:
  ; Code: movl $0x14, -0x1be8(%rbp)	 RIP: 4a9940	 Bytes: 10
  %loadMem_4a9940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9940 = call %struct.Memory* @routine_movl__0x14__MINUS0x1be8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9940)
  store %struct.Memory* %call_4a9940, %struct.Memory** %MEMORY

  ; Code: .L_4a994a:	 RIP: 4a994a	 Bytes: 0
  br label %block_.L_4a994a
block_.L_4a994a:

  ; Code: cmpl $0x40, -0x1be8(%rbp)	 RIP: 4a994a	 Bytes: 7
  %loadMem_4a994a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a994a = call %struct.Memory* @routine_cmpl__0x40__MINUS0x1be8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a994a)
  store %struct.Memory* %call_4a994a, %struct.Memory** %MEMORY

  ; Code: je .L_4a9a41	 RIP: 4a9951	 Bytes: 6
  %loadMem_4a9951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9951 = call %struct.Memory* @routine_je_.L_4a9a41(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9951, i8* %BRANCH_TAKEN, i64 240, i64 6, i64 6)
  store %struct.Memory* %call_4a9951, %struct.Memory** %MEMORY

  %loadBr_4a9951 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a9951 = icmp eq i8 %loadBr_4a9951, 1
  br i1 %cmpBr_4a9951, label %block_.L_4a9a41, label %block_4a9957

block_4a9957:
  ; Code: movl $0x14, -0x1bec(%rbp)	 RIP: 4a9957	 Bytes: 10
  %loadMem_4a9957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9957 = call %struct.Memory* @routine_movl__0x14__MINUS0x1bec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9957)
  store %struct.Memory* %call_4a9957, %struct.Memory** %MEMORY

  ; Code: .L_4a9961:	 RIP: 4a9961	 Bytes: 0
  br label %block_.L_4a9961
block_.L_4a9961:

  ; Code: cmpl $0x40, -0x1bec(%rbp)	 RIP: 4a9961	 Bytes: 7
  %loadMem_4a9961 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9961 = call %struct.Memory* @routine_cmpl__0x40__MINUS0x1bec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9961)
  store %struct.Memory* %call_4a9961, %struct.Memory** %MEMORY

  ; Code: je .L_4a9a0e	 RIP: 4a9968	 Bytes: 6
  %loadMem_4a9968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9968 = call %struct.Memory* @routine_je_.L_4a9a0e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9968, i8* %BRANCH_TAKEN, i64 166, i64 6, i64 6)
  store %struct.Memory* %call_4a9968, %struct.Memory** %MEMORY

  %loadBr_4a9968 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a9968 = icmp eq i8 %loadBr_4a9968, 1
  br i1 %cmpBr_4a9968, label %block_.L_4a9a0e, label %block_4a996e

block_4a996e:
  ; Code: movl -0x1be8(%rbp), %eax	 RIP: 4a996e	 Bytes: 6
  %loadMem_4a996e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a996e = call %struct.Memory* @routine_movl_MINUS0x1be8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a996e)
  store %struct.Memory* %call_4a996e, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1bd4(%rbp), %eax	 RIP: 4a9974	 Bytes: 6
  %loadMem_4a9974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9974 = call %struct.Memory* @routine_cmpl_MINUS0x1bd4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9974)
  store %struct.Memory* %call_4a9974, %struct.Memory** %MEMORY

  ; Code: jne .L_4a99b6	 RIP: 4a997a	 Bytes: 6
  %loadMem_4a997a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a997a = call %struct.Memory* @routine_jne_.L_4a99b6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a997a, i8* %BRANCH_TAKEN, i64 60, i64 6, i64 6)
  store %struct.Memory* %call_4a997a, %struct.Memory** %MEMORY

  %loadBr_4a997a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a997a = icmp eq i8 %loadBr_4a997a, 1
  br i1 %cmpBr_4a997a, label %block_.L_4a99b6, label %block_4a9980

block_4a9980:
  ; Code: movl -0x1bec(%rbp), %eax	 RIP: 4a9980	 Bytes: 6
  %loadMem_4a9980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9980 = call %struct.Memory* @routine_movl_MINUS0x1bec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9980)
  store %struct.Memory* %call_4a9980, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1bd8(%rbp), %eax	 RIP: 4a9986	 Bytes: 6
  %loadMem_4a9986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9986 = call %struct.Memory* @routine_cmpl_MINUS0x1bd8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9986)
  store %struct.Memory* %call_4a9986, %struct.Memory** %MEMORY

  ; Code: jne .L_4a99b6	 RIP: 4a998c	 Bytes: 6
  %loadMem_4a998c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a998c = call %struct.Memory* @routine_jne_.L_4a99b6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a998c, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_4a998c, %struct.Memory** %MEMORY

  %loadBr_4a998c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a998c = icmp eq i8 %loadBr_4a998c, 1
  br i1 %cmpBr_4a998c, label %block_.L_4a99b6, label %block_4a9992

block_4a9992:
  ; Code: movq $0x588897, %rsi	 RIP: 4a9992	 Bytes: 10
  %loadMem_4a9992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9992 = call %struct.Memory* @routine_movq__0x588897___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9992)
  store %struct.Memory* %call_4a9992, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 4a999c	 Bytes: 8
  %loadMem_4a999c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a999c = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a999c)
  store %struct.Memory* %call_4a999c, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4a99a4	 Bytes: 2
  %loadMem_4a99a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a99a4 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a99a4)
  store %struct.Memory* %call_4a99a4, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4a99a6	 Bytes: 5
  %loadMem1_4a99a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4a99a6 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4a99a6, i64 -690390, i64 5, i64 5)
  store %struct.Memory* %call1_4a99a6, %struct.Memory** %MEMORY

  %loadMem2_4a99a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4a99a6 = load i64, i64* %3
  %call2_4a99a6 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4a99a6, %struct.Memory* %loadMem2_4a99a6)
  store %struct.Memory* %call2_4a99a6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c20(%rbp)	 RIP: 4a99ab	 Bytes: 6
  %loadMem_4a99ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a99ab = call %struct.Memory* @routine_movl__eax__MINUS0x1c20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a99ab)
  store %struct.Memory* %call_4a99ab, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a99f5	 RIP: 4a99b1	 Bytes: 5
  %loadMem_4a99b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a99b1 = call %struct.Memory* @routine_jmpq_.L_4a99f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a99b1, i64 68, i64 5)
  store %struct.Memory* %call_4a99b1, %struct.Memory** %MEMORY

  br label %block_.L_4a99f5

  ; Code: .L_4a99b6:	 RIP: 4a99b6	 Bytes: 0
block_.L_4a99b6:

  ; Code: movq $0x579d93, %rsi	 RIP: 4a99b6	 Bytes: 10
  %loadMem_4a99b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a99b6 = call %struct.Memory* @routine_movq__0x579d93___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a99b6)
  store %struct.Memory* %call_4a99b6, %struct.Memory** %MEMORY

  ; Code: leaq -0x1bd0(%rbp), %rax	 RIP: 4a99c0	 Bytes: 7
  %loadMem_4a99c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a99c0 = call %struct.Memory* @routine_leaq_MINUS0x1bd0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a99c0)
  store %struct.Memory* %call_4a99c0, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 4a99c7	 Bytes: 8
  %loadMem_4a99c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a99c7 = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a99c7)
  store %struct.Memory* %call_4a99c7, %struct.Memory** %MEMORY

  ; Code: movslq -0x1be8(%rbp), %rcx	 RIP: 4a99cf	 Bytes: 7
  %loadMem_4a99cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a99cf = call %struct.Memory* @routine_movslq_MINUS0x1be8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a99cf)
  store %struct.Memory* %call_4a99cf, %struct.Memory** %MEMORY

  ; Code: imulq $0x54, %rcx, %rcx	 RIP: 4a99d6	 Bytes: 4
  %loadMem_4a99d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a99d6 = call %struct.Memory* @routine_imulq__0x54___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a99d6)
  store %struct.Memory* %call_4a99d6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4a99da	 Bytes: 3
  %loadMem_4a99da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a99da = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a99da)
  store %struct.Memory* %call_4a99da, %struct.Memory** %MEMORY

  ; Code: movslq -0x1bec(%rbp), %rcx	 RIP: 4a99dd	 Bytes: 7
  %loadMem_4a99dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a99dd = call %struct.Memory* @routine_movslq_MINUS0x1bec__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a99dd)
  store %struct.Memory* %call_4a99dd, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 4a99e4	 Bytes: 4
  %loadMem_4a99e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a99e4 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a99e4)
  store %struct.Memory* %call_4a99e4, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4a99e8	 Bytes: 2
  %loadMem_4a99e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a99e8 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a99e8)
  store %struct.Memory* %call_4a99e8, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4a99ea	 Bytes: 5
  %loadMem1_4a99ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4a99ea = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4a99ea, i64 -690458, i64 5, i64 5)
  store %struct.Memory* %call1_4a99ea, %struct.Memory** %MEMORY

  %loadMem2_4a99ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4a99ea = load i64, i64* %3
  %call2_4a99ea = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4a99ea, %struct.Memory* %loadMem2_4a99ea)
  store %struct.Memory* %call2_4a99ea, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c24(%rbp)	 RIP: 4a99ef	 Bytes: 6
  %loadMem_4a99ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a99ef = call %struct.Memory* @routine_movl__eax__MINUS0x1c24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a99ef)
  store %struct.Memory* %call_4a99ef, %struct.Memory** %MEMORY

  ; Code: .L_4a99f5:	 RIP: 4a99f5	 Bytes: 0
  br label %block_.L_4a99f5
block_.L_4a99f5:

  ; Code: jmpq .L_4a99fa	 RIP: 4a99f5	 Bytes: 5
  %loadMem_4a99f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a99f5 = call %struct.Memory* @routine_jmpq_.L_4a99fa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a99f5, i64 5, i64 5)
  store %struct.Memory* %call_4a99f5, %struct.Memory** %MEMORY

  br label %block_.L_4a99fa

  ; Code: .L_4a99fa:	 RIP: 4a99fa	 Bytes: 0
block_.L_4a99fa:

  ; Code: movl -0x1bec(%rbp), %eax	 RIP: 4a99fa	 Bytes: 6
  %loadMem_4a99fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a99fa = call %struct.Memory* @routine_movl_MINUS0x1bec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a99fa)
  store %struct.Memory* %call_4a99fa, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a9a00	 Bytes: 3
  %loadMem_4a9a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9a00 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9a00)
  store %struct.Memory* %call_4a9a00, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1bec(%rbp)	 RIP: 4a9a03	 Bytes: 6
  %loadMem_4a9a03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9a03 = call %struct.Memory* @routine_movl__eax__MINUS0x1bec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9a03)
  store %struct.Memory* %call_4a9a03, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a9961	 RIP: 4a9a09	 Bytes: 5
  %loadMem_4a9a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9a09 = call %struct.Memory* @routine_jmpq_.L_4a9961(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9a09, i64 -168, i64 5)
  store %struct.Memory* %call_4a9a09, %struct.Memory** %MEMORY

  br label %block_.L_4a9961

  ; Code: .L_4a9a0e:	 RIP: 4a9a0e	 Bytes: 0
block_.L_4a9a0e:

  ; Code: movq $0x586073, %rsi	 RIP: 4a9a0e	 Bytes: 10
  %loadMem_4a9a0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9a0e = call %struct.Memory* @routine_movq__0x586073___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9a0e)
  store %struct.Memory* %call_4a9a0e, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 4a9a18	 Bytes: 8
  %loadMem_4a9a18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9a18 = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9a18)
  store %struct.Memory* %call_4a9a18, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4a9a20	 Bytes: 2
  %loadMem_4a9a20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9a20 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9a20)
  store %struct.Memory* %call_4a9a20, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4a9a22	 Bytes: 5
  %loadMem1_4a9a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4a9a22 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4a9a22, i64 -690514, i64 5, i64 5)
  store %struct.Memory* %call1_4a9a22, %struct.Memory** %MEMORY

  %loadMem2_4a9a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4a9a22 = load i64, i64* %3
  %call2_4a9a22 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4a9a22, %struct.Memory* %loadMem2_4a9a22)
  store %struct.Memory* %call2_4a9a22, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c28(%rbp)	 RIP: 4a9a27	 Bytes: 6
  %loadMem_4a9a27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9a27 = call %struct.Memory* @routine_movl__eax__MINUS0x1c28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9a27)
  store %struct.Memory* %call_4a9a27, %struct.Memory** %MEMORY

  ; Code: movl -0x1be8(%rbp), %eax	 RIP: 4a9a2d	 Bytes: 6
  %loadMem_4a9a2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9a2d = call %struct.Memory* @routine_movl_MINUS0x1be8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9a2d)
  store %struct.Memory* %call_4a9a2d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a9a33	 Bytes: 3
  %loadMem_4a9a33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9a33 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9a33)
  store %struct.Memory* %call_4a9a33, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1be8(%rbp)	 RIP: 4a9a36	 Bytes: 6
  %loadMem_4a9a36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9a36 = call %struct.Memory* @routine_movl__eax__MINUS0x1be8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9a36)
  store %struct.Memory* %call_4a9a36, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a994a	 RIP: 4a9a3c	 Bytes: 5
  %loadMem_4a9a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9a3c = call %struct.Memory* @routine_jmpq_.L_4a994a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9a3c, i64 -242, i64 5)
  store %struct.Memory* %call_4a9a3c, %struct.Memory** %MEMORY

  br label %block_.L_4a994a

  ; Code: .L_4a9a41:	 RIP: 4a9a41	 Bytes: 0
block_.L_4a9a41:

  ; Code: movq $0x586073, %rsi	 RIP: 4a9a41	 Bytes: 10
  %loadMem_4a9a41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9a41 = call %struct.Memory* @routine_movq__0x586073___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9a41)
  store %struct.Memory* %call_4a9a41, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 4a9a4b	 Bytes: 8
  %loadMem_4a9a4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9a4b = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9a4b)
  store %struct.Memory* %call_4a9a4b, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4a9a53	 Bytes: 2
  %loadMem_4a9a53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9a53 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9a53)
  store %struct.Memory* %call_4a9a53, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4a9a55	 Bytes: 5
  %loadMem1_4a9a55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4a9a55 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4a9a55, i64 -690565, i64 5, i64 5)
  store %struct.Memory* %call1_4a9a55, %struct.Memory** %MEMORY

  %loadMem2_4a9a55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4a9a55 = load i64, i64* %3
  %call2_4a9a55 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4a9a55, %struct.Memory* %loadMem2_4a9a55)
  store %struct.Memory* %call2_4a9a55, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c2c(%rbp)	 RIP: 4a9a5a	 Bytes: 6
  %loadMem_4a9a5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9a5a = call %struct.Memory* @routine_movl__eax__MINUS0x1c2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9a5a)
  store %struct.Memory* %call_4a9a5a, %struct.Memory** %MEMORY

  ; Code: .L_4a9a60:	 RIP: 4a9a60	 Bytes: 0
  br label %block_.L_4a9a60
block_.L_4a9a60:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4a9a60	 Bytes: 4
  %loadMem_4a9a60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9a60 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9a60)
  store %struct.Memory* %call_4a9a60, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %ecx	 RIP: 4a9a64	 Bytes: 3
  %loadMem_4a9a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9a64 = call %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9a64)
  store %struct.Memory* %call_4a9a64, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1be4(%rbp)	 RIP: 4a9a67	 Bytes: 6
  %loadMem_4a9a67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9a67 = call %struct.Memory* @routine_movl__ecx__MINUS0x1be4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9a67)
  store %struct.Memory* %call_4a9a67, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4a9a6d	 Bytes: 4
  %loadMem_4a9a6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9a6d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9a6d)
  store %struct.Memory* %call_4a9a6d, %struct.Memory** %MEMORY

  ; Code: movl 0x30(%rax), %ecx	 RIP: 4a9a71	 Bytes: 3
  %loadMem_4a9a71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9a71 = call %struct.Memory* @routine_movl_0x30__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9a71)
  store %struct.Memory* %call_4a9a71, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1bdc(%rbp)	 RIP: 4a9a74	 Bytes: 6
  %loadMem_4a9a74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9a74 = call %struct.Memory* @routine_movl__ecx__MINUS0x1bdc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9a74)
  store %struct.Memory* %call_4a9a74, %struct.Memory** %MEMORY

  ; Code: movl $0xf, -0x1be0(%rbp)	 RIP: 4a9a7a	 Bytes: 10
  %loadMem_4a9a7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9a7a = call %struct.Memory* @routine_movl__0xf__MINUS0x1be0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9a7a)
  store %struct.Memory* %call_4a9a7a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1bf0(%rbp)	 RIP: 4a9a84	 Bytes: 10
  %loadMem_4a9a84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9a84 = call %struct.Memory* @routine_movl__0x0__MINUS0x1bf0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9a84)
  store %struct.Memory* %call_4a9a84, %struct.Memory** %MEMORY

  ; Code: .L_4a9a8e:	 RIP: 4a9a8e	 Bytes: 0
  br label %block_.L_4a9a8e
block_.L_4a9a8e:

  ; Code: xorl %eax, %eax	 RIP: 4a9a8e	 Bytes: 2
  %loadMem_4a9a8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9a8e = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9a8e)
  store %struct.Memory* %call_4a9a8e, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 4a9a90	 Bytes: 2
  %loadMem_4a9a90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9a90 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9a90)
  store %struct.Memory* %call_4a9a90, %struct.Memory** %MEMORY

  ; Code: cmpl $0x6e3, -0x1bf0(%rbp)	 RIP: 4a9a92	 Bytes: 10
  %loadMem_4a9a92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9a92 = call %struct.Memory* @routine_cmpl__0x6e3__MINUS0x1bf0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9a92)
  store %struct.Memory* %call_4a9a92, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x1c2d(%rbp)	 RIP: 4a9a9c	 Bytes: 6
  %loadMem_4a9a9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9a9c = call %struct.Memory* @routine_movb__cl__MINUS0x1c2d__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9a9c)
  store %struct.Memory* %call_4a9a9c, %struct.Memory** %MEMORY

  ; Code: je .L_4a9aee	 RIP: 4a9aa2	 Bytes: 6
  %loadMem_4a9aa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9aa2 = call %struct.Memory* @routine_je_.L_4a9aee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9aa2, i8* %BRANCH_TAKEN, i64 76, i64 6, i64 6)
  store %struct.Memory* %call_4a9aa2, %struct.Memory** %MEMORY

  %loadBr_4a9aa2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a9aa2 = icmp eq i8 %loadBr_4a9aa2, 1
  br i1 %cmpBr_4a9aa2, label %block_.L_4a9aee, label %block_4a9aa8

block_4a9aa8:
  ; Code: movb $0x1, %al	 RIP: 4a9aa8	 Bytes: 2
  %loadMem_4a9aa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9aa8 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9aa8)
  store %struct.Memory* %call_4a9aa8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x1be0(%rbp)	 RIP: 4a9aaa	 Bytes: 7
  %loadMem_4a9aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9aaa = call %struct.Memory* @routine_cmpl__0x0__MINUS0x1be0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9aaa)
  store %struct.Memory* %call_4a9aaa, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x1c2e(%rbp)	 RIP: 4a9ab1	 Bytes: 6
  %loadMem_4a9ab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9ab1 = call %struct.Memory* @routine_movb__al__MINUS0x1c2e__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9ab1)
  store %struct.Memory* %call_4a9ab1, %struct.Memory** %MEMORY

  ; Code: jg .L_4a9ae2	 RIP: 4a9ab7	 Bytes: 6
  %loadMem_4a9ab7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9ab7 = call %struct.Memory* @routine_jg_.L_4a9ae2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9ab7, i8* %BRANCH_TAKEN, i64 43, i64 6, i64 6)
  store %struct.Memory* %call_4a9ab7, %struct.Memory** %MEMORY

  %loadBr_4a9ab7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a9ab7 = icmp eq i8 %loadBr_4a9ab7, 1
  br i1 %cmpBr_4a9ab7, label %block_.L_4a9ae2, label %block_4a9abd

block_4a9abd:
  ; Code: movb $0x1, %al	 RIP: 4a9abd	 Bytes: 2
  %loadMem_4a9abd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9abd = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9abd)
  store %struct.Memory* %call_4a9abd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x1bdc(%rbp)	 RIP: 4a9abf	 Bytes: 7
  %loadMem_4a9abf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9abf = call %struct.Memory* @routine_cmpl__0x0__MINUS0x1bdc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9abf)
  store %struct.Memory* %call_4a9abf, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x1c2e(%rbp)	 RIP: 4a9ac6	 Bytes: 6
  %loadMem_4a9ac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9ac6 = call %struct.Memory* @routine_movb__al__MINUS0x1c2e__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9ac6)
  store %struct.Memory* %call_4a9ac6, %struct.Memory** %MEMORY

  ; Code: jne .L_4a9ae2	 RIP: 4a9acc	 Bytes: 6
  %loadMem_4a9acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9acc = call %struct.Memory* @routine_jne_.L_4a9ae2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9acc, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4a9acc, %struct.Memory** %MEMORY

  %loadBr_4a9acc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a9acc = icmp eq i8 %loadBr_4a9acc, 1
  br i1 %cmpBr_4a9acc, label %block_.L_4a9ae2, label %block_4a9ad2

block_4a9ad2:
  ; Code: cmpl $0x0, -0x1be4(%rbp)	 RIP: 4a9ad2	 Bytes: 7
  %loadMem_4a9ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9ad2 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x1be4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9ad2)
  store %struct.Memory* %call_4a9ad2, %struct.Memory** %MEMORY

  ; Code: setg %al	 RIP: 4a9ad9	 Bytes: 3
  %loadMem_4a9ad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9ad9 = call %struct.Memory* @routine_setg__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9ad9)
  store %struct.Memory* %call_4a9ad9, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x1c2e(%rbp)	 RIP: 4a9adc	 Bytes: 6
  %loadMem_4a9adc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9adc = call %struct.Memory* @routine_movb__al__MINUS0x1c2e__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9adc)
  store %struct.Memory* %call_4a9adc, %struct.Memory** %MEMORY

  ; Code: .L_4a9ae2:	 RIP: 4a9ae2	 Bytes: 0
  br label %block_.L_4a9ae2
block_.L_4a9ae2:

  ; Code: movb -0x1c2e(%rbp), %al	 RIP: 4a9ae2	 Bytes: 6
  %loadMem_4a9ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9ae2 = call %struct.Memory* @routine_movb_MINUS0x1c2e__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9ae2)
  store %struct.Memory* %call_4a9ae2, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x1c2d(%rbp)	 RIP: 4a9ae8	 Bytes: 6
  %loadMem_4a9ae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9ae8 = call %struct.Memory* @routine_movb__al__MINUS0x1c2d__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9ae8)
  store %struct.Memory* %call_4a9ae8, %struct.Memory** %MEMORY

  ; Code: .L_4a9aee:	 RIP: 4a9aee	 Bytes: 0
  br label %block_.L_4a9aee
block_.L_4a9aee:

  ; Code: movb -0x1c2d(%rbp), %al	 RIP: 4a9aee	 Bytes: 6
  %loadMem_4a9aee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9aee = call %struct.Memory* @routine_movb_MINUS0x1c2d__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9aee)
  store %struct.Memory* %call_4a9aee, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 4a9af4	 Bytes: 2
  %loadMem_4a9af4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9af4 = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9af4)
  store %struct.Memory* %call_4a9af4, %struct.Memory** %MEMORY

  ; Code: jne .L_4a9b01	 RIP: 4a9af6	 Bytes: 6
  %loadMem_4a9af6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9af6 = call %struct.Memory* @routine_jne_.L_4a9b01(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9af6, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4a9af6, %struct.Memory** %MEMORY

  %loadBr_4a9af6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a9af6 = icmp eq i8 %loadBr_4a9af6, 1
  br i1 %cmpBr_4a9af6, label %block_.L_4a9b01, label %block_4a9afc

block_4a9afc:
  ; Code: jmpq .L_4a9d81	 RIP: 4a9afc	 Bytes: 5
  %loadMem_4a9afc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9afc = call %struct.Memory* @routine_jmpq_.L_4a9d81(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9afc, i64 645, i64 5)
  store %struct.Memory* %call_4a9afc, %struct.Memory** %MEMORY

  br label %block_.L_4a9d81

  ; Code: .L_4a9b01:	 RIP: 4a9b01	 Bytes: 0
block_.L_4a9b01:

  ; Code: movl $0x54, %eax	 RIP: 4a9b01	 Bytes: 5
  %loadMem_4a9b01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9b01 = call %struct.Memory* @routine_movl__0x54___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9b01)
  store %struct.Memory* %call_4a9b01, %struct.Memory** %MEMORY

  ; Code: movq $0xb8c050, %rcx	 RIP: 4a9b06	 Bytes: 10
  %loadMem_4a9b06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9b06 = call %struct.Memory* @routine_movq__0xb8c050___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9b06)
  store %struct.Memory* %call_4a9b06, %struct.Memory** %MEMORY

  ; Code: movslq -0x1bf0(%rbp), %rdx	 RIP: 4a9b10	 Bytes: 7
  %loadMem_4a9b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9b10 = call %struct.Memory* @routine_movslq_MINUS0x1bf0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9b10)
  store %struct.Memory* %call_4a9b10, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 4a9b17	 Bytes: 4
  %loadMem_4a9b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9b17 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9b17)
  store %struct.Memory* %call_4a9b17, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4a9b1b	 Bytes: 3
  %loadMem_4a9b1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9b1b = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9b1b)
  store %struct.Memory* %call_4a9b1b, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rdx	 RIP: 4a9b1e	 Bytes: 4
  %loadMem_4a9b1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9b1e = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9b1e)
  store %struct.Memory* %call_4a9b1e, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %esi	 RIP: 4a9b22	 Bytes: 3
  %loadMem_4a9b22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9b22 = call %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9b22)
  store %struct.Memory* %call_4a9b22, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c34(%rbp)	 RIP: 4a9b25	 Bytes: 6
  %loadMem_4a9b25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9b25 = call %struct.Memory* @routine_movl__eax__MINUS0x1c34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9b25)
  store %struct.Memory* %call_4a9b25, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 4a9b2b	 Bytes: 2
  %loadMem_4a9b2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9b2b = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9b2b)
  store %struct.Memory* %call_4a9b2b, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4a9b2d	 Bytes: 1
  %loadMem_4a9b2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9b2d = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9b2d)
  store %struct.Memory* %call_4a9b2d, %struct.Memory** %MEMORY

  ; Code: movl -0x1c34(%rbp), %esi	 RIP: 4a9b2e	 Bytes: 6
  %loadMem_4a9b2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9b2e = call %struct.Memory* @routine_movl_MINUS0x1c34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9b2e)
  store %struct.Memory* %call_4a9b2e, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 4a9b34	 Bytes: 2
  %loadMem_4a9b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9b34 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9b34)
  store %struct.Memory* %call_4a9b34, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x1bec(%rbp)	 RIP: 4a9b36	 Bytes: 6
  %loadMem_4a9b36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9b36 = call %struct.Memory* @routine_movl__edx__MINUS0x1bec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9b36)
  store %struct.Memory* %call_4a9b36, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2a, -0x1bec(%rbp)	 RIP: 4a9b3c	 Bytes: 7
  %loadMem_4a9b3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9b3c = call %struct.Memory* @routine_cmpl__0x2a__MINUS0x1bec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9b3c)
  store %struct.Memory* %call_4a9b3c, %struct.Memory** %MEMORY

  ; Code: jl .L_4a9b58	 RIP: 4a9b43	 Bytes: 6
  %loadMem_4a9b43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9b43 = call %struct.Memory* @routine_jl_.L_4a9b58(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9b43, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_4a9b43, %struct.Memory** %MEMORY

  %loadBr_4a9b43 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a9b43 = icmp eq i8 %loadBr_4a9b43, 1
  br i1 %cmpBr_4a9b43, label %block_.L_4a9b58, label %block_4a9b49

block_4a9b49:
  ; Code: movl -0x1bec(%rbp), %eax	 RIP: 4a9b49	 Bytes: 6
  %loadMem_4a9b49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9b49 = call %struct.Memory* @routine_movl_MINUS0x1bec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9b49)
  store %struct.Memory* %call_4a9b49, %struct.Memory** %MEMORY

  ; Code: subl $0x54, %eax	 RIP: 4a9b4f	 Bytes: 3
  %loadMem_4a9b4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9b4f = call %struct.Memory* @routine_subl__0x54___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9b4f)
  store %struct.Memory* %call_4a9b4f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1bec(%rbp)	 RIP: 4a9b52	 Bytes: 6
  %loadMem_4a9b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9b52 = call %struct.Memory* @routine_movl__eax__MINUS0x1bec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9b52)
  store %struct.Memory* %call_4a9b52, %struct.Memory** %MEMORY

  ; Code: .L_4a9b58:	 RIP: 4a9b58	 Bytes: 0
  br label %block_.L_4a9b58
block_.L_4a9b58:

  ; Code: cmpl $0xffffffd6, -0x1bec(%rbp)	 RIP: 4a9b58	 Bytes: 7
  %loadMem_4a9b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9b58 = call %struct.Memory* @routine_cmpl__0xffffffd6__MINUS0x1bec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9b58)
  store %struct.Memory* %call_4a9b58, %struct.Memory** %MEMORY

  ; Code: jge .L_4a9b74	 RIP: 4a9b5f	 Bytes: 6
  %loadMem_4a9b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9b5f = call %struct.Memory* @routine_jge_.L_4a9b74(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9b5f, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_4a9b5f, %struct.Memory** %MEMORY

  %loadBr_4a9b5f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a9b5f = icmp eq i8 %loadBr_4a9b5f, 1
  br i1 %cmpBr_4a9b5f, label %block_.L_4a9b74, label %block_4a9b65

block_4a9b65:
  ; Code: movl -0x1bec(%rbp), %eax	 RIP: 4a9b65	 Bytes: 6
  %loadMem_4a9b65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9b65 = call %struct.Memory* @routine_movl_MINUS0x1bec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9b65)
  store %struct.Memory* %call_4a9b65, %struct.Memory** %MEMORY

  ; Code: addl $0x54, %eax	 RIP: 4a9b6b	 Bytes: 3
  %loadMem_4a9b6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9b6b = call %struct.Memory* @routine_addl__0x54___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9b6b)
  store %struct.Memory* %call_4a9b6b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1bec(%rbp)	 RIP: 4a9b6e	 Bytes: 6
  %loadMem_4a9b6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9b6e = call %struct.Memory* @routine_movl__eax__MINUS0x1bec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9b6e)
  store %struct.Memory* %call_4a9b6e, %struct.Memory** %MEMORY

  ; Code: .L_4a9b74:	 RIP: 4a9b74	 Bytes: 0
  br label %block_.L_4a9b74
block_.L_4a9b74:

  ; Code: movl $0x54, %eax	 RIP: 4a9b74	 Bytes: 5
  %loadMem_4a9b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9b74 = call %struct.Memory* @routine_movl__0x54___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9b74)
  store %struct.Memory* %call_4a9b74, %struct.Memory** %MEMORY

  ; Code: movq $0xb8c050, %rcx	 RIP: 4a9b79	 Bytes: 10
  %loadMem_4a9b79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9b79 = call %struct.Memory* @routine_movq__0xb8c050___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9b79)
  store %struct.Memory* %call_4a9b79, %struct.Memory** %MEMORY

  ; Code: movslq -0x1bf0(%rbp), %rdx	 RIP: 4a9b83	 Bytes: 7
  %loadMem_4a9b83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9b83 = call %struct.Memory* @routine_movslq_MINUS0x1bf0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9b83)
  store %struct.Memory* %call_4a9b83, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 4a9b8a	 Bytes: 4
  %loadMem_4a9b8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9b8a = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9b8a)
  store %struct.Memory* %call_4a9b8a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4a9b8e	 Bytes: 3
  %loadMem_4a9b8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9b8e = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9b8e)
  store %struct.Memory* %call_4a9b8e, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rdx	 RIP: 4a9b91	 Bytes: 4
  %loadMem_4a9b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9b91 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9b91)
  store %struct.Memory* %call_4a9b91, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %esi	 RIP: 4a9b95	 Bytes: 3
  %loadMem_4a9b95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9b95 = call %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9b95)
  store %struct.Memory* %call_4a9b95, %struct.Memory** %MEMORY

  ; Code: subl -0x1bec(%rbp), %esi	 RIP: 4a9b98	 Bytes: 6
  %loadMem_4a9b98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9b98 = call %struct.Memory* @routine_subl_MINUS0x1bec__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9b98)
  store %struct.Memory* %call_4a9b98, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c38(%rbp)	 RIP: 4a9b9e	 Bytes: 6
  %loadMem_4a9b9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9b9e = call %struct.Memory* @routine_movl__eax__MINUS0x1c38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9b9e)
  store %struct.Memory* %call_4a9b9e, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 4a9ba4	 Bytes: 2
  %loadMem_4a9ba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9ba4 = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9ba4)
  store %struct.Memory* %call_4a9ba4, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4a9ba6	 Bytes: 1
  %loadMem_4a9ba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9ba6 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9ba6)
  store %struct.Memory* %call_4a9ba6, %struct.Memory** %MEMORY

  ; Code: movl -0x1c38(%rbp), %esi	 RIP: 4a9ba7	 Bytes: 6
  %loadMem_4a9ba7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9ba7 = call %struct.Memory* @routine_movl_MINUS0x1c38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9ba7)
  store %struct.Memory* %call_4a9ba7, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 4a9bad	 Bytes: 2
  %loadMem_4a9bad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9bad = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9bad)
  store %struct.Memory* %call_4a9bad, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1be8(%rbp)	 RIP: 4a9baf	 Bytes: 6
  %loadMem_4a9baf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9baf = call %struct.Memory* @routine_movl__eax__MINUS0x1be8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9baf)
  store %struct.Memory* %call_4a9baf, %struct.Memory** %MEMORY

  ; Code: movl -0x1be8(%rbp), %eax	 RIP: 4a9bb5	 Bytes: 6
  %loadMem_4a9bb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9bb5 = call %struct.Memory* @routine_movl_MINUS0x1be8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9bb5)
  store %struct.Memory* %call_4a9bb5, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4a9bbb	 Bytes: 4
  %loadMem_4a9bbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9bbb = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9bbb)
  store %struct.Memory* %call_4a9bbb, %struct.Memory** %MEMORY

  ; Code: cmpl 0x20(%rcx), %eax	 RIP: 4a9bbf	 Bytes: 3
  %loadMem_4a9bbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9bbf = call %struct.Memory* @routine_cmpl_0x20__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9bbf)
  store %struct.Memory* %call_4a9bbf, %struct.Memory** %MEMORY

  ; Code: jne .L_4a9bd7	 RIP: 4a9bc2	 Bytes: 6
  %loadMem_4a9bc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9bc2 = call %struct.Memory* @routine_jne_.L_4a9bd7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9bc2, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_4a9bc2, %struct.Memory** %MEMORY

  %loadBr_4a9bc2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a9bc2 = icmp eq i8 %loadBr_4a9bc2, 1
  br i1 %cmpBr_4a9bc2, label %block_.L_4a9bd7, label %block_4a9bc8

block_4a9bc8:
  ; Code: movl -0x1be0(%rbp), %eax	 RIP: 4a9bc8	 Bytes: 6
  %loadMem_4a9bc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9bc8 = call %struct.Memory* @routine_movl_MINUS0x1be0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9bc8)
  store %struct.Memory* %call_4a9bc8, %struct.Memory** %MEMORY

  ; Code: andl $0xfffffffd, %eax	 RIP: 4a9bce	 Bytes: 3
  %loadMem_4a9bce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9bce = call %struct.Memory* @routine_andl__0xfffffffd___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9bce)
  store %struct.Memory* %call_4a9bce, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1be0(%rbp)	 RIP: 4a9bd1	 Bytes: 6
  %loadMem_4a9bd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9bd1 = call %struct.Memory* @routine_movl__eax__MINUS0x1be0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9bd1)
  store %struct.Memory* %call_4a9bd1, %struct.Memory** %MEMORY

  ; Code: .L_4a9bd7:	 RIP: 4a9bd7	 Bytes: 0
  br label %block_.L_4a9bd7
block_.L_4a9bd7:

  ; Code: movl -0x1be8(%rbp), %eax	 RIP: 4a9bd7	 Bytes: 6
  %loadMem_4a9bd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9bd7 = call %struct.Memory* @routine_movl_MINUS0x1be8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9bd7)
  store %struct.Memory* %call_4a9bd7, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4a9bdd	 Bytes: 4
  %loadMem_4a9bdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9bdd = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9bdd)
  store %struct.Memory* %call_4a9bdd, %struct.Memory** %MEMORY

  ; Code: cmpl 0x18(%rcx), %eax	 RIP: 4a9be1	 Bytes: 3
  %loadMem_4a9be1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9be1 = call %struct.Memory* @routine_cmpl_0x18__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9be1)
  store %struct.Memory* %call_4a9be1, %struct.Memory** %MEMORY

  ; Code: jne .L_4a9bf9	 RIP: 4a9be4	 Bytes: 6
  %loadMem_4a9be4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9be4 = call %struct.Memory* @routine_jne_.L_4a9bf9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9be4, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_4a9be4, %struct.Memory** %MEMORY

  %loadBr_4a9be4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a9be4 = icmp eq i8 %loadBr_4a9be4, 1
  br i1 %cmpBr_4a9be4, label %block_.L_4a9bf9, label %block_4a9bea

block_4a9bea:
  ; Code: movl -0x1be0(%rbp), %eax	 RIP: 4a9bea	 Bytes: 6
  %loadMem_4a9bea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9bea = call %struct.Memory* @routine_movl_MINUS0x1be0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9bea)
  store %struct.Memory* %call_4a9bea, %struct.Memory** %MEMORY

  ; Code: andl $0xfffffffe, %eax	 RIP: 4a9bf0	 Bytes: 3
  %loadMem_4a9bf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9bf0 = call %struct.Memory* @routine_andl__0xfffffffe___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9bf0)
  store %struct.Memory* %call_4a9bf0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1be0(%rbp)	 RIP: 4a9bf3	 Bytes: 6
  %loadMem_4a9bf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9bf3 = call %struct.Memory* @routine_movl__eax__MINUS0x1be0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9bf3)
  store %struct.Memory* %call_4a9bf3, %struct.Memory** %MEMORY

  ; Code: .L_4a9bf9:	 RIP: 4a9bf9	 Bytes: 0
  br label %block_.L_4a9bf9
block_.L_4a9bf9:

  ; Code: movl -0x1bec(%rbp), %eax	 RIP: 4a9bf9	 Bytes: 6
  %loadMem_4a9bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9bf9 = call %struct.Memory* @routine_movl_MINUS0x1bec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9bf9)
  store %struct.Memory* %call_4a9bf9, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4a9bff	 Bytes: 4
  %loadMem_4a9bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9bff = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9bff)
  store %struct.Memory* %call_4a9bff, %struct.Memory** %MEMORY

  ; Code: cmpl 0x24(%rcx), %eax	 RIP: 4a9c03	 Bytes: 3
  %loadMem_4a9c03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9c03 = call %struct.Memory* @routine_cmpl_0x24__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9c03)
  store %struct.Memory* %call_4a9c03, %struct.Memory** %MEMORY

  ; Code: jne .L_4a9c1b	 RIP: 4a9c06	 Bytes: 6
  %loadMem_4a9c06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9c06 = call %struct.Memory* @routine_jne_.L_4a9c1b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9c06, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_4a9c06, %struct.Memory** %MEMORY

  %loadBr_4a9c06 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a9c06 = icmp eq i8 %loadBr_4a9c06, 1
  br i1 %cmpBr_4a9c06, label %block_.L_4a9c1b, label %block_4a9c0c

block_4a9c0c:
  ; Code: movl -0x1be0(%rbp), %eax	 RIP: 4a9c0c	 Bytes: 6
  %loadMem_4a9c0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9c0c = call %struct.Memory* @routine_movl_MINUS0x1be0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9c0c)
  store %struct.Memory* %call_4a9c0c, %struct.Memory** %MEMORY

  ; Code: andl $0xfffffffb, %eax	 RIP: 4a9c12	 Bytes: 3
  %loadMem_4a9c12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9c12 = call %struct.Memory* @routine_andl__0xfffffffb___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9c12)
  store %struct.Memory* %call_4a9c12, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1be0(%rbp)	 RIP: 4a9c15	 Bytes: 6
  %loadMem_4a9c15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9c15 = call %struct.Memory* @routine_movl__eax__MINUS0x1be0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9c15)
  store %struct.Memory* %call_4a9c15, %struct.Memory** %MEMORY

  ; Code: .L_4a9c1b:	 RIP: 4a9c1b	 Bytes: 0
  br label %block_.L_4a9c1b
block_.L_4a9c1b:

  ; Code: movl -0x1bec(%rbp), %eax	 RIP: 4a9c1b	 Bytes: 6
  %loadMem_4a9c1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9c1b = call %struct.Memory* @routine_movl_MINUS0x1bec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9c1b)
  store %struct.Memory* %call_4a9c1b, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4a9c21	 Bytes: 4
  %loadMem_4a9c21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9c21 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9c21)
  store %struct.Memory* %call_4a9c21, %struct.Memory** %MEMORY

  ; Code: cmpl 0x1c(%rcx), %eax	 RIP: 4a9c25	 Bytes: 3
  %loadMem_4a9c25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9c25 = call %struct.Memory* @routine_cmpl_0x1c__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9c25)
  store %struct.Memory* %call_4a9c25, %struct.Memory** %MEMORY

  ; Code: jne .L_4a9c3d	 RIP: 4a9c28	 Bytes: 6
  %loadMem_4a9c28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9c28 = call %struct.Memory* @routine_jne_.L_4a9c3d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9c28, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_4a9c28, %struct.Memory** %MEMORY

  %loadBr_4a9c28 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a9c28 = icmp eq i8 %loadBr_4a9c28, 1
  br i1 %cmpBr_4a9c28, label %block_.L_4a9c3d, label %block_4a9c2e

block_4a9c2e:
  ; Code: movl -0x1be0(%rbp), %eax	 RIP: 4a9c2e	 Bytes: 6
  %loadMem_4a9c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9c2e = call %struct.Memory* @routine_movl_MINUS0x1be0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9c2e)
  store %struct.Memory* %call_4a9c2e, %struct.Memory** %MEMORY

  ; Code: andl $0xfffffff7, %eax	 RIP: 4a9c34	 Bytes: 3
  %loadMem_4a9c34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9c34 = call %struct.Memory* @routine_andl__0xfffffff7___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9c34)
  store %struct.Memory* %call_4a9c34, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1be0(%rbp)	 RIP: 4a9c37	 Bytes: 6
  %loadMem_4a9c37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9c37 = call %struct.Memory* @routine_movl__eax__MINUS0x1be0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9c37)
  store %struct.Memory* %call_4a9c37, %struct.Memory** %MEMORY

  ; Code: .L_4a9c3d:	 RIP: 4a9c3d	 Bytes: 0
  br label %block_.L_4a9c3d
block_.L_4a9c3d:

  ; Code: movq $0x588b2c, %rdi	 RIP: 4a9c3d	 Bytes: 10
  %loadMem_4a9c3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9c3d = call %struct.Memory* @routine_movq__0x588b2c___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9c3d)
  store %struct.Memory* %call_4a9c3d, %struct.Memory** %MEMORY

  ; Code: leaq -0x1bd0(%rbp), %rax	 RIP: 4a9c47	 Bytes: 7
  %loadMem_4a9c47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9c47 = call %struct.Memory* @routine_leaq_MINUS0x1bd0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9c47)
  store %struct.Memory* %call_4a9c47, %struct.Memory** %MEMORY

  ; Code: movl -0x1bd4(%rbp), %ecx	 RIP: 4a9c4e	 Bytes: 6
  %loadMem_4a9c4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9c4e = call %struct.Memory* @routine_movl_MINUS0x1bd4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9c4e)
  store %struct.Memory* %call_4a9c4e, %struct.Memory** %MEMORY

  ; Code: addl -0x1be8(%rbp), %ecx	 RIP: 4a9c54	 Bytes: 6
  %loadMem_4a9c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9c54 = call %struct.Memory* @routine_addl_MINUS0x1be8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9c54)
  store %struct.Memory* %call_4a9c54, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4a9c5a	 Bytes: 3
  %loadMem_4a9c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9c5a = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9c5a)
  store %struct.Memory* %call_4a9c5a, %struct.Memory** %MEMORY

  ; Code: imulq $0x54, %rdx, %rdx	 RIP: 4a9c5d	 Bytes: 4
  %loadMem_4a9c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9c5d = call %struct.Memory* @routine_imulq__0x54___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9c5d)
  store %struct.Memory* %call_4a9c5d, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4a9c61	 Bytes: 3
  %loadMem_4a9c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9c61 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9c61)
  store %struct.Memory* %call_4a9c61, %struct.Memory** %MEMORY

  ; Code: movl -0x1bd8(%rbp), %ecx	 RIP: 4a9c64	 Bytes: 6
  %loadMem_4a9c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9c64 = call %struct.Memory* @routine_movl_MINUS0x1bd8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9c64)
  store %struct.Memory* %call_4a9c64, %struct.Memory** %MEMORY

  ; Code: addl -0x1bec(%rbp), %ecx	 RIP: 4a9c6a	 Bytes: 6
  %loadMem_4a9c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9c6a = call %struct.Memory* @routine_addl_MINUS0x1bec__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9c6a)
  store %struct.Memory* %call_4a9c6a, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4a9c70	 Bytes: 3
  %loadMem_4a9c70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9c70 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9c70)
  store %struct.Memory* %call_4a9c70, %struct.Memory** %MEMORY

  ; Code: movb (%rax,%rdx,1), %sil	 RIP: 4a9c73	 Bytes: 4
  %loadMem_4a9c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9c73 = call %struct.Memory* @routine_movb___rax__rdx_1____sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9c73)
  store %struct.Memory* %call_4a9c73, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 4a9c77	 Bytes: 4
  %loadMem_4a9c77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9c77 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9c77)
  store %struct.Memory* %call_4a9c77, %struct.Memory** %MEMORY

  ; Code: movslq -0x1bf0(%rbp), %rdx	 RIP: 4a9c7b	 Bytes: 7
  %loadMem_4a9c7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9c7b = call %struct.Memory* @routine_movslq_MINUS0x1bf0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9c7b)
  store %struct.Memory* %call_4a9c7b, %struct.Memory** %MEMORY

  ; Code: movb %sil, (%rax,%rdx,1)	 RIP: 4a9c82	 Bytes: 4
  %loadMem_4a9c82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9c82 = call %struct.Memory* @routine_movb__sil____rax__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9c82)
  store %struct.Memory* %call_4a9c82, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 4a9c86	 Bytes: 4
  %loadMem_4a9c86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9c86 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9c86)
  store %struct.Memory* %call_4a9c86, %struct.Memory** %MEMORY

  ; Code: movslq -0x1bf0(%rbp), %rdx	 RIP: 4a9c8a	 Bytes: 7
  %loadMem_4a9c8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9c8a = call %struct.Memory* @routine_movslq_MINUS0x1bf0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9c8a)
  store %struct.Memory* %call_4a9c8a, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rdx,1), %esi	 RIP: 4a9c91	 Bytes: 4
  %loadMem_4a9c91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9c91 = call %struct.Memory* @routine_movsbl___rax__rdx_1____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9c91)
  store %struct.Memory* %call_4a9c91, %struct.Memory** %MEMORY

  ; Code: callq .strchr_plt	 RIP: 4a9c95	 Bytes: 5
  %loadMem1_4a9c95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4a9c95 = call %struct.Memory* @routine_callq_.strchr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4a9c95, i64 -691301, i64 5, i64 5)
  store %struct.Memory* %call1_4a9c95, %struct.Memory** %MEMORY

  %loadMem2_4a9c95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4a9c95 = load i64, i64* %3
  %call2_4a9c95 = call %struct.Memory* @sub_401030.strchr_plt(%struct.State* %0, i64  %loadPC_4a9c95, %struct.Memory* %loadMem2_4a9c95)
  store %struct.Memory* %call2_4a9c95, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4a9c9a	 Bytes: 4
  %loadMem_4a9c9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9c9a = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9c9a)
  store %struct.Memory* %call_4a9c9a, %struct.Memory** %MEMORY

  ; Code: je .L_4a9cb3	 RIP: 4a9c9e	 Bytes: 6
  %loadMem_4a9c9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9c9e = call %struct.Memory* @routine_je_.L_4a9cb3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9c9e, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_4a9c9e, %struct.Memory** %MEMORY

  %loadBr_4a9c9e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a9c9e = icmp eq i8 %loadBr_4a9c9e, 1
  br i1 %cmpBr_4a9c9e, label %block_.L_4a9cb3, label %block_4a9ca4

block_4a9ca4:
  ; Code: movl -0x1be4(%rbp), %eax	 RIP: 4a9ca4	 Bytes: 6
  %loadMem_4a9ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9ca4 = call %struct.Memory* @routine_movl_MINUS0x1be4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9ca4)
  store %struct.Memory* %call_4a9ca4, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 4a9caa	 Bytes: 3
  %loadMem_4a9caa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9caa = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9caa)
  store %struct.Memory* %call_4a9caa, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1be4(%rbp)	 RIP: 4a9cad	 Bytes: 6
  %loadMem_4a9cad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9cad = call %struct.Memory* @routine_movl__eax__MINUS0x1be4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9cad)
  store %struct.Memory* %call_4a9cad, %struct.Memory** %MEMORY

  ; Code: .L_4a9cb3:	 RIP: 4a9cb3	 Bytes: 0
  br label %block_.L_4a9cb3
block_.L_4a9cb3:

  ; Code: movq $0x588b35, %rdi	 RIP: 4a9cb3	 Bytes: 10
  %loadMem_4a9cb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9cb3 = call %struct.Memory* @routine_movq__0x588b35___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9cb3)
  store %struct.Memory* %call_4a9cb3, %struct.Memory** %MEMORY

  ; Code: movq -0x30(%rbp), %rax	 RIP: 4a9cbd	 Bytes: 4
  %loadMem_4a9cbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9cbd = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9cbd)
  store %struct.Memory* %call_4a9cbd, %struct.Memory** %MEMORY

  ; Code: movslq -0x1bf0(%rbp), %rcx	 RIP: 4a9cc1	 Bytes: 7
  %loadMem_4a9cc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9cc1 = call %struct.Memory* @routine_movslq_MINUS0x1bf0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9cc1)
  store %struct.Memory* %call_4a9cc1, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %esi	 RIP: 4a9cc8	 Bytes: 4
  %loadMem_4a9cc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9cc8 = call %struct.Memory* @routine_movsbl___rax__rcx_1____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9cc8)
  store %struct.Memory* %call_4a9cc8, %struct.Memory** %MEMORY

  ; Code: callq .strchr_plt	 RIP: 4a9ccc	 Bytes: 5
  %loadMem1_4a9ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4a9ccc = call %struct.Memory* @routine_callq_.strchr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4a9ccc, i64 -691356, i64 5, i64 5)
  store %struct.Memory* %call1_4a9ccc, %struct.Memory** %MEMORY

  %loadMem2_4a9ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4a9ccc = load i64, i64* %3
  %call2_4a9ccc = call %struct.Memory* @sub_401030.strchr_plt(%struct.State* %0, i64  %loadPC_4a9ccc, %struct.Memory* %loadMem2_4a9ccc)
  store %struct.Memory* %call2_4a9ccc, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4a9cd1	 Bytes: 4
  %loadMem_4a9cd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9cd1 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9cd1)
  store %struct.Memory* %call_4a9cd1, %struct.Memory** %MEMORY

  ; Code: je .L_4a9d68	 RIP: 4a9cd5	 Bytes: 6
  %loadMem_4a9cd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9cd5 = call %struct.Memory* @routine_je_.L_4a9d68(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9cd5, i8* %BRANCH_TAKEN, i64 147, i64 6, i64 6)
  store %struct.Memory* %call_4a9cd5, %struct.Memory** %MEMORY

  %loadBr_4a9cd5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a9cd5 = icmp eq i8 %loadBr_4a9cd5, 1
  br i1 %cmpBr_4a9cd5, label %block_.L_4a9d68, label %block_4a9cdb

block_4a9cdb:
  ; Code: movl -0x1be8(%rbp), %eax	 RIP: 4a9cdb	 Bytes: 6
  %loadMem_4a9cdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9cdb = call %struct.Memory* @routine_movl_MINUS0x1be8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9cdb)
  store %struct.Memory* %call_4a9cdb, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4a9ce1	 Bytes: 4
  %loadMem_4a9ce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9ce1 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9ce1)
  store %struct.Memory* %call_4a9ce1, %struct.Memory** %MEMORY

  ; Code: cmpl 0x20(%rcx), %eax	 RIP: 4a9ce5	 Bytes: 3
  %loadMem_4a9ce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9ce5 = call %struct.Memory* @routine_cmpl_0x20__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9ce5)
  store %struct.Memory* %call_4a9ce5, %struct.Memory** %MEMORY

  ; Code: jle .L_4a9cfd	 RIP: 4a9ce8	 Bytes: 6
  %loadMem_4a9ce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9ce8 = call %struct.Memory* @routine_jle_.L_4a9cfd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9ce8, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_4a9ce8, %struct.Memory** %MEMORY

  %loadBr_4a9ce8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a9ce8 = icmp eq i8 %loadBr_4a9ce8, 1
  br i1 %cmpBr_4a9ce8, label %block_.L_4a9cfd, label %block_4a9cee

block_4a9cee:
  ; Code: movl -0x1bdc(%rbp), %eax	 RIP: 4a9cee	 Bytes: 6
  %loadMem_4a9cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9cee = call %struct.Memory* @routine_movl_MINUS0x1bdc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9cee)
  store %struct.Memory* %call_4a9cee, %struct.Memory** %MEMORY

  ; Code: andl $0xfffffffd, %eax	 RIP: 4a9cf4	 Bytes: 3
  %loadMem_4a9cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9cf4 = call %struct.Memory* @routine_andl__0xfffffffd___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9cf4)
  store %struct.Memory* %call_4a9cf4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1bdc(%rbp)	 RIP: 4a9cf7	 Bytes: 6
  %loadMem_4a9cf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9cf7 = call %struct.Memory* @routine_movl__eax__MINUS0x1bdc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9cf7)
  store %struct.Memory* %call_4a9cf7, %struct.Memory** %MEMORY

  ; Code: .L_4a9cfd:	 RIP: 4a9cfd	 Bytes: 0
  br label %block_.L_4a9cfd
block_.L_4a9cfd:

  ; Code: movl -0x1be8(%rbp), %eax	 RIP: 4a9cfd	 Bytes: 6
  %loadMem_4a9cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9cfd = call %struct.Memory* @routine_movl_MINUS0x1be8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9cfd)
  store %struct.Memory* %call_4a9cfd, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4a9d03	 Bytes: 4
  %loadMem_4a9d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d03 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d03)
  store %struct.Memory* %call_4a9d03, %struct.Memory** %MEMORY

  ; Code: cmpl 0x18(%rcx), %eax	 RIP: 4a9d07	 Bytes: 3
  %loadMem_4a9d07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d07 = call %struct.Memory* @routine_cmpl_0x18__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d07)
  store %struct.Memory* %call_4a9d07, %struct.Memory** %MEMORY

  ; Code: jge .L_4a9d1f	 RIP: 4a9d0a	 Bytes: 6
  %loadMem_4a9d0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d0a = call %struct.Memory* @routine_jge_.L_4a9d1f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d0a, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_4a9d0a, %struct.Memory** %MEMORY

  %loadBr_4a9d0a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a9d0a = icmp eq i8 %loadBr_4a9d0a, 1
  br i1 %cmpBr_4a9d0a, label %block_.L_4a9d1f, label %block_4a9d10

block_4a9d10:
  ; Code: movl -0x1bdc(%rbp), %eax	 RIP: 4a9d10	 Bytes: 6
  %loadMem_4a9d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d10 = call %struct.Memory* @routine_movl_MINUS0x1bdc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d10)
  store %struct.Memory* %call_4a9d10, %struct.Memory** %MEMORY

  ; Code: andl $0xfffffffe, %eax	 RIP: 4a9d16	 Bytes: 3
  %loadMem_4a9d16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d16 = call %struct.Memory* @routine_andl__0xfffffffe___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d16)
  store %struct.Memory* %call_4a9d16, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1bdc(%rbp)	 RIP: 4a9d19	 Bytes: 6
  %loadMem_4a9d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d19 = call %struct.Memory* @routine_movl__eax__MINUS0x1bdc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d19)
  store %struct.Memory* %call_4a9d19, %struct.Memory** %MEMORY

  ; Code: .L_4a9d1f:	 RIP: 4a9d1f	 Bytes: 0
  br label %block_.L_4a9d1f
block_.L_4a9d1f:

  ; Code: movl -0x1bec(%rbp), %eax	 RIP: 4a9d1f	 Bytes: 6
  %loadMem_4a9d1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d1f = call %struct.Memory* @routine_movl_MINUS0x1bec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d1f)
  store %struct.Memory* %call_4a9d1f, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4a9d25	 Bytes: 4
  %loadMem_4a9d25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d25 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d25)
  store %struct.Memory* %call_4a9d25, %struct.Memory** %MEMORY

  ; Code: cmpl 0x24(%rcx), %eax	 RIP: 4a9d29	 Bytes: 3
  %loadMem_4a9d29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d29 = call %struct.Memory* @routine_cmpl_0x24__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d29)
  store %struct.Memory* %call_4a9d29, %struct.Memory** %MEMORY

  ; Code: jle .L_4a9d41	 RIP: 4a9d2c	 Bytes: 6
  %loadMem_4a9d2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d2c = call %struct.Memory* @routine_jle_.L_4a9d41(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d2c, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_4a9d2c, %struct.Memory** %MEMORY

  %loadBr_4a9d2c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a9d2c = icmp eq i8 %loadBr_4a9d2c, 1
  br i1 %cmpBr_4a9d2c, label %block_.L_4a9d41, label %block_4a9d32

block_4a9d32:
  ; Code: movl -0x1bdc(%rbp), %eax	 RIP: 4a9d32	 Bytes: 6
  %loadMem_4a9d32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d32 = call %struct.Memory* @routine_movl_MINUS0x1bdc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d32)
  store %struct.Memory* %call_4a9d32, %struct.Memory** %MEMORY

  ; Code: andl $0xfffffffb, %eax	 RIP: 4a9d38	 Bytes: 3
  %loadMem_4a9d38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d38 = call %struct.Memory* @routine_andl__0xfffffffb___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d38)
  store %struct.Memory* %call_4a9d38, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1bdc(%rbp)	 RIP: 4a9d3b	 Bytes: 6
  %loadMem_4a9d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d3b = call %struct.Memory* @routine_movl__eax__MINUS0x1bdc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d3b)
  store %struct.Memory* %call_4a9d3b, %struct.Memory** %MEMORY

  ; Code: .L_4a9d41:	 RIP: 4a9d41	 Bytes: 0
  br label %block_.L_4a9d41
block_.L_4a9d41:

  ; Code: movl -0x1bec(%rbp), %eax	 RIP: 4a9d41	 Bytes: 6
  %loadMem_4a9d41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d41 = call %struct.Memory* @routine_movl_MINUS0x1bec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d41)
  store %struct.Memory* %call_4a9d41, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4a9d47	 Bytes: 4
  %loadMem_4a9d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d47 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d47)
  store %struct.Memory* %call_4a9d47, %struct.Memory** %MEMORY

  ; Code: cmpl 0x1c(%rcx), %eax	 RIP: 4a9d4b	 Bytes: 3
  %loadMem_4a9d4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d4b = call %struct.Memory* @routine_cmpl_0x1c__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d4b)
  store %struct.Memory* %call_4a9d4b, %struct.Memory** %MEMORY

  ; Code: jge .L_4a9d63	 RIP: 4a9d4e	 Bytes: 6
  %loadMem_4a9d4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d4e = call %struct.Memory* @routine_jge_.L_4a9d63(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d4e, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_4a9d4e, %struct.Memory** %MEMORY

  %loadBr_4a9d4e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a9d4e = icmp eq i8 %loadBr_4a9d4e, 1
  br i1 %cmpBr_4a9d4e, label %block_.L_4a9d63, label %block_4a9d54

block_4a9d54:
  ; Code: movl -0x1bdc(%rbp), %eax	 RIP: 4a9d54	 Bytes: 6
  %loadMem_4a9d54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d54 = call %struct.Memory* @routine_movl_MINUS0x1bdc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d54)
  store %struct.Memory* %call_4a9d54, %struct.Memory** %MEMORY

  ; Code: andl $0xfffffff7, %eax	 RIP: 4a9d5a	 Bytes: 3
  %loadMem_4a9d5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d5a = call %struct.Memory* @routine_andl__0xfffffff7___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d5a)
  store %struct.Memory* %call_4a9d5a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1bdc(%rbp)	 RIP: 4a9d5d	 Bytes: 6
  %loadMem_4a9d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d5d = call %struct.Memory* @routine_movl__eax__MINUS0x1bdc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d5d)
  store %struct.Memory* %call_4a9d5d, %struct.Memory** %MEMORY

  ; Code: .L_4a9d63:	 RIP: 4a9d63	 Bytes: 0
  br label %block_.L_4a9d63
block_.L_4a9d63:

  ; Code: jmpq .L_4a9d68	 RIP: 4a9d63	 Bytes: 5
  %loadMem_4a9d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d63 = call %struct.Memory* @routine_jmpq_.L_4a9d68(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d63, i64 5, i64 5)
  store %struct.Memory* %call_4a9d63, %struct.Memory** %MEMORY

  br label %block_.L_4a9d68

  ; Code: .L_4a9d68:	 RIP: 4a9d68	 Bytes: 0
block_.L_4a9d68:

  ; Code: jmpq .L_4a9d6d	 RIP: 4a9d68	 Bytes: 5
  %loadMem_4a9d68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d68 = call %struct.Memory* @routine_jmpq_.L_4a9d6d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d68, i64 5, i64 5)
  store %struct.Memory* %call_4a9d68, %struct.Memory** %MEMORY

  br label %block_.L_4a9d6d

  ; Code: .L_4a9d6d:	 RIP: 4a9d6d	 Bytes: 0
block_.L_4a9d6d:

  ; Code: movl -0x1bf0(%rbp), %eax	 RIP: 4a9d6d	 Bytes: 6
  %loadMem_4a9d6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d6d = call %struct.Memory* @routine_movl_MINUS0x1bf0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d6d)
  store %struct.Memory* %call_4a9d6d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4a9d73	 Bytes: 3
  %loadMem_4a9d73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d73 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d73)
  store %struct.Memory* %call_4a9d73, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1bf0(%rbp)	 RIP: 4a9d76	 Bytes: 6
  %loadMem_4a9d76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d76 = call %struct.Memory* @routine_movl__eax__MINUS0x1bf0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d76)
  store %struct.Memory* %call_4a9d76, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4a9a8e	 RIP: 4a9d7c	 Bytes: 5
  %loadMem_4a9d7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d7c = call %struct.Memory* @routine_jmpq_.L_4a9a8e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d7c, i64 -750, i64 5)
  store %struct.Memory* %call_4a9d7c, %struct.Memory** %MEMORY

  br label %block_.L_4a9a8e

  ; Code: .L_4a9d81:	 RIP: 4a9d81	 Bytes: 0
block_.L_4a9d81:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 4a9d81	 Bytes: 4
  %loadMem_4a9d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d81 = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d81)
  store %struct.Memory* %call_4a9d81, %struct.Memory** %MEMORY

  ; Code: movslq -0x1bf0(%rbp), %rcx	 RIP: 4a9d85	 Bytes: 7
  %loadMem_4a9d85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d85 = call %struct.Memory* @routine_movslq_MINUS0x1bf0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d85)
  store %struct.Memory* %call_4a9d85, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rax,%rcx,1)	 RIP: 4a9d8c	 Bytes: 4
  %loadMem_4a9d8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d8c = call %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d8c)
  store %struct.Memory* %call_4a9d8c, %struct.Memory** %MEMORY

  ; Code: addq $0x1c28, %rsp	 RIP: 4a9d90	 Bytes: 7
  %loadMem_4a9d90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d90 = call %struct.Memory* @routine_addq__0x1c28___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d90)
  store %struct.Memory* %call_4a9d90, %struct.Memory** %MEMORY

  ; Code: popq %rbx	 RIP: 4a9d97	 Bytes: 1
  %loadMem_4a9d97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d97 = call %struct.Memory* @routine_popq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d97)
  store %struct.Memory* %call_4a9d97, %struct.Memory** %MEMORY

  ; Code: popq %r14	 RIP: 4a9d98	 Bytes: 2
  %loadMem_4a9d98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d98 = call %struct.Memory* @routine_popq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d98)
  store %struct.Memory* %call_4a9d98, %struct.Memory** %MEMORY

  ; Code: popq %r15	 RIP: 4a9d9a	 Bytes: 2
  %loadMem_4a9d9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d9a = call %struct.Memory* @routine_popq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d9a)
  store %struct.Memory* %call_4a9d9a, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 4a9d9c	 Bytes: 1
  %loadMem_4a9d9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d9c = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d9c)
  store %struct.Memory* %call_4a9d9c, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 4a9d9d	 Bytes: 1
  %loadMem_4a9d9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4a9d9d = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4a9d9d)
  store %struct.Memory* %call_4a9d9d, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_4a9d9d
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


define %struct.Memory* @routine_pushq__r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R15
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_subq__0x1c28___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 7208)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x23___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 35)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x1b90___r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R10D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 7056)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__r10d___r11d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R11D to i64*
  %13 = load i32, i32* %R10D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x1bd0__rbp____rbx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_xorl__r10d___r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R10D to i64*
  %10 = load i32, i32* %R10D
  %11 = zext i32 %10 to i64
  %12 = load i32, i32* %R10D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x6e4___r14d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R14D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 1764)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__r14d___r15d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 31
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R15D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R15D to i64*
  %13 = load i32, i32* %R14D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rdi__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rsi__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rdx__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %RDX
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


define %struct.Memory* @routine_movl__r8d__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r9d__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
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

define %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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

define %struct.Memory* @routine_addl__0x2a___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 42)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__ecx__MINUS0x1bd4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7124
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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




define %struct.Memory* @routine_movl__ecx__MINUS0x1bd8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7128
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__r10d___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R10D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__r15___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 31
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R15 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R15
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movl__eax__MINUS0x1bf8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7160
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__r11__MINUS0x1c00__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7168
  %14 = load i64, i64* %R11
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rbx__MINUS0x1c08__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7176
  %14 = load i64, i64* %RBX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
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


define %struct.Memory* @routine_movq_MINUS0x1c08__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rdx___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movl_MINUS0x1bf8__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x1c00__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_cmpl__0x0__0xaf3458(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xaf3458_type* @G_0xaf3458 to i64), i64 0)
  ret %struct.Memory* %8
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

define %struct.Memory* @routine_jle_.L_4a92ec(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x588b0b___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x588b0b_type* @G__0x588b0b to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x99c0a0_type* @G_0x99c0a0 to i64))
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


define %struct.Memory* @routine_callq_.fprintf_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x1c0c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7180
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_movl__0x15__MINUS0x1be8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 7144
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 21)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x3f__MINUS0x1be8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 7144
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 63)
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

define %struct.Memory* @routine_je_.L_4a9367(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x15__MINUS0x1bec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 7148
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 21)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x3f__MINUS0x1bec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 7148
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 63)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4a934e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x1bd0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x1be8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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

define %struct.Memory* @routine_imulq__0x54___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 84)
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


define %struct.Memory* @routine_movslq_MINUS0x1bec__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__0x24____rax__rcx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 36)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x1bec__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7148
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


define %struct.Memory* @routine_movl__eax__MINUS0x1bec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7148
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

define %struct.Memory* @routine_jmpq_.L_4a930d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4a9353(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_MINUS0x1be8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x1be8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7144
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4a92f6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x18__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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

define %struct.Memory* @routine_addl_MINUS0x1bd4__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 7124
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__MINUS0x1be8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7144
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x20__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x1bd4__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 7124
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_je_.L_4a9416(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0x1c__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x1bd8__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 7128
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__MINUS0x1bec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7148
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_0x24__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x1bd8__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 7128
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_je_.L_4a93fd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movb__0x3f____rax__rcx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 63)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_jmpq_.L_4a93ab(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4a9402(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4a937a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl_0x30__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_andl__0x2___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 2)
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


define %struct.Memory* @routine_je_.L_4a94b5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x1bd4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7124
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_0x20__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_je_.L_4a94b0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x1bec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 7148
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_je_.L_4a9497(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movb__0x2d____rax__rcx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 45)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_jmpq_.L_4a9456(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4a949c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4a943f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4a94b5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_andl__0x4___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 4)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_4a9554(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x1be8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 7144
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_je_.L_4a954f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x1bd8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_0x24__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 36
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_je_.L_4a9536(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movb__0x7c____rax__rcx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 124)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_jmpq_.L_4a94f5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4a953b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4a94d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4a9554(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_andl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_4a95f5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x1bd4__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7124
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_0x18__rdx____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %ECX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_4a95f0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x54__MINUS0x1bec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 7148
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 84)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4a95d7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_jmpq_.L_4a9596(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4a95dc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4a9571(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4a95f5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_andl__0x8___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 8)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_4a9754(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_addl_0x20__rdx____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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




define %struct.Memory* @routine_je_.L_4a96a2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x1bd8__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_0x1c__rdx____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 28
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_je_.L_4a9689(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_jmpq_.L_4a963a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4a968e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4a9612(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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

define %struct.Memory* @routine_jne_.L_4a974f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}














define %struct.Memory* @routine_je_.L_4a974a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_je_.L_4a9731(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_jmpq_.L_4a96e2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4a9736(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4a96cb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4a974f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4a9754(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpl__0x4__0xaf3458(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xaf3458_type* @G_0xaf3458 to i64), i64 4)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jle_.L_4a9882(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x14__MINUS0x1be8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 7144
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 20)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x40__MINUS0x1be8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 7144
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 64)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4a9863(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x14__MINUS0x1bec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 7148
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 20)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x40__MINUS0x1bec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 7148
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 64)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4a9830(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl_MINUS0x1bd4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 7124
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_4a97d8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_cmpl_MINUS0x1bd8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 7128
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movq__0x588897___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x588897_type* @G__0x588897 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x1c10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7184
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4a9817(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x579d93___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x579d93_type* @G__0x579d93 to i64))
  ret %struct.Memory* %11
}













define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = sext i8 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %17)
  ret %struct.Memory* %20
}






define %struct.Memory* @routine_movl__eax__MINUS0x1c14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7188
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4a981c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4a9783(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x586073___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x586073_type* @G__0x586073 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x1c18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7192
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_jmpq_.L_4a976c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_movl__eax__MINUS0x1c1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7196
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x0__MINUS0x1bf0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 7152
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x1bf0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cmpl_0x8__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = add i64 %14, 8
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_4a9932(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x1bf0__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 12)
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


define %struct.Memory* @routine_movslq_0x8__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  store i8 %6, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb_0x4e69c0___rcx_1____sil(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RCX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RCX
  %14 = add i64 %13, 5138880
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %SIL, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__sil__MINUS0x1bf1__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 7153
  %15 = load i8, i8* %SIL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0x1bf1__rbp____sil(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 7153
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %SIL, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x1bd4__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7124
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_addl___rcx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %13)
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

define %struct.Memory* @routine_subl_MINUS0x38__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 56
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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






define %struct.Memory* @routine_movl_MINUS0x1bd8__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_addl_0x4__rcx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RCX
  %14 = add i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_subl_MINUS0x3c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 60
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movb__sil____rax__rcx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RCX = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = add i64 %17, %16
  %19 = load i8, i8* %SIL
  %20 = zext i8 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}






define %struct.Memory* @routine_movl__eax__MINUS0x1bf0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7152
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4a988c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpl__0x3__0xaf3458(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xaf3458_type* @G_0xaf3458 to i64), i64 3)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jle_.L_4a9a60(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_je_.L_4a9a41(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_je_.L_4a9a0e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_4a99b6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_movl__eax__MINUS0x1c20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7200
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4a99f5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






















define %struct.Memory* @routine_movl__eax__MINUS0x1c24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7204
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4a99fa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4a9961(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_movl__eax__MINUS0x1c28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7208
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_jmpq_.L_4a994a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_movl__eax__MINUS0x1c2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7212
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x1be4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7140
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl__ecx__MINUS0x1bdc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7132
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0xf__MINUS0x1be0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 7136
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 15)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_cmpl__0x6e3__MINUS0x1bf0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 7152
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1763)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movb__cl__MINUS0x1c2d__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 7213
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_4a9aee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x1be0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 7136
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movb__al__MINUS0x1c2e__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 7214
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
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

define %struct.Memory* @routine_jg_.L_4a9ae2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__MINUS0x1bdc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 7132
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_jne_.L_4a9ae2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x1be4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 7140
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6SETNLEI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i8* nocapture) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  %13 = xor i1 %9, %12
  %14 = xor i1 %13, true
  %15 = and i1 %6, %14
  %16 = zext i1 %15 to i8
  store i8 %16, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_setg__al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6SETNLEI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %AL)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movb_MINUS0x1c2e__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 7214
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movb__al__MINUS0x1c2d__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 7213
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0x1c2d__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 7213
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_jne_.L_4a9b01(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_4a9d81(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x54___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 84)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0xb8c050___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0xb8c050_type* @G__0xb8c050 to i64))
  ret %struct.Memory* %11
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %4 to i6
  switch i6 %6, label %12 [
    i6 0, label %41
    i6 1, label %7
  ]

; <label>:7:                                      ; preds = %5
  %8 = shl i64 %3, 1
  %9 = icmp slt i64 %3, 0
  %10 = icmp slt i64 %8, 0
  %11 = xor i1 %9, %10
  br label %19

; <label>:12:                                     ; preds = %5
  %13 = and i64 %4, 63
  %14 = add  i64 %13, -1
  %15 = shl i64 %3, %14
  %16 = icmp slt i64 %15, 0
  %17 = icmp ne i8 0, 0
  %18 = shl i64 %15, 1
  br label %19

; <label>:19:                                     ; preds = %12, %7
  %20 = phi i1 [ %9, %7 ], [ %16, %12 ]
  %21 = phi i1 [ %11, %7 ], [ %17, %12 ]
  %22 = phi i64 [ %8, %7 ], [ %18, %12 ]
  store i64 %22, i64* %2, align 8
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %24 = zext i1 %20 to i8
  store i8 %24, i8* %23, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  %26 = trunc i64 %22 to i32
  %27 = and i32 %26, 254
  %28 = tail call i32 @llvm.ctpop.i32(i32 %27) #22
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = xor i8 %30, 1
  store i8 %31, i8* %25, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %34 = icmp eq i64 %22, 0
  %35 = zext i1 %34 to i8
  store i8 %35, i8* %33, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %37 = lshr i64 %22, 63
  %38 = trunc i64 %37 to i8
  store i8 %38, i8* %36, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %40 = zext i1 %21 to i8
  store i8 %40, i8* %39, align 1
  br label %41

; <label>:41:                                     ; preds = %19, %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_shlq__0x5___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 5)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movl__eax__MINUS0x1c34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7220
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__esi___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %ESI
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


define %struct.Memory* @routine_movl_MINUS0x1c34__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7220
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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

define %struct.Memory* @routine_idivl__esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 2
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__edx__MINUS0x1bec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7148
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x2a__MINUS0x1bec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 7148
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 42)
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

define %struct.Memory* @routine_jl_.L_4a9b58(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_subl__0x54___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 84)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_cmpl__0xffffffd6__MINUS0x1bec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 7148
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -42)
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

define %struct.Memory* @routine_jge_.L_4a9b74(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_addl__0x54___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 84)
  ret %struct.Memory* %12
}


















define %struct.Memory* @routine_subl_MINUS0x1bec__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 7148
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0x1c38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7224
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_MINUS0x1c38__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_cmpl_0x20__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = add i64 %14, 32
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_4a9bd7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl_MINUS0x1be0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_andl__0xfffffffd___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 -3)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__MINUS0x1be0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7136
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_cmpl_0x18__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = add i64 %14, 24
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_4a9bf9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_andl__0xfffffffe___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 -2)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_cmpl_0x24__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = add i64 %14, 36
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_4a9c1b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_andl__0xfffffffb___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 -5)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_cmpl_0x1c__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = add i64 %14, 28
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_4a9c3d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_andl__0xfffffff7___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 -9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq__0x588b2c___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x588b2c_type* @G__0x588b2c to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_addl_MINUS0x1be8__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 7144
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_imulq__0x54___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 84)
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




define %struct.Memory* @routine_addl_MINUS0x1bec__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 7148
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movb___rax__rdx_1____sil(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 7
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RDX = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RDX
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %SIL, i64 %18)
  ret %struct.Memory* %21
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




define %struct.Memory* @routine_movb__sil____rax__rdx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 7
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RDX = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RDX
  %18 = add i64 %17, %16
  %19 = load i8, i8* %SIL
  %20 = zext i8 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}






define %struct.Memory* @routine_movsbl___rax__rdx_1____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %17)
  ret %struct.Memory* %20
}


define %struct.Memory* @routine_callq_.strchr_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = sub i64 %2, %3
  %6 = icmp ult i64 %2, %3
  %7 = zext i1 %6 to i8
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %7, i8* %8, align 1
  %9 = trunc i64 %5 to i32
  %10 = and i32 %9, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10) #22
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i64 %3, %2
  %17 = xor i64 %16, %5
  %18 = lshr i64 %17, 4
  %19 = trunc i64 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i64 %5, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i64 %5, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %2, 63
  %29 = lshr i64 %3, 63
  %30 = xor i64 %29, %28
  %31 = xor i64 %25, %28
  %32 = add   i64 %31, %30
  %33 = icmp eq i64 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpq__0x0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_je_.L_4a9cb3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x1be4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__eax__MINUS0x1be4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7140
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__0x588b35___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x588b35_type* @G__0x588b35 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movslq_MINUS0x1bf0__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsbl___rax__rcx_1____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %17)
  ret %struct.Memory* %20
}






define %struct.Memory* @routine_je_.L_4a9d68(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jle_.L_4a9cfd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x1bdc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7132
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x1bdc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 7132
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_jge_.L_4a9d1f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jle_.L_4a9d41(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jge_.L_4a9d63(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_4a9d68(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4a9d6d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4a9a8e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 0)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_addq__0x1c28___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 7208)
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


define %struct.Memory* @routine_popq__r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %R15)
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

