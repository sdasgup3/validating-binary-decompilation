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
declare %struct.Memory* @sub_40f840.findlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_408e30.trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40db00.tryko(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40f780.countlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4115b0.approxlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G__0x581a3a_type = type <{ [8 x i8] }>
@G__0x581a3a= global %G__0x581a3a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x581cc1_type = type <{ [8 x i8] }>
@G__0x581cc1= global %G__0x581cc1_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x581cd4_type = type <{ [8 x i8] }>
@G__0x581cd4= global %G__0x581cd4_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @unconditional_life(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .unconditional_life:	 RIP: 47a640	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 47a640	 Bytes: 1
  %loadMem_47a640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a640 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a640)
  store %struct.Memory* %call_47a640, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 47a641	 Bytes: 3
  %loadMem_47a641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a641 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a641)
  store %struct.Memory* %call_47a641, %struct.Memory** %MEMORY

  ; Code: subq $0x440, %rsp	 RIP: 47a644	 Bytes: 7
  %loadMem_47a644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a644 = call %struct.Memory* @routine_subq__0x440___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a644)
  store %struct.Memory* %call_47a644, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %eax	 RIP: 47a64b	 Bytes: 5
  %loadMem_47a64b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a64b = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a64b)
  store %struct.Memory* %call_47a64b, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 47a650	 Bytes: 4
  %loadMem_47a650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a650 = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a650)
  store %struct.Memory* %call_47a650, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0xc(%rbp)	 RIP: 47a654	 Bytes: 3
  %loadMem_47a654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a654 = call %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a654)
  store %struct.Memory* %call_47a654, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x10(%rbp)	 RIP: 47a657	 Bytes: 7
  %loadMem_47a657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a657 = call %struct.Memory* @routine_movl__0x1__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a657)
  store %struct.Memory* %call_47a657, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 47a65e	 Bytes: 7
  %loadMem_47a65e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a65e = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a65e)
  store %struct.Memory* %call_47a65e, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 47a665	 Bytes: 3
  %loadMem_47a665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a665 = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a665)
  store %struct.Memory* %call_47a665, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3f8(%rbp)	 RIP: 47a668	 Bytes: 6
  %loadMem_47a668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a668 = call %struct.Memory* @routine_movl__eax__MINUS0x3f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a668)
  store %struct.Memory* %call_47a668, %struct.Memory** %MEMORY

  ; Code: .L_47a66e:	 RIP: 47a66e	 Bytes: 0
  br label %block_.L_47a66e
block_.L_47a66e:

  ; Code: cmpl $0x0, -0x10(%rbp)	 RIP: 47a66e	 Bytes: 4
  %loadMem_47a66e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a66e = call %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a66e)
  store %struct.Memory* %call_47a66e, %struct.Memory** %MEMORY

  ; Code: je .L_47a844	 RIP: 47a672	 Bytes: 6
  %loadMem_47a672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a672 = call %struct.Memory* @routine_je_.L_47a844(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a672, i8* %BRANCH_TAKEN, i64 466, i64 6, i64 6)
  store %struct.Memory* %call_47a672, %struct.Memory** %MEMORY

  %loadBr_47a672 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a672 = icmp eq i8 %loadBr_47a672, 1
  br i1 %cmpBr_47a672, label %block_.L_47a844, label %block_47a678

block_47a678:
  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 47a678	 Bytes: 7
  %loadMem_47a678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a678 = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a678)
  store %struct.Memory* %call_47a678, %struct.Memory** %MEMORY

  ; Code: movl $0x15, -0x20(%rbp)	 RIP: 47a67f	 Bytes: 7
  %loadMem_47a67f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a67f = call %struct.Memory* @routine_movl__0x15__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a67f)
  store %struct.Memory* %call_47a67f, %struct.Memory** %MEMORY

  ; Code: .L_47a686:	 RIP: 47a686	 Bytes: 0
  br label %block_.L_47a686
block_.L_47a686:

  ; Code: cmpl $0x190, -0x20(%rbp)	 RIP: 47a686	 Bytes: 7
  %loadMem_47a686 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a686 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a686)
  store %struct.Memory* %call_47a686, %struct.Memory** %MEMORY

  ; Code: jge .L_47a83f	 RIP: 47a68d	 Bytes: 6
  %loadMem_47a68d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a68d = call %struct.Memory* @routine_jge_.L_47a83f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a68d, i8* %BRANCH_TAKEN, i64 434, i64 6, i64 6)
  store %struct.Memory* %call_47a68d, %struct.Memory** %MEMORY

  %loadBr_47a68d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a68d = icmp eq i8 %loadBr_47a68d, 1
  br i1 %cmpBr_47a68d, label %block_.L_47a83f, label %block_47a693

block_47a693:
  ; Code: movslq -0x20(%rbp), %rax	 RIP: 47a693	 Bytes: 4
  %loadMem_47a693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a693 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a693)
  store %struct.Memory* %call_47a693, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 47a697	 Bytes: 8
  %loadMem_47a697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a697 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a697)
  store %struct.Memory* %call_47a697, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %ecx	 RIP: 47a69f	 Bytes: 3
  %loadMem_47a69f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a69f = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a69f)
  store %struct.Memory* %call_47a69f, %struct.Memory** %MEMORY

  ; Code: jne .L_47a6bc	 RIP: 47a6a2	 Bytes: 6
  %loadMem_47a6a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6a2 = call %struct.Memory* @routine_jne_.L_47a6bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6a2, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_47a6a2, %struct.Memory** %MEMORY

  %loadBr_47a6a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a6a2 = icmp eq i8 %loadBr_47a6a2, 1
  br i1 %cmpBr_47a6a2, label %block_.L_47a6bc, label %block_47a6a8

block_47a6a8:
  ; Code: movl -0x20(%rbp), %edi	 RIP: 47a6a8	 Bytes: 3
  %loadMem_47a6a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6a8 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6a8)
  store %struct.Memory* %call_47a6a8, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %esi	 RIP: 47a6ab	 Bytes: 3
  %loadMem_47a6ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6ab = call %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6ab)
  store %struct.Memory* %call_47a6ab, %struct.Memory** %MEMORY

  ; Code: callq .is_worm_origin	 RIP: 47a6ae	 Bytes: 5
  %loadMem1_47a6ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47a6ae = call %struct.Memory* @routine_callq_.is_worm_origin(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47a6ae, i64 55874, i64 5, i64 5)
  store %struct.Memory* %call1_47a6ae, %struct.Memory** %MEMORY

  %loadMem2_47a6ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47a6ae = load i64, i64* %3
  %call2_47a6ae = call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* %0, i64  %loadPC_47a6ae, %struct.Memory* %loadMem2_47a6ae)
  store %struct.Memory* %call2_47a6ae, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47a6b3	 Bytes: 3
  %loadMem_47a6b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6b3 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6b3)
  store %struct.Memory* %call_47a6b3, %struct.Memory** %MEMORY

  ; Code: jne .L_47a6c1	 RIP: 47a6b6	 Bytes: 6
  %loadMem_47a6b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6b6 = call %struct.Memory* @routine_jne_.L_47a6c1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6b6, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47a6b6, %struct.Memory** %MEMORY

  %loadBr_47a6b6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a6b6 = icmp eq i8 %loadBr_47a6b6, 1
  br i1 %cmpBr_47a6b6, label %block_.L_47a6c1, label %block_.L_47a6bc

  ; Code: .L_47a6bc:	 RIP: 47a6bc	 Bytes: 0
block_.L_47a6bc:

  ; Code: jmpq .L_47a831	 RIP: 47a6bc	 Bytes: 5
  %loadMem_47a6bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6bc = call %struct.Memory* @routine_jmpq_.L_47a831(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6bc, i64 373, i64 5)
  store %struct.Memory* %call_47a6bc, %struct.Memory** %MEMORY

  br label %block_.L_47a831

  ; Code: .L_47a6c1:	 RIP: 47a6c1	 Bytes: 0
block_.L_47a6c1:

  ; Code: movl $0xf1, %esi	 RIP: 47a6c1	 Bytes: 5
  %loadMem_47a6c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6c1 = call %struct.Memory* @routine_movl__0xf1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6c1)
  store %struct.Memory* %call_47a6c1, %struct.Memory** %MEMORY

  ; Code: leaq -0x3f0(%rbp), %rdx	 RIP: 47a6c6	 Bytes: 7
  %loadMem_47a6c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6c6 = call %struct.Memory* @routine_leaq_MINUS0x3f0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6c6)
  store %struct.Memory* %call_47a6c6, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %edi	 RIP: 47a6cd	 Bytes: 3
  %loadMem_47a6cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6cd = call %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6cd)
  store %struct.Memory* %call_47a6cd, %struct.Memory** %MEMORY

  ; Code: callq .findlib	 RIP: 47a6d0	 Bytes: 5
  %loadMem1_47a6d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47a6d0 = call %struct.Memory* @routine_callq_.findlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47a6d0, i64 -437904, i64 5, i64 5)
  store %struct.Memory* %call1_47a6d0, %struct.Memory** %MEMORY

  %loadMem2_47a6d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47a6d0 = load i64, i64* %3
  %call2_47a6d0 = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64  %loadPC_47a6d0, %struct.Memory* %loadMem2_47a6d0)
  store %struct.Memory* %call2_47a6d0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3f4(%rbp)	 RIP: 47a6d5	 Bytes: 6
  %loadMem_47a6d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6d5 = call %struct.Memory* @routine_movl__eax__MINUS0x3f4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6d5)
  store %struct.Memory* %call_47a6d5, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %eax	 RIP: 47a6db	 Bytes: 3
  %loadMem_47a6db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6db = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6db)
  store %struct.Memory* %call_47a6db, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 47a6de	 Bytes: 3
  %loadMem_47a6de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6de = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6de)
  store %struct.Memory* %call_47a6de, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 47a6e1	 Bytes: 7
  %loadMem_47a6e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6e1 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6e1)
  store %struct.Memory* %call_47a6e1, %struct.Memory** %MEMORY

  ; Code: .L_47a6e8:	 RIP: 47a6e8	 Bytes: 0
  br label %block_.L_47a6e8
block_.L_47a6e8:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 47a6e8	 Bytes: 3
  %loadMem_47a6e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6e8 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6e8)
  store %struct.Memory* %call_47a6e8, %struct.Memory** %MEMORY

  ; Code: cmpl -0x3f4(%rbp), %eax	 RIP: 47a6eb	 Bytes: 6
  %loadMem_47a6eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6eb = call %struct.Memory* @routine_cmpl_MINUS0x3f4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6eb)
  store %struct.Memory* %call_47a6eb, %struct.Memory** %MEMORY

  ; Code: jge .L_47a747	 RIP: 47a6f1	 Bytes: 6
  %loadMem_47a6f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6f1 = call %struct.Memory* @routine_jge_.L_47a747(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6f1, i8* %BRANCH_TAKEN, i64 86, i64 6, i64 6)
  store %struct.Memory* %call_47a6f1, %struct.Memory** %MEMORY

  %loadBr_47a6f1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a6f1 = icmp eq i8 %loadBr_47a6f1, 1
  br i1 %cmpBr_47a6f1, label %block_.L_47a747, label %block_47a6f7

block_47a6f7:
  ; Code: movq $0x581cc1, %rdx	 RIP: 47a6f7	 Bytes: 10
  %loadMem_47a6f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6f7 = call %struct.Memory* @routine_movq__0x581cc1___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6f7)
  store %struct.Memory* %call_47a6f7, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 47a701	 Bytes: 2
  %loadMem_47a701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a701 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a701)
  store %struct.Memory* %call_47a701, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 47a703	 Bytes: 4
  %loadMem_47a703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a703 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a703)
  store %struct.Memory* %call_47a703, %struct.Memory** %MEMORY

  ; Code: movl -0x3f0(%rbp,%rcx,4), %edi	 RIP: 47a707	 Bytes: 7
  %loadMem_47a707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a707 = call %struct.Memory* @routine_movl_MINUS0x3f0__rbp__rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a707)
  store %struct.Memory* %call_47a707, %struct.Memory** %MEMORY

  ; Code: movl -0x3f8(%rbp), %esi	 RIP: 47a70e	 Bytes: 6
  %loadMem_47a70e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a70e = call %struct.Memory* @routine_movl_MINUS0x3f8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a70e)
  store %struct.Memory* %call_47a70e, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 47a714	 Bytes: 3
  %loadMem_47a714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a714 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a714)
  store %struct.Memory* %call_47a714, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 47a717	 Bytes: 3
  %loadMem_47a717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a717 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a717)
  store %struct.Memory* %call_47a717, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 47a71a	 Bytes: 3
  %loadMem_47a71a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a71a = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a71a)
  store %struct.Memory* %call_47a71a, %struct.Memory** %MEMORY

  ; Code: callq .trymove	 RIP: 47a71d	 Bytes: 5
  %loadMem1_47a71d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47a71d = call %struct.Memory* @routine_callq_.trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47a71d, i64 -465133, i64 5, i64 5)
  store %struct.Memory* %call1_47a71d, %struct.Memory** %MEMORY

  %loadMem2_47a71d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47a71d = load i64, i64* %3
  %call2_47a71d = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64  %loadPC_47a71d, %struct.Memory* %loadMem2_47a71d)
  store %struct.Memory* %call2_47a71d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47a722	 Bytes: 3
  %loadMem_47a722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a722 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a722)
  store %struct.Memory* %call_47a722, %struct.Memory** %MEMORY

  ; Code: je .L_47a734	 RIP: 47a725	 Bytes: 6
  %loadMem_47a725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a725 = call %struct.Memory* @routine_je_.L_47a734(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a725, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_47a725, %struct.Memory** %MEMORY

  %loadBr_47a725 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a725 = icmp eq i8 %loadBr_47a725, 1
  br i1 %cmpBr_47a725, label %block_.L_47a734, label %block_47a72b

block_47a72b:
  ; Code: movl -0x18(%rbp), %eax	 RIP: 47a72b	 Bytes: 3
  %loadMem_47a72b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a72b = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a72b)
  store %struct.Memory* %call_47a72b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47a72e	 Bytes: 3
  %loadMem_47a72e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a72e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a72e)
  store %struct.Memory* %call_47a72e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 47a731	 Bytes: 3
  %loadMem_47a731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a731 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a731)
  store %struct.Memory* %call_47a731, %struct.Memory** %MEMORY

  ; Code: .L_47a734:	 RIP: 47a734	 Bytes: 0
  br label %block_.L_47a734
block_.L_47a734:

  ; Code: jmpq .L_47a739	 RIP: 47a734	 Bytes: 5
  %loadMem_47a734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a734 = call %struct.Memory* @routine_jmpq_.L_47a739(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a734, i64 5, i64 5)
  store %struct.Memory* %call_47a734, %struct.Memory** %MEMORY

  br label %block_.L_47a739

  ; Code: .L_47a739:	 RIP: 47a739	 Bytes: 0
