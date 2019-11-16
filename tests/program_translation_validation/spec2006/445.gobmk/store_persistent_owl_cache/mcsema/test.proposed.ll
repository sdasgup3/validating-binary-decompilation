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
declare %struct.Memory* @sub_44fa70.purge_persistent_owl_cache(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_415cb0.mark_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40f780.countlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40f840.findlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_413b00.chainlinks(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_450820.print_persistent_owl_cache_entry(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x7ae438_type = type <{ [4 x i8] }>
@G_0x7ae438= global %G_0x7ae438_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xab0f24_type = type <{ [4 x i8] }>
@G_0xab0f24= global %G_0xab0f24_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xad1720_type = type <{ [4 x i8] }>
@G_0xad1720= global %G_0xad1720_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xafdfb0_type = type <{ [4 x i8] }>
@G_0xafdfb0= global %G_0xafdfb0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb54ce4_type = type <{ [1 x i8] }>
@G_0xb54ce4= global %G_0xb54ce4_type <{ [1 x i8] c"\00" }>
%G__0x57a100_type = type <{ [8 x i8] }>
@G__0x57a100= global %G__0x57a100_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57eec5_type = type <{ [8 x i8] }>
@G__0x57eec5= global %G__0x57eec5_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57f0c2_type = type <{ [8 x i8] }>
@G__0x57f0c2= global %G__0x57f0c2_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57f0de_type = type <{ [8 x i8] }>
@G__0x57f0de= global %G__0x57f0de_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xad1730_type = type <{ [8 x i8] }>
@G__0xad1730= global %G__0xad1730_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @store_persistent_owl_cache(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .store_persistent_owl_cache:	 RIP: 44feb0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 44feb0	 Bytes: 1
  %loadMem_44feb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44feb0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44feb0)
  store %struct.Memory* %call_44feb0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 44feb1	 Bytes: 3
  %loadMem_44feb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44feb1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44feb1)
  store %struct.Memory* %call_44feb1, %struct.Memory** %MEMORY

  ; Code: pushq %r15	 RIP: 44feb4	 Bytes: 2
  %loadMem_44feb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44feb4 = call %struct.Memory* @routine_pushq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44feb4)
  store %struct.Memory* %call_44feb4, %struct.Memory** %MEMORY

  ; Code: pushq %r14	 RIP: 44feb6	 Bytes: 2
  %loadMem_44feb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44feb6 = call %struct.Memory* @routine_pushq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44feb6)
  store %struct.Memory* %call_44feb6, %struct.Memory** %MEMORY

  ; Code: pushq %rbx	 RIP: 44feb8	 Bytes: 1
  %loadMem_44feb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44feb8 = call %struct.Memory* @routine_pushq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44feb8)
  store %struct.Memory* %call_44feb8, %struct.Memory** %MEMORY

  ; Code: subq $0x4a8, %rsp	 RIP: 44feb9	 Bytes: 7
  %loadMem_44feb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44feb9 = call %struct.Memory* @routine_subq__0x4a8___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44feb9)
  store %struct.Memory* %call_44feb9, %struct.Memory** %MEMORY

  ; Code: movl 0x30(%rbp), %eax	 RIP: 44fec0	 Bytes: 3
  %loadMem_44fec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44fec0 = call %struct.Memory* @routine_movl_0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44fec0)
  store %struct.Memory* %call_44fec0, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rbp), %r10	 RIP: 44fec3	 Bytes: 4
  %loadMem_44fec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44fec3 = call %struct.Memory* @routine_movq_0x28__rbp____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44fec3)
  store %struct.Memory* %call_44fec3, %struct.Memory** %MEMORY

  ; Code: movl 0x20(%rbp), %r11d	 RIP: 44fec7	 Bytes: 4
  %loadMem_44fec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44fec7 = call %struct.Memory* @routine_movl_0x20__rbp____r11d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44fec7)
  store %struct.Memory* %call_44fec7, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rbp), %ebx	 RIP: 44fecb	 Bytes: 3
  %loadMem_44fecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44fecb = call %struct.Memory* @routine_movl_0x18__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44fecb)
  store %struct.Memory* %call_44fecb, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rbp), %r14d	 RIP: 44fece	 Bytes: 4
  %loadMem_44fece = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44fece = call %struct.Memory* @routine_movl_0x10__rbp____r14d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44fece)
  store %struct.Memory* %call_44fece, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %r15d	 RIP: 44fed2	 Bytes: 6
  %loadMem_44fed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44fed2 = call %struct.Memory* @routine_movl__0x3___r15d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44fed2)
  store %struct.Memory* %call_44fed2, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x1c(%rbp)	 RIP: 44fed8	 Bytes: 3
  %loadMem_44fed8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44fed8 = call %struct.Memory* @routine_movl__edi__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44fed8)
  store %struct.Memory* %call_44fed8, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x20(%rbp)	 RIP: 44fedb	 Bytes: 3
  %loadMem_44fedb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44fedb = call %struct.Memory* @routine_movl__esi__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44fedb)
  store %struct.Memory* %call_44fedb, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x24(%rbp)	 RIP: 44fede	 Bytes: 3
  %loadMem_44fede = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44fede = call %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44fede)
  store %struct.Memory* %call_44fede, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 44fee1	 Bytes: 3
  %loadMem_44fee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44fee1 = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44fee1)
  store %struct.Memory* %call_44fee1, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x2c(%rbp)	 RIP: 44fee4	 Bytes: 4
  %loadMem_44fee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44fee4 = call %struct.Memory* @routine_movl__r8d__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44fee4)
  store %struct.Memory* %call_44fee4, %struct.Memory** %MEMORY

  ; Code: movl %r9d, -0x30(%rbp)	 RIP: 44fee8	 Bytes: 4
  %loadMem_44fee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44fee8 = call %struct.Memory* @routine_movl__r9d__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44fee8)
  store %struct.Memory* %call_44fee8, %struct.Memory** %MEMORY

  ; Code: movl %r14d, -0x34(%rbp)	 RIP: 44feec	 Bytes: 4
  %loadMem_44feec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44feec = call %struct.Memory* @routine_movl__r14d__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44feec)
  store %struct.Memory* %call_44feec, %struct.Memory** %MEMORY

  ; Code: movl %ebx, -0x38(%rbp)	 RIP: 44fef0	 Bytes: 3
  %loadMem_44fef0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44fef0 = call %struct.Memory* @routine_movl__ebx__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44fef0)
  store %struct.Memory* %call_44fef0, %struct.Memory** %MEMORY

  ; Code: movl %r11d, -0x3c(%rbp)	 RIP: 44fef3	 Bytes: 4
  %loadMem_44fef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44fef3 = call %struct.Memory* @routine_movl__r11d__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44fef3)
  store %struct.Memory* %call_44fef3, %struct.Memory** %MEMORY

  ; Code: movq %r10, -0x48(%rbp)	 RIP: 44fef7	 Bytes: 4
  %loadMem_44fef7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44fef7 = call %struct.Memory* @routine_movq__r10__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44fef7)
  store %struct.Memory* %call_44fef7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 44fefb	 Bytes: 3
  %loadMem_44fefb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44fefb = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44fefb)
  store %struct.Memory* %call_44fefb, %struct.Memory** %MEMORY

  ; Code: subl -0x4c(%rbp), %r15d	 RIP: 44fefe	 Bytes: 4
  %loadMem_44fefe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44fefe = call %struct.Memory* @routine_subl_MINUS0x4c__rbp____r15d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44fefe)
  store %struct.Memory* %call_44fefe, %struct.Memory** %MEMORY

  ; Code: movl %r15d, -0x1f0(%rbp)	 RIP: 44ff02	 Bytes: 7
  %loadMem_44ff02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ff02 = call %struct.Memory* @routine_movl__r15d__MINUS0x1f0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ff02)
  store %struct.Memory* %call_44ff02, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb54ce4	 RIP: 44ff09	 Bytes: 8
  %loadMem_44ff09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ff09 = call %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ff09)
  store %struct.Memory* %call_44ff09, %struct.Memory** %MEMORY

  ; Code: jne .L_44ff1c	 RIP: 44ff11	 Bytes: 6
  %loadMem_44ff11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ff11 = call %struct.Memory* @routine_jne_.L_44ff1c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ff11, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_44ff11, %struct.Memory** %MEMORY

  %loadBr_44ff11 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ff11 = icmp eq i8 %loadBr_44ff11, 1
  br i1 %cmpBr_44ff11, label %block_.L_44ff1c, label %block_44ff17

block_44ff17:
  ; Code: jmpq .L_44ff44	 RIP: 44ff17	 Bytes: 5
  %loadMem_44ff17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ff17 = call %struct.Memory* @routine_jmpq_.L_44ff44(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ff17, i64 45, i64 5)
  store %struct.Memory* %call_44ff17, %struct.Memory** %MEMORY

  br label %block_.L_44ff44

  ; Code: .L_44ff1c:	 RIP: 44ff1c	 Bytes: 0
block_.L_44ff1c:

  ; Code: movq $0x57eec5, %rdi	 RIP: 44ff1c	 Bytes: 10
  %loadMem_44ff1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ff1c = call %struct.Memory* @routine_movq__0x57eec5___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ff1c)
  store %struct.Memory* %call_44ff1c, %struct.Memory** %MEMORY

  ; Code: movl $0x2d2, %esi	 RIP: 44ff26	 Bytes: 5
  %loadMem_44ff26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ff26 = call %struct.Memory* @routine_movl__0x2d2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ff26)
  store %struct.Memory* %call_44ff26, %struct.Memory** %MEMORY

  ; Code: movq $0x57a100, %rdx	 RIP: 44ff2b	 Bytes: 10
  %loadMem_44ff2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ff2b = call %struct.Memory* @routine_movq__0x57a100___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ff2b)
  store %struct.Memory* %call_44ff2b, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 44ff35	 Bytes: 5
  %loadMem_44ff35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ff35 = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ff35)
  store %struct.Memory* %call_44ff35, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 44ff3a	 Bytes: 2
  %loadMem_44ff3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ff3a = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ff3a)
  store %struct.Memory* %call_44ff3a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 44ff3c	 Bytes: 3
  %loadMem_44ff3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ff3c = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ff3c)
  store %struct.Memory* %call_44ff3c, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 44ff3f	 Bytes: 5
  %loadMem1_44ff3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44ff3f = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44ff3f, i64 8529, i64 5, i64 5)
  store %struct.Memory* %call1_44ff3f, %struct.Memory** %MEMORY

  %loadMem2_44ff3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ff3f = load i64, i64* %3
  %call2_44ff3f = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_44ff3f, %struct.Memory* %loadMem2_44ff3f)
  store %struct.Memory* %call2_44ff3f, %struct.Memory** %MEMORY

  ; Code: .L_44ff44:	 RIP: 44ff44	 Bytes: 0
  br label %block_.L_44ff44
block_.L_44ff44:

  ; Code: cmpl $0x96, 0xad1720	 RIP: 44ff44	 Bytes: 11
  %loadMem_44ff44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ff44 = call %struct.Memory* @routine_cmpl__0x96__0xad1720(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ff44)
  store %struct.Memory* %call_44ff44, %struct.Memory** %MEMORY

  ; Code: jne .L_44ff5a	 RIP: 44ff4f	 Bytes: 6
  %loadMem_44ff4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ff4f = call %struct.Memory* @routine_jne_.L_44ff5a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ff4f, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_44ff4f, %struct.Memory** %MEMORY

  %loadBr_44ff4f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ff4f = icmp eq i8 %loadBr_44ff4f, 1
  br i1 %cmpBr_44ff4f, label %block_.L_44ff5a, label %block_44ff55

block_44ff55:
  ; Code: callq .purge_persistent_owl_cache	 RIP: 44ff55	 Bytes: 5
  %loadMem1_44ff55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44ff55 = call %struct.Memory* @routine_callq_.purge_persistent_owl_cache(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44ff55, i64 -1253, i64 5, i64 5)
  store %struct.Memory* %call1_44ff55, %struct.Memory** %MEMORY

  %loadMem2_44ff55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ff55 = load i64, i64* %3
  %call2_44ff55 = call %struct.Memory* @sub_44fa70.purge_persistent_owl_cache(%struct.State* %0, i64  %loadPC_44ff55, %struct.Memory* %loadMem2_44ff55)
  store %struct.Memory* %call2_44ff55, %struct.Memory** %MEMORY

  ; Code: .L_44ff5a:	 RIP: 44ff5a	 Bytes: 0
  br label %block_.L_44ff5a
block_.L_44ff5a:

  ; Code: cmpl $0x96, 0xad1720	 RIP: 44ff5a	 Bytes: 11
  %loadMem_44ff5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ff5a = call %struct.Memory* @routine_cmpl__0x96__0xad1720(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ff5a)
  store %struct.Memory* %call_44ff5a, %struct.Memory** %MEMORY

  ; Code: jne .L_44ffa1	 RIP: 44ff65	 Bytes: 6
  %loadMem_44ff65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ff65 = call %struct.Memory* @routine_jne_.L_44ffa1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ff65, i8* %BRANCH_TAKEN, i64 60, i64 6, i64 6)
  store %struct.Memory* %call_44ff65, %struct.Memory** %MEMORY

  %loadBr_44ff65 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ff65 = icmp eq i8 %loadBr_44ff65, 1
  br i1 %cmpBr_44ff65, label %block_.L_44ffa1, label %block_44ff6b

block_44ff6b:
  ; Code: movl 0xab0f24, %eax	 RIP: 44ff6b	 Bytes: 7
  %loadMem_44ff6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ff6b = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ff6b)
  store %struct.Memory* %call_44ff6b, %struct.Memory** %MEMORY

  ; Code: andl $0x1000, %eax	 RIP: 44ff72	 Bytes: 5
  %loadMem_44ff72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ff72 = call %struct.Memory* @routine_andl__0x1000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ff72)
  store %struct.Memory* %call_44ff72, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44ff77	 Bytes: 3
  %loadMem_44ff77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ff77 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ff77)
  store %struct.Memory* %call_44ff77, %struct.Memory** %MEMORY

  ; Code: jne .L_44ff85	 RIP: 44ff7a	 Bytes: 6
  %loadMem_44ff7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ff7a = call %struct.Memory* @routine_jne_.L_44ff85(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ff7a, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_44ff7a, %struct.Memory** %MEMORY

  %loadBr_44ff7a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44ff7a = icmp eq i8 %loadBr_44ff7a, 1
  br i1 %cmpBr_44ff7a, label %block_.L_44ff85, label %block_44ff80

block_44ff80:
  ; Code: jmpq .L_44ff9c	 RIP: 44ff80	 Bytes: 5
  %loadMem_44ff80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ff80 = call %struct.Memory* @routine_jmpq_.L_44ff9c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ff80, i64 28, i64 5)
  store %struct.Memory* %call_44ff80, %struct.Memory** %MEMORY

  br label %block_.L_44ff9c

  ; Code: .L_44ff85:	 RIP: 44ff85	 Bytes: 0
block_.L_44ff85:

  ; Code: movq $0x57f0c2, %rdi	 RIP: 44ff85	 Bytes: 10
  %loadMem_44ff85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ff85 = call %struct.Memory* @routine_movq__0x57f0c2___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ff85)
  store %struct.Memory* %call_44ff85, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 44ff8f	 Bytes: 2
  %loadMem_44ff8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ff8f = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ff8f)
  store %struct.Memory* %call_44ff8f, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 44ff91	 Bytes: 5
  %loadMem1_44ff91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44ff91 = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44ff91, i64 7711, i64 5, i64 5)
  store %struct.Memory* %call1_44ff91, %struct.Memory** %MEMORY

  %loadMem2_44ff91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44ff91 = load i64, i64* %3
  %call2_44ff91 = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_44ff91, %struct.Memory* %loadMem2_44ff91)
  store %struct.Memory* %call2_44ff91, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4b0(%rbp)	 RIP: 44ff96	 Bytes: 6
  %loadMem_44ff96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ff96 = call %struct.Memory* @routine_movl__eax__MINUS0x4b0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ff96)
  store %struct.Memory* %call_44ff96, %struct.Memory** %MEMORY

  ; Code: .L_44ff9c:	 RIP: 44ff9c	 Bytes: 0
  br label %block_.L_44ff9c
block_.L_44ff9c:

  ; Code: jmpq .L_450803	 RIP: 44ff9c	 Bytes: 5
  %loadMem_44ff9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ff9c = call %struct.Memory* @routine_jmpq_.L_450803(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ff9c, i64 2151, i64 5)
  store %struct.Memory* %call_44ff9c, %struct.Memory** %MEMORY

  br label %block_.L_450803

  ; Code: .L_44ffa1:	 RIP: 44ffa1	 Bytes: 0
