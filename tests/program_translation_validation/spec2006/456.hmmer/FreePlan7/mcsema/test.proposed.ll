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


define %struct.Memory* @FreePlan7(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .FreePlan7:	 RIP: 4325d0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 4325d0	 Bytes: 1
  %loadMem_4325d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4325d0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4325d0)
  store %struct.Memory* %call_4325d0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 4325d1	 Bytes: 3
  %loadMem_4325d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4325d1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4325d1)
  store %struct.Memory* %call_4325d1, %struct.Memory** %MEMORY

  ; Code: subq $0x10, %rsp	 RIP: 4325d4	 Bytes: 4
  %loadMem_4325d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4325d4 = call %struct.Memory* @routine_subq__0x10___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4325d4)
  store %struct.Memory* %call_4325d4, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 4325d8	 Bytes: 4
  %loadMem_4325d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4325d8 = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4325d8)
  store %struct.Memory* %call_4325d8, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 4325dc	 Bytes: 4
  %loadMem_4325dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4325dc = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4325dc)
  store %struct.Memory* %call_4325dc, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, (%rdi)	 RIP: 4325e0	 Bytes: 4
  %loadMem_4325e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4325e0 = call %struct.Memory* @routine_cmpq__0x0____rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4325e0)
  store %struct.Memory* %call_4325e0, %struct.Memory** %MEMORY

  ; Code: je .L_4325f6	 RIP: 4325e4	 Bytes: 6
  %loadMem_4325e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4325e4 = call %struct.Memory* @routine_je_.L_4325f6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4325e4, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4325e4, %struct.Memory** %MEMORY

  %loadBr_4325e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4325e4 = icmp eq i8 %loadBr_4325e4, 1
  br i1 %cmpBr_4325e4, label %block_.L_4325f6, label %block_4325ea

block_4325ea:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4325ea	 Bytes: 4
  %loadMem_4325ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4325ea = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4325ea)
  store %struct.Memory* %call_4325ea, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 4325ee	 Bytes: 3
  %loadMem_4325ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4325ee = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4325ee)
  store %struct.Memory* %call_4325ee, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 4325f1	 Bytes: 5
  %loadMem1_4325f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4325f1 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4325f1, i64 -201329, i64 5, i64 5)
  store %struct.Memory* %call1_4325f1, %struct.Memory** %MEMORY

  %loadMem2_4325f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4325f1 = load i64, i64* %3
  %call2_4325f1 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_4325f1, %struct.Memory* %loadMem2_4325f1)
  store %struct.Memory* %call2_4325f1, %struct.Memory** %MEMORY

  ; Code: .L_4325f6:	 RIP: 4325f6	 Bytes: 0
  br label %block_.L_4325f6
block_.L_4325f6:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4325f6	 Bytes: 4
  %loadMem_4325f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4325f6 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4325f6)
  store %struct.Memory* %call_4325f6, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x8(%rax)	 RIP: 4325fa	 Bytes: 5
  %loadMem_4325fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4325fa = call %struct.Memory* @routine_cmpq__0x0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4325fa)
  store %struct.Memory* %call_4325fa, %struct.Memory** %MEMORY

  ; Code: je .L_432612	 RIP: 4325ff	 Bytes: 6
  %loadMem_4325ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4325ff = call %struct.Memory* @routine_je_.L_432612(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4325ff, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4325ff, %struct.Memory** %MEMORY

  %loadBr_4325ff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4325ff = icmp eq i8 %loadBr_4325ff, 1
  br i1 %cmpBr_4325ff, label %block_.L_432612, label %block_432605

block_432605:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 432605	 Bytes: 4
  %loadMem_432605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432605 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432605)
  store %struct.Memory* %call_432605, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rdi	 RIP: 432609	 Bytes: 4
  %loadMem_432609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432609 = call %struct.Memory* @routine_movq_0x8__rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432609)
  store %struct.Memory* %call_432609, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 43260d	 Bytes: 5
  %loadMem1_43260d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43260d = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43260d, i64 -201357, i64 5, i64 5)
  store %struct.Memory* %call1_43260d, %struct.Memory** %MEMORY

  %loadMem2_43260d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43260d = load i64, i64* %3
  %call2_43260d = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_43260d, %struct.Memory* %loadMem2_43260d)
  store %struct.Memory* %call2_43260d, %struct.Memory** %MEMORY

  ; Code: .L_432612:	 RIP: 432612	 Bytes: 0
  br label %block_.L_432612
block_.L_432612:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 432612	 Bytes: 4
  %loadMem_432612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432612 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432612)
  store %struct.Memory* %call_432612, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x10(%rax)	 RIP: 432616	 Bytes: 5
  %loadMem_432616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432616 = call %struct.Memory* @routine_cmpq__0x0__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432616)
  store %struct.Memory* %call_432616, %struct.Memory** %MEMORY

  ; Code: je .L_43262e	 RIP: 43261b	 Bytes: 6
  %loadMem_43261b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43261b = call %struct.Memory* @routine_je_.L_43262e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43261b, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_43261b, %struct.Memory** %MEMORY

  %loadBr_43261b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43261b = icmp eq i8 %loadBr_43261b, 1
  br i1 %cmpBr_43261b, label %block_.L_43262e, label %block_432621

block_432621:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 432621	 Bytes: 4
  %loadMem_432621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432621 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432621)
  store %struct.Memory* %call_432621, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rdi	 RIP: 432625	 Bytes: 4
  %loadMem_432625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432625 = call %struct.Memory* @routine_movq_0x10__rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432625)
  store %struct.Memory* %call_432625, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 432629	 Bytes: 5
  %loadMem1_432629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_432629 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_432629, i64 -201385, i64 5, i64 5)
  store %struct.Memory* %call1_432629, %struct.Memory** %MEMORY

  %loadMem2_432629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432629 = load i64, i64* %3
  %call2_432629 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_432629, %struct.Memory* %loadMem2_432629)
  store %struct.Memory* %call2_432629, %struct.Memory** %MEMORY

  ; Code: .L_43262e:	 RIP: 43262e	 Bytes: 0
  br label %block_.L_43262e
block_.L_43262e:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43262e	 Bytes: 4
  %loadMem_43262e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43262e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43262e)
  store %struct.Memory* %call_43262e, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x18(%rax)	 RIP: 432632	 Bytes: 5
  %loadMem_432632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432632 = call %struct.Memory* @routine_cmpq__0x0__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432632)
  store %struct.Memory* %call_432632, %struct.Memory** %MEMORY

  ; Code: je .L_43264a	 RIP: 432637	 Bytes: 6
  %loadMem_432637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432637 = call %struct.Memory* @routine_je_.L_43264a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432637, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_432637, %struct.Memory** %MEMORY

  %loadBr_432637 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432637 = icmp eq i8 %loadBr_432637, 1
  br i1 %cmpBr_432637, label %block_.L_43264a, label %block_43263d

block_43263d:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43263d	 Bytes: 4
  %loadMem_43263d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43263d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43263d)
  store %struct.Memory* %call_43263d, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rdi	 RIP: 432641	 Bytes: 4
  %loadMem_432641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432641 = call %struct.Memory* @routine_movq_0x18__rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432641)
  store %struct.Memory* %call_432641, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 432645	 Bytes: 5
  %loadMem1_432645 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_432645 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_432645, i64 -201413, i64 5, i64 5)
  store %struct.Memory* %call1_432645, %struct.Memory** %MEMORY

  %loadMem2_432645 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432645 = load i64, i64* %3
  %call2_432645 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_432645, %struct.Memory* %loadMem2_432645)
  store %struct.Memory* %call2_432645, %struct.Memory** %MEMORY

  ; Code: .L_43264a:	 RIP: 43264a	 Bytes: 0
  br label %block_.L_43264a