block_.L_47a739:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 47a739	 Bytes: 3
  %loadMem_47a739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a739 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a739)
  store %struct.Memory* %call_47a739, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47a73c	 Bytes: 3
  %loadMem_47a73c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a73c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a73c)
  store %struct.Memory* %call_47a73c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 47a73f	 Bytes: 3
  %loadMem_47a73f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a73f = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a73f)
  store %struct.Memory* %call_47a73f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47a6e8	 RIP: 47a742	 Bytes: 5
  %loadMem_47a742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a742 = call %struct.Memory* @routine_jmpq_.L_47a6e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a742, i64 -90, i64 5)
  store %struct.Memory* %call_47a742, %struct.Memory** %MEMORY

  br label %block_.L_47a6e8

  ; Code: .L_47a747:	 RIP: 47a747	 Bytes: 0
block_.L_47a747:

  ; Code: movslq -0x20(%rbp), %rax	 RIP: 47a747	 Bytes: 4
  %loadMem_47a747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a747 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a747)
  store %struct.Memory* %call_47a747, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 47a74b	 Bytes: 8
  %loadMem_47a74b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a74b = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a74b)
  store %struct.Memory* %call_47a74b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 47a753	 Bytes: 3
  %loadMem_47a753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a753 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a753)
  store %struct.Memory* %call_47a753, %struct.Memory** %MEMORY

  ; Code: jne .L_47a768	 RIP: 47a756	 Bytes: 6
  %loadMem_47a756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a756 = call %struct.Memory* @routine_jne_.L_47a768(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a756, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_47a756, %struct.Memory** %MEMORY

  %loadBr_47a756 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a756 = icmp eq i8 %loadBr_47a756, 1
  br i1 %cmpBr_47a756, label %block_.L_47a768, label %block_47a75c

block_47a75c:
  ; Code: movl $0x1, -0x10(%rbp)	 RIP: 47a75c	 Bytes: 7
  %loadMem_47a75c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a75c = call %struct.Memory* @routine_movl__0x1__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a75c)
  store %struct.Memory* %call_47a75c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47a82c	 RIP: 47a763	 Bytes: 5
  %loadMem_47a763 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a763 = call %struct.Memory* @routine_jmpq_.L_47a82c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a763, i64 201, i64 5)
  store %struct.Memory* %call_47a763, %struct.Memory** %MEMORY

  br label %block_.L_47a82c

  ; Code: .L_47a768:	 RIP: 47a768	 Bytes: 0
block_.L_47a768:

  ; Code: movl $0x2, %esi	 RIP: 47a768	 Bytes: 5
  %loadMem_47a768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a768 = call %struct.Memory* @routine_movl__0x2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a768)
  store %struct.Memory* %call_47a768, %struct.Memory** %MEMORY

  ; Code: leaq -0x3f0(%rbp), %rdx	 RIP: 47a76d	 Bytes: 7
  %loadMem_47a76d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a76d = call %struct.Memory* @routine_leaq_MINUS0x3f0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a76d)
  store %struct.Memory* %call_47a76d, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %edi	 RIP: 47a774	 Bytes: 3
  %loadMem_47a774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a774 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a774)
  store %struct.Memory* %call_47a774, %struct.Memory** %MEMORY

  ; Code: callq .findlib	 RIP: 47a777	 Bytes: 5
  %loadMem1_47a777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47a777 = call %struct.Memory* @routine_callq_.findlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47a777, i64 -438071, i64 5, i64 5)
  store %struct.Memory* %call1_47a777, %struct.Memory** %MEMORY

  %loadMem2_47a777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47a777 = load i64, i64* %3
  %call2_47a777 = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64  %loadPC_47a777, %struct.Memory* %loadMem2_47a777)
  store %struct.Memory* %call2_47a777, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %eax	 RIP: 47a77c	 Bytes: 3
  %loadMem_47a77c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a77c = call %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a77c)
  store %struct.Memory* %call_47a77c, %struct.Memory** %MEMORY

  ; Code: jne .L_47a7fe	 RIP: 47a77f	 Bytes: 6
  %loadMem_47a77f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a77f = call %struct.Memory* @routine_jne_.L_47a7fe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a77f, i8* %BRANCH_TAKEN, i64 127, i64 6, i64 6)
  store %struct.Memory* %call_47a77f, %struct.Memory** %MEMORY

  %loadBr_47a77f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a77f = icmp eq i8 %loadBr_47a77f, 1
  br i1 %cmpBr_47a77f, label %block_.L_47a7fe, label %block_47a785

block_47a785:
  ; Code: movq $0x581cc1, %rdx	 RIP: 47a785	 Bytes: 10
  %loadMem_47a785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a785 = call %struct.Memory* @routine_movq__0x581cc1___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a785)
  store %struct.Memory* %call_47a785, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 47a78f	 Bytes: 2
  %loadMem_47a78f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a78f = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a78f)
  store %struct.Memory* %call_47a78f, %struct.Memory** %MEMORY

  ; Code: movl -0x3f0(%rbp), %edi	 RIP: 47a791	 Bytes: 6
  %loadMem_47a791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a791 = call %struct.Memory* @routine_movl_MINUS0x3f0__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a791)
  store %struct.Memory* %call_47a791, %struct.Memory** %MEMORY

  ; Code: movl -0x3f8(%rbp), %esi	 RIP: 47a797	 Bytes: 6
  %loadMem_47a797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a797 = call %struct.Memory* @routine_movl_MINUS0x3f8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a797)
  store %struct.Memory* %call_47a797, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 47a79d	 Bytes: 2
  %loadMem_47a79d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a79d = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a79d)
  store %struct.Memory* %call_47a79d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 47a79f	 Bytes: 3
  %loadMem_47a79f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a79f = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a79f)
  store %struct.Memory* %call_47a79f, %struct.Memory** %MEMORY

  ; Code: callq .tryko	 RIP: 47a7a2	 Bytes: 5
  %loadMem1_47a7a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47a7a2 = call %struct.Memory* @routine_callq_.tryko(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47a7a2, i64 -445602, i64 5, i64 5)
  store %struct.Memory* %call1_47a7a2, %struct.Memory** %MEMORY

  %loadMem2_47a7a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47a7a2 = load i64, i64* %3
  %call2_47a7a2 = call %struct.Memory* @sub_40db00.tryko(%struct.State* %0, i64  %loadPC_47a7a2, %struct.Memory* %loadMem2_47a7a2)
  store %struct.Memory* %call2_47a7a2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3fc(%rbp)	 RIP: 47a7a7	 Bytes: 6
  %loadMem_47a7a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7a7 = call %struct.Memory* @routine_movl__eax__MINUS0x3fc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7a7)
  store %struct.Memory* %call_47a7a7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x3fc(%rbp)	 RIP: 47a7ad	 Bytes: 7
  %loadMem_47a7ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7ad = call %struct.Memory* @routine_cmpl__0x0__MINUS0x3fc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7ad)
  store %struct.Memory* %call_47a7ad, %struct.Memory** %MEMORY

  ; Code: je .L_47a7bf	 RIP: 47a7b4	 Bytes: 6
  %loadMem_47a7b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7b4 = call %struct.Memory* @routine_je_.L_47a7bf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7b4, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47a7b4, %struct.Memory** %MEMORY

  %loadBr_47a7b4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a7b4 = icmp eq i8 %loadBr_47a7b4, 1
  br i1 %cmpBr_47a7b4, label %block_.L_47a7bf, label %block_47a7ba

block_47a7ba:
  ; Code: jmpq .L_47a7e7	 RIP: 47a7ba	 Bytes: 5
  %loadMem_47a7ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7ba = call %struct.Memory* @routine_jmpq_.L_47a7e7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7ba, i64 45, i64 5)
  store %struct.Memory* %call_47a7ba, %struct.Memory** %MEMORY

  br label %block_.L_47a7e7

  ; Code: .L_47a7bf:	 RIP: 47a7bf	 Bytes: 0
block_.L_47a7bf:

  ; Code: movq $0x581a3a, %rdi	 RIP: 47a7bf	 Bytes: 10
  %loadMem_47a7bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7bf = call %struct.Memory* @routine_movq__0x581a3a___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7bf)
  store %struct.Memory* %call_47a7bf, %struct.Memory** %MEMORY

  ; Code: movl $0x4de, %esi	 RIP: 47a7c9	 Bytes: 5
  %loadMem_47a7c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7c9 = call %struct.Memory* @routine_movl__0x4de___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7c9)
  store %struct.Memory* %call_47a7c9, %struct.Memory** %MEMORY

  ; Code: movq $0x581cd4, %rdx	 RIP: 47a7ce	 Bytes: 10
  %loadMem_47a7ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7ce = call %struct.Memory* @routine_movq__0x581cd4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7ce)
  store %struct.Memory* %call_47a7ce, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 47a7d8	 Bytes: 5
  %loadMem_47a7d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7d8 = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7d8)
  store %struct.Memory* %call_47a7d8, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 47a7dd	 Bytes: 2
  %loadMem_47a7dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7dd = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7dd)
  store %struct.Memory* %call_47a7dd, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 47a7df	 Bytes: 3
  %loadMem_47a7df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7df = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7df)
  store %struct.Memory* %call_47a7df, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 47a7e2	 Bytes: 5
  %loadMem1_47a7e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47a7e2 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47a7e2, i64 -165714, i64 5, i64 5)
  store %struct.Memory* %call1_47a7e2, %struct.Memory** %MEMORY

  %loadMem2_47a7e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47a7e2 = load i64, i64* %3
  %call2_47a7e2 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_47a7e2, %struct.Memory* %loadMem2_47a7e2)
  store %struct.Memory* %call2_47a7e2, %struct.Memory** %MEMORY

  ; Code: .L_47a7e7:	 RIP: 47a7e7	 Bytes: 0
  br label %block_.L_47a7e7
block_.L_47a7e7:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 47a7e7	 Bytes: 3
  %loadMem_47a7e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7e7 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7e7)
  store %struct.Memory* %call_47a7e7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47a7ea	 Bytes: 3
  %loadMem_47a7ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7ea = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7ea)
  store %struct.Memory* %call_47a7ea, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 47a7ed	 Bytes: 3
  %loadMem_47a7ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7ed = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7ed)
  store %struct.Memory* %call_47a7ed, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %eax	 RIP: 47a7f0	 Bytes: 3
  %loadMem_47a7f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7f0 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7f0)
  store %struct.Memory* %call_47a7f0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47a7f3	 Bytes: 3
  %loadMem_47a7f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7f3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7f3)
  store %struct.Memory* %call_47a7f3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 47a7f6	 Bytes: 3
  %loadMem_47a7f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7f6 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7f6)
  store %struct.Memory* %call_47a7f6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47a827	 RIP: 47a7f9	 Bytes: 5
  %loadMem_47a7f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7f9 = call %struct.Memory* @routine_jmpq_.L_47a827(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7f9, i64 46, i64 5)
  store %struct.Memory* %call_47a7f9, %struct.Memory** %MEMORY

  br label %block_.L_47a827

  ; Code: .L_47a7fe:	 RIP: 47a7fe	 Bytes: 0
block_.L_47a7fe:

  ; Code: jmpq .L_47a803	 RIP: 47a7fe	 Bytes: 5
  %loadMem_47a7fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7fe = call %struct.Memory* @routine_jmpq_.L_47a803(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7fe, i64 5, i64 5)
  store %struct.Memory* %call_47a7fe, %struct.Memory** %MEMORY

  br label %block_.L_47a803

  ; Code: .L_47a803:	 RIP: 47a803	 Bytes: 0
block_.L_47a803:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 47a803	 Bytes: 3
  %loadMem_47a803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a803 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a803)
  store %struct.Memory* %call_47a803, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1c(%rbp), %eax	 RIP: 47a806	 Bytes: 3
  %loadMem_47a806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a806 = call %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a806)
  store %struct.Memory* %call_47a806, %struct.Memory** %MEMORY

  ; Code: jle .L_47a822	 RIP: 47a809	 Bytes: 6
  %loadMem_47a809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a809 = call %struct.Memory* @routine_jle_.L_47a822(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a809, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_47a809, %struct.Memory** %MEMORY

  %loadBr_47a809 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a809 = icmp eq i8 %loadBr_47a809, 1
  br i1 %cmpBr_47a809, label %block_.L_47a822, label %block_47a80f

block_47a80f:
  ; Code: callq .popgo	 RIP: 47a80f	 Bytes: 5
  %loadMem1_47a80f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47a80f = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47a80f, i64 -445103, i64 5, i64 5)
  store %struct.Memory* %call1_47a80f, %struct.Memory** %MEMORY

  %loadMem2_47a80f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47a80f = load i64, i64* %3
  %call2_47a80f = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_47a80f, %struct.Memory* %loadMem2_47a80f)
  store %struct.Memory* %call2_47a80f, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %eax	 RIP: 47a814	 Bytes: 3
  %loadMem_47a814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a814 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a814)
  store %struct.Memory* %call_47a814, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 47a817	 Bytes: 3
  %loadMem_47a817 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a817 = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a817)
  store %struct.Memory* %call_47a817, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 47a81a	 Bytes: 3
  %loadMem_47a81a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a81a = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a81a)
  store %struct.Memory* %call_47a81a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47a803	 RIP: 47a81d	 Bytes: 5
  %loadMem_47a81d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a81d = call %struct.Memory* @routine_jmpq_.L_47a803(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a81d, i64 -26, i64 5)
  store %struct.Memory* %call_47a81d, %struct.Memory** %MEMORY

  br label %block_.L_47a803

  ; Code: .L_47a822:	 RIP: 47a822	 Bytes: 0
block_.L_47a822:

  ; Code: jmpq .L_47a827	 RIP: 47a822	 Bytes: 5
  %loadMem_47a822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a822 = call %struct.Memory* @routine_jmpq_.L_47a827(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a822, i64 5, i64 5)
  store %struct.Memory* %call_47a822, %struct.Memory** %MEMORY

  br label %block_.L_47a827

  ; Code: .L_47a827:	 RIP: 47a827	 Bytes: 0
block_.L_47a827:

  ; Code: jmpq .L_47a82c	 RIP: 47a827	 Bytes: 5
  %loadMem_47a827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a827 = call %struct.Memory* @routine_jmpq_.L_47a82c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a827, i64 5, i64 5)
  store %struct.Memory* %call_47a827, %struct.Memory** %MEMORY

  br label %block_.L_47a82c

  ; Code: .L_47a82c:	 RIP: 47a82c	 Bytes: 0
block_.L_47a82c:

  ; Code: jmpq .L_47a831	 RIP: 47a82c	 Bytes: 5
  %loadMem_47a82c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a82c = call %struct.Memory* @routine_jmpq_.L_47a831(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a82c, i64 5, i64 5)
  store %struct.Memory* %call_47a82c, %struct.Memory** %MEMORY

  br label %block_.L_47a831

  ; Code: .L_47a831:	 RIP: 47a831	 Bytes: 0
