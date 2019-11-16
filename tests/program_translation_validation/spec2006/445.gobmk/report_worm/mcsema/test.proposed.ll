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
declare %struct.Memory* @sub_452720.result_to_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G__0x58332f_type = type <{ [8 x i8] }>
@G__0x58332f= global %G__0x58332f_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x583348_type = type <{ [8 x i8] }>
@G__0x583348= global %G__0x583348_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x58335a_type = type <{ [8 x i8] }>
@G__0x58335a= global %G__0x58335a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x583360_type = type <{ [8 x i8] }>
@G__0x583360= global %G__0x583360_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x583366_type = type <{ [8 x i8] }>
@G__0x583366= global %G__0x583366_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x58339c_type = type <{ [8 x i8] }>
@G__0x58339c= global %G__0x58339c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x5833d6_type = type <{ [8 x i8] }>
@G__0x5833d6= global %G__0x5833d6_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x5833e8_type = type <{ [8 x i8] }>
@G__0x5833e8= global %G__0x5833e8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x5833f9_type = type <{ [8 x i8] }>
@G__0x5833f9= global %G__0x5833f9_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x583402_type = type <{ [8 x i8] }>
@G__0x583402= global %G__0x583402_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x583405_type = type <{ [8 x i8] }>
@G__0x583405= global %G__0x583405_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x583418_type = type <{ [8 x i8] }>
@G__0x583418= global %G__0x583418_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x58342a_type = type <{ [8 x i8] }>
@G__0x58342a= global %G__0x58342a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x583443_type = type <{ [8 x i8] }>
@G__0x583443= global %G__0x583443_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x58345b_type = type <{ [8 x i8] }>
@G__0x58345b= global %G__0x58345b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x583475_type = type <{ [8 x i8] }>
@G__0x583475= global %G__0x583475_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x58348e_type = type <{ [8 x i8] }>
@G__0x58348e= global %G__0x58348e_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x58349c_type = type <{ [8 x i8] }>
@G__0x58349c= global %G__0x58349c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x5834b9_type = type <{ [8 x i8] }>
@G__0x5834b9= global %G__0x5834b9_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x5834c5_type = type <{ [8 x i8] }>
@G__0x5834c5= global %G__0x5834c5_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x5834d8_type = type <{ [8 x i8] }>
@G__0x5834d8= global %G__0x5834d8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x5834ea_type = type <{ [8 x i8] }>
@G__0x5834ea= global %G__0x5834ea_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x5834fd_type = type <{ [8 x i8] }>
@G__0x5834fd= global %G__0x5834fd_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x58350f_type = type <{ [8 x i8] }>
@G__0x58350f= global %G__0x58350f_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x58352b_type = type <{ [8 x i8] }>
@G__0x58352b= global %G__0x58352b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x583546_type = type <{ [8 x i8] }>
@G__0x583546= global %G__0x583546_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x583569_type = type <{ [8 x i8] }>
@G__0x583569= global %G__0x583569_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x58358c_type = type <{ [8 x i8] }>
@G__0x58358c= global %G__0x58358c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x588988_type = type <{ [8 x i8] }>
@G__0x588988= global %G__0x588988_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xb0eff0_type = type <{ [8 x i8] }>
@G__0xb0eff0= global %G__0xb0eff0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @report_worm(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .report_worm:	 RIP: 48acd0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 48acd0	 Bytes: 1
  %loadMem_48acd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48acd0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48acd0)
  store %struct.Memory* %call_48acd0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 48acd1	 Bytes: 3
  %loadMem_48acd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48acd1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48acd1)
  store %struct.Memory* %call_48acd1, %struct.Memory** %MEMORY

  ; Code: subq $0xc0, %rsp	 RIP: 48acd4	 Bytes: 7
  %loadMem_48acd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48acd4 = call %struct.Memory* @routine_subq__0xc0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48acd4)
  store %struct.Memory* %call_48acd4, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 48acdb	 Bytes: 3
  %loadMem_48acdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48acdb = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48acdb)
  store %struct.Memory* %call_48acdb, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x8(%rbp)	 RIP: 48acde	 Bytes: 3
  %loadMem_48acde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48acde = call %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48acde)
  store %struct.Memory* %call_48acde, %struct.Memory** %MEMORY

  ; Code: imull $0x14, -0x4(%rbp), %esi	 RIP: 48ace1	 Bytes: 4
  %loadMem_48ace1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ace1 = call %struct.Memory* @routine_imull__0x14__MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ace1)
  store %struct.Memory* %call_48ace1, %struct.Memory** %MEMORY

  ; Code: addl $0x15, %esi	 RIP: 48ace5	 Bytes: 3
  %loadMem_48ace5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ace5 = call %struct.Memory* @routine_addl__0x15___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ace5)
  store %struct.Memory* %call_48ace5, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %esi	 RIP: 48ace8	 Bytes: 3
  %loadMem_48ace8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ace8 = call %struct.Memory* @routine_addl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ace8)
  store %struct.Memory* %call_48ace8, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0xc(%rbp)	 RIP: 48aceb	 Bytes: 3
  %loadMem_48aceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48aceb = call %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48aceb)
  store %struct.Memory* %call_48aceb, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rax	 RIP: 48acee	 Bytes: 4
  %loadMem_48acee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48acee = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48acee)
  store %struct.Memory* %call_48acee, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %esi	 RIP: 48acf2	 Bytes: 8
  %loadMem_48acf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48acf2 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48acf2)
  store %struct.Memory* %call_48acf2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %esi	 RIP: 48acfa	 Bytes: 3
  %loadMem_48acfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48acfa = call %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48acfa)
  store %struct.Memory* %call_48acfa, %struct.Memory** %MEMORY

  ; Code: jne .L_48ad1f	 RIP: 48acfd	 Bytes: 6
  %loadMem_48acfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48acfd = call %struct.Memory* @routine_jne_.L_48ad1f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48acfd, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_48acfd, %struct.Memory** %MEMORY

  %loadBr_48acfd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48acfd = icmp eq i8 %loadBr_48acfd, 1
  br i1 %cmpBr_48acfd, label %block_.L_48ad1f, label %block_48ad03

block_48ad03:
  ; Code: movq $0x58332f, %rdi	 RIP: 48ad03	 Bytes: 10
  %loadMem_48ad03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ad03 = call %struct.Memory* @routine_movq__0x58332f___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ad03)
  store %struct.Memory* %call_48ad03, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %esi	 RIP: 48ad0d	 Bytes: 3
  %loadMem_48ad0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ad0d = call %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ad0d)
  store %struct.Memory* %call_48ad0d, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48ad10	 Bytes: 2
  %loadMem_48ad10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ad10 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ad10)
  store %struct.Memory* %call_48ad10, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48ad12	 Bytes: 5
  %loadMem1_48ad12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48ad12 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48ad12, i64 -233314, i64 5, i64 5)
  store %struct.Memory* %call1_48ad12, %struct.Memory** %MEMORY

  %loadMem2_48ad12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48ad12 = load i64, i64* %3
  %call2_48ad12 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48ad12, %struct.Memory* %loadMem2_48ad12)
  store %struct.Memory* %call2_48ad12, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 48ad17	 Bytes: 3
  %loadMem_48ad17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ad17 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ad17)
  store %struct.Memory* %call_48ad17, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48b580	 RIP: 48ad1a	 Bytes: 5
  %loadMem_48ad1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ad1a = call %struct.Memory* @routine_jmpq_.L_48b580(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ad1a, i64 2150, i64 5)
  store %struct.Memory* %call_48ad1a, %struct.Memory** %MEMORY

  br label %block_.L_48b580

  ; Code: .L_48ad1f:	 RIP: 48ad1f	 Bytes: 0