block_.L_43264a:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43264a	 Bytes: 4
  %loadMem_43264a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43264a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43264a)
  store %struct.Memory* %call_43264a, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x20(%rax)	 RIP: 43264e	 Bytes: 5
  %loadMem_43264e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43264e = call %struct.Memory* @routine_cmpq__0x0__0x20__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43264e)
  store %struct.Memory* %call_43264e, %struct.Memory** %MEMORY

  ; Code: je .L_432666	 RIP: 432653	 Bytes: 6
  %loadMem_432653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432653 = call %struct.Memory* @routine_je_.L_432666(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432653, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_432653, %struct.Memory** %MEMORY

  %loadBr_432653 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432653 = icmp eq i8 %loadBr_432653, 1
  br i1 %cmpBr_432653, label %block_.L_432666, label %block_432659

block_432659:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 432659	 Bytes: 4
  %loadMem_432659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432659 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432659)
  store %struct.Memory* %call_432659, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rax), %rdi	 RIP: 43265d	 Bytes: 4
  %loadMem_43265d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43265d = call %struct.Memory* @routine_movq_0x20__rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43265d)
  store %struct.Memory* %call_43265d, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 432661	 Bytes: 5
  %loadMem1_432661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_432661 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_432661, i64 -201441, i64 5, i64 5)
  store %struct.Memory* %call1_432661, %struct.Memory** %MEMORY

  %loadMem2_432661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432661 = load i64, i64* %3
  %call2_432661 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_432661, %struct.Memory* %loadMem2_432661)
  store %struct.Memory* %call2_432661, %struct.Memory** %MEMORY

  ; Code: .L_432666:	 RIP: 432666	 Bytes: 0
  br label %block_.L_432666
block_.L_432666:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 432666	 Bytes: 4
  %loadMem_432666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432666 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432666)
  store %struct.Memory* %call_432666, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x28(%rax)	 RIP: 43266a	 Bytes: 5
  %loadMem_43266a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43266a = call %struct.Memory* @routine_cmpq__0x0__0x28__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43266a)
  store %struct.Memory* %call_43266a, %struct.Memory** %MEMORY

  ; Code: je .L_432682	 RIP: 43266f	 Bytes: 6
  %loadMem_43266f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43266f = call %struct.Memory* @routine_je_.L_432682(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43266f, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_43266f, %struct.Memory** %MEMORY

  %loadBr_43266f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43266f = icmp eq i8 %loadBr_43266f, 1
  br i1 %cmpBr_43266f, label %block_.L_432682, label %block_432675

block_432675:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 432675	 Bytes: 4
  %loadMem_432675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432675 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432675)
  store %struct.Memory* %call_432675, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rdi	 RIP: 432679	 Bytes: 4
  %loadMem_432679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432679 = call %struct.Memory* @routine_movq_0x28__rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432679)
  store %struct.Memory* %call_432679, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 43267d	 Bytes: 5
  %loadMem1_43267d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43267d = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43267d, i64 -201469, i64 5, i64 5)
  store %struct.Memory* %call1_43267d, %struct.Memory** %MEMORY

  %loadMem2_43267d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43267d = load i64, i64* %3
  %call2_43267d = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_43267d, %struct.Memory* %loadMem2_43267d)
  store %struct.Memory* %call2_43267d, %struct.Memory** %MEMORY

  ; Code: .L_432682:	 RIP: 432682	 Bytes: 0
  br label %block_.L_432682
block_.L_432682:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 432682	 Bytes: 4
  %loadMem_432682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432682 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432682)
  store %struct.Memory* %call_432682, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x30(%rax)	 RIP: 432686	 Bytes: 5
  %loadMem_432686 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432686 = call %struct.Memory* @routine_cmpq__0x0__0x30__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432686)
  store %struct.Memory* %call_432686, %struct.Memory** %MEMORY

  ; Code: je .L_43269e	 RIP: 43268b	 Bytes: 6
  %loadMem_43268b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43268b = call %struct.Memory* @routine_je_.L_43269e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43268b, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_43268b, %struct.Memory** %MEMORY

  %loadBr_43268b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43268b = icmp eq i8 %loadBr_43268b, 1
  br i1 %cmpBr_43268b, label %block_.L_43269e, label %block_432691

block_432691:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 432691	 Bytes: 4
  %loadMem_432691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432691 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432691)
  store %struct.Memory* %call_432691, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rdi	 RIP: 432695	 Bytes: 4
  %loadMem_432695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432695 = call %struct.Memory* @routine_movq_0x30__rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432695)
  store %struct.Memory* %call_432695, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 432699	 Bytes: 5
  %loadMem1_432699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_432699 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_432699, i64 -201497, i64 5, i64 5)
  store %struct.Memory* %call1_432699, %struct.Memory** %MEMORY

  %loadMem2_432699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432699 = load i64, i64* %3
  %call2_432699 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_432699, %struct.Memory* %loadMem2_432699)
  store %struct.Memory* %call2_432699, %struct.Memory** %MEMORY

  ; Code: .L_43269e:	 RIP: 43269e	 Bytes: 0
  br label %block_.L_43269e
block_.L_43269e:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43269e	 Bytes: 4
  %loadMem_43269e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43269e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43269e)
  store %struct.Memory* %call_43269e, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x40(%rax)	 RIP: 4326a2	 Bytes: 5
  %loadMem_4326a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4326a2 = call %struct.Memory* @routine_cmpq__0x0__0x40__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4326a2)
  store %struct.Memory* %call_4326a2, %struct.Memory** %MEMORY

  ; Code: je .L_4326ba	 RIP: 4326a7	 Bytes: 6
  %loadMem_4326a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4326a7 = call %struct.Memory* @routine_je_.L_4326ba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4326a7, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4326a7, %struct.Memory** %MEMORY

  %loadBr_4326a7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4326a7 = icmp eq i8 %loadBr_4326a7, 1
  br i1 %cmpBr_4326a7, label %block_.L_4326ba, label %block_4326ad

block_4326ad:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4326ad	 Bytes: 4
  %loadMem_4326ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4326ad = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4326ad)
  store %struct.Memory* %call_4326ad, %struct.Memory** %MEMORY

  ; Code: movq 0x40(%rax), %rdi	 RIP: 4326b1	 Bytes: 4
  %loadMem_4326b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4326b1 = call %struct.Memory* @routine_movq_0x40__rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4326b1)
  store %struct.Memory* %call_4326b1, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 4326b5	 Bytes: 5
  %loadMem1_4326b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4326b5 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4326b5, i64 -201525, i64 5, i64 5)
  store %struct.Memory* %call1_4326b5, %struct.Memory** %MEMORY

  %loadMem2_4326b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4326b5 = load i64, i64* %3
  %call2_4326b5 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_4326b5, %struct.Memory* %loadMem2_4326b5)
  store %struct.Memory* %call2_4326b5, %struct.Memory** %MEMORY

  ; Code: .L_4326ba:	 RIP: 4326ba	 Bytes: 0
  br label %block_.L_4326ba
block_.L_4326ba:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4326ba	 Bytes: 4
  %loadMem_4326ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4326ba = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4326ba)
  store %struct.Memory* %call_4326ba, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x48(%rax)	 RIP: 4326be	 Bytes: 5
  %loadMem_4326be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4326be = call %struct.Memory* @routine_cmpq__0x0__0x48__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4326be)
  store %struct.Memory* %call_4326be, %struct.Memory** %MEMORY

  ; Code: je .L_4326d9	 RIP: 4326c3	 Bytes: 6
  %loadMem_4326c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4326c3 = call %struct.Memory* @routine_je_.L_4326d9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4326c3, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4326c3, %struct.Memory** %MEMORY

  %loadBr_4326c3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4326c3 = icmp eq i8 %loadBr_4326c3, 1
  br i1 %cmpBr_4326c3, label %block_.L_4326d9, label %block_4326c9

