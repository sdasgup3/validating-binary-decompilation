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

declare %struct.Memory* @sub_401590.feof_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_42eff0.MSAFileGetLine(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_42c710.MSAAlloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_401700.strstr_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4254e0.Strparse(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_446800.IsBlankline(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_42d6c0.MSAAddComment(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_446650.sre_strtok(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_417130.GKIStoreKey(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_42cb00.MSAExpand(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_446720.sre_strdup(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_417460.GKIKeyIndex(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4464e0.sre_strcat(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_42e2c0.MSAVerifyParse(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x24674d__rip__type = type <{ [8 x i8] }>
@G_0x24674d__rip_= global %G_0x24674d__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x246754__rip__type = type <{ [8 x i8] }>
@G_0x246754__rip_= global %G_0x246754__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x676f80_type = type <{ [4 x i8] }>
@G_0x676f80= global %G_0x676f80_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x676fa8_type = type <{ [8 x i8] }>
@G_0x676fa8= global %G_0x676fa8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x458ccb_type = type <{ [8 x i8] }>
@G__0x458ccb= global %G__0x458ccb_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x458ce3_type = type <{ [8 x i8] }>
@G__0x458ce3= global %G__0x458ce3_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x458cfb_type = type <{ [8 x i8] }>
@G__0x458cfb= global %G__0x458cfb_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x458cfe_type = type <{ [8 x i8] }>
@G__0x458cfe= global %G__0x458cfe_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x458d03_type = type <{ [8 x i8] }>
@G__0x458d03= global %G__0x458d03_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x458d3d_type = type <{ [8 x i8] }>
@G__0x458d3d= global %G__0x458d3d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x458d43_type = type <{ [8 x i8] }>
@G__0x458d43= global %G__0x458d43_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x458d46_type = type <{ [8 x i8] }>
@G__0x458d46= global %G__0x458d46_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x458d4e_type = type <{ [8 x i8] }>
@G__0x458d4e= global %G__0x458d4e_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x458d8b_type = type <{ [8 x i8] }>
@G__0x458d8b= global %G__0x458d8b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x458dca_type = type <{ [8 x i8] }>
@G__0x458dca= global %G__0x458dca_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45a1f7_type = type <{ [8 x i8] }>
@G__0x45a1f7= global %G__0x45a1f7_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x45a381_type = type <{ [8 x i8] }>
@G__0x45a381= global %G__0x45a381_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @ReadMSF(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .ReadMSF:	 RIP: 4306c0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 4306c0	 Bytes: 1
  %loadMem_4306c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4306c0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4306c0)
  store %struct.Memory* %call_4306c0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 4306c1	 Bytes: 3
  %loadMem_4306c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4306c1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4306c1)
  store %struct.Memory* %call_4306c1, %struct.Memory** %MEMORY

  ; Code: subq $0x70, %rsp	 RIP: 4306c4	 Bytes: 4
  %loadMem_4306c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4306c4 = call %struct.Memory* @routine_subq__0x70___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4306c4)
  store %struct.Memory* %call_4306c4, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x10(%rbp)	 RIP: 4306c8	 Bytes: 4
  %loadMem_4306c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4306c8 = call %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4306c8)
  store %struct.Memory* %call_4306c8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 4306cc	 Bytes: 4
  %loadMem_4306cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4306cc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4306cc)
  store %struct.Memory* %call_4306cc, %struct.Memory** %MEMORY

  ; Code: movq (%rdi), %rdi	 RIP: 4306d0	 Bytes: 3
  %loadMem_4306d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4306d0 = call %struct.Memory* @routine_movq___rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4306d0)
  store %struct.Memory* %call_4306d0, %struct.Memory** %MEMORY

  ; Code: callq .feof_plt	 RIP: 4306d3	 Bytes: 5
  %loadMem1_4306d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4306d3 = call %struct.Memory* @routine_callq_.feof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4306d3, i64 -192835, i64 5, i64 5)
  store %struct.Memory* %call1_4306d3, %struct.Memory** %MEMORY

  %loadMem2_4306d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4306d3 = load i64, i64* %3
  %call2_4306d3 = call %struct.Memory* @sub_401590.feof_plt(%struct.State* %0, i64  %loadPC_4306d3, %struct.Memory* %loadMem2_4306d3)
  store %struct.Memory* %call2_4306d3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4306d8	 Bytes: 3
  %loadMem_4306d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4306d8 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4306d8)
  store %struct.Memory* %call_4306d8, %struct.Memory** %MEMORY

  ; Code: je .L_4306ee	 RIP: 4306db	 Bytes: 6
  %loadMem_4306db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4306db = call %struct.Memory* @routine_je_.L_4306ee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4306db, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4306db, %struct.Memory** %MEMORY

  %loadBr_4306db = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4306db = icmp eq i8 %loadBr_4306db, 1
  br i1 %cmpBr_4306db, label %block_.L_4306ee, label %block_4306e1

block_4306e1:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 4306e1	 Bytes: 8
  %loadMem_4306e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4306e1 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4306e1)
  store %struct.Memory* %call_4306e1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_430dd3	 RIP: 4306e9	 Bytes: 5
  %loadMem_4306e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4306e9 = call %struct.Memory* @routine_jmpq_.L_430dd3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4306e9, i64 1770, i64 5)
  store %struct.Memory* %call_4306e9, %struct.Memory** %MEMORY

  br label %block_.L_430dd3

  ; Code: .L_4306ee:	 RIP: 4306ee	 Bytes: 0
block_.L_4306ee:

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 4306ee	 Bytes: 4
  %loadMem_4306ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4306ee = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4306ee)
  store %struct.Memory* %call_4306ee, %struct.Memory** %MEMORY

  ; Code: callq .MSAFileGetLine	 RIP: 4306f2	 Bytes: 5
  %loadMem1_4306f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4306f2 = call %struct.Memory* @routine_callq_.MSAFileGetLine(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4306f2, i64 -5890, i64 5, i64 5)
  store %struct.Memory* %call1_4306f2, %struct.Memory** %MEMORY

  %loadMem2_4306f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4306f2 = load i64, i64* %3
  %call2_4306f2 = call %struct.Memory* @sub_42eff0.MSAFileGetLine(%struct.State* %0, i64  %loadPC_4306f2, %struct.Memory* %loadMem2_4306f2)
  store %struct.Memory* %call2_4306f2, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x20(%rbp)	 RIP: 4306f7	 Bytes: 4
  %loadMem_4306f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4306f7 = call %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4306f7)
  store %struct.Memory* %call_4306f7, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4306fb	 Bytes: 4
  %loadMem_4306fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4306fb = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4306fb)
  store %struct.Memory* %call_4306fb, %struct.Memory** %MEMORY

  ; Code: jne .L_430712	 RIP: 4306ff	 Bytes: 6
  %loadMem_4306ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4306ff = call %struct.Memory* @routine_jne_.L_430712(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4306ff, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4306ff, %struct.Memory** %MEMORY

  %loadBr_4306ff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4306ff = icmp eq i8 %loadBr_4306ff, 1
  br i1 %cmpBr_4306ff, label %block_.L_430712, label %block_430705

block_430705:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 430705	 Bytes: 8
  %loadMem_430705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430705 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430705)
  store %struct.Memory* %call_430705, %struct.Memory** %MEMORY

  ; Code: jmpq .L_430dd3	 RIP: 43070d	 Bytes: 5
  %loadMem_43070d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43070d = call %struct.Memory* @routine_jmpq_.L_430dd3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43070d, i64 1734, i64 5)
  store %struct.Memory* %call_43070d, %struct.Memory** %MEMORY

  br label %block_.L_430dd3

  ; Code: .L_430712:	 RIP: 430712	 Bytes: 0
block_.L_430712:

  ; Code: movl $0xa, %edi	 RIP: 430712	 Bytes: 5
  %loadMem_430712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430712 = call %struct.Memory* @routine_movl__0xa___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430712)
  store %struct.Memory* %call_430712, %struct.Memory** %MEMORY

  ; Code: xorl %esi, %esi	 RIP: 430717	 Bytes: 2
  %loadMem_430717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430717 = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430717)
  store %struct.Memory* %call_430717, %struct.Memory** %MEMORY

  ; Code: callq .MSAAlloc	 RIP: 430719	 Bytes: 5
  %loadMem1_430719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_430719 = call %struct.Memory* @routine_callq_.MSAAlloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_430719, i64 -16393, i64 5, i64 5)
  store %struct.Memory* %call1_430719, %struct.Memory** %MEMORY

  %loadMem2_430719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_430719 = load i64, i64* %3
  %call2_430719 = call %struct.Memory* @sub_42c710.MSAAlloc(%struct.State* %0, i64  %loadPC_430719, %struct.Memory* %loadMem2_430719)
  store %struct.Memory* %call2_430719, %struct.Memory** %MEMORY

  ; Code: movq $0x458ccb, %rsi	 RIP: 43071e	 Bytes: 10
  %loadMem_43071e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43071e = call %struct.Memory* @routine_movq__0x458ccb___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43071e)
  store %struct.Memory* %call_43071e, %struct.Memory** %MEMORY

  ; Code: movl $0x17, %edi	 RIP: 430728	 Bytes: 5
  %loadMem_430728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430728 = call %struct.Memory* @routine_movl__0x17___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430728)
  store %struct.Memory* %call_430728, %struct.Memory** %MEMORY

  ; Code: movl %edi, %edx	 RIP: 43072d	 Bytes: 2
  %loadMem_43072d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43072d = call %struct.Memory* @routine_movl__edi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43072d)
  store %struct.Memory* %call_43072d, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x18(%rbp)	 RIP: 43072f	 Bytes: 4
  %loadMem_43072f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43072f = call %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43072f)
  store %struct.Memory* %call_43072f, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 430733	 Bytes: 4
  %loadMem_430733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430733 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430733)
  store %struct.Memory* %call_430733, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 430737	 Bytes: 5
  %loadMem1_430737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_430737 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_430737, i64 -193383, i64 5, i64 5)
  store %struct.Memory* %call1_430737, %struct.Memory** %MEMORY

  %loadMem2_430737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_430737 = load i64, i64* %3
  %call2_430737 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_430737, %struct.Memory* %loadMem2_430737)
  store %struct.Memory* %call2_430737, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43073c	 Bytes: 3
  %loadMem_43073c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43073c = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43073c)
  store %struct.Memory* %call_43073c, %struct.Memory** %MEMORY

  ; Code: jne .L_430779	 RIP: 43073f	 Bytes: 6
  %loadMem_43073f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43073f = call %struct.Memory* @routine_jne_.L_430779(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43073f, i8* %BRANCH_TAKEN, i64 58, i64 6, i64 6)
  store %struct.Memory* %call_43073f, %struct.Memory** %MEMORY

  %loadBr_43073f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43073f = icmp eq i8 %loadBr_43073f, 1
  br i1 %cmpBr_43073f, label %block_.L_430779, label %block_430745

block_430745:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 430745	 Bytes: 4
  %loadMem_430745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430745 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430745)
  store %struct.Memory* %call_430745, %struct.Memory** %MEMORY

  ; Code: movl $0x3, 0x24(%rax)	 RIP: 430749	 Bytes: 7
  %loadMem_430749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430749 = call %struct.Memory* @routine_movl__0x3__0x24__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430749)
  store %struct.Memory* %call_430749, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 430750	 Bytes: 4
  %loadMem_430750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430750 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430750)
  store %struct.Memory* %call_430750, %struct.Memory** %MEMORY

  ; Code: callq .MSAFileGetLine	 RIP: 430754	 Bytes: 5
  %loadMem1_430754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_430754 = call %struct.Memory* @routine_callq_.MSAFileGetLine(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_430754, i64 -5988, i64 5, i64 5)
  store %struct.Memory* %call1_430754, %struct.Memory** %MEMORY

  %loadMem2_430754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_430754 = load i64, i64* %3
  %call2_430754 = call %struct.Memory* @sub_42eff0.MSAFileGetLine(%struct.State* %0, i64  %loadPC_430754, %struct.Memory* %loadMem2_430754)
  store %struct.Memory* %call2_430754, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x20(%rbp)	 RIP: 430759	 Bytes: 4
  %loadMem_430759 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430759 = call %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430759)
  store %struct.Memory* %call_430759, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 43075d	 Bytes: 4
  %loadMem_43075d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43075d = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43075d)
  store %struct.Memory* %call_43075d, %struct.Memory** %MEMORY

  ; Code: jne .L_430774	 RIP: 430761	 Bytes: 6
  %loadMem_430761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430761 = call %struct.Memory* @routine_jne_.L_430774(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430761, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_430761, %struct.Memory** %MEMORY

  %loadBr_430761 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_430761 = icmp eq i8 %loadBr_430761, 1
  br i1 %cmpBr_430761, label %block_.L_430774, label %block_430767

block_430767:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 430767	 Bytes: 8
  %loadMem_430767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430767 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430767)
  store %struct.Memory* %call_430767, %struct.Memory** %MEMORY

  ; Code: jmpq .L_430dd3	 RIP: 43076f	 Bytes: 5
  %loadMem_43076f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43076f = call %struct.Memory* @routine_jmpq_.L_430dd3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43076f, i64 1636, i64 5)
  store %struct.Memory* %call_43076f, %struct.Memory** %MEMORY

  br label %block_.L_430dd3

  ; Code: .L_430774:	 RIP: 430774	 Bytes: 0
block_.L_430774:

  ; Code: jmpq .L_4307d5	 RIP: 430774	 Bytes: 5
  %loadMem_430774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430774 = call %struct.Memory* @routine_jmpq_.L_4307d5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430774, i64 97, i64 5)
  store %struct.Memory* %call_430774, %struct.Memory** %MEMORY

  br label %block_.L_4307d5

  ; Code: .L_430779:	 RIP: 430779	 Bytes: 0
block_.L_430779:

  ; Code: movq $0x458ce3, %rsi	 RIP: 430779	 Bytes: 10
  %loadMem_430779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430779 = call %struct.Memory* @routine_movq__0x458ce3___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430779)
  store %struct.Memory* %call_430779, %struct.Memory** %MEMORY

  ; Code: movl $0x17, %eax	 RIP: 430783	 Bytes: 5
  %loadMem_430783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430783 = call %struct.Memory* @routine_movl__0x17___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430783)
  store %struct.Memory* %call_430783, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 430788	 Bytes: 2
  %loadMem_430788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430788 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430788)
  store %struct.Memory* %call_430788, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 43078a	 Bytes: 4
  %loadMem_43078a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43078a = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43078a)
  store %struct.Memory* %call_43078a, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 43078e	 Bytes: 5
  %loadMem1_43078e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43078e = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43078e, i64 -193470, i64 5, i64 5)
  store %struct.Memory* %call1_43078e, %struct.Memory** %MEMORY

  %loadMem2_43078e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43078e = load i64, i64* %3
  %call2_43078e = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_43078e, %struct.Memory* %loadMem2_43078e)
  store %struct.Memory* %call2_43078e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 430793	 Bytes: 3
  %loadMem_430793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430793 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430793)
  store %struct.Memory* %call_430793, %struct.Memory** %MEMORY

  ; Code: jne .L_4307d0	 RIP: 430796	 Bytes: 6
  %loadMem_430796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430796 = call %struct.Memory* @routine_jne_.L_4307d0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430796, i8* %BRANCH_TAKEN, i64 58, i64 6, i64 6)
  store %struct.Memory* %call_430796, %struct.Memory** %MEMORY

  %loadBr_430796 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_430796 = icmp eq i8 %loadBr_430796, 1
  br i1 %cmpBr_430796, label %block_.L_4307d0, label %block_43079c