block_.L_44ffa1:

  ; Code: movq $0xad1730, %rax	 RIP: 44ffa1	 Bytes: 10
  %loadMem_44ffa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ffa1 = call %struct.Memory* @routine_movq__0xad1730___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ffa1)
  store %struct.Memory* %call_44ffa1, %struct.Memory** %MEMORY

  ; Code: movl 0x7ae438, %ecx	 RIP: 44ffab	 Bytes: 7
  %loadMem_44ffab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ffab = call %struct.Memory* @routine_movl_0x7ae438___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ffab)
  store %struct.Memory* %call_44ffab, %struct.Memory** %MEMORY

  ; Code: movslq 0xad1720, %rdx	 RIP: 44ffb2	 Bytes: 8
  %loadMem_44ffb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ffb2 = call %struct.Memory* @routine_movslq_0xad1720___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ffb2)
  store %struct.Memory* %call_44ffb2, %struct.Memory** %MEMORY

  ; Code: imulq $0x1bc, %rdx, %rdx	 RIP: 44ffba	 Bytes: 7
  %loadMem_44ffba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ffba = call %struct.Memory* @routine_imulq__0x1bc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ffba)
  store %struct.Memory* %call_44ffba, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 44ffc1	 Bytes: 3
  %loadMem_44ffc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ffc1 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ffc1)
  store %struct.Memory* %call_44ffc1, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 44ffc4	 Bytes: 3
  %loadMem_44ffc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ffc4 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ffc4)
  store %struct.Memory* %call_44ffc4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rsi)	 RIP: 44ffc7	 Bytes: 2
  %loadMem_44ffc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ffc7 = call %struct.Memory* @routine_movl__ecx____rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ffc7)
  store %struct.Memory* %call_44ffc7, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 44ffc9	 Bytes: 3
  %loadMem_44ffc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ffc9 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ffc9)
  store %struct.Memory* %call_44ffc9, %struct.Memory** %MEMORY

  ; Code: movslq 0xad1720, %rdx	 RIP: 44ffcc	 Bytes: 8
  %loadMem_44ffcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ffcc = call %struct.Memory* @routine_movslq_0xad1720___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ffcc)
  store %struct.Memory* %call_44ffcc, %struct.Memory** %MEMORY

  ; Code: imulq $0x1bc, %rdx, %rdx	 RIP: 44ffd4	 Bytes: 7
  %loadMem_44ffd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ffd4 = call %struct.Memory* @routine_imulq__0x1bc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ffd4)
  store %struct.Memory* %call_44ffd4, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 44ffdb	 Bytes: 3
  %loadMem_44ffdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ffdb = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ffdb)
  store %struct.Memory* %call_44ffdb, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 44ffde	 Bytes: 3
  %loadMem_44ffde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ffde = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ffde)
  store %struct.Memory* %call_44ffde, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x19c(%rsi)	 RIP: 44ffe1	 Bytes: 6
  %loadMem_44ffe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ffe1 = call %struct.Memory* @routine_movl__ecx__0x19c__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ffe1)
  store %struct.Memory* %call_44ffe1, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 44ffe7	 Bytes: 3
  %loadMem_44ffe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ffe7 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ffe7)
  store %struct.Memory* %call_44ffe7, %struct.Memory** %MEMORY

  ; Code: movslq 0xad1720, %rdx	 RIP: 44ffea	 Bytes: 8
  %loadMem_44ffea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ffea = call %struct.Memory* @routine_movslq_0xad1720___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ffea)
  store %struct.Memory* %call_44ffea, %struct.Memory** %MEMORY

  ; Code: imulq $0x1bc, %rdx, %rdx	 RIP: 44fff2	 Bytes: 7
  %loadMem_44fff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44fff2 = call %struct.Memory* @routine_imulq__0x1bc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44fff2)
  store %struct.Memory* %call_44fff2, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 44fff9	 Bytes: 3
  %loadMem_44fff9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44fff9 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44fff9)
  store %struct.Memory* %call_44fff9, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 44fffc	 Bytes: 3
  %loadMem_44fffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44fffc = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44fffc)
  store %struct.Memory* %call_44fffc, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1a0(%rsi)	 RIP: 44ffff	 Bytes: 6
  %loadMem_44ffff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44ffff = call %struct.Memory* @routine_movl__ecx__0x1a0__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44ffff)
  store %struct.Memory* %call_44ffff, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 450005	 Bytes: 3
  %loadMem_450005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450005 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450005)
  store %struct.Memory* %call_450005, %struct.Memory** %MEMORY

  ; Code: movslq 0xad1720, %rdx	 RIP: 450008	 Bytes: 8
  %loadMem_450008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450008 = call %struct.Memory* @routine_movslq_0xad1720___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450008)
  store %struct.Memory* %call_450008, %struct.Memory** %MEMORY

  ; Code: imulq $0x1bc, %rdx, %rdx	 RIP: 450010	 Bytes: 7
  %loadMem_450010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450010 = call %struct.Memory* @routine_imulq__0x1bc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450010)
  store %struct.Memory* %call_450010, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 450017	 Bytes: 3
  %loadMem_450017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450017 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450017)
  store %struct.Memory* %call_450017, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 45001a	 Bytes: 3
  %loadMem_45001a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45001a = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45001a)
  store %struct.Memory* %call_45001a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1a4(%rsi)	 RIP: 45001d	 Bytes: 6
  %loadMem_45001d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45001d = call %struct.Memory* @routine_movl__ecx__0x1a4__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45001d)
  store %struct.Memory* %call_45001d, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 450023	 Bytes: 3
  %loadMem_450023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450023 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450023)
  store %struct.Memory* %call_450023, %struct.Memory** %MEMORY

  ; Code: movslq 0xad1720, %rdx	 RIP: 450026	 Bytes: 8
  %loadMem_450026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450026 = call %struct.Memory* @routine_movslq_0xad1720___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450026)
  store %struct.Memory* %call_450026, %struct.Memory** %MEMORY

  ; Code: imulq $0x1bc, %rdx, %rdx	 RIP: 45002e	 Bytes: 7
  %loadMem_45002e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45002e = call %struct.Memory* @routine_imulq__0x1bc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45002e)
  store %struct.Memory* %call_45002e, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 450035	 Bytes: 3
  %loadMem_450035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450035 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450035)
  store %struct.Memory* %call_450035, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 450038	 Bytes: 3
  %loadMem_450038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450038 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450038)
  store %struct.Memory* %call_450038, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1a8(%rsi)	 RIP: 45003b	 Bytes: 6
  %loadMem_45003b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45003b = call %struct.Memory* @routine_movl__ecx__0x1a8__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45003b)
  store %struct.Memory* %call_45003b, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %ecx	 RIP: 450041	 Bytes: 3
  %loadMem_450041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450041 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450041)
  store %struct.Memory* %call_450041, %struct.Memory** %MEMORY

  ; Code: movslq 0xad1720, %rdx	 RIP: 450044	 Bytes: 8
  %loadMem_450044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450044 = call %struct.Memory* @routine_movslq_0xad1720___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450044)
  store %struct.Memory* %call_450044, %struct.Memory** %MEMORY

  ; Code: imulq $0x1bc, %rdx, %rdx	 RIP: 45004c	 Bytes: 7
  %loadMem_45004c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45004c = call %struct.Memory* @routine_imulq__0x1bc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45004c)
  store %struct.Memory* %call_45004c, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 450053	 Bytes: 3
  %loadMem_450053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450053 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450053)
  store %struct.Memory* %call_450053, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 450056	 Bytes: 3
  %loadMem_450056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450056 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450056)
  store %struct.Memory* %call_450056, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1ac(%rsi)	 RIP: 450059	 Bytes: 6
  %loadMem_450059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450059 = call %struct.Memory* @routine_movl__ecx__0x1ac__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450059)
  store %struct.Memory* %call_450059, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %ecx	 RIP: 45005f	 Bytes: 3
  %loadMem_45005f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45005f = call %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45005f)
  store %struct.Memory* %call_45005f, %struct.Memory** %MEMORY

  ; Code: movslq 0xad1720, %rdx	 RIP: 450062	 Bytes: 8
  %loadMem_450062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450062 = call %struct.Memory* @routine_movslq_0xad1720___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450062)
  store %struct.Memory* %call_450062, %struct.Memory** %MEMORY

  ; Code: imulq $0x1bc, %rdx, %rdx	 RIP: 45006a	 Bytes: 7
  %loadMem_45006a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45006a = call %struct.Memory* @routine_imulq__0x1bc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45006a)
  store %struct.Memory* %call_45006a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 450071	 Bytes: 3
  %loadMem_450071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450071 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450071)
  store %struct.Memory* %call_450071, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 450074	 Bytes: 3
  %loadMem_450074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450074 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450074)
  store %struct.Memory* %call_450074, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1b0(%rsi)	 RIP: 450077	 Bytes: 6
  %loadMem_450077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450077 = call %struct.Memory* @routine_movl__ecx__0x1b0__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450077)
  store %struct.Memory* %call_450077, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %ecx	 RIP: 45007d	 Bytes: 3
  %loadMem_45007d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45007d = call %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45007d)
  store %struct.Memory* %call_45007d, %struct.Memory** %MEMORY

  ; Code: movslq 0xad1720, %rdx	 RIP: 450080	 Bytes: 8
  %loadMem_450080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450080 = call %struct.Memory* @routine_movslq_0xad1720___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450080)
  store %struct.Memory* %call_450080, %struct.Memory** %MEMORY

  ; Code: imulq $0x1bc, %rdx, %rdx	 RIP: 450088	 Bytes: 7
  %loadMem_450088 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450088 = call %struct.Memory* @routine_imulq__0x1bc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450088)
  store %struct.Memory* %call_450088, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 45008f	 Bytes: 3
  %loadMem_45008f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45008f = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45008f)
  store %struct.Memory* %call_45008f, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 450092	 Bytes: 3
  %loadMem_450092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450092 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450092)
  store %struct.Memory* %call_450092, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1b4(%rsi)	 RIP: 450095	 Bytes: 6
  %loadMem_450095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450095 = call %struct.Memory* @routine_movl__ecx__0x1b4__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450095)
  store %struct.Memory* %call_450095, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 45009b	 Bytes: 3
  %loadMem_45009b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45009b = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45009b)
  store %struct.Memory* %call_45009b, %struct.Memory** %MEMORY

  ; Code: movslq 0xad1720, %rdx	 RIP: 45009e	 Bytes: 8
  %loadMem_45009e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45009e = call %struct.Memory* @routine_movslq_0xad1720___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45009e)
  store %struct.Memory* %call_45009e, %struct.Memory** %MEMORY

  ; Code: imulq $0x1bc, %rdx, %rdx	 RIP: 4500a6	 Bytes: 7
  %loadMem_4500a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4500a6 = call %struct.Memory* @routine_imulq__0x1bc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4500a6)
  store %struct.Memory* %call_4500a6, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4500ad	 Bytes: 3
  %loadMem_4500ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4500ad = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4500ad)
  store %struct.Memory* %call_4500ad, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 4500b0	 Bytes: 3
  %loadMem_4500b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4500b0 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4500b0)
  store %struct.Memory* %call_4500b0, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1b8(%rsi)	 RIP: 4500b3	 Bytes: 6
  %loadMem_4500b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4500b3 = call %struct.Memory* @routine_movl__ecx__0x1b8__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4500b3)
  store %struct.Memory* %call_4500b3, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %ecx	 RIP: 4500b9	 Bytes: 3
  %loadMem_4500b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4500b9 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4500b9)
  store %struct.Memory* %call_4500b9, %struct.Memory** %MEMORY

  ; Code: movslq 0xad1720, %rdx	 RIP: 4500bc	 Bytes: 8
  %loadMem_4500bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4500bc = call %struct.Memory* @routine_movslq_0xad1720___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4500bc)
  store %struct.Memory* %call_4500bc, %struct.Memory** %MEMORY

  ; Code: imulq $0x1bc, %rdx, %rdx	 RIP: 4500c4	 Bytes: 7
  %loadMem_4500c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4500c4 = call %struct.Memory* @routine_imulq__0x1bc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4500c4)
  store %struct.Memory* %call_4500c4, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4500cb	 Bytes: 3
  %loadMem_4500cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4500cb = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4500cb)
  store %struct.Memory* %call_4500cb, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 4500ce	 Bytes: 3
  %loadMem_4500ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4500ce = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4500ce)
  store %struct.Memory* %call_4500ce, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x198(%rsi)	 RIP: 4500d1	 Bytes: 6
  %loadMem_4500d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4500d1 = call %struct.Memory* @routine_movl__ecx__0x198__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4500d1)
  store %struct.Memory* %call_4500d1, %struct.Memory** %MEMORY

  ; Code: movl 0xafdfb0, %ecx	 RIP: 4500d7	 Bytes: 7
  %loadMem_4500d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4500d7 = call %struct.Memory* @routine_movl_0xafdfb0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4500d7)
  store %struct.Memory* %call_4500d7, %struct.Memory** %MEMORY

  ; Code: movslq 0xad1720, %rdx	 RIP: 4500de	 Bytes: 8
  %loadMem_4500de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4500de = call %struct.Memory* @routine_movslq_0xad1720___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4500de)
  store %struct.Memory* %call_4500de, %struct.Memory** %MEMORY

  ; Code: imulq $0x1bc, %rdx, %rdx	 RIP: 4500e6	 Bytes: 7
  %loadMem_4500e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4500e6 = call %struct.Memory* @routine_imulq__0x1bc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4500e6)
  store %struct.Memory* %call_4500e6, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4500ed	 Bytes: 3
  %loadMem_4500ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4500ed = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4500ed)
  store %struct.Memory* %call_4500ed, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x194(%rax)	 RIP: 4500f0	 Bytes: 6
  %loadMem_4500f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4500f0 = call %struct.Memory* @routine_movl__ecx__0x194__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4500f0)
  store %struct.Memory* %call_4500f0, %struct.Memory** %MEMORY

  ; Code: movl $0x15, -0x1e4(%rbp)	 RIP: 4500f6	 Bytes: 10
  %loadMem_4500f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4500f6 = call %struct.Memory* @routine_movl__0x15__MINUS0x1e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4500f6)
  store %struct.Memory* %call_4500f6, %struct.Memory** %MEMORY

  ; Code: .L_450100:	 RIP: 450100	 Bytes: 0
  br label %block_.L_450100
block_.L_450100:

  ; Code: cmpl $0x190, -0x1e4(%rbp)	 RIP: 450100	 Bytes: 10
  %loadMem_450100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450100 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x1e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450100)
  store %struct.Memory* %call_450100, %struct.Memory** %MEMORY

  ; Code: jge .L_450171	 RIP: 45010a	 Bytes: 6
  %loadMem_45010a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45010a = call %struct.Memory* @routine_jge_.L_450171(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45010a, i8* %BRANCH_TAKEN, i64 103, i64 6, i64 6)
  store %struct.Memory* %call_45010a, %struct.Memory** %MEMORY

  %loadBr_45010a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45010a = icmp eq i8 %loadBr_45010a, 1
  br i1 %cmpBr_45010a, label %block_.L_450171, label %block_450110

block_450110:
  ; Code: movslq -0x1e4(%rbp), %rax	 RIP: 450110	 Bytes: 7
  %loadMem_450110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450110 = call %struct.Memory* @routine_movslq_MINUS0x1e4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450110)
  store %struct.Memory* %call_450110, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 450117	 Bytes: 8
  %loadMem_450117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450117 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450117)
  store %struct.Memory* %call_450117, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 45011f	 Bytes: 3
  %loadMem_45011f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45011f = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45011f)
  store %struct.Memory* %call_45011f, %struct.Memory** %MEMORY

  ; Code: je .L_450158	 RIP: 450122	 Bytes: 6
  %loadMem_450122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450122 = call %struct.Memory* @routine_je_.L_450158(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450122, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_450122, %struct.Memory** %MEMORY

  %loadBr_450122 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450122 = icmp eq i8 %loadBr_450122, 1
  br i1 %cmpBr_450122, label %block_.L_450158, label %block_450128

block_450128:
  ; Code: movq -0x48(%rbp), %rax	 RIP: 450128	 Bytes: 4
  %loadMem_450128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450128 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450128)
  store %struct.Memory* %call_450128, %struct.Memory** %MEMORY

  ; Code: movslq -0x1e4(%rbp), %rcx	 RIP: 45012c	 Bytes: 7
  %loadMem_45012c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45012c = call %struct.Memory* @routine_movslq_MINUS0x1e4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45012c)
  store %struct.Memory* %call_45012c, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 450133	 Bytes: 4
  %loadMem_450133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450133 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450133)
  store %struct.Memory* %call_450133, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 450137	 Bytes: 3
  %loadMem_450137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450137 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450137)
  store %struct.Memory* %call_450137, %struct.Memory** %MEMORY

  ; Code: setne %sil	 RIP: 45013a	 Bytes: 4
  %loadMem_45013a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45013a = call %struct.Memory* @routine_setne__sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45013a)
  store %struct.Memory* %call_45013a, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %sil	 RIP: 45013e	 Bytes: 4
  %loadMem_45013e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45013e = call %struct.Memory* @routine_andb__0x1___sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45013e)
  store %struct.Memory* %call_45013e, %struct.Memory** %MEMORY

  ; Code: movzbl %sil, %edx	 RIP: 450142	 Bytes: 4
  %loadMem_450142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450142 = call %struct.Memory* @routine_movzbl__sil___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450142)
  store %struct.Memory* %call_450142, %struct.Memory** %MEMORY

  ; Code: movb %dl, %sil	 RIP: 450146	 Bytes: 3
  %loadMem_450146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450146 = call %struct.Memory* @routine_movb__dl___sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450146)
  store %struct.Memory* %call_450146, %struct.Memory** %MEMORY

  ; Code: movslq -0x1e4(%rbp), %rax	 RIP: 450149	 Bytes: 7
  %loadMem_450149 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450149 = call %struct.Memory* @routine_movslq_MINUS0x1e4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450149)
  store %struct.Memory* %call_450149, %struct.Memory** %MEMORY

  ; Code: movb %sil, -0x1e0(%rbp,%rax,1)	 RIP: 450150	 Bytes: 8
  %loadMem_450150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450150 = call %struct.Memory* @routine_movb__sil__MINUS0x1e0__rbp__rax_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450150)
  store %struct.Memory* %call_450150, %struct.Memory** %MEMORY

  ; Code: .L_450158:	 RIP: 450158	 Bytes: 0
  br label %block_.L_450158