block_.L_47a831:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 47a831	 Bytes: 3
  %loadMem_47a831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a831 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a831)
  store %struct.Memory* %call_47a831, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47a834	 Bytes: 3
  %loadMem_47a834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a834 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a834)
  store %struct.Memory* %call_47a834, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 47a837	 Bytes: 3
  %loadMem_47a837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a837 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a837)
  store %struct.Memory* %call_47a837, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47a686	 RIP: 47a83a	 Bytes: 5
  %loadMem_47a83a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a83a = call %struct.Memory* @routine_jmpq_.L_47a686(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a83a, i64 -436, i64 5)
  store %struct.Memory* %call_47a83a, %struct.Memory** %MEMORY

  br label %block_.L_47a686

  ; Code: .L_47a83f:	 RIP: 47a83f	 Bytes: 0
block_.L_47a83f:

  ; Code: jmpq .L_47a66e	 RIP: 47a83f	 Bytes: 5
  %loadMem_47a83f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a83f = call %struct.Memory* @routine_jmpq_.L_47a66e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a83f, i64 -465, i64 5)
  store %struct.Memory* %call_47a83f, %struct.Memory** %MEMORY

  br label %block_.L_47a66e

  ; Code: .L_47a844:	 RIP: 47a844	 Bytes: 0
block_.L_47a844:

  ; Code: movl $0x15, -0x20(%rbp)	 RIP: 47a844	 Bytes: 7
  %loadMem_47a844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a844 = call %struct.Memory* @routine_movl__0x15__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a844)
  store %struct.Memory* %call_47a844, %struct.Memory** %MEMORY

  ; Code: .L_47a84b:	 RIP: 47a84b	 Bytes: 0
  br label %block_.L_47a84b
block_.L_47a84b:

  ; Code: cmpl $0x190, -0x20(%rbp)	 RIP: 47a84b	 Bytes: 7
  %loadMem_47a84b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a84b = call %struct.Memory* @routine_cmpl__0x190__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a84b)
  store %struct.Memory* %call_47a84b, %struct.Memory** %MEMORY

  ; Code: jge .L_47a919	 RIP: 47a852	 Bytes: 6
  %loadMem_47a852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a852 = call %struct.Memory* @routine_jge_.L_47a919(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a852, i8* %BRANCH_TAKEN, i64 199, i64 6, i64 6)
  store %struct.Memory* %call_47a852, %struct.Memory** %MEMORY

  %loadBr_47a852 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a852 = icmp eq i8 %loadBr_47a852, 1
  br i1 %cmpBr_47a852, label %block_.L_47a919, label %block_47a858

block_47a858:
  ; Code: movslq -0x20(%rbp), %rax	 RIP: 47a858	 Bytes: 4
  %loadMem_47a858 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a858 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a858)
  store %struct.Memory* %call_47a858, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 47a85c	 Bytes: 8
  %loadMem_47a85c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a85c = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a85c)
  store %struct.Memory* %call_47a85c, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %ecx	 RIP: 47a864	 Bytes: 3
  %loadMem_47a864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a864 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a864)
  store %struct.Memory* %call_47a864, %struct.Memory** %MEMORY

  ; Code: jne .L_47a881	 RIP: 47a867	 Bytes: 6
  %loadMem_47a867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a867 = call %struct.Memory* @routine_jne_.L_47a881(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a867, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_47a867, %struct.Memory** %MEMORY

  %loadBr_47a867 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a867 = icmp eq i8 %loadBr_47a867, 1
  br i1 %cmpBr_47a867, label %block_.L_47a881, label %block_47a86d

block_47a86d:
  ; Code: movl -0x20(%rbp), %edi	 RIP: 47a86d	 Bytes: 3
  %loadMem_47a86d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a86d = call %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a86d)
  store %struct.Memory* %call_47a86d, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %esi	 RIP: 47a870	 Bytes: 3
  %loadMem_47a870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a870 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a870)
  store %struct.Memory* %call_47a870, %struct.Memory** %MEMORY

  ; Code: callq .is_worm_origin	 RIP: 47a873	 Bytes: 5
  %loadMem1_47a873 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47a873 = call %struct.Memory* @routine_callq_.is_worm_origin(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47a873, i64 55421, i64 5, i64 5)
  store %struct.Memory* %call1_47a873, %struct.Memory** %MEMORY

  %loadMem2_47a873 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47a873 = load i64, i64* %3
  %call2_47a873 = call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* %0, i64  %loadPC_47a873, %struct.Memory* %loadMem2_47a873)
  store %struct.Memory* %call2_47a873, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47a878	 Bytes: 3
  %loadMem_47a878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a878 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a878)
  store %struct.Memory* %call_47a878, %struct.Memory** %MEMORY

  ; Code: jne .L_47a886	 RIP: 47a87b	 Bytes: 6
  %loadMem_47a87b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a87b = call %struct.Memory* @routine_jne_.L_47a886(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a87b, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47a87b, %struct.Memory** %MEMORY

  %loadBr_47a87b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a87b = icmp eq i8 %loadBr_47a87b, 1
  br i1 %cmpBr_47a87b, label %block_.L_47a886, label %block_.L_47a881

  ; Code: .L_47a881:	 RIP: 47a881	 Bytes: 0
block_.L_47a881:

  ; Code: jmpq .L_47a90b	 RIP: 47a881	 Bytes: 5
  %loadMem_47a881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a881 = call %struct.Memory* @routine_jmpq_.L_47a90b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a881, i64 138, i64 5)
  store %struct.Memory* %call_47a881, %struct.Memory** %MEMORY

  br label %block_.L_47a90b

  ; Code: .L_47a886:	 RIP: 47a886	 Bytes: 0
block_.L_47a886:

  ; Code: movl $0xf1, %esi	 RIP: 47a886	 Bytes: 5
  %loadMem_47a886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a886 = call %struct.Memory* @routine_movl__0xf1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a886)
  store %struct.Memory* %call_47a886, %struct.Memory** %MEMORY

  ; Code: leaq -0x3f0(%rbp), %rdx	 RIP: 47a88b	 Bytes: 7
  %loadMem_47a88b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a88b = call %struct.Memory* @routine_leaq_MINUS0x3f0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a88b)
  store %struct.Memory* %call_47a88b, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %edi	 RIP: 47a892	 Bytes: 3
  %loadMem_47a892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a892 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a892)
  store %struct.Memory* %call_47a892, %struct.Memory** %MEMORY

  ; Code: callq .findlib	 RIP: 47a895	 Bytes: 5
  %loadMem1_47a895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47a895 = call %struct.Memory* @routine_callq_.findlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47a895, i64 -438357, i64 5, i64 5)
  store %struct.Memory* %call1_47a895, %struct.Memory** %MEMORY

  %loadMem2_47a895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47a895 = load i64, i64* %3
  %call2_47a895 = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64  %loadPC_47a895, %struct.Memory* %loadMem2_47a895)
  store %struct.Memory* %call2_47a895, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3f4(%rbp)	 RIP: 47a89a	 Bytes: 6
  %loadMem_47a89a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a89a = call %struct.Memory* @routine_movl__eax__MINUS0x3f4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a89a)
  store %struct.Memory* %call_47a89a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 47a8a0	 Bytes: 7
  %loadMem_47a8a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8a0 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8a0)
  store %struct.Memory* %call_47a8a0, %struct.Memory** %MEMORY

  ; Code: .L_47a8a7:	 RIP: 47a8a7	 Bytes: 0
  br label %block_.L_47a8a7
block_.L_47a8a7:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 47a8a7	 Bytes: 3
  %loadMem_47a8a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8a7 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8a7)
  store %struct.Memory* %call_47a8a7, %struct.Memory** %MEMORY

  ; Code: cmpl -0x3f4(%rbp), %eax	 RIP: 47a8aa	 Bytes: 6
  %loadMem_47a8aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8aa = call %struct.Memory* @routine_cmpl_MINUS0x3f4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8aa)
  store %struct.Memory* %call_47a8aa, %struct.Memory** %MEMORY

  ; Code: jge .L_47a906	 RIP: 47a8b0	 Bytes: 6
  %loadMem_47a8b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8b0 = call %struct.Memory* @routine_jge_.L_47a906(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8b0, i8* %BRANCH_TAKEN, i64 86, i64 6, i64 6)
  store %struct.Memory* %call_47a8b0, %struct.Memory** %MEMORY

  %loadBr_47a8b0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a8b0 = icmp eq i8 %loadBr_47a8b0, 1
  br i1 %cmpBr_47a8b0, label %block_.L_47a906, label %block_47a8b6

block_47a8b6:
  ; Code: movq $0x581cc1, %rdx	 RIP: 47a8b6	 Bytes: 10
  %loadMem_47a8b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8b6 = call %struct.Memory* @routine_movq__0x581cc1___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8b6)
  store %struct.Memory* %call_47a8b6, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 47a8c0	 Bytes: 2
  %loadMem_47a8c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8c0 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8c0)
  store %struct.Memory* %call_47a8c0, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 47a8c2	 Bytes: 4
  %loadMem_47a8c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8c2 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8c2)
  store %struct.Memory* %call_47a8c2, %struct.Memory** %MEMORY

  ; Code: movl -0x3f0(%rbp,%rcx,4), %edi	 RIP: 47a8c6	 Bytes: 7
  %loadMem_47a8c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8c6 = call %struct.Memory* @routine_movl_MINUS0x3f0__rbp__rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8c6)
  store %struct.Memory* %call_47a8c6, %struct.Memory** %MEMORY

  ; Code: movl -0x3f8(%rbp), %esi	 RIP: 47a8cd	 Bytes: 6
  %loadMem_47a8cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8cd = call %struct.Memory* @routine_movl_MINUS0x3f8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8cd)
  store %struct.Memory* %call_47a8cd, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 47a8d3	 Bytes: 3
  %loadMem_47a8d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8d3 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8d3)
  store %struct.Memory* %call_47a8d3, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 47a8d6	 Bytes: 3
  %loadMem_47a8d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8d6 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8d6)
  store %struct.Memory* %call_47a8d6, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 47a8d9	 Bytes: 3
  %loadMem_47a8d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8d9 = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8d9)
  store %struct.Memory* %call_47a8d9, %struct.Memory** %MEMORY

  ; Code: callq .trymove	 RIP: 47a8dc	 Bytes: 5
  %loadMem1_47a8dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47a8dc = call %struct.Memory* @routine_callq_.trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47a8dc, i64 -465580, i64 5, i64 5)
  store %struct.Memory* %call1_47a8dc, %struct.Memory** %MEMORY

  %loadMem2_47a8dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47a8dc = load i64, i64* %3
  %call2_47a8dc = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64  %loadPC_47a8dc, %struct.Memory* %loadMem2_47a8dc)
  store %struct.Memory* %call2_47a8dc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47a8e1	 Bytes: 3
  %loadMem_47a8e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8e1 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8e1)
  store %struct.Memory* %call_47a8e1, %struct.Memory** %MEMORY

  ; Code: je .L_47a8f3	 RIP: 47a8e4	 Bytes: 6
  %loadMem_47a8e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8e4 = call %struct.Memory* @routine_je_.L_47a8f3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8e4, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_47a8e4, %struct.Memory** %MEMORY

  %loadBr_47a8e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a8e4 = icmp eq i8 %loadBr_47a8e4, 1
  br i1 %cmpBr_47a8e4, label %block_.L_47a8f3, label %block_47a8ea

block_47a8ea:
  ; Code: movl -0x18(%rbp), %eax	 RIP: 47a8ea	 Bytes: 3
  %loadMem_47a8ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8ea = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8ea)
  store %struct.Memory* %call_47a8ea, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47a8ed	 Bytes: 3
  %loadMem_47a8ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8ed = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8ed)
  store %struct.Memory* %call_47a8ed, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 47a8f0	 Bytes: 3
  %loadMem_47a8f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8f0 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8f0)
  store %struct.Memory* %call_47a8f0, %struct.Memory** %MEMORY

  ; Code: .L_47a8f3:	 RIP: 47a8f3	 Bytes: 0
  br label %block_.L_47a8f3
block_.L_47a8f3:

  ; Code: jmpq .L_47a8f8	 RIP: 47a8f3	 Bytes: 5
  %loadMem_47a8f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8f3 = call %struct.Memory* @routine_jmpq_.L_47a8f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8f3, i64 5, i64 5)
  store %struct.Memory* %call_47a8f3, %struct.Memory** %MEMORY

  br label %block_.L_47a8f8

  ; Code: .L_47a8f8:	 RIP: 47a8f8	 Bytes: 0
block_.L_47a8f8:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 47a8f8	 Bytes: 3
  %loadMem_47a8f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8f8 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8f8)
  store %struct.Memory* %call_47a8f8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47a8fb	 Bytes: 3
  %loadMem_47a8fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8fb = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8fb)
  store %struct.Memory* %call_47a8fb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 47a8fe	 Bytes: 3
  %loadMem_47a8fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8fe = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8fe)
  store %struct.Memory* %call_47a8fe, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47a8a7	 RIP: 47a901	 Bytes: 5
  %loadMem_47a901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a901 = call %struct.Memory* @routine_jmpq_.L_47a8a7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a901, i64 -90, i64 5)
  store %struct.Memory* %call_47a901, %struct.Memory** %MEMORY

  br label %block_.L_47a8a7

  ; Code: .L_47a906:	 RIP: 47a906	 Bytes: 0
block_.L_47a906:

  ; Code: jmpq .L_47a90b	 RIP: 47a906	 Bytes: 5
  %loadMem_47a906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a906 = call %struct.Memory* @routine_jmpq_.L_47a90b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a906, i64 5, i64 5)
  store %struct.Memory* %call_47a906, %struct.Memory** %MEMORY

  br label %block_.L_47a90b

  ; Code: .L_47a90b:	 RIP: 47a90b	 Bytes: 0
block_.L_47a90b:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 47a90b	 Bytes: 3
  %loadMem_47a90b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a90b = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a90b)
  store %struct.Memory* %call_47a90b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47a90e	 Bytes: 3
  %loadMem_47a90e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a90e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a90e)
  store %struct.Memory* %call_47a90e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 47a911	 Bytes: 3
  %loadMem_47a911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a911 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a911)
  store %struct.Memory* %call_47a911, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47a84b	 RIP: 47a914	 Bytes: 5
  %loadMem_47a914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a914 = call %struct.Memory* @routine_jmpq_.L_47a84b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a914, i64 -201, i64 5)
  store %struct.Memory* %call_47a914, %struct.Memory** %MEMORY

  br label %block_.L_47a84b

  ; Code: .L_47a919:	 RIP: 47a919	 Bytes: 0
block_.L_47a919:

  ; Code: movl $0x1, -0x14(%rbp)	 RIP: 47a919	 Bytes: 7
  %loadMem_47a919 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a919 = call %struct.Memory* @routine_movl__0x1__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a919)
  store %struct.Memory* %call_47a919, %struct.Memory** %MEMORY

  ; Code: .L_47a920:	 RIP: 47a920	 Bytes: 0
  br label %block_.L_47a920