block_43079c:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 43079c	 Bytes: 4
  %loadMem_43079c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43079c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43079c)
  store %struct.Memory* %call_43079c, %struct.Memory** %MEMORY

  ; Code: movl $0x2, 0x24(%rax)	 RIP: 4307a0	 Bytes: 7
  %loadMem_4307a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4307a0 = call %struct.Memory* @routine_movl__0x2__0x24__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4307a0)
  store %struct.Memory* %call_4307a0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 4307a7	 Bytes: 4
  %loadMem_4307a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4307a7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4307a7)
  store %struct.Memory* %call_4307a7, %struct.Memory** %MEMORY

  ; Code: callq .MSAFileGetLine	 RIP: 4307ab	 Bytes: 5
  %loadMem1_4307ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4307ab = call %struct.Memory* @routine_callq_.MSAFileGetLine(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4307ab, i64 -6075, i64 5, i64 5)
  store %struct.Memory* %call1_4307ab, %struct.Memory** %MEMORY

  %loadMem2_4307ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4307ab = load i64, i64* %3
  %call2_4307ab = call %struct.Memory* @sub_42eff0.MSAFileGetLine(%struct.State* %0, i64  %loadPC_4307ab, %struct.Memory* %loadMem2_4307ab)
  store %struct.Memory* %call2_4307ab, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x20(%rbp)	 RIP: 4307b0	 Bytes: 4
  %loadMem_4307b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4307b0 = call %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4307b0)
  store %struct.Memory* %call_4307b0, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4307b4	 Bytes: 4
  %loadMem_4307b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4307b4 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4307b4)
  store %struct.Memory* %call_4307b4, %struct.Memory** %MEMORY

  ; Code: jne .L_4307cb	 RIP: 4307b8	 Bytes: 6
  %loadMem_4307b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4307b8 = call %struct.Memory* @routine_jne_.L_4307cb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4307b8, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4307b8, %struct.Memory** %MEMORY

  %loadBr_4307b8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4307b8 = icmp eq i8 %loadBr_4307b8, 1
  br i1 %cmpBr_4307b8, label %block_.L_4307cb, label %block_4307be

block_4307be:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 4307be	 Bytes: 8
  %loadMem_4307be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4307be = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4307be)
  store %struct.Memory* %call_4307be, %struct.Memory** %MEMORY

  ; Code: jmpq .L_430dd3	 RIP: 4307c6	 Bytes: 5
  %loadMem_4307c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4307c6 = call %struct.Memory* @routine_jmpq_.L_430dd3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4307c6, i64 1549, i64 5)
  store %struct.Memory* %call_4307c6, %struct.Memory** %MEMORY

  br label %block_.L_430dd3

  ; Code: .L_4307cb:	 RIP: 4307cb	 Bytes: 0
block_.L_4307cb:

  ; Code: jmpq .L_4307d0	 RIP: 4307cb	 Bytes: 5
  %loadMem_4307cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4307cb = call %struct.Memory* @routine_jmpq_.L_4307d0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4307cb, i64 5, i64 5)
  store %struct.Memory* %call_4307cb, %struct.Memory** %MEMORY

  br label %block_.L_4307d0

  ; Code: .L_4307d0:	 RIP: 4307d0	 Bytes: 0
block_.L_4307d0:

  ; Code: jmpq .L_4307d5	 RIP: 4307d0	 Bytes: 5
  %loadMem_4307d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4307d0 = call %struct.Memory* @routine_jmpq_.L_4307d5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4307d0, i64 5, i64 5)
  store %struct.Memory* %call_4307d0, %struct.Memory** %MEMORY

  br label %block_.L_4307d5

  ; Code: .L_4307d5:	 RIP: 4307d5	 Bytes: 0
block_.L_4307d5:

  ; Code: jmpq .L_4307da	 RIP: 4307d5	 Bytes: 5
  %loadMem_4307d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4307d5 = call %struct.Memory* @routine_jmpq_.L_4307da(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4307d5, i64 5, i64 5)
  store %struct.Memory* %call_4307d5, %struct.Memory** %MEMORY

  br label %block_.L_4307da

  ; Code: .L_4307da:	 RIP: 4307da	 Bytes: 0
block_.L_4307da:

  ; Code: movq $0x458cfb, %rsi	 RIP: 4307da	 Bytes: 10
  %loadMem_4307da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4307da = call %struct.Memory* @routine_movq__0x458cfb___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4307da)
  store %struct.Memory* %call_4307da, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 4307e4	 Bytes: 4
  %loadMem_4307e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4307e4 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4307e4)
  store %struct.Memory* %call_4307e4, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 4307e8	 Bytes: 5
  %loadMem1_4307e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4307e8 = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4307e8, i64 -192744, i64 5, i64 5)
  store %struct.Memory* %call1_4307e8, %struct.Memory** %MEMORY

  %loadMem2_4307e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4307e8 = load i64, i64* %3
  %call2_4307e8 = call %struct.Memory* @sub_401700.strstr_plt(%struct.State* %0, i64  %loadPC_4307e8, %struct.Memory* %loadMem2_4307e8)
  store %struct.Memory* %call2_4307e8, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4307ed	 Bytes: 4
  %loadMem_4307ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4307ed = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4307ed)
  store %struct.Memory* %call_4307ed, %struct.Memory** %MEMORY

  ; Code: je .L_4308e4	 RIP: 4307f1	 Bytes: 6
  %loadMem_4307f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4307f1 = call %struct.Memory* @routine_je_.L_4308e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4307f1, i8* %BRANCH_TAKEN, i64 243, i64 6, i64 6)
  store %struct.Memory* %call_4307f1, %struct.Memory** %MEMORY

  %loadBr_4307f1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4307f1 = icmp eq i8 %loadBr_4307f1, 1
  br i1 %cmpBr_4307f1, label %block_.L_4308e4, label %block_4307f7

block_4307f7:
  ; Code: movq $0x458cfe, %rsi	 RIP: 4307f7	 Bytes: 10
  %loadMem_4307f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4307f7 = call %struct.Memory* @routine_movq__0x458cfe___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4307f7)
  store %struct.Memory* %call_4307f7, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 430801	 Bytes: 4
  %loadMem_430801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430801 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430801)
  store %struct.Memory* %call_430801, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 430805	 Bytes: 5
  %loadMem1_430805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_430805 = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_430805, i64 -192773, i64 5, i64 5)
  store %struct.Memory* %call1_430805, %struct.Memory** %MEMORY

  %loadMem2_430805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_430805 = load i64, i64* %3
  %call2_430805 = call %struct.Memory* @sub_401700.strstr_plt(%struct.State* %0, i64  %loadPC_430805, %struct.Memory* %loadMem2_430805)
  store %struct.Memory* %call2_430805, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 43080a	 Bytes: 4
  %loadMem_43080a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43080a = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43080a)
  store %struct.Memory* %call_43080a, %struct.Memory** %MEMORY

  ; Code: je .L_4308e4	 RIP: 43080e	 Bytes: 6
  %loadMem_43080e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43080e = call %struct.Memory* @routine_je_.L_4308e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43080e, i8* %BRANCH_TAKEN, i64 214, i64 6, i64 6)
  store %struct.Memory* %call_43080e, %struct.Memory** %MEMORY

  %loadBr_43080e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43080e = icmp eq i8 %loadBr_43080e, 1
  br i1 %cmpBr_43080e, label %block_.L_4308e4, label %block_430814

block_430814:
  ; Code: movq $0x458d03, %rdi	 RIP: 430814	 Bytes: 10
  %loadMem_430814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430814 = call %struct.Memory* @routine_movq__0x458d03___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430814)
  store %struct.Memory* %call_430814, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %edx	 RIP: 43081e	 Bytes: 5
  %loadMem_43081e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43081e = call %struct.Memory* @routine_movl__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43081e)
  store %struct.Memory* %call_43081e, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rsi	 RIP: 430823	 Bytes: 4
  %loadMem_430823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430823 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430823)
  store %struct.Memory* %call_430823, %struct.Memory** %MEMORY

  ; Code: callq .Strparse	 RIP: 430827	 Bytes: 5
  %loadMem1_430827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_430827 = call %struct.Memory* @routine_callq_.Strparse(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_430827, i64 -45895, i64 5, i64 5)
  store %struct.Memory* %call1_430827, %struct.Memory** %MEMORY

  %loadMem2_430827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_430827 = load i64, i64* %3
  %call2_430827 = call %struct.Memory* @sub_4254e0.Strparse(%struct.State* %0, i64  %loadPC_430827, %struct.Memory* %loadMem2_430827)
  store %struct.Memory* %call2_430827, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 43082c	 Bytes: 3
  %loadMem_43082c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43082c = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43082c)
  store %struct.Memory* %call_43082c, %struct.Memory** %MEMORY

  ; Code: je .L_4308e4	 RIP: 43082f	 Bytes: 6
  %loadMem_43082f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43082f = call %struct.Memory* @routine_je_.L_4308e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43082f, i8* %BRANCH_TAKEN, i64 181, i64 6, i64 6)
  store %struct.Memory* %call_43082f, %struct.Memory** %MEMORY

  %loadBr_43082f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43082f = icmp eq i8 %loadBr_43082f, 1
  br i1 %cmpBr_43082f, label %block_.L_4308e4, label %block_430835

block_430835:
  ; Code: movq 0x246754(%rip), %rdi	 RIP: 430835	 Bytes: 7
  %loadMem_430835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430835 = call %struct.Memory* @routine_movq_0x246754__rip____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430835)
  store %struct.Memory* %call_430835, %struct.Memory** %MEMORY

  ; Code: callq .atoi_plt	 RIP: 43083c	 Bytes: 5
  %loadMem1_43083c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43083c = call %struct.Memory* @routine_callq_.atoi_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43083c, i64 -192924, i64 5, i64 5)
  store %struct.Memory* %call1_43083c, %struct.Memory** %MEMORY

  %loadMem2_43083c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43083c = load i64, i64* %3
  %call2_43083c = call %struct.Memory* @ext_atoi(%struct.State* %0, i64  %loadPC_43083c, %struct.Memory* %loadMem2_43083c)
  store %struct.Memory* %call2_43083c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 430841	 Bytes: 3
  %loadMem_430841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430841 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430841)
  store %struct.Memory* %call_430841, %struct.Memory** %MEMORY

  ; Code: movq 0x24674d(%rip), %rdi	 RIP: 430844	 Bytes: 7
  %loadMem_430844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430844 = call %struct.Memory* @routine_movq_0x24674d__rip____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430844)
  store %struct.Memory* %call_430844, %struct.Memory** %MEMORY

  ; Code: movsbl (%rdi), %eax	 RIP: 43084b	 Bytes: 3
  %loadMem_43084b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43084b = call %struct.Memory* @routine_movsbl___rdi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43084b)
  store %struct.Memory* %call_43084b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 43084e	 Bytes: 2
  %loadMem_43084e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43084e = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43084e)
  store %struct.Memory* %call_43084e, %struct.Memory** %MEMORY

  ; Code: subl $0x4e, %ecx	 RIP: 430850	 Bytes: 3
  %loadMem_430850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430850 = call %struct.Memory* @routine_subl__0x4e___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430850)
  store %struct.Memory* %call_430850, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5c(%rbp)	 RIP: 430853	 Bytes: 3
  %loadMem_430853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430853 = call %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430853)
  store %struct.Memory* %call_430853, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x60(%rbp)	 RIP: 430856	 Bytes: 3
  %loadMem_430856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430856 = call %struct.Memory* @routine_movl__ecx__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430856)
  store %struct.Memory* %call_430856, %struct.Memory** %MEMORY

  ; Code: je .L_43088c	 RIP: 430859	 Bytes: 6
  %loadMem_430859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430859 = call %struct.Memory* @routine_je_.L_43088c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430859, i8* %BRANCH_TAKEN, i64 51, i64 6, i64 6)
  store %struct.Memory* %call_430859, %struct.Memory** %MEMORY

  %loadBr_430859 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_430859 = icmp eq i8 %loadBr_430859, 1
  br i1 %cmpBr_430859, label %block_.L_43088c, label %block_43085f

block_43085f:
  ; Code: jmpq .L_430864	 RIP: 43085f	 Bytes: 5
  %loadMem_43085f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43085f = call %struct.Memory* @routine_jmpq_.L_430864(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43085f, i64 5, i64 5)
  store %struct.Memory* %call_43085f, %struct.Memory** %MEMORY

  br label %block_.L_430864

  ; Code: .L_430864:	 RIP: 430864	 Bytes: 0
block_.L_430864:

  ; Code: movl -0x5c(%rbp), %eax	 RIP: 430864	 Bytes: 3
  %loadMem_430864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430864 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430864)
  store %struct.Memory* %call_430864, %struct.Memory** %MEMORY

  ; Code: subl $0x50, %eax	 RIP: 430867	 Bytes: 3
  %loadMem_430867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430867 = call %struct.Memory* @routine_subl__0x50___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430867)
  store %struct.Memory* %call_430867, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x64(%rbp)	 RIP: 43086a	 Bytes: 3
  %loadMem_43086a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43086a = call %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43086a)
  store %struct.Memory* %call_43086a, %struct.Memory** %MEMORY

  ; Code: je .L_430898	 RIP: 43086d	 Bytes: 6
  %loadMem_43086d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43086d = call %struct.Memory* @routine_je_.L_430898(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43086d, i8* %BRANCH_TAKEN, i64 43, i64 6, i64 6)
  store %struct.Memory* %call_43086d, %struct.Memory** %MEMORY

  %loadBr_43086d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43086d = icmp eq i8 %loadBr_43086d, 1
  br i1 %cmpBr_43086d, label %block_.L_430898, label %block_430873

block_430873:
  ; Code: jmpq .L_430878	 RIP: 430873	 Bytes: 5
  %loadMem_430873 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430873 = call %struct.Memory* @routine_jmpq_.L_430878(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430873, i64 5, i64 5)
  store %struct.Memory* %call_430873, %struct.Memory** %MEMORY

  br label %block_.L_430878

  ; Code: .L_430878:	 RIP: 430878	 Bytes: 0
block_.L_430878:

  ; Code: movl -0x5c(%rbp), %eax	 RIP: 430878	 Bytes: 3
  %loadMem_430878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430878 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430878)
  store %struct.Memory* %call_430878, %struct.Memory** %MEMORY

  ; Code: subl $0x58, %eax	 RIP: 43087b	 Bytes: 3
  %loadMem_43087b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43087b = call %struct.Memory* @routine_subl__0x58___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43087b)
  store %struct.Memory* %call_43087b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x68(%rbp)	 RIP: 43087e	 Bytes: 3
  %loadMem_43087e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43087e = call %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43087e)
  store %struct.Memory* %call_43087e, %struct.Memory** %MEMORY

  ; Code: je .L_4308a4	 RIP: 430881	 Bytes: 6
  %loadMem_430881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430881 = call %struct.Memory* @routine_je_.L_4308a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430881, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_430881, %struct.Memory** %MEMORY

  %loadBr_430881 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_430881 = icmp eq i8 %loadBr_430881, 1
  br i1 %cmpBr_430881, label %block_.L_4308a4, label %block_430887