block_.L_450158:

  ; Code: jmpq .L_45015d	 RIP: 450158	 Bytes: 5
  %loadMem_450158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450158 = call %struct.Memory* @routine_jmpq_.L_45015d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450158, i64 5, i64 5)
  store %struct.Memory* %call_450158, %struct.Memory** %MEMORY

  br label %block_.L_45015d

  ; Code: .L_45015d:	 RIP: 45015d	 Bytes: 0
block_.L_45015d:

  ; Code: movl -0x1e4(%rbp), %eax	 RIP: 45015d	 Bytes: 6
  %loadMem_45015d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45015d = call %struct.Memory* @routine_movl_MINUS0x1e4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45015d)
  store %struct.Memory* %call_45015d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 450163	 Bytes: 3
  %loadMem_450163 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450163 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450163)
  store %struct.Memory* %call_450163, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1e4(%rbp)	 RIP: 450166	 Bytes: 6
  %loadMem_450166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450166 = call %struct.Memory* @routine_movl__eax__MINUS0x1e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450166)
  store %struct.Memory* %call_450166, %struct.Memory** %MEMORY

  ; Code: jmpq .L_450100	 RIP: 45016c	 Bytes: 5
  %loadMem_45016c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45016c = call %struct.Memory* @routine_jmpq_.L_450100(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45016c, i64 -108, i64 5)
  store %struct.Memory* %call_45016c, %struct.Memory** %MEMORY

  br label %block_.L_450100

  ; Code: .L_450171:	 RIP: 450171	 Bytes: 0
block_.L_450171:

  ; Code: cmpl $0x1a5, -0x30(%rbp)	 RIP: 450171	 Bytes: 7
  %loadMem_450171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450171 = call %struct.Memory* @routine_cmpl__0x1a5__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450171)
  store %struct.Memory* %call_450171, %struct.Memory** %MEMORY

  ; Code: jae .L_45019f	 RIP: 450178	 Bytes: 6
  %loadMem_450178 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450178 = call %struct.Memory* @routine_jae_.L_45019f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450178, i8* %BRANCH_TAKEN, i64 39, i64 6, i64 6)
  store %struct.Memory* %call_450178, %struct.Memory** %MEMORY

  %loadBr_450178 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450178 = icmp eq i8 %loadBr_450178, 1
  br i1 %cmpBr_450178, label %block_.L_45019f, label %block_45017e

block_45017e:
  ; Code: movslq -0x30(%rbp), %rax	 RIP: 45017e	 Bytes: 4
  %loadMem_45017e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45017e = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45017e)
  store %struct.Memory* %call_45017e, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 450182	 Bytes: 8
  %loadMem_450182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450182 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450182)
  store %struct.Memory* %call_450182, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 45018a	 Bytes: 3
  %loadMem_45018a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45018a = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45018a)
  store %struct.Memory* %call_45018a, %struct.Memory** %MEMORY

  ; Code: je .L_45019f	 RIP: 45018d	 Bytes: 6
  %loadMem_45018d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45018d = call %struct.Memory* @routine_je_.L_45019f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45018d, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_45018d, %struct.Memory** %MEMORY

  %loadBr_45018d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45018d = icmp eq i8 %loadBr_45018d, 1
  br i1 %cmpBr_45018d, label %block_.L_45019f, label %block_450193

block_450193:
  ; Code: movslq -0x30(%rbp), %rax	 RIP: 450193	 Bytes: 4
  %loadMem_450193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450193 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450193)
  store %struct.Memory* %call_450193, %struct.Memory** %MEMORY

  ; Code: movb $0x1, -0x1e0(%rbp,%rax,1)	 RIP: 450197	 Bytes: 8
  %loadMem_450197 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450197 = call %struct.Memory* @routine_movb__0x1__MINUS0x1e0__rbp__rax_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450197)
  store %struct.Memory* %call_450197, %struct.Memory** %MEMORY

  ; Code: .L_45019f:	 RIP: 45019f	 Bytes: 0
  br label %block_.L_45019f
block_.L_45019f:

  ; Code: cmpl $0x1a5, -0x34(%rbp)	 RIP: 45019f	 Bytes: 7
  %loadMem_45019f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45019f = call %struct.Memory* @routine_cmpl__0x1a5__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45019f)
  store %struct.Memory* %call_45019f, %struct.Memory** %MEMORY

  ; Code: jae .L_4501cd	 RIP: 4501a6	 Bytes: 6
  %loadMem_4501a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4501a6 = call %struct.Memory* @routine_jae_.L_4501cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4501a6, i8* %BRANCH_TAKEN, i64 39, i64 6, i64 6)
  store %struct.Memory* %call_4501a6, %struct.Memory** %MEMORY

  %loadBr_4501a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4501a6 = icmp eq i8 %loadBr_4501a6, 1
  br i1 %cmpBr_4501a6, label %block_.L_4501cd, label %block_4501ac

block_4501ac:
  ; Code: movslq -0x34(%rbp), %rax	 RIP: 4501ac	 Bytes: 4
  %loadMem_4501ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4501ac = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4501ac)
  store %struct.Memory* %call_4501ac, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 4501b0	 Bytes: 8
  %loadMem_4501b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4501b0 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4501b0)
  store %struct.Memory* %call_4501b0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 4501b8	 Bytes: 3
  %loadMem_4501b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4501b8 = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4501b8)
  store %struct.Memory* %call_4501b8, %struct.Memory** %MEMORY

  ; Code: je .L_4501cd	 RIP: 4501bb	 Bytes: 6
  %loadMem_4501bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4501bb = call %struct.Memory* @routine_je_.L_4501cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4501bb, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4501bb, %struct.Memory** %MEMORY

  %loadBr_4501bb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4501bb = icmp eq i8 %loadBr_4501bb, 1
  br i1 %cmpBr_4501bb, label %block_.L_4501cd, label %block_4501c1

block_4501c1:
  ; Code: movslq -0x34(%rbp), %rax	 RIP: 4501c1	 Bytes: 4
  %loadMem_4501c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4501c1 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4501c1)
  store %struct.Memory* %call_4501c1, %struct.Memory** %MEMORY

  ; Code: movb $0x1, -0x1e0(%rbp,%rax,1)	 RIP: 4501c5	 Bytes: 8
  %loadMem_4501c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4501c5 = call %struct.Memory* @routine_movb__0x1__MINUS0x1e0__rbp__rax_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4501c5)
  store %struct.Memory* %call_4501c5, %struct.Memory** %MEMORY

  ; Code: .L_4501cd:	 RIP: 4501cd	 Bytes: 0
  br label %block_.L_4501cd
block_.L_4501cd:

  ; Code: movl $0x1, -0x1e8(%rbp)	 RIP: 4501cd	 Bytes: 10
  %loadMem_4501cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4501cd = call %struct.Memory* @routine_movl__0x1__MINUS0x1e8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4501cd)
  store %struct.Memory* %call_4501cd, %struct.Memory** %MEMORY

  ; Code: .L_4501d7:	 RIP: 4501d7	 Bytes: 0
  br label %block_.L_4501d7
block_.L_4501d7:

  ; Code: cmpl $0x5, -0x1e8(%rbp)	 RIP: 4501d7	 Bytes: 7
  %loadMem_4501d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4501d7 = call %struct.Memory* @routine_cmpl__0x5__MINUS0x1e8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4501d7)
  store %struct.Memory* %call_4501d7, %struct.Memory** %MEMORY

  ; Code: jge .L_4503cf	 RIP: 4501de	 Bytes: 6
  %loadMem_4501de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4501de = call %struct.Memory* @routine_jge_.L_4503cf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4501de, i8* %BRANCH_TAKEN, i64 497, i64 6, i64 6)
  store %struct.Memory* %call_4501de, %struct.Memory** %MEMORY

  %loadBr_4501de = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4501de = icmp eq i8 %loadBr_4501de, 1
  br i1 %cmpBr_4501de, label %block_.L_4503cf, label %block_4501e4

block_4501e4:
  ; Code: movl $0x15, -0x1e4(%rbp)	 RIP: 4501e4	 Bytes: 10
  %loadMem_4501e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4501e4 = call %struct.Memory* @routine_movl__0x15__MINUS0x1e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4501e4)
  store %struct.Memory* %call_4501e4, %struct.Memory** %MEMORY

  ; Code: .L_4501ee:	 RIP: 4501ee	 Bytes: 0
  br label %block_.L_4501ee
block_.L_4501ee:

  ; Code: cmpl $0x190, -0x1e4(%rbp)	 RIP: 4501ee	 Bytes: 10
  %loadMem_4501ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4501ee = call %struct.Memory* @routine_cmpl__0x190__MINUS0x1e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4501ee)
  store %struct.Memory* %call_4501ee, %struct.Memory** %MEMORY

  ; Code: jge .L_4503b6	 RIP: 4501f8	 Bytes: 6
  %loadMem_4501f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4501f8 = call %struct.Memory* @routine_jge_.L_4503b6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4501f8, i8* %BRANCH_TAKEN, i64 446, i64 6, i64 6)
  store %struct.Memory* %call_4501f8, %struct.Memory** %MEMORY

  %loadBr_4501f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4501f8 = icmp eq i8 %loadBr_4501f8, 1
  br i1 %cmpBr_4501f8, label %block_.L_4503b6, label %block_4501fe

block_4501fe:
  ; Code: movslq -0x1e4(%rbp), %rax	 RIP: 4501fe	 Bytes: 7
  %loadMem_4501fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4501fe = call %struct.Memory* @routine_movslq_MINUS0x1e4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4501fe)
  store %struct.Memory* %call_4501fe, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 450205	 Bytes: 8
  %loadMem_450205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450205 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450205)
  store %struct.Memory* %call_450205, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 45020d	 Bytes: 3
  %loadMem_45020d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45020d = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45020d)
  store %struct.Memory* %call_45020d, %struct.Memory** %MEMORY

  ; Code: je .L_450249	 RIP: 450210	 Bytes: 6
  %loadMem_450210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450210 = call %struct.Memory* @routine_je_.L_450249(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450210, i8* %BRANCH_TAKEN, i64 57, i64 6, i64 6)
  store %struct.Memory* %call_450210, %struct.Memory** %MEMORY

  %loadBr_450210 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450210 = icmp eq i8 %loadBr_450210, 1
  br i1 %cmpBr_450210, label %block_.L_450249, label %block_450216

block_450216:
  ; Code: movslq -0x1e4(%rbp), %rax	 RIP: 450216	 Bytes: 7
  %loadMem_450216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450216 = call %struct.Memory* @routine_movslq_MINUS0x1e4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450216)
  store %struct.Memory* %call_450216, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 45021d	 Bytes: 8
  %loadMem_45021d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45021d = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45021d)
  store %struct.Memory* %call_45021d, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1f0(%rbp), %ecx	 RIP: 450225	 Bytes: 6
  %loadMem_450225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450225 = call %struct.Memory* @routine_cmpl_MINUS0x1f0__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450225)
  store %struct.Memory* %call_450225, %struct.Memory** %MEMORY

  ; Code: je .L_450249	 RIP: 45022b	 Bytes: 6
  %loadMem_45022b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45022b = call %struct.Memory* @routine_je_.L_450249(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45022b, i8* %BRANCH_TAKEN, i64 30, i64 6, i64 6)
  store %struct.Memory* %call_45022b, %struct.Memory** %MEMORY

  %loadBr_45022b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45022b = icmp eq i8 %loadBr_45022b, 1
  br i1 %cmpBr_45022b, label %block_.L_450249, label %block_450231

block_450231:
  ; Code: movslq -0x1e4(%rbp), %rax	 RIP: 450231	 Bytes: 7
  %loadMem_450231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450231 = call %struct.Memory* @routine_movslq_MINUS0x1e4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450231)
  store %struct.Memory* %call_450231, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1e0(%rbp,%rax,1), %ecx	 RIP: 450238	 Bytes: 8
  %loadMem_450238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450238 = call %struct.Memory* @routine_movsbl_MINUS0x1e0__rbp__rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450238)
  store %struct.Memory* %call_450238, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 450240	 Bytes: 3
  %loadMem_450240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450240 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450240)
  store %struct.Memory* %call_450240, %struct.Memory** %MEMORY

  ; Code: je .L_45024e	 RIP: 450243	 Bytes: 6
  %loadMem_450243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450243 = call %struct.Memory* @routine_je_.L_45024e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450243, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_450243, %struct.Memory** %MEMORY

  %loadBr_450243 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450243 = icmp eq i8 %loadBr_450243, 1
  br i1 %cmpBr_450243, label %block_.L_45024e, label %block_.L_450249

  ; Code: .L_450249:	 RIP: 450249	 Bytes: 0
block_.L_450249:

  ; Code: jmpq .L_4503a2	 RIP: 450249	 Bytes: 5
  %loadMem_450249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450249 = call %struct.Memory* @routine_jmpq_.L_4503a2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450249, i64 345, i64 5)
  store %struct.Memory* %call_450249, %struct.Memory** %MEMORY

  br label %block_.L_4503a2

  ; Code: .L_45024e:	 RIP: 45024e	 Bytes: 0
block_.L_45024e:

  ; Code: movl -0x1e4(%rbp), %eax	 RIP: 45024e	 Bytes: 6
  %loadMem_45024e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45024e = call %struct.Memory* @routine_movl_MINUS0x1e4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45024e)
  store %struct.Memory* %call_45024e, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 450254	 Bytes: 3
  %loadMem_450254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450254 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450254)
  store %struct.Memory* %call_450254, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 450257	 Bytes: 3
  %loadMem_450257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450257 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450257)
  store %struct.Memory* %call_450257, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 45025a	 Bytes: 8
  %loadMem_45025a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45025a = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45025a)
  store %struct.Memory* %call_45025a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 450262	 Bytes: 3
  %loadMem_450262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450262 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450262)
  store %struct.Memory* %call_450262, %struct.Memory** %MEMORY

  ; Code: je .L_45028b	 RIP: 450265	 Bytes: 6
  %loadMem_450265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450265 = call %struct.Memory* @routine_je_.L_45028b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450265, i8* %BRANCH_TAKEN, i64 38, i64 6, i64 6)
  store %struct.Memory* %call_450265, %struct.Memory** %MEMORY

  %loadBr_450265 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450265 = icmp eq i8 %loadBr_450265, 1
  br i1 %cmpBr_450265, label %block_.L_45028b, label %block_45026b

block_45026b:
  ; Code: movl -0x1e4(%rbp), %eax	 RIP: 45026b	 Bytes: 6
  %loadMem_45026b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45026b = call %struct.Memory* @routine_movl_MINUS0x1e4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45026b)
  store %struct.Memory* %call_45026b, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 450271	 Bytes: 3
  %loadMem_450271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450271 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450271)
  store %struct.Memory* %call_450271, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 450274	 Bytes: 3
  %loadMem_450274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450274 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450274)
  store %struct.Memory* %call_450274, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1e0(%rbp,%rcx,1), %eax	 RIP: 450277	 Bytes: 8
  %loadMem_450277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450277 = call %struct.Memory* @routine_movsbl_MINUS0x1e0__rbp__rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450277)
  store %struct.Memory* %call_450277, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1e8(%rbp), %eax	 RIP: 45027f	 Bytes: 6
  %loadMem_45027f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45027f = call %struct.Memory* @routine_cmpl_MINUS0x1e8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45027f)
  store %struct.Memory* %call_45027f, %struct.Memory** %MEMORY

  ; Code: je .L_450342	 RIP: 450285	 Bytes: 6
  %loadMem_450285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450285 = call %struct.Memory* @routine_je_.L_450342(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450285, i8* %BRANCH_TAKEN, i64 189, i64 6, i64 6)
  store %struct.Memory* %call_450285, %struct.Memory** %MEMORY

  %loadBr_450285 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450285 = icmp eq i8 %loadBr_450285, 1
  br i1 %cmpBr_450285, label %block_.L_450342, label %block_.L_45028b

  ; Code: .L_45028b:	 RIP: 45028b	 Bytes: 0