block_4326c9:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4326c9	 Bytes: 4
  %loadMem_4326c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4326c9 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4326c9)
  store %struct.Memory* %call_4326c9, %struct.Memory** %MEMORY

  ; Code: movq 0x48(%rax), %rax	 RIP: 4326cd	 Bytes: 4
  %loadMem_4326cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4326cd = call %struct.Memory* @routine_movq_0x48__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4326cd)
  store %struct.Memory* %call_4326cd, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4326d1	 Bytes: 3
  %loadMem_4326d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4326d1 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4326d1)
  store %struct.Memory* %call_4326d1, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 4326d4	 Bytes: 5
  %loadMem1_4326d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4326d4 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4326d4, i64 -201556, i64 5, i64 5)
  store %struct.Memory* %call1_4326d4, %struct.Memory** %MEMORY

  %loadMem2_4326d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4326d4 = load i64, i64* %3
  %call2_4326d4 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_4326d4, %struct.Memory* %loadMem2_4326d4)
  store %struct.Memory* %call2_4326d4, %struct.Memory** %MEMORY

  ; Code: .L_4326d9:	 RIP: 4326d9	 Bytes: 0
  br label %block_.L_4326d9
block_.L_4326d9:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4326d9	 Bytes: 4
  %loadMem_4326d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4326d9 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4326d9)
  store %struct.Memory* %call_4326d9, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x58(%rax)	 RIP: 4326dd	 Bytes: 5
  %loadMem_4326dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4326dd = call %struct.Memory* @routine_cmpq__0x0__0x58__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4326dd)
  store %struct.Memory* %call_4326dd, %struct.Memory** %MEMORY

  ; Code: je .L_4326f8	 RIP: 4326e2	 Bytes: 6
  %loadMem_4326e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4326e2 = call %struct.Memory* @routine_je_.L_4326f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4326e2, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4326e2, %struct.Memory** %MEMORY

  %loadBr_4326e2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4326e2 = icmp eq i8 %loadBr_4326e2, 1
  br i1 %cmpBr_4326e2, label %block_.L_4326f8, label %block_4326e8

block_4326e8:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4326e8	 Bytes: 4
  %loadMem_4326e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4326e8 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4326e8)
  store %struct.Memory* %call_4326e8, %struct.Memory** %MEMORY

  ; Code: movq 0x58(%rax), %rax	 RIP: 4326ec	 Bytes: 4
  %loadMem_4326ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4326ec = call %struct.Memory* @routine_movq_0x58__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4326ec)
  store %struct.Memory* %call_4326ec, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4326f0	 Bytes: 3
  %loadMem_4326f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4326f0 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4326f0)
  store %struct.Memory* %call_4326f0, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 4326f3	 Bytes: 5
  %loadMem1_4326f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4326f3 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4326f3, i64 -201587, i64 5, i64 5)
  store %struct.Memory* %call1_4326f3, %struct.Memory** %MEMORY

  %loadMem2_4326f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4326f3 = load i64, i64* %3
  %call2_4326f3 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_4326f3, %struct.Memory* %loadMem2_4326f3)
  store %struct.Memory* %call2_4326f3, %struct.Memory** %MEMORY

  ; Code: .L_4326f8:	 RIP: 4326f8	 Bytes: 0
  br label %block_.L_4326f8
block_.L_4326f8:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4326f8	 Bytes: 4
  %loadMem_4326f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4326f8 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4326f8)
  store %struct.Memory* %call_4326f8, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x60(%rax)	 RIP: 4326fc	 Bytes: 5
  %loadMem_4326fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4326fc = call %struct.Memory* @routine_cmpq__0x0__0x60__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4326fc)
  store %struct.Memory* %call_4326fc, %struct.Memory** %MEMORY

  ; Code: je .L_432717	 RIP: 432701	 Bytes: 6
  %loadMem_432701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432701 = call %struct.Memory* @routine_je_.L_432717(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432701, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_432701, %struct.Memory** %MEMORY

  %loadBr_432701 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432701 = icmp eq i8 %loadBr_432701, 1
  br i1 %cmpBr_432701, label %block_.L_432717, label %block_432707

block_432707:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 432707	 Bytes: 4
  %loadMem_432707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432707 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432707)
  store %struct.Memory* %call_432707, %struct.Memory** %MEMORY

  ; Code: movq 0x60(%rax), %rax	 RIP: 43270b	 Bytes: 4
  %loadMem_43270b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43270b = call %struct.Memory* @routine_movq_0x60__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43270b)
  store %struct.Memory* %call_43270b, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 43270f	 Bytes: 3
  %loadMem_43270f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43270f = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43270f)
  store %struct.Memory* %call_43270f, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 432712	 Bytes: 5
  %loadMem1_432712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_432712 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_432712, i64 -201618, i64 5, i64 5)
  store %struct.Memory* %call1_432712, %struct.Memory** %MEMORY

  %loadMem2_432712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432712 = load i64, i64* %3
  %call2_432712 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_432712, %struct.Memory* %loadMem2_432712)
  store %struct.Memory* %call2_432712, %struct.Memory** %MEMORY

  ; Code: .L_432717:	 RIP: 432717	 Bytes: 0
  br label %block_.L_432717
block_.L_432717:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 432717	 Bytes: 4
  %loadMem_432717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432717 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432717)
  store %struct.Memory* %call_432717, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x68(%rax)	 RIP: 43271b	 Bytes: 5
  %loadMem_43271b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43271b = call %struct.Memory* @routine_cmpq__0x0__0x68__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43271b)
  store %struct.Memory* %call_43271b, %struct.Memory** %MEMORY

  ; Code: je .L_432736	 RIP: 432720	 Bytes: 6
  %loadMem_432720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432720 = call %struct.Memory* @routine_je_.L_432736(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432720, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_432720, %struct.Memory** %MEMORY

  %loadBr_432720 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432720 = icmp eq i8 %loadBr_432720, 1
  br i1 %cmpBr_432720, label %block_.L_432736, label %block_432726

block_432726:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 432726	 Bytes: 4
  %loadMem_432726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432726 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432726)
  store %struct.Memory* %call_432726, %struct.Memory** %MEMORY

  ; Code: movq 0x68(%rax), %rax	 RIP: 43272a	 Bytes: 4
  %loadMem_43272a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43272a = call %struct.Memory* @routine_movq_0x68__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43272a)
  store %struct.Memory* %call_43272a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 43272e	 Bytes: 3
  %loadMem_43272e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43272e = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43272e)
  store %struct.Memory* %call_43272e, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 432731	 Bytes: 5
  %loadMem1_432731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_432731 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_432731, i64 -201649, i64 5, i64 5)
  store %struct.Memory* %call1_432731, %struct.Memory** %MEMORY

  %loadMem2_432731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432731 = load i64, i64* %3
  %call2_432731 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_432731, %struct.Memory* %loadMem2_432731)
  store %struct.Memory* %call2_432731, %struct.Memory** %MEMORY

  ; Code: .L_432736:	 RIP: 432736	 Bytes: 0
  br label %block_.L_432736
block_.L_432736:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 432736	 Bytes: 4
  %loadMem_432736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432736 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432736)
  store %struct.Memory* %call_432736, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x198(%rax)	 RIP: 43273a	 Bytes: 8
  %loadMem_43273a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43273a = call %struct.Memory* @routine_cmpq__0x0__0x198__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43273a)
  store %struct.Memory* %call_43273a, %struct.Memory** %MEMORY

  ; Code: je .L_43275b	 RIP: 432742	 Bytes: 6
  %loadMem_432742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432742 = call %struct.Memory* @routine_je_.L_43275b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432742, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_432742, %struct.Memory** %MEMORY

  %loadBr_432742 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432742 = icmp eq i8 %loadBr_432742, 1
  br i1 %cmpBr_432742, label %block_.L_43275b, label %block_432748