block_430887:
  ; Code: jmpq .L_4308b0	 RIP: 430887	 Bytes: 5
  %loadMem_430887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430887 = call %struct.Memory* @routine_jmpq_.L_4308b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430887, i64 41, i64 5)
  store %struct.Memory* %call_430887, %struct.Memory** %MEMORY

  br label %block_.L_4308b0

  ; Code: .L_43088c:	 RIP: 43088c	 Bytes: 0
block_.L_43088c:

  ; Code: movl $0x2, -0x28(%rbp)	 RIP: 43088c	 Bytes: 7
  %loadMem_43088c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43088c = call %struct.Memory* @routine_movl__0x2__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43088c)
  store %struct.Memory* %call_43088c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4308b7	 RIP: 430893	 Bytes: 5
  %loadMem_430893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430893 = call %struct.Memory* @routine_jmpq_.L_4308b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430893, i64 36, i64 5)
  store %struct.Memory* %call_430893, %struct.Memory** %MEMORY

  br label %block_.L_4308b7

  ; Code: .L_430898:	 RIP: 430898	 Bytes: 0
block_.L_430898:

  ; Code: movl $0x3, -0x28(%rbp)	 RIP: 430898	 Bytes: 7
  %loadMem_430898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430898 = call %struct.Memory* @routine_movl__0x3__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430898)
  store %struct.Memory* %call_430898, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4308b7	 RIP: 43089f	 Bytes: 5
  %loadMem_43089f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43089f = call %struct.Memory* @routine_jmpq_.L_4308b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43089f, i64 24, i64 5)
  store %struct.Memory* %call_43089f, %struct.Memory** %MEMORY

  br label %block_.L_4308b7

  ; Code: .L_4308a4:	 RIP: 4308a4	 Bytes: 0
block_.L_4308a4:

  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 4308a4	 Bytes: 7
  %loadMem_4308a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4308a4 = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4308a4)
  store %struct.Memory* %call_4308a4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4308b7	 RIP: 4308ab	 Bytes: 5
  %loadMem_4308ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4308ab = call %struct.Memory* @routine_jmpq_.L_4308b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4308ab, i64 12, i64 5)
  store %struct.Memory* %call_4308ab, %struct.Memory** %MEMORY

  br label %block_.L_4308b7

  ; Code: .L_4308b0:	 RIP: 4308b0	 Bytes: 0
block_.L_4308b0:

  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 4308b0	 Bytes: 7
  %loadMem_4308b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4308b0 = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4308b0)
  store %struct.Memory* %call_4308b0, %struct.Memory** %MEMORY

  ; Code: .L_4308b7:	 RIP: 4308b7	 Bytes: 0
  br label %block_.L_4308b7
block_.L_4308b7:

  ; Code: movq 0x676fa8, %rdi	 RIP: 4308b7	 Bytes: 8
  %loadMem_4308b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4308b7 = call %struct.Memory* @routine_movq_0x676fa8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4308b7)
  store %struct.Memory* %call_4308b7, %struct.Memory** %MEMORY

  ; Code: callq .atoi_plt	 RIP: 4308bf	 Bytes: 5
  %loadMem1_4308bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4308bf = call %struct.Memory* @routine_callq_.atoi_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4308bf, i64 -193055, i64 5, i64 5)
  store %struct.Memory* %call1_4308bf, %struct.Memory** %MEMORY

  %loadMem2_4308bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4308bf = load i64, i64* %3
  %call2_4308bf = call %struct.Memory* @ext_atoi(%struct.State* %0, i64  %loadPC_4308bf, %struct.Memory* %loadMem2_4308bf)
  store %struct.Memory* %call2_4308bf, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 4308c4	 Bytes: 3
  %loadMem_4308c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4308c4 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4308c4)
  store %struct.Memory* %call_4308c4, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 4308c7	 Bytes: 4
  %loadMem_4308c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4308c7 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4308c7)
  store %struct.Memory* %call_4308c7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x24(%rdi)	 RIP: 4308cb	 Bytes: 4
  %loadMem_4308cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4308cb = call %struct.Memory* @routine_cmpl__0x0__0x24__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4308cb)
  store %struct.Memory* %call_4308cb, %struct.Memory** %MEMORY

  ; Code: jne .L_4308df	 RIP: 4308cf	 Bytes: 6
  %loadMem_4308cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4308cf = call %struct.Memory* @routine_jne_.L_4308df(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4308cf, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_4308cf, %struct.Memory** %MEMORY

  %loadBr_4308cf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4308cf = icmp eq i8 %loadBr_4308cf, 1
  br i1 %cmpBr_4308cf, label %block_.L_4308df, label %block_4308d5

block_4308d5:
  ; Code: movl -0x28(%rbp), %eax	 RIP: 4308d5	 Bytes: 3
  %loadMem_4308d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4308d5 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4308d5)
  store %struct.Memory* %call_4308d5, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4308d8	 Bytes: 4
  %loadMem_4308d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4308d8 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4308d8)
  store %struct.Memory* %call_4308d8, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x24(%rcx)	 RIP: 4308dc	 Bytes: 3
  %loadMem_4308dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4308dc = call %struct.Memory* @routine_movl__eax__0x24__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4308dc)
  store %struct.Memory* %call_4308dc, %struct.Memory** %MEMORY

  ; Code: .L_4308df:	 RIP: 4308df	 Bytes: 0
  br label %block_.L_4308df
block_.L_4308df:

  ; Code: jmpq .L_43091f	 RIP: 4308df	 Bytes: 5
  %loadMem_4308df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4308df = call %struct.Memory* @routine_jmpq_.L_43091f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4308df, i64 64, i64 5)
  store %struct.Memory* %call_4308df, %struct.Memory** %MEMORY

  br label %block_.L_43091f

  ; Code: .L_4308e4:	 RIP: 4308e4	 Bytes: 0
block_.L_4308e4:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 4308e4	 Bytes: 4
  %loadMem_4308e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4308e4 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4308e4)
  store %struct.Memory* %call_4308e4, %struct.Memory** %MEMORY

  ; Code: callq .IsBlankline	 RIP: 4308e8	 Bytes: 5
  %loadMem1_4308e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4308e8 = call %struct.Memory* @routine_callq_.IsBlankline(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4308e8, i64 89880, i64 5, i64 5)
  store %struct.Memory* %call1_4308e8, %struct.Memory** %MEMORY

  %loadMem2_4308e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4308e8 = load i64, i64* %3
  %call2_4308e8 = call %struct.Memory* @sub_446800.IsBlankline(%struct.State* %0, i64  %loadPC_4308e8, %struct.Memory* %loadMem2_4308e8)
  store %struct.Memory* %call2_4308e8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4308ed	 Bytes: 3
  %loadMem_4308ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4308ed = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4308ed)
  store %struct.Memory* %call_4308ed, %struct.Memory** %MEMORY

  ; Code: jne .L_430903	 RIP: 4308f0	 Bytes: 6
  %loadMem_4308f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4308f0 = call %struct.Memory* @routine_jne_.L_430903(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4308f0, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4308f0, %struct.Memory** %MEMORY

  %loadBr_4308f0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4308f0 = icmp eq i8 %loadBr_4308f0, 1
  br i1 %cmpBr_4308f0, label %block_.L_430903, label %block_4308f6

block_4308f6:
  ; Code: movq -0x18(%rbp), %rdi	 RIP: 4308f6	 Bytes: 4
  %loadMem_4308f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4308f6 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4308f6)
  store %struct.Memory* %call_4308f6, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rsi	 RIP: 4308fa	 Bytes: 4
  %loadMem_4308fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4308fa = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4308fa)
  store %struct.Memory* %call_4308fa, %struct.Memory** %MEMORY

  ; Code: callq .MSAAddComment	 RIP: 4308fe	 Bytes: 5
  %loadMem1_4308fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4308fe = call %struct.Memory* @routine_callq_.MSAAddComment(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4308fe, i64 -12862, i64 5, i64 5)
  store %struct.Memory* %call1_4308fe, %struct.Memory** %MEMORY

  %loadMem2_4308fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4308fe = load i64, i64* %3
  %call2_4308fe = call %struct.Memory* @sub_42d6c0.MSAAddComment(%struct.State* %0, i64  %loadPC_4308fe, %struct.Memory* %loadMem2_4308fe)
  store %struct.Memory* %call2_4308fe, %struct.Memory** %MEMORY

  ; Code: .L_430903:	 RIP: 430903	 Bytes: 0
  br label %block_.L_430903
block_.L_430903:

  ; Code: jmpq .L_430908	 RIP: 430903	 Bytes: 5
  %loadMem_430903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430903 = call %struct.Memory* @routine_jmpq_.L_430908(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430903, i64 5, i64 5)
  store %struct.Memory* %call_430903, %struct.Memory** %MEMORY

  br label %block_.L_430908

  ; Code: .L_430908:	 RIP: 430908	 Bytes: 0
block_.L_430908:

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 430908	 Bytes: 4
  %loadMem_430908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430908 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430908)
  store %struct.Memory* %call_430908, %struct.Memory** %MEMORY

  ; Code: callq .MSAFileGetLine	 RIP: 43090c	 Bytes: 5
  %loadMem1_43090c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43090c = call %struct.Memory* @routine_callq_.MSAFileGetLine(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43090c, i64 -6428, i64 5, i64 5)
  store %struct.Memory* %call1_43090c, %struct.Memory** %MEMORY

  %loadMem2_43090c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43090c = load i64, i64* %3
  %call2_43090c = call %struct.Memory* @sub_42eff0.MSAFileGetLine(%struct.State* %0, i64  %loadPC_43090c, %struct.Memory* %loadMem2_43090c)
  store %struct.Memory* %call2_43090c, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x20(%rbp)	 RIP: 430911	 Bytes: 4
  %loadMem_430911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430911 = call %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430911)
  store %struct.Memory* %call_430911, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 430915	 Bytes: 4
  %loadMem_430915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430915 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430915)
  store %struct.Memory* %call_430915, %struct.Memory** %MEMORY

  ; Code: jne .L_4307da	 RIP: 430919	 Bytes: 6
  %loadMem_430919 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430919 = call %struct.Memory* @routine_jne_.L_4307da(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430919, i8* %BRANCH_TAKEN, i64 -319, i64 6, i64 6)
  store %struct.Memory* %call_430919, %struct.Memory** %MEMORY

  %loadBr_430919 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_430919 = icmp eq i8 %loadBr_430919, 1
  br i1 %cmpBr_430919, label %block_.L_4307da, label %block_.L_43091f

  ; Code: .L_43091f:	 RIP: 43091f	 Bytes: 0
block_.L_43091f:

  ; Code: jmpq .L_430924	 RIP: 43091f	 Bytes: 5
  %loadMem_43091f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43091f = call %struct.Memory* @routine_jmpq_.L_430924(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43091f, i64 5, i64 5)
  store %struct.Memory* %call_43091f, %struct.Memory** %MEMORY

  br label %block_.L_430924

  ; Code: .L_430924:	 RIP: 430924	 Bytes: 0
block_.L_430924:

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 430924	 Bytes: 4
  %loadMem_430924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430924 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430924)
  store %struct.Memory* %call_430924, %struct.Memory** %MEMORY

  ; Code: callq .MSAFileGetLine	 RIP: 430928	 Bytes: 5
  %loadMem1_430928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_430928 = call %struct.Memory* @routine_callq_.MSAFileGetLine(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_430928, i64 -6456, i64 5, i64 5)
  store %struct.Memory* %call1_430928, %struct.Memory** %MEMORY

  %loadMem2_430928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_430928 = load i64, i64* %3
  %call2_430928 = call %struct.Memory* @sub_42eff0.MSAFileGetLine(%struct.State* %0, i64  %loadPC_430928, %struct.Memory* %loadMem2_430928)
  store %struct.Memory* %call2_430928, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x20(%rbp)	 RIP: 43092d	 Bytes: 4
  %loadMem_43092d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43092d = call %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43092d)
  store %struct.Memory* %call_43092d, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 430931	 Bytes: 4
  %loadMem_430931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430931 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430931)
  store %struct.Memory* %call_430931, %struct.Memory** %MEMORY

  ; Code: je .L_430b8e	 RIP: 430935	 Bytes: 6
  %loadMem_430935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430935 = call %struct.Memory* @routine_je_.L_430b8e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430935, i8* %BRANCH_TAKEN, i64 601, i64 6, i64 6)
  store %struct.Memory* %call_430935, %struct.Memory** %MEMORY

  %loadBr_430935 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_430935 = icmp eq i8 %loadBr_430935, 1
  br i1 %cmpBr_430935, label %block_.L_430b8e, label %block_43093b

block_43093b:
  ; Code: jmpq .L_430940	 RIP: 43093b	 Bytes: 5
  %loadMem_43093b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43093b = call %struct.Memory* @routine_jmpq_.L_430940(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43093b, i64 5, i64 5)
  store %struct.Memory* %call_43093b, %struct.Memory** %MEMORY

  br label %block_.L_430940

  ; Code: .L_430940:	 RIP: 430940	 Bytes: 0
block_.L_430940:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 430940	 Bytes: 4
  %loadMem_430940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430940 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430940)
  store %struct.Memory* %call_430940, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 430944	 Bytes: 3
  %loadMem_430944 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430944 = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430944)
  store %struct.Memory* %call_430944, %struct.Memory** %MEMORY

  ; Code: cmpl $0x20, %ecx	 RIP: 430947	 Bytes: 3
  %loadMem_430947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430947 = call %struct.Memory* @routine_cmpl__0x20___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430947)
  store %struct.Memory* %call_430947, %struct.Memory** %MEMORY

  ; Code: je .L_430967	 RIP: 43094a	 Bytes: 6
  %loadMem_43094a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43094a = call %struct.Memory* @routine_je_.L_430967(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43094a, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_43094a, %struct.Memory** %MEMORY

  %loadBr_43094a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43094a = icmp eq i8 %loadBr_43094a, 1
  br i1 %cmpBr_43094a, label %block_.L_430967, label %block_430950

block_430950:
  ; Code: xorl %eax, %eax	 RIP: 430950	 Bytes: 2
  %loadMem_430950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430950 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430950)
  store %struct.Memory* %call_430950, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 430952	 Bytes: 2
  %loadMem_430952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430952 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430952)
  store %struct.Memory* %call_430952, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdx	 RIP: 430954	 Bytes: 4
  %loadMem_430954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430954 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430954)
  store %struct.Memory* %call_430954, %struct.Memory** %MEMORY

  ; Code: movsbl (%rdx), %eax	 RIP: 430958	 Bytes: 3
  %loadMem_430958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430958 = call %struct.Memory* @routine_movsbl___rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430958)
  store %struct.Memory* %call_430958, %struct.Memory** %MEMORY

  ; Code: cmpl $0x9, %eax	 RIP: 43095b	 Bytes: 3
  %loadMem_43095b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43095b = call %struct.Memory* @routine_cmpl__0x9___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43095b)
  store %struct.Memory* %call_43095b, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x69(%rbp)	 RIP: 43095e	 Bytes: 3
  %loadMem_43095e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43095e = call %struct.Memory* @routine_movb__cl__MINUS0x69__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43095e)
  store %struct.Memory* %call_43095e, %struct.Memory** %MEMORY

  ; Code: jne .L_430977	 RIP: 430961	 Bytes: 6
  %loadMem_430961 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430961 = call %struct.Memory* @routine_jne_.L_430977(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430961, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_430961, %struct.Memory** %MEMORY

  %loadBr_430961 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_430961 = icmp eq i8 %loadBr_430961, 1
  br i1 %cmpBr_430961, label %block_.L_430977, label %block_.L_430967

  ; Code: .L_430967:	 RIP: 430967	 Bytes: 0
block_.L_430967:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 430967	 Bytes: 4
  %loadMem_430967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430967 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430967)
  store %struct.Memory* %call_430967, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 43096b	 Bytes: 3
  %loadMem_43096b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43096b = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43096b)
  store %struct.Memory* %call_43096b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 43096e	 Bytes: 3
  %loadMem_43096e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43096e = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43096e)
  store %struct.Memory* %call_43096e, %struct.Memory** %MEMORY

  ; Code: setne %dl	 RIP: 430971	 Bytes: 3
  %loadMem_430971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430971 = call %struct.Memory* @routine_setne__dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430971)
  store %struct.Memory* %call_430971, %struct.Memory** %MEMORY

  ; Code: movb %dl, -0x69(%rbp)	 RIP: 430974	 Bytes: 3
  %loadMem_430974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430974 = call %struct.Memory* @routine_movb__dl__MINUS0x69__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430974)
  store %struct.Memory* %call_430974, %struct.Memory** %MEMORY

  ; Code: .L_430977:	 RIP: 430977	 Bytes: 0
  br label %block_.L_430977