block_.L_45028b:

  ; Code: movl -0x1e4(%rbp), %eax	 RIP: 45028b	 Bytes: 6
  %loadMem_45028b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45028b = call %struct.Memory* @routine_movl_MINUS0x1e4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45028b)
  store %struct.Memory* %call_45028b, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 450291	 Bytes: 3
  %loadMem_450291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450291 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450291)
  store %struct.Memory* %call_450291, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 450294	 Bytes: 3
  %loadMem_450294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450294 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450294)
  store %struct.Memory* %call_450294, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 450297	 Bytes: 8
  %loadMem_450297 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450297 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450297)
  store %struct.Memory* %call_450297, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 45029f	 Bytes: 3
  %loadMem_45029f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45029f = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45029f)
  store %struct.Memory* %call_45029f, %struct.Memory** %MEMORY

  ; Code: je .L_4502c8	 RIP: 4502a2	 Bytes: 6
  %loadMem_4502a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4502a2 = call %struct.Memory* @routine_je_.L_4502c8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4502a2, i8* %BRANCH_TAKEN, i64 38, i64 6, i64 6)
  store %struct.Memory* %call_4502a2, %struct.Memory** %MEMORY

  %loadBr_4502a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4502a2 = icmp eq i8 %loadBr_4502a2, 1
  br i1 %cmpBr_4502a2, label %block_.L_4502c8, label %block_4502a8

block_4502a8:
  ; Code: movl -0x1e4(%rbp), %eax	 RIP: 4502a8	 Bytes: 6
  %loadMem_4502a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4502a8 = call %struct.Memory* @routine_movl_MINUS0x1e4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4502a8)
  store %struct.Memory* %call_4502a8, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4502ae	 Bytes: 3
  %loadMem_4502ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4502ae = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4502ae)
  store %struct.Memory* %call_4502ae, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4502b1	 Bytes: 3
  %loadMem_4502b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4502b1 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4502b1)
  store %struct.Memory* %call_4502b1, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1e0(%rbp,%rcx,1), %eax	 RIP: 4502b4	 Bytes: 8
  %loadMem_4502b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4502b4 = call %struct.Memory* @routine_movsbl_MINUS0x1e0__rbp__rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4502b4)
  store %struct.Memory* %call_4502b4, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1e8(%rbp), %eax	 RIP: 4502bc	 Bytes: 6
  %loadMem_4502bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4502bc = call %struct.Memory* @routine_cmpl_MINUS0x1e8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4502bc)
  store %struct.Memory* %call_4502bc, %struct.Memory** %MEMORY

  ; Code: je .L_450342	 RIP: 4502c2	 Bytes: 6
  %loadMem_4502c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4502c2 = call %struct.Memory* @routine_je_.L_450342(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4502c2, i8* %BRANCH_TAKEN, i64 128, i64 6, i64 6)
  store %struct.Memory* %call_4502c2, %struct.Memory** %MEMORY

  %loadBr_4502c2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4502c2 = icmp eq i8 %loadBr_4502c2, 1
  br i1 %cmpBr_4502c2, label %block_.L_450342, label %block_.L_4502c8

  ; Code: .L_4502c8:	 RIP: 4502c8	 Bytes: 0
block_.L_4502c8:

  ; Code: movl -0x1e4(%rbp), %eax	 RIP: 4502c8	 Bytes: 6
  %loadMem_4502c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4502c8 = call %struct.Memory* @routine_movl_MINUS0x1e4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4502c8)
  store %struct.Memory* %call_4502c8, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4502ce	 Bytes: 3
  %loadMem_4502ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4502ce = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4502ce)
  store %struct.Memory* %call_4502ce, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4502d1	 Bytes: 3
  %loadMem_4502d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4502d1 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4502d1)
  store %struct.Memory* %call_4502d1, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4502d4	 Bytes: 8
  %loadMem_4502d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4502d4 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4502d4)
  store %struct.Memory* %call_4502d4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 4502dc	 Bytes: 3
  %loadMem_4502dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4502dc = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4502dc)
  store %struct.Memory* %call_4502dc, %struct.Memory** %MEMORY

  ; Code: je .L_450305	 RIP: 4502df	 Bytes: 6
  %loadMem_4502df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4502df = call %struct.Memory* @routine_je_.L_450305(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4502df, i8* %BRANCH_TAKEN, i64 38, i64 6, i64 6)
  store %struct.Memory* %call_4502df, %struct.Memory** %MEMORY

  %loadBr_4502df = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4502df = icmp eq i8 %loadBr_4502df, 1
  br i1 %cmpBr_4502df, label %block_.L_450305, label %block_4502e5

block_4502e5:
  ; Code: movl -0x1e4(%rbp), %eax	 RIP: 4502e5	 Bytes: 6
  %loadMem_4502e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4502e5 = call %struct.Memory* @routine_movl_MINUS0x1e4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4502e5)
  store %struct.Memory* %call_4502e5, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4502eb	 Bytes: 3
  %loadMem_4502eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4502eb = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4502eb)
  store %struct.Memory* %call_4502eb, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4502ee	 Bytes: 3
  %loadMem_4502ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4502ee = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4502ee)
  store %struct.Memory* %call_4502ee, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1e0(%rbp,%rcx,1), %eax	 RIP: 4502f1	 Bytes: 8
  %loadMem_4502f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4502f1 = call %struct.Memory* @routine_movsbl_MINUS0x1e0__rbp__rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4502f1)
  store %struct.Memory* %call_4502f1, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1e8(%rbp), %eax	 RIP: 4502f9	 Bytes: 6
  %loadMem_4502f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4502f9 = call %struct.Memory* @routine_cmpl_MINUS0x1e8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4502f9)
  store %struct.Memory* %call_4502f9, %struct.Memory** %MEMORY

  ; Code: je .L_450342	 RIP: 4502ff	 Bytes: 6
  %loadMem_4502ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4502ff = call %struct.Memory* @routine_je_.L_450342(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4502ff, i8* %BRANCH_TAKEN, i64 67, i64 6, i64 6)
  store %struct.Memory* %call_4502ff, %struct.Memory** %MEMORY

  %loadBr_4502ff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4502ff = icmp eq i8 %loadBr_4502ff, 1
  br i1 %cmpBr_4502ff, label %block_.L_450342, label %block_.L_450305

  ; Code: .L_450305:	 RIP: 450305	 Bytes: 0
block_.L_450305:

  ; Code: movl -0x1e4(%rbp), %eax	 RIP: 450305	 Bytes: 6
  %loadMem_450305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450305 = call %struct.Memory* @routine_movl_MINUS0x1e4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450305)
  store %struct.Memory* %call_450305, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45030b	 Bytes: 3
  %loadMem_45030b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45030b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45030b)
  store %struct.Memory* %call_45030b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 45030e	 Bytes: 3
  %loadMem_45030e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45030e = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45030e)
  store %struct.Memory* %call_45030e, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 450311	 Bytes: 8
  %loadMem_450311 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450311 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450311)
  store %struct.Memory* %call_450311, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 450319	 Bytes: 3
  %loadMem_450319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450319 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450319)
  store %struct.Memory* %call_450319, %struct.Memory** %MEMORY

  ; Code: je .L_45039d	 RIP: 45031c	 Bytes: 6
  %loadMem_45031c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45031c = call %struct.Memory* @routine_je_.L_45039d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45031c, i8* %BRANCH_TAKEN, i64 129, i64 6, i64 6)
  store %struct.Memory* %call_45031c, %struct.Memory** %MEMORY

  %loadBr_45031c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45031c = icmp eq i8 %loadBr_45031c, 1
  br i1 %cmpBr_45031c, label %block_.L_45039d, label %block_450322

block_450322:
  ; Code: movl -0x1e4(%rbp), %eax	 RIP: 450322	 Bytes: 6
  %loadMem_450322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450322 = call %struct.Memory* @routine_movl_MINUS0x1e4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450322)
  store %struct.Memory* %call_450322, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 450328	 Bytes: 3
  %loadMem_450328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450328 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450328)
  store %struct.Memory* %call_450328, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 45032b	 Bytes: 3
  %loadMem_45032b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45032b = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45032b)
  store %struct.Memory* %call_45032b, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1e0(%rbp,%rcx,1), %eax	 RIP: 45032e	 Bytes: 8
  %loadMem_45032e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45032e = call %struct.Memory* @routine_movsbl_MINUS0x1e0__rbp__rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45032e)
  store %struct.Memory* %call_45032e, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1e8(%rbp), %eax	 RIP: 450336	 Bytes: 6
  %loadMem_450336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450336 = call %struct.Memory* @routine_cmpl_MINUS0x1e8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450336)
  store %struct.Memory* %call_450336, %struct.Memory** %MEMORY

  ; Code: jne .L_45039d	 RIP: 45033c	 Bytes: 6
  %loadMem_45033c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45033c = call %struct.Memory* @routine_jne_.L_45039d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45033c, i8* %BRANCH_TAKEN, i64 97, i64 6, i64 6)
  store %struct.Memory* %call_45033c, %struct.Memory** %MEMORY

  %loadBr_45033c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45033c = icmp eq i8 %loadBr_45033c, 1
  br i1 %cmpBr_45033c, label %block_.L_45039d, label %block_.L_450342

  ; Code: .L_450342:	 RIP: 450342	 Bytes: 0
block_.L_450342:

  ; Code: movslq -0x1e4(%rbp), %rax	 RIP: 450342	 Bytes: 7
  %loadMem_450342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450342 = call %struct.Memory* @routine_movslq_MINUS0x1e4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450342)
  store %struct.Memory* %call_450342, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 450349	 Bytes: 8
  %loadMem_450349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450349 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450349)
  store %struct.Memory* %call_450349, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 450351	 Bytes: 3
  %loadMem_450351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450351 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450351)
  store %struct.Memory* %call_450351, %struct.Memory** %MEMORY

  ; Code: jne .L_450378	 RIP: 450354	 Bytes: 6
  %loadMem_450354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450354 = call %struct.Memory* @routine_jne_.L_450378(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450354, i8* %BRANCH_TAKEN, i64 36, i64 6, i64 6)
  store %struct.Memory* %call_450354, %struct.Memory** %MEMORY

  %loadBr_450354 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450354 = icmp eq i8 %loadBr_450354, 1
  br i1 %cmpBr_450354, label %block_.L_450378, label %block_45035a

block_45035a:
  ; Code: movl -0x1e8(%rbp), %eax	 RIP: 45035a	 Bytes: 6
  %loadMem_45035a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45035a = call %struct.Memory* @routine_movl_MINUS0x1e8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45035a)
  store %struct.Memory* %call_45035a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 450360	 Bytes: 3
  %loadMem_450360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450360 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450360)
  store %struct.Memory* %call_450360, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 450363	 Bytes: 2
  %loadMem_450363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450363 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450363)
  store %struct.Memory* %call_450363, %struct.Memory** %MEMORY

  ; Code: movslq -0x1e4(%rbp), %rdx	 RIP: 450365	 Bytes: 7
  %loadMem_450365 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450365 = call %struct.Memory* @routine_movslq_MINUS0x1e4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450365)
  store %struct.Memory* %call_450365, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x1e0(%rbp,%rdx,1)	 RIP: 45036c	 Bytes: 7
  %loadMem_45036c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45036c = call %struct.Memory* @routine_movb__cl__MINUS0x1e0__rbp__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45036c)
  store %struct.Memory* %call_45036c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_450398	 RIP: 450373	 Bytes: 5
  %loadMem_450373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450373 = call %struct.Memory* @routine_jmpq_.L_450398(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450373, i64 37, i64 5)
  store %struct.Memory* %call_450373, %struct.Memory** %MEMORY

  br label %block_.L_450398

  ; Code: .L_450378:	 RIP: 450378	 Bytes: 0
block_.L_450378:

  ; Code: leaq -0x1e0(%rbp), %rsi	 RIP: 450378	 Bytes: 7
  %loadMem_450378 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450378 = call %struct.Memory* @routine_leaq_MINUS0x1e0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450378)
  store %struct.Memory* %call_450378, %struct.Memory** %MEMORY

  ; Code: movl -0x1e4(%rbp), %edi	 RIP: 45037f	 Bytes: 6
  %loadMem_45037f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45037f = call %struct.Memory* @routine_movl_MINUS0x1e4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45037f)
  store %struct.Memory* %call_45037f, %struct.Memory** %MEMORY

  ; Code: movl -0x1e8(%rbp), %eax	 RIP: 450385	 Bytes: 6
  %loadMem_450385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450385 = call %struct.Memory* @routine_movl_MINUS0x1e8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450385)
  store %struct.Memory* %call_450385, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45038b	 Bytes: 3
  %loadMem_45038b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45038b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45038b)
  store %struct.Memory* %call_45038b, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 45038e	 Bytes: 2
  %loadMem_45038e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45038e = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45038e)
  store %struct.Memory* %call_45038e, %struct.Memory** %MEMORY

  ; Code: movsbl %cl, %edx	 RIP: 450390	 Bytes: 3
  %loadMem_450390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450390 = call %struct.Memory* @routine_movsbl__cl___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450390)
  store %struct.Memory* %call_450390, %struct.Memory** %MEMORY

  ; Code: callq .mark_string	 RIP: 450393	 Bytes: 5
  %loadMem1_450393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_450393 = call %struct.Memory* @routine_callq_.mark_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_450393, i64 -239331, i64 5, i64 5)
  store %struct.Memory* %call1_450393, %struct.Memory** %MEMORY

  %loadMem2_450393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_450393 = load i64, i64* %3
  %call2_450393 = call %struct.Memory* @sub_415cb0.mark_string(%struct.State* %0, i64  %loadPC_450393, %struct.Memory* %loadMem2_450393)
  store %struct.Memory* %call2_450393, %struct.Memory** %MEMORY

  ; Code: .L_450398:	 RIP: 450398	 Bytes: 0
  br label %block_.L_450398
block_.L_450398:

  ; Code: jmpq .L_45039d	 RIP: 450398	 Bytes: 5
  %loadMem_450398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450398 = call %struct.Memory* @routine_jmpq_.L_45039d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450398, i64 5, i64 5)
  store %struct.Memory* %call_450398, %struct.Memory** %MEMORY

  br label %block_.L_45039d

  ; Code: .L_45039d:	 RIP: 45039d	 Bytes: 0
block_.L_45039d:

  ; Code: jmpq .L_4503a2	 RIP: 45039d	 Bytes: 5
  %loadMem_45039d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45039d = call %struct.Memory* @routine_jmpq_.L_4503a2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45039d, i64 5, i64 5)
  store %struct.Memory* %call_45039d, %struct.Memory** %MEMORY

  br label %block_.L_4503a2

  ; Code: .L_4503a2:	 RIP: 4503a2	 Bytes: 0
block_.L_4503a2:

  ; Code: movl -0x1e4(%rbp), %eax	 RIP: 4503a2	 Bytes: 6
  %loadMem_4503a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4503a2 = call %struct.Memory* @routine_movl_MINUS0x1e4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4503a2)
  store %struct.Memory* %call_4503a2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4503a8	 Bytes: 3
  %loadMem_4503a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4503a8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4503a8)
  store %struct.Memory* %call_4503a8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1e4(%rbp)	 RIP: 4503ab	 Bytes: 6
  %loadMem_4503ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4503ab = call %struct.Memory* @routine_movl__eax__MINUS0x1e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4503ab)
  store %struct.Memory* %call_4503ab, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4501ee	 RIP: 4503b1	 Bytes: 5
  %loadMem_4503b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4503b1 = call %struct.Memory* @routine_jmpq_.L_4501ee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4503b1, i64 -451, i64 5)
  store %struct.Memory* %call_4503b1, %struct.Memory** %MEMORY

  br label %block_.L_4501ee

  ; Code: .L_4503b6:	 RIP: 4503b6	 Bytes: 0
block_.L_4503b6:

  ; Code: jmpq .L_4503bb	 RIP: 4503b6	 Bytes: 5
  %loadMem_4503b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4503b6 = call %struct.Memory* @routine_jmpq_.L_4503bb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4503b6, i64 5, i64 5)
  store %struct.Memory* %call_4503b6, %struct.Memory** %MEMORY

  br label %block_.L_4503bb

  ; Code: .L_4503bb:	 RIP: 4503bb	 Bytes: 0
block_.L_4503bb:

  ; Code: movl -0x1e8(%rbp), %eax	 RIP: 4503bb	 Bytes: 6
  %loadMem_4503bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4503bb = call %struct.Memory* @routine_movl_MINUS0x1e8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4503bb)
  store %struct.Memory* %call_4503bb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4503c1	 Bytes: 3
  %loadMem_4503c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4503c1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4503c1)
  store %struct.Memory* %call_4503c1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1e8(%rbp)	 RIP: 4503c4	 Bytes: 6
  %loadMem_4503c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4503c4 = call %struct.Memory* @routine_movl__eax__MINUS0x1e8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4503c4)
  store %struct.Memory* %call_4503c4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4501d7	 RIP: 4503ca	 Bytes: 5
  %loadMem_4503ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4503ca = call %struct.Memory* @routine_jmpq_.L_4501d7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4503ca, i64 -499, i64 5)
  store %struct.Memory* %call_4503ca, %struct.Memory** %MEMORY

  br label %block_.L_4501d7

  ; Code: .L_4503cf:	 RIP: 4503cf	 Bytes: 0