block_432748:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 432748	 Bytes: 4
  %loadMem_432748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432748 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432748)
  store %struct.Memory* %call_432748, %struct.Memory** %MEMORY

  ; Code: movq 0x198(%rax), %rax	 RIP: 43274c	 Bytes: 7
  %loadMem_43274c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43274c = call %struct.Memory* @routine_movq_0x198__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43274c)
  store %struct.Memory* %call_43274c, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 432753	 Bytes: 3
  %loadMem_432753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432753 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432753)
  store %struct.Memory* %call_432753, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 432756	 Bytes: 5
  %loadMem1_432756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_432756 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_432756, i64 -201686, i64 5, i64 5)
  store %struct.Memory* %call1_432756, %struct.Memory** %MEMORY

  %loadMem2_432756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432756 = load i64, i64* %3
  %call2_432756 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_432756, %struct.Memory* %loadMem2_432756)
  store %struct.Memory* %call2_432756, %struct.Memory** %MEMORY

  ; Code: .L_43275b:	 RIP: 43275b	 Bytes: 0
  br label %block_.L_43275b
block_.L_43275b:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43275b	 Bytes: 4
  %loadMem_43275b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43275b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43275b)
  store %struct.Memory* %call_43275b, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0xd0(%rax)	 RIP: 43275f	 Bytes: 8
  %loadMem_43275f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43275f = call %struct.Memory* @routine_cmpq__0x0__0xd0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43275f)
  store %struct.Memory* %call_43275f, %struct.Memory** %MEMORY

  ; Code: je .L_432780	 RIP: 432767	 Bytes: 6
  %loadMem_432767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432767 = call %struct.Memory* @routine_je_.L_432780(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432767, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_432767, %struct.Memory** %MEMORY

  %loadBr_432767 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432767 = icmp eq i8 %loadBr_432767, 1
  br i1 %cmpBr_432767, label %block_.L_432780, label %block_43276d

block_43276d:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43276d	 Bytes: 4
  %loadMem_43276d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43276d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43276d)
  store %struct.Memory* %call_43276d, %struct.Memory** %MEMORY

  ; Code: movq 0xd0(%rax), %rax	 RIP: 432771	 Bytes: 7
  %loadMem_432771 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432771 = call %struct.Memory* @routine_movq_0xd0__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432771)
  store %struct.Memory* %call_432771, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 432778	 Bytes: 3
  %loadMem_432778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432778 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432778)
  store %struct.Memory* %call_432778, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 43277b	 Bytes: 5
  %loadMem1_43277b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43277b = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43277b, i64 -201723, i64 5, i64 5)
  store %struct.Memory* %call1_43277b, %struct.Memory** %MEMORY

  %loadMem2_43277b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43277b = load i64, i64* %3
  %call2_43277b = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_43277b, %struct.Memory* %loadMem2_43277b)
  store %struct.Memory* %call2_43277b, %struct.Memory** %MEMORY

  ; Code: .L_432780:	 RIP: 432780	 Bytes: 0
  br label %block_.L_432780
block_.L_432780:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 432780	 Bytes: 4
  %loadMem_432780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432780 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432780)
  store %struct.Memory* %call_432780, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x1a0(%rax)	 RIP: 432784	 Bytes: 8
  %loadMem_432784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432784 = call %struct.Memory* @routine_cmpq__0x0__0x1a0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432784)
  store %struct.Memory* %call_432784, %struct.Memory** %MEMORY

  ; Code: je .L_4327a5	 RIP: 43278c	 Bytes: 6
  %loadMem_43278c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43278c = call %struct.Memory* @routine_je_.L_4327a5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43278c, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_43278c, %struct.Memory** %MEMORY

  %loadBr_43278c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43278c = icmp eq i8 %loadBr_43278c, 1
  br i1 %cmpBr_43278c, label %block_.L_4327a5, label %block_432792

block_432792:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 432792	 Bytes: 4
  %loadMem_432792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432792 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432792)
  store %struct.Memory* %call_432792, %struct.Memory** %MEMORY

  ; Code: movq 0x1a0(%rax), %rax	 RIP: 432796	 Bytes: 7
  %loadMem_432796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432796 = call %struct.Memory* @routine_movq_0x1a0__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432796)
  store %struct.Memory* %call_432796, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 43279d	 Bytes: 3
  %loadMem_43279d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43279d = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43279d)
  store %struct.Memory* %call_43279d, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 4327a0	 Bytes: 5
  %loadMem1_4327a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4327a0 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4327a0, i64 -201760, i64 5, i64 5)
  store %struct.Memory* %call1_4327a0, %struct.Memory** %MEMORY

  %loadMem2_4327a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4327a0 = load i64, i64* %3
  %call2_4327a0 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_4327a0, %struct.Memory* %loadMem2_4327a0)
  store %struct.Memory* %call2_4327a0, %struct.Memory** %MEMORY

  ; Code: .L_4327a5:	 RIP: 4327a5	 Bytes: 0
  br label %block_.L_4327a5
block_.L_4327a5:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4327a5	 Bytes: 4
  %loadMem_4327a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4327a5 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4327a5)
  store %struct.Memory* %call_4327a5, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0xd8(%rax)	 RIP: 4327a9	 Bytes: 8
  %loadMem_4327a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4327a9 = call %struct.Memory* @routine_cmpq__0x0__0xd8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4327a9)
  store %struct.Memory* %call_4327a9, %struct.Memory** %MEMORY

  ; Code: je .L_4327ca	 RIP: 4327b1	 Bytes: 6
  %loadMem_4327b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4327b1 = call %struct.Memory* @routine_je_.L_4327ca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4327b1, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_4327b1, %struct.Memory** %MEMORY

  %loadBr_4327b1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4327b1 = icmp eq i8 %loadBr_4327b1, 1
  br i1 %cmpBr_4327b1, label %block_.L_4327ca, label %block_4327b7

block_4327b7:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4327b7	 Bytes: 4
  %loadMem_4327b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4327b7 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4327b7)
  store %struct.Memory* %call_4327b7, %struct.Memory** %MEMORY

  ; Code: movq 0xd8(%rax), %rax	 RIP: 4327bb	 Bytes: 7
  %loadMem_4327bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4327bb = call %struct.Memory* @routine_movq_0xd8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4327bb)
  store %struct.Memory* %call_4327bb, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4327c2	 Bytes: 3
  %loadMem_4327c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4327c2 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4327c2)
  store %struct.Memory* %call_4327c2, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 4327c5	 Bytes: 5
  %loadMem1_4327c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4327c5 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4327c5, i64 -201797, i64 5, i64 5)
  store %struct.Memory* %call1_4327c5, %struct.Memory** %MEMORY

  %loadMem2_4327c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4327c5 = load i64, i64* %3
  %call2_4327c5 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_4327c5, %struct.Memory* %loadMem2_4327c5)
  store %struct.Memory* %call2_4327c5, %struct.Memory** %MEMORY

  ; Code: .L_4327ca:	 RIP: 4327ca	 Bytes: 0
  br label %block_.L_4327ca
block_.L_4327ca:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4327ca	 Bytes: 4
  %loadMem_4327ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4327ca = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4327ca)
  store %struct.Memory* %call_4327ca, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x188(%rax)	 RIP: 4327ce	 Bytes: 8
  %loadMem_4327ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4327ce = call %struct.Memory* @routine_cmpq__0x0__0x188__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4327ce)
  store %struct.Memory* %call_4327ce, %struct.Memory** %MEMORY

  ; Code: je .L_4327ef	 RIP: 4327d6	 Bytes: 6
  %loadMem_4327d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4327d6 = call %struct.Memory* @routine_je_.L_4327ef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4327d6, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_4327d6, %struct.Memory** %MEMORY

  %loadBr_4327d6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4327d6 = icmp eq i8 %loadBr_4327d6, 1
  br i1 %cmpBr_4327d6, label %block_.L_4327ef, label %block_4327dc