block_.L_48ad1f:

  ; Code: movq $0x583348, %rdi	 RIP: 48ad1f	 Bytes: 10
  %loadMem_48ad1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ad1f = call %struct.Memory* @routine_movq__0x583348___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ad1f)
  store %struct.Memory* %call_48ad1f, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %esi	 RIP: 48ad29	 Bytes: 3
  %loadMem_48ad29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ad29 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ad29)
  store %struct.Memory* %call_48ad29, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48ad2c	 Bytes: 2
  %loadMem_48ad2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ad2c = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ad2c)
  store %struct.Memory* %call_48ad2c, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48ad2e	 Bytes: 5
  %loadMem1_48ad2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48ad2e = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48ad2e, i64 -233342, i64 5, i64 5)
  store %struct.Memory* %call1_48ad2e, %struct.Memory** %MEMORY

  %loadMem2_48ad2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48ad2e = load i64, i64* %3
  %call2_48ad2e = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48ad2e, %struct.Memory* %loadMem2_48ad2e)
  store %struct.Memory* %call2_48ad2e, %struct.Memory** %MEMORY

  ; Code: movq $0x583366, %rdi	 RIP: 48ad33	 Bytes: 10
  %loadMem_48ad33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ad33 = call %struct.Memory* @routine_movq__0x583366___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ad33)
  store %struct.Memory* %call_48ad33, %struct.Memory** %MEMORY

  ; Code: movq $0xb0eff0, %rcx	 RIP: 48ad3d	 Bytes: 10
  %loadMem_48ad3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ad3d = call %struct.Memory* @routine_movq__0xb0eff0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ad3d)
  store %struct.Memory* %call_48ad3d, %struct.Memory** %MEMORY

  ; Code: movq $0x583360, %rdx	 RIP: 48ad47	 Bytes: 10
  %loadMem_48ad47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ad47 = call %struct.Memory* @routine_movq__0x583360___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ad47)
  store %struct.Memory* %call_48ad47, %struct.Memory** %MEMORY

  ; Code: movq $0x58335a, %r8	 RIP: 48ad51	 Bytes: 10
  %loadMem_48ad51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ad51 = call %struct.Memory* @routine_movq__0x58335a___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ad51)
  store %struct.Memory* %call_48ad51, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r9	 RIP: 48ad5b	 Bytes: 4
  %loadMem_48ad5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ad5b = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ad5b)
  store %struct.Memory* %call_48ad5b, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %r9, %r9	 RIP: 48ad5f	 Bytes: 7
  %loadMem_48ad5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ad5f = call %struct.Memory* @routine_imulq__0x17c___r9___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ad5f)
  store %struct.Memory* %call_48ad5f, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %r10	 RIP: 48ad66	 Bytes: 3
  %loadMem_48ad66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ad66 = call %struct.Memory* @routine_movq__rcx___r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ad66)
  store %struct.Memory* %call_48ad66, %struct.Memory** %MEMORY

  ; Code: addq %r9, %r10	 RIP: 48ad69	 Bytes: 3
  %loadMem_48ad69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ad69 = call %struct.Memory* @routine_addq__r9___r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ad69)
  store %struct.Memory* %call_48ad69, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, (%r10)	 RIP: 48ad6c	 Bytes: 4
  %loadMem_48ad6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ad6c = call %struct.Memory* @routine_cmpl__0x1____r10_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ad6c)
  store %struct.Memory* %call_48ad6c, %struct.Memory** %MEMORY

  ; Code: cmoveq %r8, %rdx	 RIP: 48ad70	 Bytes: 4
  %loadMem_48ad70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ad70 = call %struct.Memory* @routine_cmoveq__r8___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ad70)
  store %struct.Memory* %call_48ad70, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r8	 RIP: 48ad74	 Bytes: 4
  %loadMem_48ad74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ad74 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ad74)
  store %struct.Memory* %call_48ad74, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %r8, %r8	 RIP: 48ad78	 Bytes: 7
  %loadMem_48ad78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ad78 = call %struct.Memory* @routine_imulq__0x17c___r8___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ad78)
  store %struct.Memory* %call_48ad78, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %r9	 RIP: 48ad7f	 Bytes: 3
  %loadMem_48ad7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ad7f = call %struct.Memory* @routine_movq__rcx___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ad7f)
  store %struct.Memory* %call_48ad7f, %struct.Memory** %MEMORY

  ; Code: addq %r8, %r9	 RIP: 48ad82	 Bytes: 3
  %loadMem_48ad82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ad82 = call %struct.Memory* @routine_addq__r8___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ad82)
  store %struct.Memory* %call_48ad82, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%r9), %esi	 RIP: 48ad85	 Bytes: 4
  %loadMem_48ad85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ad85 = call %struct.Memory* @routine_movl_0xc__r9____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ad85)
  store %struct.Memory* %call_48ad85, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r8	 RIP: 48ad89	 Bytes: 4
  %loadMem_48ad89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ad89 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ad89)
  store %struct.Memory* %call_48ad89, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %r8, %r8	 RIP: 48ad8d	 Bytes: 7
  %loadMem_48ad8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ad8d = call %struct.Memory* @routine_imulq__0x17c___r8___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ad8d)
  store %struct.Memory* %call_48ad8d, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %r9	 RIP: 48ad94	 Bytes: 3
  %loadMem_48ad94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ad94 = call %struct.Memory* @routine_movq__rcx___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ad94)
  store %struct.Memory* %call_48ad94, %struct.Memory** %MEMORY

  ; Code: addq %r8, %r9	 RIP: 48ad97	 Bytes: 3
  %loadMem_48ad97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ad97 = call %struct.Memory* @routine_addq__r8___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ad97)
  store %struct.Memory* %call_48ad97, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%r9), %r11d	 RIP: 48ad9a	 Bytes: 4
  %loadMem_48ad9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ad9a = call %struct.Memory* @routine_movl_0x4__r9____r11d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ad9a)
  store %struct.Memory* %call_48ad9a, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r8	 RIP: 48ad9e	 Bytes: 4
  %loadMem_48ad9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ad9e = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ad9e)
  store %struct.Memory* %call_48ad9e, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %r8, %r8	 RIP: 48ada2	 Bytes: 7
  %loadMem_48ada2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ada2 = call %struct.Memory* @routine_imulq__0x17c___r8___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ada2)
  store %struct.Memory* %call_48ada2, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rcx	 RIP: 48ada9	 Bytes: 3
  %loadMem_48ada9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ada9 = call %struct.Memory* @routine_addq__r8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ada9)
  store %struct.Memory* %call_48ada9, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x8(%rcx), %xmm0	 RIP: 48adac	 Bytes: 5
  %loadMem_48adac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48adac = call %struct.Memory* @routine_cvtss2sd_0x8__rcx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48adac)
  store %struct.Memory* %call_48adac, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x18(%rbp)	 RIP: 48adb1	 Bytes: 3
  %loadMem_48adb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48adb1 = call %struct.Memory* @routine_movl__esi__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48adb1)
  store %struct.Memory* %call_48adb1, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 48adb4	 Bytes: 3
  %loadMem_48adb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48adb4 = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48adb4)
  store %struct.Memory* %call_48adb4, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edx	 RIP: 48adb7	 Bytes: 3
  %loadMem_48adb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48adb7 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48adb7)
  store %struct.Memory* %call_48adb7, %struct.Memory** %MEMORY

  ; Code: movl %r11d, %ecx	 RIP: 48adba	 Bytes: 3
  %loadMem_48adba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48adba = call %struct.Memory* @routine_movl__r11d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48adba)
  store %struct.Memory* %call_48adba, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 48adbd	 Bytes: 3
  %loadMem_48adbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48adbd = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48adbd)
  store %struct.Memory* %call_48adbd, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 48adc0	 Bytes: 2
  %loadMem_48adc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48adc0 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48adc0)
  store %struct.Memory* %call_48adc0, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48adc2	 Bytes: 5
  %loadMem1_48adc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48adc2 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48adc2, i64 -233490, i64 5, i64 5)
  store %struct.Memory* %call1_48adc2, %struct.Memory** %MEMORY

  %loadMem2_48adc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48adc2 = load i64, i64* %3
  %call2_48adc2 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48adc2, %struct.Memory* %loadMem2_48adc2)
  store %struct.Memory* %call2_48adc2, %struct.Memory** %MEMORY

  ; Code: movq $0x58339c, %rdi	 RIP: 48adc7	 Bytes: 10
  %loadMem_48adc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48adc7 = call %struct.Memory* @routine_movq__0x58339c___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48adc7)
  store %struct.Memory* %call_48adc7, %struct.Memory** %MEMORY

  ; Code: movq $0xb0eff0, %rsi	 RIP: 48add1	 Bytes: 10
  %loadMem_48add1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48add1 = call %struct.Memory* @routine_movq__0xb0eff0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48add1)
  store %struct.Memory* %call_48add1, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r8	 RIP: 48addb	 Bytes: 4
  %loadMem_48addb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48addb = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48addb)
  store %struct.Memory* %call_48addb, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %r8, %r8	 RIP: 48addf	 Bytes: 7
  %loadMem_48addf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48addf = call %struct.Memory* @routine_imulq__0x17c___r8___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48addf)
  store %struct.Memory* %call_48addf, %struct.Memory** %MEMORY

  ; Code: movq %rsi, %r9	 RIP: 48ade6	 Bytes: 3
  %loadMem_48ade6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ade6 = call %struct.Memory* @routine_movq__rsi___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ade6)
  store %struct.Memory* %call_48ade6, %struct.Memory** %MEMORY

  ; Code: addq %r8, %r9	 RIP: 48ade9	 Bytes: 3
  %loadMem_48ade9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ade9 = call %struct.Memory* @routine_addq__r8___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ade9)
  store %struct.Memory* %call_48ade9, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%r9), %ecx	 RIP: 48adec	 Bytes: 4
  %loadMem_48adec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48adec = call %struct.Memory* @routine_movl_0x10__r9____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48adec)
  store %struct.Memory* %call_48adec, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r8	 RIP: 48adf0	 Bytes: 4
  %loadMem_48adf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48adf0 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48adf0)
  store %struct.Memory* %call_48adf0, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %r8, %r8	 RIP: 48adf4	 Bytes: 7
  %loadMem_48adf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48adf4 = call %struct.Memory* @routine_imulq__0x17c___r8___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48adf4)
  store %struct.Memory* %call_48adf4, %struct.Memory** %MEMORY

  ; Code: movq %rsi, %r9	 RIP: 48adfb	 Bytes: 3
  %loadMem_48adfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48adfb = call %struct.Memory* @routine_movq__rsi___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48adfb)
  store %struct.Memory* %call_48adfb, %struct.Memory** %MEMORY

  ; Code: addq %r8, %r9	 RIP: 48adfe	 Bytes: 3
  %loadMem_48adfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48adfe = call %struct.Memory* @routine_addq__r8___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48adfe)
  store %struct.Memory* %call_48adfe, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%r9), %edx	 RIP: 48ae01	 Bytes: 4
  %loadMem_48ae01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ae01 = call %struct.Memory* @routine_movl_0x14__r9____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ae01)
  store %struct.Memory* %call_48ae01, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r8	 RIP: 48ae05	 Bytes: 4
  %loadMem_48ae05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ae05 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ae05)
  store %struct.Memory* %call_48ae05, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %r8, %r8	 RIP: 48ae09	 Bytes: 7
  %loadMem_48ae09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ae09 = call %struct.Memory* @routine_imulq__0x17c___r8___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ae09)
  store %struct.Memory* %call_48ae09, %struct.Memory** %MEMORY

  ; Code: movq %rsi, %r9	 RIP: 48ae10	 Bytes: 3
  %loadMem_48ae10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ae10 = call %struct.Memory* @routine_movq__rsi___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ae10)
  store %struct.Memory* %call_48ae10, %struct.Memory** %MEMORY

  ; Code: addq %r8, %r9	 RIP: 48ae13	 Bytes: 3
  %loadMem_48ae13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ae13 = call %struct.Memory* @routine_addq__r8___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ae13)
  store %struct.Memory* %call_48ae13, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%r9), %r11d	 RIP: 48ae16	 Bytes: 4
  %loadMem_48ae16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ae16 = call %struct.Memory* @routine_movl_0x18__r9____r11d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ae16)
  store %struct.Memory* %call_48ae16, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r8	 RIP: 48ae1a	 Bytes: 4
  %loadMem_48ae1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ae1a = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ae1a)
  store %struct.Memory* %call_48ae1a, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %r8, %r8	 RIP: 48ae1e	 Bytes: 7
  %loadMem_48ae1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ae1e = call %struct.Memory* @routine_imulq__0x17c___r8___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ae1e)
  store %struct.Memory* %call_48ae1e, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rsi	 RIP: 48ae25	 Bytes: 3
  %loadMem_48ae25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ae25 = call %struct.Memory* @routine_addq__r8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ae25)
  store %struct.Memory* %call_48ae25, %struct.Memory** %MEMORY

  ; Code: movl 0x1c(%rsi), %r8d	 RIP: 48ae28	 Bytes: 4
  %loadMem_48ae28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ae28 = call %struct.Memory* @routine_movl_0x1c__rsi____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ae28)
  store %struct.Memory* %call_48ae28, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 48ae2c	 Bytes: 2
  %loadMem_48ae2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ae2c = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ae2c)
  store %struct.Memory* %call_48ae2c, %struct.Memory** %MEMORY

  ; Code: movl %r11d, %ecx	 RIP: 48ae2e	 Bytes: 3
  %loadMem_48ae2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ae2e = call %struct.Memory* @routine_movl__r11d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ae2e)
  store %struct.Memory* %call_48ae2e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 48ae31	 Bytes: 3
  %loadMem_48ae31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ae31 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ae31)
  store %struct.Memory* %call_48ae31, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48ae34	 Bytes: 2
  %loadMem_48ae34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ae34 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ae34)
  store %struct.Memory* %call_48ae34, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48ae36	 Bytes: 5
  %loadMem1_48ae36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48ae36 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48ae36, i64 -233606, i64 5, i64 5)
  store %struct.Memory* %call1_48ae36, %struct.Memory** %MEMORY

  %loadMem2_48ae36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48ae36 = load i64, i64* %3
  %call2_48ae36 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48ae36, %struct.Memory* %loadMem2_48ae36)
  store %struct.Memory* %call2_48ae36, %struct.Memory** %MEMORY

  ; Code: movq $0xb0eff0, %rdi	 RIP: 48ae3b	 Bytes: 10
  %loadMem_48ae3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ae3b = call %struct.Memory* @routine_movq__0xb0eff0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ae3b)
  store %struct.Memory* %call_48ae3b, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r9	 RIP: 48ae45	 Bytes: 4
  %loadMem_48ae45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ae45 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ae45)
  store %struct.Memory* %call_48ae45, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %r9, %r9	 RIP: 48ae49	 Bytes: 7
  %loadMem_48ae49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ae49 = call %struct.Memory* @routine_imulq__0x17c___r9___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ae49)
  store %struct.Memory* %call_48ae49, %struct.Memory** %MEMORY

  ; Code: addq %r9, %rdi	 RIP: 48ae50	 Bytes: 3
  %loadMem_48ae50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ae50 = call %struct.Memory* @routine_addq__r9___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ae50)
  store %struct.Memory* %call_48ae50, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x3c(%rdi)	 RIP: 48ae53	 Bytes: 4
  %loadMem_48ae53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ae53 = call %struct.Memory* @routine_cmpl__0x0__0x3c__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ae53)
  store %struct.Memory* %call_48ae53, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 48ae57	 Bytes: 3
  %loadMem_48ae57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ae57 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ae57)
  store %struct.Memory* %call_48ae57, %struct.Memory** %MEMORY

  ; Code: jne .L_48ae79	 RIP: 48ae5a	 Bytes: 6
  %loadMem_48ae5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ae5a = call %struct.Memory* @routine_jne_.L_48ae79(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ae5a, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_48ae5a, %struct.Memory** %MEMORY

  %loadBr_48ae5a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48ae5a = icmp eq i8 %loadBr_48ae5a, 1
  br i1 %cmpBr_48ae5a, label %block_.L_48ae79, label %block_48ae60

block_48ae60:
  ; Code: movq $0x5833d6, %rdi	 RIP: 48ae60	 Bytes: 10
  %loadMem_48ae60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ae60 = call %struct.Memory* @routine_movq__0x5833d6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ae60)
  store %struct.Memory* %call_48ae60, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48ae6a	 Bytes: 2
  %loadMem_48ae6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ae6a = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ae6a)
  store %struct.Memory* %call_48ae6a, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48ae6c	 Bytes: 5
  %loadMem1_48ae6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48ae6c = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48ae6c, i64 -233660, i64 5, i64 5)
  store %struct.Memory* %call1_48ae6c, %struct.Memory** %MEMORY

  %loadMem2_48ae6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48ae6c = load i64, i64* %3
  %call2_48ae6c = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48ae6c, %struct.Memory* %loadMem2_48ae6c)
  store %struct.Memory* %call2_48ae6c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 48ae71	 Bytes: 3
  %loadMem_48ae71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ae71 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ae71)
  store %struct.Memory* %call_48ae71, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48af56	 RIP: 48ae74	 Bytes: 5
  %loadMem_48ae74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ae74 = call %struct.Memory* @routine_jmpq_.L_48af56(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ae74, i64 226, i64 5)
  store %struct.Memory* %call_48ae74, %struct.Memory** %MEMORY

  br label %block_.L_48af56

  ; Code: .L_48ae79:	 RIP: 48ae79	 Bytes: 0
block_.L_48ae79:

  ; Code: movq $0x5833e8, %rdi	 RIP: 48ae79	 Bytes: 10
  %loadMem_48ae79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ae79 = call %struct.Memory* @routine_movq__0x5833e8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ae79)
  store %struct.Memory* %call_48ae79, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48ae83	 Bytes: 2
  %loadMem_48ae83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ae83 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ae83)
  store %struct.Memory* %call_48ae83, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48ae85	 Bytes: 5
  %loadMem1_48ae85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48ae85 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48ae85, i64 -233685, i64 5, i64 5)
  store %struct.Memory* %call1_48ae85, %struct.Memory** %MEMORY

  %loadMem2_48ae85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48ae85 = load i64, i64* %3
  %call2_48ae85 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48ae85, %struct.Memory* %loadMem2_48ae85)
  store %struct.Memory* %call2_48ae85, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 48ae8a	 Bytes: 7
  %loadMem_48ae8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ae8a = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ae8a)
  store %struct.Memory* %call_48ae8a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 48ae91	 Bytes: 3
  %loadMem_48ae91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ae91 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ae91)
  store %struct.Memory* %call_48ae91, %struct.Memory** %MEMORY

  ; Code: .L_48ae94:	 RIP: 48ae94	 Bytes: 0
  br label %block_.L_48ae94
block_.L_48ae94:

  ; Code: movq $0xb0eff0, %rax	 RIP: 48ae94	 Bytes: 10
  %loadMem_48ae94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ae94 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ae94)
  store %struct.Memory* %call_48ae94, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 48ae9e	 Bytes: 4
  %loadMem_48ae9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ae9e = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ae9e)
  store %struct.Memory* %call_48ae9e, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 48aea2	 Bytes: 7
  %loadMem_48aea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48aea2 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48aea2)
  store %struct.Memory* %call_48aea2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48aea9	 Bytes: 3
  %loadMem_48aea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48aea9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48aea9)
  store %struct.Memory* %call_48aea9, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 48aeac	 Bytes: 4
  %loadMem_48aeac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48aeac = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48aeac)
  store %struct.Memory* %call_48aeac, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x3c(%rax,%rcx,4)	 RIP: 48aeb0	 Bytes: 5
  %loadMem_48aeb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48aeb0 = call %struct.Memory* @routine_cmpl__0x0__0x3c__rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48aeb0)
  store %struct.Memory* %call_48aeb0, %struct.Memory** %MEMORY

  ; Code: je .L_48af42	 RIP: 48aeb5	 Bytes: 6
  %loadMem_48aeb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48aeb5 = call %struct.Memory* @routine_je_.L_48af42(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48aeb5, i8* %BRANCH_TAKEN, i64 141, i64 6, i64 6)
  store %struct.Memory* %call_48aeb5, %struct.Memory** %MEMORY

  %loadBr_48aeb5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48aeb5 = icmp eq i8 %loadBr_48aeb5, 1
  br i1 %cmpBr_48aeb5, label %block_.L_48af42, label %block_48aebb

block_48aebb:
  ; Code: cmpl $0x0, -0x10(%rbp)	 RIP: 48aebb	 Bytes: 4
  %loadMem_48aebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48aebb = call %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48aebb)
  store %struct.Memory* %call_48aebb, %struct.Memory** %MEMORY

  ; Code: jle .L_48aed9	 RIP: 48aebf	 Bytes: 6
  %loadMem_48aebf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48aebf = call %struct.Memory* @routine_jle_.L_48aed9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48aebf, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_48aebf, %struct.Memory** %MEMORY

  %loadBr_48aebf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48aebf = icmp eq i8 %loadBr_48aebf, 1
  br i1 %cmpBr_48aebf, label %block_.L_48aed9, label %block_48aec5