block_.L_430977:

  ; Code: movb -0x69(%rbp), %al	 RIP: 430977	 Bytes: 3
  %loadMem_430977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430977 = call %struct.Memory* @routine_movb_MINUS0x69__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430977)
  store %struct.Memory* %call_430977, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 43097a	 Bytes: 2
  %loadMem_43097a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43097a = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43097a)
  store %struct.Memory* %call_43097a, %struct.Memory** %MEMORY

  ; Code: jne .L_430987	 RIP: 43097c	 Bytes: 6
  %loadMem_43097c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43097c = call %struct.Memory* @routine_jne_.L_430987(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43097c, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_43097c, %struct.Memory** %MEMORY

  %loadBr_43097c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43097c = icmp eq i8 %loadBr_43097c, 1
  br i1 %cmpBr_43097c, label %block_.L_430987, label %block_430982

block_430982:
  ; Code: jmpq .L_430998	 RIP: 430982	 Bytes: 5
  %loadMem_430982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430982 = call %struct.Memory* @routine_jmpq_.L_430998(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430982, i64 22, i64 5)
  store %struct.Memory* %call_430982, %struct.Memory** %MEMORY

  br label %block_.L_430998

  ; Code: .L_430987:	 RIP: 430987	 Bytes: 0
block_.L_430987:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 430987	 Bytes: 4
  %loadMem_430987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430987 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430987)
  store %struct.Memory* %call_430987, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 43098b	 Bytes: 4
  %loadMem_43098b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43098b = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43098b)
  store %struct.Memory* %call_43098b, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x20(%rbp)	 RIP: 43098f	 Bytes: 4
  %loadMem_43098f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43098f = call %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43098f)
  store %struct.Memory* %call_43098f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_430940	 RIP: 430993	 Bytes: 5
  %loadMem_430993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430993 = call %struct.Memory* @routine_jmpq_.L_430940(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430993, i64 -83, i64 5)
  store %struct.Memory* %call_430993, %struct.Memory** %MEMORY

  br label %block_.L_430940

  ; Code: .L_430998:	 RIP: 430998	 Bytes: 0
block_.L_430998:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 430998	 Bytes: 4
  %loadMem_430998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430998 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430998)
  store %struct.Memory* %call_430998, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 43099c	 Bytes: 3
  %loadMem_43099c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43099c = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43099c)
  store %struct.Memory* %call_43099c, %struct.Memory** %MEMORY

  ; Code: cmpl $0xa, %ecx	 RIP: 43099f	 Bytes: 3
  %loadMem_43099f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43099f = call %struct.Memory* @routine_cmpl__0xa___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43099f)
  store %struct.Memory* %call_43099f, %struct.Memory** %MEMORY

  ; Code: jne .L_4309ad	 RIP: 4309a2	 Bytes: 6
  %loadMem_4309a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4309a2 = call %struct.Memory* @routine_jne_.L_4309ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4309a2, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4309a2, %struct.Memory** %MEMORY

  %loadBr_4309a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4309a2 = icmp eq i8 %loadBr_4309a2, 1
  br i1 %cmpBr_4309a2, label %block_.L_4309ad, label %block_4309a8

block_4309a8:
  ; Code: jmpq .L_430924	 RIP: 4309a8	 Bytes: 5
  %loadMem_4309a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4309a8 = call %struct.Memory* @routine_jmpq_.L_430924(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4309a8, i64 -132, i64 5)
  store %struct.Memory* %call_4309a8, %struct.Memory** %MEMORY

  br label %block_.L_430924

  ; Code: .L_4309ad:	 RIP: 4309ad	 Bytes: 0
block_.L_4309ad:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4309ad	 Bytes: 4
  %loadMem_4309ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4309ad = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4309ad)
  store %struct.Memory* %call_4309ad, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 4309b1	 Bytes: 3
  %loadMem_4309b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4309b1 = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4309b1)
  store %struct.Memory* %call_4309b1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x21, %ecx	 RIP: 4309b4	 Bytes: 3
  %loadMem_4309b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4309b4 = call %struct.Memory* @routine_cmpl__0x21___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4309b4)
  store %struct.Memory* %call_4309b4, %struct.Memory** %MEMORY

  ; Code: jne .L_4309cf	 RIP: 4309b7	 Bytes: 6
  %loadMem_4309b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4309b7 = call %struct.Memory* @routine_jne_.L_4309cf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4309b7, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_4309b7, %struct.Memory** %MEMORY

  %loadBr_4309b7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4309b7 = icmp eq i8 %loadBr_4309b7, 1
  br i1 %cmpBr_4309b7, label %block_.L_4309cf, label %block_4309bd

block_4309bd:
  ; Code: movq -0x18(%rbp), %rdi	 RIP: 4309bd	 Bytes: 4
  %loadMem_4309bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4309bd = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4309bd)
  store %struct.Memory* %call_4309bd, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rsi	 RIP: 4309c1	 Bytes: 4
  %loadMem_4309c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4309c1 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4309c1)
  store %struct.Memory* %call_4309c1, %struct.Memory** %MEMORY

  ; Code: callq .MSAAddComment	 RIP: 4309c5	 Bytes: 5
  %loadMem1_4309c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4309c5 = call %struct.Memory* @routine_callq_.MSAAddComment(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4309c5, i64 -13061, i64 5, i64 5)
  store %struct.Memory* %call1_4309c5, %struct.Memory** %MEMORY

  %loadMem2_4309c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4309c5 = load i64, i64* %3
  %call2_4309c5 = call %struct.Memory* @sub_42d6c0.MSAAddComment(%struct.State* %0, i64  %loadPC_4309c5, %struct.Memory* %loadMem2_4309c5)
  store %struct.Memory* %call2_4309c5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_430b84	 RIP: 4309ca	 Bytes: 5
  %loadMem_4309ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4309ca = call %struct.Memory* @routine_jmpq_.L_430b84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4309ca, i64 442, i64 5)
  store %struct.Memory* %call_4309ca, %struct.Memory** %MEMORY

  br label %block_.L_430b84

  ; Code: .L_4309cf:	 RIP: 4309cf	 Bytes: 0
block_.L_4309cf:

  ; Code: movq $0x458d3d, %rsi	 RIP: 4309cf	 Bytes: 10
  %loadMem_4309cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4309cf = call %struct.Memory* @routine_movq__0x458d3d___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4309cf)
  store %struct.Memory* %call_4309cf, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 4309d9	 Bytes: 4
  %loadMem_4309d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4309d9 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4309d9)
  store %struct.Memory* %call_4309d9, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 4309dd	 Bytes: 5
  %loadMem1_4309dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4309dd = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4309dd, i64 -193245, i64 5, i64 5)
  store %struct.Memory* %call1_4309dd, %struct.Memory** %MEMORY

  %loadMem2_4309dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4309dd = load i64, i64* %3
  %call2_4309dd = call %struct.Memory* @sub_401700.strstr_plt(%struct.State* %0, i64  %loadPC_4309dd, %struct.Memory* %loadMem2_4309dd)
  store %struct.Memory* %call2_4309dd, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x40(%rbp)	 RIP: 4309e2	 Bytes: 4
  %loadMem_4309e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4309e2 = call %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4309e2)
  store %struct.Memory* %call_4309e2, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4309e6	 Bytes: 4
  %loadMem_4309e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4309e6 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4309e6)
  store %struct.Memory* %call_4309e6, %struct.Memory** %MEMORY

  ; Code: je .L_430b1b	 RIP: 4309ea	 Bytes: 6
  %loadMem_4309ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4309ea = call %struct.Memory* @routine_je_.L_430b1b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4309ea, i8* %BRANCH_TAKEN, i64 305, i64 6, i64 6)
  store %struct.Memory* %call_4309ea, %struct.Memory** %MEMORY

  %loadBr_4309ea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4309ea = icmp eq i8 %loadBr_4309ea, 1
  br i1 %cmpBr_4309ea, label %block_.L_430b1b, label %block_4309f0

block_4309f0:
  ; Code: leaq -0x40(%rbp), %rdi	 RIP: 4309f0	 Bytes: 4
  %loadMem_4309f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4309f0 = call %struct.Memory* @routine_leaq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4309f0)
  store %struct.Memory* %call_4309f0, %struct.Memory** %MEMORY

  ; Code: movq $0x458d43, %rsi	 RIP: 4309f4	 Bytes: 10
  %loadMem_4309f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4309f4 = call %struct.Memory* @routine_movq__0x458d43___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4309f4)
  store %struct.Memory* %call_4309f4, %struct.Memory** %MEMORY

  ; Code: leaq -0x44(%rbp), %rdx	 RIP: 4309fe	 Bytes: 4
  %loadMem_4309fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4309fe = call %struct.Memory* @routine_leaq_MINUS0x44__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4309fe)
  store %struct.Memory* %call_4309fe, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 430a02	 Bytes: 4
  %loadMem_430a02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430a02 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430a02)
  store %struct.Memory* %call_430a02, %struct.Memory** %MEMORY

  ; Code: addq $0x5, %rax	 RIP: 430a06	 Bytes: 4
  %loadMem_430a06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430a06 = call %struct.Memory* @routine_addq__0x5___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430a06)
  store %struct.Memory* %call_430a06, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x40(%rbp)	 RIP: 430a0a	 Bytes: 4
  %loadMem_430a0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430a0a = call %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430a0a)
  store %struct.Memory* %call_430a0a, %struct.Memory** %MEMORY

  ; Code: callq .sre_strtok	 RIP: 430a0e	 Bytes: 5
  %loadMem1_430a0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_430a0e = call %struct.Memory* @routine_callq_.sre_strtok(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_430a0e, i64 89154, i64 5, i64 5)
  store %struct.Memory* %call1_430a0e, %struct.Memory** %MEMORY

  %loadMem2_430a0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_430a0e = load i64, i64* %3
  %call2_430a0e = call %struct.Memory* @sub_446650.sre_strtok(%struct.State* %0, i64  %loadPC_430a0e, %struct.Memory* %loadMem2_430a0e)
  store %struct.Memory* %call2_430a0e, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x38(%rbp)	 RIP: 430a13	 Bytes: 4
  %loadMem_430a13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430a13 = call %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430a13)
  store %struct.Memory* %call_430a13, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 430a17	 Bytes: 4
  %loadMem_430a17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430a17 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430a17)
  store %struct.Memory* %call_430a17, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rdi	 RIP: 430a1b	 Bytes: 7
  %loadMem_430a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430a1b = call %struct.Memory* @routine_movq_0x138__rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430a1b)
  store %struct.Memory* %call_430a1b, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rsi	 RIP: 430a22	 Bytes: 4
  %loadMem_430a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430a22 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430a22)
  store %struct.Memory* %call_430a22, %struct.Memory** %MEMORY

  ; Code: callq .GKIStoreKey	 RIP: 430a26	 Bytes: 5
  %loadMem1_430a26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_430a26 = call %struct.Memory* @routine_callq_.GKIStoreKey(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_430a26, i64 -104694, i64 5, i64 5)
  store %struct.Memory* %call1_430a26, %struct.Memory** %MEMORY

  %loadMem2_430a26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_430a26 = load i64, i64* %3
  %call2_430a26 = call %struct.Memory* @sub_417130.GKIStoreKey(%struct.State* %0, i64  %loadPC_430a26, %struct.Memory* %loadMem2_430a26)
  store %struct.Memory* %call2_430a26, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 430a2b	 Bytes: 3
  %loadMem_430a2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430a2b = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430a2b)
  store %struct.Memory* %call_430a2b, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %eax	 RIP: 430a2e	 Bytes: 3
  %loadMem_430a2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430a2e = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430a2e)
  store %struct.Memory* %call_430a2e, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 430a31	 Bytes: 4
  %loadMem_430a31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430a31 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430a31)
  store %struct.Memory* %call_430a31, %struct.Memory** %MEMORY

  ; Code: cmpl 0x140(%rdx), %eax	 RIP: 430a35	 Bytes: 6
  %loadMem_430a35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430a35 = call %struct.Memory* @routine_cmpl_0x140__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430a35)
  store %struct.Memory* %call_430a35, %struct.Memory** %MEMORY

  ; Code: jl .L_430a4a	 RIP: 430a3b	 Bytes: 6
  %loadMem_430a3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430a3b = call %struct.Memory* @routine_jl_.L_430a4a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430a3b, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_430a3b, %struct.Memory** %MEMORY

  %loadBr_430a3b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_430a3b = icmp eq i8 %loadBr_430a3b, 1
  br i1 %cmpBr_430a3b, label %block_.L_430a4a, label %block_430a41

block_430a41:
  ; Code: movq -0x18(%rbp), %rdi	 RIP: 430a41	 Bytes: 4
  %loadMem_430a41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430a41 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430a41)
  store %struct.Memory* %call_430a41, %struct.Memory** %MEMORY

  ; Code: callq .MSAExpand	 RIP: 430a45	 Bytes: 5
  %loadMem1_430a45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_430a45 = call %struct.Memory* @routine_callq_.MSAExpand(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_430a45, i64 -16197, i64 5, i64 5)
  store %struct.Memory* %call1_430a45, %struct.Memory** %MEMORY

  %loadMem2_430a45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_430a45 = load i64, i64* %3
  %call2_430a45 = call %struct.Memory* @sub_42cb00.MSAExpand(%struct.State* %0, i64  %loadPC_430a45, %struct.Memory* %loadMem2_430a45)
  store %struct.Memory* %call2_430a45, %struct.Memory** %MEMORY

  ; Code: .L_430a4a:	 RIP: 430a4a	 Bytes: 0
  br label %block_.L_430a4a