block_.L_47a920:

  ; Code: cmpl $0x0, -0x14(%rbp)	 RIP: 47a920	 Bytes: 4
  %loadMem_47a920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a920 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a920)
  store %struct.Memory* %call_47a920, %struct.Memory** %MEMORY

  ; Code: je .L_47a9f8	 RIP: 47a924	 Bytes: 6
  %loadMem_47a924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a924 = call %struct.Memory* @routine_je_.L_47a9f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a924, i8* %BRANCH_TAKEN, i64 212, i64 6, i64 6)
  store %struct.Memory* %call_47a924, %struct.Memory** %MEMORY

  %loadBr_47a924 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a924 = icmp eq i8 %loadBr_47a924, 1
  br i1 %cmpBr_47a924, label %block_.L_47a9f8, label %block_47a92a

block_47a92a:
  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 47a92a	 Bytes: 7
  %loadMem_47a92a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a92a = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a92a)
  store %struct.Memory* %call_47a92a, %struct.Memory** %MEMORY

  ; Code: movl $0x15, -0x20(%rbp)	 RIP: 47a931	 Bytes: 7
  %loadMem_47a931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a931 = call %struct.Memory* @routine_movl__0x15__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a931)
  store %struct.Memory* %call_47a931, %struct.Memory** %MEMORY

  ; Code: .L_47a938:	 RIP: 47a938	 Bytes: 0
  br label %block_.L_47a938
block_.L_47a938:

  ; Code: cmpl $0x190, -0x20(%rbp)	 RIP: 47a938	 Bytes: 7
  %loadMem_47a938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a938 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a938)
  store %struct.Memory* %call_47a938, %struct.Memory** %MEMORY

  ; Code: jge .L_47a9f3	 RIP: 47a93f	 Bytes: 6
  %loadMem_47a93f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a93f = call %struct.Memory* @routine_jge_.L_47a9f3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a93f, i8* %BRANCH_TAKEN, i64 180, i64 6, i64 6)
  store %struct.Memory* %call_47a93f, %struct.Memory** %MEMORY

  %loadBr_47a93f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a93f = icmp eq i8 %loadBr_47a93f, 1
  br i1 %cmpBr_47a93f, label %block_.L_47a9f3, label %block_47a945

block_47a945:
  ; Code: movslq -0x20(%rbp), %rax	 RIP: 47a945	 Bytes: 4
  %loadMem_47a945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a945 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a945)
  store %struct.Memory* %call_47a945, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 47a949	 Bytes: 8
  %loadMem_47a949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a949 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a949)
  store %struct.Memory* %call_47a949, %struct.Memory** %MEMORY

  ; Code: cmpl -0x3f8(%rbp), %ecx	 RIP: 47a951	 Bytes: 6
  %loadMem_47a951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a951 = call %struct.Memory* @routine_cmpl_MINUS0x3f8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a951)
  store %struct.Memory* %call_47a951, %struct.Memory** %MEMORY

  ; Code: jne .L_47a96e	 RIP: 47a957	 Bytes: 6
  %loadMem_47a957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a957 = call %struct.Memory* @routine_jne_.L_47a96e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a957, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_47a957, %struct.Memory** %MEMORY

  %loadBr_47a957 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a957 = icmp eq i8 %loadBr_47a957, 1
  br i1 %cmpBr_47a957, label %block_.L_47a96e, label %block_47a95d

block_47a95d:
  ; Code: movl -0x20(%rbp), %edi	 RIP: 47a95d	 Bytes: 3
  %loadMem_47a95d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a95d = call %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a95d)
  store %struct.Memory* %call_47a95d, %struct.Memory** %MEMORY

  ; Code: callq .countlib	 RIP: 47a960	 Bytes: 5
  %loadMem1_47a960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47a960 = call %struct.Memory* @routine_callq_.countlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47a960, i64 -438752, i64 5, i64 5)
  store %struct.Memory* %call1_47a960, %struct.Memory** %MEMORY

  %loadMem2_47a960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47a960 = load i64, i64* %3
  %call2_47a960 = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64  %loadPC_47a960, %struct.Memory* %loadMem2_47a960)
  store %struct.Memory* %call2_47a960, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %eax	 RIP: 47a965	 Bytes: 3
  %loadMem_47a965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a965 = call %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a965)
  store %struct.Memory* %call_47a965, %struct.Memory** %MEMORY

  ; Code: jle .L_47a973	 RIP: 47a968	 Bytes: 6
  %loadMem_47a968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a968 = call %struct.Memory* @routine_jle_.L_47a973(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a968, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47a968, %struct.Memory** %MEMORY

  %loadBr_47a968 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a968 = icmp eq i8 %loadBr_47a968, 1
  br i1 %cmpBr_47a968, label %block_.L_47a973, label %block_.L_47a96e

  ; Code: .L_47a96e:	 RIP: 47a96e	 Bytes: 0
block_.L_47a96e:

  ; Code: jmpq .L_47a9e5	 RIP: 47a96e	 Bytes: 5
  %loadMem_47a96e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a96e = call %struct.Memory* @routine_jmpq_.L_47a9e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a96e, i64 119, i64 5)
  store %struct.Memory* %call_47a96e, %struct.Memory** %MEMORY

  br label %block_.L_47a9e5

  ; Code: .L_47a973:	 RIP: 47a973	 Bytes: 0
block_.L_47a973:

  ; Code: movl $0x1, %esi	 RIP: 47a973	 Bytes: 5
  %loadMem_47a973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a973 = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a973)
  store %struct.Memory* %call_47a973, %struct.Memory** %MEMORY

  ; Code: leaq -0x3f0(%rbp), %rdx	 RIP: 47a978	 Bytes: 7
  %loadMem_47a978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a978 = call %struct.Memory* @routine_leaq_MINUS0x3f0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a978)
  store %struct.Memory* %call_47a978, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %edi	 RIP: 47a97f	 Bytes: 3
  %loadMem_47a97f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a97f = call %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a97f)
  store %struct.Memory* %call_47a97f, %struct.Memory** %MEMORY

  ; Code: callq .findlib	 RIP: 47a982	 Bytes: 5
  %loadMem1_47a982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47a982 = call %struct.Memory* @routine_callq_.findlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47a982, i64 -438594, i64 5, i64 5)
  store %struct.Memory* %call1_47a982, %struct.Memory** %MEMORY

  %loadMem2_47a982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47a982 = load i64, i64* %3
  %call2_47a982 = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64  %loadPC_47a982, %struct.Memory* %loadMem2_47a982)
  store %struct.Memory* %call2_47a982, %struct.Memory** %MEMORY

  ; Code: movq $0x581cc1, %rdx	 RIP: 47a987	 Bytes: 10
  %loadMem_47a987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a987 = call %struct.Memory* @routine_movq__0x581cc1___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a987)
  store %struct.Memory* %call_47a987, %struct.Memory** %MEMORY

  ; Code: xorl %esi, %esi	 RIP: 47a991	 Bytes: 2
  %loadMem_47a991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a991 = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a991)
  store %struct.Memory* %call_47a991, %struct.Memory** %MEMORY

  ; Code: movl -0x3f0(%rbp), %edi	 RIP: 47a993	 Bytes: 6
  %loadMem_47a993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a993 = call %struct.Memory* @routine_movl_MINUS0x3f0__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a993)
  store %struct.Memory* %call_47a993, %struct.Memory** %MEMORY

  ; Code: movl -0x3f8(%rbp), %ecx	 RIP: 47a999	 Bytes: 6
  %loadMem_47a999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a999 = call %struct.Memory* @routine_movl_MINUS0x3f8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a999)
  store %struct.Memory* %call_47a999, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %r8d	 RIP: 47a99f	 Bytes: 4
  %loadMem_47a99f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a99f = call %struct.Memory* @routine_movl_MINUS0x20__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a99f)
  store %struct.Memory* %call_47a99f, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x418(%rbp)	 RIP: 47a9a3	 Bytes: 6
  %loadMem_47a9a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a9a3 = call %struct.Memory* @routine_movl__esi__MINUS0x418__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a9a3)
  store %struct.Memory* %call_47a9a3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 47a9a9	 Bytes: 2
  %loadMem_47a9a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a9a9 = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a9a9)
  store %struct.Memory* %call_47a9a9, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 47a9ab	 Bytes: 3
  %loadMem_47a9ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a9ab = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a9ab)
  store %struct.Memory* %call_47a9ab, %struct.Memory** %MEMORY

  ; Code: movl -0x418(%rbp), %r8d	 RIP: 47a9ae	 Bytes: 7
  %loadMem_47a9ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a9ae = call %struct.Memory* @routine_movl_MINUS0x418__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a9ae)
  store %struct.Memory* %call_47a9ae, %struct.Memory** %MEMORY

  ; Code: movl -0x418(%rbp), %r9d	 RIP: 47a9b5	 Bytes: 7
  %loadMem_47a9b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a9b5 = call %struct.Memory* @routine_movl_MINUS0x418__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a9b5)
  store %struct.Memory* %call_47a9b5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x41c(%rbp)	 RIP: 47a9bc	 Bytes: 6
  %loadMem_47a9bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a9bc = call %struct.Memory* @routine_movl__eax__MINUS0x41c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a9bc)
  store %struct.Memory* %call_47a9bc, %struct.Memory** %MEMORY

  ; Code: callq .trymove	 RIP: 47a9c2	 Bytes: 5
  %loadMem1_47a9c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47a9c2 = call %struct.Memory* @routine_callq_.trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47a9c2, i64 -465810, i64 5, i64 5)
  store %struct.Memory* %call1_47a9c2, %struct.Memory** %MEMORY

  %loadMem2_47a9c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47a9c2 = load i64, i64* %3
  %call2_47a9c2 = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64  %loadPC_47a9c2, %struct.Memory* %loadMem2_47a9c2)
  store %struct.Memory* %call2_47a9c2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47a9c7	 Bytes: 3
  %loadMem_47a9c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a9c7 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a9c7)
  store %struct.Memory* %call_47a9c7, %struct.Memory** %MEMORY

  ; Code: je .L_47a9e0	 RIP: 47a9ca	 Bytes: 6
  %loadMem_47a9ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a9ca = call %struct.Memory* @routine_je_.L_47a9e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a9ca, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_47a9ca, %struct.Memory** %MEMORY

  %loadBr_47a9ca = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a9ca = icmp eq i8 %loadBr_47a9ca, 1
  br i1 %cmpBr_47a9ca, label %block_.L_47a9e0, label %block_47a9d0

block_47a9d0:
  ; Code: movl -0x18(%rbp), %eax	 RIP: 47a9d0	 Bytes: 3
  %loadMem_47a9d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a9d0 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a9d0)
  store %struct.Memory* %call_47a9d0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47a9d3	 Bytes: 3
  %loadMem_47a9d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a9d3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a9d3)
  store %struct.Memory* %call_47a9d3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 47a9d6	 Bytes: 3
  %loadMem_47a9d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a9d6 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a9d6)
  store %struct.Memory* %call_47a9d6, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x14(%rbp)	 RIP: 47a9d9	 Bytes: 7
  %loadMem_47a9d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a9d9 = call %struct.Memory* @routine_movl__0x1__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a9d9)
  store %struct.Memory* %call_47a9d9, %struct.Memory** %MEMORY

  ; Code: .L_47a9e0:	 RIP: 47a9e0	 Bytes: 0
  br label %block_.L_47a9e0
block_.L_47a9e0:

  ; Code: jmpq .L_47a9e5	 RIP: 47a9e0	 Bytes: 5
  %loadMem_47a9e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a9e0 = call %struct.Memory* @routine_jmpq_.L_47a9e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a9e0, i64 5, i64 5)
  store %struct.Memory* %call_47a9e0, %struct.Memory** %MEMORY

  br label %block_.L_47a9e5

  ; Code: .L_47a9e5:	 RIP: 47a9e5	 Bytes: 0
block_.L_47a9e5:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 47a9e5	 Bytes: 3
  %loadMem_47a9e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a9e5 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a9e5)
  store %struct.Memory* %call_47a9e5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47a9e8	 Bytes: 3
  %loadMem_47a9e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a9e8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a9e8)
  store %struct.Memory* %call_47a9e8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 47a9eb	 Bytes: 3
  %loadMem_47a9eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a9eb = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a9eb)
  store %struct.Memory* %call_47a9eb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47a938	 RIP: 47a9ee	 Bytes: 5
  %loadMem_47a9ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a9ee = call %struct.Memory* @routine_jmpq_.L_47a938(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a9ee, i64 -182, i64 5)
  store %struct.Memory* %call_47a9ee, %struct.Memory** %MEMORY

  br label %block_.L_47a938

  ; Code: .L_47a9f3:	 RIP: 47a9f3	 Bytes: 0
block_.L_47a9f3:

  ; Code: jmpq .L_47a920	 RIP: 47a9f3	 Bytes: 5
  %loadMem_47a9f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a9f3 = call %struct.Memory* @routine_jmpq_.L_47a920(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a9f3, i64 -211, i64 5)
  store %struct.Memory* %call_47a9f3, %struct.Memory** %MEMORY

  br label %block_.L_47a920

  ; Code: .L_47a9f8:	 RIP: 47a9f8	 Bytes: 0
block_.L_47a9f8:

  ; Code: movl $0x15, -0x20(%rbp)	 RIP: 47a9f8	 Bytes: 7
  %loadMem_47a9f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a9f8 = call %struct.Memory* @routine_movl__0x15__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a9f8)
  store %struct.Memory* %call_47a9f8, %struct.Memory** %MEMORY

  ; Code: .L_47a9ff:	 RIP: 47a9ff	 Bytes: 0
  br label %block_.L_47a9ff
block_.L_47a9ff:

  ; Code: cmpl $0x190, -0x20(%rbp)	 RIP: 47a9ff	 Bytes: 7
  %loadMem_47a9ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a9ff = call %struct.Memory* @routine_cmpl__0x190__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a9ff)
  store %struct.Memory* %call_47a9ff, %struct.Memory** %MEMORY

  ; Code: jge .L_47ac26	 RIP: 47aa06	 Bytes: 6
  %loadMem_47aa06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aa06 = call %struct.Memory* @routine_jge_.L_47ac26(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aa06, i8* %BRANCH_TAKEN, i64 544, i64 6, i64 6)
  store %struct.Memory* %call_47aa06, %struct.Memory** %MEMORY

  %loadBr_47aa06 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47aa06 = icmp eq i8 %loadBr_47aa06, 1
  br i1 %cmpBr_47aa06, label %block_.L_47ac26, label %block_47aa0c