block_48aec5:
  ; Code: movq $0x588988, %rdi	 RIP: 48aec5	 Bytes: 10
  %loadMem_48aec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48aec5 = call %struct.Memory* @routine_movq__0x588988___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48aec5)
  store %struct.Memory* %call_48aec5, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48aecf	 Bytes: 2
  %loadMem_48aecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48aecf = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48aecf)
  store %struct.Memory* %call_48aecf, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48aed1	 Bytes: 5
  %loadMem1_48aed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48aed1 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48aed1, i64 -233761, i64 5, i64 5)
  store %struct.Memory* %call1_48aed1, %struct.Memory** %MEMORY

  %loadMem2_48aed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48aed1 = load i64, i64* %3
  %call2_48aed1 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48aed1, %struct.Memory* %loadMem2_48aed1)
  store %struct.Memory* %call2_48aed1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 48aed6	 Bytes: 3
  %loadMem_48aed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48aed6 = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48aed6)
  store %struct.Memory* %call_48aed6, %struct.Memory** %MEMORY

  ; Code: .L_48aed9:	 RIP: 48aed9	 Bytes: 0
  br label %block_.L_48aed9
block_.L_48aed9:

  ; Code: movq $0xb0eff0, %rax	 RIP: 48aed9	 Bytes: 10
  %loadMem_48aed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48aed9 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48aed9)
  store %struct.Memory* %call_48aed9, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 48aee3	 Bytes: 4
  %loadMem_48aee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48aee3 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48aee3)
  store %struct.Memory* %call_48aee3, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 48aee7	 Bytes: 7
  %loadMem_48aee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48aee7 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48aee7)
  store %struct.Memory* %call_48aee7, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 48aeee	 Bytes: 3
  %loadMem_48aeee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48aeee = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48aeee)
  store %struct.Memory* %call_48aeee, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 48aef1	 Bytes: 3
  %loadMem_48aef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48aef1 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48aef1)
  store %struct.Memory* %call_48aef1, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 48aef4	 Bytes: 4
  %loadMem_48aef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48aef4 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48aef4)
  store %struct.Memory* %call_48aef4, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rdx,%rcx,4), %esi	 RIP: 48aef8	 Bytes: 4
  %loadMem_48aef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48aef8 = call %struct.Memory* @routine_movl_0x3c__rdx__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48aef8)
  store %struct.Memory* %call_48aef8, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 48aefc	 Bytes: 4
  %loadMem_48aefc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48aefc = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48aefc)
  store %struct.Memory* %call_48aefc, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 48af00	 Bytes: 7
  %loadMem_48af00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48af00 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48af00)
  store %struct.Memory* %call_48af00, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48af07	 Bytes: 3
  %loadMem_48af07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48af07 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48af07)
  store %struct.Memory* %call_48af07, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 48af0a	 Bytes: 4
  %loadMem_48af0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48af0a = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48af0a)
  store %struct.Memory* %call_48af0a, %struct.Memory** %MEMORY

  ; Code: movl 0x64(%rax,%rcx,4), %edi	 RIP: 48af0e	 Bytes: 4
  %loadMem_48af0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48af0e = call %struct.Memory* @routine_movl_0x64__rax__rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48af0e)
  store %struct.Memory* %call_48af0e, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x34(%rbp)	 RIP: 48af12	 Bytes: 3
  %loadMem_48af12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48af12 = call %struct.Memory* @routine_movl__esi__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48af12)
  store %struct.Memory* %call_48af12, %struct.Memory** %MEMORY

  ; Code: callq .result_to_string	 RIP: 48af15	 Bytes: 5
  %loadMem1_48af15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48af15 = call %struct.Memory* @routine_callq_.result_to_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48af15, i64 -231413, i64 5, i64 5)
  store %struct.Memory* %call1_48af15, %struct.Memory** %MEMORY

  %loadMem2_48af15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48af15 = load i64, i64* %3
  %call2_48af15 = call %struct.Memory* @sub_452720.result_to_string(%struct.State* %0, i64  %loadPC_48af15, %struct.Memory* %loadMem2_48af15)
  store %struct.Memory* %call2_48af15, %struct.Memory** %MEMORY

  ; Code: movq $0x5833f9, %rdi	 RIP: 48af1a	 Bytes: 10
  %loadMem_48af1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48af1a = call %struct.Memory* @routine_movq__0x5833f9___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48af1a)
  store %struct.Memory* %call_48af1a, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 48af24	 Bytes: 3
  %loadMem_48af24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48af24 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48af24)
  store %struct.Memory* %call_48af24, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 48af27	 Bytes: 3
  %loadMem_48af27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48af27 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48af27)
  store %struct.Memory* %call_48af27, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48af2a	 Bytes: 2
  %loadMem_48af2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48af2a = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48af2a)
  store %struct.Memory* %call_48af2a, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48af2c	 Bytes: 5
  %loadMem1_48af2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48af2c = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48af2c, i64 -233852, i64 5, i64 5)
  store %struct.Memory* %call1_48af2c, %struct.Memory** %MEMORY

  %loadMem2_48af2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48af2c = load i64, i64* %3
  %call2_48af2c = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48af2c, %struct.Memory* %loadMem2_48af2c)
  store %struct.Memory* %call2_48af2c, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %esi	 RIP: 48af31	 Bytes: 3
  %loadMem_48af31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48af31 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48af31)
  store %struct.Memory* %call_48af31, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 48af34	 Bytes: 3
  %loadMem_48af34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48af34 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48af34)
  store %struct.Memory* %call_48af34, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x10(%rbp)	 RIP: 48af37	 Bytes: 3
  %loadMem_48af37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48af37 = call %struct.Memory* @routine_movl__esi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48af37)
  store %struct.Memory* %call_48af37, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 48af3a	 Bytes: 3
  %loadMem_48af3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48af3a = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48af3a)
  store %struct.Memory* %call_48af3a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48ae94	 RIP: 48af3d	 Bytes: 5
  %loadMem_48af3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48af3d = call %struct.Memory* @routine_jmpq_.L_48ae94(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48af3d, i64 -169, i64 5)
  store %struct.Memory* %call_48af3d, %struct.Memory** %MEMORY

  br label %block_.L_48ae94

  ; Code: .L_48af42:	 RIP: 48af42	 Bytes: 0
block_.L_48af42:

  ; Code: movq $0x583402, %rdi	 RIP: 48af42	 Bytes: 10
  %loadMem_48af42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48af42 = call %struct.Memory* @routine_movq__0x583402___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48af42)
  store %struct.Memory* %call_48af42, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48af4c	 Bytes: 2
  %loadMem_48af4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48af4c = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48af4c)
  store %struct.Memory* %call_48af4c, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48af4e	 Bytes: 5
  %loadMem1_48af4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48af4e = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48af4e, i64 -233886, i64 5, i64 5)
  store %struct.Memory* %call1_48af4e, %struct.Memory** %MEMORY

  %loadMem2_48af4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48af4e = load i64, i64* %3
  %call2_48af4e = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48af4e, %struct.Memory* %loadMem2_48af4e)
  store %struct.Memory* %call2_48af4e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 48af53	 Bytes: 3
  %loadMem_48af53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48af53 = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48af53)
  store %struct.Memory* %call_48af53, %struct.Memory** %MEMORY

  ; Code: .L_48af56:	 RIP: 48af56	 Bytes: 0
  br label %block_.L_48af56
block_.L_48af56:

  ; Code: movq $0xb0eff0, %rax	 RIP: 48af56	 Bytes: 10
  %loadMem_48af56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48af56 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48af56)
  store %struct.Memory* %call_48af56, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 48af60	 Bytes: 4
  %loadMem_48af60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48af60 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48af60)
  store %struct.Memory* %call_48af60, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 48af64	 Bytes: 7
  %loadMem_48af64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48af64 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48af64)
  store %struct.Memory* %call_48af64, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48af6b	 Bytes: 3
  %loadMem_48af6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48af6b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48af6b)
  store %struct.Memory* %call_48af6b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8c(%rax)	 RIP: 48af6e	 Bytes: 7
  %loadMem_48af6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48af6e = call %struct.Memory* @routine_cmpl__0x0__0x8c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48af6e)
  store %struct.Memory* %call_48af6e, %struct.Memory** %MEMORY

  ; Code: jne .L_48af94	 RIP: 48af75	 Bytes: 6
  %loadMem_48af75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48af75 = call %struct.Memory* @routine_jne_.L_48af94(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48af75, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_48af75, %struct.Memory** %MEMORY

  %loadBr_48af75 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48af75 = icmp eq i8 %loadBr_48af75, 1
  br i1 %cmpBr_48af75, label %block_.L_48af94, label %block_48af7b

block_48af7b:
  ; Code: movq $0x583405, %rdi	 RIP: 48af7b	 Bytes: 10
  %loadMem_48af7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48af7b = call %struct.Memory* @routine_movq__0x583405___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48af7b)
  store %struct.Memory* %call_48af7b, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48af85	 Bytes: 2
  %loadMem_48af85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48af85 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48af85)
  store %struct.Memory* %call_48af85, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48af87	 Bytes: 5
  %loadMem1_48af87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48af87 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48af87, i64 -233943, i64 5, i64 5)
  store %struct.Memory* %call1_48af87, %struct.Memory** %MEMORY

  %loadMem2_48af87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48af87 = load i64, i64* %3
  %call2_48af87 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48af87, %struct.Memory* %loadMem2_48af87)
  store %struct.Memory* %call2_48af87, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40(%rbp)	 RIP: 48af8c	 Bytes: 3
  %loadMem_48af8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48af8c = call %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48af8c)
  store %struct.Memory* %call_48af8c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48b07a	 RIP: 48af8f	 Bytes: 5
  %loadMem_48af8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48af8f = call %struct.Memory* @routine_jmpq_.L_48b07a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48af8f, i64 235, i64 5)
  store %struct.Memory* %call_48af8f, %struct.Memory** %MEMORY

  br label %block_.L_48b07a

  ; Code: .L_48af94:	 RIP: 48af94	 Bytes: 0
block_.L_48af94:

  ; Code: movq $0x583418, %rdi	 RIP: 48af94	 Bytes: 10
  %loadMem_48af94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48af94 = call %struct.Memory* @routine_movq__0x583418___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48af94)
  store %struct.Memory* %call_48af94, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48af9e	 Bytes: 2
  %loadMem_48af9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48af9e = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48af9e)
  store %struct.Memory* %call_48af9e, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48afa0	 Bytes: 5
  %loadMem1_48afa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48afa0 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48afa0, i64 -233968, i64 5, i64 5)
  store %struct.Memory* %call1_48afa0, %struct.Memory** %MEMORY

  %loadMem2_48afa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48afa0 = load i64, i64* %3
  %call2_48afa0 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48afa0, %struct.Memory* %loadMem2_48afa0)
  store %struct.Memory* %call2_48afa0, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 48afa5	 Bytes: 7
  %loadMem_48afa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48afa5 = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48afa5)
  store %struct.Memory* %call_48afa5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x44(%rbp)	 RIP: 48afac	 Bytes: 3
  %loadMem_48afac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48afac = call %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48afac)
  store %struct.Memory* %call_48afac, %struct.Memory** %MEMORY

  ; Code: .L_48afaf:	 RIP: 48afaf	 Bytes: 0
  br label %block_.L_48afaf
block_.L_48afaf:

  ; Code: movq $0xb0eff0, %rax	 RIP: 48afaf	 Bytes: 10
  %loadMem_48afaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48afaf = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48afaf)
  store %struct.Memory* %call_48afaf, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 48afb9	 Bytes: 4
  %loadMem_48afb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48afb9 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48afb9)
  store %struct.Memory* %call_48afb9, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 48afbd	 Bytes: 7
  %loadMem_48afbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48afbd = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48afbd)
  store %struct.Memory* %call_48afbd, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48afc4	 Bytes: 3
  %loadMem_48afc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48afc4 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48afc4)
  store %struct.Memory* %call_48afc4, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 48afc7	 Bytes: 4
  %loadMem_48afc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48afc7 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48afc7)
  store %struct.Memory* %call_48afc7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8c(%rax,%rcx,4)	 RIP: 48afcb	 Bytes: 8
  %loadMem_48afcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48afcb = call %struct.Memory* @routine_cmpl__0x0__0x8c__rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48afcb)
  store %struct.Memory* %call_48afcb, %struct.Memory** %MEMORY

  ; Code: je .L_48b066	 RIP: 48afd3	 Bytes: 6
  %loadMem_48afd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48afd3 = call %struct.Memory* @routine_je_.L_48b066(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48afd3, i8* %BRANCH_TAKEN, i64 147, i64 6, i64 6)
  store %struct.Memory* %call_48afd3, %struct.Memory** %MEMORY

  %loadBr_48afd3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48afd3 = icmp eq i8 %loadBr_48afd3, 1
  br i1 %cmpBr_48afd3, label %block_.L_48b066, label %block_48afd9

block_48afd9:
  ; Code: cmpl $0x0, -0x10(%rbp)	 RIP: 48afd9	 Bytes: 4
  %loadMem_48afd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48afd9 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48afd9)
  store %struct.Memory* %call_48afd9, %struct.Memory** %MEMORY

  ; Code: jle .L_48aff7	 RIP: 48afdd	 Bytes: 6
  %loadMem_48afdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48afdd = call %struct.Memory* @routine_jle_.L_48aff7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48afdd, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_48afdd, %struct.Memory** %MEMORY

  %loadBr_48afdd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48afdd = icmp eq i8 %loadBr_48afdd, 1
  br i1 %cmpBr_48afdd, label %block_.L_48aff7, label %block_48afe3

block_48afe3:
  ; Code: movq $0x588988, %rdi	 RIP: 48afe3	 Bytes: 10
  %loadMem_48afe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48afe3 = call %struct.Memory* @routine_movq__0x588988___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48afe3)
  store %struct.Memory* %call_48afe3, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48afed	 Bytes: 2
  %loadMem_48afed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48afed = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48afed)
  store %struct.Memory* %call_48afed, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48afef	 Bytes: 5
  %loadMem1_48afef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48afef = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48afef, i64 -234047, i64 5, i64 5)
  store %struct.Memory* %call1_48afef, %struct.Memory** %MEMORY

  %loadMem2_48afef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48afef = load i64, i64* %3
  %call2_48afef = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48afef, %struct.Memory* %loadMem2_48afef)
  store %struct.Memory* %call2_48afef, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 48aff4	 Bytes: 3
  %loadMem_48aff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48aff4 = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48aff4)
  store %struct.Memory* %call_48aff4, %struct.Memory** %MEMORY

  ; Code: .L_48aff7:	 RIP: 48aff7	 Bytes: 0
  br label %block_.L_48aff7