block_.L_430a4a:

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 430a4a	 Bytes: 4
  %loadMem_430a4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430a4a = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430a4a)
  store %struct.Memory* %call_430a4a, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 430a4e	 Bytes: 3
  %loadMem_430a4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430a4e = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430a4e)
  store %struct.Memory* %call_430a4e, %struct.Memory** %MEMORY

  ; Code: callq .sre_strdup	 RIP: 430a51	 Bytes: 5
  %loadMem1_430a51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_430a51 = call %struct.Memory* @routine_callq_.sre_strdup(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_430a51, i64 89295, i64 5, i64 5)
  store %struct.Memory* %call1_430a51, %struct.Memory** %MEMORY

  %loadMem2_430a51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_430a51 = load i64, i64* %3
  %call2_430a51 = call %struct.Memory* @sub_446720.sre_strdup(%struct.State* %0, i64  %loadPC_430a51, %struct.Memory* %loadMem2_430a51)
  store %struct.Memory* %call2_430a51, %struct.Memory** %MEMORY

  ; Code: movq $0x458d46, %rsi	 RIP: 430a56	 Bytes: 10
  %loadMem_430a56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430a56 = call %struct.Memory* @routine_movq__0x458d46___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430a56)
  store %struct.Memory* %call_430a56, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 430a60	 Bytes: 4
  %loadMem_430a60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430a60 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430a60)
  store %struct.Memory* %call_430a60, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rdi), %rdi	 RIP: 430a64	 Bytes: 4
  %loadMem_430a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430a64 = call %struct.Memory* @routine_movq_0x8__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430a64)
  store %struct.Memory* %call_430a64, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rcx	 RIP: 430a68	 Bytes: 4
  %loadMem_430a68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430a68 = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430a68)
  store %struct.Memory* %call_430a68, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdi,%rcx,8)	 RIP: 430a6c	 Bytes: 4
  %loadMem_430a6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430a6c = call %struct.Memory* @routine_movq__rax____rdi__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430a6c)
  store %struct.Memory* %call_430a6c, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 430a70	 Bytes: 4
  %loadMem_430a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430a70 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430a70)
  store %struct.Memory* %call_430a70, %struct.Memory** %MEMORY

  ; Code: movl 0x1c(%rax), %edx	 RIP: 430a74	 Bytes: 3
  %loadMem_430a74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430a74 = call %struct.Memory* @routine_movl_0x1c__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430a74)
  store %struct.Memory* %call_430a74, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 430a77	 Bytes: 3
  %loadMem_430a77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430a77 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430a77)
  store %struct.Memory* %call_430a77, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x1c(%rax)	 RIP: 430a7a	 Bytes: 3
  %loadMem_430a7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430a7a = call %struct.Memory* @routine_movl__edx__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430a7a)
  store %struct.Memory* %call_430a7a, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdi	 RIP: 430a7d	 Bytes: 4
  %loadMem_430a7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430a7d = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430a7d)
  store %struct.Memory* %call_430a7d, %struct.Memory** %MEMORY

  ; Code: callq .strstr_plt	 RIP: 430a81	 Bytes: 5
  %loadMem1_430a81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_430a81 = call %struct.Memory* @routine_callq_.strstr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_430a81, i64 -193409, i64 5, i64 5)
  store %struct.Memory* %call1_430a81, %struct.Memory** %MEMORY

  %loadMem2_430a81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_430a81 = load i64, i64* %3
  %call2_430a81 = call %struct.Memory* @sub_401700.strstr_plt(%struct.State* %0, i64  %loadPC_430a81, %struct.Memory* %loadMem2_430a81)
  store %struct.Memory* %call2_430a81, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x40(%rbp)	 RIP: 430a86	 Bytes: 4
  %loadMem_430a86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430a86 = call %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430a86)
  store %struct.Memory* %call_430a86, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 430a8a	 Bytes: 4
  %loadMem_430a8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430a8a = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430a8a)
  store %struct.Memory* %call_430a8a, %struct.Memory** %MEMORY

  ; Code: jne .L_430ac4	 RIP: 430a8e	 Bytes: 6
  %loadMem_430a8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430a8e = call %struct.Memory* @routine_jne_.L_430ac4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430a8e, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_430a8e, %struct.Memory** %MEMORY

  %loadBr_430a8e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_430a8e = icmp eq i8 %loadBr_430a8e, 1
  br i1 %cmpBr_430a8e, label %block_.L_430ac4, label %block_430a94

block_430a94:
  ; Code: movq $0x458d4e, %rdi	 RIP: 430a94	 Bytes: 10
  %loadMem_430a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430a94 = call %struct.Memory* @routine_movq__0x458d4e___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430a94)
  store %struct.Memory* %call_430a94, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 430a9e	 Bytes: 4
  %loadMem_430a9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430a9e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430a9e)
  store %struct.Memory* %call_430a9e, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rax), %esi	 RIP: 430aa2	 Bytes: 3
  %loadMem_430aa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430aa2 = call %struct.Memory* @routine_movl_0x10__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430aa2)
  store %struct.Memory* %call_430aa2, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 430aa5	 Bytes: 4
  %loadMem_430aa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430aa5 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430aa5)
  store %struct.Memory* %call_430aa5, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 430aa9	 Bytes: 4
  %loadMem_430aa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430aa9 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430aa9)
  store %struct.Memory* %call_430aa9, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rcx	 RIP: 430aad	 Bytes: 4
  %loadMem_430aad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430aad = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430aad)
  store %struct.Memory* %call_430aad, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rdx	 RIP: 430ab1	 Bytes: 4
  %loadMem_430ab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430ab1 = call %struct.Memory* @routine_movq___rax__rcx_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430ab1)
  store %struct.Memory* %call_430ab1, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 430ab5	 Bytes: 4
  %loadMem_430ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430ab5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430ab5)
  store %struct.Memory* %call_430ab5, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rcx	 RIP: 430ab9	 Bytes: 4
  %loadMem_430ab9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430ab9 = call %struct.Memory* @routine_movq_0x8__rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430ab9)
  store %struct.Memory* %call_430ab9, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 430abd	 Bytes: 2
  %loadMem_430abd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430abd = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430abd)
  store %struct.Memory* %call_430abd, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 430abf	 Bytes: 5
  %loadMem1_430abf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_430abf = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_430abf, i64 57169, i64 5, i64 5)
  store %struct.Memory* %call1_430abf, %struct.Memory** %MEMORY

  %loadMem2_430abf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_430abf = load i64, i64* %3
  %call2_430abf = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_430abf, %struct.Memory* %loadMem2_430abf)
  store %struct.Memory* %call2_430abf, %struct.Memory** %MEMORY

  ; Code: .L_430ac4:	 RIP: 430ac4	 Bytes: 0
  br label %block_.L_430ac4
block_.L_430ac4:

  ; Code: leaq -0x40(%rbp), %rdi	 RIP: 430ac4	 Bytes: 4
  %loadMem_430ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430ac4 = call %struct.Memory* @routine_leaq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430ac4)
  store %struct.Memory* %call_430ac4, %struct.Memory** %MEMORY

  ; Code: movq $0x458d43, %rsi	 RIP: 430ac8	 Bytes: 10
  %loadMem_430ac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430ac8 = call %struct.Memory* @routine_movq__0x458d43___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430ac8)
  store %struct.Memory* %call_430ac8, %struct.Memory** %MEMORY

  ; Code: leaq -0x44(%rbp), %rdx	 RIP: 430ad2	 Bytes: 4
  %loadMem_430ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430ad2 = call %struct.Memory* @routine_leaq_MINUS0x44__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430ad2)
  store %struct.Memory* %call_430ad2, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 430ad6	 Bytes: 4
  %loadMem_430ad6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430ad6 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430ad6)
  store %struct.Memory* %call_430ad6, %struct.Memory** %MEMORY

  ; Code: addq $0x7, %rax	 RIP: 430ada	 Bytes: 4
  %loadMem_430ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430ada = call %struct.Memory* @routine_addq__0x7___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430ada)
  store %struct.Memory* %call_430ada, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x40(%rbp)	 RIP: 430ade	 Bytes: 4
  %loadMem_430ade = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430ade = call %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430ade)
  store %struct.Memory* %call_430ade, %struct.Memory** %MEMORY

  ; Code: callq .sre_strtok	 RIP: 430ae2	 Bytes: 5
  %loadMem1_430ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_430ae2 = call %struct.Memory* @routine_callq_.sre_strtok(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_430ae2, i64 88942, i64 5, i64 5)
  store %struct.Memory* %call1_430ae2, %struct.Memory** %MEMORY

  %loadMem2_430ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_430ae2 = load i64, i64* %3
  %call2_430ae2 = call %struct.Memory* @sub_446650.sre_strtok(%struct.State* %0, i64  %loadPC_430ae2, %struct.Memory* %loadMem2_430ae2)
  store %struct.Memory* %call2_430ae2, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x38(%rbp)	 RIP: 430ae7	 Bytes: 4
  %loadMem_430ae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430ae7 = call %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430ae7)
  store %struct.Memory* %call_430ae7, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdi	 RIP: 430aeb	 Bytes: 4
  %loadMem_430aeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430aeb = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430aeb)
  store %struct.Memory* %call_430aeb, %struct.Memory** %MEMORY

  ; Code: callq .atof_plt	 RIP: 430aef	 Bytes: 5
  %loadMem1_430aef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_430aef = call %struct.Memory* @routine_callq_.atof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_430aef, i64 -194239, i64 5, i64 5)
  store %struct.Memory* %call1_430aef, %struct.Memory** %MEMORY

  %loadMem2_430aef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_430aef = load i64, i64* %3
  %call2_430aef = call %struct.Memory* @ext_atof(%struct.State* %0, i64  %loadPC_430aef, %struct.Memory* %loadMem2_430aef)
  store %struct.Memory* %call2_430aef, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 430af4	 Bytes: 4
  %loadMem_430af4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430af4 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430af4)
  store %struct.Memory* %call_430af4, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 430af8	 Bytes: 4
  %loadMem_430af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430af8 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430af8)
  store %struct.Memory* %call_430af8, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 430afc	 Bytes: 4
  %loadMem_430afc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430afc = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430afc)
  store %struct.Memory* %call_430afc, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rdx	 RIP: 430b00	 Bytes: 4
  %loadMem_430b00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430b00 = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430b00)
  store %struct.Memory* %call_430b00, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax,%rdx,4)	 RIP: 430b04	 Bytes: 5
  %loadMem_430b04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430b04 = call %struct.Memory* @routine_movss__xmm0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430b04)
  store %struct.Memory* %call_430b04, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 430b09	 Bytes: 4
  %loadMem_430b09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430b09 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430b09)
  store %struct.Memory* %call_430b09, %struct.Memory** %MEMORY

  ; Code: movl 0x20(%rax), %ecx	 RIP: 430b0d	 Bytes: 3
  %loadMem_430b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430b0d = call %struct.Memory* @routine_movl_0x20__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430b0d)
  store %struct.Memory* %call_430b0d, %struct.Memory** %MEMORY

  ; Code: orl $0x1, %ecx	 RIP: 430b10	 Bytes: 3
  %loadMem_430b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430b10 = call %struct.Memory* @routine_orl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430b10)
  store %struct.Memory* %call_430b10, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x20(%rax)	 RIP: 430b13	 Bytes: 3
  %loadMem_430b13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430b13 = call %struct.Memory* @routine_movl__ecx__0x20__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430b13)
  store %struct.Memory* %call_430b13, %struct.Memory** %MEMORY

  ; Code: jmpq .L_430b7f	 RIP: 430b16	 Bytes: 5
  %loadMem_430b16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430b16 = call %struct.Memory* @routine_jmpq_.L_430b7f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430b16, i64 105, i64 5)
  store %struct.Memory* %call_430b16, %struct.Memory** %MEMORY

  br label %block_.L_430b7f

  ; Code: .L_430b1b:	 RIP: 430b1b	 Bytes: 0
block_.L_430b1b:

  ; Code: movq $0x45a381, %rsi	 RIP: 430b1b	 Bytes: 10
  %loadMem_430b1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430b1b = call %struct.Memory* @routine_movq__0x45a381___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430b1b)
  store %struct.Memory* %call_430b1b, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %eax	 RIP: 430b25	 Bytes: 5
  %loadMem_430b25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430b25 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430b25)
  store %struct.Memory* %call_430b25, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 430b2a	 Bytes: 2
  %loadMem_430b2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430b2a = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430b2a)
  store %struct.Memory* %call_430b2a, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 430b2c	 Bytes: 4
  %loadMem_430b2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430b2c = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430b2c)
  store %struct.Memory* %call_430b2c, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 430b30	 Bytes: 5
  %loadMem1_430b30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_430b30 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_430b30, i64 -194400, i64 5, i64 5)
  store %struct.Memory* %call1_430b30, %struct.Memory** %MEMORY

  %loadMem2_430b30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_430b30 = load i64, i64* %3
  %call2_430b30 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_430b30, %struct.Memory* %loadMem2_430b30)
  store %struct.Memory* %call2_430b30, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 430b35	 Bytes: 3
  %loadMem_430b35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430b35 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430b35)
  store %struct.Memory* %call_430b35, %struct.Memory** %MEMORY

  ; Code: jne .L_430b43	 RIP: 430b38	 Bytes: 6
  %loadMem_430b38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430b38 = call %struct.Memory* @routine_jne_.L_430b43(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430b38, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_430b38, %struct.Memory** %MEMORY

  %loadBr_430b38 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_430b38 = icmp eq i8 %loadBr_430b38, 1
  br i1 %cmpBr_430b38, label %block_.L_430b43, label %block_430b3e

block_430b3e:
  ; Code: jmpq .L_430b8e	 RIP: 430b3e	 Bytes: 5
  %loadMem_430b3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430b3e = call %struct.Memory* @routine_jmpq_.L_430b8e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430b3e, i64 80, i64 5)
  store %struct.Memory* %call_430b3e, %struct.Memory** %MEMORY

  br label %block_.L_430b8e

  ; Code: .L_430b43:	 RIP: 430b43	 Bytes: 0
block_.L_430b43:

  ; Code: movq $0x458d8b, %rdi	 RIP: 430b43	 Bytes: 10
  %loadMem_430b43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430b43 = call %struct.Memory* @routine_movq__0x458d8b___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430b43)
  store %struct.Memory* %call_430b43, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 430b4d	 Bytes: 4
  %loadMem_430b4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430b4d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430b4d)
  store %struct.Memory* %call_430b4d, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rax), %esi	 RIP: 430b51	 Bytes: 3
  %loadMem_430b51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430b51 = call %struct.Memory* @routine_movl_0x10__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430b51)
  store %struct.Memory* %call_430b51, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 430b54	 Bytes: 4
  %loadMem_430b54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430b54 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430b54)
  store %struct.Memory* %call_430b54, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rdx	 RIP: 430b58	 Bytes: 4
  %loadMem_430b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430b58 = call %struct.Memory* @routine_movq_0x8__rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430b58)
  store %struct.Memory* %call_430b58, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 430b5c	 Bytes: 4
  %loadMem_430b5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430b5c = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430b5c)
  store %struct.Memory* %call_430b5c, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 430b60	 Bytes: 2
  %loadMem_430b60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430b60 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430b60)
  store %struct.Memory* %call_430b60, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 430b62	 Bytes: 5
  %loadMem1_430b62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_430b62 = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_430b62, i64 57006, i64 5, i64 5)
  store %struct.Memory* %call1_430b62, %struct.Memory** %MEMORY

  %loadMem2_430b62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_430b62 = load i64, i64* %3
  %call2_430b62 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_430b62, %struct.Memory* %loadMem2_430b62)
  store %struct.Memory* %call2_430b62, %struct.Memory** %MEMORY

  ; Code: movl $0x5, 0x676f80	 RIP: 430b67	 Bytes: 11
  %loadMem_430b67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430b67 = call %struct.Memory* @routine_movl__0x5__0x676f80(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430b67)
  store %struct.Memory* %call_430b67, %struct.Memory** %MEMORY

  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 430b72	 Bytes: 8
  %loadMem_430b72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430b72 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430b72)
  store %struct.Memory* %call_430b72, %struct.Memory** %MEMORY

  ; Code: jmpq .L_430dd3	 RIP: 430b7a	 Bytes: 5
  %loadMem_430b7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430b7a = call %struct.Memory* @routine_jmpq_.L_430dd3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430b7a, i64 601, i64 5)
  store %struct.Memory* %call_430b7a, %struct.Memory** %MEMORY

  br label %block_.L_430dd3

  ; Code: .L_430b7f:	 RIP: 430b7f	 Bytes: 0