block_4327dc:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4327dc	 Bytes: 4
  %loadMem_4327dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4327dc = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4327dc)
  store %struct.Memory* %call_4327dc, %struct.Memory** %MEMORY

  ; Code: movq 0x188(%rax), %rax	 RIP: 4327e0	 Bytes: 7
  %loadMem_4327e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4327e0 = call %struct.Memory* @routine_movq_0x188__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4327e0)
  store %struct.Memory* %call_4327e0, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4327e7	 Bytes: 3
  %loadMem_4327e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4327e7 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4327e7)
  store %struct.Memory* %call_4327e7, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 4327ea	 Bytes: 5
  %loadMem1_4327ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4327ea = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4327ea, i64 -201834, i64 5, i64 5)
  store %struct.Memory* %call1_4327ea, %struct.Memory** %MEMORY

  %loadMem2_4327ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4327ea = load i64, i64* %3
  %call2_4327ea = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_4327ea, %struct.Memory* %loadMem2_4327ea)
  store %struct.Memory* %call2_4327ea, %struct.Memory** %MEMORY

  ; Code: .L_4327ef:	 RIP: 4327ef	 Bytes: 0
  br label %block_.L_4327ef
block_.L_4327ef:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4327ef	 Bytes: 4
  %loadMem_4327ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4327ef = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4327ef)
  store %struct.Memory* %call_4327ef, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x190(%rax)	 RIP: 4327f3	 Bytes: 8
  %loadMem_4327f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4327f3 = call %struct.Memory* @routine_cmpq__0x0__0x190__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4327f3)
  store %struct.Memory* %call_4327f3, %struct.Memory** %MEMORY

  ; Code: je .L_432814	 RIP: 4327fb	 Bytes: 6
  %loadMem_4327fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4327fb = call %struct.Memory* @routine_je_.L_432814(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4327fb, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_4327fb, %struct.Memory** %MEMORY

  %loadBr_4327fb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4327fb = icmp eq i8 %loadBr_4327fb, 1
  br i1 %cmpBr_4327fb, label %block_.L_432814, label %block_432801

block_432801:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 432801	 Bytes: 4
  %loadMem_432801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432801 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432801)
  store %struct.Memory* %call_432801, %struct.Memory** %MEMORY

  ; Code: movq 0x190(%rax), %rax	 RIP: 432805	 Bytes: 7
  %loadMem_432805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432805 = call %struct.Memory* @routine_movq_0x190__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432805)
  store %struct.Memory* %call_432805, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 43280c	 Bytes: 3
  %loadMem_43280c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43280c = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43280c)
  store %struct.Memory* %call_43280c, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 43280f	 Bytes: 5
  %loadMem1_43280f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43280f = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43280f, i64 -201871, i64 5, i64 5)
  store %struct.Memory* %call1_43280f, %struct.Memory** %MEMORY

  %loadMem2_43280f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43280f = load i64, i64* %3
  %call2_43280f = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_43280f, %struct.Memory* %loadMem2_43280f)
  store %struct.Memory* %call2_43280f, %struct.Memory** %MEMORY

  ; Code: .L_432814:	 RIP: 432814	 Bytes: 0
  br label %block_.L_432814
block_.L_432814:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 432814	 Bytes: 4
  %loadMem_432814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432814 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432814)
  store %struct.Memory* %call_432814, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x180(%rax)	 RIP: 432818	 Bytes: 8
  %loadMem_432818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432818 = call %struct.Memory* @routine_cmpq__0x0__0x180__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432818)
  store %struct.Memory* %call_432818, %struct.Memory** %MEMORY

  ; Code: je .L_432839	 RIP: 432820	 Bytes: 6
  %loadMem_432820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432820 = call %struct.Memory* @routine_je_.L_432839(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432820, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_432820, %struct.Memory** %MEMORY

  %loadBr_432820 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432820 = icmp eq i8 %loadBr_432820, 1
  br i1 %cmpBr_432820, label %block_.L_432839, label %block_432826

block_432826:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 432826	 Bytes: 4
  %loadMem_432826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432826 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432826)
  store %struct.Memory* %call_432826, %struct.Memory** %MEMORY

  ; Code: movq 0x180(%rax), %rax	 RIP: 43282a	 Bytes: 7
  %loadMem_43282a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43282a = call %struct.Memory* @routine_movq_0x180__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43282a)
  store %struct.Memory* %call_43282a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 432831	 Bytes: 3
  %loadMem_432831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432831 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432831)
  store %struct.Memory* %call_432831, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 432834	 Bytes: 5
  %loadMem1_432834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_432834 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_432834, i64 -201908, i64 5, i64 5)
  store %struct.Memory* %call1_432834, %struct.Memory** %MEMORY

  %loadMem2_432834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432834 = load i64, i64* %3
  %call2_432834 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_432834, %struct.Memory* %loadMem2_432834)
  store %struct.Memory* %call2_432834, %struct.Memory** %MEMORY

  ; Code: .L_432839:	 RIP: 432839	 Bytes: 0
  br label %block_.L_432839
block_.L_432839:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 432839	 Bytes: 4
  %loadMem_432839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432839 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432839)
  store %struct.Memory* %call_432839, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x98(%rax)	 RIP: 43283d	 Bytes: 8
  %loadMem_43283d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43283d = call %struct.Memory* @routine_cmpq__0x0__0x98__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43283d)
  store %struct.Memory* %call_43283d, %struct.Memory** %MEMORY

  ; Code: je .L_432861	 RIP: 432845	 Bytes: 6
  %loadMem_432845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432845 = call %struct.Memory* @routine_je_.L_432861(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432845, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_432845, %struct.Memory** %MEMORY

  %loadBr_432845 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432845 = icmp eq i8 %loadBr_432845, 1
  br i1 %cmpBr_432845, label %block_.L_432861, label %block_43284b

block_43284b:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43284b	 Bytes: 4
  %loadMem_43284b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43284b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43284b)
  store %struct.Memory* %call_43284b, %struct.Memory** %MEMORY

  ; Code: movq 0x98(%rax), %rax	 RIP: 43284f	 Bytes: 7
  %loadMem_43284f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43284f = call %struct.Memory* @routine_movq_0x98__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43284f)
  store %struct.Memory* %call_43284f, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 432856	 Bytes: 3
  %loadMem_432856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432856 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432856)
  store %struct.Memory* %call_432856, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 432859	 Bytes: 3
  %loadMem_432859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432859 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432859)
  store %struct.Memory* %call_432859, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 43285c	 Bytes: 5
  %loadMem1_43285c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43285c = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43285c, i64 -201948, i64 5, i64 5)
  store %struct.Memory* %call1_43285c, %struct.Memory** %MEMORY

  %loadMem2_43285c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43285c = load i64, i64* %3
  %call2_43285c = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_43285c, %struct.Memory* %loadMem2_43285c)
  store %struct.Memory* %call2_43285c, %struct.Memory** %MEMORY

  ; Code: .L_432861:	 RIP: 432861	 Bytes: 0
  br label %block_.L_432861