block_.L_48aff7:

  ; Code: movq $0xb0eff0, %rax	 RIP: 48aff7	 Bytes: 10
  %loadMem_48aff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48aff7 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48aff7)
  store %struct.Memory* %call_48aff7, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 48b001	 Bytes: 4
  %loadMem_48b001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b001 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b001)
  store %struct.Memory* %call_48b001, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 48b005	 Bytes: 7
  %loadMem_48b005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b005 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b005)
  store %struct.Memory* %call_48b005, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 48b00c	 Bytes: 3
  %loadMem_48b00c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b00c = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b00c)
  store %struct.Memory* %call_48b00c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 48b00f	 Bytes: 3
  %loadMem_48b00f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b00f = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b00f)
  store %struct.Memory* %call_48b00f, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 48b012	 Bytes: 4
  %loadMem_48b012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b012 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b012)
  store %struct.Memory* %call_48b012, %struct.Memory** %MEMORY

  ; Code: movl 0x8c(%rdx,%rcx,4), %esi	 RIP: 48b016	 Bytes: 7
  %loadMem_48b016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b016 = call %struct.Memory* @routine_movl_0x8c__rdx__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b016)
  store %struct.Memory* %call_48b016, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 48b01d	 Bytes: 4
  %loadMem_48b01d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b01d = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b01d)
  store %struct.Memory* %call_48b01d, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 48b021	 Bytes: 7
  %loadMem_48b021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b021 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b021)
  store %struct.Memory* %call_48b021, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48b028	 Bytes: 3
  %loadMem_48b028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b028 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b028)
  store %struct.Memory* %call_48b028, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 48b02b	 Bytes: 4
  %loadMem_48b02b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b02b = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b02b)
  store %struct.Memory* %call_48b02b, %struct.Memory** %MEMORY

  ; Code: movl 0xb4(%rax,%rcx,4), %edi	 RIP: 48b02f	 Bytes: 7
  %loadMem_48b02f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b02f = call %struct.Memory* @routine_movl_0xb4__rax__rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b02f)
  store %struct.Memory* %call_48b02f, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x4c(%rbp)	 RIP: 48b036	 Bytes: 3
  %loadMem_48b036 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b036 = call %struct.Memory* @routine_movl__esi__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b036)
  store %struct.Memory* %call_48b036, %struct.Memory** %MEMORY

  ; Code: callq .result_to_string	 RIP: 48b039	 Bytes: 5
  %loadMem1_48b039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48b039 = call %struct.Memory* @routine_callq_.result_to_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48b039, i64 -231705, i64 5, i64 5)
  store %struct.Memory* %call1_48b039, %struct.Memory** %MEMORY

  %loadMem2_48b039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b039 = load i64, i64* %3
  %call2_48b039 = call %struct.Memory* @sub_452720.result_to_string(%struct.State* %0, i64  %loadPC_48b039, %struct.Memory* %loadMem2_48b039)
  store %struct.Memory* %call2_48b039, %struct.Memory** %MEMORY

  ; Code: movq $0x5833f9, %rdi	 RIP: 48b03e	 Bytes: 10
  %loadMem_48b03e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b03e = call %struct.Memory* @routine_movq__0x5833f9___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b03e)
  store %struct.Memory* %call_48b03e, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 48b048	 Bytes: 3
  %loadMem_48b048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b048 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b048)
  store %struct.Memory* %call_48b048, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 48b04b	 Bytes: 3
  %loadMem_48b04b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b04b = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b04b)
  store %struct.Memory* %call_48b04b, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48b04e	 Bytes: 2
  %loadMem_48b04e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b04e = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b04e)
  store %struct.Memory* %call_48b04e, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48b050	 Bytes: 5
  %loadMem1_48b050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48b050 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48b050, i64 -234144, i64 5, i64 5)
  store %struct.Memory* %call1_48b050, %struct.Memory** %MEMORY

  %loadMem2_48b050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b050 = load i64, i64* %3
  %call2_48b050 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48b050, %struct.Memory* %loadMem2_48b050)
  store %struct.Memory* %call2_48b050, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %esi	 RIP: 48b055	 Bytes: 3
  %loadMem_48b055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b055 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b055)
  store %struct.Memory* %call_48b055, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 48b058	 Bytes: 3
  %loadMem_48b058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b058 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b058)
  store %struct.Memory* %call_48b058, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x10(%rbp)	 RIP: 48b05b	 Bytes: 3
  %loadMem_48b05b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b05b = call %struct.Memory* @routine_movl__esi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b05b)
  store %struct.Memory* %call_48b05b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 48b05e	 Bytes: 3
  %loadMem_48b05e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b05e = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b05e)
  store %struct.Memory* %call_48b05e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48afaf	 RIP: 48b061	 Bytes: 5
  %loadMem_48b061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b061 = call %struct.Memory* @routine_jmpq_.L_48afaf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b061, i64 -178, i64 5)
  store %struct.Memory* %call_48b061, %struct.Memory** %MEMORY

  br label %block_.L_48afaf

  ; Code: .L_48b066:	 RIP: 48b066	 Bytes: 0
block_.L_48b066:

  ; Code: movq $0x583402, %rdi	 RIP: 48b066	 Bytes: 10
  %loadMem_48b066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b066 = call %struct.Memory* @routine_movq__0x583402___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b066)
  store %struct.Memory* %call_48b066, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48b070	 Bytes: 2
  %loadMem_48b070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b070 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b070)
  store %struct.Memory* %call_48b070, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48b072	 Bytes: 5
  %loadMem1_48b072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48b072 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48b072, i64 -234178, i64 5, i64 5)
  store %struct.Memory* %call1_48b072, %struct.Memory** %MEMORY

  %loadMem2_48b072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b072 = load i64, i64* %3
  %call2_48b072 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48b072, %struct.Memory* %loadMem2_48b072)
  store %struct.Memory* %call2_48b072, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x54(%rbp)	 RIP: 48b077	 Bytes: 3
  %loadMem_48b077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b077 = call %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b077)
  store %struct.Memory* %call_48b077, %struct.Memory** %MEMORY

  ; Code: .L_48b07a:	 RIP: 48b07a	 Bytes: 0
  br label %block_.L_48b07a
block_.L_48b07a:

  ; Code: movq $0xb0eff0, %rax	 RIP: 48b07a	 Bytes: 10
  %loadMem_48b07a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b07a = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b07a)
  store %struct.Memory* %call_48b07a, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 48b084	 Bytes: 4
  %loadMem_48b084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b084 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b084)
  store %struct.Memory* %call_48b084, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 48b088	 Bytes: 7
  %loadMem_48b088 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b088 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b088)
  store %struct.Memory* %call_48b088, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48b08f	 Bytes: 3
  %loadMem_48b08f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b08f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b08f)
  store %struct.Memory* %call_48b08f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xdc(%rax)	 RIP: 48b092	 Bytes: 7
  %loadMem_48b092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b092 = call %struct.Memory* @routine_cmpl__0x0__0xdc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b092)
  store %struct.Memory* %call_48b092, %struct.Memory** %MEMORY

  ; Code: jne .L_48b0b8	 RIP: 48b099	 Bytes: 6
  %loadMem_48b099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b099 = call %struct.Memory* @routine_jne_.L_48b0b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b099, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_48b099, %struct.Memory** %MEMORY

  %loadBr_48b099 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48b099 = icmp eq i8 %loadBr_48b099, 1
  br i1 %cmpBr_48b099, label %block_.L_48b0b8, label %block_48b09f

block_48b09f:
  ; Code: movq $0x58342a, %rdi	 RIP: 48b09f	 Bytes: 10
  %loadMem_48b09f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b09f = call %struct.Memory* @routine_movq__0x58342a___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b09f)
  store %struct.Memory* %call_48b09f, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48b0a9	 Bytes: 2
  %loadMem_48b0a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b0a9 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b0a9)
  store %struct.Memory* %call_48b0a9, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48b0ab	 Bytes: 5
  %loadMem1_48b0ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48b0ab = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48b0ab, i64 -234235, i64 5, i64 5)
  store %struct.Memory* %call1_48b0ab, %struct.Memory** %MEMORY

  %loadMem2_48b0ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b0ab = load i64, i64* %3
  %call2_48b0ab = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48b0ab, %struct.Memory* %loadMem2_48b0ab)
  store %struct.Memory* %call2_48b0ab, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x58(%rbp)	 RIP: 48b0b0	 Bytes: 3
  %loadMem_48b0b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b0b0 = call %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b0b0)
  store %struct.Memory* %call_48b0b0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48b19e	 RIP: 48b0b3	 Bytes: 5
  %loadMem_48b0b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b0b3 = call %struct.Memory* @routine_jmpq_.L_48b19e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b0b3, i64 235, i64 5)
  store %struct.Memory* %call_48b0b3, %struct.Memory** %MEMORY

  br label %block_.L_48b19e

  ; Code: .L_48b0b8:	 RIP: 48b0b8	 Bytes: 0
block_.L_48b0b8:

  ; Code: movq $0x583443, %rdi	 RIP: 48b0b8	 Bytes: 10
  %loadMem_48b0b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b0b8 = call %struct.Memory* @routine_movq__0x583443___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b0b8)
  store %struct.Memory* %call_48b0b8, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48b0c2	 Bytes: 2
  %loadMem_48b0c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b0c2 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b0c2)
  store %struct.Memory* %call_48b0c2, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48b0c4	 Bytes: 5
  %loadMem1_48b0c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48b0c4 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48b0c4, i64 -234260, i64 5, i64 5)
  store %struct.Memory* %call1_48b0c4, %struct.Memory** %MEMORY

  %loadMem2_48b0c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b0c4 = load i64, i64* %3
  %call2_48b0c4 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48b0c4, %struct.Memory* %loadMem2_48b0c4)
  store %struct.Memory* %call2_48b0c4, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 48b0c9	 Bytes: 7
  %loadMem_48b0c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b0c9 = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b0c9)
  store %struct.Memory* %call_48b0c9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5c(%rbp)	 RIP: 48b0d0	 Bytes: 3
  %loadMem_48b0d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b0d0 = call %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b0d0)
  store %struct.Memory* %call_48b0d0, %struct.Memory** %MEMORY

  ; Code: .L_48b0d3:	 RIP: 48b0d3	 Bytes: 0
  br label %block_.L_48b0d3
block_.L_48b0d3:

  ; Code: movq $0xb0eff0, %rax	 RIP: 48b0d3	 Bytes: 10
  %loadMem_48b0d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b0d3 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b0d3)
  store %struct.Memory* %call_48b0d3, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 48b0dd	 Bytes: 4
  %loadMem_48b0dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b0dd = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b0dd)
  store %struct.Memory* %call_48b0dd, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 48b0e1	 Bytes: 7
  %loadMem_48b0e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b0e1 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b0e1)
  store %struct.Memory* %call_48b0e1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48b0e8	 Bytes: 3
  %loadMem_48b0e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b0e8 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b0e8)
  store %struct.Memory* %call_48b0e8, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 48b0eb	 Bytes: 4
  %loadMem_48b0eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b0eb = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b0eb)
  store %struct.Memory* %call_48b0eb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xdc(%rax,%rcx,4)	 RIP: 48b0ef	 Bytes: 8
  %loadMem_48b0ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b0ef = call %struct.Memory* @routine_cmpl__0x0__0xdc__rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b0ef)
  store %struct.Memory* %call_48b0ef, %struct.Memory** %MEMORY

  ; Code: je .L_48b18a	 RIP: 48b0f7	 Bytes: 6
  %loadMem_48b0f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b0f7 = call %struct.Memory* @routine_je_.L_48b18a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b0f7, i8* %BRANCH_TAKEN, i64 147, i64 6, i64 6)
  store %struct.Memory* %call_48b0f7, %struct.Memory** %MEMORY

  %loadBr_48b0f7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48b0f7 = icmp eq i8 %loadBr_48b0f7, 1
  br i1 %cmpBr_48b0f7, label %block_.L_48b18a, label %block_48b0fd

block_48b0fd:
  ; Code: cmpl $0x0, -0x10(%rbp)	 RIP: 48b0fd	 Bytes: 4
  %loadMem_48b0fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b0fd = call %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b0fd)
  store %struct.Memory* %call_48b0fd, %struct.Memory** %MEMORY

  ; Code: jle .L_48b11b	 RIP: 48b101	 Bytes: 6
  %loadMem_48b101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b101 = call %struct.Memory* @routine_jle_.L_48b11b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b101, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_48b101, %struct.Memory** %MEMORY

  %loadBr_48b101 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48b101 = icmp eq i8 %loadBr_48b101, 1
  br i1 %cmpBr_48b101, label %block_.L_48b11b, label %block_48b107

block_48b107:
  ; Code: movq $0x588988, %rdi	 RIP: 48b107	 Bytes: 10
  %loadMem_48b107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b107 = call %struct.Memory* @routine_movq__0x588988___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b107)
  store %struct.Memory* %call_48b107, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48b111	 Bytes: 2
  %loadMem_48b111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b111 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b111)
  store %struct.Memory* %call_48b111, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48b113	 Bytes: 5
  %loadMem1_48b113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48b113 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48b113, i64 -234339, i64 5, i64 5)
  store %struct.Memory* %call1_48b113, %struct.Memory** %MEMORY

  %loadMem2_48b113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b113 = load i64, i64* %3
  %call2_48b113 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48b113, %struct.Memory* %loadMem2_48b113)
  store %struct.Memory* %call2_48b113, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x60(%rbp)	 RIP: 48b118	 Bytes: 3
  %loadMem_48b118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b118 = call %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b118)
  store %struct.Memory* %call_48b118, %struct.Memory** %MEMORY

  ; Code: .L_48b11b:	 RIP: 48b11b	 Bytes: 0
  br label %block_.L_48b11b