block_.L_430b7f:

  ; Code: jmpq .L_430b84	 RIP: 430b7f	 Bytes: 5
  %loadMem_430b7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430b7f = call %struct.Memory* @routine_jmpq_.L_430b84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430b7f, i64 5, i64 5)
  store %struct.Memory* %call_430b7f, %struct.Memory** %MEMORY

  br label %block_.L_430b84

  ; Code: .L_430b84:	 RIP: 430b84	 Bytes: 0
block_.L_430b84:

  ; Code: jmpq .L_430b89	 RIP: 430b84	 Bytes: 5
  %loadMem_430b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430b84 = call %struct.Memory* @routine_jmpq_.L_430b89(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430b84, i64 5, i64 5)
  store %struct.Memory* %call_430b84, %struct.Memory** %MEMORY

  br label %block_.L_430b89

  ; Code: .L_430b89:	 RIP: 430b89	 Bytes: 0
block_.L_430b89:

  ; Code: jmpq .L_430924	 RIP: 430b89	 Bytes: 5
  %loadMem_430b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430b89 = call %struct.Memory* @routine_jmpq_.L_430924(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430b89, i64 -613, i64 5)
  store %struct.Memory* %call_430b89, %struct.Memory** %MEMORY

  br label %block_.L_430924

  ; Code: .L_430b8e:	 RIP: 430b8e	 Bytes: 0
block_.L_430b8e:

  ; Code: jmpq .L_430b93	 RIP: 430b8e	 Bytes: 5
  %loadMem_430b8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430b8e = call %struct.Memory* @routine_jmpq_.L_430b93(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430b8e, i64 5, i64 5)
  store %struct.Memory* %call_430b8e, %struct.Memory** %MEMORY

  br label %block_.L_430b93

  ; Code: .L_430b93:	 RIP: 430b93	 Bytes: 0
block_.L_430b93:

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 430b93	 Bytes: 4
  %loadMem_430b93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430b93 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430b93)
  store %struct.Memory* %call_430b93, %struct.Memory** %MEMORY

  ; Code: callq .MSAFileGetLine	 RIP: 430b97	 Bytes: 5
  %loadMem1_430b97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_430b97 = call %struct.Memory* @routine_callq_.MSAFileGetLine(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_430b97, i64 -7079, i64 5, i64 5)
  store %struct.Memory* %call1_430b97, %struct.Memory** %MEMORY

  %loadMem2_430b97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_430b97 = load i64, i64* %3
  %call2_430b97 = call %struct.Memory* @sub_42eff0.MSAFileGetLine(%struct.State* %0, i64  %loadPC_430b97, %struct.Memory* %loadMem2_430b97)
  store %struct.Memory* %call2_430b97, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x20(%rbp)	 RIP: 430b9c	 Bytes: 4
  %loadMem_430b9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430b9c = call %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430b9c)
  store %struct.Memory* %call_430b9c, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 430ba0	 Bytes: 4
  %loadMem_430ba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430ba0 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430ba0)
  store %struct.Memory* %call_430ba0, %struct.Memory** %MEMORY

  ; Code: je .L_430cc5	 RIP: 430ba4	 Bytes: 6
  %loadMem_430ba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430ba4 = call %struct.Memory* @routine_je_.L_430cc5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430ba4, i8* %BRANCH_TAKEN, i64 289, i64 6, i64 6)
  store %struct.Memory* %call_430ba4, %struct.Memory** %MEMORY

  %loadBr_430ba4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_430ba4 = icmp eq i8 %loadBr_430ba4, 1
  br i1 %cmpBr_430ba4, label %block_.L_430cc5, label %block_430baa

block_430baa:
  ; Code: leaq -0x40(%rbp), %rdi	 RIP: 430baa	 Bytes: 4
  %loadMem_430baa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430baa = call %struct.Memory* @routine_leaq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430baa)
  store %struct.Memory* %call_430baa, %struct.Memory** %MEMORY

  ; Code: movq $0x458d43, %rsi	 RIP: 430bae	 Bytes: 10
  %loadMem_430bae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430bae = call %struct.Memory* @routine_movq__0x458d43___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430bae)
  store %struct.Memory* %call_430bae, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 430bb8	 Bytes: 2
  %loadMem_430bb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430bb8 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430bb8)
  store %struct.Memory* %call_430bb8, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 430bba	 Bytes: 2
  %loadMem_430bba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430bba = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430bba)
  store %struct.Memory* %call_430bba, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 430bbc	 Bytes: 4
  %loadMem_430bbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430bbc = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430bbc)
  store %struct.Memory* %call_430bbc, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x40(%rbp)	 RIP: 430bc0	 Bytes: 4
  %loadMem_430bc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430bc0 = call %struct.Memory* @routine_movq__rcx__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430bc0)
  store %struct.Memory* %call_430bc0, %struct.Memory** %MEMORY

  ; Code: callq .sre_strtok	 RIP: 430bc4	 Bytes: 5
  %loadMem1_430bc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_430bc4 = call %struct.Memory* @routine_callq_.sre_strtok(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_430bc4, i64 88716, i64 5, i64 5)
  store %struct.Memory* %call1_430bc4, %struct.Memory** %MEMORY

  %loadMem2_430bc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_430bc4 = load i64, i64* %3
  %call2_430bc4 = call %struct.Memory* @sub_446650.sre_strtok(%struct.State* %0, i64  %loadPC_430bc4, %struct.Memory* %loadMem2_430bc4)
  store %struct.Memory* %call2_430bc4, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x50(%rbp)	 RIP: 430bc9	 Bytes: 4
  %loadMem_430bc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430bc9 = call %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430bc9)
  store %struct.Memory* %call_430bc9, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 430bcd	 Bytes: 4
  %loadMem_430bcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430bcd = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430bcd)
  store %struct.Memory* %call_430bcd, %struct.Memory** %MEMORY

  ; Code: jne .L_430bdc	 RIP: 430bd1	 Bytes: 6
  %loadMem_430bd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430bd1 = call %struct.Memory* @routine_jne_.L_430bdc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430bd1, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_430bd1, %struct.Memory** %MEMORY

  %loadBr_430bd1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_430bd1 = icmp eq i8 %loadBr_430bd1, 1
  br i1 %cmpBr_430bd1, label %block_.L_430bdc, label %block_430bd7

block_430bd7:
  ; Code: jmpq .L_430b93	 RIP: 430bd7	 Bytes: 5
  %loadMem_430bd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430bd7 = call %struct.Memory* @routine_jmpq_.L_430b93(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430bd7, i64 -68, i64 5)
  store %struct.Memory* %call_430bd7, %struct.Memory** %MEMORY

  br label %block_.L_430b93

  ; Code: .L_430bdc:	 RIP: 430bdc	 Bytes: 0
block_.L_430bdc:

  ; Code: leaq -0x40(%rbp), %rdi	 RIP: 430bdc	 Bytes: 4
  %loadMem_430bdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430bdc = call %struct.Memory* @routine_leaq_MINUS0x40__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430bdc)
  store %struct.Memory* %call_430bdc, %struct.Memory** %MEMORY

  ; Code: movq $0x45a1f7, %rsi	 RIP: 430be0	 Bytes: 10
  %loadMem_430be0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430be0 = call %struct.Memory* @routine_movq__0x45a1f7___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430be0)
  store %struct.Memory* %call_430be0, %struct.Memory** %MEMORY

  ; Code: leaq -0x44(%rbp), %rdx	 RIP: 430bea	 Bytes: 4
  %loadMem_430bea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430bea = call %struct.Memory* @routine_leaq_MINUS0x44__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430bea)
  store %struct.Memory* %call_430bea, %struct.Memory** %MEMORY

  ; Code: callq .sre_strtok	 RIP: 430bee	 Bytes: 5
  %loadMem1_430bee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_430bee = call %struct.Memory* @routine_callq_.sre_strtok(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_430bee, i64 88674, i64 5, i64 5)
  store %struct.Memory* %call1_430bee, %struct.Memory** %MEMORY

  %loadMem2_430bee = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_430bee = load i64, i64* %3
  %call2_430bee = call %struct.Memory* @sub_446650.sre_strtok(%struct.State* %0, i64  %loadPC_430bee, %struct.Memory* %loadMem2_430bee)
  store %struct.Memory* %call2_430bee, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x58(%rbp)	 RIP: 430bf3	 Bytes: 4
  %loadMem_430bf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430bf3 = call %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430bf3)
  store %struct.Memory* %call_430bf3, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 430bf7	 Bytes: 4
  %loadMem_430bf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430bf7 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430bf7)
  store %struct.Memory* %call_430bf7, %struct.Memory** %MEMORY

  ; Code: jne .L_430c06	 RIP: 430bfb	 Bytes: 6
  %loadMem_430bfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430bfb = call %struct.Memory* @routine_jne_.L_430c06(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430bfb, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_430bfb, %struct.Memory** %MEMORY

  %loadBr_430bfb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_430bfb = icmp eq i8 %loadBr_430bfb, 1
  br i1 %cmpBr_430bfb, label %block_.L_430c06, label %block_430c01

block_430c01:
  ; Code: jmpq .L_430b93	 RIP: 430c01	 Bytes: 5
  %loadMem_430c01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c01 = call %struct.Memory* @routine_jmpq_.L_430b93(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c01, i64 -110, i64 5)
  store %struct.Memory* %call_430c01, %struct.Memory** %MEMORY

  br label %block_.L_430b93

  ; Code: .L_430c06:	 RIP: 430c06	 Bytes: 0
block_.L_430c06:

  ; Code: callq .__ctype_b_loc_plt	 RIP: 430c06	 Bytes: 5
  %loadMem1_430c06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_430c06 = call %struct.Memory* @routine_callq_.__ctype_b_loc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_430c06, i64 -193782, i64 5, i64 5)
  store %struct.Memory* %call1_430c06, %struct.Memory** %MEMORY

  %loadMem2_430c06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_430c06 = load i64, i64* %3
  %call2_430c06 = call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* %0, i64  %loadPC_430c06, %struct.Memory* %loadMem2_430c06)
  store %struct.Memory* %call2_430c06, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 430c0b	 Bytes: 3
  %loadMem_430c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c0b = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c0b)
  store %struct.Memory* %call_430c0b, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 430c0e	 Bytes: 4
  %loadMem_430c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c0e = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c0e)
  store %struct.Memory* %call_430c0e, %struct.Memory** %MEMORY

  ; Code: movsbl (%rcx), %edx	 RIP: 430c12	 Bytes: 3
  %loadMem_430c12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c12 = call %struct.Memory* @routine_movsbl___rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c12)
  store %struct.Memory* %call_430c12, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 430c15	 Bytes: 3
  %loadMem_430c15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c15 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c15)
  store %struct.Memory* %call_430c15, %struct.Memory** %MEMORY

  ; Code: movzwl (%rax,%rcx,2), %edx	 RIP: 430c18	 Bytes: 4
  %loadMem_430c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c18 = call %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c18)
  store %struct.Memory* %call_430c18, %struct.Memory** %MEMORY

  ; Code: andl $0x800, %edx	 RIP: 430c1c	 Bytes: 6
  %loadMem_430c1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c1c = call %struct.Memory* @routine_andl__0x800___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c1c)
  store %struct.Memory* %call_430c1c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 430c22	 Bytes: 3
  %loadMem_430c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c22 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c22)
  store %struct.Memory* %call_430c22, %struct.Memory** %MEMORY

  ; Code: je .L_430c55	 RIP: 430c25	 Bytes: 6
  %loadMem_430c25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c25 = call %struct.Memory* @routine_je_.L_430c55(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c25, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_430c25, %struct.Memory** %MEMORY

  %loadBr_430c25 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_430c25 = icmp eq i8 %loadBr_430c25, 1
  br i1 %cmpBr_430c25, label %block_.L_430c55, label %block_430c2b

block_430c2b:
  ; Code: callq .__ctype_b_loc_plt	 RIP: 430c2b	 Bytes: 5
  %loadMem1_430c2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_430c2b = call %struct.Memory* @routine_callq_.__ctype_b_loc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_430c2b, i64 -193819, i64 5, i64 5)
  store %struct.Memory* %call1_430c2b, %struct.Memory** %MEMORY

  %loadMem2_430c2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_430c2b = load i64, i64* %3
  %call2_430c2b = call %struct.Memory* @sub_401710.__ctype_b_loc_plt(%struct.State* %0, i64  %loadPC_430c2b, %struct.Memory* %loadMem2_430c2b)
  store %struct.Memory* %call2_430c2b, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 430c30	 Bytes: 3
  %loadMem_430c30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c30 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c30)
  store %struct.Memory* %call_430c30, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rcx	 RIP: 430c33	 Bytes: 4
  %loadMem_430c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c33 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c33)
  store %struct.Memory* %call_430c33, %struct.Memory** %MEMORY

  ; Code: movsbl (%rcx), %edx	 RIP: 430c37	 Bytes: 3
  %loadMem_430c37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c37 = call %struct.Memory* @routine_movsbl___rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c37)
  store %struct.Memory* %call_430c37, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 430c3a	 Bytes: 3
  %loadMem_430c3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c3a = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c3a)
  store %struct.Memory* %call_430c3a, %struct.Memory** %MEMORY

  ; Code: movzwl (%rax,%rcx,2), %edx	 RIP: 430c3d	 Bytes: 4
  %loadMem_430c3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c3d = call %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c3d)
  store %struct.Memory* %call_430c3d, %struct.Memory** %MEMORY

  ; Code: andl $0x800, %edx	 RIP: 430c41	 Bytes: 6
  %loadMem_430c41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c41 = call %struct.Memory* @routine_andl__0x800___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c41)
  store %struct.Memory* %call_430c41, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 430c47	 Bytes: 3
  %loadMem_430c47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c47 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c47)
  store %struct.Memory* %call_430c47, %struct.Memory** %MEMORY

  ; Code: je .L_430c55	 RIP: 430c4a	 Bytes: 6
  %loadMem_430c4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c4a = call %struct.Memory* @routine_je_.L_430c55(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c4a, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_430c4a, %struct.Memory** %MEMORY

  %loadBr_430c4a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_430c4a = icmp eq i8 %loadBr_430c4a, 1
  br i1 %cmpBr_430c4a, label %block_.L_430c55, label %block_430c50

block_430c50:
  ; Code: jmpq .L_430b93	 RIP: 430c50	 Bytes: 5
  %loadMem_430c50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c50 = call %struct.Memory* @routine_jmpq_.L_430b93(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c50, i64 -189, i64 5)
  store %struct.Memory* %call_430c50, %struct.Memory** %MEMORY

  br label %block_.L_430b93

  ; Code: .L_430c55:	 RIP: 430c55	 Bytes: 0
block_.L_430c55:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 430c55	 Bytes: 4
  %loadMem_430c55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c55 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c55)
  store %struct.Memory* %call_430c55, %struct.Memory** %MEMORY

  ; Code: movq 0x138(%rax), %rdi	 RIP: 430c59	 Bytes: 7
  %loadMem_430c59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c59 = call %struct.Memory* @routine_movq_0x138__rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c59)
  store %struct.Memory* %call_430c59, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rsi	 RIP: 430c60	 Bytes: 4
  %loadMem_430c60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c60 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c60)
  store %struct.Memory* %call_430c60, %struct.Memory** %MEMORY

  ; Code: callq .GKIKeyIndex	 RIP: 430c64	 Bytes: 5
  %loadMem1_430c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_430c64 = call %struct.Memory* @routine_callq_.GKIKeyIndex(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_430c64, i64 -104452, i64 5, i64 5)
  store %struct.Memory* %call1_430c64, %struct.Memory** %MEMORY

  %loadMem2_430c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_430c64 = load i64, i64* %3
  %call2_430c64 = call %struct.Memory* @sub_417460.GKIKeyIndex(%struct.State* %0, i64  %loadPC_430c64, %struct.Memory* %loadMem2_430c64)
  store %struct.Memory* %call2_430c64, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 430c69	 Bytes: 3
  %loadMem_430c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c69 = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c69)
  store %struct.Memory* %call_430c69, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x48(%rbp)	 RIP: 430c6c	 Bytes: 4
  %loadMem_430c6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c6c = call %struct.Memory* @routine_cmpl__0x0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c6c)
  store %struct.Memory* %call_430c6c, %struct.Memory** %MEMORY

  ; Code: jge .L_430c7b	 RIP: 430c70	 Bytes: 6
  %loadMem_430c70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c70 = call %struct.Memory* @routine_jge_.L_430c7b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c70, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_430c70, %struct.Memory** %MEMORY

  %loadBr_430c70 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_430c70 = icmp eq i8 %loadBr_430c70, 1
  br i1 %cmpBr_430c70, label %block_.L_430c7b, label %block_430c76