block_47aa0c:
  ; Code: movslq -0x20(%rbp), %rax	 RIP: 47aa0c	 Bytes: 4
  %loadMem_47aa0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aa0c = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aa0c)
  store %struct.Memory* %call_47aa0c, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 47aa10	 Bytes: 8
  %loadMem_47aa10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aa10 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aa10)
  store %struct.Memory* %call_47aa10, %struct.Memory** %MEMORY

  ; Code: cmpl -0x3f8(%rbp), %ecx	 RIP: 47aa18	 Bytes: 6
  %loadMem_47aa18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aa18 = call %struct.Memory* @routine_cmpl_MINUS0x3f8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aa18)
  store %struct.Memory* %call_47aa18, %struct.Memory** %MEMORY

  ; Code: jne .L_47aa35	 RIP: 47aa1e	 Bytes: 6
  %loadMem_47aa1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aa1e = call %struct.Memory* @routine_jne_.L_47aa35(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aa1e, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_47aa1e, %struct.Memory** %MEMORY

  %loadBr_47aa1e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47aa1e = icmp eq i8 %loadBr_47aa1e, 1
  br i1 %cmpBr_47aa1e, label %block_.L_47aa35, label %block_47aa24

block_47aa24:
  ; Code: movl -0x20(%rbp), %edi	 RIP: 47aa24	 Bytes: 3
  %loadMem_47aa24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aa24 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aa24)
  store %struct.Memory* %call_47aa24, %struct.Memory** %MEMORY

  ; Code: callq .countlib	 RIP: 47aa27	 Bytes: 5
  %loadMem1_47aa27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47aa27 = call %struct.Memory* @routine_callq_.countlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47aa27, i64 -438951, i64 5, i64 5)
  store %struct.Memory* %call1_47aa27, %struct.Memory** %MEMORY

  %loadMem2_47aa27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47aa27 = load i64, i64* %3
  %call2_47aa27 = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64  %loadPC_47aa27, %struct.Memory* %loadMem2_47aa27)
  store %struct.Memory* %call2_47aa27, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %eax	 RIP: 47aa2c	 Bytes: 3
  %loadMem_47aa2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aa2c = call %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aa2c)
  store %struct.Memory* %call_47aa2c, %struct.Memory** %MEMORY

  ; Code: je .L_47aa3a	 RIP: 47aa2f	 Bytes: 6
  %loadMem_47aa2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aa2f = call %struct.Memory* @routine_je_.L_47aa3a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aa2f, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47aa2f, %struct.Memory** %MEMORY

  %loadBr_47aa2f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47aa2f = icmp eq i8 %loadBr_47aa2f, 1
  br i1 %cmpBr_47aa2f, label %block_.L_47aa3a, label %block_.L_47aa35

  ; Code: .L_47aa35:	 RIP: 47aa35	 Bytes: 0
block_.L_47aa35:

  ; Code: jmpq .L_47ac18	 RIP: 47aa35	 Bytes: 5
  %loadMem_47aa35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aa35 = call %struct.Memory* @routine_jmpq_.L_47ac18(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aa35, i64 483, i64 5)
  store %struct.Memory* %call_47aa35, %struct.Memory** %MEMORY

  br label %block_.L_47ac18

  ; Code: .L_47aa3a:	 RIP: 47aa3a	 Bytes: 0
block_.L_47aa3a:

  ; Code: movl $0x2, %esi	 RIP: 47aa3a	 Bytes: 5
  %loadMem_47aa3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aa3a = call %struct.Memory* @routine_movl__0x2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aa3a)
  store %struct.Memory* %call_47aa3a, %struct.Memory** %MEMORY

  ; Code: leaq -0x3f0(%rbp), %rdx	 RIP: 47aa3f	 Bytes: 7
  %loadMem_47aa3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aa3f = call %struct.Memory* @routine_leaq_MINUS0x3f0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aa3f)
  store %struct.Memory* %call_47aa3f, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %edi	 RIP: 47aa46	 Bytes: 3
  %loadMem_47aa46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aa46 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aa46)
  store %struct.Memory* %call_47aa46, %struct.Memory** %MEMORY

  ; Code: callq .findlib	 RIP: 47aa49	 Bytes: 5
  %loadMem1_47aa49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47aa49 = call %struct.Memory* @routine_callq_.findlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47aa49, i64 -438793, i64 5, i64 5)
  store %struct.Memory* %call1_47aa49, %struct.Memory** %MEMORY

  %loadMem2_47aa49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47aa49 = load i64, i64* %3
  %call2_47aa49 = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64  %loadPC_47aa49, %struct.Memory* %loadMem2_47aa49)
  store %struct.Memory* %call2_47aa49, %struct.Memory** %MEMORY

  ; Code: movl $0x14, %esi	 RIP: 47aa4e	 Bytes: 5
  %loadMem_47aa4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aa4e = call %struct.Memory* @routine_movl__0x14___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aa4e)
  store %struct.Memory* %call_47aa4e, %struct.Memory** %MEMORY

  ; Code: movl -0x3f0(%rbp), %edi	 RIP: 47aa53	 Bytes: 6
  %loadMem_47aa53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aa53 = call %struct.Memory* @routine_movl_MINUS0x3f0__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aa53)
  store %struct.Memory* %call_47aa53, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x400(%rbp)	 RIP: 47aa59	 Bytes: 6
  %loadMem_47aa59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aa59 = call %struct.Memory* @routine_movl__edi__MINUS0x400__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aa59)
  store %struct.Memory* %call_47aa59, %struct.Memory** %MEMORY

  ; Code: movl -0x3ec(%rbp), %edi	 RIP: 47aa5f	 Bytes: 6
  %loadMem_47aa5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aa5f = call %struct.Memory* @routine_movl_MINUS0x3ec__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aa5f)
  store %struct.Memory* %call_47aa5f, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x404(%rbp)	 RIP: 47aa65	 Bytes: 6
  %loadMem_47aa65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aa65 = call %struct.Memory* @routine_movl__edi__MINUS0x404__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aa65)
  store %struct.Memory* %call_47aa65, %struct.Memory** %MEMORY

  ; Code: movl -0x400(%rbp), %edi	 RIP: 47aa6b	 Bytes: 6
  %loadMem_47aa6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aa6b = call %struct.Memory* @routine_movl_MINUS0x400__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aa6b)
  store %struct.Memory* %call_47aa6b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x420(%rbp)	 RIP: 47aa71	 Bytes: 6
  %loadMem_47aa71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aa71 = call %struct.Memory* @routine_movl__eax__MINUS0x420__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aa71)
  store %struct.Memory* %call_47aa71, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 47aa77	 Bytes: 2
  %loadMem_47aa77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aa77 = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aa77)
  store %struct.Memory* %call_47aa77, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 47aa79	 Bytes: 1
  %loadMem_47aa79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aa79 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aa79)
  store %struct.Memory* %call_47aa79, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 47aa7a	 Bytes: 2
  %loadMem_47aa7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aa7a = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aa7a)
  store %struct.Memory* %call_47aa7a, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 47aa7c	 Bytes: 3
  %loadMem_47aa7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aa7c = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aa7c)
  store %struct.Memory* %call_47aa7c, %struct.Memory** %MEMORY

  ; Code: movl -0x404(%rbp), %edi	 RIP: 47aa7f	 Bytes: 6
  %loadMem_47aa7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aa7f = call %struct.Memory* @routine_movl_MINUS0x404__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aa7f)
  store %struct.Memory* %call_47aa7f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x424(%rbp)	 RIP: 47aa85	 Bytes: 6
  %loadMem_47aa85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aa85 = call %struct.Memory* @routine_movl__eax__MINUS0x424__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aa85)
  store %struct.Memory* %call_47aa85, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 47aa8b	 Bytes: 2
  %loadMem_47aa8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aa8b = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aa8b)
  store %struct.Memory* %call_47aa8b, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 47aa8d	 Bytes: 1
  %loadMem_47aa8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aa8d = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aa8d)
  store %struct.Memory* %call_47aa8d, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 47aa8e	 Bytes: 2
  %loadMem_47aa8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aa8e = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aa8e)
  store %struct.Memory* %call_47aa8e, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 47aa90	 Bytes: 3
  %loadMem_47aa90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aa90 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aa90)
  store %struct.Memory* %call_47aa90, %struct.Memory** %MEMORY

  ; Code: movl -0x424(%rbp), %esi	 RIP: 47aa93	 Bytes: 6
  %loadMem_47aa93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aa93 = call %struct.Memory* @routine_movl_MINUS0x424__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aa93)
  store %struct.Memory* %call_47aa93, %struct.Memory** %MEMORY

  ; Code: subl %eax, %esi	 RIP: 47aa99	 Bytes: 2
  %loadMem_47aa99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aa99 = call %struct.Memory* @routine_subl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aa99)
  store %struct.Memory* %call_47aa99, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edi	 RIP: 47aa9b	 Bytes: 2
  %loadMem_47aa9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aa9b = call %struct.Memory* @routine_movl__esi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aa9b)
  store %struct.Memory* %call_47aa9b, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 47aa9d	 Bytes: 5
  %loadMem1_47aa9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47aa9d = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47aa9d, i64 -498365, i64 5, i64 5)
  store %struct.Memory* %call1_47aa9d, %struct.Memory** %MEMORY

  %loadMem2_47aa9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47aa9d = load i64, i64* %3
  %call2_47aa9d = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_47aa9d, %struct.Memory* %loadMem2_47aa9d)
  store %struct.Memory* %call2_47aa9d, %struct.Memory** %MEMORY

  ; Code: movl $0x14, %esi	 RIP: 47aaa2	 Bytes: 5
  %loadMem_47aaa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aaa2 = call %struct.Memory* @routine_movl__0x14___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aaa2)
  store %struct.Memory* %call_47aaa2, %struct.Memory** %MEMORY

  ; Code: movl -0x400(%rbp), %edi	 RIP: 47aaa7	 Bytes: 6
  %loadMem_47aaa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aaa7 = call %struct.Memory* @routine_movl_MINUS0x400__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aaa7)
  store %struct.Memory* %call_47aaa7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x428(%rbp)	 RIP: 47aaad	 Bytes: 6
  %loadMem_47aaad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aaad = call %struct.Memory* @routine_movl__eax__MINUS0x428__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aaad)
  store %struct.Memory* %call_47aaad, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 47aab3	 Bytes: 2
  %loadMem_47aab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aab3 = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aab3)
  store %struct.Memory* %call_47aab3, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 47aab5	 Bytes: 1
  %loadMem_47aab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aab5 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aab5)
  store %struct.Memory* %call_47aab5, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 47aab6	 Bytes: 2
  %loadMem_47aab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aab6 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aab6)
  store %struct.Memory* %call_47aab6, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 47aab8	 Bytes: 3
  %loadMem_47aab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aab8 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aab8)
  store %struct.Memory* %call_47aab8, %struct.Memory** %MEMORY

  ; Code: movl -0x404(%rbp), %edi	 RIP: 47aabb	 Bytes: 6
  %loadMem_47aabb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aabb = call %struct.Memory* @routine_movl_MINUS0x404__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aabb)
  store %struct.Memory* %call_47aabb, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 47aac1	 Bytes: 2
  %loadMem_47aac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aac1 = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aac1)
  store %struct.Memory* %call_47aac1, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x42c(%rbp)	 RIP: 47aac3	 Bytes: 6
  %loadMem_47aac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aac3 = call %struct.Memory* @routine_movl__edx__MINUS0x42c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aac3)
  store %struct.Memory* %call_47aac3, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 47aac9	 Bytes: 1
  %loadMem_47aac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aac9 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aac9)
  store %struct.Memory* %call_47aac9, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 47aaca	 Bytes: 2
  %loadMem_47aaca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aaca = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aaca)
  store %struct.Memory* %call_47aaca, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 47aacc	 Bytes: 3
  %loadMem_47aacc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aacc = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aacc)
  store %struct.Memory* %call_47aacc, %struct.Memory** %MEMORY

  ; Code: movl -0x42c(%rbp), %esi	 RIP: 47aacf	 Bytes: 6
  %loadMem_47aacf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aacf = call %struct.Memory* @routine_movl_MINUS0x42c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aacf)
  store %struct.Memory* %call_47aacf, %struct.Memory** %MEMORY

  ; Code: subl %edx, %esi	 RIP: 47aad5	 Bytes: 2
  %loadMem_47aad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aad5 = call %struct.Memory* @routine_subl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aad5)
  store %struct.Memory* %call_47aad5, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edi	 RIP: 47aad7	 Bytes: 2
  %loadMem_47aad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aad7 = call %struct.Memory* @routine_movl__esi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aad7)
  store %struct.Memory* %call_47aad7, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 47aad9	 Bytes: 5
  %loadMem1_47aad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47aad9 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47aad9, i64 -498425, i64 5, i64 5)
  store %struct.Memory* %call1_47aad9, %struct.Memory** %MEMORY

  %loadMem2_47aad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47aad9 = load i64, i64* %3
  %call2_47aad9 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_47aad9, %struct.Memory* %loadMem2_47aad9)
  store %struct.Memory* %call2_47aad9, %struct.Memory** %MEMORY

  ; Code: movl -0x428(%rbp), %edx	 RIP: 47aade	 Bytes: 6
  %loadMem_47aade = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aade = call %struct.Memory* @routine_movl_MINUS0x428__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aade)
  store %struct.Memory* %call_47aade, %struct.Memory** %MEMORY

  ; Code: addl %eax, %edx	 RIP: 47aae4	 Bytes: 2
  %loadMem_47aae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aae4 = call %struct.Memory* @routine_addl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aae4)
  store %struct.Memory* %call_47aae4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %edx	 RIP: 47aae6	 Bytes: 3
  %loadMem_47aae6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aae6 = call %struct.Memory* @routine_cmpl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aae6)
  store %struct.Memory* %call_47aae6, %struct.Memory** %MEMORY

  ; Code: je .L_47aaf4	 RIP: 47aae9	 Bytes: 6
  %loadMem_47aae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aae9 = call %struct.Memory* @routine_je_.L_47aaf4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aae9, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47aae9, %struct.Memory** %MEMORY

  %loadBr_47aae9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47aae9 = icmp eq i8 %loadBr_47aae9, 1
  br i1 %cmpBr_47aae9, label %block_.L_47aaf4, label %block_47aaef

block_47aaef:
  ; Code: jmpq .L_47ac18	 RIP: 47aaef	 Bytes: 5
  %loadMem_47aaef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aaef = call %struct.Memory* @routine_jmpq_.L_47ac18(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aaef, i64 297, i64 5)
  store %struct.Memory* %call_47aaef, %struct.Memory** %MEMORY

  br label %block_.L_47ac18

  ; Code: .L_47aaf4:	 RIP: 47aaf4	 Bytes: 0