block_.L_48b11b:

  ; Code: movq $0xb0eff0, %rax	 RIP: 48b11b	 Bytes: 10
  %loadMem_48b11b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b11b = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b11b)
  store %struct.Memory* %call_48b11b, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 48b125	 Bytes: 4
  %loadMem_48b125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b125 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b125)
  store %struct.Memory* %call_48b125, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 48b129	 Bytes: 7
  %loadMem_48b129 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b129 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b129)
  store %struct.Memory* %call_48b129, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 48b130	 Bytes: 3
  %loadMem_48b130 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b130 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b130)
  store %struct.Memory* %call_48b130, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 48b133	 Bytes: 3
  %loadMem_48b133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b133 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b133)
  store %struct.Memory* %call_48b133, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 48b136	 Bytes: 4
  %loadMem_48b136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b136 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b136)
  store %struct.Memory* %call_48b136, %struct.Memory** %MEMORY

  ; Code: movl 0xdc(%rdx,%rcx,4), %esi	 RIP: 48b13a	 Bytes: 7
  %loadMem_48b13a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b13a = call %struct.Memory* @routine_movl_0xdc__rdx__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b13a)
  store %struct.Memory* %call_48b13a, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 48b141	 Bytes: 4
  %loadMem_48b141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b141 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b141)
  store %struct.Memory* %call_48b141, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 48b145	 Bytes: 7
  %loadMem_48b145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b145 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b145)
  store %struct.Memory* %call_48b145, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48b14c	 Bytes: 3
  %loadMem_48b14c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b14c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b14c)
  store %struct.Memory* %call_48b14c, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 48b14f	 Bytes: 4
  %loadMem_48b14f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b14f = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b14f)
  store %struct.Memory* %call_48b14f, %struct.Memory** %MEMORY

  ; Code: movl 0x104(%rax,%rcx,4), %edi	 RIP: 48b153	 Bytes: 7
  %loadMem_48b153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b153 = call %struct.Memory* @routine_movl_0x104__rax__rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b153)
  store %struct.Memory* %call_48b153, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x64(%rbp)	 RIP: 48b15a	 Bytes: 3
  %loadMem_48b15a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b15a = call %struct.Memory* @routine_movl__esi__MINUS0x64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b15a)
  store %struct.Memory* %call_48b15a, %struct.Memory** %MEMORY

  ; Code: callq .result_to_string	 RIP: 48b15d	 Bytes: 5
  %loadMem1_48b15d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48b15d = call %struct.Memory* @routine_callq_.result_to_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48b15d, i64 -231997, i64 5, i64 5)
  store %struct.Memory* %call1_48b15d, %struct.Memory** %MEMORY

  %loadMem2_48b15d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b15d = load i64, i64* %3
  %call2_48b15d = call %struct.Memory* @sub_452720.result_to_string(%struct.State* %0, i64  %loadPC_48b15d, %struct.Memory* %loadMem2_48b15d)
  store %struct.Memory* %call2_48b15d, %struct.Memory** %MEMORY

  ; Code: movq $0x5833f9, %rdi	 RIP: 48b162	 Bytes: 10
  %loadMem_48b162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b162 = call %struct.Memory* @routine_movq__0x5833f9___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b162)
  store %struct.Memory* %call_48b162, %struct.Memory** %MEMORY

  ; Code: movl -0x64(%rbp), %esi	 RIP: 48b16c	 Bytes: 3
  %loadMem_48b16c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b16c = call %struct.Memory* @routine_movl_MINUS0x64__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b16c)
  store %struct.Memory* %call_48b16c, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 48b16f	 Bytes: 3
  %loadMem_48b16f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b16f = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b16f)
  store %struct.Memory* %call_48b16f, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48b172	 Bytes: 2
  %loadMem_48b172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b172 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b172)
  store %struct.Memory* %call_48b172, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48b174	 Bytes: 5
  %loadMem1_48b174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48b174 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48b174, i64 -234436, i64 5, i64 5)
  store %struct.Memory* %call1_48b174, %struct.Memory** %MEMORY

  %loadMem2_48b174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b174 = load i64, i64* %3
  %call2_48b174 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48b174, %struct.Memory* %loadMem2_48b174)
  store %struct.Memory* %call2_48b174, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %esi	 RIP: 48b179	 Bytes: 3
  %loadMem_48b179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b179 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b179)
  store %struct.Memory* %call_48b179, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 48b17c	 Bytes: 3
  %loadMem_48b17c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b17c = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b17c)
  store %struct.Memory* %call_48b17c, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x10(%rbp)	 RIP: 48b17f	 Bytes: 3
  %loadMem_48b17f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b17f = call %struct.Memory* @routine_movl__esi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b17f)
  store %struct.Memory* %call_48b17f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x68(%rbp)	 RIP: 48b182	 Bytes: 3
  %loadMem_48b182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b182 = call %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b182)
  store %struct.Memory* %call_48b182, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48b0d3	 RIP: 48b185	 Bytes: 5
  %loadMem_48b185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b185 = call %struct.Memory* @routine_jmpq_.L_48b0d3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b185, i64 -178, i64 5)
  store %struct.Memory* %call_48b185, %struct.Memory** %MEMORY

  br label %block_.L_48b0d3

  ; Code: .L_48b18a:	 RIP: 48b18a	 Bytes: 0
block_.L_48b18a:

  ; Code: movq $0x583402, %rdi	 RIP: 48b18a	 Bytes: 10
  %loadMem_48b18a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b18a = call %struct.Memory* @routine_movq__0x583402___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b18a)
  store %struct.Memory* %call_48b18a, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48b194	 Bytes: 2
  %loadMem_48b194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b194 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b194)
  store %struct.Memory* %call_48b194, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48b196	 Bytes: 5
  %loadMem1_48b196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48b196 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48b196, i64 -234470, i64 5, i64 5)
  store %struct.Memory* %call1_48b196, %struct.Memory** %MEMORY

  %loadMem2_48b196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b196 = load i64, i64* %3
  %call2_48b196 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48b196, %struct.Memory* %loadMem2_48b196)
  store %struct.Memory* %call2_48b196, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6c(%rbp)	 RIP: 48b19b	 Bytes: 3
  %loadMem_48b19b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b19b = call %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b19b)
  store %struct.Memory* %call_48b19b, %struct.Memory** %MEMORY

  ; Code: .L_48b19e:	 RIP: 48b19e	 Bytes: 0
  br label %block_.L_48b19e
block_.L_48b19e:

  ; Code: movq $0xb0eff0, %rax	 RIP: 48b19e	 Bytes: 10
  %loadMem_48b19e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b19e = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b19e)
  store %struct.Memory* %call_48b19e, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 48b1a8	 Bytes: 4
  %loadMem_48b1a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b1a8 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b1a8)
  store %struct.Memory* %call_48b1a8, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 48b1ac	 Bytes: 7
  %loadMem_48b1ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b1ac = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b1ac)
  store %struct.Memory* %call_48b1ac, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48b1b3	 Bytes: 3
  %loadMem_48b1b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b1b3 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b1b3)
  store %struct.Memory* %call_48b1b3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x12c(%rax)	 RIP: 48b1b6	 Bytes: 7
  %loadMem_48b1b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b1b6 = call %struct.Memory* @routine_cmpl__0x0__0x12c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b1b6)
  store %struct.Memory* %call_48b1b6, %struct.Memory** %MEMORY

  ; Code: jne .L_48b1dc	 RIP: 48b1bd	 Bytes: 6
  %loadMem_48b1bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b1bd = call %struct.Memory* @routine_jne_.L_48b1dc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b1bd, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_48b1bd, %struct.Memory** %MEMORY

  %loadBr_48b1bd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48b1bd = icmp eq i8 %loadBr_48b1bd, 1
  br i1 %cmpBr_48b1bd, label %block_.L_48b1dc, label %block_48b1c3

block_48b1c3:
  ; Code: movq $0x58345b, %rdi	 RIP: 48b1c3	 Bytes: 10
  %loadMem_48b1c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b1c3 = call %struct.Memory* @routine_movq__0x58345b___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b1c3)
  store %struct.Memory* %call_48b1c3, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48b1cd	 Bytes: 2
  %loadMem_48b1cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b1cd = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b1cd)
  store %struct.Memory* %call_48b1cd, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48b1cf	 Bytes: 5
  %loadMem1_48b1cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48b1cf = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48b1cf, i64 -234527, i64 5, i64 5)
  store %struct.Memory* %call1_48b1cf, %struct.Memory** %MEMORY

  %loadMem2_48b1cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b1cf = load i64, i64* %3
  %call2_48b1cf = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48b1cf, %struct.Memory* %loadMem2_48b1cf)
  store %struct.Memory* %call2_48b1cf, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x70(%rbp)	 RIP: 48b1d4	 Bytes: 3
  %loadMem_48b1d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b1d4 = call %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b1d4)
  store %struct.Memory* %call_48b1d4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48b2c5	 RIP: 48b1d7	 Bytes: 5
  %loadMem_48b1d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b1d7 = call %struct.Memory* @routine_jmpq_.L_48b2c5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b1d7, i64 238, i64 5)
  store %struct.Memory* %call_48b1d7, %struct.Memory** %MEMORY

  br label %block_.L_48b2c5

  ; Code: .L_48b1dc:	 RIP: 48b1dc	 Bytes: 0
block_.L_48b1dc:

  ; Code: movq $0x583475, %rdi	 RIP: 48b1dc	 Bytes: 10
  %loadMem_48b1dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b1dc = call %struct.Memory* @routine_movq__0x583475___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b1dc)
  store %struct.Memory* %call_48b1dc, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48b1e6	 Bytes: 2
  %loadMem_48b1e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b1e6 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b1e6)
  store %struct.Memory* %call_48b1e6, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48b1e8	 Bytes: 5
  %loadMem1_48b1e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48b1e8 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48b1e8, i64 -234552, i64 5, i64 5)
  store %struct.Memory* %call1_48b1e8, %struct.Memory** %MEMORY

  %loadMem2_48b1e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b1e8 = load i64, i64* %3
  %call2_48b1e8 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48b1e8, %struct.Memory* %loadMem2_48b1e8)
  store %struct.Memory* %call2_48b1e8, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 48b1ed	 Bytes: 7
  %loadMem_48b1ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b1ed = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b1ed)
  store %struct.Memory* %call_48b1ed, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x74(%rbp)	 RIP: 48b1f4	 Bytes: 3
  %loadMem_48b1f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b1f4 = call %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b1f4)
  store %struct.Memory* %call_48b1f4, %struct.Memory** %MEMORY

  ; Code: .L_48b1f7:	 RIP: 48b1f7	 Bytes: 0
  br label %block_.L_48b1f7
block_.L_48b1f7:

  ; Code: movq $0xb0eff0, %rax	 RIP: 48b1f7	 Bytes: 10
  %loadMem_48b1f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b1f7 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b1f7)
  store %struct.Memory* %call_48b1f7, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 48b201	 Bytes: 4
  %loadMem_48b201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b201 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b201)
  store %struct.Memory* %call_48b201, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 48b205	 Bytes: 7
  %loadMem_48b205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b205 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b205)
  store %struct.Memory* %call_48b205, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48b20c	 Bytes: 3
  %loadMem_48b20c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b20c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b20c)
  store %struct.Memory* %call_48b20c, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 48b20f	 Bytes: 4
  %loadMem_48b20f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b20f = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b20f)
  store %struct.Memory* %call_48b20f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x12c(%rax,%rcx,4)	 RIP: 48b213	 Bytes: 8
  %loadMem_48b213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b213 = call %struct.Memory* @routine_cmpl__0x0__0x12c__rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b213)
  store %struct.Memory* %call_48b213, %struct.Memory** %MEMORY

  ; Code: je .L_48b2ae	 RIP: 48b21b	 Bytes: 6
  %loadMem_48b21b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b21b = call %struct.Memory* @routine_je_.L_48b2ae(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b21b, i8* %BRANCH_TAKEN, i64 147, i64 6, i64 6)
  store %struct.Memory* %call_48b21b, %struct.Memory** %MEMORY

  %loadBr_48b21b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48b21b = icmp eq i8 %loadBr_48b21b, 1
  br i1 %cmpBr_48b21b, label %block_.L_48b2ae, label %block_48b221

block_48b221:
  ; Code: cmpl $0x0, -0x10(%rbp)	 RIP: 48b221	 Bytes: 4
  %loadMem_48b221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b221 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b221)
  store %struct.Memory* %call_48b221, %struct.Memory** %MEMORY

  ; Code: jle .L_48b23f	 RIP: 48b225	 Bytes: 6
  %loadMem_48b225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b225 = call %struct.Memory* @routine_jle_.L_48b23f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b225, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_48b225, %struct.Memory** %MEMORY

  %loadBr_48b225 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48b225 = icmp eq i8 %loadBr_48b225, 1
  br i1 %cmpBr_48b225, label %block_.L_48b23f, label %block_48b22b

block_48b22b:
  ; Code: movq $0x588988, %rdi	 RIP: 48b22b	 Bytes: 10
  %loadMem_48b22b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b22b = call %struct.Memory* @routine_movq__0x588988___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b22b)
  store %struct.Memory* %call_48b22b, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48b235	 Bytes: 2
  %loadMem_48b235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b235 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b235)
  store %struct.Memory* %call_48b235, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48b237	 Bytes: 5
  %loadMem1_48b237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48b237 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48b237, i64 -234631, i64 5, i64 5)
  store %struct.Memory* %call1_48b237, %struct.Memory** %MEMORY

  %loadMem2_48b237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b237 = load i64, i64* %3
  %call2_48b237 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48b237, %struct.Memory* %loadMem2_48b237)
  store %struct.Memory* %call2_48b237, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x78(%rbp)	 RIP: 48b23c	 Bytes: 3
  %loadMem_48b23c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b23c = call %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b23c)
  store %struct.Memory* %call_48b23c, %struct.Memory** %MEMORY

  ; Code: .L_48b23f:	 RIP: 48b23f	 Bytes: 0
  br label %block_.L_48b23f