block_.L_4503cf:

  ; Code: movl $0x15, -0x1e4(%rbp)	 RIP: 4503cf	 Bytes: 10
  %loadMem_4503cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4503cf = call %struct.Memory* @routine_movl__0x15__MINUS0x1e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4503cf)
  store %struct.Memory* %call_4503cf, %struct.Memory** %MEMORY

  ; Code: .L_4503d9:	 RIP: 4503d9	 Bytes: 0
  br label %block_.L_4503d9
block_.L_4503d9:

  ; Code: cmpl $0x190, -0x1e4(%rbp)	 RIP: 4503d9	 Bytes: 10
  %loadMem_4503d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4503d9 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x1e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4503d9)
  store %struct.Memory* %call_4503d9, %struct.Memory** %MEMORY

  ; Code: jge .L_4504eb	 RIP: 4503e3	 Bytes: 6
  %loadMem_4503e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4503e3 = call %struct.Memory* @routine_jge_.L_4504eb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4503e3, i8* %BRANCH_TAKEN, i64 264, i64 6, i64 6)
  store %struct.Memory* %call_4503e3, %struct.Memory** %MEMORY

  %loadBr_4503e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4503e3 = icmp eq i8 %loadBr_4503e3, 1
  br i1 %cmpBr_4503e3, label %block_.L_4504eb, label %block_4503e9

block_4503e9:
  ; Code: movslq -0x1e4(%rbp), %rax	 RIP: 4503e9	 Bytes: 7
  %loadMem_4503e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4503e9 = call %struct.Memory* @routine_movslq_MINUS0x1e4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4503e9)
  store %struct.Memory* %call_4503e9, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 4503f0	 Bytes: 8
  %loadMem_4503f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4503f0 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4503f0)
  store %struct.Memory* %call_4503f0, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1f0(%rbp), %ecx	 RIP: 4503f8	 Bytes: 6
  %loadMem_4503f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4503f8 = call %struct.Memory* @routine_cmpl_MINUS0x1f0__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4503f8)
  store %struct.Memory* %call_4503f8, %struct.Memory** %MEMORY

  ; Code: jne .L_45041c	 RIP: 4503fe	 Bytes: 6
  %loadMem_4503fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4503fe = call %struct.Memory* @routine_jne_.L_45041c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4503fe, i8* %BRANCH_TAKEN, i64 30, i64 6, i64 6)
  store %struct.Memory* %call_4503fe, %struct.Memory** %MEMORY

  %loadBr_4503fe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4503fe = icmp eq i8 %loadBr_4503fe, 1
  br i1 %cmpBr_4503fe, label %block_.L_45041c, label %block_450404

block_450404:
  ; Code: movslq -0x1e4(%rbp), %rax	 RIP: 450404	 Bytes: 7
  %loadMem_450404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450404 = call %struct.Memory* @routine_movslq_MINUS0x1e4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450404)
  store %struct.Memory* %call_450404, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1e0(%rbp,%rax,1), %ecx	 RIP: 45040b	 Bytes: 8
  %loadMem_45040b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45040b = call %struct.Memory* @routine_movsbl_MINUS0x1e0__rbp__rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45040b)
  store %struct.Memory* %call_45040b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 450413	 Bytes: 3
  %loadMem_450413 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450413 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450413)
  store %struct.Memory* %call_450413, %struct.Memory** %MEMORY

  ; Code: je .L_450421	 RIP: 450416	 Bytes: 6
  %loadMem_450416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450416 = call %struct.Memory* @routine_je_.L_450421(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450416, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_450416, %struct.Memory** %MEMORY

  %loadBr_450416 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450416 = icmp eq i8 %loadBr_450416, 1
  br i1 %cmpBr_450416, label %block_.L_450421, label %block_.L_45041c

  ; Code: .L_45041c:	 RIP: 45041c	 Bytes: 0
block_.L_45041c:

  ; Code: jmpq .L_4504d7	 RIP: 45041c	 Bytes: 5
  %loadMem_45041c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45041c = call %struct.Memory* @routine_jmpq_.L_4504d7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45041c, i64 187, i64 5)
  store %struct.Memory* %call_45041c, %struct.Memory** %MEMORY

  br label %block_.L_4504d7

  ; Code: .L_450421:	 RIP: 450421	 Bytes: 0
block_.L_450421:

  ; Code: movl $0x0, -0x1ec(%rbp)	 RIP: 450421	 Bytes: 10
  %loadMem_450421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450421 = call %struct.Memory* @routine_movl__0x0__MINUS0x1ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450421)
  store %struct.Memory* %call_450421, %struct.Memory** %MEMORY

  ; Code: .L_45042b:	 RIP: 45042b	 Bytes: 0
  br label %block_.L_45042b
block_.L_45042b:

  ; Code: cmpl $0x4, -0x1ec(%rbp)	 RIP: 45042b	 Bytes: 7
  %loadMem_45042b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45042b = call %struct.Memory* @routine_cmpl__0x4__MINUS0x1ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45042b)
  store %struct.Memory* %call_45042b, %struct.Memory** %MEMORY

  ; Code: jge .L_4504d2	 RIP: 450432	 Bytes: 6
  %loadMem_450432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450432 = call %struct.Memory* @routine_jge_.L_4504d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450432, i8* %BRANCH_TAKEN, i64 160, i64 6, i64 6)
  store %struct.Memory* %call_450432, %struct.Memory** %MEMORY

  %loadBr_450432 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450432 = icmp eq i8 %loadBr_450432, 1
  br i1 %cmpBr_450432, label %block_.L_4504d2, label %block_450438

block_450438:
  ; Code: movl -0x1e4(%rbp), %eax	 RIP: 450438	 Bytes: 6
  %loadMem_450438 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450438 = call %struct.Memory* @routine_movl_MINUS0x1e4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450438)
  store %struct.Memory* %call_450438, %struct.Memory** %MEMORY

  ; Code: movslq -0x1ec(%rbp), %rcx	 RIP: 45043e	 Bytes: 7
  %loadMem_45043e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45043e = call %struct.Memory* @routine_movslq_MINUS0x1ec__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45043e)
  store %struct.Memory* %call_45043e, %struct.Memory** %MEMORY

  ; Code: addl 0x7ae1b0(,%rcx,4), %eax	 RIP: 450445	 Bytes: 7
  %loadMem_450445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450445 = call %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450445)
  store %struct.Memory* %call_450445, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1f4(%rbp)	 RIP: 45044c	 Bytes: 6
  %loadMem_45044c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45044c = call %struct.Memory* @routine_movl__eax__MINUS0x1f4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45044c)
  store %struct.Memory* %call_45044c, %struct.Memory** %MEMORY

  ; Code: movslq -0x1f4(%rbp), %rcx	 RIP: 450452	 Bytes: 7
  %loadMem_450452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450452 = call %struct.Memory* @routine_movslq_MINUS0x1f4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450452)
  store %struct.Memory* %call_450452, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 450459	 Bytes: 8
  %loadMem_450459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450459 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450459)
  store %struct.Memory* %call_450459, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 450461	 Bytes: 3
  %loadMem_450461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450461 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450461)
  store %struct.Memory* %call_450461, %struct.Memory** %MEMORY

  ; Code: je .L_4504b9	 RIP: 450464	 Bytes: 6
  %loadMem_450464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450464 = call %struct.Memory* @routine_je_.L_4504b9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450464, i8* %BRANCH_TAKEN, i64 85, i64 6, i64 6)
  store %struct.Memory* %call_450464, %struct.Memory** %MEMORY

  %loadBr_450464 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450464 = icmp eq i8 %loadBr_450464, 1
  br i1 %cmpBr_450464, label %block_.L_4504b9, label %block_45046a

block_45046a:
  ; Code: movslq -0x1f4(%rbp), %rax	 RIP: 45046a	 Bytes: 7
  %loadMem_45046a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45046a = call %struct.Memory* @routine_movslq_MINUS0x1f4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45046a)
  store %struct.Memory* %call_45046a, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 450471	 Bytes: 8
  %loadMem_450471 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450471 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450471)
  store %struct.Memory* %call_450471, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1f0(%rbp), %ecx	 RIP: 450479	 Bytes: 6
  %loadMem_450479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450479 = call %struct.Memory* @routine_cmpl_MINUS0x1f0__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450479)
  store %struct.Memory* %call_450479, %struct.Memory** %MEMORY

  ; Code: je .L_4504b9	 RIP: 45047f	 Bytes: 6
  %loadMem_45047f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45047f = call %struct.Memory* @routine_je_.L_4504b9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45047f, i8* %BRANCH_TAKEN, i64 58, i64 6, i64 6)
  store %struct.Memory* %call_45047f, %struct.Memory** %MEMORY

  %loadBr_45047f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45047f = icmp eq i8 %loadBr_45047f, 1
  br i1 %cmpBr_45047f, label %block_.L_4504b9, label %block_450485

block_450485:
  ; Code: movslq -0x1f4(%rbp), %rax	 RIP: 450485	 Bytes: 7
  %loadMem_450485 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450485 = call %struct.Memory* @routine_movslq_MINUS0x1f4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450485)
  store %struct.Memory* %call_450485, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1e0(%rbp,%rax,1), %ecx	 RIP: 45048c	 Bytes: 8
  %loadMem_45048c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45048c = call %struct.Memory* @routine_movsbl_MINUS0x1e0__rbp__rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45048c)
  store %struct.Memory* %call_45048c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 450494	 Bytes: 3
  %loadMem_450494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450494 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450494)
  store %struct.Memory* %call_450494, %struct.Memory** %MEMORY

  ; Code: je .L_4504b9	 RIP: 450497	 Bytes: 6
  %loadMem_450497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450497 = call %struct.Memory* @routine_je_.L_4504b9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450497, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_450497, %struct.Memory** %MEMORY

  %loadBr_450497 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450497 = icmp eq i8 %loadBr_450497, 1
  br i1 %cmpBr_450497, label %block_.L_4504b9, label %block_45049d

block_45049d:
  ; Code: movl $0x1, %edx	 RIP: 45049d	 Bytes: 5
  %loadMem_45049d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45049d = call %struct.Memory* @routine_movl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45049d)
  store %struct.Memory* %call_45049d, %struct.Memory** %MEMORY

  ; Code: leaq -0x1e0(%rbp), %rsi	 RIP: 4504a2	 Bytes: 7
  %loadMem_4504a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4504a2 = call %struct.Memory* @routine_leaq_MINUS0x1e0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4504a2)
  store %struct.Memory* %call_4504a2, %struct.Memory** %MEMORY

  ; Code: movl -0x1e4(%rbp), %edi	 RIP: 4504a9	 Bytes: 6
  %loadMem_4504a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4504a9 = call %struct.Memory* @routine_movl_MINUS0x1e4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4504a9)
  store %struct.Memory* %call_4504a9, %struct.Memory** %MEMORY

  ; Code: callq .mark_string	 RIP: 4504af	 Bytes: 5
  %loadMem1_4504af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4504af = call %struct.Memory* @routine_callq_.mark_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4504af, i64 -239615, i64 5, i64 5)
  store %struct.Memory* %call1_4504af, %struct.Memory** %MEMORY

  %loadMem2_4504af = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4504af = load i64, i64* %3
  %call2_4504af = call %struct.Memory* @sub_415cb0.mark_string(%struct.State* %0, i64  %loadPC_4504af, %struct.Memory* %loadMem2_4504af)
  store %struct.Memory* %call2_4504af, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4504d2	 RIP: 4504b4	 Bytes: 5
  %loadMem_4504b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4504b4 = call %struct.Memory* @routine_jmpq_.L_4504d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4504b4, i64 30, i64 5)
  store %struct.Memory* %call_4504b4, %struct.Memory** %MEMORY

  br label %block_.L_4504d2

  ; Code: .L_4504b9:	 RIP: 4504b9	 Bytes: 0
block_.L_4504b9:

  ; Code: jmpq .L_4504be	 RIP: 4504b9	 Bytes: 5
  %loadMem_4504b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4504b9 = call %struct.Memory* @routine_jmpq_.L_4504be(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4504b9, i64 5, i64 5)
  store %struct.Memory* %call_4504b9, %struct.Memory** %MEMORY

  br label %block_.L_4504be

  ; Code: .L_4504be:	 RIP: 4504be	 Bytes: 0
block_.L_4504be:

  ; Code: movl -0x1ec(%rbp), %eax	 RIP: 4504be	 Bytes: 6
  %loadMem_4504be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4504be = call %struct.Memory* @routine_movl_MINUS0x1ec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4504be)
  store %struct.Memory* %call_4504be, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4504c4	 Bytes: 3
  %loadMem_4504c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4504c4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4504c4)
  store %struct.Memory* %call_4504c4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1ec(%rbp)	 RIP: 4504c7	 Bytes: 6
  %loadMem_4504c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4504c7 = call %struct.Memory* @routine_movl__eax__MINUS0x1ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4504c7)
  store %struct.Memory* %call_4504c7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45042b	 RIP: 4504cd	 Bytes: 5
  %loadMem_4504cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4504cd = call %struct.Memory* @routine_jmpq_.L_45042b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4504cd, i64 -162, i64 5)
  store %struct.Memory* %call_4504cd, %struct.Memory** %MEMORY

  br label %block_.L_45042b

  ; Code: .L_4504d2:	 RIP: 4504d2	 Bytes: 0
block_.L_4504d2:

  ; Code: jmpq .L_4504d7	 RIP: 4504d2	 Bytes: 5
  %loadMem_4504d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4504d2 = call %struct.Memory* @routine_jmpq_.L_4504d7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4504d2, i64 5, i64 5)
  store %struct.Memory* %call_4504d2, %struct.Memory** %MEMORY

  br label %block_.L_4504d7

  ; Code: .L_4504d7:	 RIP: 4504d7	 Bytes: 0
block_.L_4504d7:

  ; Code: movl -0x1e4(%rbp), %eax	 RIP: 4504d7	 Bytes: 6
  %loadMem_4504d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4504d7 = call %struct.Memory* @routine_movl_MINUS0x1e4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4504d7)
  store %struct.Memory* %call_4504d7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4504dd	 Bytes: 3
  %loadMem_4504dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4504dd = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4504dd)
  store %struct.Memory* %call_4504dd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1e4(%rbp)	 RIP: 4504e0	 Bytes: 6
  %loadMem_4504e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4504e0 = call %struct.Memory* @routine_movl__eax__MINUS0x1e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4504e0)
  store %struct.Memory* %call_4504e0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4503d9	 RIP: 4504e6	 Bytes: 5
  %loadMem_4504e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4504e6 = call %struct.Memory* @routine_jmpq_.L_4503d9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4504e6, i64 -269, i64 5)
  store %struct.Memory* %call_4504e6, %struct.Memory** %MEMORY

  br label %block_.L_4503d9

  ; Code: .L_4504eb:	 RIP: 4504eb	 Bytes: 0
block_.L_4504eb:

  ; Code: movl $0x15, -0x1e4(%rbp)	 RIP: 4504eb	 Bytes: 10
  %loadMem_4504eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4504eb = call %struct.Memory* @routine_movl__0x15__MINUS0x1e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4504eb)
  store %struct.Memory* %call_4504eb, %struct.Memory** %MEMORY

  ; Code: .L_4504f5:	 RIP: 4504f5	 Bytes: 0
  br label %block_.L_4504f5
block_.L_4504f5:

  ; Code: cmpl $0x190, -0x1e4(%rbp)	 RIP: 4504f5	 Bytes: 10
  %loadMem_4504f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4504f5 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x1e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4504f5)
  store %struct.Memory* %call_4504f5, %struct.Memory** %MEMORY

  ; Code: jge .L_4506a8	 RIP: 4504ff	 Bytes: 6
  %loadMem_4504ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4504ff = call %struct.Memory* @routine_jge_.L_4506a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4504ff, i8* %BRANCH_TAKEN, i64 425, i64 6, i64 6)
  store %struct.Memory* %call_4504ff, %struct.Memory** %MEMORY

  %loadBr_4504ff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4504ff = icmp eq i8 %loadBr_4504ff, 1
  br i1 %cmpBr_4504ff, label %block_.L_4506a8, label %block_450505

block_450505:
  ; Code: movslq -0x1e4(%rbp), %rax	 RIP: 450505	 Bytes: 7
  %loadMem_450505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450505 = call %struct.Memory* @routine_movslq_MINUS0x1e4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450505)
  store %struct.Memory* %call_450505, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 45050c	 Bytes: 8
  %loadMem_45050c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45050c = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45050c)
  store %struct.Memory* %call_45050c, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1f0(%rbp), %ecx	 RIP: 450514	 Bytes: 6
  %loadMem_450514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450514 = call %struct.Memory* @routine_cmpl_MINUS0x1f0__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450514)
  store %struct.Memory* %call_450514, %struct.Memory** %MEMORY

  ; Code: jne .L_45068f	 RIP: 45051a	 Bytes: 6
  %loadMem_45051a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45051a = call %struct.Memory* @routine_jne_.L_45068f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45051a, i8* %BRANCH_TAKEN, i64 373, i64 6, i64 6)
  store %struct.Memory* %call_45051a, %struct.Memory** %MEMORY

  %loadBr_45051a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45051a = icmp eq i8 %loadBr_45051a, 1
  br i1 %cmpBr_45051a, label %block_.L_45068f, label %block_450520