block_430c76:
  ; Code: jmpq .L_430b93	 RIP: 430c76	 Bytes: 5
  %loadMem_430c76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c76 = call %struct.Memory* @routine_jmpq_.L_430b93(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c76, i64 -227, i64 5)
  store %struct.Memory* %call_430c76, %struct.Memory** %MEMORY

  br label %block_.L_430b93

  ; Code: .L_430c7b:	 RIP: 430c7b	 Bytes: 0
block_.L_430c7b:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 430c7b	 Bytes: 4
  %loadMem_430c7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c7b = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c7b)
  store %struct.Memory* %call_430c7b, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 430c7f	 Bytes: 3
  %loadMem_430c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c7f = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c7f)
  store %struct.Memory* %call_430c7f, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rcx	 RIP: 430c82	 Bytes: 4
  %loadMem_430c82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c82 = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c82)
  store %struct.Memory* %call_430c82, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rcx	 RIP: 430c86	 Bytes: 4
  %loadMem_430c86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c86 = call %struct.Memory* @routine_shlq__0x3___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c86)
  store %struct.Memory* %call_430c86, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 430c8a	 Bytes: 3
  %loadMem_430c8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c8a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c8a)
  store %struct.Memory* %call_430c8a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 430c8d	 Bytes: 4
  %loadMem_430c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c8d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c8d)
  store %struct.Memory* %call_430c8d, %struct.Memory** %MEMORY

  ; Code: movq 0x148(%rcx), %rcx	 RIP: 430c91	 Bytes: 7
  %loadMem_430c91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c91 = call %struct.Memory* @routine_movq_0x148__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c91)
  store %struct.Memory* %call_430c91, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rdx	 RIP: 430c98	 Bytes: 4
  %loadMem_430c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c98 = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c98)
  store %struct.Memory* %call_430c98, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %esi	 RIP: 430c9c	 Bytes: 3
  %loadMem_430c9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c9c = call %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c9c)
  store %struct.Memory* %call_430c9c, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rdx	 RIP: 430c9f	 Bytes: 4
  %loadMem_430c9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430c9f = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430c9f)
  store %struct.Memory* %call_430c9f, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %ecx	 RIP: 430ca3	 Bytes: 3
  %loadMem_430ca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430ca3 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430ca3)
  store %struct.Memory* %call_430ca3, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 430ca6	 Bytes: 3
  %loadMem_430ca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430ca6 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430ca6)
  store %struct.Memory* %call_430ca6, %struct.Memory** %MEMORY

  ; Code: callq .sre_strcat	 RIP: 430ca9	 Bytes: 5
  %loadMem1_430ca9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_430ca9 = call %struct.Memory* @routine_callq_.sre_strcat(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_430ca9, i64 88119, i64 5, i64 5)
  store %struct.Memory* %call1_430ca9, %struct.Memory** %MEMORY

  %loadMem2_430ca9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_430ca9 = load i64, i64* %3
  %call2_430ca9 = call %struct.Memory* @sub_4464e0.sre_strcat(%struct.State* %0, i64  %loadPC_430ca9, %struct.Memory* %loadMem2_430ca9)
  store %struct.Memory* %call2_430ca9, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 430cae	 Bytes: 4
  %loadMem_430cae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430cae = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430cae)
  store %struct.Memory* %call_430cae, %struct.Memory** %MEMORY

  ; Code: movq 0x148(%rdx), %rdx	 RIP: 430cb2	 Bytes: 7
  %loadMem_430cb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430cb2 = call %struct.Memory* @routine_movq_0x148__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430cb2)
  store %struct.Memory* %call_430cb2, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rdi	 RIP: 430cb9	 Bytes: 4
  %loadMem_430cb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430cb9 = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430cb9)
  store %struct.Memory* %call_430cb9, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rdx,%rdi,4)	 RIP: 430cbd	 Bytes: 3
  %loadMem_430cbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430cbd = call %struct.Memory* @routine_movl__eax____rdx__rdi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430cbd)
  store %struct.Memory* %call_430cbd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_430b93	 RIP: 430cc0	 Bytes: 5
  %loadMem_430cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430cc0 = call %struct.Memory* @routine_jmpq_.L_430b93(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430cc0, i64 -301, i64 5)
  store %struct.Memory* %call_430cc0, %struct.Memory** %MEMORY

  br label %block_.L_430b93

  ; Code: .L_430cc5:	 RIP: 430cc5	 Bytes: 0
block_.L_430cc5:

  ; Code: movl $0x0, -0x48(%rbp)	 RIP: 430cc5	 Bytes: 7
  %loadMem_430cc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430cc5 = call %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430cc5)
  store %struct.Memory* %call_430cc5, %struct.Memory** %MEMORY

  ; Code: .L_430ccc:	 RIP: 430ccc	 Bytes: 0
  br label %block_.L_430ccc
block_.L_430ccc:

  ; Code: movl -0x48(%rbp), %eax	 RIP: 430ccc	 Bytes: 3
  %loadMem_430ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430ccc = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430ccc)
  store %struct.Memory* %call_430ccc, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 430ccf	 Bytes: 4
  %loadMem_430ccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430ccf = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430ccf)
  store %struct.Memory* %call_430ccf, %struct.Memory** %MEMORY

  ; Code: cmpl 0x1c(%rcx), %eax	 RIP: 430cd3	 Bytes: 3
  %loadMem_430cd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430cd3 = call %struct.Memory* @routine_cmpl_0x1c__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430cd3)
  store %struct.Memory* %call_430cd3, %struct.Memory** %MEMORY

  ; Code: jge .L_430dc2	 RIP: 430cd6	 Bytes: 6
  %loadMem_430cd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430cd6 = call %struct.Memory* @routine_jge_.L_430dc2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430cd6, i8* %BRANCH_TAKEN, i64 236, i64 6, i64 6)
  store %struct.Memory* %call_430cd6, %struct.Memory** %MEMORY

  %loadBr_430cd6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_430cd6 = icmp eq i8 %loadBr_430cd6, 1
  br i1 %cmpBr_430cd6, label %block_.L_430dc2, label %block_430cdc

block_430cdc:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 430cdc	 Bytes: 4
  %loadMem_430cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430cdc = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430cdc)
  store %struct.Memory* %call_430cdc, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 430ce0	 Bytes: 3
  %loadMem_430ce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430ce0 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430ce0)
  store %struct.Memory* %call_430ce0, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rcx	 RIP: 430ce3	 Bytes: 4
  %loadMem_430ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430ce3 = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430ce3)
  store %struct.Memory* %call_430ce3, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, (%rax,%rcx,8)	 RIP: 430ce7	 Bytes: 5
  %loadMem_430ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430ce7 = call %struct.Memory* @routine_cmpq__0x0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430ce7)
  store %struct.Memory* %call_430ce7, %struct.Memory** %MEMORY

  ; Code: jne .L_430d1b	 RIP: 430cec	 Bytes: 6
  %loadMem_430cec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430cec = call %struct.Memory* @routine_jne_.L_430d1b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430cec, i8* %BRANCH_TAKEN, i64 47, i64 6, i64 6)
  store %struct.Memory* %call_430cec, %struct.Memory** %MEMORY

  %loadBr_430cec = load i8, i8* %BRANCH_TAKEN
  %cmpBr_430cec = icmp eq i8 %loadBr_430cec, 1
  br i1 %cmpBr_430cec, label %block_.L_430d1b, label %block_430cf2

block_430cf2:
  ; Code: movq $0x458dca, %rdi	 RIP: 430cf2	 Bytes: 10
  %loadMem_430cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430cf2 = call %struct.Memory* @routine_movq__0x458dca___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430cf2)
  store %struct.Memory* %call_430cf2, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 430cfc	 Bytes: 4
  %loadMem_430cfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430cfc = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430cfc)
  store %struct.Memory* %call_430cfc, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 430d00	 Bytes: 4
  %loadMem_430d00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d00 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d00)
  store %struct.Memory* %call_430d00, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rcx	 RIP: 430d04	 Bytes: 4
  %loadMem_430d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d04 = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d04)
  store %struct.Memory* %call_430d04, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rsi	 RIP: 430d08	 Bytes: 4
  %loadMem_430d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d08 = call %struct.Memory* @routine_movq___rax__rcx_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d08)
  store %struct.Memory* %call_430d08, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 430d0c	 Bytes: 4
  %loadMem_430d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d0c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d0c)
  store %struct.Memory* %call_430d0c, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rdx	 RIP: 430d10	 Bytes: 4
  %loadMem_430d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d10 = call %struct.Memory* @routine_movq_0x8__rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d10)
  store %struct.Memory* %call_430d10, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 430d14	 Bytes: 2
  %loadMem_430d14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d14 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d14)
  store %struct.Memory* %call_430d14, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 430d16	 Bytes: 5
  %loadMem1_430d16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_430d16 = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_430d16, i64 56570, i64 5, i64 5)
  store %struct.Memory* %call1_430d16, %struct.Memory** %MEMORY

  %loadMem2_430d16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_430d16 = load i64, i64* %3
  %call2_430d16 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_430d16, %struct.Memory* %loadMem2_430d16)
  store %struct.Memory* %call2_430d16, %struct.Memory** %MEMORY

  ; Code: .L_430d1b:	 RIP: 430d1b	 Bytes: 0
  br label %block_.L_430d1b
block_.L_430d1b:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 430d1b	 Bytes: 4
  %loadMem_430d1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d1b = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d1b)
  store %struct.Memory* %call_430d1b, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 430d1f	 Bytes: 3
  %loadMem_430d1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d1f = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d1f)
  store %struct.Memory* %call_430d1f, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rcx	 RIP: 430d22	 Bytes: 4
  %loadMem_430d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d22 = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d22)
  store %struct.Memory* %call_430d22, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 430d26	 Bytes: 4
  %loadMem_430d26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d26 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d26)
  store %struct.Memory* %call_430d26, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x40(%rbp)	 RIP: 430d2a	 Bytes: 4
  %loadMem_430d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d2a = call %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d2a)
  store %struct.Memory* %call_430d2a, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x20(%rbp)	 RIP: 430d2e	 Bytes: 4
  %loadMem_430d2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d2e = call %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d2e)
  store %struct.Memory* %call_430d2e, %struct.Memory** %MEMORY

  ; Code: .L_430d32:	 RIP: 430d32	 Bytes: 0
  br label %block_.L_430d32
block_.L_430d32:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 430d32	 Bytes: 4
  %loadMem_430d32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d32 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d32)
  store %struct.Memory* %call_430d32, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 430d36	 Bytes: 3
  %loadMem_430d36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d36 = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d36)
  store %struct.Memory* %call_430d36, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 430d39	 Bytes: 3
  %loadMem_430d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d39 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d39)
  store %struct.Memory* %call_430d39, %struct.Memory** %MEMORY

  ; Code: je .L_430dad	 RIP: 430d3c	 Bytes: 6
  %loadMem_430d3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d3c = call %struct.Memory* @routine_je_.L_430dad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d3c, i8* %BRANCH_TAKEN, i64 113, i64 6, i64 6)
  store %struct.Memory* %call_430d3c, %struct.Memory** %MEMORY

  %loadBr_430d3c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_430d3c = icmp eq i8 %loadBr_430d3c, 1
  br i1 %cmpBr_430d3c, label %block_.L_430dad, label %block_430d42

block_430d42:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 430d42	 Bytes: 4
  %loadMem_430d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d42 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d42)
  store %struct.Memory* %call_430d42, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 430d46	 Bytes: 3
  %loadMem_430d46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d46 = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d46)
  store %struct.Memory* %call_430d46, %struct.Memory** %MEMORY

  ; Code: cmpl $0x20, %ecx	 RIP: 430d49	 Bytes: 3
  %loadMem_430d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d49 = call %struct.Memory* @routine_cmpl__0x20___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d49)
  store %struct.Memory* %call_430d49, %struct.Memory** %MEMORY

  ; Code: je .L_430d62	 RIP: 430d4c	 Bytes: 6
  %loadMem_430d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d4c = call %struct.Memory* @routine_je_.L_430d62(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d4c, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_430d4c, %struct.Memory** %MEMORY

  %loadBr_430d4c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_430d4c = icmp eq i8 %loadBr_430d4c, 1
  br i1 %cmpBr_430d4c, label %block_.L_430d62, label %block_430d52

block_430d52:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 430d52	 Bytes: 4
  %loadMem_430d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d52 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d52)
  store %struct.Memory* %call_430d52, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 430d56	 Bytes: 3
  %loadMem_430d56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d56 = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d56)
  store %struct.Memory* %call_430d56, %struct.Memory** %MEMORY

  ; Code: cmpl $0x9, %ecx	 RIP: 430d59	 Bytes: 3
  %loadMem_430d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d59 = call %struct.Memory* @routine_cmpl__0x9___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d59)
  store %struct.Memory* %call_430d59, %struct.Memory** %MEMORY

  ; Code: jne .L_430d7f	 RIP: 430d5c	 Bytes: 6
  %loadMem_430d5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d5c = call %struct.Memory* @routine_jne_.L_430d7f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d5c, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_430d5c, %struct.Memory** %MEMORY

  %loadBr_430d5c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_430d5c = icmp eq i8 %loadBr_430d5c, 1
  br i1 %cmpBr_430d5c, label %block_.L_430d7f, label %block_.L_430d62

  ; Code: .L_430d62:	 RIP: 430d62	 Bytes: 0