block_.L_48b23f:

  ; Code: movq $0xb0eff0, %rax	 RIP: 48b23f	 Bytes: 10
  %loadMem_48b23f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b23f = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b23f)
  store %struct.Memory* %call_48b23f, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 48b249	 Bytes: 4
  %loadMem_48b249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b249 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b249)
  store %struct.Memory* %call_48b249, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 48b24d	 Bytes: 7
  %loadMem_48b24d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b24d = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b24d)
  store %struct.Memory* %call_48b24d, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 48b254	 Bytes: 3
  %loadMem_48b254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b254 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b254)
  store %struct.Memory* %call_48b254, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 48b257	 Bytes: 3
  %loadMem_48b257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b257 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b257)
  store %struct.Memory* %call_48b257, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 48b25a	 Bytes: 4
  %loadMem_48b25a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b25a = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b25a)
  store %struct.Memory* %call_48b25a, %struct.Memory** %MEMORY

  ; Code: movl 0x12c(%rdx,%rcx,4), %esi	 RIP: 48b25e	 Bytes: 7
  %loadMem_48b25e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b25e = call %struct.Memory* @routine_movl_0x12c__rdx__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b25e)
  store %struct.Memory* %call_48b25e, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 48b265	 Bytes: 4
  %loadMem_48b265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b265 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b265)
  store %struct.Memory* %call_48b265, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 48b269	 Bytes: 7
  %loadMem_48b269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b269 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b269)
  store %struct.Memory* %call_48b269, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48b270	 Bytes: 3
  %loadMem_48b270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b270 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b270)
  store %struct.Memory* %call_48b270, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 48b273	 Bytes: 4
  %loadMem_48b273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b273 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b273)
  store %struct.Memory* %call_48b273, %struct.Memory** %MEMORY

  ; Code: movl 0x154(%rax,%rcx,4), %edi	 RIP: 48b277	 Bytes: 7
  %loadMem_48b277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b277 = call %struct.Memory* @routine_movl_0x154__rax__rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b277)
  store %struct.Memory* %call_48b277, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x7c(%rbp)	 RIP: 48b27e	 Bytes: 3
  %loadMem_48b27e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b27e = call %struct.Memory* @routine_movl__esi__MINUS0x7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b27e)
  store %struct.Memory* %call_48b27e, %struct.Memory** %MEMORY

  ; Code: callq .result_to_string	 RIP: 48b281	 Bytes: 5
  %loadMem1_48b281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48b281 = call %struct.Memory* @routine_callq_.result_to_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48b281, i64 -232289, i64 5, i64 5)
  store %struct.Memory* %call1_48b281, %struct.Memory** %MEMORY

  %loadMem2_48b281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b281 = load i64, i64* %3
  %call2_48b281 = call %struct.Memory* @sub_452720.result_to_string(%struct.State* %0, i64  %loadPC_48b281, %struct.Memory* %loadMem2_48b281)
  store %struct.Memory* %call2_48b281, %struct.Memory** %MEMORY

  ; Code: movq $0x5833f9, %rdi	 RIP: 48b286	 Bytes: 10
  %loadMem_48b286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b286 = call %struct.Memory* @routine_movq__0x5833f9___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b286)
  store %struct.Memory* %call_48b286, %struct.Memory** %MEMORY

  ; Code: movl -0x7c(%rbp), %esi	 RIP: 48b290	 Bytes: 3
  %loadMem_48b290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b290 = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b290)
  store %struct.Memory* %call_48b290, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 48b293	 Bytes: 3
  %loadMem_48b293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b293 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b293)
  store %struct.Memory* %call_48b293, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48b296	 Bytes: 2
  %loadMem_48b296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b296 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b296)
  store %struct.Memory* %call_48b296, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48b298	 Bytes: 5
  %loadMem1_48b298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48b298 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48b298, i64 -234728, i64 5, i64 5)
  store %struct.Memory* %call1_48b298, %struct.Memory** %MEMORY

  %loadMem2_48b298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b298 = load i64, i64* %3
  %call2_48b298 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48b298, %struct.Memory* %loadMem2_48b298)
  store %struct.Memory* %call2_48b298, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %esi	 RIP: 48b29d	 Bytes: 3
  %loadMem_48b29d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b29d = call %struct.Memory* @routine_movl_MINUS0x10__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b29d)
  store %struct.Memory* %call_48b29d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 48b2a0	 Bytes: 3
  %loadMem_48b2a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b2a0 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b2a0)
  store %struct.Memory* %call_48b2a0, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x10(%rbp)	 RIP: 48b2a3	 Bytes: 3
  %loadMem_48b2a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b2a3 = call %struct.Memory* @routine_movl__esi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b2a3)
  store %struct.Memory* %call_48b2a3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x80(%rbp)	 RIP: 48b2a6	 Bytes: 3
  %loadMem_48b2a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b2a6 = call %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b2a6)
  store %struct.Memory* %call_48b2a6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48b1f7	 RIP: 48b2a9	 Bytes: 5
  %loadMem_48b2a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b2a9 = call %struct.Memory* @routine_jmpq_.L_48b1f7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b2a9, i64 -178, i64 5)
  store %struct.Memory* %call_48b2a9, %struct.Memory** %MEMORY

  br label %block_.L_48b1f7

  ; Code: .L_48b2ae:	 RIP: 48b2ae	 Bytes: 0
block_.L_48b2ae:

  ; Code: movq $0x583402, %rdi	 RIP: 48b2ae	 Bytes: 10
  %loadMem_48b2ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b2ae = call %struct.Memory* @routine_movq__0x583402___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b2ae)
  store %struct.Memory* %call_48b2ae, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48b2b8	 Bytes: 2
  %loadMem_48b2b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b2b8 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b2b8)
  store %struct.Memory* %call_48b2b8, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48b2ba	 Bytes: 5
  %loadMem1_48b2ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48b2ba = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48b2ba, i64 -234762, i64 5, i64 5)
  store %struct.Memory* %call1_48b2ba, %struct.Memory** %MEMORY

  %loadMem2_48b2ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b2ba = load i64, i64* %3
  %call2_48b2ba = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48b2ba, %struct.Memory* %loadMem2_48b2ba)
  store %struct.Memory* %call2_48b2ba, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x84(%rbp)	 RIP: 48b2bf	 Bytes: 6
  %loadMem_48b2bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b2bf = call %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b2bf)
  store %struct.Memory* %call_48b2bf, %struct.Memory** %MEMORY

  ; Code: .L_48b2c5:	 RIP: 48b2c5	 Bytes: 0
  br label %block_.L_48b2c5
block_.L_48b2c5:

  ; Code: movq $0xb0eff0, %rax	 RIP: 48b2c5	 Bytes: 10
  %loadMem_48b2c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b2c5 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b2c5)
  store %struct.Memory* %call_48b2c5, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 48b2cf	 Bytes: 4
  %loadMem_48b2cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b2cf = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b2cf)
  store %struct.Memory* %call_48b2cf, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 48b2d3	 Bytes: 7
  %loadMem_48b2d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b2d3 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b2d3)
  store %struct.Memory* %call_48b2d3, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48b2da	 Bytes: 3
  %loadMem_48b2da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b2da = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b2da)
  store %struct.Memory* %call_48b2da, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x20(%rax)	 RIP: 48b2dd	 Bytes: 4
  %loadMem_48b2dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b2dd = call %struct.Memory* @routine_cmpl__0x0__0x20__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b2dd)
  store %struct.Memory* %call_48b2dd, %struct.Memory** %MEMORY

  ; Code: je .L_48b319	 RIP: 48b2e1	 Bytes: 6
  %loadMem_48b2e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b2e1 = call %struct.Memory* @routine_je_.L_48b319(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b2e1, i8* %BRANCH_TAKEN, i64 56, i64 6, i64 6)
  store %struct.Memory* %call_48b2e1, %struct.Memory** %MEMORY

  %loadBr_48b2e1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48b2e1 = icmp eq i8 %loadBr_48b2e1, 1
  br i1 %cmpBr_48b2e1, label %block_.L_48b319, label %block_48b2e7

block_48b2e7:
  ; Code: movq $0x58348e, %rdi	 RIP: 48b2e7	 Bytes: 10
  %loadMem_48b2e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b2e7 = call %struct.Memory* @routine_movq__0x58348e___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b2e7)
  store %struct.Memory* %call_48b2e7, %struct.Memory** %MEMORY

  ; Code: movq $0xb0eff0, %rax	 RIP: 48b2f1	 Bytes: 10
  %loadMem_48b2f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b2f1 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b2f1)
  store %struct.Memory* %call_48b2f1, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 48b2fb	 Bytes: 4
  %loadMem_48b2fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b2fb = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b2fb)
  store %struct.Memory* %call_48b2fb, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 48b2ff	 Bytes: 7
  %loadMem_48b2ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b2ff = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b2ff)
  store %struct.Memory* %call_48b2ff, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48b306	 Bytes: 3
  %loadMem_48b306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b306 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b306)
  store %struct.Memory* %call_48b306, %struct.Memory** %MEMORY

  ; Code: movl 0x20(%rax), %esi	 RIP: 48b309	 Bytes: 3
  %loadMem_48b309 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b309 = call %struct.Memory* @routine_movl_0x20__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b309)
  store %struct.Memory* %call_48b309, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48b30c	 Bytes: 2
  %loadMem_48b30c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b30c = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b30c)
  store %struct.Memory* %call_48b30c, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48b30e	 Bytes: 5
  %loadMem1_48b30e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48b30e = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48b30e, i64 -234846, i64 5, i64 5)
  store %struct.Memory* %call1_48b30e, %struct.Memory** %MEMORY

  %loadMem2_48b30e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b30e = load i64, i64* %3
  %call2_48b30e = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48b30e, %struct.Memory* %loadMem2_48b30e)
  store %struct.Memory* %call2_48b30e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x88(%rbp)	 RIP: 48b313	 Bytes: 6
  %loadMem_48b313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b313 = call %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b313)
  store %struct.Memory* %call_48b313, %struct.Memory** %MEMORY

  ; Code: .L_48b319:	 RIP: 48b319	 Bytes: 0
  br label %block_.L_48b319
block_.L_48b319:

  ; Code: movq $0x58349c, %rdi	 RIP: 48b319	 Bytes: 10
  %loadMem_48b319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b319 = call %struct.Memory* @routine_movq__0x58349c___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b319)
  store %struct.Memory* %call_48b319, %struct.Memory** %MEMORY

  ; Code: movq $0xb0eff0, %rax	 RIP: 48b323	 Bytes: 10
  %loadMem_48b323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b323 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b323)
  store %struct.Memory* %call_48b323, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 48b32d	 Bytes: 4
  %loadMem_48b32d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b32d = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b32d)
  store %struct.Memory* %call_48b32d, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 48b331	 Bytes: 7
  %loadMem_48b331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b331 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b331)
  store %struct.Memory* %call_48b331, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 48b338	 Bytes: 3
  %loadMem_48b338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b338 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b338)
  store %struct.Memory* %call_48b338, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 48b33b	 Bytes: 3
  %loadMem_48b33b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b33b = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b33b)
  store %struct.Memory* %call_48b33b, %struct.Memory** %MEMORY

  ; Code: movl 0x24(%rdx), %esi	 RIP: 48b33e	 Bytes: 3
  %loadMem_48b33e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b33e = call %struct.Memory* @routine_movl_0x24__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b33e)
  store %struct.Memory* %call_48b33e, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 48b341	 Bytes: 4
  %loadMem_48b341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b341 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b341)
  store %struct.Memory* %call_48b341, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 48b345	 Bytes: 7
  %loadMem_48b345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b345 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b345)
  store %struct.Memory* %call_48b345, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48b34c	 Bytes: 3
  %loadMem_48b34c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b34c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b34c)
  store %struct.Memory* %call_48b34c, %struct.Memory** %MEMORY

  ; Code: movl 0x28(%rax), %edx	 RIP: 48b34f	 Bytes: 3
  %loadMem_48b34f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b34f = call %struct.Memory* @routine_movl_0x28__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b34f)
  store %struct.Memory* %call_48b34f, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48b352	 Bytes: 2
  %loadMem_48b352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b352 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b352)
  store %struct.Memory* %call_48b352, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48b354	 Bytes: 5
  %loadMem1_48b354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48b354 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48b354, i64 -234916, i64 5, i64 5)
  store %struct.Memory* %call1_48b354, %struct.Memory** %MEMORY

  %loadMem2_48b354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b354 = load i64, i64* %3
  %call2_48b354 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48b354, %struct.Memory* %loadMem2_48b354)
  store %struct.Memory* %call2_48b354, %struct.Memory** %MEMORY

  ; Code: movq $0x5834b9, %rdi	 RIP: 48b359	 Bytes: 10
  %loadMem_48b359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b359 = call %struct.Memory* @routine_movq__0x5834b9___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b359)
  store %struct.Memory* %call_48b359, %struct.Memory** %MEMORY

  ; Code: movq $0xb0eff0, %rcx	 RIP: 48b363	 Bytes: 10
  %loadMem_48b363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b363 = call %struct.Memory* @routine_movq__0xb0eff0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b363)
  store %struct.Memory* %call_48b363, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %r8	 RIP: 48b36d	 Bytes: 4
  %loadMem_48b36d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b36d = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b36d)
  store %struct.Memory* %call_48b36d, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %r8, %r8	 RIP: 48b371	 Bytes: 7
  %loadMem_48b371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b371 = call %struct.Memory* @routine_imulq__0x17c___r8___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b371)
  store %struct.Memory* %call_48b371, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rcx	 RIP: 48b378	 Bytes: 3
  %loadMem_48b378 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b378 = call %struct.Memory* @routine_addq__r8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b378)
  store %struct.Memory* %call_48b378, %struct.Memory** %MEMORY

  ; Code: movl 0x2c(%rcx), %esi	 RIP: 48b37b	 Bytes: 3
  %loadMem_48b37b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b37b = call %struct.Memory* @routine_movl_0x2c__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b37b)
  store %struct.Memory* %call_48b37b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8c(%rbp)	 RIP: 48b37e	 Bytes: 6
  %loadMem_48b37e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b37e = call %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b37e)
  store %struct.Memory* %call_48b37e, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48b384	 Bytes: 2
  %loadMem_48b384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b384 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b384)
  store %struct.Memory* %call_48b384, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48b386	 Bytes: 5
  %loadMem1_48b386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48b386 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48b386, i64 -234966, i64 5, i64 5)
  store %struct.Memory* %call1_48b386, %struct.Memory** %MEMORY

  %loadMem2_48b386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b386 = load i64, i64* %3
  %call2_48b386 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48b386, %struct.Memory* %loadMem2_48b386)
  store %struct.Memory* %call2_48b386, %struct.Memory** %MEMORY

  ; Code: movq $0xb0eff0, %rcx	 RIP: 48b38b	 Bytes: 10
  %loadMem_48b38b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b38b = call %struct.Memory* @routine_movq__0xb0eff0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b38b)
  store %struct.Memory* %call_48b38b, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdi	 RIP: 48b395	 Bytes: 4
  %loadMem_48b395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b395 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b395)
  store %struct.Memory* %call_48b395, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rdi, %rdi	 RIP: 48b399	 Bytes: 7
  %loadMem_48b399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b399 = call %struct.Memory* @routine_imulq__0x17c___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b399)
  store %struct.Memory* %call_48b399, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rcx	 RIP: 48b3a0	 Bytes: 3
  %loadMem_48b3a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b3a0 = call %struct.Memory* @routine_addq__rdi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b3a0)
  store %struct.Memory* %call_48b3a0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x30(%rcx)	 RIP: 48b3a3	 Bytes: 4
  %loadMem_48b3a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b3a3 = call %struct.Memory* @routine_cmpl__0x0__0x30__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b3a3)
  store %struct.Memory* %call_48b3a3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x90(%rbp)	 RIP: 48b3a7	 Bytes: 6
  %loadMem_48b3a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b3a7 = call %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b3a7)
  store %struct.Memory* %call_48b3a7, %struct.Memory** %MEMORY

  ; Code: je .L_48b3cf	 RIP: 48b3ad	 Bytes: 6
  %loadMem_48b3ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b3ad = call %struct.Memory* @routine_je_.L_48b3cf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b3ad, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_48b3ad, %struct.Memory** %MEMORY

  %loadBr_48b3ad = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48b3ad = icmp eq i8 %loadBr_48b3ad, 1
  br i1 %cmpBr_48b3ad, label %block_.L_48b3cf, label %block_48b3b3