block_.L_47aaf4:

  ; Code: movl $0x4, %edx	 RIP: 47aaf4	 Bytes: 5
  %loadMem_47aaf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aaf4 = call %struct.Memory* @routine_movl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aaf4)
  store %struct.Memory* %call_47aaf4, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 47aaf9	 Bytes: 2
  %loadMem_47aaf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aaf9 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aaf9)
  store %struct.Memory* %call_47aaf9, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 47aafb	 Bytes: 2
  %loadMem_47aafb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aafb = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aafb)
  store %struct.Memory* %call_47aafb, %struct.Memory** %MEMORY

  ; Code: movl -0x400(%rbp), %edi	 RIP: 47aafd	 Bytes: 6
  %loadMem_47aafd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aafd = call %struct.Memory* @routine_movl_MINUS0x400__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aafd)
  store %struct.Memory* %call_47aafd, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %esi	 RIP: 47ab03	 Bytes: 3
  %loadMem_47ab03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ab03 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ab03)
  store %struct.Memory* %call_47ab03, %struct.Memory** %MEMORY

  ; Code: callq .approxlib	 RIP: 47ab06	 Bytes: 5
  %loadMem1_47ab06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47ab06 = call %struct.Memory* @routine_callq_.approxlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47ab06, i64 -431446, i64 5, i64 5)
  store %struct.Memory* %call1_47ab06, %struct.Memory** %MEMORY

  %loadMem2_47ab06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ab06 = load i64, i64* %3
  %call2_47ab06 = call %struct.Memory* @sub_4115b0.approxlib(%struct.State* %0, i64  %loadPC_47ab06, %struct.Memory* %loadMem2_47ab06)
  store %struct.Memory* %call2_47ab06, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %edx	 RIP: 47ab0b	 Bytes: 5
  %loadMem_47ab0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ab0b = call %struct.Memory* @routine_movl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ab0b)
  store %struct.Memory* %call_47ab0b, %struct.Memory** %MEMORY

  ; Code: xorl %esi, %esi	 RIP: 47ab10	 Bytes: 2
  %loadMem_47ab10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ab10 = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ab10)
  store %struct.Memory* %call_47ab10, %struct.Memory** %MEMORY

  ; Code: movl %esi, %ecx	 RIP: 47ab12	 Bytes: 2
  %loadMem_47ab12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ab12 = call %struct.Memory* @routine_movl__esi___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ab12)
  store %struct.Memory* %call_47ab12, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x408(%rbp)	 RIP: 47ab14	 Bytes: 6
  %loadMem_47ab14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ab14 = call %struct.Memory* @routine_movl__eax__MINUS0x408__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ab14)
  store %struct.Memory* %call_47ab14, %struct.Memory** %MEMORY

  ; Code: movl -0x404(%rbp), %edi	 RIP: 47ab1a	 Bytes: 6
  %loadMem_47ab1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ab1a = call %struct.Memory* @routine_movl_MINUS0x404__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ab1a)
  store %struct.Memory* %call_47ab1a, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %esi	 RIP: 47ab20	 Bytes: 3
  %loadMem_47ab20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ab20 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ab20)
  store %struct.Memory* %call_47ab20, %struct.Memory** %MEMORY

  ; Code: callq .approxlib	 RIP: 47ab23	 Bytes: 5
  %loadMem1_47ab23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47ab23 = call %struct.Memory* @routine_callq_.approxlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47ab23, i64 -431475, i64 5, i64 5)
  store %struct.Memory* %call1_47ab23, %struct.Memory** %MEMORY

  %loadMem2_47ab23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ab23 = load i64, i64* %3
  %call2_47ab23 = call %struct.Memory* @sub_4115b0.approxlib(%struct.State* %0, i64  %loadPC_47ab23, %struct.Memory* %loadMem2_47ab23)
  store %struct.Memory* %call2_47ab23, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %edx	 RIP: 47ab28	 Bytes: 5
  %loadMem_47ab28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ab28 = call %struct.Memory* @routine_movl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ab28)
  store %struct.Memory* %call_47ab28, %struct.Memory** %MEMORY

  ; Code: xorl %esi, %esi	 RIP: 47ab2d	 Bytes: 2
  %loadMem_47ab2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ab2d = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ab2d)
  store %struct.Memory* %call_47ab2d, %struct.Memory** %MEMORY

  ; Code: movl %esi, %ecx	 RIP: 47ab2f	 Bytes: 2
  %loadMem_47ab2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ab2f = call %struct.Memory* @routine_movl__esi___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ab2f)
  store %struct.Memory* %call_47ab2f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40c(%rbp)	 RIP: 47ab31	 Bytes: 6
  %loadMem_47ab31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ab31 = call %struct.Memory* @routine_movl__eax__MINUS0x40c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ab31)
  store %struct.Memory* %call_47ab31, %struct.Memory** %MEMORY

  ; Code: movl -0x400(%rbp), %edi	 RIP: 47ab37	 Bytes: 6
  %loadMem_47ab37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ab37 = call %struct.Memory* @routine_movl_MINUS0x400__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ab37)
  store %struct.Memory* %call_47ab37, %struct.Memory** %MEMORY

  ; Code: movl -0x3f8(%rbp), %esi	 RIP: 47ab3d	 Bytes: 6
  %loadMem_47ab3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ab3d = call %struct.Memory* @routine_movl_MINUS0x3f8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ab3d)
  store %struct.Memory* %call_47ab3d, %struct.Memory** %MEMORY

  ; Code: callq .approxlib	 RIP: 47ab43	 Bytes: 5
  %loadMem1_47ab43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47ab43 = call %struct.Memory* @routine_callq_.approxlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47ab43, i64 -431507, i64 5, i64 5)
  store %struct.Memory* %call1_47ab43, %struct.Memory** %MEMORY

  %loadMem2_47ab43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ab43 = load i64, i64* %3
  %call2_47ab43 = call %struct.Memory* @sub_4115b0.approxlib(%struct.State* %0, i64  %loadPC_47ab43, %struct.Memory* %loadMem2_47ab43)
  store %struct.Memory* %call2_47ab43, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %edx	 RIP: 47ab48	 Bytes: 5
  %loadMem_47ab48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ab48 = call %struct.Memory* @routine_movl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ab48)
  store %struct.Memory* %call_47ab48, %struct.Memory** %MEMORY

  ; Code: xorl %esi, %esi	 RIP: 47ab4d	 Bytes: 2
  %loadMem_47ab4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ab4d = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ab4d)
  store %struct.Memory* %call_47ab4d, %struct.Memory** %MEMORY

  ; Code: movl %esi, %ecx	 RIP: 47ab4f	 Bytes: 2
  %loadMem_47ab4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ab4f = call %struct.Memory* @routine_movl__esi___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ab4f)
  store %struct.Memory* %call_47ab4f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x410(%rbp)	 RIP: 47ab51	 Bytes: 6
  %loadMem_47ab51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ab51 = call %struct.Memory* @routine_movl__eax__MINUS0x410__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ab51)
  store %struct.Memory* %call_47ab51, %struct.Memory** %MEMORY

  ; Code: movl -0x404(%rbp), %edi	 RIP: 47ab57	 Bytes: 6
  %loadMem_47ab57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ab57 = call %struct.Memory* @routine_movl_MINUS0x404__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ab57)
  store %struct.Memory* %call_47ab57, %struct.Memory** %MEMORY

  ; Code: movl -0x3f8(%rbp), %esi	 RIP: 47ab5d	 Bytes: 6
  %loadMem_47ab5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ab5d = call %struct.Memory* @routine_movl_MINUS0x3f8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ab5d)
  store %struct.Memory* %call_47ab5d, %struct.Memory** %MEMORY

  ; Code: callq .approxlib	 RIP: 47ab63	 Bytes: 5
  %loadMem1_47ab63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47ab63 = call %struct.Memory* @routine_callq_.approxlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47ab63, i64 -431539, i64 5, i64 5)
  store %struct.Memory* %call1_47ab63, %struct.Memory** %MEMORY

  %loadMem2_47ab63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ab63 = load i64, i64* %3
  %call2_47ab63 = call %struct.Memory* @sub_4115b0.approxlib(%struct.State* %0, i64  %loadPC_47ab63, %struct.Memory* %loadMem2_47ab63)
  store %struct.Memory* %call2_47ab63, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x414(%rbp)	 RIP: 47ab68	 Bytes: 6
  %loadMem_47ab68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ab68 = call %struct.Memory* @routine_movl__eax__MINUS0x414__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ab68)
  store %struct.Memory* %call_47ab68, %struct.Memory** %MEMORY

  ; Code: movl -0x408(%rbp), %eax	 RIP: 47ab6e	 Bytes: 6
  %loadMem_47ab6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ab6e = call %struct.Memory* @routine_movl_MINUS0x408__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ab6e)
  store %struct.Memory* %call_47ab6e, %struct.Memory** %MEMORY

  ; Code: cmpl -0x40c(%rbp), %eax	 RIP: 47ab74	 Bytes: 6
  %loadMem_47ab74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ab74 = call %struct.Memory* @routine_cmpl_MINUS0x40c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ab74)
  store %struct.Memory* %call_47ab74, %struct.Memory** %MEMORY

  ; Code: jg .L_47aba4	 RIP: 47ab7a	 Bytes: 6
  %loadMem_47ab7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ab7a = call %struct.Memory* @routine_jg_.L_47aba4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ab7a, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_47ab7a, %struct.Memory** %MEMORY

  %loadBr_47ab7a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ab7a = icmp eq i8 %loadBr_47ab7a, 1
  br i1 %cmpBr_47ab7a, label %block_.L_47aba4, label %block_47ab80

block_47ab80:
  ; Code: movl -0x408(%rbp), %eax	 RIP: 47ab80	 Bytes: 6
  %loadMem_47ab80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ab80 = call %struct.Memory* @routine_movl_MINUS0x408__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ab80)
  store %struct.Memory* %call_47ab80, %struct.Memory** %MEMORY

  ; Code: cmpl -0x40c(%rbp), %eax	 RIP: 47ab86	 Bytes: 6
  %loadMem_47ab86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ab86 = call %struct.Memory* @routine_cmpl_MINUS0x40c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ab86)
  store %struct.Memory* %call_47ab86, %struct.Memory** %MEMORY

  ; Code: jne .L_47abde	 RIP: 47ab8c	 Bytes: 6
  %loadMem_47ab8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ab8c = call %struct.Memory* @routine_jne_.L_47abde(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ab8c, i8* %BRANCH_TAKEN, i64 82, i64 6, i64 6)
  store %struct.Memory* %call_47ab8c, %struct.Memory** %MEMORY

  %loadBr_47ab8c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ab8c = icmp eq i8 %loadBr_47ab8c, 1
  br i1 %cmpBr_47ab8c, label %block_.L_47abde, label %block_47ab92

block_47ab92:
  ; Code: movl -0x410(%rbp), %eax	 RIP: 47ab92	 Bytes: 6
  %loadMem_47ab92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ab92 = call %struct.Memory* @routine_movl_MINUS0x410__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ab92)
  store %struct.Memory* %call_47ab92, %struct.Memory** %MEMORY

  ; Code: cmpl -0x414(%rbp), %eax	 RIP: 47ab98	 Bytes: 6
  %loadMem_47ab98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ab98 = call %struct.Memory* @routine_cmpl_MINUS0x414__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ab98)
  store %struct.Memory* %call_47ab98, %struct.Memory** %MEMORY

  ; Code: jl .L_47abde	 RIP: 47ab9e	 Bytes: 6
  %loadMem_47ab9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ab9e = call %struct.Memory* @routine_jl_.L_47abde(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ab9e, i8* %BRANCH_TAKEN, i64 64, i64 6, i64 6)
  store %struct.Memory* %call_47ab9e, %struct.Memory** %MEMORY

  %loadBr_47ab9e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ab9e = icmp eq i8 %loadBr_47ab9e, 1
  br i1 %cmpBr_47ab9e, label %block_.L_47abde, label %block_.L_47aba4

  ; Code: .L_47aba4:	 RIP: 47aba4	 Bytes: 0
block_.L_47aba4:

  ; Code: movq $0x581cc1, %rdx	 RIP: 47aba4	 Bytes: 10
  %loadMem_47aba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aba4 = call %struct.Memory* @routine_movq__0x581cc1___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aba4)
  store %struct.Memory* %call_47aba4, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 47abae	 Bytes: 2
  %loadMem_47abae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47abae = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47abae)
  store %struct.Memory* %call_47abae, %struct.Memory** %MEMORY

  ; Code: movl -0x400(%rbp), %edi	 RIP: 47abb0	 Bytes: 6
  %loadMem_47abb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47abb0 = call %struct.Memory* @routine_movl_MINUS0x400__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47abb0)
  store %struct.Memory* %call_47abb0, %struct.Memory** %MEMORY

  ; Code: movl -0x3f8(%rbp), %esi	 RIP: 47abb6	 Bytes: 6
  %loadMem_47abb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47abb6 = call %struct.Memory* @routine_movl_MINUS0x3f8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47abb6)
  store %struct.Memory* %call_47abb6, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 47abbc	 Bytes: 3
  %loadMem_47abbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47abbc = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47abbc)
  store %struct.Memory* %call_47abbc, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 47abbf	 Bytes: 3
  %loadMem_47abbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47abbf = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47abbf)
  store %struct.Memory* %call_47abbf, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 47abc2	 Bytes: 3
  %loadMem_47abc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47abc2 = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47abc2)
  store %struct.Memory* %call_47abc2, %struct.Memory** %MEMORY

  ; Code: callq .trymove	 RIP: 47abc5	 Bytes: 5
  %loadMem1_47abc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47abc5 = call %struct.Memory* @routine_callq_.trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47abc5, i64 -466325, i64 5, i64 5)
  store %struct.Memory* %call1_47abc5, %struct.Memory** %MEMORY

  %loadMem2_47abc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47abc5 = load i64, i64* %3
  %call2_47abc5 = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64  %loadPC_47abc5, %struct.Memory* %loadMem2_47abc5)
  store %struct.Memory* %call2_47abc5, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 47abca	 Bytes: 3
  %loadMem_47abca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47abca = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47abca)
  store %struct.Memory* %call_47abca, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 47abcd	 Bytes: 3
  %loadMem_47abcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47abcd = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47abcd)
  store %struct.Memory* %call_47abcd, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x18(%rbp)	 RIP: 47abd0	 Bytes: 3
  %loadMem_47abd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47abd0 = call %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47abd0)
  store %struct.Memory* %call_47abd0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x430(%rbp)	 RIP: 47abd3	 Bytes: 6
  %loadMem_47abd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47abd3 = call %struct.Memory* @routine_movl__eax__MINUS0x430__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47abd3)
  store %struct.Memory* %call_47abd3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47ac13	 RIP: 47abd9	 Bytes: 5
  %loadMem_47abd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47abd9 = call %struct.Memory* @routine_jmpq_.L_47ac13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47abd9, i64 58, i64 5)
  store %struct.Memory* %call_47abd9, %struct.Memory** %MEMORY

  br label %block_.L_47ac13

  ; Code: .L_47abde:	 RIP: 47abde	 Bytes: 0