block_.L_430d62:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 430d62	 Bytes: 4
  %loadMem_430d62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d62 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d62)
  store %struct.Memory* %call_430d62, %struct.Memory** %MEMORY

  ; Code: movq 0x148(%rax), %rax	 RIP: 430d66	 Bytes: 7
  %loadMem_430d66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d66 = call %struct.Memory* @routine_movq_0x148__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d66)
  store %struct.Memory* %call_430d66, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rcx	 RIP: 430d6d	 Bytes: 4
  %loadMem_430d6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d6d = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d6d)
  store %struct.Memory* %call_430d6d, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 430d71	 Bytes: 3
  %loadMem_430d71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d71 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d71)
  store %struct.Memory* %call_430d71, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %edx	 RIP: 430d74	 Bytes: 3
  %loadMem_430d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d74 = call %struct.Memory* @routine_addl__0xffffffff___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d74)
  store %struct.Memory* %call_430d74, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 430d77	 Bytes: 3
  %loadMem_430d77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d77 = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d77)
  store %struct.Memory* %call_430d77, %struct.Memory** %MEMORY

  ; Code: jmpq .L_430d97	 RIP: 430d7a	 Bytes: 5
  %loadMem_430d7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d7a = call %struct.Memory* @routine_jmpq_.L_430d97(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d7a, i64 29, i64 5)
  store %struct.Memory* %call_430d7a, %struct.Memory** %MEMORY

  br label %block_.L_430d97

  ; Code: .L_430d7f:	 RIP: 430d7f	 Bytes: 0
block_.L_430d7f:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 430d7f	 Bytes: 4
  %loadMem_430d7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d7f = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d7f)
  store %struct.Memory* %call_430d7f, %struct.Memory** %MEMORY

  ; Code: movb (%rax), %cl	 RIP: 430d83	 Bytes: 2
  %loadMem_430d83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d83 = call %struct.Memory* @routine_movb___rax____cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d83)
  store %struct.Memory* %call_430d83, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 430d85	 Bytes: 4
  %loadMem_430d85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d85 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d85)
  store %struct.Memory* %call_430d85, %struct.Memory** %MEMORY

  ; Code: movb %cl, (%rax)	 RIP: 430d89	 Bytes: 2
  %loadMem_430d89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d89 = call %struct.Memory* @routine_movb__cl____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d89)
  store %struct.Memory* %call_430d89, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 430d8b	 Bytes: 4
  %loadMem_430d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d8b = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d8b)
  store %struct.Memory* %call_430d8b, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 430d8f	 Bytes: 4
  %loadMem_430d8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d8f = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d8f)
  store %struct.Memory* %call_430d8f, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x40(%rbp)	 RIP: 430d93	 Bytes: 4
  %loadMem_430d93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d93 = call %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d93)
  store %struct.Memory* %call_430d93, %struct.Memory** %MEMORY

  ; Code: .L_430d97:	 RIP: 430d97	 Bytes: 0
  br label %block_.L_430d97
block_.L_430d97:

  ; Code: jmpq .L_430d9c	 RIP: 430d97	 Bytes: 5
  %loadMem_430d97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d97 = call %struct.Memory* @routine_jmpq_.L_430d9c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d97, i64 5, i64 5)
  store %struct.Memory* %call_430d97, %struct.Memory** %MEMORY

  br label %block_.L_430d9c

  ; Code: .L_430d9c:	 RIP: 430d9c	 Bytes: 0
block_.L_430d9c:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 430d9c	 Bytes: 4
  %loadMem_430d9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430d9c = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430d9c)
  store %struct.Memory* %call_430d9c, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 430da0	 Bytes: 4
  %loadMem_430da0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430da0 = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430da0)
  store %struct.Memory* %call_430da0, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x20(%rbp)	 RIP: 430da4	 Bytes: 4
  %loadMem_430da4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430da4 = call %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430da4)
  store %struct.Memory* %call_430da4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_430d32	 RIP: 430da8	 Bytes: 5
  %loadMem_430da8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430da8 = call %struct.Memory* @routine_jmpq_.L_430d32(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430da8, i64 -118, i64 5)
  store %struct.Memory* %call_430da8, %struct.Memory** %MEMORY

  br label %block_.L_430d32

  ; Code: .L_430dad:	 RIP: 430dad	 Bytes: 0
block_.L_430dad:

  ; Code: movq -0x40(%rbp), %rax	 RIP: 430dad	 Bytes: 4
  %loadMem_430dad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430dad = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430dad)
  store %struct.Memory* %call_430dad, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rax)	 RIP: 430db1	 Bytes: 3
  %loadMem_430db1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430db1 = call %struct.Memory* @routine_movb__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430db1)
  store %struct.Memory* %call_430db1, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %eax	 RIP: 430db4	 Bytes: 3
  %loadMem_430db4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430db4 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430db4)
  store %struct.Memory* %call_430db4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 430db7	 Bytes: 3
  %loadMem_430db7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430db7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430db7)
  store %struct.Memory* %call_430db7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 430dba	 Bytes: 3
  %loadMem_430dba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430dba = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430dba)
  store %struct.Memory* %call_430dba, %struct.Memory** %MEMORY

  ; Code: jmpq .L_430ccc	 RIP: 430dbd	 Bytes: 5
  %loadMem_430dbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430dbd = call %struct.Memory* @routine_jmpq_.L_430ccc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430dbd, i64 -241, i64 5)
  store %struct.Memory* %call_430dbd, %struct.Memory** %MEMORY

  br label %block_.L_430ccc

  ; Code: .L_430dc2:	 RIP: 430dc2	 Bytes: 0
block_.L_430dc2:

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 430dc2	 Bytes: 4
  %loadMem_430dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430dc2 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430dc2)
  store %struct.Memory* %call_430dc2, %struct.Memory** %MEMORY

  ; Code: callq .MSAVerifyParse	 RIP: 430dc6	 Bytes: 5
  %loadMem1_430dc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_430dc6 = call %struct.Memory* @routine_callq_.MSAVerifyParse(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_430dc6, i64 -11014, i64 5, i64 5)
  store %struct.Memory* %call1_430dc6, %struct.Memory** %MEMORY

  %loadMem2_430dc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_430dc6 = load i64, i64* %3
  %call2_430dc6 = call %struct.Memory* @sub_42e2c0.MSAVerifyParse(%struct.State* %0, i64  %loadPC_430dc6, %struct.Memory* %loadMem2_430dc6)
  store %struct.Memory* %call2_430dc6, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 430dcb	 Bytes: 4
  %loadMem_430dcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430dcb = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430dcb)
  store %struct.Memory* %call_430dcb, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 430dcf	 Bytes: 4
  %loadMem_430dcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430dcf = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430dcf)
  store %struct.Memory* %call_430dcf, %struct.Memory** %MEMORY

  ; Code: .L_430dd3:	 RIP: 430dd3	 Bytes: 0
  br label %block_.L_430dd3
block_.L_430dd3:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 430dd3	 Bytes: 4
  %loadMem_430dd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430dd3 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430dd3)
  store %struct.Memory* %call_430dd3, %struct.Memory** %MEMORY

  ; Code: addq $0x70, %rsp	 RIP: 430dd7	 Bytes: 4
  %loadMem_430dd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430dd7 = call %struct.Memory* @routine_addq__0x70___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430dd7)
  store %struct.Memory* %call_430dd7, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 430ddb	 Bytes: 1
  %loadMem_430ddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430ddb = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430ddb)
  store %struct.Memory* %call_430ddb, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 430ddc	 Bytes: 1
  %loadMem_430ddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_430ddc = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_430ddc)
  store %struct.Memory* %call_430ddc, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_430ddc
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

define %struct.Memory* @routine_subq__0x70___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 112)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rdi____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9)
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

define %struct.Memory* @routine_callq_.feof_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_4306ee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_430dd3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_callq_.MSAFileGetLine(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_jne_.L_430712(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0xa___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 10)
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


define %struct.Memory* @routine_callq_.MSAAlloc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x458ccb___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x458ccb_type* @G__0x458ccb to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x17___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 23)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edi___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.strncmp_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_430779(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x3__0x24__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_jne_.L_430774(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_4307d5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x458ce3___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x458ce3_type* @G__0x458ce3 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x17___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 23)
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








define %struct.Memory* @routine_jne_.L_4307d0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jne_.L_4307cb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_4307d0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jmpq_.L_4307da(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x458cfb___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x458cfb_type* @G__0x458cfb to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_callq_.strstr_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_4308e4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x458cfe___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x458cfe_type* @G__0x458cfe to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movq__0x458d03___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x458d03_type* @G__0x458d03 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x3___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 3)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.Strparse(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq_0x246754__rip____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x246754__rip__type* @G_0x246754__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_callq_.atoi_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x24674d__rip____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x24674d__rip__type* @G_0x24674d__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %10)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = sext i8 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsbl___rdi____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12)
  ret %struct.Memory* %15
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

define %struct.Memory* @routine_subl__0x4e___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 78)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movl__ecx__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_43088c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_430864(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subl__0x50___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 80)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_je_.L_430898(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_430878(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_subl__0x58___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 88)
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


define %struct.Memory* @routine_je_.L_4308a4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4308b0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x2__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4308b7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x3__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movq_0x676fa8___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x676fa8_type* @G_0x676fa8 to i64))
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


define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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

define %struct.Memory* @routine_cmpl__0x0__0x24__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 36
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4308df(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__0x24__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 36
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43091f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_callq_.IsBlankline(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_430903(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_callq_.MSAAddComment(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_430908(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_jne_.L_4307da(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_430924(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_je_.L_430b8e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_430940(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_movsbl___rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_cmpl__0x20___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 32)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_430967(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movsbl___rdx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_cmpl__0x9___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 9)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__cl__MINUS0x69__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 105
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jne_.L_430977(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i8* nocapture) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_setne__dl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %DL)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movb__dl__MINUS0x69__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 105
  %15 = load i8, i8* %DL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  store i8 %6, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb_MINUS0x69__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 105
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
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


define %struct.Memory* @routine_jne_.L_430987(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_430998(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

define %struct.Memory* @routine_addq__0x1___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_cmpl__0xa___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4309ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_cmpl__0x21___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 33)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4309cf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_430b84(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x458d3d___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x458d3d_type* @G__0x458d3d to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_je_.L_430b1b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_leaq_MINUS0x40__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__0x458d43___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x458d43_type* @G__0x458d43 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_leaq_MINUS0x44__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addq__0x5___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 5)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_callq_.sre_strtok(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_0x138__rax____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 312
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x38__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.GKIStoreKey(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_cmpl_0x140__rdx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDX
  %15 = add i64 %14, 320
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

define %struct.Memory* @routine_jl_.L_430a4a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.MSAExpand(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.sre_strdup(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x458d46___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x458d46_type* @G__0x458d46 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq_0x8__rdi____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %10)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax____rdi__rcx_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RDI
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %RAX
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_movl_0x1c__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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


define %struct.Memory* @routine_movl__edx__0x1c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 28
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jne_.L_430ac4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x458d4e___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x458d4e_type* @G__0x458d4e to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x10__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq___rax__rcx_8____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %18)
  ret %struct.Memory* %21
}




define %struct.Memory* @routine_movq_0x8__rax____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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


define %struct.Memory* @routine_callq_.Die(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_addq__0x7___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 7)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_callq_.atof_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSD2SSI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWIS2_ET_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %2 to <2 x i32>*
  %6 = load <2 x i32>, <2 x i32>* %5, align 1
  %7 = getelementptr inbounds i8, i8* %2, i64 8
  %8 = bitcast i8* %7 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = bitcast i8* %3 to double*
  %11 = load double, double* %10, align 1
  %12 = fptrunc double %11 to float
  %13 = bitcast i8* %2 to float*
  store float %12, float* %13, align 1
  %14 = extractelement <2 x i32> %6, i32 1
  %15 = getelementptr inbounds i8, i8* %2, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 1
  %17 = extractelement <2 x i32> %9, i32 0
  %18 = bitcast i8* %7 to i32*
  store i32 %17, i32* %18, align 1
  %19 = extractelement <2 x i32> %9, i32 1
  %20 = getelementptr inbounds i8, i8* %2, i64 12
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSD2SSI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWIS2_ET_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = inttoptr i64 %2 to float*
  store float %7, float* %8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movss__xmm0____rax__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %RDX
  %16 = mul i64 %15, 4
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %17, i8* %18)
  ret %struct.Memory* %21
}




define %struct.Memory* @routine_movl_0x20__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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

define %struct.Memory* @routine_orl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_jmpq_.L_430b7f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x45a381___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45a381_type* @G__0x45a381 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x2___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 2)
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_jne_.L_430b43(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_430b8e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x458d8b___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x458d8b_type* @G__0x458d8b to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movq_0x8__rax____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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






define %struct.Memory* @routine_movl__0x5__0x676f80(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x676f80_type* @G_0x676f80 to i64), i64 5)
  ret %struct.Memory* %8
}








define %struct.Memory* @routine_jmpq_.L_430b89(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jmpq_.L_430b93(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_je_.L_430cc5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movq__rcx__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_430bdc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq__0x45a1f7___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x45a1f7_type* @G__0x45a1f7 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_430c06(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.__ctype_b_loc_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movsbl___rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__edx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i16*
  %6 = load i16, i16* %5
  %7 = zext i16 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %18)
  ret %struct.Memory* %21
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

define %struct.Memory* @routine_andl__0x800___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 2048)
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


define %struct.Memory* @routine_je_.L_430c55(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




















define %struct.Memory* @routine_movq_MINUS0x50__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.GKIKeyIndex(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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

define %struct.Memory* @routine_jge_.L_430c7b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_shlq__0x3___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 3)
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




define %struct.Memory* @routine_movq_0x148__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 328
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movq_MINUS0x58__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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


define %struct.Memory* @routine_callq_.sre_strcat(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x148__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 328
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax____rdx__rdi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RDI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EAX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_jge_.L_430dc2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpq__0x0____rax__rcx_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_430d1b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x458dca___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x458dca_type* @G__0x458dca to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movq___rax__rcx_8____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %18)
  ret %struct.Memory* %21
}
















define %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15)
  ret %struct.Memory* %18
}












define %struct.Memory* @routine_je_.L_430dad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_430d62(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cmpl__0x9___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 9)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_430d7f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_addl__0xffffffff___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 -1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EDX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_jmpq_.L_430d97(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movb___rax____cl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %CL, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movb__cl____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RAX
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_jmpq_.L_430d9c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_430d32(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__0x0____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
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




define %struct.Memory* @routine_jmpq_.L_430ccc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_callq_.MSAVerifyParse(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_addq__0x70___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 112)
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