block_.L_432861:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 432861	 Bytes: 4
  %loadMem_432861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432861 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432861)
  store %struct.Memory* %call_432861, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0xa0(%rax)	 RIP: 432865	 Bytes: 8
  %loadMem_432865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432865 = call %struct.Memory* @routine_cmpq__0x0__0xa0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432865)
  store %struct.Memory* %call_432865, %struct.Memory** %MEMORY

  ; Code: je .L_432889	 RIP: 43286d	 Bytes: 6
  %loadMem_43286d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43286d = call %struct.Memory* @routine_je_.L_432889(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43286d, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_43286d, %struct.Memory** %MEMORY

  %loadBr_43286d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43286d = icmp eq i8 %loadBr_43286d, 1
  br i1 %cmpBr_43286d, label %block_.L_432889, label %block_432873

block_432873:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 432873	 Bytes: 4
  %loadMem_432873 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432873 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432873)
  store %struct.Memory* %call_432873, %struct.Memory** %MEMORY

  ; Code: movq 0xa0(%rax), %rax	 RIP: 432877	 Bytes: 7
  %loadMem_432877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432877 = call %struct.Memory* @routine_movq_0xa0__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432877)
  store %struct.Memory* %call_432877, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 43287e	 Bytes: 3
  %loadMem_43287e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43287e = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43287e)
  store %struct.Memory* %call_43287e, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 432881	 Bytes: 3
  %loadMem_432881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432881 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432881)
  store %struct.Memory* %call_432881, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 432884	 Bytes: 5
  %loadMem1_432884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_432884 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_432884, i64 -201988, i64 5, i64 5)
  store %struct.Memory* %call1_432884, %struct.Memory** %MEMORY

  %loadMem2_432884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432884 = load i64, i64* %3
  %call2_432884 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_432884, %struct.Memory* %loadMem2_432884)
  store %struct.Memory* %call2_432884, %struct.Memory** %MEMORY

  ; Code: .L_432889:	 RIP: 432889	 Bytes: 0
  br label %block_.L_432889
block_.L_432889:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 432889	 Bytes: 4
  %loadMem_432889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432889 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432889)
  store %struct.Memory* %call_432889, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x90(%rax)	 RIP: 43288d	 Bytes: 8
  %loadMem_43288d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43288d = call %struct.Memory* @routine_cmpq__0x0__0x90__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43288d)
  store %struct.Memory* %call_43288d, %struct.Memory** %MEMORY

  ; Code: je .L_4328b1	 RIP: 432895	 Bytes: 6
  %loadMem_432895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432895 = call %struct.Memory* @routine_je_.L_4328b1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432895, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_432895, %struct.Memory** %MEMORY

  %loadBr_432895 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432895 = icmp eq i8 %loadBr_432895, 1
  br i1 %cmpBr_432895, label %block_.L_4328b1, label %block_43289b

block_43289b:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43289b	 Bytes: 4
  %loadMem_43289b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43289b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43289b)
  store %struct.Memory* %call_43289b, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rax), %rax	 RIP: 43289f	 Bytes: 7
  %loadMem_43289f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43289f = call %struct.Memory* @routine_movq_0x90__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43289f)
  store %struct.Memory* %call_43289f, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 4328a6	 Bytes: 3
  %loadMem_4328a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4328a6 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4328a6)
  store %struct.Memory* %call_4328a6, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4328a9	 Bytes: 3
  %loadMem_4328a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4328a9 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4328a9)
  store %struct.Memory* %call_4328a9, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 4328ac	 Bytes: 5
  %loadMem1_4328ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4328ac = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4328ac, i64 -202028, i64 5, i64 5)
  store %struct.Memory* %call1_4328ac, %struct.Memory** %MEMORY

  %loadMem2_4328ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4328ac = load i64, i64* %3
  %call2_4328ac = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_4328ac, %struct.Memory* %loadMem2_4328ac)
  store %struct.Memory* %call2_4328ac, %struct.Memory** %MEMORY

  ; Code: .L_4328b1:	 RIP: 4328b1	 Bytes: 0
  br label %block_.L_4328b1
block_.L_4328b1:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4328b1	 Bytes: 4
  %loadMem_4328b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4328b1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4328b1)
  store %struct.Memory* %call_4328b1, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x140(%rax)	 RIP: 4328b5	 Bytes: 8
  %loadMem_4328b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4328b5 = call %struct.Memory* @routine_cmpq__0x0__0x140__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4328b5)
  store %struct.Memory* %call_4328b5, %struct.Memory** %MEMORY

  ; Code: je .L_4328d6	 RIP: 4328bd	 Bytes: 6
  %loadMem_4328bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4328bd = call %struct.Memory* @routine_je_.L_4328d6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4328bd, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_4328bd, %struct.Memory** %MEMORY

  %loadBr_4328bd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4328bd = icmp eq i8 %loadBr_4328bd, 1
  br i1 %cmpBr_4328bd, label %block_.L_4328d6, label %block_4328c3

block_4328c3:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4328c3	 Bytes: 4
  %loadMem_4328c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4328c3 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4328c3)
  store %struct.Memory* %call_4328c3, %struct.Memory** %MEMORY

  ; Code: movq 0x140(%rax), %rax	 RIP: 4328c7	 Bytes: 7
  %loadMem_4328c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4328c7 = call %struct.Memory* @routine_movq_0x140__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4328c7)
  store %struct.Memory* %call_4328c7, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4328ce	 Bytes: 3
  %loadMem_4328ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4328ce = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4328ce)
  store %struct.Memory* %call_4328ce, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 4328d1	 Bytes: 5
  %loadMem1_4328d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4328d1 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4328d1, i64 -202065, i64 5, i64 5)
  store %struct.Memory* %call1_4328d1, %struct.Memory** %MEMORY

  %loadMem2_4328d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4328d1 = load i64, i64* %3
  %call2_4328d1 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_4328d1, %struct.Memory* %loadMem2_4328d1)
  store %struct.Memory* %call2_4328d1, %struct.Memory** %MEMORY

  ; Code: .L_4328d6:	 RIP: 4328d6	 Bytes: 0
  br label %block_.L_4328d6
block_.L_4328d6:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4328d6	 Bytes: 4
  %loadMem_4328d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4328d6 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4328d6)
  store %struct.Memory* %call_4328d6, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x148(%rax)	 RIP: 4328da	 Bytes: 8
  %loadMem_4328da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4328da = call %struct.Memory* @routine_cmpq__0x0__0x148__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4328da)
  store %struct.Memory* %call_4328da, %struct.Memory** %MEMORY

  ; Code: je .L_4328fb	 RIP: 4328e2	 Bytes: 6
  %loadMem_4328e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4328e2 = call %struct.Memory* @routine_je_.L_4328fb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4328e2, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_4328e2, %struct.Memory** %MEMORY

  %loadBr_4328e2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4328e2 = icmp eq i8 %loadBr_4328e2, 1
  br i1 %cmpBr_4328e2, label %block_.L_4328fb, label %block_4328e8

block_4328e8:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4328e8	 Bytes: 4
  %loadMem_4328e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4328e8 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4328e8)
  store %struct.Memory* %call_4328e8, %struct.Memory** %MEMORY

  ; Code: movq 0x148(%rax), %rax	 RIP: 4328ec	 Bytes: 7
  %loadMem_4328ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4328ec = call %struct.Memory* @routine_movq_0x148__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4328ec)
  store %struct.Memory* %call_4328ec, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4328f3	 Bytes: 3
  %loadMem_4328f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4328f3 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4328f3)
  store %struct.Memory* %call_4328f3, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 4328f6	 Bytes: 5
  %loadMem1_4328f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4328f6 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4328f6, i64 -202102, i64 5, i64 5)
  store %struct.Memory* %call1_4328f6, %struct.Memory** %MEMORY

  %loadMem2_4328f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4328f6 = load i64, i64* %3
  %call2_4328f6 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_4328f6, %struct.Memory* %loadMem2_4328f6)
  store %struct.Memory* %call2_4328f6, %struct.Memory** %MEMORY

  ; Code: .L_4328fb:	 RIP: 4328fb	 Bytes: 0
  br label %block_.L_4328fb