block_450520:
  ; Code: movslq -0x1e4(%rbp), %rax	 RIP: 450520	 Bytes: 7
  %loadMem_450520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450520 = call %struct.Memory* @routine_movslq_MINUS0x1e4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450520)
  store %struct.Memory* %call_450520, %struct.Memory** %MEMORY

  ; Code: movsbl -0x1e0(%rbp,%rax,1), %ecx	 RIP: 450527	 Bytes: 8
  %loadMem_450527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450527 = call %struct.Memory* @routine_movsbl_MINUS0x1e0__rbp__rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450527)
  store %struct.Memory* %call_450527, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 45052f	 Bytes: 3
  %loadMem_45052f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45052f = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45052f)
  store %struct.Memory* %call_45052f, %struct.Memory** %MEMORY

  ; Code: je .L_45068f	 RIP: 450532	 Bytes: 6
  %loadMem_450532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450532 = call %struct.Memory* @routine_je_.L_45068f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450532, i8* %BRANCH_TAKEN, i64 349, i64 6, i64 6)
  store %struct.Memory* %call_450532, %struct.Memory** %MEMORY

  %loadBr_450532 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450532 = icmp eq i8 %loadBr_450532, 1
  br i1 %cmpBr_450532, label %block_.L_45068f, label %block_450538

block_450538:
  ; Code: movl -0x1e4(%rbp), %edi	 RIP: 450538	 Bytes: 6
  %loadMem_450538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450538 = call %struct.Memory* @routine_movl_MINUS0x1e4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450538)
  store %struct.Memory* %call_450538, %struct.Memory** %MEMORY

  ; Code: callq .countlib	 RIP: 45053e	 Bytes: 5
  %loadMem1_45053e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45053e = call %struct.Memory* @routine_callq_.countlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45053e, i64 -265662, i64 5, i64 5)
  store %struct.Memory* %call1_45053e, %struct.Memory** %MEMORY

  %loadMem2_45053e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45053e = load i64, i64* %3
  %call2_45053e = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64  %loadPC_45053e, %struct.Memory* %loadMem2_45053e)
  store %struct.Memory* %call2_45053e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, %eax	 RIP: 450543	 Bytes: 3
  %loadMem_450543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450543 = call %struct.Memory* @routine_cmpl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450543)
  store %struct.Memory* %call_450543, %struct.Memory** %MEMORY

  ; Code: jge .L_45068f	 RIP: 450546	 Bytes: 6
  %loadMem_450546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450546 = call %struct.Memory* @routine_jge_.L_45068f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450546, i8* %BRANCH_TAKEN, i64 329, i64 6, i64 6)
  store %struct.Memory* %call_450546, %struct.Memory** %MEMORY

  %loadBr_450546 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450546 = icmp eq i8 %loadBr_450546, 1
  br i1 %cmpBr_450546, label %block_.L_45068f, label %block_45054c

block_45054c:
  ; Code: movl $0x4, %esi	 RIP: 45054c	 Bytes: 5
  %loadMem_45054c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45054c = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45054c)
  store %struct.Memory* %call_45054c, %struct.Memory** %MEMORY

  ; Code: leaq -0x210(%rbp), %rdx	 RIP: 450551	 Bytes: 7
  %loadMem_450551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450551 = call %struct.Memory* @routine_leaq_MINUS0x210__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450551)
  store %struct.Memory* %call_450551, %struct.Memory** %MEMORY

  ; Code: movl -0x1e4(%rbp), %edi	 RIP: 450558	 Bytes: 6
  %loadMem_450558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450558 = call %struct.Memory* @routine_movl_MINUS0x1e4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450558)
  store %struct.Memory* %call_450558, %struct.Memory** %MEMORY

  ; Code: callq .findlib	 RIP: 45055e	 Bytes: 5
  %loadMem1_45055e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45055e = call %struct.Memory* @routine_callq_.findlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45055e, i64 -265502, i64 5, i64 5)
  store %struct.Memory* %call1_45055e, %struct.Memory** %MEMORY

  %loadMem2_45055e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45055e = load i64, i64* %3
  %call2_45055e = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64  %loadPC_45055e, %struct.Memory* %loadMem2_45055e)
  store %struct.Memory* %call2_45055e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x214(%rbp)	 RIP: 450563	 Bytes: 6
  %loadMem_450563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450563 = call %struct.Memory* @routine_movl__eax__MINUS0x214__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450563)
  store %struct.Memory* %call_450563, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1ec(%rbp)	 RIP: 450569	 Bytes: 10
  %loadMem_450569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450569 = call %struct.Memory* @routine_movl__0x0__MINUS0x1ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450569)
  store %struct.Memory* %call_450569, %struct.Memory** %MEMORY

  ; Code: .L_450573:	 RIP: 450573	 Bytes: 0
  br label %block_.L_450573
block_.L_450573:

  ; Code: movl -0x1ec(%rbp), %eax	 RIP: 450573	 Bytes: 6
  %loadMem_450573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450573 = call %struct.Memory* @routine_movl_MINUS0x1ec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450573)
  store %struct.Memory* %call_450573, %struct.Memory** %MEMORY

  ; Code: cmpl -0x214(%rbp), %eax	 RIP: 450579	 Bytes: 6
  %loadMem_450579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450579 = call %struct.Memory* @routine_cmpl_MINUS0x214__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450579)
  store %struct.Memory* %call_450579, %struct.Memory** %MEMORY

  ; Code: jge .L_4505b0	 RIP: 45057f	 Bytes: 6
  %loadMem_45057f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45057f = call %struct.Memory* @routine_jge_.L_4505b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45057f, i8* %BRANCH_TAKEN, i64 49, i64 6, i64 6)
  store %struct.Memory* %call_45057f, %struct.Memory** %MEMORY

  %loadBr_45057f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45057f = icmp eq i8 %loadBr_45057f, 1
  br i1 %cmpBr_45057f, label %block_.L_4505b0, label %block_450585

block_450585:
  ; Code: movslq -0x1ec(%rbp), %rax	 RIP: 450585	 Bytes: 7
  %loadMem_450585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450585 = call %struct.Memory* @routine_movslq_MINUS0x1ec__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450585)
  store %struct.Memory* %call_450585, %struct.Memory** %MEMORY

  ; Code: movslq -0x210(%rbp,%rax,4), %rax	 RIP: 45058c	 Bytes: 8
  %loadMem_45058c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45058c = call %struct.Memory* @routine_movslq_MINUS0x210__rbp__rax_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45058c)
  store %struct.Memory* %call_45058c, %struct.Memory** %MEMORY

  ; Code: movb $0x1, -0x1e0(%rbp,%rax,1)	 RIP: 450594	 Bytes: 8
  %loadMem_450594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450594 = call %struct.Memory* @routine_movb__0x1__MINUS0x1e0__rbp__rax_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450594)
  store %struct.Memory* %call_450594, %struct.Memory** %MEMORY

  ; Code: movl -0x1ec(%rbp), %eax	 RIP: 45059c	 Bytes: 6
  %loadMem_45059c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45059c = call %struct.Memory* @routine_movl_MINUS0x1ec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45059c)
  store %struct.Memory* %call_45059c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4505a2	 Bytes: 3
  %loadMem_4505a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4505a2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4505a2)
  store %struct.Memory* %call_4505a2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1ec(%rbp)	 RIP: 4505a5	 Bytes: 6
  %loadMem_4505a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4505a5 = call %struct.Memory* @routine_movl__eax__MINUS0x1ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4505a5)
  store %struct.Memory* %call_4505a5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_450573	 RIP: 4505ab	 Bytes: 5
  %loadMem_4505ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4505ab = call %struct.Memory* @routine_jmpq_.L_450573(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4505ab, i64 -56, i64 5)
  store %struct.Memory* %call_4505ab, %struct.Memory** %MEMORY

  br label %block_.L_450573

  ; Code: .L_4505b0:	 RIP: 4505b0	 Bytes: 0
block_.L_4505b0:

  ; Code: leaq -0x4a0(%rbp), %rsi	 RIP: 4505b0	 Bytes: 7
  %loadMem_4505b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4505b0 = call %struct.Memory* @routine_leaq_MINUS0x4a0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4505b0)
  store %struct.Memory* %call_4505b0, %struct.Memory** %MEMORY

  ; Code: movl -0x1e4(%rbp), %edi	 RIP: 4505b7	 Bytes: 6
  %loadMem_4505b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4505b7 = call %struct.Memory* @routine_movl_MINUS0x1e4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4505b7)
  store %struct.Memory* %call_4505b7, %struct.Memory** %MEMORY

  ; Code: callq .chainlinks	 RIP: 4505bd	 Bytes: 5
  %loadMem1_4505bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4505bd = call %struct.Memory* @routine_callq_.chainlinks(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4505bd, i64 -248509, i64 5, i64 5)
  store %struct.Memory* %call1_4505bd, %struct.Memory** %MEMORY

  %loadMem2_4505bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4505bd = load i64, i64* %3
  %call2_4505bd = call %struct.Memory* @sub_413b00.chainlinks(%struct.State* %0, i64  %loadPC_4505bd, %struct.Memory* %loadMem2_4505bd)
  store %struct.Memory* %call2_4505bd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4a4(%rbp)	 RIP: 4505c2	 Bytes: 6
  %loadMem_4505c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4505c2 = call %struct.Memory* @routine_movl__eax__MINUS0x4a4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4505c2)
  store %struct.Memory* %call_4505c2, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1ec(%rbp)	 RIP: 4505c8	 Bytes: 10
  %loadMem_4505c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4505c8 = call %struct.Memory* @routine_movl__0x0__MINUS0x1ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4505c8)
  store %struct.Memory* %call_4505c8, %struct.Memory** %MEMORY

  ; Code: .L_4505d2:	 RIP: 4505d2	 Bytes: 0
  br label %block_.L_4505d2
block_.L_4505d2:

  ; Code: movl -0x1ec(%rbp), %eax	 RIP: 4505d2	 Bytes: 6
  %loadMem_4505d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4505d2 = call %struct.Memory* @routine_movl_MINUS0x1ec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4505d2)
  store %struct.Memory* %call_4505d2, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4a4(%rbp), %eax	 RIP: 4505d8	 Bytes: 6
  %loadMem_4505d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4505d8 = call %struct.Memory* @routine_cmpl_MINUS0x4a4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4505d8)
  store %struct.Memory* %call_4505d8, %struct.Memory** %MEMORY

  ; Code: jge .L_45068a	 RIP: 4505de	 Bytes: 6
  %loadMem_4505de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4505de = call %struct.Memory* @routine_jge_.L_45068a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4505de, i8* %BRANCH_TAKEN, i64 172, i64 6, i64 6)
  store %struct.Memory* %call_4505de, %struct.Memory** %MEMORY

  %loadBr_4505de = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4505de = icmp eq i8 %loadBr_4505de, 1
  br i1 %cmpBr_4505de, label %block_.L_45068a, label %block_4505e4

block_4505e4:
  ; Code: movslq -0x1ec(%rbp), %rax	 RIP: 4505e4	 Bytes: 7
  %loadMem_4505e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4505e4 = call %struct.Memory* @routine_movslq_MINUS0x1ec__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4505e4)
  store %struct.Memory* %call_4505e4, %struct.Memory** %MEMORY

  ; Code: movl -0x4a0(%rbp,%rax,4), %edi	 RIP: 4505eb	 Bytes: 7
  %loadMem_4505eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4505eb = call %struct.Memory* @routine_movl_MINUS0x4a0__rbp__rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4505eb)
  store %struct.Memory* %call_4505eb, %struct.Memory** %MEMORY

  ; Code: callq .countlib	 RIP: 4505f2	 Bytes: 5
  %loadMem1_4505f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4505f2 = call %struct.Memory* @routine_callq_.countlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4505f2, i64 -265842, i64 5, i64 5)
  store %struct.Memory* %call1_4505f2, %struct.Memory** %MEMORY

  %loadMem2_4505f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4505f2 = load i64, i64* %3
  %call2_4505f2 = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64  %loadPC_4505f2, %struct.Memory* %loadMem2_4505f2)
  store %struct.Memory* %call2_4505f2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 4505f7	 Bytes: 3
  %loadMem_4505f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4505f7 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4505f7)
  store %struct.Memory* %call_4505f7, %struct.Memory** %MEMORY

  ; Code: jg .L_450671	 RIP: 4505fa	 Bytes: 6
  %loadMem_4505fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4505fa = call %struct.Memory* @routine_jg_.L_450671(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4505fa, i8* %BRANCH_TAKEN, i64 119, i64 6, i64 6)
  store %struct.Memory* %call_4505fa, %struct.Memory** %MEMORY

  %loadBr_4505fa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4505fa = icmp eq i8 %loadBr_4505fa, 1
  br i1 %cmpBr_4505fa, label %block_.L_450671, label %block_450600

block_450600:
  ; Code: movl $0x3, %esi	 RIP: 450600	 Bytes: 5
  %loadMem_450600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450600 = call %struct.Memory* @routine_movl__0x3___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450600)
  store %struct.Memory* %call_450600, %struct.Memory** %MEMORY

  ; Code: leaq -0x210(%rbp), %rdx	 RIP: 450605	 Bytes: 7
  %loadMem_450605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450605 = call %struct.Memory* @routine_leaq_MINUS0x210__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450605)
  store %struct.Memory* %call_450605, %struct.Memory** %MEMORY

  ; Code: movslq -0x1ec(%rbp), %rax	 RIP: 45060c	 Bytes: 7
  %loadMem_45060c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45060c = call %struct.Memory* @routine_movslq_MINUS0x1ec__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45060c)
  store %struct.Memory* %call_45060c, %struct.Memory** %MEMORY

  ; Code: movl -0x4a0(%rbp,%rax,4), %edi	 RIP: 450613	 Bytes: 7
  %loadMem_450613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450613 = call %struct.Memory* @routine_movl_MINUS0x4a0__rbp__rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450613)
  store %struct.Memory* %call_450613, %struct.Memory** %MEMORY

  ; Code: callq .findlib	 RIP: 45061a	 Bytes: 5
  %loadMem1_45061a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45061a = call %struct.Memory* @routine_callq_.findlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45061a, i64 -265690, i64 5, i64 5)
  store %struct.Memory* %call1_45061a, %struct.Memory** %MEMORY

  %loadMem2_45061a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45061a = load i64, i64* %3
  %call2_45061a = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64  %loadPC_45061a, %struct.Memory* %loadMem2_45061a)
  store %struct.Memory* %call2_45061a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x214(%rbp)	 RIP: 45061f	 Bytes: 6
  %loadMem_45061f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45061f = call %struct.Memory* @routine_movl__eax__MINUS0x214__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45061f)
  store %struct.Memory* %call_45061f, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4a8(%rbp)	 RIP: 450625	 Bytes: 10
  %loadMem_450625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450625 = call %struct.Memory* @routine_movl__0x0__MINUS0x4a8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450625)
  store %struct.Memory* %call_450625, %struct.Memory** %MEMORY

  ; Code: .L_45062f:	 RIP: 45062f	 Bytes: 0
  br label %block_.L_45062f
block_.L_45062f:

  ; Code: movl -0x4a8(%rbp), %eax	 RIP: 45062f	 Bytes: 6
  %loadMem_45062f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45062f = call %struct.Memory* @routine_movl_MINUS0x4a8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45062f)
  store %struct.Memory* %call_45062f, %struct.Memory** %MEMORY

  ; Code: cmpl -0x214(%rbp), %eax	 RIP: 450635	 Bytes: 6
  %loadMem_450635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450635 = call %struct.Memory* @routine_cmpl_MINUS0x214__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450635)
  store %struct.Memory* %call_450635, %struct.Memory** %MEMORY

  ; Code: jge .L_45066c	 RIP: 45063b	 Bytes: 6
  %loadMem_45063b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45063b = call %struct.Memory* @routine_jge_.L_45066c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45063b, i8* %BRANCH_TAKEN, i64 49, i64 6, i64 6)
  store %struct.Memory* %call_45063b, %struct.Memory** %MEMORY

  %loadBr_45063b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45063b = icmp eq i8 %loadBr_45063b, 1
  br i1 %cmpBr_45063b, label %block_.L_45066c, label %block_450641