block_.L_47abde:

  ; Code: movq $0x581cc1, %rdx	 RIP: 47abde	 Bytes: 10
  %loadMem_47abde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47abde = call %struct.Memory* @routine_movq__0x581cc1___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47abde)
  store %struct.Memory* %call_47abde, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 47abe8	 Bytes: 2
  %loadMem_47abe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47abe8 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47abe8)
  store %struct.Memory* %call_47abe8, %struct.Memory** %MEMORY

  ; Code: movl -0x404(%rbp), %edi	 RIP: 47abea	 Bytes: 6
  %loadMem_47abea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47abea = call %struct.Memory* @routine_movl_MINUS0x404__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47abea)
  store %struct.Memory* %call_47abea, %struct.Memory** %MEMORY

  ; Code: movl -0x3f8(%rbp), %esi	 RIP: 47abf0	 Bytes: 6
  %loadMem_47abf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47abf0 = call %struct.Memory* @routine_movl_MINUS0x3f8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47abf0)
  store %struct.Memory* %call_47abf0, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 47abf6	 Bytes: 3
  %loadMem_47abf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47abf6 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47abf6)
  store %struct.Memory* %call_47abf6, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 47abf9	 Bytes: 3
  %loadMem_47abf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47abf9 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47abf9)
  store %struct.Memory* %call_47abf9, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 47abfc	 Bytes: 3
  %loadMem_47abfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47abfc = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47abfc)
  store %struct.Memory* %call_47abfc, %struct.Memory** %MEMORY

  ; Code: callq .trymove	 RIP: 47abff	 Bytes: 5
  %loadMem1_47abff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47abff = call %struct.Memory* @routine_callq_.trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47abff, i64 -466383, i64 5, i64 5)
  store %struct.Memory* %call1_47abff, %struct.Memory** %MEMORY

  %loadMem2_47abff = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47abff = load i64, i64* %3
  %call2_47abff = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64  %loadPC_47abff, %struct.Memory* %loadMem2_47abff)
  store %struct.Memory* %call2_47abff, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 47ac04	 Bytes: 3
  %loadMem_47ac04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ac04 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ac04)
  store %struct.Memory* %call_47ac04, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 47ac07	 Bytes: 3
  %loadMem_47ac07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ac07 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ac07)
  store %struct.Memory* %call_47ac07, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x18(%rbp)	 RIP: 47ac0a	 Bytes: 3
  %loadMem_47ac0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ac0a = call %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ac0a)
  store %struct.Memory* %call_47ac0a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x434(%rbp)	 RIP: 47ac0d	 Bytes: 6
  %loadMem_47ac0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ac0d = call %struct.Memory* @routine_movl__eax__MINUS0x434__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ac0d)
  store %struct.Memory* %call_47ac0d, %struct.Memory** %MEMORY

  ; Code: .L_47ac13:	 RIP: 47ac13	 Bytes: 0
  br label %block_.L_47ac13
block_.L_47ac13:

  ; Code: jmpq .L_47ac18	 RIP: 47ac13	 Bytes: 5
  %loadMem_47ac13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ac13 = call %struct.Memory* @routine_jmpq_.L_47ac18(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ac13, i64 5, i64 5)
  store %struct.Memory* %call_47ac13, %struct.Memory** %MEMORY

  br label %block_.L_47ac18

  ; Code: .L_47ac18:	 RIP: 47ac18	 Bytes: 0
block_.L_47ac18:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 47ac18	 Bytes: 3
  %loadMem_47ac18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ac18 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ac18)
  store %struct.Memory* %call_47ac18, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47ac1b	 Bytes: 3
  %loadMem_47ac1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ac1b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ac1b)
  store %struct.Memory* %call_47ac1b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 47ac1e	 Bytes: 3
  %loadMem_47ac1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ac1e = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ac1e)
  store %struct.Memory* %call_47ac1e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47a9ff	 RIP: 47ac21	 Bytes: 5
  %loadMem_47ac21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ac21 = call %struct.Memory* @routine_jmpq_.L_47a9ff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ac21, i64 -546, i64 5)
  store %struct.Memory* %call_47ac21, %struct.Memory** %MEMORY

  br label %block_.L_47a9ff

  ; Code: .L_47ac26:	 RIP: 47ac26	 Bytes: 0
block_.L_47ac26:

  ; Code: xorl %esi, %esi	 RIP: 47ac26	 Bytes: 2
  %loadMem_47ac26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ac26 = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ac26)
  store %struct.Memory* %call_47ac26, %struct.Memory** %MEMORY

  ; Code: movl $0x640, %eax	 RIP: 47ac28	 Bytes: 5
  %loadMem_47ac28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ac28 = call %struct.Memory* @routine_movl__0x640___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ac28)
  store %struct.Memory* %call_47ac28, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 47ac2d	 Bytes: 2
  %loadMem_47ac2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ac2d = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ac2d)
  store %struct.Memory* %call_47ac2d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 47ac2f	 Bytes: 4
  %loadMem_47ac2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ac2f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ac2f)
  store %struct.Memory* %call_47ac2f, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 47ac33	 Bytes: 3
  %loadMem_47ac33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ac33 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ac33)
  store %struct.Memory* %call_47ac33, %struct.Memory** %MEMORY

  ; Code: callq .memset_plt	 RIP: 47ac36	 Bytes: 5
  %loadMem1_47ac36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47ac36 = call %struct.Memory* @routine_callq_.memset_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47ac36, i64 -498630, i64 5, i64 5)
  store %struct.Memory* %call1_47ac36, %struct.Memory** %MEMORY

  %loadMem2_47ac36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ac36 = load i64, i64* %3
  %call2_47ac36 = call %struct.Memory* @ext_memset(%struct.State* %0, i64  %loadPC_47ac36, %struct.Memory* %loadMem2_47ac36)
  store %struct.Memory* %call2_47ac36, %struct.Memory** %MEMORY

  ; Code: movl $0x15, -0x20(%rbp)	 RIP: 47ac3b	 Bytes: 7
  %loadMem_47ac3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ac3b = call %struct.Memory* @routine_movl__0x15__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ac3b)
  store %struct.Memory* %call_47ac3b, %struct.Memory** %MEMORY

  ; Code: .L_47ac42:	 RIP: 47ac42	 Bytes: 0
  br label %block_.L_47ac42
block_.L_47ac42:

  ; Code: cmpl $0x190, -0x20(%rbp)	 RIP: 47ac42	 Bytes: 7
  %loadMem_47ac42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ac42 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ac42)
  store %struct.Memory* %call_47ac42, %struct.Memory** %MEMORY

  ; Code: jge .L_47ad62	 RIP: 47ac49	 Bytes: 6
  %loadMem_47ac49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ac49 = call %struct.Memory* @routine_jge_.L_47ad62(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ac49, i8* %BRANCH_TAKEN, i64 281, i64 6, i64 6)
  store %struct.Memory* %call_47ac49, %struct.Memory** %MEMORY

  %loadBr_47ac49 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ac49 = icmp eq i8 %loadBr_47ac49, 1
  br i1 %cmpBr_47ac49, label %block_.L_47ad62, label %block_47ac4f

block_47ac4f:
  ; Code: movslq -0x20(%rbp), %rax	 RIP: 47ac4f	 Bytes: 4
  %loadMem_47ac4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ac4f = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ac4f)
  store %struct.Memory* %call_47ac4f, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 47ac53	 Bytes: 8
  %loadMem_47ac53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ac53 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ac53)
  store %struct.Memory* %call_47ac53, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %ecx	 RIP: 47ac5b	 Bytes: 3
  %loadMem_47ac5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ac5b = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ac5b)
  store %struct.Memory* %call_47ac5b, %struct.Memory** %MEMORY

  ; Code: jne .L_47ace6	 RIP: 47ac5e	 Bytes: 6
  %loadMem_47ac5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ac5e = call %struct.Memory* @routine_jne_.L_47ace6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ac5e, i8* %BRANCH_TAKEN, i64 136, i64 6, i64 6)
  store %struct.Memory* %call_47ac5e, %struct.Memory** %MEMORY

  %loadBr_47ac5e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ac5e = icmp eq i8 %loadBr_47ac5e, 1
  br i1 %cmpBr_47ac5e, label %block_.L_47ace6, label %block_47ac64

block_47ac64:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 47ac64	 Bytes: 4
  %loadMem_47ac64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ac64 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ac64)
  store %struct.Memory* %call_47ac64, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 47ac68	 Bytes: 4
  %loadMem_47ac68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ac68 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ac68)
  store %struct.Memory* %call_47ac68, %struct.Memory** %MEMORY

  ; Code: movl $0x1, (%rax,%rcx,4)	 RIP: 47ac6c	 Bytes: 7
  %loadMem_47ac6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ac6c = call %struct.Memory* @routine_movl__0x1____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ac6c)
  store %struct.Memory* %call_47ac6c, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %edi	 RIP: 47ac73	 Bytes: 3
  %loadMem_47ac73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ac73 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ac73)
  store %struct.Memory* %call_47ac73, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %esi	 RIP: 47ac76	 Bytes: 3
  %loadMem_47ac76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ac76 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ac76)
  store %struct.Memory* %call_47ac76, %struct.Memory** %MEMORY

  ; Code: callq .is_worm_origin	 RIP: 47ac79	 Bytes: 5
  %loadMem1_47ac79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47ac79 = call %struct.Memory* @routine_callq_.is_worm_origin(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47ac79, i64 54391, i64 5, i64 5)
  store %struct.Memory* %call1_47ac79, %struct.Memory** %MEMORY

  %loadMem2_47ac79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ac79 = load i64, i64* %3
  %call2_47ac79 = call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* %0, i64  %loadPC_47ac79, %struct.Memory* %loadMem2_47ac79)
  store %struct.Memory* %call2_47ac79, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47ac7e	 Bytes: 3
  %loadMem_47ac7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ac7e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ac7e)
  store %struct.Memory* %call_47ac7e, %struct.Memory** %MEMORY

  ; Code: je .L_47ace1	 RIP: 47ac81	 Bytes: 6
  %loadMem_47ac81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ac81 = call %struct.Memory* @routine_je_.L_47ace1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ac81, i8* %BRANCH_TAKEN, i64 96, i64 6, i64 6)
  store %struct.Memory* %call_47ac81, %struct.Memory** %MEMORY

  %loadBr_47ac81 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ac81 = icmp eq i8 %loadBr_47ac81, 1
  br i1 %cmpBr_47ac81, label %block_.L_47ace1, label %block_47ac87

block_47ac87:
  ; Code: movl $0xf1, %esi	 RIP: 47ac87	 Bytes: 5
  %loadMem_47ac87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ac87 = call %struct.Memory* @routine_movl__0xf1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ac87)
  store %struct.Memory* %call_47ac87, %struct.Memory** %MEMORY

  ; Code: leaq -0x3f0(%rbp), %rdx	 RIP: 47ac8c	 Bytes: 7
  %loadMem_47ac8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ac8c = call %struct.Memory* @routine_leaq_MINUS0x3f0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ac8c)
  store %struct.Memory* %call_47ac8c, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %edi	 RIP: 47ac93	 Bytes: 3
  %loadMem_47ac93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ac93 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ac93)
  store %struct.Memory* %call_47ac93, %struct.Memory** %MEMORY

  ; Code: callq .findlib	 RIP: 47ac96	 Bytes: 5
  %loadMem1_47ac96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47ac96 = call %struct.Memory* @routine_callq_.findlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47ac96, i64 -439382, i64 5, i64 5)
  store %struct.Memory* %call1_47ac96, %struct.Memory** %MEMORY

  %loadMem2_47ac96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ac96 = load i64, i64* %3
  %call2_47ac96 = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64  %loadPC_47ac96, %struct.Memory* %loadMem2_47ac96)
  store %struct.Memory* %call2_47ac96, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3f4(%rbp)	 RIP: 47ac9b	 Bytes: 6
  %loadMem_47ac9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ac9b = call %struct.Memory* @routine_movl__eax__MINUS0x3f4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ac9b)
  store %struct.Memory* %call_47ac9b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 47aca1	 Bytes: 7
  %loadMem_47aca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aca1 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aca1)
  store %struct.Memory* %call_47aca1, %struct.Memory** %MEMORY

  ; Code: .L_47aca8:	 RIP: 47aca8	 Bytes: 0
  br label %block_.L_47aca8
block_.L_47aca8:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 47aca8	 Bytes: 3
  %loadMem_47aca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47aca8 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47aca8)
  store %struct.Memory* %call_47aca8, %struct.Memory** %MEMORY

  ; Code: cmpl -0x3f4(%rbp), %eax	 RIP: 47acab	 Bytes: 6
  %loadMem_47acab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47acab = call %struct.Memory* @routine_cmpl_MINUS0x3f4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47acab)
  store %struct.Memory* %call_47acab, %struct.Memory** %MEMORY

  ; Code: jge .L_47acdc	 RIP: 47acb1	 Bytes: 6
  %loadMem_47acb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47acb1 = call %struct.Memory* @routine_jge_.L_47acdc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47acb1, i8* %BRANCH_TAKEN, i64 43, i64 6, i64 6)
  store %struct.Memory* %call_47acb1, %struct.Memory** %MEMORY

  %loadBr_47acb1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47acb1 = icmp eq i8 %loadBr_47acb1, 1
  br i1 %cmpBr_47acb1, label %block_.L_47acdc, label %block_47acb7

block_47acb7:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 47acb7	 Bytes: 4
  %loadMem_47acb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47acb7 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47acb7)
  store %struct.Memory* %call_47acb7, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 47acbb	 Bytes: 4
  %loadMem_47acbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47acbb = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47acbb)
  store %struct.Memory* %call_47acbb, %struct.Memory** %MEMORY

  ; Code: movslq -0x3f0(%rbp,%rcx,4), %rcx	 RIP: 47acbf	 Bytes: 8
  %loadMem_47acbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47acbf = call %struct.Memory* @routine_movslq_MINUS0x3f0__rbp__rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47acbf)
  store %struct.Memory* %call_47acbf, %struct.Memory** %MEMORY

  ; Code: movl $0x2, (%rax,%rcx,4)	 RIP: 47acc7	 Bytes: 7
  %loadMem_47acc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47acc7 = call %struct.Memory* @routine_movl__0x2____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47acc7)
  store %struct.Memory* %call_47acc7, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 47acce	 Bytes: 3
  %loadMem_47acce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47acce = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47acce)
  store %struct.Memory* %call_47acce, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47acd1	 Bytes: 3
  %loadMem_47acd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47acd1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47acd1)
  store %struct.Memory* %call_47acd1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 47acd4	 Bytes: 3
  %loadMem_47acd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47acd4 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47acd4)
  store %struct.Memory* %call_47acd4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47aca8	 RIP: 47acd7	 Bytes: 5
  %loadMem_47acd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47acd7 = call %struct.Memory* @routine_jmpq_.L_47aca8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47acd7, i64 -47, i64 5)
  store %struct.Memory* %call_47acd7, %struct.Memory** %MEMORY

  br label %block_.L_47aca8

  ; Code: .L_47acdc:	 RIP: 47acdc	 Bytes: 0
block_.L_47acdc:

  ; Code: jmpq .L_47ace1	 RIP: 47acdc	 Bytes: 5
  %loadMem_47acdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47acdc = call %struct.Memory* @routine_jmpq_.L_47ace1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47acdc, i64 5, i64 5)
  store %struct.Memory* %call_47acdc, %struct.Memory** %MEMORY

  br label %block_.L_47ace1

  ; Code: .L_47ace1:	 RIP: 47ace1	 Bytes: 0
block_.L_47ace1:

  ; Code: jmpq .L_47ad4f	 RIP: 47ace1	 Bytes: 5
  %loadMem_47ace1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ace1 = call %struct.Memory* @routine_jmpq_.L_47ad4f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ace1, i64 110, i64 5)
  store %struct.Memory* %call_47ace1, %struct.Memory** %MEMORY

  br label %block_.L_47ad4f

  ; Code: .L_47ace6:	 RIP: 47ace6	 Bytes: 0