block_48b3b3:
  ; Code: movq $0x5834c5, %rdi	 RIP: 48b3b3	 Bytes: 10
  %loadMem_48b3b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b3b3 = call %struct.Memory* @routine_movq__0x5834c5___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b3b3)
  store %struct.Memory* %call_48b3b3, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48b3bd	 Bytes: 2
  %loadMem_48b3bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b3bd = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b3bd)
  store %struct.Memory* %call_48b3bd, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48b3bf	 Bytes: 5
  %loadMem1_48b3bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48b3bf = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48b3bf, i64 -235023, i64 5, i64 5)
  store %struct.Memory* %call1_48b3bf, %struct.Memory** %MEMORY

  %loadMem2_48b3bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b3bf = load i64, i64* %3
  %call2_48b3bf = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48b3bf, %struct.Memory* %loadMem2_48b3bf)
  store %struct.Memory* %call2_48b3bf, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x94(%rbp)	 RIP: 48b3c4	 Bytes: 6
  %loadMem_48b3c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b3c4 = call %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b3c4)
  store %struct.Memory* %call_48b3c4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48b3e6	 RIP: 48b3ca	 Bytes: 5
  %loadMem_48b3ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b3ca = call %struct.Memory* @routine_jmpq_.L_48b3e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b3ca, i64 28, i64 5)
  store %struct.Memory* %call_48b3ca, %struct.Memory** %MEMORY

  br label %block_.L_48b3e6

  ; Code: .L_48b3cf:	 RIP: 48b3cf	 Bytes: 0
block_.L_48b3cf:

  ; Code: movq $0x5834d8, %rdi	 RIP: 48b3cf	 Bytes: 10
  %loadMem_48b3cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b3cf = call %struct.Memory* @routine_movq__0x5834d8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b3cf)
  store %struct.Memory* %call_48b3cf, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48b3d9	 Bytes: 2
  %loadMem_48b3d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b3d9 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b3d9)
  store %struct.Memory* %call_48b3d9, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48b3db	 Bytes: 5
  %loadMem1_48b3db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48b3db = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48b3db, i64 -235051, i64 5, i64 5)
  store %struct.Memory* %call1_48b3db, %struct.Memory** %MEMORY

  %loadMem2_48b3db = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b3db = load i64, i64* %3
  %call2_48b3db = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48b3db, %struct.Memory* %loadMem2_48b3db)
  store %struct.Memory* %call2_48b3db, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x98(%rbp)	 RIP: 48b3e0	 Bytes: 6
  %loadMem_48b3e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b3e0 = call %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b3e0)
  store %struct.Memory* %call_48b3e0, %struct.Memory** %MEMORY

  ; Code: .L_48b3e6:	 RIP: 48b3e6	 Bytes: 0
  br label %block_.L_48b3e6
block_.L_48b3e6:

  ; Code: movq $0xb0eff0, %rax	 RIP: 48b3e6	 Bytes: 10
  %loadMem_48b3e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b3e6 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b3e6)
  store %struct.Memory* %call_48b3e6, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 48b3f0	 Bytes: 4
  %loadMem_48b3f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b3f0 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b3f0)
  store %struct.Memory* %call_48b3f0, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 48b3f4	 Bytes: 7
  %loadMem_48b3f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b3f4 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b3f4)
  store %struct.Memory* %call_48b3f4, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48b3fb	 Bytes: 3
  %loadMem_48b3fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b3fb = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b3fb)
  store %struct.Memory* %call_48b3fb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x34(%rax)	 RIP: 48b3fe	 Bytes: 4
  %loadMem_48b3fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b3fe = call %struct.Memory* @routine_cmpl__0x0__0x34__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b3fe)
  store %struct.Memory* %call_48b3fe, %struct.Memory** %MEMORY

  ; Code: je .L_48b424	 RIP: 48b402	 Bytes: 6
  %loadMem_48b402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b402 = call %struct.Memory* @routine_je_.L_48b424(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b402, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_48b402, %struct.Memory** %MEMORY

  %loadBr_48b402 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48b402 = icmp eq i8 %loadBr_48b402, 1
  br i1 %cmpBr_48b402, label %block_.L_48b424, label %block_48b408

block_48b408:
  ; Code: movq $0x5834ea, %rdi	 RIP: 48b408	 Bytes: 10
  %loadMem_48b408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b408 = call %struct.Memory* @routine_movq__0x5834ea___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b408)
  store %struct.Memory* %call_48b408, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48b412	 Bytes: 2
  %loadMem_48b412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b412 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b412)
  store %struct.Memory* %call_48b412, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48b414	 Bytes: 5
  %loadMem1_48b414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48b414 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48b414, i64 -235108, i64 5, i64 5)
  store %struct.Memory* %call1_48b414, %struct.Memory** %MEMORY

  %loadMem2_48b414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b414 = load i64, i64* %3
  %call2_48b414 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48b414, %struct.Memory* %loadMem2_48b414)
  store %struct.Memory* %call2_48b414, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x9c(%rbp)	 RIP: 48b419	 Bytes: 6
  %loadMem_48b419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b419 = call %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b419)
  store %struct.Memory* %call_48b419, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48b43b	 RIP: 48b41f	 Bytes: 5
  %loadMem_48b41f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b41f = call %struct.Memory* @routine_jmpq_.L_48b43b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b41f, i64 28, i64 5)
  store %struct.Memory* %call_48b41f, %struct.Memory** %MEMORY

  br label %block_.L_48b43b

  ; Code: .L_48b424:	 RIP: 48b424	 Bytes: 0
block_.L_48b424:

  ; Code: movq $0x5834fd, %rdi	 RIP: 48b424	 Bytes: 10
  %loadMem_48b424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b424 = call %struct.Memory* @routine_movq__0x5834fd___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b424)
  store %struct.Memory* %call_48b424, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48b42e	 Bytes: 2
  %loadMem_48b42e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b42e = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b42e)
  store %struct.Memory* %call_48b42e, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48b430	 Bytes: 5
  %loadMem1_48b430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48b430 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48b430, i64 -235136, i64 5, i64 5)
  store %struct.Memory* %call1_48b430, %struct.Memory** %MEMORY

  %loadMem2_48b430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b430 = load i64, i64* %3
  %call2_48b430 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48b430, %struct.Memory* %loadMem2_48b430)
  store %struct.Memory* %call2_48b430, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa0(%rbp)	 RIP: 48b435	 Bytes: 6
  %loadMem_48b435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b435 = call %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b435)
  store %struct.Memory* %call_48b435, %struct.Memory** %MEMORY

  ; Code: .L_48b43b:	 RIP: 48b43b	 Bytes: 0
  br label %block_.L_48b43b
block_.L_48b43b:

  ; Code: movq $0xb0eff0, %rax	 RIP: 48b43b	 Bytes: 10
  %loadMem_48b43b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b43b = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b43b)
  store %struct.Memory* %call_48b43b, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 48b445	 Bytes: 4
  %loadMem_48b445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b445 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b445)
  store %struct.Memory* %call_48b445, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 48b449	 Bytes: 7
  %loadMem_48b449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b449 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b449)
  store %struct.Memory* %call_48b449, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48b450	 Bytes: 3
  %loadMem_48b450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b450 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b450)
  store %struct.Memory* %call_48b450, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x38(%rax)	 RIP: 48b453	 Bytes: 4
  %loadMem_48b453 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b453 = call %struct.Memory* @routine_cmpl__0x1__0x38__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b453)
  store %struct.Memory* %call_48b453, %struct.Memory** %MEMORY

  ; Code: jne .L_48b479	 RIP: 48b457	 Bytes: 6
  %loadMem_48b457 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b457 = call %struct.Memory* @routine_jne_.L_48b479(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b457, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_48b457, %struct.Memory** %MEMORY

  %loadBr_48b457 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48b457 = icmp eq i8 %loadBr_48b457, 1
  br i1 %cmpBr_48b457, label %block_.L_48b479, label %block_48b45d

block_48b45d:
  ; Code: movq $0x58350f, %rdi	 RIP: 48b45d	 Bytes: 10
  %loadMem_48b45d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b45d = call %struct.Memory* @routine_movq__0x58350f___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b45d)
  store %struct.Memory* %call_48b45d, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48b467	 Bytes: 2
  %loadMem_48b467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b467 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b467)
  store %struct.Memory* %call_48b467, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48b469	 Bytes: 5
  %loadMem1_48b469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48b469 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48b469, i64 -235193, i64 5, i64 5)
  store %struct.Memory* %call1_48b469, %struct.Memory** %MEMORY

  %loadMem2_48b469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b469 = load i64, i64* %3
  %call2_48b469 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48b469, %struct.Memory* %loadMem2_48b469)
  store %struct.Memory* %call2_48b469, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa4(%rbp)	 RIP: 48b46e	 Bytes: 6
  %loadMem_48b46e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b46e = call %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b46e)
  store %struct.Memory* %call_48b46e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48b580	 RIP: 48b474	 Bytes: 5
  %loadMem_48b474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b474 = call %struct.Memory* @routine_jmpq_.L_48b580(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b474, i64 268, i64 5)
  store %struct.Memory* %call_48b474, %struct.Memory** %MEMORY

  br label %block_.L_48b580

  ; Code: .L_48b479:	 RIP: 48b479	 Bytes: 0
block_.L_48b479:

  ; Code: movq $0xb0eff0, %rax	 RIP: 48b479	 Bytes: 10
  %loadMem_48b479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b479 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b479)
  store %struct.Memory* %call_48b479, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 48b483	 Bytes: 4
  %loadMem_48b483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b483 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b483)
  store %struct.Memory* %call_48b483, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 48b487	 Bytes: 7
  %loadMem_48b487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b487 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b487)
  store %struct.Memory* %call_48b487, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48b48e	 Bytes: 3
  %loadMem_48b48e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b48e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b48e)
  store %struct.Memory* %call_48b48e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x38(%rax)	 RIP: 48b491	 Bytes: 4
  %loadMem_48b491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b491 = call %struct.Memory* @routine_cmpl__0x0__0x38__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b491)
  store %struct.Memory* %call_48b491, %struct.Memory** %MEMORY

  ; Code: jne .L_48b4b7	 RIP: 48b495	 Bytes: 6
  %loadMem_48b495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b495 = call %struct.Memory* @routine_jne_.L_48b4b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b495, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_48b495, %struct.Memory** %MEMORY

  %loadBr_48b495 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48b495 = icmp eq i8 %loadBr_48b495, 1
  br i1 %cmpBr_48b495, label %block_.L_48b4b7, label %block_48b49b

block_48b49b:
  ; Code: movq $0x58352b, %rdi	 RIP: 48b49b	 Bytes: 10
  %loadMem_48b49b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b49b = call %struct.Memory* @routine_movq__0x58352b___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b49b)
  store %struct.Memory* %call_48b49b, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48b4a5	 Bytes: 2
  %loadMem_48b4a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b4a5 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b4a5)
  store %struct.Memory* %call_48b4a5, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48b4a7	 Bytes: 5
  %loadMem1_48b4a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48b4a7 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48b4a7, i64 -235255, i64 5, i64 5)
  store %struct.Memory* %call1_48b4a7, %struct.Memory** %MEMORY

  %loadMem2_48b4a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b4a7 = load i64, i64* %3
  %call2_48b4a7 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48b4a7, %struct.Memory* %loadMem2_48b4a7)
  store %struct.Memory* %call2_48b4a7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa8(%rbp)	 RIP: 48b4ac	 Bytes: 6
  %loadMem_48b4ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b4ac = call %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b4ac)
  store %struct.Memory* %call_48b4ac, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48b57b	 RIP: 48b4b2	 Bytes: 5
  %loadMem_48b4b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b4b2 = call %struct.Memory* @routine_jmpq_.L_48b57b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b4b2, i64 201, i64 5)
  store %struct.Memory* %call_48b4b2, %struct.Memory** %MEMORY

  br label %block_.L_48b57b

  ; Code: .L_48b4b7:	 RIP: 48b4b7	 Bytes: 0
block_.L_48b4b7:

  ; Code: movq $0xb0eff0, %rax	 RIP: 48b4b7	 Bytes: 10
  %loadMem_48b4b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b4b7 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b4b7)
  store %struct.Memory* %call_48b4b7, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 48b4c1	 Bytes: 4
  %loadMem_48b4c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b4c1 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b4c1)
  store %struct.Memory* %call_48b4c1, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 48b4c5	 Bytes: 7
  %loadMem_48b4c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b4c5 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b4c5)
  store %struct.Memory* %call_48b4c5, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48b4cc	 Bytes: 3
  %loadMem_48b4cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b4cc = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b4cc)
  store %struct.Memory* %call_48b4cc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, 0x38(%rax)	 RIP: 48b4cf	 Bytes: 4
  %loadMem_48b4cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b4cf = call %struct.Memory* @routine_cmpl__0x4__0x38__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b4cf)
  store %struct.Memory* %call_48b4cf, %struct.Memory** %MEMORY

  ; Code: jne .L_48b4f5	 RIP: 48b4d3	 Bytes: 6
  %loadMem_48b4d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b4d3 = call %struct.Memory* @routine_jne_.L_48b4f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b4d3, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_48b4d3, %struct.Memory** %MEMORY

  %loadBr_48b4d3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48b4d3 = icmp eq i8 %loadBr_48b4d3, 1
  br i1 %cmpBr_48b4d3, label %block_.L_48b4f5, label %block_48b4d9

block_48b4d9:
  ; Code: movq $0x583546, %rdi	 RIP: 48b4d9	 Bytes: 10
  %loadMem_48b4d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b4d9 = call %struct.Memory* @routine_movq__0x583546___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b4d9)
  store %struct.Memory* %call_48b4d9, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48b4e3	 Bytes: 2
  %loadMem_48b4e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b4e3 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b4e3)
  store %struct.Memory* %call_48b4e3, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48b4e5	 Bytes: 5
  %loadMem1_48b4e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48b4e5 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48b4e5, i64 -235317, i64 5, i64 5)
  store %struct.Memory* %call1_48b4e5, %struct.Memory** %MEMORY

  %loadMem2_48b4e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b4e5 = load i64, i64* %3
  %call2_48b4e5 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48b4e5, %struct.Memory* %loadMem2_48b4e5)
  store %struct.Memory* %call2_48b4e5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xac(%rbp)	 RIP: 48b4ea	 Bytes: 6
  %loadMem_48b4ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b4ea = call %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b4ea)
  store %struct.Memory* %call_48b4ea, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48b576	 RIP: 48b4f0	 Bytes: 5
  %loadMem_48b4f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b4f0 = call %struct.Memory* @routine_jmpq_.L_48b576(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b4f0, i64 134, i64 5)
  store %struct.Memory* %call_48b4f0, %struct.Memory** %MEMORY

  br label %block_.L_48b576

  ; Code: .L_48b4f5:	 RIP: 48b4f5	 Bytes: 0