block_450641:
  ; Code: movslq -0x4a8(%rbp), %rax	 RIP: 450641	 Bytes: 7
  %loadMem_450641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450641 = call %struct.Memory* @routine_movslq_MINUS0x4a8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450641)
  store %struct.Memory* %call_450641, %struct.Memory** %MEMORY

  ; Code: movslq -0x210(%rbp,%rax,4), %rax	 RIP: 450648	 Bytes: 8
  %loadMem_450648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450648 = call %struct.Memory* @routine_movslq_MINUS0x210__rbp__rax_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450648)
  store %struct.Memory* %call_450648, %struct.Memory** %MEMORY

  ; Code: movb $0x1, -0x1e0(%rbp,%rax,1)	 RIP: 450650	 Bytes: 8
  %loadMem_450650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450650 = call %struct.Memory* @routine_movb__0x1__MINUS0x1e0__rbp__rax_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450650)
  store %struct.Memory* %call_450650, %struct.Memory** %MEMORY

  ; Code: movl -0x4a8(%rbp), %eax	 RIP: 450658	 Bytes: 6
  %loadMem_450658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450658 = call %struct.Memory* @routine_movl_MINUS0x4a8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450658)
  store %struct.Memory* %call_450658, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45065e	 Bytes: 3
  %loadMem_45065e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45065e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45065e)
  store %struct.Memory* %call_45065e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4a8(%rbp)	 RIP: 450661	 Bytes: 6
  %loadMem_450661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450661 = call %struct.Memory* @routine_movl__eax__MINUS0x4a8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450661)
  store %struct.Memory* %call_450661, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45062f	 RIP: 450667	 Bytes: 5
  %loadMem_450667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450667 = call %struct.Memory* @routine_jmpq_.L_45062f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450667, i64 -56, i64 5)
  store %struct.Memory* %call_450667, %struct.Memory** %MEMORY

  br label %block_.L_45062f

  ; Code: .L_45066c:	 RIP: 45066c	 Bytes: 0
block_.L_45066c:

  ; Code: jmpq .L_450671	 RIP: 45066c	 Bytes: 5
  %loadMem_45066c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45066c = call %struct.Memory* @routine_jmpq_.L_450671(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45066c, i64 5, i64 5)
  store %struct.Memory* %call_45066c, %struct.Memory** %MEMORY

  br label %block_.L_450671

  ; Code: .L_450671:	 RIP: 450671	 Bytes: 0
block_.L_450671:

  ; Code: jmpq .L_450676	 RIP: 450671	 Bytes: 5
  %loadMem_450671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450671 = call %struct.Memory* @routine_jmpq_.L_450676(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450671, i64 5, i64 5)
  store %struct.Memory* %call_450671, %struct.Memory** %MEMORY

  br label %block_.L_450676

  ; Code: .L_450676:	 RIP: 450676	 Bytes: 0
block_.L_450676:

  ; Code: movl -0x1ec(%rbp), %eax	 RIP: 450676	 Bytes: 6
  %loadMem_450676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450676 = call %struct.Memory* @routine_movl_MINUS0x1ec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450676)
  store %struct.Memory* %call_450676, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45067c	 Bytes: 3
  %loadMem_45067c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45067c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45067c)
  store %struct.Memory* %call_45067c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1ec(%rbp)	 RIP: 45067f	 Bytes: 6
  %loadMem_45067f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45067f = call %struct.Memory* @routine_movl__eax__MINUS0x1ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45067f)
  store %struct.Memory* %call_45067f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4505d2	 RIP: 450685	 Bytes: 5
  %loadMem_450685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450685 = call %struct.Memory* @routine_jmpq_.L_4505d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450685, i64 -179, i64 5)
  store %struct.Memory* %call_450685, %struct.Memory** %MEMORY

  br label %block_.L_4505d2

  ; Code: .L_45068a:	 RIP: 45068a	 Bytes: 0
block_.L_45068a:

  ; Code: jmpq .L_45068f	 RIP: 45068a	 Bytes: 5
  %loadMem_45068a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45068a = call %struct.Memory* @routine_jmpq_.L_45068f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45068a, i64 5, i64 5)
  store %struct.Memory* %call_45068a, %struct.Memory** %MEMORY

  br label %block_.L_45068f

  ; Code: .L_45068f:	 RIP: 45068f	 Bytes: 0
block_.L_45068f:

  ; Code: jmpq .L_450694	 RIP: 45068f	 Bytes: 5
  %loadMem_45068f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45068f = call %struct.Memory* @routine_jmpq_.L_450694(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45068f, i64 5, i64 5)
  store %struct.Memory* %call_45068f, %struct.Memory** %MEMORY

  br label %block_.L_450694

  ; Code: .L_450694:	 RIP: 450694	 Bytes: 0
block_.L_450694:

  ; Code: movl -0x1e4(%rbp), %eax	 RIP: 450694	 Bytes: 6
  %loadMem_450694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450694 = call %struct.Memory* @routine_movl_MINUS0x1e4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450694)
  store %struct.Memory* %call_450694, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45069a	 Bytes: 3
  %loadMem_45069a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45069a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45069a)
  store %struct.Memory* %call_45069a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1e4(%rbp)	 RIP: 45069d	 Bytes: 6
  %loadMem_45069d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45069d = call %struct.Memory* @routine_movl__eax__MINUS0x1e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45069d)
  store %struct.Memory* %call_45069d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4504f5	 RIP: 4506a3	 Bytes: 5
  %loadMem_4506a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4506a3 = call %struct.Memory* @routine_jmpq_.L_4504f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4506a3, i64 -430, i64 5)
  store %struct.Memory* %call_4506a3, %struct.Memory** %MEMORY

  br label %block_.L_4504f5

  ; Code: .L_4506a8:	 RIP: 4506a8	 Bytes: 0
block_.L_4506a8:

  ; Code: movl $0x15, -0x1e4(%rbp)	 RIP: 4506a8	 Bytes: 10
  %loadMem_4506a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4506a8 = call %struct.Memory* @routine_movl__0x15__MINUS0x1e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4506a8)
  store %struct.Memory* %call_4506a8, %struct.Memory** %MEMORY

  ; Code: .L_4506b2:	 RIP: 4506b2	 Bytes: 0
  br label %block_.L_4506b2
block_.L_4506b2:

  ; Code: cmpl $0x190, -0x1e4(%rbp)	 RIP: 4506b2	 Bytes: 10
  %loadMem_4506b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4506b2 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x1e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4506b2)
  store %struct.Memory* %call_4506b2, %struct.Memory** %MEMORY

  ; Code: jge .L_4507b3	 RIP: 4506bc	 Bytes: 6
  %loadMem_4506bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4506bc = call %struct.Memory* @routine_jge_.L_4507b3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4506bc, i8* %BRANCH_TAKEN, i64 247, i64 6, i64 6)
  store %struct.Memory* %call_4506bc, %struct.Memory** %MEMORY

  %loadBr_4506bc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4506bc = icmp eq i8 %loadBr_4506bc, 1
  br i1 %cmpBr_4506bc, label %block_.L_4507b3, label %block_4506c2

block_4506c2:
  ; Code: movslq -0x1e4(%rbp), %rax	 RIP: 4506c2	 Bytes: 7
  %loadMem_4506c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4506c2 = call %struct.Memory* @routine_movslq_MINUS0x1e4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4506c2)
  store %struct.Memory* %call_4506c2, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 4506c9	 Bytes: 8
  %loadMem_4506c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4506c9 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4506c9)
  store %struct.Memory* %call_4506c9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x4ac(%rbp)	 RIP: 4506d1	 Bytes: 6
  %loadMem_4506d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4506d1 = call %struct.Memory* @routine_movl__ecx__MINUS0x4ac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4506d1)
  store %struct.Memory* %call_4506d1, %struct.Memory** %MEMORY

  ; Code: movslq -0x1e4(%rbp), %rax	 RIP: 4506d7	 Bytes: 7
  %loadMem_4506d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4506d7 = call %struct.Memory* @routine_movslq_MINUS0x1e4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4506d7)
  store %struct.Memory* %call_4506d7, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 4506de	 Bytes: 8
  %loadMem_4506de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4506de = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4506de)
  store %struct.Memory* %call_4506de, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 4506e6	 Bytes: 3
  %loadMem_4506e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4506e6 = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4506e6)
  store %struct.Memory* %call_4506e6, %struct.Memory** %MEMORY

  ; Code: jne .L_4506f4	 RIP: 4506e9	 Bytes: 6
  %loadMem_4506e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4506e9 = call %struct.Memory* @routine_jne_.L_4506f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4506e9, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4506e9, %struct.Memory** %MEMORY

  %loadBr_4506e9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4506e9 = icmp eq i8 %loadBr_4506e9, 1
  br i1 %cmpBr_4506e9, label %block_.L_4506f4, label %block_4506ef

block_4506ef:
  ; Code: jmpq .L_45079f	 RIP: 4506ef	 Bytes: 5
  %loadMem_4506ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4506ef = call %struct.Memory* @routine_jmpq_.L_45079f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4506ef, i64 176, i64 5)
  store %struct.Memory* %call_4506ef, %struct.Memory** %MEMORY

  br label %block_.L_45079f

  ; Code: .L_4506f4:	 RIP: 4506f4	 Bytes: 0
block_.L_4506f4:

  ; Code: movslq -0x1e4(%rbp), %rax	 RIP: 4506f4	 Bytes: 7
  %loadMem_4506f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4506f4 = call %struct.Memory* @routine_movslq_MINUS0x1e4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4506f4)
  store %struct.Memory* %call_4506f4, %struct.Memory** %MEMORY

  ; Code: cmpb $0x0, -0x1e0(%rbp,%rax,1)	 RIP: 4506fb	 Bytes: 8
  %loadMem_4506fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4506fb = call %struct.Memory* @routine_cmpb__0x0__MINUS0x1e0__rbp__rax_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4506fb)
  store %struct.Memory* %call_4506fb, %struct.Memory** %MEMORY

  ; Code: jne .L_450718	 RIP: 450703	 Bytes: 6
  %loadMem_450703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450703 = call %struct.Memory* @routine_jne_.L_450718(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450703, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_450703, %struct.Memory** %MEMORY

  %loadBr_450703 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450703 = icmp eq i8 %loadBr_450703, 1
  br i1 %cmpBr_450703, label %block_.L_450718, label %block_450709

block_450709:
  ; Code: movl $0x3, -0x4ac(%rbp)	 RIP: 450709	 Bytes: 10
  %loadMem_450709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450709 = call %struct.Memory* @routine_movl__0x3__MINUS0x4ac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450709)
  store %struct.Memory* %call_450709, %struct.Memory** %MEMORY

  ; Code: jmpq .L_450770	 RIP: 450713	 Bytes: 5
  %loadMem_450713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450713 = call %struct.Memory* @routine_jmpq_.L_450770(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450713, i64 93, i64 5)
  store %struct.Memory* %call_450713, %struct.Memory** %MEMORY

  br label %block_.L_450770

  ; Code: .L_450718:	 RIP: 450718	 Bytes: 0
block_.L_450718:

  ; Code: movslq -0x1e4(%rbp), %rax	 RIP: 450718	 Bytes: 7
  %loadMem_450718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450718 = call %struct.Memory* @routine_movslq_MINUS0x1e4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450718)
  store %struct.Memory* %call_450718, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 45071f	 Bytes: 8
  %loadMem_45071f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45071f = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45071f)
  store %struct.Memory* %call_45071f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %ecx	 RIP: 450727	 Bytes: 3
  %loadMem_450727 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450727 = call %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450727)
  store %struct.Memory* %call_450727, %struct.Memory** %MEMORY

  ; Code: je .L_450748	 RIP: 45072a	 Bytes: 6
  %loadMem_45072a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45072a = call %struct.Memory* @routine_je_.L_450748(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45072a, i8* %BRANCH_TAKEN, i64 30, i64 6, i64 6)
  store %struct.Memory* %call_45072a, %struct.Memory** %MEMORY

  %loadBr_45072a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45072a = icmp eq i8 %loadBr_45072a, 1
  br i1 %cmpBr_45072a, label %block_.L_450748, label %block_450730

block_450730:
  ; Code: movslq -0x1e4(%rbp), %rax	 RIP: 450730	 Bytes: 7
  %loadMem_450730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450730 = call %struct.Memory* @routine_movslq_MINUS0x1e4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450730)
  store %struct.Memory* %call_450730, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 450737	 Bytes: 8
  %loadMem_450737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450737 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450737)
  store %struct.Memory* %call_450737, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %ecx	 RIP: 45073f	 Bytes: 3
  %loadMem_45073f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45073f = call %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45073f)
  store %struct.Memory* %call_45073f, %struct.Memory** %MEMORY

  ; Code: jne .L_45076b	 RIP: 450742	 Bytes: 6
  %loadMem_450742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450742 = call %struct.Memory* @routine_jne_.L_45076b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450742, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_450742, %struct.Memory** %MEMORY

  %loadBr_450742 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450742 = icmp eq i8 %loadBr_450742, 1
  br i1 %cmpBr_450742, label %block_.L_45076b, label %block_.L_450748

  ; Code: .L_450748:	 RIP: 450748	 Bytes: 0
block_.L_450748:

  ; Code: movl -0x1e4(%rbp), %edi	 RIP: 450748	 Bytes: 6
  %loadMem_450748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450748 = call %struct.Memory* @routine_movl_MINUS0x1e4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450748)
  store %struct.Memory* %call_450748, %struct.Memory** %MEMORY

  ; Code: callq .countlib	 RIP: 45074e	 Bytes: 5
  %loadMem1_45074e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45074e = call %struct.Memory* @routine_callq_.countlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45074e, i64 -266190, i64 5, i64 5)
  store %struct.Memory* %call1_45074e, %struct.Memory** %MEMORY

  %loadMem2_45074e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45074e = load i64, i64* %3
  %call2_45074e = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64  %loadPC_45074e, %struct.Memory* %loadMem2_45074e)
  store %struct.Memory* %call2_45074e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, %eax	 RIP: 450753	 Bytes: 3
  %loadMem_450753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450753 = call %struct.Memory* @routine_cmpl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450753)
  store %struct.Memory* %call_450753, %struct.Memory** %MEMORY

  ; Code: jle .L_45076b	 RIP: 450756	 Bytes: 6
  %loadMem_450756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450756 = call %struct.Memory* @routine_jle_.L_45076b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450756, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_450756, %struct.Memory** %MEMORY

  %loadBr_450756 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_450756 = icmp eq i8 %loadBr_450756, 1
  br i1 %cmpBr_450756, label %block_.L_45076b, label %block_45075c

block_45075c:
  ; Code: movl -0x4ac(%rbp), %eax	 RIP: 45075c	 Bytes: 6
  %loadMem_45075c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45075c = call %struct.Memory* @routine_movl_MINUS0x4ac__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45075c)
  store %struct.Memory* %call_45075c, %struct.Memory** %MEMORY

  ; Code: orl $0x4, %eax	 RIP: 450762	 Bytes: 3
  %loadMem_450762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450762 = call %struct.Memory* @routine_orl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450762)
  store %struct.Memory* %call_450762, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4ac(%rbp)	 RIP: 450765	 Bytes: 6
  %loadMem_450765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450765 = call %struct.Memory* @routine_movl__eax__MINUS0x4ac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450765)
  store %struct.Memory* %call_450765, %struct.Memory** %MEMORY

  ; Code: .L_45076b:	 RIP: 45076b	 Bytes: 0
  br label %block_.L_45076b
block_.L_45076b:

  ; Code: jmpq .L_450770	 RIP: 45076b	 Bytes: 5
  %loadMem_45076b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45076b = call %struct.Memory* @routine_jmpq_.L_450770(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45076b, i64 5, i64 5)
  store %struct.Memory* %call_45076b, %struct.Memory** %MEMORY

  br label %block_.L_450770

  ; Code: .L_450770:	 RIP: 450770	 Bytes: 0
block_.L_450770:

  ; Code: movq $0xad1730, %rax	 RIP: 450770	 Bytes: 10
  %loadMem_450770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450770 = call %struct.Memory* @routine_movq__0xad1730___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450770)
  store %struct.Memory* %call_450770, %struct.Memory** %MEMORY

  ; Code: movl -0x4ac(%rbp), %ecx	 RIP: 45077a	 Bytes: 6
  %loadMem_45077a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45077a = call %struct.Memory* @routine_movl_MINUS0x4ac__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45077a)
  store %struct.Memory* %call_45077a, %struct.Memory** %MEMORY

  ; Code: movb %cl, %dl	 RIP: 450780	 Bytes: 2
  %loadMem_450780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450780 = call %struct.Memory* @routine_movb__cl___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450780)
  store %struct.Memory* %call_450780, %struct.Memory** %MEMORY

  ; Code: movslq 0xad1720, %rsi	 RIP: 450782	 Bytes: 8
  %loadMem_450782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450782 = call %struct.Memory* @routine_movslq_0xad1720___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450782)
  store %struct.Memory* %call_450782, %struct.Memory** %MEMORY

  ; Code: imulq $0x1bc, %rsi, %rsi	 RIP: 45078a	 Bytes: 7
  %loadMem_45078a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45078a = call %struct.Memory* @routine_imulq__0x1bc___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45078a)
  store %struct.Memory* %call_45078a, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rax	 RIP: 450791	 Bytes: 3
  %loadMem_450791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450791 = call %struct.Memory* @routine_addq__rsi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450791)
  store %struct.Memory* %call_450791, %struct.Memory** %MEMORY

  ; Code: movslq -0x1e4(%rbp), %rsi	 RIP: 450794	 Bytes: 7
  %loadMem_450794 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450794 = call %struct.Memory* @routine_movslq_MINUS0x1e4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450794)
  store %struct.Memory* %call_450794, %struct.Memory** %MEMORY

  ; Code: movb %dl, 0x4(%rax,%rsi,1)	 RIP: 45079b	 Bytes: 4
  %loadMem_45079b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45079b = call %struct.Memory* @routine_movb__dl__0x4__rax__rsi_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45079b)
  store %struct.Memory* %call_45079b, %struct.Memory** %MEMORY

  ; Code: .L_45079f:	 RIP: 45079f	 Bytes: 0
  br label %block_.L_45079f