block_.L_4328fb:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4328fb	 Bytes: 4
  %loadMem_4328fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4328fb = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4328fb)
  store %struct.Memory* %call_4328fb, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x138(%rax)	 RIP: 4328ff	 Bytes: 8
  %loadMem_4328ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4328ff = call %struct.Memory* @routine_cmpq__0x0__0x138__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4328ff)
  store %struct.Memory* %call_4328ff, %struct.Memory** %MEMORY

  ; Code: je .L_432920	 RIP: 432907	 Bytes: 6
  %loadMem_432907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432907 = call %struct.Memory* @routine_je_.L_432920(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432907, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_432907, %struct.Memory** %MEMORY

  %loadBr_432907 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432907 = icmp eq i8 %loadBr_432907, 1
  br i1 %cmpBr_432907, label %block_.L_432920, label %block_43290d

block_43290d:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43290d	 Bytes: 4
  %loadMem_43290d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43290d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43290d)
  store %struct.Memory* %call_43290d, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rax	 RIP: 432911	 Bytes: 7
  %loadMem_432911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432911 = call %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432911)
  store %struct.Memory* %call_432911, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 432918	 Bytes: 3
  %loadMem_432918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432918 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432918)
  store %struct.Memory* %call_432918, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 43291b	 Bytes: 5
  %loadMem1_43291b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43291b = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43291b, i64 -202139, i64 5, i64 5)
  store %struct.Memory* %call1_43291b, %struct.Memory** %MEMORY

  %loadMem2_43291b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43291b = load i64, i64* %3
  %call2_43291b = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_43291b, %struct.Memory* %loadMem2_43291b)
  store %struct.Memory* %call2_43291b, %struct.Memory** %MEMORY

  ; Code: .L_432920:	 RIP: 432920	 Bytes: 0
  br label %block_.L_432920
block_.L_432920:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 432920	 Bytes: 4
  %loadMem_432920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432920 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432920)
  store %struct.Memory* %call_432920, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x98(%rax)	 RIP: 432924	 Bytes: 8
  %loadMem_432924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432924 = call %struct.Memory* @routine_cmpq__0x0__0x98__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432924)
  store %struct.Memory* %call_432924, %struct.Memory** %MEMORY

  ; Code: je .L_432945	 RIP: 43292c	 Bytes: 6
  %loadMem_43292c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43292c = call %struct.Memory* @routine_je_.L_432945(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43292c, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_43292c, %struct.Memory** %MEMORY

  %loadBr_43292c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43292c = icmp eq i8 %loadBr_43292c, 1
  br i1 %cmpBr_43292c, label %block_.L_432945, label %block_432932

block_432932:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 432932	 Bytes: 4
  %loadMem_432932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432932 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432932)
  store %struct.Memory* %call_432932, %struct.Memory** %MEMORY

  ; Code: movq 0x98(%rax), %rax	 RIP: 432936	 Bytes: 7
  %loadMem_432936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432936 = call %struct.Memory* @routine_movq_0x98__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432936)
  store %struct.Memory* %call_432936, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 43293d	 Bytes: 3
  %loadMem_43293d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43293d = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43293d)
  store %struct.Memory* %call_43293d, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 432940	 Bytes: 5
  %loadMem1_432940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_432940 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_432940, i64 -202176, i64 5, i64 5)
  store %struct.Memory* %call1_432940, %struct.Memory** %MEMORY

  %loadMem2_432940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432940 = load i64, i64* %3
  %call2_432940 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_432940, %struct.Memory* %loadMem2_432940)
  store %struct.Memory* %call2_432940, %struct.Memory** %MEMORY

  ; Code: .L_432945:	 RIP: 432945	 Bytes: 0
  br label %block_.L_432945
block_.L_432945:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 432945	 Bytes: 4
  %loadMem_432945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432945 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432945)
  store %struct.Memory* %call_432945, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0xa0(%rax)	 RIP: 432949	 Bytes: 8
  %loadMem_432949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432949 = call %struct.Memory* @routine_cmpq__0x0__0xa0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432949)
  store %struct.Memory* %call_432949, %struct.Memory** %MEMORY

  ; Code: je .L_43296a	 RIP: 432951	 Bytes: 6
  %loadMem_432951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432951 = call %struct.Memory* @routine_je_.L_43296a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432951, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_432951, %struct.Memory** %MEMORY

  %loadBr_432951 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432951 = icmp eq i8 %loadBr_432951, 1
  br i1 %cmpBr_432951, label %block_.L_43296a, label %block_432957

block_432957:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 432957	 Bytes: 4
  %loadMem_432957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432957 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432957)
  store %struct.Memory* %call_432957, %struct.Memory** %MEMORY

  ; Code: movq 0xa0(%rax), %rax	 RIP: 43295b	 Bytes: 7
  %loadMem_43295b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43295b = call %struct.Memory* @routine_movq_0xa0__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43295b)
  store %struct.Memory* %call_43295b, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 432962	 Bytes: 3
  %loadMem_432962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432962 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432962)
  store %struct.Memory* %call_432962, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 432965	 Bytes: 5
  %loadMem1_432965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_432965 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_432965, i64 -202213, i64 5, i64 5)
  store %struct.Memory* %call1_432965, %struct.Memory** %MEMORY

  %loadMem2_432965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432965 = load i64, i64* %3
  %call2_432965 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_432965, %struct.Memory* %loadMem2_432965)
  store %struct.Memory* %call2_432965, %struct.Memory** %MEMORY

  ; Code: .L_43296a:	 RIP: 43296a	 Bytes: 0
  br label %block_.L_43296a
block_.L_43296a:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43296a	 Bytes: 4
  %loadMem_43296a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43296a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43296a)
  store %struct.Memory* %call_43296a, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x90(%rax)	 RIP: 43296e	 Bytes: 8
  %loadMem_43296e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43296e = call %struct.Memory* @routine_cmpq__0x0__0x90__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43296e)
  store %struct.Memory* %call_43296e, %struct.Memory** %MEMORY

  ; Code: je .L_43298f	 RIP: 432976	 Bytes: 6
  %loadMem_432976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432976 = call %struct.Memory* @routine_je_.L_43298f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432976, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_432976, %struct.Memory** %MEMORY

  %loadBr_432976 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432976 = icmp eq i8 %loadBr_432976, 1
  br i1 %cmpBr_432976, label %block_.L_43298f, label %block_43297c

block_43297c:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 43297c	 Bytes: 4
  %loadMem_43297c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43297c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43297c)
  store %struct.Memory* %call_43297c, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rax), %rax	 RIP: 432980	 Bytes: 7
  %loadMem_432980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432980 = call %struct.Memory* @routine_movq_0x90__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432980)
  store %struct.Memory* %call_432980, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 432987	 Bytes: 3
  %loadMem_432987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432987 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432987)
  store %struct.Memory* %call_432987, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 43298a	 Bytes: 5
  %loadMem1_43298a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43298a = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43298a, i64 -202250, i64 5, i64 5)
  store %struct.Memory* %call1_43298a, %struct.Memory** %MEMORY

  %loadMem2_43298a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43298a = load i64, i64* %3
  %call2_43298a = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_43298a, %struct.Memory* %loadMem2_43298a)
  store %struct.Memory* %call2_43298a, %struct.Memory** %MEMORY

  ; Code: .L_43298f:	 RIP: 43298f	 Bytes: 0
  br label %block_.L_43298f
block_.L_43298f:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 43298f	 Bytes: 4
  %loadMem_43298f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43298f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43298f)
  store %struct.Memory* %call_43298f, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x1a8(%rax)	 RIP: 432993	 Bytes: 8
  %loadMem_432993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432993 = call %struct.Memory* @routine_cmpq__0x0__0x1a8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432993)
  store %struct.Memory* %call_432993, %struct.Memory** %MEMORY

  ; Code: je .L_4329b4	 RIP: 43299b	 Bytes: 6
  %loadMem_43299b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43299b = call %struct.Memory* @routine_je_.L_4329b4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43299b, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_43299b, %struct.Memory** %MEMORY

  %loadBr_43299b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43299b = icmp eq i8 %loadBr_43299b, 1
  br i1 %cmpBr_43299b, label %block_.L_4329b4, label %block_4329a1