block_.L_47ace6:

  ; Code: movslq -0x20(%rbp), %rax	 RIP: 47ace6	 Bytes: 4
  %loadMem_47ace6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ace6 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ace6)
  store %struct.Memory* %call_47ace6, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 47acea	 Bytes: 8
  %loadMem_47acea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47acea = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47acea)
  store %struct.Memory* %call_47acea, %struct.Memory** %MEMORY

  ; Code: cmpl -0x3f8(%rbp), %ecx	 RIP: 47acf2	 Bytes: 6
  %loadMem_47acf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47acf2 = call %struct.Memory* @routine_cmpl_MINUS0x3f8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47acf2)
  store %struct.Memory* %call_47acf2, %struct.Memory** %MEMORY

  ; Code: jne .L_47ad4a	 RIP: 47acf8	 Bytes: 6
  %loadMem_47acf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47acf8 = call %struct.Memory* @routine_jne_.L_47ad4a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47acf8, i8* %BRANCH_TAKEN, i64 82, i64 6, i64 6)
  store %struct.Memory* %call_47acf8, %struct.Memory** %MEMORY

  %loadBr_47acf8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47acf8 = icmp eq i8 %loadBr_47acf8, 1
  br i1 %cmpBr_47acf8, label %block_.L_47ad4a, label %block_47acfe

block_47acfe:
  ; Code: movl -0x20(%rbp), %edi	 RIP: 47acfe	 Bytes: 3
  %loadMem_47acfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47acfe = call %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47acfe)
  store %struct.Memory* %call_47acfe, %struct.Memory** %MEMORY

  ; Code: callq .countlib	 RIP: 47ad01	 Bytes: 5
  %loadMem1_47ad01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47ad01 = call %struct.Memory* @routine_callq_.countlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47ad01, i64 -439681, i64 5, i64 5)
  store %struct.Memory* %call1_47ad01, %struct.Memory** %MEMORY

  %loadMem2_47ad01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ad01 = load i64, i64* %3
  %call2_47ad01 = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64  %loadPC_47ad01, %struct.Memory* %loadMem2_47ad01)
  store %struct.Memory* %call2_47ad01, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %eax	 RIP: 47ad06	 Bytes: 3
  %loadMem_47ad06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ad06 = call %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ad06)
  store %struct.Memory* %call_47ad06, %struct.Memory** %MEMORY

  ; Code: jne .L_47ad4a	 RIP: 47ad09	 Bytes: 6
  %loadMem_47ad09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ad09 = call %struct.Memory* @routine_jne_.L_47ad4a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ad09, i8* %BRANCH_TAKEN, i64 65, i64 6, i64 6)
  store %struct.Memory* %call_47ad09, %struct.Memory** %MEMORY

  %loadBr_47ad09 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ad09 = icmp eq i8 %loadBr_47ad09, 1
  br i1 %cmpBr_47ad09, label %block_.L_47ad4a, label %block_47ad0f

block_47ad0f:
  ; Code: movl $0x1, %esi	 RIP: 47ad0f	 Bytes: 5
  %loadMem_47ad0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ad0f = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ad0f)
  store %struct.Memory* %call_47ad0f, %struct.Memory** %MEMORY

  ; Code: leaq -0x3f0(%rbp), %rdx	 RIP: 47ad14	 Bytes: 7
  %loadMem_47ad14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ad14 = call %struct.Memory* @routine_leaq_MINUS0x3f0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ad14)
  store %struct.Memory* %call_47ad14, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 47ad1b	 Bytes: 4
  %loadMem_47ad1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ad1b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ad1b)
  store %struct.Memory* %call_47ad1b, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 47ad1f	 Bytes: 4
  %loadMem_47ad1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ad1f = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ad1f)
  store %struct.Memory* %call_47ad1f, %struct.Memory** %MEMORY

  ; Code: movl $0x2, (%rax,%rcx,4)	 RIP: 47ad23	 Bytes: 7
  %loadMem_47ad23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ad23 = call %struct.Memory* @routine_movl__0x2____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ad23)
  store %struct.Memory* %call_47ad23, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %edi	 RIP: 47ad2a	 Bytes: 3
  %loadMem_47ad2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ad2a = call %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ad2a)
  store %struct.Memory* %call_47ad2a, %struct.Memory** %MEMORY

  ; Code: callq .findlib	 RIP: 47ad2d	 Bytes: 5
  %loadMem1_47ad2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47ad2d = call %struct.Memory* @routine_callq_.findlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47ad2d, i64 -439533, i64 5, i64 5)
  store %struct.Memory* %call1_47ad2d, %struct.Memory** %MEMORY

  %loadMem2_47ad2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ad2d = load i64, i64* %3
  %call2_47ad2d = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64  %loadPC_47ad2d, %struct.Memory* %loadMem2_47ad2d)
  store %struct.Memory* %call2_47ad2d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 47ad32	 Bytes: 4
  %loadMem_47ad32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ad32 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ad32)
  store %struct.Memory* %call_47ad32, %struct.Memory** %MEMORY

  ; Code: movslq -0x3f0(%rbp), %rdx	 RIP: 47ad36	 Bytes: 7
  %loadMem_47ad36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ad36 = call %struct.Memory* @routine_movslq_MINUS0x3f0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ad36)
  store %struct.Memory* %call_47ad36, %struct.Memory** %MEMORY

  ; Code: movl $0x2, (%rcx,%rdx,4)	 RIP: 47ad3d	 Bytes: 7
  %loadMem_47ad3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ad3d = call %struct.Memory* @routine_movl__0x2____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ad3d)
  store %struct.Memory* %call_47ad3d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x438(%rbp)	 RIP: 47ad44	 Bytes: 6
  %loadMem_47ad44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ad44 = call %struct.Memory* @routine_movl__eax__MINUS0x438__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ad44)
  store %struct.Memory* %call_47ad44, %struct.Memory** %MEMORY

  ; Code: .L_47ad4a:	 RIP: 47ad4a	 Bytes: 0
  br label %block_.L_47ad4a
block_.L_47ad4a:

  ; Code: jmpq .L_47ad4f	 RIP: 47ad4a	 Bytes: 5
  %loadMem_47ad4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ad4a = call %struct.Memory* @routine_jmpq_.L_47ad4f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ad4a, i64 5, i64 5)
  store %struct.Memory* %call_47ad4a, %struct.Memory** %MEMORY

  br label %block_.L_47ad4f

  ; Code: .L_47ad4f:	 RIP: 47ad4f	 Bytes: 0
block_.L_47ad4f:

  ; Code: jmpq .L_47ad54	 RIP: 47ad4f	 Bytes: 5
  %loadMem_47ad4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ad4f = call %struct.Memory* @routine_jmpq_.L_47ad54(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ad4f, i64 5, i64 5)
  store %struct.Memory* %call_47ad4f, %struct.Memory** %MEMORY

  br label %block_.L_47ad54

  ; Code: .L_47ad54:	 RIP: 47ad54	 Bytes: 0
block_.L_47ad54:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 47ad54	 Bytes: 3
  %loadMem_47ad54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ad54 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ad54)
  store %struct.Memory* %call_47ad54, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47ad57	 Bytes: 3
  %loadMem_47ad57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ad57 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ad57)
  store %struct.Memory* %call_47ad57, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 47ad5a	 Bytes: 3
  %loadMem_47ad5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ad5a = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ad5a)
  store %struct.Memory* %call_47ad5a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47ac42	 RIP: 47ad5d	 Bytes: 5
  %loadMem_47ad5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ad5d = call %struct.Memory* @routine_jmpq_.L_47ac42(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ad5d, i64 -283, i64 5)
  store %struct.Memory* %call_47ad5d, %struct.Memory** %MEMORY

  br label %block_.L_47ac42

  ; Code: .L_47ad62:	 RIP: 47ad62	 Bytes: 0
block_.L_47ad62:

  ; Code: jmpq .L_47ad67	 RIP: 47ad62	 Bytes: 5
  %loadMem_47ad62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ad62 = call %struct.Memory* @routine_jmpq_.L_47ad67(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ad62, i64 5, i64 5)
  store %struct.Memory* %call_47ad62, %struct.Memory** %MEMORY

  br label %block_.L_47ad67

  ; Code: .L_47ad67:	 RIP: 47ad67	 Bytes: 0
block_.L_47ad67:

  ; Code: cmpl $0x0, -0x18(%rbp)	 RIP: 47ad67	 Bytes: 4
  %loadMem_47ad67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ad67 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ad67)
  store %struct.Memory* %call_47ad67, %struct.Memory** %MEMORY

  ; Code: jle .L_47ad84	 RIP: 47ad6b	 Bytes: 6
  %loadMem_47ad6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ad6b = call %struct.Memory* @routine_jle_.L_47ad84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ad6b, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_47ad6b, %struct.Memory** %MEMORY

  %loadBr_47ad6b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ad6b = icmp eq i8 %loadBr_47ad6b, 1
  br i1 %cmpBr_47ad6b, label %block_.L_47ad84, label %block_47ad71

block_47ad71:
  ; Code: callq .popgo	 RIP: 47ad71	 Bytes: 5
  %loadMem1_47ad71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47ad71 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47ad71, i64 -446481, i64 5, i64 5)
  store %struct.Memory* %call1_47ad71, %struct.Memory** %MEMORY

  %loadMem2_47ad71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ad71 = load i64, i64* %3
  %call2_47ad71 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_47ad71, %struct.Memory* %loadMem2_47ad71)
  store %struct.Memory* %call2_47ad71, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %eax	 RIP: 47ad76	 Bytes: 3
  %loadMem_47ad76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ad76 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ad76)
  store %struct.Memory* %call_47ad76, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %eax	 RIP: 47ad79	 Bytes: 3
  %loadMem_47ad79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ad79 = call %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ad79)
  store %struct.Memory* %call_47ad79, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 47ad7c	 Bytes: 3
  %loadMem_47ad7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ad7c = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ad7c)
  store %struct.Memory* %call_47ad7c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47ad67	 RIP: 47ad7f	 Bytes: 5
  %loadMem_47ad7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ad7f = call %struct.Memory* @routine_jmpq_.L_47ad67(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ad7f, i64 -24, i64 5)
  store %struct.Memory* %call_47ad7f, %struct.Memory** %MEMORY

  br label %block_.L_47ad67

  ; Code: .L_47ad84:	 RIP: 47ad84	 Bytes: 0
block_.L_47ad84:

  ; Code: addq $0x440, %rsp	 RIP: 47ad84	 Bytes: 7
  %loadMem_47ad84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ad84 = call %struct.Memory* @routine_addq__0x440___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ad84)
  store %struct.Memory* %call_47ad84, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 47ad8b	 Bytes: 1
  %loadMem_47ad8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ad8b = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ad8b)
  store %struct.Memory* %call_47ad8b, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 47ad8c	 Bytes: 1
  %loadMem_47ad8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ad8c = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ad8c)
  store %struct.Memory* %call_47ad8c, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_47ad8c
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

define %struct.Memory* @routine_subq__0x440___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 1088)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x1__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
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


define %struct.Memory* @routine_movl__eax__MINUS0x3f8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1016
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_je_.L_47a844(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x15__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 21)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x190__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_jge_.L_47a83f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_jne_.L_47a6bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_47a6c1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_47a831(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x3f0__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1008
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


define %struct.Memory* @routine_movl__eax__MINUS0x3f4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1012
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_cmpl_MINUS0x3f4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 1012
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_47a747(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x581cc1___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x581cc1_type* @G__0x581cc1 to i64))
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


define %struct.Memory* @routine_movl_MINUS0x3f0__rbp__rcx_4____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1008
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl_MINUS0x3f8__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1016
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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




define %struct.Memory* @routine_je_.L_47a734(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47a739(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jmpq_.L_47a6e8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jne_.L_47a768(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jmpq_.L_47a82c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jne_.L_47a7fe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x3f0__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1008
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_callq_.tryko(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x3fc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1020
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x3fc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1020
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_47a7bf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47a7e7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x581a3a___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x581a3a_type* @G__0x581a3a to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x4de___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 1246)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x581cd4___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x581cd4_type* @G__0x581cd4 to i64))
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


define %struct.Memory* @routine_jmpq_.L_47a827(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_47a803(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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

define %struct.Memory* @routine_jle_.L_47a822(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47a686(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_47a66e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_47a919(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_47a881(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jne_.L_47a886(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47a90b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


















define %struct.Memory* @routine_jge_.L_47a906(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_je_.L_47a8f3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_47a8f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_47a8a7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_jmpq_.L_47a84b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x1__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_je_.L_47a9f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_47a9f3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cmpl_MINUS0x3f8__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 1016
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_47a96e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jle_.L_47a973(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47a9e5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 1)
  ret %struct.Memory* %11
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




define %struct.Memory* @routine_movl_MINUS0x3f8__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1016
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x20__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__esi__MINUS0x418__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1048
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl_MINUS0x418__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1048
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x418__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 1048
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0x41c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1052
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_je_.L_47a9e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_jmpq_.L_47a938(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_47a920(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_47ac26(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_47aa35(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_47aa3a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47ac18(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_movl__0x14___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 20)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__edi__MINUS0x400__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1024
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x3ec__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1004
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edi__MINUS0x404__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1028
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x400__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1024
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x420__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1056
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__edi___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
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


define %struct.Memory* @routine_movl_MINUS0x404__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1028
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x424__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1060
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_movl_MINUS0x424__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1060
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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

define %struct.Memory* @routine_subl__eax___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__esi___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.abs_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__eax__MINUS0x428__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1064
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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






define %struct.Memory* @routine_movl__edx__MINUS0x42c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1068
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movl_MINUS0x42c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1068
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subl__edx___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl_MINUS0x428__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1064
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_addl__eax___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_cmpl__0x1___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_47aaf4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0x4___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 4)
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


define %struct.Memory* @routine_callq_.approxlib(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__esi___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x408__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1032
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}














define %struct.Memory* @routine_movl__eax__MINUS0x40c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1036
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}














define %struct.Memory* @routine_movl__eax__MINUS0x410__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1040
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movl__eax__MINUS0x414__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1044
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x408__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1032
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x40c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 1036
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_jg_.L_47aba4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_47abde(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x410__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1040
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x414__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 1044
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

define %struct.Memory* @routine_jl_.L_47abde(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__eax__MINUS0x430__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1072
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_47ac13(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}
























define %struct.Memory* @routine_movl__eax__MINUS0x434__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1076
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_jmpq_.L_47a9ff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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






define %struct.Memory* @routine_jge_.L_47ad62(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_47ace6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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


define %struct.Memory* @routine_movl__0x1____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 1)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_je_.L_47ace1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_jge_.L_47acdc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movslq_MINUS0x3f0__rbp__rcx_4____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RCX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -1008
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl__0x2____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 2)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_jmpq_.L_47aca8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_47ace1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_47ad4f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jne_.L_47ad4a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


























define %struct.Memory* @routine_movslq_MINUS0x3f0__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1008
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x2____rcx__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 2)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__eax__MINUS0x438__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1080
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_jmpq_.L_47ad54(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_47ac42(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_47ad67(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jle_.L_47ad84(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_addq__0x440___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 1088)
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