block_.L_45079f:

  ; Code: movl -0x1e4(%rbp), %eax	 RIP: 45079f	 Bytes: 6
  %loadMem_45079f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45079f = call %struct.Memory* @routine_movl_MINUS0x1e4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45079f)
  store %struct.Memory* %call_45079f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4507a5	 Bytes: 3
  %loadMem_4507a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4507a5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4507a5)
  store %struct.Memory* %call_4507a5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1e4(%rbp)	 RIP: 4507a8	 Bytes: 6
  %loadMem_4507a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4507a8 = call %struct.Memory* @routine_movl__eax__MINUS0x1e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4507a8)
  store %struct.Memory* %call_4507a8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4506b2	 RIP: 4507ae	 Bytes: 5
  %loadMem_4507ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4507ae = call %struct.Memory* @routine_jmpq_.L_4506b2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4507ae, i64 -252, i64 5)
  store %struct.Memory* %call_4507ae, %struct.Memory** %MEMORY

  br label %block_.L_4506b2

  ; Code: .L_4507b3:	 RIP: 4507b3	 Bytes: 0
block_.L_4507b3:

  ; Code: movl 0xab0f24, %eax	 RIP: 4507b3	 Bytes: 7
  %loadMem_4507b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4507b3 = call %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4507b3)
  store %struct.Memory* %call_4507b3, %struct.Memory** %MEMORY

  ; Code: andl $0x200000, %eax	 RIP: 4507ba	 Bytes: 5
  %loadMem_4507ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4507ba = call %struct.Memory* @routine_andl__0x200000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4507ba)
  store %struct.Memory* %call_4507ba, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4507bf	 Bytes: 3
  %loadMem_4507bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4507bf = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4507bf)
  store %struct.Memory* %call_4507bf, %struct.Memory** %MEMORY

  ; Code: je .L_4507f2	 RIP: 4507c2	 Bytes: 6
  %loadMem_4507c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4507c2 = call %struct.Memory* @routine_je_.L_4507f2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4507c2, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_4507c2, %struct.Memory** %MEMORY

  %loadBr_4507c2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4507c2 = icmp eq i8 %loadBr_4507c2, 1
  br i1 %cmpBr_4507c2, label %block_.L_4507f2, label %block_4507c8

block_4507c8:
  ; Code: movq $0x57f0de, %rdi	 RIP: 4507c8	 Bytes: 10
  %loadMem_4507c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4507c8 = call %struct.Memory* @routine_movq__0x57f0de___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4507c8)
  store %struct.Memory* %call_4507c8, %struct.Memory** %MEMORY

  ; Code: movl 0xad1720, %esi	 RIP: 4507d2	 Bytes: 7
  %loadMem_4507d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4507d2 = call %struct.Memory* @routine_movl_0xad1720___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4507d2)
  store %struct.Memory* %call_4507d2, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4507d9	 Bytes: 2
  %loadMem_4507d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4507d9 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4507d9)
  store %struct.Memory* %call_4507d9, %struct.Memory** %MEMORY

  ; Code: callq .gprintf	 RIP: 4507db	 Bytes: 5
  %loadMem1_4507db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4507db = call %struct.Memory* @routine_callq_.gprintf(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4507db, i64 5589, i64 5, i64 5)
  store %struct.Memory* %call1_4507db, %struct.Memory** %MEMORY

  %loadMem2_4507db = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4507db = load i64, i64* %3
  %call2_4507db = call %struct.Memory* @sub_451db0.gprintf(%struct.State* %0, i64  %loadPC_4507db, %struct.Memory* %loadMem2_4507db)
  store %struct.Memory* %call2_4507db, %struct.Memory** %MEMORY

  ; Code: movl 0xad1720, %edi	 RIP: 4507e0	 Bytes: 7
  %loadMem_4507e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4507e0 = call %struct.Memory* @routine_movl_0xad1720___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4507e0)
  store %struct.Memory* %call_4507e0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4b4(%rbp)	 RIP: 4507e7	 Bytes: 6
  %loadMem_4507e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4507e7 = call %struct.Memory* @routine_movl__eax__MINUS0x4b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4507e7)
  store %struct.Memory* %call_4507e7, %struct.Memory** %MEMORY

  ; Code: callq .print_persistent_owl_cache_entry	 RIP: 4507ed	 Bytes: 5
  %loadMem1_4507ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4507ed = call %struct.Memory* @routine_callq_.print_persistent_owl_cache_entry(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4507ed, i64 51, i64 5, i64 5)
  store %struct.Memory* %call1_4507ed, %struct.Memory** %MEMORY

  %loadMem2_4507ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4507ed = load i64, i64* %3
  %call2_4507ed = call %struct.Memory* @sub_450820.print_persistent_owl_cache_entry(%struct.State* %0, i64  %loadPC_4507ed, %struct.Memory* %loadMem2_4507ed)
  store %struct.Memory* %call2_4507ed, %struct.Memory** %MEMORY

  ; Code: .L_4507f2:	 RIP: 4507f2	 Bytes: 0
  br label %block_.L_4507f2
block_.L_4507f2:

  ; Code: movl 0xad1720, %eax	 RIP: 4507f2	 Bytes: 7
  %loadMem_4507f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4507f2 = call %struct.Memory* @routine_movl_0xad1720___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4507f2)
  store %struct.Memory* %call_4507f2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4507f9	 Bytes: 3
  %loadMem_4507f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4507f9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4507f9)
  store %struct.Memory* %call_4507f9, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xad1720	 RIP: 4507fc	 Bytes: 7
  %loadMem_4507fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4507fc = call %struct.Memory* @routine_movl__eax__0xad1720(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4507fc)
  store %struct.Memory* %call_4507fc, %struct.Memory** %MEMORY

  ; Code: .L_450803:	 RIP: 450803	 Bytes: 0
  br label %block_.L_450803
block_.L_450803:

  ; Code: addq $0x4a8, %rsp	 RIP: 450803	 Bytes: 7
  %loadMem_450803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450803 = call %struct.Memory* @routine_addq__0x4a8___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450803)
  store %struct.Memory* %call_450803, %struct.Memory** %MEMORY

  ; Code: popq %rbx	 RIP: 45080a	 Bytes: 1
  %loadMem_45080a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45080a = call %struct.Memory* @routine_popq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45080a)
  store %struct.Memory* %call_45080a, %struct.Memory** %MEMORY

  ; Code: popq %r14	 RIP: 45080b	 Bytes: 2
  %loadMem_45080b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45080b = call %struct.Memory* @routine_popq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45080b)
  store %struct.Memory* %call_45080b, %struct.Memory** %MEMORY

  ; Code: popq %r15	 RIP: 45080d	 Bytes: 2
  %loadMem_45080d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45080d = call %struct.Memory* @routine_popq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45080d)
  store %struct.Memory* %call_45080d, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 45080f	 Bytes: 1
  %loadMem_45080f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45080f = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45080f)
  store %struct.Memory* %call_45080f, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 450810	 Bytes: 1
  %loadMem_450810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_450810 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_450810)
  store %struct.Memory* %call_450810, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_450810
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

define %struct.Memory* @routine_subq__0x4a8___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 1192)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x30__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl_0x20__rbp____r11d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R11D to i64*
  %13 = load i64, i64* %RBP
  %14 = add i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_0x18__rbp____ebx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x10__rbp____r14d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R14D to i64*
  %13 = load i64, i64* %RBP
  %14 = add i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x3___r15d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R15D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 3)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edi__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__esi__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r8d__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r9d__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r14d__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %R14D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__ebx__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EBX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %EBX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r11d__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %R11D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__r10__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %R10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_subl_MINUS0x4c__rbp____r15d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R15D to i64*
  %13 = load i32, i32* %R15D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %RBP
  %16 = sub i64 %15, 76
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl__r15d__MINUS0x1f0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 496
  %14 = load i32, i32* %R15D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_jne_.L_44ff1c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
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

define %struct.Memory* @routine_jmpq_.L_44ff44(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

define %struct.Memory* @routine_movq__0x57eec5___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57eec5_type* @G__0x57eec5 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x2d2___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 722)
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


define %struct.Memory* @routine_cmpl__0x96__0xad1720(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xad1720_type* @G_0xad1720 to i64), i64 150)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_44ff5a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_callq_.purge_persistent_owl_cache(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_44ffa1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
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

define %struct.Memory* @routine_andl__0x1000___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 4096)
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


define %struct.Memory* @routine_jne_.L_44ff85(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_44ff9c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57f0c2___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57f0c2_type* @G__0x57f0c2 to i64))
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


define %struct.Memory* @routine_movl__eax__MINUS0x4b0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1200
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_450803(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0xad1730___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0xad1730_type* @G__0xad1730 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0x7ae438___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x7ae438_type* @G_0x7ae438 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_0xad1720___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0xad1720_type* @G_0xad1720 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_imulq__0x1bc___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 444)
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


define %struct.Memory* @routine_movl__ecx____rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
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










define %struct.Memory* @routine_movl__ecx__0x19c__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 412
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl__ecx__0x1a0__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 416
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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










define %struct.Memory* @routine_movl__ecx__0x1a4__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 420
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl__ecx__0x1a8__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 424
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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










define %struct.Memory* @routine_movl__ecx__0x1ac__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 428
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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










define %struct.Memory* @routine_movl__ecx__0x1b0__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 432
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl__ecx__0x1b4__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 436
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl__ecx__0x1b8__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 440
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










define %struct.Memory* @routine_movl__ecx__0x198__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 408
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_0xafdfb0___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0xafdfb0_type* @G_0xafdfb0 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__ecx__0x194__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 404
  %14 = load i32, i32* %ECX
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

define %struct.Memory* @routine_movl__0x15__MINUS0x1e4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 484
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 21)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x190__MINUS0x1e4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 484
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
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

define %struct.Memory* @routine_jge_.L_450171(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x1e4__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 484
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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

define %struct.Memory* @routine_je_.L_450158(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x1e4__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 484
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i8* nocapture) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_setne__sil(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %SIL)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #0 {
  %6 = and i64 %4, %3
  %7 = trunc i64 %6 to i8
  store i8 %7, i8* %2, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = trunc i64 %6 to i32
  %10 = and i32 %9, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10) #22
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = icmp eq i8 %7, 0
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %17, i8* %18, align 1
  %19 = lshr i8 %7, 7
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_andb__0x1___sil(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i8, i8* %SIL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %SIL, i64 %11, i64 1)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 255
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzbl__sil___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RDX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %SIL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__dl___sil(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 9
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %DL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %SIL, i64 %15)
  ret %struct.Memory* %18
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__sil__MINUS0x1e0__rbp__rax_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 15
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RBP = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = add i64 %16, -480
  %19 = add i64 %18, %17
  %20 = load i8, i8* %SIL
  %21 = zext i8 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 8
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_jmpq_.L_45015d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_MINUS0x1e4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 484
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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


define %struct.Memory* @routine_movl__eax__MINUS0x1e4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 484
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_450100(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpl__0x1a5__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 421)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %2, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %11 = select i1 %8, i64 %3, i64 %4
  store i64 %11, i64* %10, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jae_.L_45019f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_je_.L_45019f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__0x1__MINUS0x1e0__rbp__rax_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %12, -480
  %15 = add i64 %14, %13
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 1)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x1a5__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 421)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jae_.L_4501cd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_je_.L_4501cd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__0x1__MINUS0x1e8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 488
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x5__MINUS0x1e8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 488
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4503cf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_4503b6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_450249(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl_MINUS0x1f0__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 496
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movsbl_MINUS0x1e0__rbp__rax_1____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = add i64 %15, -480
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 8
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %18)
  ret %struct.Memory* %21
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


define %struct.Memory* @routine_je_.L_45024e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4503a2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_je_.L_45028b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movsbl_MINUS0x1e0__rbp__rcx_1____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = load i64, i64* %RCX
  %17 = add i64 %15, -480
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 8
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_cmpl_MINUS0x1e8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 488
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_450342(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_4502c8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_450305(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_je_.L_45039d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_45039d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_jne_.L_450378(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl_MINUS0x1e8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 488
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movslq_MINUS0x1e4__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 484
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movb__cl__MINUS0x1e0__rbp__rdx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RDX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 15
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RBP = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RDX
  %18 = add i64 %16, -480
  %19 = add i64 %18, %17
  %20 = load i8, i8* %CL
  %21 = zext i8 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_jmpq_.L_450398(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x1e0__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 480
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x1e4__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 484
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}







define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i32
  %6 = shl i32 %5, 24
  %7 = ashr exact i32 %6, 24
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsbl__cl___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RDX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %CL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_callq_.mark_string(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_45039d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_jmpq_.L_4501ee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4503bb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movl__eax__MINUS0x1e8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 488
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4501d7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_4504eb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_45041c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_je_.L_450421(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4504d7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x0__MINUS0x1ec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 492
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x4__MINUS0x1ec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 492
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4504d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movslq_MINUS0x1ec__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 492
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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


define %struct.Memory* @routine_movl__eax__MINUS0x1f4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 500
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0x1f4__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 500
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_je_.L_4504b9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x1f4__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 500
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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








define %struct.Memory* @routine_jmpq_.L_4504d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4504be(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_MINUS0x1ec__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 492
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x1ec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 492
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_45042b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_jmpq_.L_4503d9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_4506a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_45068f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_je_.L_45068f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.countlib(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jge_.L_45068f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x4___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_leaq_MINUS0x210__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 528
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__eax__MINUS0x214__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 532
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_cmpl_MINUS0x214__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 532
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_4505b0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x1ec__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 492
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x210__rbp__rax_4____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %12, -528
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %16)
  ret %struct.Memory* %19
}










define %struct.Memory* @routine_jmpq_.L_450573(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_leaq_MINUS0x4a0__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_callq_.chainlinks(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x4a4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1188
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_cmpl_MINUS0x4a4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 1188
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_45068a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x4a0__rbp__rax_4____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1184
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %19)
  ret %struct.Memory* %22
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

define %struct.Memory* @routine_jg_.L_450671(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x3___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 3)
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_movl__0x0__MINUS0x4a8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1192
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x4a8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_45066c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x4a8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl__eax__MINUS0x4a8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1192
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_45062f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_450671(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_450676(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4505d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45068f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_450694(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4504f5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_4507b3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__ecx__MINUS0x4ac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1196
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_jne_.L_4506f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_45079f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = inttoptr i64 %2 to i8*
  %6 = load i8, i8* %5
  %7 = trunc i64 %3 to i8
  %8 = sub i8 %6, %7
  %9 = icmp ult i8 %6, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = zext i8 %8 to i32
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12) #22
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i8 %6, %7
  %19 = xor i8 %18, %8
  %20 = lshr i8 %19, 4
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i8 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i8 %8, 7
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i8 %6, 7
  %29 = lshr i8 %7, 7
  %30 = xor i8 %28, %29
  %31 = xor i8 %26, %28
  %32 = add   i8 %31, %30
  %33 = icmp eq i8 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpb__0x0__MINUS0x1e0__rbp__rax_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %12, -480
  %15 = add i64 %14, %13
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_450718(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__0x3__MINUS0x4ac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1196
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_450770(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_je_.L_450748(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_45076b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_cmpl__0x4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
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

define %struct.Memory* @routine_jle_.L_45076b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x4ac__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1196
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = or i64 %4, %3
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

define %struct.Memory* @routine_orl__0x4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 4)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__MINUS0x4ac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1196
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_MINUS0x4ac__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1196
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movb__cl___dl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %DL, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_0xad1720___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0xad1720_type* @G_0xad1720 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_imulq__0x1bc___rsi___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 444)
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


define %struct.Memory* @routine_movslq_MINUS0x1e4__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 484
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movb__dl__0x4__rax__rsi_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 9
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RSI = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RSI
  %18 = add i64 %16, 4
  %19 = add i64 %18, %17
  %20 = load i8, i8* %DL
  %21 = zext i8 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}








define %struct.Memory* @routine_jmpq_.L_4506b2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_andl__0x200000___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 2097152)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_4507f2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x57f0de___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57f0de_type* @G__0x57f0de to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0xad1720___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0xad1720_type* @G_0xad1720 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl_0xad1720___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0xad1720_type* @G_0xad1720 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x4b4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1204
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_.print_persistent_owl_cache_entry(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0xad1720___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0xad1720_type* @G_0xad1720 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__0xad1720(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xad1720_type* @G_0xad1720 to i64), i64 %10)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_addq__0x4a8___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 1192)
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