block_4329a1:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4329a1	 Bytes: 4
  %loadMem_4329a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4329a1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4329a1)
  store %struct.Memory* %call_4329a1, %struct.Memory** %MEMORY

  ; Code: movq 0x1a8(%rax), %rax	 RIP: 4329a5	 Bytes: 7
  %loadMem_4329a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4329a5 = call %struct.Memory* @routine_movq_0x1a8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4329a5)
  store %struct.Memory* %call_4329a5, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4329ac	 Bytes: 3
  %loadMem_4329ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4329ac = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4329ac)
  store %struct.Memory* %call_4329ac, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 4329af	 Bytes: 5
  %loadMem1_4329af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4329af = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4329af, i64 -202287, i64 5, i64 5)
  store %struct.Memory* %call1_4329af, %struct.Memory** %MEMORY

  %loadMem2_4329af = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4329af = load i64, i64* %3
  %call2_4329af = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_4329af, %struct.Memory* %loadMem2_4329af)
  store %struct.Memory* %call2_4329af, %struct.Memory** %MEMORY

  ; Code: .L_4329b4:	 RIP: 4329b4	 Bytes: 0
  br label %block_.L_4329b4
block_.L_4329b4:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4329b4	 Bytes: 4
  %loadMem_4329b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4329b4 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4329b4)
  store %struct.Memory* %call_4329b4, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x1b0(%rax)	 RIP: 4329b8	 Bytes: 8
  %loadMem_4329b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4329b8 = call %struct.Memory* @routine_cmpq__0x0__0x1b0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4329b8)
  store %struct.Memory* %call_4329b8, %struct.Memory** %MEMORY

  ; Code: je .L_4329d9	 RIP: 4329c0	 Bytes: 6
  %loadMem_4329c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4329c0 = call %struct.Memory* @routine_je_.L_4329d9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4329c0, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_4329c0, %struct.Memory** %MEMORY

  %loadBr_4329c0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4329c0 = icmp eq i8 %loadBr_4329c0, 1
  br i1 %cmpBr_4329c0, label %block_.L_4329d9, label %block_4329c6

block_4329c6:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4329c6	 Bytes: 4
  %loadMem_4329c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4329c6 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4329c6)
  store %struct.Memory* %call_4329c6, %struct.Memory** %MEMORY

  ; Code: movq 0x1b0(%rax), %rax	 RIP: 4329ca	 Bytes: 7
  %loadMem_4329ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4329ca = call %struct.Memory* @routine_movq_0x1b0__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4329ca)
  store %struct.Memory* %call_4329ca, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4329d1	 Bytes: 3
  %loadMem_4329d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4329d1 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4329d1)
  store %struct.Memory* %call_4329d1, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 4329d4	 Bytes: 5
  %loadMem1_4329d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4329d4 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4329d4, i64 -202324, i64 5, i64 5)
  store %struct.Memory* %call1_4329d4, %struct.Memory** %MEMORY

  %loadMem2_4329d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4329d4 = load i64, i64* %3
  %call2_4329d4 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_4329d4, %struct.Memory* %loadMem2_4329d4)
  store %struct.Memory* %call2_4329d4, %struct.Memory** %MEMORY

  ; Code: .L_4329d9:	 RIP: 4329d9	 Bytes: 0
  br label %block_.L_4329d9
block_.L_4329d9:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4329d9	 Bytes: 4
  %loadMem_4329d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4329d9 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4329d9)
  store %struct.Memory* %call_4329d9, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4329dd	 Bytes: 3
  %loadMem_4329dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4329dd = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4329dd)
  store %struct.Memory* %call_4329dd, %struct.Memory** %MEMORY

  ; Code: callq .free_plt	 RIP: 4329e0	 Bytes: 5
  %loadMem1_4329e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4329e0 = call %struct.Memory* @routine_callq_.free_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4329e0, i64 -202336, i64 5, i64 5)
  store %struct.Memory* %call1_4329e0, %struct.Memory** %MEMORY

  %loadMem2_4329e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4329e0 = load i64, i64* %3
  %call2_4329e0 = call %struct.Memory* @ext_free(%struct.State* %0, i64  %loadPC_4329e0, %struct.Memory* %loadMem2_4329e0)
  store %struct.Memory* %call2_4329e0, %struct.Memory** %MEMORY

  ; Code: addq $0x10, %rsp	 RIP: 4329e5	 Bytes: 4
  %loadMem_4329e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4329e5 = call %struct.Memory* @routine_addq__0x10___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4329e5)
  store %struct.Memory* %call_4329e5, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 4329e9	 Bytes: 1
  %loadMem_4329e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4329e9 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4329e9)
  store %struct.Memory* %call_4329e9, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 4329ea	 Bytes: 1
  %loadMem_4329ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4329ea = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4329ea)
  store %struct.Memory* %call_4329ea, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_4329ea
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = inttoptr i64 %2 to i64*
  %6 = load i64, i64* %5
  %7 = sub i64 %6, %3
  %8 = icmp ult i64 %6, %3
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = trunc i64 %7 to i32
  %12 = and i32 %11, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12) #22
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i64 %6, %3
  %19 = xor i64 %18, %7
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i64 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %7, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %6, 63
  %31 = lshr i64 %3, 63
  %32 = xor i64 %30, %31
  %33 = xor i64 %27, %30
  %34 = add   i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpq__0x0____rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
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

define %struct.Memory* @routine_je_.L_4325f6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq___rax____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
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

define %struct.Memory* @routine_callq_.free_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpq__0x0__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_432612(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x8__rax____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_cmpq__0x0__0x10__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_43262e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x10__rax____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_cmpq__0x0__0x18__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_43264a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x18__rax____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_cmpq__0x0__0x20__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_432666(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x20__rax____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_cmpq__0x0__0x28__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_432682(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x28__rax____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_cmpq__0x0__0x30__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_43269e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x30__rax____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_cmpq__0x0__0x40__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4326ba(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x40__rax____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_cmpq__0x0__0x48__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4326d9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x48__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
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






define %struct.Memory* @routine_cmpq__0x0__0x58__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 88
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4326f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x58__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 88
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_cmpq__0x0__0x60__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 96
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_432717(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x60__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 96
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_cmpq__0x0__0x68__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 104
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_432736(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x68__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 104
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_cmpq__0x0__0x198__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 408
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_43275b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x198__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 408
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_cmpq__0x0__0xd0__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 208
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_432780(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0xd0__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 208
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_cmpq__0x0__0x1a0__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 416
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4327a5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x1a0__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 416
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_cmpq__0x0__0xd8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 216
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4327ca(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0xd8__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 216
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_cmpq__0x0__0x188__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 392
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4327ef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x188__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 392
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_cmpq__0x0__0x190__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 400
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_432814(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x190__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 400
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_cmpq__0x0__0x180__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 384
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_432839(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x180__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 384
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_cmpq__0x0__0x98__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 152
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_432861(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x98__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 152
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq___rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_cmpq__0x0__0xa0__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_432889(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0xa0__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_cmpq__0x0__0x90__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 144
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4328b1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x90__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 144
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_cmpq__0x0__0x140__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4328d6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x140__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_cmpq__0x0__0x148__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 328
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4328fb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x148__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 328
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_cmpq__0x0__0x138__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 312
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_432920(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 312
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_je_.L_432945(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_je_.L_43296a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_je_.L_43298f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_cmpq__0x0__0x1a8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 424
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4329b4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x1a8__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 424
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_cmpq__0x0__0x1b0__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 432
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4329d9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x1b0__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 432
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
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