block_.L_48b4f5:

  ; Code: movq $0xb0eff0, %rax	 RIP: 48b4f5	 Bytes: 10
  %loadMem_48b4f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b4f5 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b4f5)
  store %struct.Memory* %call_48b4f5, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 48b4ff	 Bytes: 4
  %loadMem_48b4ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b4ff = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b4ff)
  store %struct.Memory* %call_48b4ff, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 48b503	 Bytes: 7
  %loadMem_48b503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b503 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b503)
  store %struct.Memory* %call_48b503, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48b50a	 Bytes: 3
  %loadMem_48b50a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b50a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b50a)
  store %struct.Memory* %call_48b50a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, 0x38(%rax)	 RIP: 48b50d	 Bytes: 4
  %loadMem_48b50d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b50d = call %struct.Memory* @routine_cmpl__0x5__0x38__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b50d)
  store %struct.Memory* %call_48b50d, %struct.Memory** %MEMORY

  ; Code: jne .L_48b533	 RIP: 48b511	 Bytes: 6
  %loadMem_48b511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b511 = call %struct.Memory* @routine_jne_.L_48b533(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b511, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_48b511, %struct.Memory** %MEMORY

  %loadBr_48b511 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48b511 = icmp eq i8 %loadBr_48b511, 1
  br i1 %cmpBr_48b511, label %block_.L_48b533, label %block_48b517

block_48b517:
  ; Code: movq $0x583569, %rdi	 RIP: 48b517	 Bytes: 10
  %loadMem_48b517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b517 = call %struct.Memory* @routine_movq__0x583569___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b517)
  store %struct.Memory* %call_48b517, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48b521	 Bytes: 2
  %loadMem_48b521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b521 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b521)
  store %struct.Memory* %call_48b521, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48b523	 Bytes: 5
  %loadMem1_48b523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48b523 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48b523, i64 -235379, i64 5, i64 5)
  store %struct.Memory* %call1_48b523, %struct.Memory** %MEMORY

  %loadMem2_48b523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b523 = load i64, i64* %3
  %call2_48b523 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48b523, %struct.Memory* %loadMem2_48b523)
  store %struct.Memory* %call2_48b523, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xb0(%rbp)	 RIP: 48b528	 Bytes: 6
  %loadMem_48b528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b528 = call %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b528)
  store %struct.Memory* %call_48b528, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48b571	 RIP: 48b52e	 Bytes: 5
  %loadMem_48b52e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b52e = call %struct.Memory* @routine_jmpq_.L_48b571(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b52e, i64 67, i64 5)
  store %struct.Memory* %call_48b52e, %struct.Memory** %MEMORY

  br label %block_.L_48b571

  ; Code: .L_48b533:	 RIP: 48b533	 Bytes: 0
block_.L_48b533:

  ; Code: movq $0xb0eff0, %rax	 RIP: 48b533	 Bytes: 10
  %loadMem_48b533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b533 = call %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b533)
  store %struct.Memory* %call_48b533, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 48b53d	 Bytes: 4
  %loadMem_48b53d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b53d = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b53d)
  store %struct.Memory* %call_48b53d, %struct.Memory** %MEMORY

  ; Code: imulq $0x17c, %rcx, %rcx	 RIP: 48b541	 Bytes: 7
  %loadMem_48b541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b541 = call %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b541)
  store %struct.Memory* %call_48b541, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48b548	 Bytes: 3
  %loadMem_48b548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b548 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b548)
  store %struct.Memory* %call_48b548, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, 0x38(%rax)	 RIP: 48b54b	 Bytes: 4
  %loadMem_48b54b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b54b = call %struct.Memory* @routine_cmpl__0x3__0x38__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b54b)
  store %struct.Memory* %call_48b54b, %struct.Memory** %MEMORY

  ; Code: jne .L_48b56c	 RIP: 48b54f	 Bytes: 6
  %loadMem_48b54f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b54f = call %struct.Memory* @routine_jne_.L_48b56c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b54f, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_48b54f, %struct.Memory** %MEMORY

  %loadBr_48b54f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48b54f = icmp eq i8 %loadBr_48b54f, 1
  br i1 %cmpBr_48b54f, label %block_.L_48b56c, label %block_48b555

block_48b555:
  ; Code: movq $0x58358c, %rdi	 RIP: 48b555	 Bytes: 10
  %loadMem_48b555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b555 = call %struct.Memory* @routine_movq__0x58358c___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b555)
  store %struct.Memory* %call_48b555, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 48b55f	 Bytes: 2
  %loadMem_48b55f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b55f = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b55f)
  store %struct.Memory* %call_48b55f, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 48b561	 Bytes: 5
  %loadMem1_48b561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48b561 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48b561, i64 -235441, i64 5, i64 5)
  store %struct.Memory* %call1_48b561, %struct.Memory** %MEMORY

  %loadMem2_48b561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48b561 = load i64, i64* %3
  %call2_48b561 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_48b561, %struct.Memory* %loadMem2_48b561)
  store %struct.Memory* %call2_48b561, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xb4(%rbp)	 RIP: 48b566	 Bytes: 6
  %loadMem_48b566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b566 = call %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b566)
  store %struct.Memory* %call_48b566, %struct.Memory** %MEMORY

  ; Code: .L_48b56c:	 RIP: 48b56c	 Bytes: 0
  br label %block_.L_48b56c
block_.L_48b56c:

  ; Code: jmpq .L_48b571	 RIP: 48b56c	 Bytes: 5
  %loadMem_48b56c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b56c = call %struct.Memory* @routine_jmpq_.L_48b571(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b56c, i64 5, i64 5)
  store %struct.Memory* %call_48b56c, %struct.Memory** %MEMORY

  br label %block_.L_48b571

  ; Code: .L_48b571:	 RIP: 48b571	 Bytes: 0
block_.L_48b571:

  ; Code: jmpq .L_48b576	 RIP: 48b571	 Bytes: 5
  %loadMem_48b571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b571 = call %struct.Memory* @routine_jmpq_.L_48b576(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b571, i64 5, i64 5)
  store %struct.Memory* %call_48b571, %struct.Memory** %MEMORY

  br label %block_.L_48b576

  ; Code: .L_48b576:	 RIP: 48b576	 Bytes: 0
block_.L_48b576:

  ; Code: jmpq .L_48b57b	 RIP: 48b576	 Bytes: 5
  %loadMem_48b576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b576 = call %struct.Memory* @routine_jmpq_.L_48b57b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b576, i64 5, i64 5)
  store %struct.Memory* %call_48b576, %struct.Memory** %MEMORY

  br label %block_.L_48b57b

  ; Code: .L_48b57b:	 RIP: 48b57b	 Bytes: 0
block_.L_48b57b:

  ; Code: jmpq .L_48b580	 RIP: 48b57b	 Bytes: 5
  %loadMem_48b57b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b57b = call %struct.Memory* @routine_jmpq_.L_48b580(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b57b, i64 5, i64 5)
  store %struct.Memory* %call_48b57b, %struct.Memory** %MEMORY

  br label %block_.L_48b580

  ; Code: .L_48b580:	 RIP: 48b580	 Bytes: 0
block_.L_48b580:

  ; Code: addq $0xc0, %rsp	 RIP: 48b580	 Bytes: 7
  %loadMem_48b580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b580 = call %struct.Memory* @routine_addq__0xc0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b580)
  store %struct.Memory* %call_48b580, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 48b587	 Bytes: 1
  %loadMem_48b587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b587 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b587)
  store %struct.Memory* %call_48b587, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 48b588	 Bytes: 1
  %loadMem_48b588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48b588 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48b588)
  store %struct.Memory* %call_48b588, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_48b588
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

define %struct.Memory* @routine_subq__0xc0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 192)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = inttoptr i64 %3 to i32*
  %7 = load i32, i32* %6
  %8 = sext i32 %7 to i64
  %9 = shl i64 %4, 32
  %10 = ashr exact i64 %9, 32
  %11 = mul  i64 %8, %10
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %2, align 8
  %14 = shl i64 %11, 32
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19) #22
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 0, i8* %26, align 1
  %27 = lshr i32 %12, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %17, i8* %30, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_imull__0x14__MINUS0x4__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13, i64 20)
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

define %struct.Memory* @routine_addl__0x15___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 21)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_addl_MINUS0x8__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = zext i8 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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

define %struct.Memory* @routine_jne_.L_48ad1f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
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

define %struct.Memory* @routine_movq__0x58332f___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x58332f_type* @G__0x58332f to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_48b580(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x583348___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x583348_type* @G__0x583348 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movq__0x583366___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x583366_type* @G__0x583366 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movq__0x583360___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x583360_type* @G__0x583360 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x58335a___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G__0x58335a_type* @G__0x58335a to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movslq_MINUS0xc__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
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

define %struct.Memory* @routine_imulq__0x17c___r9___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R9
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %9, i64 380)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rcx___r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %12)
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

define %struct.Memory* @routine_addq__r9___r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R10
  %13 = load i64, i64* %R9
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %12, i64 %13)
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

define %struct.Memory* @routine_cmpl__0x1____r10_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R10
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 1)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5CMOVZI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %6 = load i8, i8* %5, align 1
  %7 = icmp ne i8 %6, 0
  %8 = load i64, i64* %2, align 8
  %9 = select i1 %7, i64 %3, i64 %8
  store i64 %9, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmoveq__r8___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5CMOVZI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movslq_MINUS0xc__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
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


define %struct.Memory* @routine_movq__rcx___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_addq__r8___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0xc__r9____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl_0x4__r9____r11d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R11D to i64*
  %13 = load i64, i64* %R9
  %14 = add i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_addq__r8___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to float*
  %6 = load float, float* %5
  %7 = fpext float %6 to double
  %8 = bitcast i8* %2 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtss2sd_0x8__rcx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
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


define %struct.Memory* @routine_movq__rdx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__r11d___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R11D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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




define %struct.Memory* @routine_movq__0x58339c___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x58339c_type* @G__0x58339c to i64))
  ret %struct.Memory* %11
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






define %struct.Memory* @routine_movq__rsi___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_movl_0x10__r9____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl_0x14__r9____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl_0x18__r9____r11d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R11D to i64*
  %13 = load i64, i64* %R9
  %14 = add i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_addq__r8___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x1c__rsi____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RSI
  %14 = add i64 %13, 28
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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






define %struct.Memory* @routine_movq__0xb0eff0___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0xb0eff0_type* @G__0xb0eff0 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_addq__r9___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %R9
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0x0__0x3c__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 60
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_jne_.L_48ae79(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__0x5833d6___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x5833d6_type* @G__0x5833d6 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_jmpq_.L_48af56(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x5833e8___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x5833e8_type* @G__0x5833e8 to i64))
  ret %struct.Memory* %11
}





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_cmpl__0x0__0x3c__rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %12, 60
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 5
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
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

define %struct.Memory* @routine_je_.L_48af42(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jle_.L_48aed9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x588988___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x588988_type* @G__0x588988 to i64))
  ret %struct.Memory* %11
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




define %struct.Memory* @routine_movl_0x3c__rdx__rcx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 60
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %19)
  ret %struct.Memory* %22
}










define %struct.Memory* @routine_movl_0x64__rax__rcx_4____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 100
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__esi__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_.result_to_string(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x5833f9___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x5833f9_type* @G__0x5833f9 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl_MINUS0x10__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0x1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 1)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_jmpq_.L_48ae94(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x583402___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x583402_type* @G__0x583402 to i64))
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










define %struct.Memory* @routine_cmpl__0x0__0x8c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 140
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_48af94(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__0x583405___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x583405_type* @G__0x583405 to i64))
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


define %struct.Memory* @routine_jmpq_.L_48b07a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x583418___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x583418_type* @G__0x583418 to i64))
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












define %struct.Memory* @routine_cmpl__0x0__0x8c__rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_48b066(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jle_.L_48aff7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_movl_0x8c__rdx__rcx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 140
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %19)
  ret %struct.Memory* %22
}










define %struct.Memory* @routine_movl_0xb4__rax__rcx_4____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 180
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__esi__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jmpq_.L_48afaf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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










define %struct.Memory* @routine_cmpl__0x0__0xdc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 220
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_48b0b8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__0x58342a___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x58342a_type* @G__0x58342a to i64))
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


define %struct.Memory* @routine_jmpq_.L_48b19e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x583443___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x583443_type* @G__0x583443 to i64))
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












define %struct.Memory* @routine_cmpl__0x0__0xdc__rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %12, 220
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_48b18a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jle_.L_48b11b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_movl_0xdc__rdx__rcx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 220
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %19)
  ret %struct.Memory* %22
}










define %struct.Memory* @routine_movl_0x104__rax__rcx_4____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 260
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__esi__MINUS0x64__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 100
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_MINUS0x64__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jmpq_.L_48b0d3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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










define %struct.Memory* @routine_cmpl__0x0__0x12c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 300
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_48b1dc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__0x58345b___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x58345b_type* @G__0x58345b to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_jmpq_.L_48b2c5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x583475___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x583475_type* @G__0x583475 to i64))
  ret %struct.Memory* %11
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












define %struct.Memory* @routine_cmpl__0x0__0x12c__rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %12, 300
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_48b2ae(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jle_.L_48b23f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_movl_0x12c__rdx__rcx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 300
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %19)
  ret %struct.Memory* %22
}










define %struct.Memory* @routine_movl_0x154__rax__rcx_4____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 340
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__esi__MINUS0x7c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 124
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_MINUS0x7c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 124
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_48b1f7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_je_.L_48b319(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x58348e___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x58348e_type* @G__0x58348e to i64))
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


define %struct.Memory* @routine_movq__0x58349c___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x58349c_type* @G__0x58349c to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_movl_0x24__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl_0x28__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq__0x5834b9___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x5834b9_type* @G__0x5834b9 to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movl_0x2c__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 140
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_addq__rdi___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RDI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0x0__0x30__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_48b3cf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x5834c5___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x5834c5_type* @G__0x5834c5 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_jmpq_.L_48b3e6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x5834d8___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x5834d8_type* @G__0x5834d8 to i64))
  ret %struct.Memory* %11
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










define %struct.Memory* @routine_cmpl__0x0__0x34__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_48b424(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x5834ea___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x5834ea_type* @G__0x5834ea to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 156
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_48b43b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x5834fd___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x5834fd_type* @G__0x5834fd to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_cmpl__0x1__0x38__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_48b479(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__0x58350f___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x58350f_type* @G__0x58350f to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 164
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_jne_.L_48b4b7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__0x58352b___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x58352b_type* @G__0x58352b to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 168
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_48b57b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_cmpl__0x4__0x38__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_48b4f5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__0x583546___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x583546_type* @G__0x583546 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 172
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_48b576(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_cmpl__0x5__0x38__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_48b533(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__0x583569___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x583569_type* @G__0x583569 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 176
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_48b571(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_cmpl__0x3__0x38__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_48b56c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__0x58358c___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x58358c_type* @G__0x58358c to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 180
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_addq__0xc0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 192)
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

