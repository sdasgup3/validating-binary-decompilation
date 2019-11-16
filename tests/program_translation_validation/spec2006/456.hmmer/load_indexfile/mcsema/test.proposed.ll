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

declare %struct.Memory* @sub_446f90.read_i32(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_447000.read_i16(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_447070.read_offset(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_447130.indexfile_position(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_401410.fread_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4471f0.SSIClose(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x663038_type = type <{ [4 x i8] }>
@G_0x663038= global %G_0x663038_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x66303c_type = type <{ [4 x i8] }>
@G_0x66303c= global %G_0x66303c_type <{ [4 x i8] c"\00\00\00\00" }>


define %struct.Memory* @load_indexfile(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .load_indexfile:	 RIP: 446930	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 446930	 Bytes: 1
  %loadMem_446930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446930 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446930)
  store %struct.Memory* %call_446930, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 446931	 Bytes: 3
  %loadMem_446931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446931 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446931)
  store %struct.Memory* %call_446931, %struct.Memory** %MEMORY

  ; Code: subq $0x20, %rsp	 RIP: 446934	 Bytes: 4
  %loadMem_446934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446934 = call %struct.Memory* @routine_subq__0x20___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446934)
  store %struct.Memory* %call_446934, %struct.Memory** %MEMORY

  ; Code: leaq -0x14(%rbp), %rsi	 RIP: 446938	 Bytes: 4
  %loadMem_446938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446938 = call %struct.Memory* @routine_leaq_MINUS0x14__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446938)
  store %struct.Memory* %call_446938, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x10(%rbp)	 RIP: 44693c	 Bytes: 4
  %loadMem_44693c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44693c = call %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44693c)
  store %struct.Memory* %call_44693c, %struct.Memory** %MEMORY

  ; Code: movl $0x6, -0x1c(%rbp)	 RIP: 446940	 Bytes: 7
  %loadMem_446940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446940 = call %struct.Memory* @routine_movl__0x6__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446940)
  store %struct.Memory* %call_446940, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 446947	 Bytes: 4
  %loadMem_446947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446947 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446947)
  store %struct.Memory* %call_446947, %struct.Memory** %MEMORY

  ; Code: movq $0x0, 0x68(%rdi)	 RIP: 44694b	 Bytes: 8
  %loadMem_44694b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44694b = call %struct.Memory* @routine_movq__0x0__0x68__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44694b)
  store %struct.Memory* %call_44694b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 446953	 Bytes: 4
  %loadMem_446953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446953 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446953)
  store %struct.Memory* %call_446953, %struct.Memory** %MEMORY

  ; Code: movq $0x0, 0x70(%rdi)	 RIP: 446957	 Bytes: 8
  %loadMem_446957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446957 = call %struct.Memory* @routine_movq__0x0__0x70__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446957)
  store %struct.Memory* %call_446957, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 44695f	 Bytes: 4
  %loadMem_44695f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44695f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44695f)
  store %struct.Memory* %call_44695f, %struct.Memory** %MEMORY

  ; Code: movq $0x0, 0x78(%rdi)	 RIP: 446963	 Bytes: 8
  %loadMem_446963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446963 = call %struct.Memory* @routine_movq__0x0__0x78__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446963)
  store %struct.Memory* %call_446963, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 44696b	 Bytes: 4
  %loadMem_44696b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44696b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44696b)
  store %struct.Memory* %call_44696b, %struct.Memory** %MEMORY

  ; Code: movq $0x0, 0x80(%rdi)	 RIP: 44696f	 Bytes: 11
  %loadMem_44696f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44696f = call %struct.Memory* @routine_movq__0x0__0x80__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44696f)
  store %struct.Memory* %call_44696f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 44697a	 Bytes: 4
  %loadMem_44697a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44697a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44697a)
  store %struct.Memory* %call_44697a, %struct.Memory** %MEMORY

  ; Code: movq $0x0, 0x88(%rdi)	 RIP: 44697e	 Bytes: 11
  %loadMem_44697e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44697e = call %struct.Memory* @routine_movq__0x0__0x88__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44697e)
  store %struct.Memory* %call_44697e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 446989	 Bytes: 4
  %loadMem_446989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446989 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446989)
  store %struct.Memory* %call_446989, %struct.Memory** %MEMORY

  ; Code: movw $0x0, 0xc(%rdi)	 RIP: 44698d	 Bytes: 6
  %loadMem_44698d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44698d = call %struct.Memory* @routine_movw__0x0__0xc__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44698d)
  store %struct.Memory* %call_44698d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 446993	 Bytes: 4
  %loadMem_446993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446993 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446993)
  store %struct.Memory* %call_446993, %struct.Memory** %MEMORY

  ; Code: movq (%rdi), %rdi	 RIP: 446997	 Bytes: 3
  %loadMem_446997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446997 = call %struct.Memory* @routine_movq___rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446997)
  store %struct.Memory* %call_446997, %struct.Memory** %MEMORY

  ; Code: callq .read_i32	 RIP: 44699a	 Bytes: 5
  %loadMem1_44699a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44699a = call %struct.Memory* @routine_callq_.read_i32(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44699a, i64 1526, i64 5, i64 5)
  store %struct.Memory* %call1_44699a, %struct.Memory** %MEMORY

  %loadMem2_44699a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44699a = load i64, i64* %3
  %call2_44699a = call %struct.Memory* @sub_446f90.read_i32(%struct.State* %0, i64  %loadPC_44699a, %struct.Memory* %loadMem2_44699a)
  store %struct.Memory* %call2_44699a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 44699f	 Bytes: 3
  %loadMem_44699f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44699f = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44699f)
  store %struct.Memory* %call_44699f, %struct.Memory** %MEMORY

  ; Code: jne .L_4469b4	 RIP: 4469a2	 Bytes: 6
  %loadMem_4469a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4469a2 = call %struct.Memory* @routine_jne_.L_4469b4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4469a2, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4469a2, %struct.Memory** %MEMORY

  %loadBr_4469a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4469a2 = icmp eq i8 %loadBr_4469a2, 1
  br i1 %cmpBr_4469a2, label %block_.L_4469b4, label %block_4469a8

block_4469a8:
  ; Code: movl $0x5, -0x1c(%rbp)	 RIP: 4469a8	 Bytes: 7
  %loadMem_4469a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4469a8 = call %struct.Memory* @routine_movl__0x5__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4469a8)
  store %struct.Memory* %call_4469a8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_446f6c	 RIP: 4469af	 Bytes: 5
  %loadMem_4469af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4469af = call %struct.Memory* @routine_jmpq_.L_446f6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4469af, i64 1469, i64 5)
  store %struct.Memory* %call_4469af, %struct.Memory** %MEMORY

  br label %block_.L_446f6c

  ; Code: .L_4469b4:	 RIP: 4469b4	 Bytes: 0
block_.L_4469b4:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 4469b4	 Bytes: 3
  %loadMem_4469b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4469b4 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4469b4)
  store %struct.Memory* %call_4469b4, %struct.Memory** %MEMORY

  ; Code: cmpl 0x663038, %eax	 RIP: 4469b7	 Bytes: 7
  %loadMem_4469b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4469b7 = call %struct.Memory* @routine_cmpl_0x663038___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4469b7)
  store %struct.Memory* %call_4469b7, %struct.Memory** %MEMORY

  ; Code: je .L_4469e0	 RIP: 4469be	 Bytes: 6
  %loadMem_4469be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4469be = call %struct.Memory* @routine_je_.L_4469e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4469be, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_4469be, %struct.Memory** %MEMORY

  %loadBr_4469be = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4469be = icmp eq i8 %loadBr_4469be, 1
  br i1 %cmpBr_4469be, label %block_.L_4469e0, label %block_4469c4

block_4469c4:
  ; Code: movl -0x14(%rbp), %eax	 RIP: 4469c4	 Bytes: 3
  %loadMem_4469c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4469c4 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4469c4)
  store %struct.Memory* %call_4469c4, %struct.Memory** %MEMORY

  ; Code: cmpl 0x66303c, %eax	 RIP: 4469c7	 Bytes: 7
  %loadMem_4469c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4469c7 = call %struct.Memory* @routine_cmpl_0x66303c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4469c7)
  store %struct.Memory* %call_4469c7, %struct.Memory** %MEMORY

  ; Code: je .L_4469e0	 RIP: 4469ce	 Bytes: 6
  %loadMem_4469ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4469ce = call %struct.Memory* @routine_je_.L_4469e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4469ce, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4469ce, %struct.Memory** %MEMORY

  %loadBr_4469ce = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4469ce = icmp eq i8 %loadBr_4469ce, 1
  br i1 %cmpBr_4469ce, label %block_.L_4469e0, label %block_4469d4

block_4469d4:
  ; Code: movl $0x5, -0x1c(%rbp)	 RIP: 4469d4	 Bytes: 7
  %loadMem_4469d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4469d4 = call %struct.Memory* @routine_movl__0x5__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4469d4)
  store %struct.Memory* %call_4469d4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_446f6c	 RIP: 4469db	 Bytes: 5
  %loadMem_4469db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4469db = call %struct.Memory* @routine_jmpq_.L_446f6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4469db, i64 1425, i64 5)
  store %struct.Memory* %call_4469db, %struct.Memory** %MEMORY

  br label %block_.L_446f6c

  ; Code: .L_4469e0:	 RIP: 4469e0	 Bytes: 0
block_.L_4469e0:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4469e0	 Bytes: 4
  %loadMem_4469e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4469e0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4469e0)
  store %struct.Memory* %call_4469e0, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 4469e4	 Bytes: 3
  %loadMem_4469e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4469e4 = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4469e4)
  store %struct.Memory* %call_4469e4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4469e7	 Bytes: 4
  %loadMem_4469e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4469e7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4469e7)
  store %struct.Memory* %call_4469e7, %struct.Memory** %MEMORY

  ; Code: addq $0x8, %rax	 RIP: 4469eb	 Bytes: 4
  %loadMem_4469eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4469eb = call %struct.Memory* @routine_addq__0x8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4469eb)
  store %struct.Memory* %call_4469eb, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4469ef	 Bytes: 3
  %loadMem_4469ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4469ef = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4469ef)
  store %struct.Memory* %call_4469ef, %struct.Memory** %MEMORY

  ; Code: callq .read_i32	 RIP: 4469f2	 Bytes: 5
  %loadMem1_4469f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4469f2 = call %struct.Memory* @routine_callq_.read_i32(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4469f2, i64 1438, i64 5, i64 5)
  store %struct.Memory* %call1_4469f2, %struct.Memory** %MEMORY

  %loadMem2_4469f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4469f2 = load i64, i64* %3
  %call2_4469f2 = call %struct.Memory* @sub_446f90.read_i32(%struct.State* %0, i64  %loadPC_4469f2, %struct.Memory* %loadMem2_4469f2)
  store %struct.Memory* %call2_4469f2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4469f7	 Bytes: 3
  %loadMem_4469f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4469f7 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4469f7)
  store %struct.Memory* %call_4469f7, %struct.Memory** %MEMORY

  ; Code: jne .L_446a05	 RIP: 4469fa	 Bytes: 6
  %loadMem_4469fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4469fa = call %struct.Memory* @routine_jne_.L_446a05(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4469fa, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4469fa, %struct.Memory** %MEMORY

  %loadBr_4469fa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4469fa = icmp eq i8 %loadBr_4469fa, 1
  br i1 %cmpBr_4469fa, label %block_.L_446a05, label %block_446a00

block_446a00:
  ; Code: jmpq .L_446f6c	 RIP: 446a00	 Bytes: 5
  %loadMem_446a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a00 = call %struct.Memory* @routine_jmpq_.L_446f6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a00, i64 1388, i64 5)
  store %struct.Memory* %call_446a00, %struct.Memory** %MEMORY

  br label %block_.L_446f6c

  ; Code: .L_446a05:	 RIP: 446a05	 Bytes: 0
block_.L_446a05:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446a05	 Bytes: 4
  %loadMem_446a05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a05 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a05)
  store %struct.Memory* %call_446a05, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %ecx	 RIP: 446a09	 Bytes: 3
  %loadMem_446a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a09 = call %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a09)
  store %struct.Memory* %call_446a09, %struct.Memory** %MEMORY

  ; Code: andl $0x2, %ecx	 RIP: 446a0c	 Bytes: 3
  %loadMem_446a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a0c = call %struct.Memory* @routine_andl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a0c)
  store %struct.Memory* %call_446a0c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 446a0f	 Bytes: 3
  %loadMem_446a0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a0f = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a0f)
  store %struct.Memory* %call_446a0f, %struct.Memory** %MEMORY

  ; Code: jne .L_446a2b	 RIP: 446a12	 Bytes: 6
  %loadMem_446a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a12 = call %struct.Memory* @routine_jne_.L_446a2b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a12, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_446a12, %struct.Memory** %MEMORY

  %loadBr_446a12 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446a12 = icmp eq i8 %loadBr_446a12, 1
  br i1 %cmpBr_446a12, label %block_.L_446a2b, label %block_446a18

block_446a18:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 446a18	 Bytes: 4
  %loadMem_446a18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a18 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a18)
  store %struct.Memory* %call_446a18, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %ecx	 RIP: 446a1c	 Bytes: 3
  %loadMem_446a1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a1c = call %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a1c)
  store %struct.Memory* %call_446a1c, %struct.Memory** %MEMORY

  ; Code: andl $0x1, %ecx	 RIP: 446a1f	 Bytes: 3
  %loadMem_446a1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a1f = call %struct.Memory* @routine_andl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a1f)
  store %struct.Memory* %call_446a1f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 446a22	 Bytes: 3
  %loadMem_446a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a22 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a22)
  store %struct.Memory* %call_446a22, %struct.Memory** %MEMORY

  ; Code: je .L_446a37	 RIP: 446a25	 Bytes: 6
  %loadMem_446a25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a25 = call %struct.Memory* @routine_je_.L_446a37(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a25, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_446a25, %struct.Memory** %MEMORY

  %loadBr_446a25 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446a25 = icmp eq i8 %loadBr_446a25, 1
  br i1 %cmpBr_446a25, label %block_.L_446a37, label %block_.L_446a2b

  ; Code: .L_446a2b:	 RIP: 446a2b	 Bytes: 0
block_.L_446a2b:

  ; Code: movl $0x7, -0x1c(%rbp)	 RIP: 446a2b	 Bytes: 7
  %loadMem_446a2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a2b = call %struct.Memory* @routine_movl__0x7__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a2b)
  store %struct.Memory* %call_446a2b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_446f6c	 RIP: 446a32	 Bytes: 5
  %loadMem_446a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a32 = call %struct.Memory* @routine_jmpq_.L_446f6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a32, i64 1338, i64 5)
  store %struct.Memory* %call_446a32, %struct.Memory** %MEMORY

  br label %block_.L_446f6c

  ; Code: .L_446a37:	 RIP: 446a37	 Bytes: 0
block_.L_446a37:

  ; Code: xorl %eax, %eax	 RIP: 446a37	 Bytes: 2
  %loadMem_446a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a37 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a37)
  store %struct.Memory* %call_446a37, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 446a39	 Bytes: 5
  %loadMem_446a39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a39 = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a39)
  store %struct.Memory* %call_446a39, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 446a3e	 Bytes: 4
  %loadMem_446a3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a3e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a3e)
  store %struct.Memory* %call_446a3e, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rdx), %esi	 RIP: 446a42	 Bytes: 3
  %loadMem_446a42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a42 = call %struct.Memory* @routine_movl_0x8__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a42)
  store %struct.Memory* %call_446a42, %struct.Memory** %MEMORY

  ; Code: andl $0x2, %esi	 RIP: 446a45	 Bytes: 3
  %loadMem_446a45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a45 = call %struct.Memory* @routine_andl__0x2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a45)
  store %struct.Memory* %call_446a45, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %esi	 RIP: 446a48	 Bytes: 3
  %loadMem_446a48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a48 = call %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a48)
  store %struct.Memory* %call_446a48, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 446a4b	 Bytes: 2
  %loadMem_446a4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a4b = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a4b)
  store %struct.Memory* %call_446a4b, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %esi	 RIP: 446a4d	 Bytes: 3
  %loadMem_446a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a4d = call %struct.Memory* @routine_cmovnel__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a4d)
  store %struct.Memory* %call_446a4d, %struct.Memory** %MEMORY

  ; Code: movb %sil, %dil	 RIP: 446a50	 Bytes: 3
  %loadMem_446a50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a50 = call %struct.Memory* @routine_movb__sil___dil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a50)
  store %struct.Memory* %call_446a50, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 446a53	 Bytes: 4
  %loadMem_446a53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a53 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a53)
  store %struct.Memory* %call_446a53, %struct.Memory** %MEMORY

  ; Code: movb %dil, 0x60(%rdx)	 RIP: 446a57	 Bytes: 4
  %loadMem_446a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a57 = call %struct.Memory* @routine_movb__dil__0x60__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a57)
  store %struct.Memory* %call_446a57, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 446a5b	 Bytes: 4
  %loadMem_446a5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a5b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a5b)
  store %struct.Memory* %call_446a5b, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rdx), %esi	 RIP: 446a5f	 Bytes: 3
  %loadMem_446a5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a5f = call %struct.Memory* @routine_movl_0x8__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a5f)
  store %struct.Memory* %call_446a5f, %struct.Memory** %MEMORY

  ; Code: andl $0x1, %esi	 RIP: 446a62	 Bytes: 3
  %loadMem_446a62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a62 = call %struct.Memory* @routine_andl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a62)
  store %struct.Memory* %call_446a62, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %esi	 RIP: 446a65	 Bytes: 3
  %loadMem_446a65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a65 = call %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a65)
  store %struct.Memory* %call_446a65, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %eax	 RIP: 446a68	 Bytes: 3
  %loadMem_446a68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a68 = call %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a68)
  store %struct.Memory* %call_446a68, %struct.Memory** %MEMORY

  ; Code: movb %al, %dil	 RIP: 446a6b	 Bytes: 3
  %loadMem_446a6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a6b = call %struct.Memory* @routine_movb__al___dil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a6b)
  store %struct.Memory* %call_446a6b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 446a6e	 Bytes: 4
  %loadMem_446a6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a6e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a6e)
  store %struct.Memory* %call_446a6e, %struct.Memory** %MEMORY

  ; Code: movb %dil, 0x61(%rdx)	 RIP: 446a72	 Bytes: 4
  %loadMem_446a72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a72 = call %struct.Memory* @routine_movb__dil__0x61__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a72)
  store %struct.Memory* %call_446a72, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 446a76	 Bytes: 4
  %loadMem_446a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a76 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a76)
  store %struct.Memory* %call_446a76, %struct.Memory** %MEMORY

  ; Code: movq (%rdx), %rdi	 RIP: 446a7a	 Bytes: 3
  %loadMem_446a7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a7a = call %struct.Memory* @routine_movq___rdx____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a7a)
  store %struct.Memory* %call_446a7a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 446a7d	 Bytes: 4
  %loadMem_446a7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a7d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a7d)
  store %struct.Memory* %call_446a7d, %struct.Memory** %MEMORY

  ; Code: addq $0xc, %rdx	 RIP: 446a81	 Bytes: 4
  %loadMem_446a81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a81 = call %struct.Memory* @routine_addq__0xc___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a81)
  store %struct.Memory* %call_446a81, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 446a85	 Bytes: 3
  %loadMem_446a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a85 = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a85)
  store %struct.Memory* %call_446a85, %struct.Memory** %MEMORY

  ; Code: callq .read_i16	 RIP: 446a88	 Bytes: 5
  %loadMem1_446a88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_446a88 = call %struct.Memory* @routine_callq_.read_i16(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_446a88, i64 1400, i64 5, i64 5)
  store %struct.Memory* %call1_446a88, %struct.Memory** %MEMORY

  %loadMem2_446a88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446a88 = load i64, i64* %3
  %call2_446a88 = call %struct.Memory* @sub_447000.read_i16(%struct.State* %0, i64  %loadPC_446a88, %struct.Memory* %loadMem2_446a88)
  store %struct.Memory* %call2_446a88, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 446a8d	 Bytes: 3
  %loadMem_446a8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a8d = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a8d)
  store %struct.Memory* %call_446a8d, %struct.Memory** %MEMORY

  ; Code: jne .L_446a9b	 RIP: 446a90	 Bytes: 6
  %loadMem_446a90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a90 = call %struct.Memory* @routine_jne_.L_446a9b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a90, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_446a90, %struct.Memory** %MEMORY

  %loadBr_446a90 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446a90 = icmp eq i8 %loadBr_446a90, 1
  br i1 %cmpBr_446a90, label %block_.L_446a9b, label %block_446a96

block_446a96:
  ; Code: jmpq .L_446f6c	 RIP: 446a96	 Bytes: 5
  %loadMem_446a96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a96 = call %struct.Memory* @routine_jmpq_.L_446f6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a96, i64 1238, i64 5)
  store %struct.Memory* %call_446a96, %struct.Memory** %MEMORY

  br label %block_.L_446f6c

  ; Code: .L_446a9b:	 RIP: 446a9b	 Bytes: 0
block_.L_446a9b:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446a9b	 Bytes: 4
  %loadMem_446a9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a9b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a9b)
  store %struct.Memory* %call_446a9b, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 446a9f	 Bytes: 3
  %loadMem_446a9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446a9f = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446a9f)
  store %struct.Memory* %call_446a9f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446aa2	 Bytes: 4
  %loadMem_446aa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446aa2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446aa2)
  store %struct.Memory* %call_446aa2, %struct.Memory** %MEMORY

  ; Code: addq $0x10, %rax	 RIP: 446aa6	 Bytes: 4
  %loadMem_446aa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446aa6 = call %struct.Memory* @routine_addq__0x10___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446aa6)
  store %struct.Memory* %call_446aa6, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 446aaa	 Bytes: 3
  %loadMem_446aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446aaa = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446aaa)
  store %struct.Memory* %call_446aaa, %struct.Memory** %MEMORY

  ; Code: callq .read_i32	 RIP: 446aad	 Bytes: 5
  %loadMem1_446aad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_446aad = call %struct.Memory* @routine_callq_.read_i32(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_446aad, i64 1251, i64 5, i64 5)
  store %struct.Memory* %call1_446aad, %struct.Memory** %MEMORY

  %loadMem2_446aad = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446aad = load i64, i64* %3
  %call2_446aad = call %struct.Memory* @sub_446f90.read_i32(%struct.State* %0, i64  %loadPC_446aad, %struct.Memory* %loadMem2_446aad)
  store %struct.Memory* %call2_446aad, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 446ab2	 Bytes: 3
  %loadMem_446ab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ab2 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ab2)
  store %struct.Memory* %call_446ab2, %struct.Memory** %MEMORY

  ; Code: jne .L_446ac0	 RIP: 446ab5	 Bytes: 6
  %loadMem_446ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ab5 = call %struct.Memory* @routine_jne_.L_446ac0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ab5, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_446ab5, %struct.Memory** %MEMORY

  %loadBr_446ab5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446ab5 = icmp eq i8 %loadBr_446ab5, 1
  br i1 %cmpBr_446ab5, label %block_.L_446ac0, label %block_446abb

block_446abb:
  ; Code: jmpq .L_446f6c	 RIP: 446abb	 Bytes: 5
  %loadMem_446abb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446abb = call %struct.Memory* @routine_jmpq_.L_446f6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446abb, i64 1201, i64 5)
  store %struct.Memory* %call_446abb, %struct.Memory** %MEMORY

  br label %block_.L_446f6c

  ; Code: .L_446ac0:	 RIP: 446ac0	 Bytes: 0
block_.L_446ac0:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446ac0	 Bytes: 4
  %loadMem_446ac0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ac0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ac0)
  store %struct.Memory* %call_446ac0, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 446ac4	 Bytes: 3
  %loadMem_446ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ac4 = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ac4)
  store %struct.Memory* %call_446ac4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446ac7	 Bytes: 4
  %loadMem_446ac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ac7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ac7)
  store %struct.Memory* %call_446ac7, %struct.Memory** %MEMORY

  ; Code: addq $0x14, %rax	 RIP: 446acb	 Bytes: 4
  %loadMem_446acb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446acb = call %struct.Memory* @routine_addq__0x14___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446acb)
  store %struct.Memory* %call_446acb, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 446acf	 Bytes: 3
  %loadMem_446acf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446acf = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446acf)
  store %struct.Memory* %call_446acf, %struct.Memory** %MEMORY

  ; Code: callq .read_i32	 RIP: 446ad2	 Bytes: 5
  %loadMem1_446ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_446ad2 = call %struct.Memory* @routine_callq_.read_i32(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_446ad2, i64 1214, i64 5, i64 5)
  store %struct.Memory* %call1_446ad2, %struct.Memory** %MEMORY

  %loadMem2_446ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446ad2 = load i64, i64* %3
  %call2_446ad2 = call %struct.Memory* @sub_446f90.read_i32(%struct.State* %0, i64  %loadPC_446ad2, %struct.Memory* %loadMem2_446ad2)
  store %struct.Memory* %call2_446ad2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 446ad7	 Bytes: 3
  %loadMem_446ad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ad7 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ad7)
  store %struct.Memory* %call_446ad7, %struct.Memory** %MEMORY

  ; Code: jne .L_446ae5	 RIP: 446ada	 Bytes: 6
  %loadMem_446ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ada = call %struct.Memory* @routine_jne_.L_446ae5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ada, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_446ada, %struct.Memory** %MEMORY

  %loadBr_446ada = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446ada = icmp eq i8 %loadBr_446ada, 1
  br i1 %cmpBr_446ada, label %block_.L_446ae5, label %block_446ae0

block_446ae0:
  ; Code: jmpq .L_446f6c	 RIP: 446ae0	 Bytes: 5
  %loadMem_446ae0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ae0 = call %struct.Memory* @routine_jmpq_.L_446f6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ae0, i64 1164, i64 5)
  store %struct.Memory* %call_446ae0, %struct.Memory** %MEMORY

  br label %block_.L_446f6c

  ; Code: .L_446ae5:	 RIP: 446ae5	 Bytes: 0
block_.L_446ae5:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446ae5	 Bytes: 4
  %loadMem_446ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ae5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ae5)
  store %struct.Memory* %call_446ae5, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 446ae9	 Bytes: 3
  %loadMem_446ae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ae9 = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ae9)
  store %struct.Memory* %call_446ae9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446aec	 Bytes: 4
  %loadMem_446aec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446aec = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446aec)
  store %struct.Memory* %call_446aec, %struct.Memory** %MEMORY

  ; Code: addq $0x18, %rax	 RIP: 446af0	 Bytes: 4
  %loadMem_446af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446af0 = call %struct.Memory* @routine_addq__0x18___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446af0)
  store %struct.Memory* %call_446af0, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 446af4	 Bytes: 3
  %loadMem_446af4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446af4 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446af4)
  store %struct.Memory* %call_446af4, %struct.Memory** %MEMORY

  ; Code: callq .read_i32	 RIP: 446af7	 Bytes: 5
  %loadMem1_446af7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_446af7 = call %struct.Memory* @routine_callq_.read_i32(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_446af7, i64 1177, i64 5, i64 5)
  store %struct.Memory* %call1_446af7, %struct.Memory** %MEMORY

  %loadMem2_446af7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446af7 = load i64, i64* %3
  %call2_446af7 = call %struct.Memory* @sub_446f90.read_i32(%struct.State* %0, i64  %loadPC_446af7, %struct.Memory* %loadMem2_446af7)
  store %struct.Memory* %call2_446af7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 446afc	 Bytes: 3
  %loadMem_446afc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446afc = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446afc)
  store %struct.Memory* %call_446afc, %struct.Memory** %MEMORY

  ; Code: jne .L_446b0a	 RIP: 446aff	 Bytes: 6
  %loadMem_446aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446aff = call %struct.Memory* @routine_jne_.L_446b0a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446aff, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_446aff, %struct.Memory** %MEMORY

  %loadBr_446aff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446aff = icmp eq i8 %loadBr_446aff, 1
  br i1 %cmpBr_446aff, label %block_.L_446b0a, label %block_446b05

block_446b05:
  ; Code: jmpq .L_446f6c	 RIP: 446b05	 Bytes: 5
  %loadMem_446b05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b05 = call %struct.Memory* @routine_jmpq_.L_446f6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b05, i64 1127, i64 5)
  store %struct.Memory* %call_446b05, %struct.Memory** %MEMORY

  br label %block_.L_446f6c

  ; Code: .L_446b0a:	 RIP: 446b0a	 Bytes: 0
block_.L_446b0a:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446b0a	 Bytes: 4
  %loadMem_446b0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b0a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b0a)
  store %struct.Memory* %call_446b0a, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 446b0e	 Bytes: 3
  %loadMem_446b0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b0e = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b0e)
  store %struct.Memory* %call_446b0e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446b11	 Bytes: 4
  %loadMem_446b11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b11 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b11)
  store %struct.Memory* %call_446b11, %struct.Memory** %MEMORY

  ; Code: addq $0x1c, %rax	 RIP: 446b15	 Bytes: 4
  %loadMem_446b15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b15 = call %struct.Memory* @routine_addq__0x1c___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b15)
  store %struct.Memory* %call_446b15, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 446b19	 Bytes: 3
  %loadMem_446b19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b19 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b19)
  store %struct.Memory* %call_446b19, %struct.Memory** %MEMORY

  ; Code: callq .read_i32	 RIP: 446b1c	 Bytes: 5
  %loadMem1_446b1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_446b1c = call %struct.Memory* @routine_callq_.read_i32(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_446b1c, i64 1140, i64 5, i64 5)
  store %struct.Memory* %call1_446b1c, %struct.Memory** %MEMORY

  %loadMem2_446b1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446b1c = load i64, i64* %3
  %call2_446b1c = call %struct.Memory* @sub_446f90.read_i32(%struct.State* %0, i64  %loadPC_446b1c, %struct.Memory* %loadMem2_446b1c)
  store %struct.Memory* %call2_446b1c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 446b21	 Bytes: 3
  %loadMem_446b21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b21 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b21)
  store %struct.Memory* %call_446b21, %struct.Memory** %MEMORY

  ; Code: jne .L_446b2f	 RIP: 446b24	 Bytes: 6
  %loadMem_446b24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b24 = call %struct.Memory* @routine_jne_.L_446b2f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b24, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_446b24, %struct.Memory** %MEMORY

  %loadBr_446b24 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446b24 = icmp eq i8 %loadBr_446b24, 1
  br i1 %cmpBr_446b24, label %block_.L_446b2f, label %block_446b2a

block_446b2a:
  ; Code: jmpq .L_446f6c	 RIP: 446b2a	 Bytes: 5
  %loadMem_446b2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b2a = call %struct.Memory* @routine_jmpq_.L_446f6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b2a, i64 1090, i64 5)
  store %struct.Memory* %call_446b2a, %struct.Memory** %MEMORY

  br label %block_.L_446f6c

  ; Code: .L_446b2f:	 RIP: 446b2f	 Bytes: 0
block_.L_446b2f:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446b2f	 Bytes: 4
  %loadMem_446b2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b2f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b2f)
  store %struct.Memory* %call_446b2f, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 446b33	 Bytes: 3
  %loadMem_446b33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b33 = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b33)
  store %struct.Memory* %call_446b33, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446b36	 Bytes: 4
  %loadMem_446b36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b36 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b36)
  store %struct.Memory* %call_446b36, %struct.Memory** %MEMORY

  ; Code: addq $0x20, %rax	 RIP: 446b3a	 Bytes: 4
  %loadMem_446b3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b3a = call %struct.Memory* @routine_addq__0x20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b3a)
  store %struct.Memory* %call_446b3a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 446b3e	 Bytes: 3
  %loadMem_446b3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b3e = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b3e)
  store %struct.Memory* %call_446b3e, %struct.Memory** %MEMORY

  ; Code: callq .read_i32	 RIP: 446b41	 Bytes: 5
  %loadMem1_446b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_446b41 = call %struct.Memory* @routine_callq_.read_i32(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_446b41, i64 1103, i64 5, i64 5)
  store %struct.Memory* %call1_446b41, %struct.Memory** %MEMORY

  %loadMem2_446b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446b41 = load i64, i64* %3
  %call2_446b41 = call %struct.Memory* @sub_446f90.read_i32(%struct.State* %0, i64  %loadPC_446b41, %struct.Memory* %loadMem2_446b41)
  store %struct.Memory* %call2_446b41, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 446b46	 Bytes: 3
  %loadMem_446b46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b46 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b46)
  store %struct.Memory* %call_446b46, %struct.Memory** %MEMORY

  ; Code: jne .L_446b54	 RIP: 446b49	 Bytes: 6
  %loadMem_446b49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b49 = call %struct.Memory* @routine_jne_.L_446b54(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b49, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_446b49, %struct.Memory** %MEMORY

  %loadBr_446b49 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446b49 = icmp eq i8 %loadBr_446b49, 1
  br i1 %cmpBr_446b49, label %block_.L_446b54, label %block_446b4f

block_446b4f:
  ; Code: jmpq .L_446f6c	 RIP: 446b4f	 Bytes: 5
  %loadMem_446b4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b4f = call %struct.Memory* @routine_jmpq_.L_446f6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b4f, i64 1053, i64 5)
  store %struct.Memory* %call_446b4f, %struct.Memory** %MEMORY

  br label %block_.L_446f6c

  ; Code: .L_446b54:	 RIP: 446b54	 Bytes: 0
block_.L_446b54:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446b54	 Bytes: 4
  %loadMem_446b54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b54 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b54)
  store %struct.Memory* %call_446b54, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 446b58	 Bytes: 3
  %loadMem_446b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b58 = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b58)
  store %struct.Memory* %call_446b58, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446b5b	 Bytes: 4
  %loadMem_446b5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b5b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b5b)
  store %struct.Memory* %call_446b5b, %struct.Memory** %MEMORY

  ; Code: addq $0x24, %rax	 RIP: 446b5f	 Bytes: 4
  %loadMem_446b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b5f = call %struct.Memory* @routine_addq__0x24___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b5f)
  store %struct.Memory* %call_446b5f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 446b63	 Bytes: 3
  %loadMem_446b63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b63 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b63)
  store %struct.Memory* %call_446b63, %struct.Memory** %MEMORY

  ; Code: callq .read_i32	 RIP: 446b66	 Bytes: 5
  %loadMem1_446b66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_446b66 = call %struct.Memory* @routine_callq_.read_i32(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_446b66, i64 1066, i64 5, i64 5)
  store %struct.Memory* %call1_446b66, %struct.Memory** %MEMORY

  %loadMem2_446b66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446b66 = load i64, i64* %3
  %call2_446b66 = call %struct.Memory* @sub_446f90.read_i32(%struct.State* %0, i64  %loadPC_446b66, %struct.Memory* %loadMem2_446b66)
  store %struct.Memory* %call2_446b66, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 446b6b	 Bytes: 3
  %loadMem_446b6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b6b = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b6b)
  store %struct.Memory* %call_446b6b, %struct.Memory** %MEMORY

  ; Code: jne .L_446b79	 RIP: 446b6e	 Bytes: 6
  %loadMem_446b6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b6e = call %struct.Memory* @routine_jne_.L_446b79(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b6e, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_446b6e, %struct.Memory** %MEMORY

  %loadBr_446b6e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446b6e = icmp eq i8 %loadBr_446b6e, 1
  br i1 %cmpBr_446b6e, label %block_.L_446b79, label %block_446b74

block_446b74:
  ; Code: jmpq .L_446f6c	 RIP: 446b74	 Bytes: 5
  %loadMem_446b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b74 = call %struct.Memory* @routine_jmpq_.L_446f6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b74, i64 1016, i64 5)
  store %struct.Memory* %call_446b74, %struct.Memory** %MEMORY

  br label %block_.L_446f6c

  ; Code: .L_446b79:	 RIP: 446b79	 Bytes: 0
block_.L_446b79:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446b79	 Bytes: 4
  %loadMem_446b79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b79 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b79)
  store %struct.Memory* %call_446b79, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 446b7d	 Bytes: 3
  %loadMem_446b7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b7d = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b7d)
  store %struct.Memory* %call_446b7d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446b80	 Bytes: 4
  %loadMem_446b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b80 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b80)
  store %struct.Memory* %call_446b80, %struct.Memory** %MEMORY

  ; Code: addq $0x28, %rax	 RIP: 446b84	 Bytes: 4
  %loadMem_446b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b84 = call %struct.Memory* @routine_addq__0x28___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b84)
  store %struct.Memory* %call_446b84, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 446b88	 Bytes: 3
  %loadMem_446b88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b88 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b88)
  store %struct.Memory* %call_446b88, %struct.Memory** %MEMORY

  ; Code: callq .read_i32	 RIP: 446b8b	 Bytes: 5
  %loadMem1_446b8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_446b8b = call %struct.Memory* @routine_callq_.read_i32(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_446b8b, i64 1029, i64 5, i64 5)
  store %struct.Memory* %call1_446b8b, %struct.Memory** %MEMORY

  %loadMem2_446b8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446b8b = load i64, i64* %3
  %call2_446b8b = call %struct.Memory* @sub_446f90.read_i32(%struct.State* %0, i64  %loadPC_446b8b, %struct.Memory* %loadMem2_446b8b)
  store %struct.Memory* %call2_446b8b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 446b90	 Bytes: 3
  %loadMem_446b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b90 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b90)
  store %struct.Memory* %call_446b90, %struct.Memory** %MEMORY

  ; Code: jne .L_446b9e	 RIP: 446b93	 Bytes: 6
  %loadMem_446b93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b93 = call %struct.Memory* @routine_jne_.L_446b9e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b93, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_446b93, %struct.Memory** %MEMORY

  %loadBr_446b93 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446b93 = icmp eq i8 %loadBr_446b93, 1
  br i1 %cmpBr_446b93, label %block_.L_446b9e, label %block_446b99

block_446b99:
  ; Code: jmpq .L_446f6c	 RIP: 446b99	 Bytes: 5
  %loadMem_446b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b99 = call %struct.Memory* @routine_jmpq_.L_446f6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b99, i64 979, i64 5)
  store %struct.Memory* %call_446b99, %struct.Memory** %MEMORY

  br label %block_.L_446f6c

  ; Code: .L_446b9e:	 RIP: 446b9e	 Bytes: 0
block_.L_446b9e:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446b9e	 Bytes: 4
  %loadMem_446b9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446b9e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446b9e)
  store %struct.Memory* %call_446b9e, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 446ba2	 Bytes: 3
  %loadMem_446ba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ba2 = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ba2)
  store %struct.Memory* %call_446ba2, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446ba5	 Bytes: 4
  %loadMem_446ba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ba5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ba5)
  store %struct.Memory* %call_446ba5, %struct.Memory** %MEMORY

  ; Code: addq $0x2c, %rax	 RIP: 446ba9	 Bytes: 4
  %loadMem_446ba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ba9 = call %struct.Memory* @routine_addq__0x2c___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ba9)
  store %struct.Memory* %call_446ba9, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 446bad	 Bytes: 3
  %loadMem_446bad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446bad = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446bad)
  store %struct.Memory* %call_446bad, %struct.Memory** %MEMORY

  ; Code: callq .read_i32	 RIP: 446bb0	 Bytes: 5
  %loadMem1_446bb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_446bb0 = call %struct.Memory* @routine_callq_.read_i32(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_446bb0, i64 992, i64 5, i64 5)
  store %struct.Memory* %call1_446bb0, %struct.Memory** %MEMORY

  %loadMem2_446bb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446bb0 = load i64, i64* %3
  %call2_446bb0 = call %struct.Memory* @sub_446f90.read_i32(%struct.State* %0, i64  %loadPC_446bb0, %struct.Memory* %loadMem2_446bb0)
  store %struct.Memory* %call2_446bb0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 446bb5	 Bytes: 3
  %loadMem_446bb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446bb5 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446bb5)
  store %struct.Memory* %call_446bb5, %struct.Memory** %MEMORY

  ; Code: jne .L_446bc3	 RIP: 446bb8	 Bytes: 6
  %loadMem_446bb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446bb8 = call %struct.Memory* @routine_jne_.L_446bc3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446bb8, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_446bb8, %struct.Memory** %MEMORY

  %loadBr_446bb8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446bb8 = icmp eq i8 %loadBr_446bb8, 1
  br i1 %cmpBr_446bb8, label %block_.L_446bc3, label %block_446bbe

block_446bbe:
  ; Code: jmpq .L_446f6c	 RIP: 446bbe	 Bytes: 5
  %loadMem_446bbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446bbe = call %struct.Memory* @routine_jmpq_.L_446f6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446bbe, i64 942, i64 5)
  store %struct.Memory* %call_446bbe, %struct.Memory** %MEMORY

  br label %block_.L_446f6c

  ; Code: .L_446bc3:	 RIP: 446bc3	 Bytes: 0
block_.L_446bc3:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446bc3	 Bytes: 4
  %loadMem_446bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446bc3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446bc3)
  store %struct.Memory* %call_446bc3, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 446bc7	 Bytes: 3
  %loadMem_446bc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446bc7 = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446bc7)
  store %struct.Memory* %call_446bc7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446bca	 Bytes: 4
  %loadMem_446bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446bca = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446bca)
  store %struct.Memory* %call_446bca, %struct.Memory** %MEMORY

  ; Code: movb 0x60(%rax), %cl	 RIP: 446bce	 Bytes: 3
  %loadMem_446bce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446bce = call %struct.Memory* @routine_movb_0x60__rax____cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446bce)
  store %struct.Memory* %call_446bce, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446bd1	 Bytes: 4
  %loadMem_446bd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446bd1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446bd1)
  store %struct.Memory* %call_446bd1, %struct.Memory** %MEMORY

  ; Code: addq $0x30, %rax	 RIP: 446bd5	 Bytes: 4
  %loadMem_446bd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446bd5 = call %struct.Memory* @routine_addq__0x30___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446bd5)
  store %struct.Memory* %call_446bd5, %struct.Memory** %MEMORY

  ; Code: movsbl %cl, %esi	 RIP: 446bd9	 Bytes: 3
  %loadMem_446bd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446bd9 = call %struct.Memory* @routine_movsbl__cl___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446bd9)
  store %struct.Memory* %call_446bd9, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 446bdc	 Bytes: 3
  %loadMem_446bdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446bdc = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446bdc)
  store %struct.Memory* %call_446bdc, %struct.Memory** %MEMORY

  ; Code: callq .read_offset	 RIP: 446bdf	 Bytes: 5
  %loadMem1_446bdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_446bdf = call %struct.Memory* @routine_callq_.read_offset(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_446bdf, i64 1169, i64 5, i64 5)
  store %struct.Memory* %call1_446bdf, %struct.Memory** %MEMORY

  %loadMem2_446bdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446bdf = load i64, i64* %3
  %call2_446bdf = call %struct.Memory* @sub_447070.read_offset(%struct.State* %0, i64  %loadPC_446bdf, %struct.Memory* %loadMem2_446bdf)
  store %struct.Memory* %call2_446bdf, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 446be4	 Bytes: 3
  %loadMem_446be4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446be4 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446be4)
  store %struct.Memory* %call_446be4, %struct.Memory** %MEMORY

  ; Code: jne .L_446bf2	 RIP: 446be7	 Bytes: 6
  %loadMem_446be7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446be7 = call %struct.Memory* @routine_jne_.L_446bf2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446be7, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_446be7, %struct.Memory** %MEMORY

  %loadBr_446be7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446be7 = icmp eq i8 %loadBr_446be7, 1
  br i1 %cmpBr_446be7, label %block_.L_446bf2, label %block_446bed

block_446bed:
  ; Code: jmpq .L_446f6c	 RIP: 446bed	 Bytes: 5
  %loadMem_446bed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446bed = call %struct.Memory* @routine_jmpq_.L_446f6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446bed, i64 895, i64 5)
  store %struct.Memory* %call_446bed, %struct.Memory** %MEMORY

  br label %block_.L_446f6c

  ; Code: .L_446bf2:	 RIP: 446bf2	 Bytes: 0
block_.L_446bf2:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446bf2	 Bytes: 4
  %loadMem_446bf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446bf2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446bf2)
  store %struct.Memory* %call_446bf2, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 446bf6	 Bytes: 3
  %loadMem_446bf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446bf6 = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446bf6)
  store %struct.Memory* %call_446bf6, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446bf9	 Bytes: 4
  %loadMem_446bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446bf9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446bf9)
  store %struct.Memory* %call_446bf9, %struct.Memory** %MEMORY

  ; Code: movb 0x60(%rax), %cl	 RIP: 446bfd	 Bytes: 3
  %loadMem_446bfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446bfd = call %struct.Memory* @routine_movb_0x60__rax____cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446bfd)
  store %struct.Memory* %call_446bfd, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446c00	 Bytes: 4
  %loadMem_446c00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c00 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c00)
  store %struct.Memory* %call_446c00, %struct.Memory** %MEMORY

  ; Code: addq $0x40, %rax	 RIP: 446c04	 Bytes: 4
  %loadMem_446c04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c04 = call %struct.Memory* @routine_addq__0x40___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c04)
  store %struct.Memory* %call_446c04, %struct.Memory** %MEMORY

  ; Code: movsbl %cl, %esi	 RIP: 446c08	 Bytes: 3
  %loadMem_446c08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c08 = call %struct.Memory* @routine_movsbl__cl___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c08)
  store %struct.Memory* %call_446c08, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 446c0b	 Bytes: 3
  %loadMem_446c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c0b = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c0b)
  store %struct.Memory* %call_446c0b, %struct.Memory** %MEMORY

  ; Code: callq .read_offset	 RIP: 446c0e	 Bytes: 5
  %loadMem1_446c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_446c0e = call %struct.Memory* @routine_callq_.read_offset(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_446c0e, i64 1122, i64 5, i64 5)
  store %struct.Memory* %call1_446c0e, %struct.Memory** %MEMORY

  %loadMem2_446c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446c0e = load i64, i64* %3
  %call2_446c0e = call %struct.Memory* @sub_447070.read_offset(%struct.State* %0, i64  %loadPC_446c0e, %struct.Memory* %loadMem2_446c0e)
  store %struct.Memory* %call2_446c0e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 446c13	 Bytes: 3
  %loadMem_446c13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c13 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c13)
  store %struct.Memory* %call_446c13, %struct.Memory** %MEMORY

  ; Code: jne .L_446c21	 RIP: 446c16	 Bytes: 6
  %loadMem_446c16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c16 = call %struct.Memory* @routine_jne_.L_446c21(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c16, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_446c16, %struct.Memory** %MEMORY

  %loadBr_446c16 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446c16 = icmp eq i8 %loadBr_446c16, 1
  br i1 %cmpBr_446c16, label %block_.L_446c21, label %block_446c1c

block_446c1c:
  ; Code: jmpq .L_446f6c	 RIP: 446c1c	 Bytes: 5
  %loadMem_446c1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c1c = call %struct.Memory* @routine_jmpq_.L_446f6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c1c, i64 848, i64 5)
  store %struct.Memory* %call_446c1c, %struct.Memory** %MEMORY

  br label %block_.L_446f6c

  ; Code: .L_446c21:	 RIP: 446c21	 Bytes: 0
block_.L_446c21:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446c21	 Bytes: 4
  %loadMem_446c21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c21 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c21)
  store %struct.Memory* %call_446c21, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 446c25	 Bytes: 3
  %loadMem_446c25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c25 = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c25)
  store %struct.Memory* %call_446c25, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446c28	 Bytes: 4
  %loadMem_446c28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c28 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c28)
  store %struct.Memory* %call_446c28, %struct.Memory** %MEMORY

  ; Code: movb 0x60(%rax), %cl	 RIP: 446c2c	 Bytes: 3
  %loadMem_446c2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c2c = call %struct.Memory* @routine_movb_0x60__rax____cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c2c)
  store %struct.Memory* %call_446c2c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446c2f	 Bytes: 4
  %loadMem_446c2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c2f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c2f)
  store %struct.Memory* %call_446c2f, %struct.Memory** %MEMORY

  ; Code: addq $0x50, %rax	 RIP: 446c33	 Bytes: 4
  %loadMem_446c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c33 = call %struct.Memory* @routine_addq__0x50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c33)
  store %struct.Memory* %call_446c33, %struct.Memory** %MEMORY

  ; Code: movsbl %cl, %esi	 RIP: 446c37	 Bytes: 3
  %loadMem_446c37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c37 = call %struct.Memory* @routine_movsbl__cl___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c37)
  store %struct.Memory* %call_446c37, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 446c3a	 Bytes: 3
  %loadMem_446c3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c3a = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c3a)
  store %struct.Memory* %call_446c3a, %struct.Memory** %MEMORY

  ; Code: callq .read_offset	 RIP: 446c3d	 Bytes: 5
  %loadMem1_446c3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_446c3d = call %struct.Memory* @routine_callq_.read_offset(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_446c3d, i64 1075, i64 5, i64 5)
  store %struct.Memory* %call1_446c3d, %struct.Memory** %MEMORY

  %loadMem2_446c3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446c3d = load i64, i64* %3
  %call2_446c3d = call %struct.Memory* @sub_447070.read_offset(%struct.State* %0, i64  %loadPC_446c3d, %struct.Memory* %loadMem2_446c3d)
  store %struct.Memory* %call2_446c3d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 446c42	 Bytes: 3
  %loadMem_446c42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c42 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c42)
  store %struct.Memory* %call_446c42, %struct.Memory** %MEMORY

  ; Code: jne .L_446c50	 RIP: 446c45	 Bytes: 6
  %loadMem_446c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c45 = call %struct.Memory* @routine_jne_.L_446c50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c45, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_446c45, %struct.Memory** %MEMORY

  %loadBr_446c45 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446c45 = icmp eq i8 %loadBr_446c45, 1
  br i1 %cmpBr_446c45, label %block_.L_446c50, label %block_446c4b

block_446c4b:
  ; Code: jmpq .L_446f6c	 RIP: 446c4b	 Bytes: 5
  %loadMem_446c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c4b = call %struct.Memory* @routine_jmpq_.L_446f6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c4b, i64 801, i64 5)
  store %struct.Memory* %call_446c4b, %struct.Memory** %MEMORY

  br label %block_.L_446f6c

  ; Code: .L_446c50:	 RIP: 446c50	 Bytes: 0
block_.L_446c50:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446c50	 Bytes: 4
  %loadMem_446c50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c50 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c50)
  store %struct.Memory* %call_446c50, %struct.Memory** %MEMORY

  ; Code: movzwl 0xc(%rax), %ecx	 RIP: 446c54	 Bytes: 4
  %loadMem_446c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c54 = call %struct.Memory* @routine_movzwl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c54)
  store %struct.Memory* %call_446c54, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 446c58	 Bytes: 3
  %loadMem_446c58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c58 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c58)
  store %struct.Memory* %call_446c58, %struct.Memory** %MEMORY

  ; Code: jne .L_446c66	 RIP: 446c5b	 Bytes: 6
  %loadMem_446c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c5b = call %struct.Memory* @routine_jne_.L_446c66(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c5b, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_446c5b, %struct.Memory** %MEMORY

  %loadBr_446c5b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446c5b = icmp eq i8 %loadBr_446c5b, 1
  br i1 %cmpBr_446c5b, label %block_.L_446c66, label %block_446c61

block_446c61:
  ; Code: jmpq .L_446f6c	 RIP: 446c61	 Bytes: 5
  %loadMem_446c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c61 = call %struct.Memory* @routine_jmpq_.L_446f6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c61, i64 779, i64 5)
  store %struct.Memory* %call_446c61, %struct.Memory** %MEMORY

  br label %block_.L_446f6c

  ; Code: .L_446c66:	 RIP: 446c66	 Bytes: 0
block_.L_446c66:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446c66	 Bytes: 4
  %loadMem_446c66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c66 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c66)
  store %struct.Memory* %call_446c66, %struct.Memory** %MEMORY

  ; Code: movzwl 0xc(%rax), %ecx	 RIP: 446c6a	 Bytes: 4
  %loadMem_446c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c6a = call %struct.Memory* @routine_movzwl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c6a)
  store %struct.Memory* %call_446c6a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 446c6e	 Bytes: 2
  %loadMem_446c6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c6e = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c6e)
  store %struct.Memory* %call_446c6e, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rax	 RIP: 446c70	 Bytes: 4
  %loadMem_446c70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c70 = call %struct.Memory* @routine_shlq__0x3___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c70)
  store %struct.Memory* %call_446c70, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 446c74	 Bytes: 3
  %loadMem_446c74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c74 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c74)
  store %struct.Memory* %call_446c74, %struct.Memory** %MEMORY

  ; Code: callq .malloc_plt	 RIP: 446c77	 Bytes: 5
  %loadMem1_446c77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_446c77 = call %struct.Memory* @routine_callq_.malloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_446c77, i64 -284327, i64 5, i64 5)
  store %struct.Memory* %call1_446c77, %struct.Memory** %MEMORY

  %loadMem2_446c77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446c77 = load i64, i64* %3
  %call2_446c77 = call %struct.Memory* @ext_malloc(%struct.State* %0, i64  %loadPC_446c77, %struct.Memory* %loadMem2_446c77)
  store %struct.Memory* %call2_446c77, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 446c7c	 Bytes: 4
  %loadMem_446c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c7c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c7c)
  store %struct.Memory* %call_446c7c, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x68(%rdi)	 RIP: 446c80	 Bytes: 4
  %loadMem_446c80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c80 = call %struct.Memory* @routine_movq__rax__0x68__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c80)
  store %struct.Memory* %call_446c80, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 446c84	 Bytes: 4
  %loadMem_446c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c84 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c84)
  store %struct.Memory* %call_446c84, %struct.Memory** %MEMORY

  ; Code: jne .L_446c9a	 RIP: 446c88	 Bytes: 6
  %loadMem_446c88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c88 = call %struct.Memory* @routine_jne_.L_446c9a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c88, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_446c88, %struct.Memory** %MEMORY

  %loadBr_446c88 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446c88 = icmp eq i8 %loadBr_446c88, 1
  br i1 %cmpBr_446c88, label %block_.L_446c9a, label %block_446c8e

block_446c8e:
  ; Code: movl $0x3, -0x1c(%rbp)	 RIP: 446c8e	 Bytes: 7
  %loadMem_446c8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c8e = call %struct.Memory* @routine_movl__0x3__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c8e)
  store %struct.Memory* %call_446c8e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_446f6c	 RIP: 446c95	 Bytes: 5
  %loadMem_446c95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c95 = call %struct.Memory* @routine_jmpq_.L_446f6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c95, i64 727, i64 5)
  store %struct.Memory* %call_446c95, %struct.Memory** %MEMORY

  br label %block_.L_446f6c

  ; Code: .L_446c9a:	 RIP: 446c9a	 Bytes: 0
block_.L_446c9a:

  ; Code: movw $0x0, -0x16(%rbp)	 RIP: 446c9a	 Bytes: 6
  %loadMem_446c9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446c9a = call %struct.Memory* @routine_movw__0x0__MINUS0x16__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446c9a)
  store %struct.Memory* %call_446c9a, %struct.Memory** %MEMORY

  ; Code: .L_446ca0:	 RIP: 446ca0	 Bytes: 0
  br label %block_.L_446ca0
block_.L_446ca0:

  ; Code: movzwl -0x16(%rbp), %eax	 RIP: 446ca0	 Bytes: 4
  %loadMem_446ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ca0 = call %struct.Memory* @routine_movzwl_MINUS0x16__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ca0)
  store %struct.Memory* %call_446ca0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 446ca4	 Bytes: 4
  %loadMem_446ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ca4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ca4)
  store %struct.Memory* %call_446ca4, %struct.Memory** %MEMORY

  ; Code: movzwl 0xc(%rcx), %edx	 RIP: 446ca8	 Bytes: 4
  %loadMem_446ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ca8 = call %struct.Memory* @routine_movzwl_0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ca8)
  store %struct.Memory* %call_446ca8, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %eax	 RIP: 446cac	 Bytes: 2
  %loadMem_446cac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446cac = call %struct.Memory* @routine_cmpl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446cac)
  store %struct.Memory* %call_446cac, %struct.Memory** %MEMORY

  ; Code: jge .L_446cdb	 RIP: 446cae	 Bytes: 6
  %loadMem_446cae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446cae = call %struct.Memory* @routine_jge_.L_446cdb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446cae, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_446cae, %struct.Memory** %MEMORY

  %loadBr_446cae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446cae = icmp eq i8 %loadBr_446cae, 1
  br i1 %cmpBr_446cae, label %block_.L_446cdb, label %block_446cb4

block_446cb4:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 446cb4	 Bytes: 4
  %loadMem_446cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446cb4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446cb4)
  store %struct.Memory* %call_446cb4, %struct.Memory** %MEMORY

  ; Code: movq 0x68(%rax), %rax	 RIP: 446cb8	 Bytes: 4
  %loadMem_446cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446cb8 = call %struct.Memory* @routine_movq_0x68__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446cb8)
  store %struct.Memory* %call_446cb8, %struct.Memory** %MEMORY

  ; Code: movzwl -0x16(%rbp), %ecx	 RIP: 446cbc	 Bytes: 4
  %loadMem_446cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446cbc = call %struct.Memory* @routine_movzwl_MINUS0x16__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446cbc)
  store %struct.Memory* %call_446cbc, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 446cc0	 Bytes: 2
  %loadMem_446cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446cc0 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446cc0)
  store %struct.Memory* %call_446cc0, %struct.Memory** %MEMORY

  ; Code: movq $0x0, (%rax,%rdx,8)	 RIP: 446cc2	 Bytes: 8
  %loadMem_446cc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446cc2 = call %struct.Memory* @routine_movq__0x0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446cc2)
  store %struct.Memory* %call_446cc2, %struct.Memory** %MEMORY

  ; Code: movw -0x16(%rbp), %ax	 RIP: 446cca	 Bytes: 4
  %loadMem_446cca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446cca = call %struct.Memory* @routine_movw_MINUS0x16__rbp____ax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446cca)
  store %struct.Memory* %call_446cca, %struct.Memory** %MEMORY

  ; Code: addw $0x1, %ax	 RIP: 446cce	 Bytes: 4
  %loadMem_446cce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446cce = call %struct.Memory* @routine_addw__0x1___ax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446cce)
  store %struct.Memory* %call_446cce, %struct.Memory** %MEMORY

  ; Code: movw %ax, -0x16(%rbp)	 RIP: 446cd2	 Bytes: 4
  %loadMem_446cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446cd2 = call %struct.Memory* @routine_movw__ax__MINUS0x16__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446cd2)
  store %struct.Memory* %call_446cd2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_446ca0	 RIP: 446cd6	 Bytes: 5
  %loadMem_446cd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446cd6 = call %struct.Memory* @routine_jmpq_.L_446ca0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446cd6, i64 -54, i64 5)
  store %struct.Memory* %call_446cd6, %struct.Memory** %MEMORY

  br label %block_.L_446ca0

  ; Code: .L_446cdb:	 RIP: 446cdb	 Bytes: 0
block_.L_446cdb:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446cdb	 Bytes: 4
  %loadMem_446cdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446cdb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446cdb)
  store %struct.Memory* %call_446cdb, %struct.Memory** %MEMORY

  ; Code: movzwl 0xc(%rax), %ecx	 RIP: 446cdf	 Bytes: 4
  %loadMem_446cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446cdf = call %struct.Memory* @routine_movzwl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446cdf)
  store %struct.Memory* %call_446cdf, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 446ce3	 Bytes: 2
  %loadMem_446ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ce3 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ce3)
  store %struct.Memory* %call_446ce3, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 446ce5	 Bytes: 4
  %loadMem_446ce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ce5 = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ce5)
  store %struct.Memory* %call_446ce5, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 446ce9	 Bytes: 3
  %loadMem_446ce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ce9 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ce9)
  store %struct.Memory* %call_446ce9, %struct.Memory** %MEMORY

  ; Code: callq .malloc_plt	 RIP: 446cec	 Bytes: 5
  %loadMem1_446cec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_446cec = call %struct.Memory* @routine_callq_.malloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_446cec, i64 -284444, i64 5, i64 5)
  store %struct.Memory* %call1_446cec, %struct.Memory** %MEMORY

  %loadMem2_446cec = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446cec = load i64, i64* %3
  %call2_446cec = call %struct.Memory* @ext_malloc(%struct.State* %0, i64  %loadPC_446cec, %struct.Memory* %loadMem2_446cec)
  store %struct.Memory* %call2_446cec, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 446cf1	 Bytes: 4
  %loadMem_446cf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446cf1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446cf1)
  store %struct.Memory* %call_446cf1, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x70(%rdi)	 RIP: 446cf5	 Bytes: 4
  %loadMem_446cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446cf5 = call %struct.Memory* @routine_movq__rax__0x70__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446cf5)
  store %struct.Memory* %call_446cf5, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 446cf9	 Bytes: 4
  %loadMem_446cf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446cf9 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446cf9)
  store %struct.Memory* %call_446cf9, %struct.Memory** %MEMORY

  ; Code: jne .L_446d0f	 RIP: 446cfd	 Bytes: 6
  %loadMem_446cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446cfd = call %struct.Memory* @routine_jne_.L_446d0f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446cfd, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_446cfd, %struct.Memory** %MEMORY

  %loadBr_446cfd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446cfd = icmp eq i8 %loadBr_446cfd, 1
  br i1 %cmpBr_446cfd, label %block_.L_446d0f, label %block_446d03

block_446d03:
  ; Code: movl $0x3, -0x1c(%rbp)	 RIP: 446d03	 Bytes: 7
  %loadMem_446d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446d03 = call %struct.Memory* @routine_movl__0x3__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446d03)
  store %struct.Memory* %call_446d03, %struct.Memory** %MEMORY

  ; Code: jmpq .L_446f6c	 RIP: 446d0a	 Bytes: 5
  %loadMem_446d0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446d0a = call %struct.Memory* @routine_jmpq_.L_446f6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446d0a, i64 610, i64 5)
  store %struct.Memory* %call_446d0a, %struct.Memory** %MEMORY

  br label %block_.L_446f6c

  ; Code: .L_446d0f:	 RIP: 446d0f	 Bytes: 0
block_.L_446d0f:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446d0f	 Bytes: 4
  %loadMem_446d0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446d0f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446d0f)
  store %struct.Memory* %call_446d0f, %struct.Memory** %MEMORY

  ; Code: movzwl 0xc(%rax), %ecx	 RIP: 446d13	 Bytes: 4
  %loadMem_446d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446d13 = call %struct.Memory* @routine_movzwl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446d13)
  store %struct.Memory* %call_446d13, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 446d17	 Bytes: 2
  %loadMem_446d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446d17 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446d17)
  store %struct.Memory* %call_446d17, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 446d19	 Bytes: 4
  %loadMem_446d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446d19 = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446d19)
  store %struct.Memory* %call_446d19, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 446d1d	 Bytes: 3
  %loadMem_446d1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446d1d = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446d1d)
  store %struct.Memory* %call_446d1d, %struct.Memory** %MEMORY

  ; Code: callq .malloc_plt	 RIP: 446d20	 Bytes: 5
  %loadMem1_446d20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_446d20 = call %struct.Memory* @routine_callq_.malloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_446d20, i64 -284496, i64 5, i64 5)
  store %struct.Memory* %call1_446d20, %struct.Memory** %MEMORY

  %loadMem2_446d20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446d20 = load i64, i64* %3
  %call2_446d20 = call %struct.Memory* @ext_malloc(%struct.State* %0, i64  %loadPC_446d20, %struct.Memory* %loadMem2_446d20)
  store %struct.Memory* %call2_446d20, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 446d25	 Bytes: 4
  %loadMem_446d25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446d25 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446d25)
  store %struct.Memory* %call_446d25, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x78(%rdi)	 RIP: 446d29	 Bytes: 4
  %loadMem_446d29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446d29 = call %struct.Memory* @routine_movq__rax__0x78__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446d29)
  store %struct.Memory* %call_446d29, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 446d2d	 Bytes: 4
  %loadMem_446d2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446d2d = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446d2d)
  store %struct.Memory* %call_446d2d, %struct.Memory** %MEMORY

  ; Code: jne .L_446d43	 RIP: 446d31	 Bytes: 6
  %loadMem_446d31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446d31 = call %struct.Memory* @routine_jne_.L_446d43(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446d31, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_446d31, %struct.Memory** %MEMORY

  %loadBr_446d31 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446d31 = icmp eq i8 %loadBr_446d31, 1
  br i1 %cmpBr_446d31, label %block_.L_446d43, label %block_446d37

block_446d37:
  ; Code: movl $0x3, -0x1c(%rbp)	 RIP: 446d37	 Bytes: 7
  %loadMem_446d37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446d37 = call %struct.Memory* @routine_movl__0x3__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446d37)
  store %struct.Memory* %call_446d37, %struct.Memory** %MEMORY

  ; Code: jmpq .L_446f6c	 RIP: 446d3e	 Bytes: 5
  %loadMem_446d3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446d3e = call %struct.Memory* @routine_jmpq_.L_446f6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446d3e, i64 558, i64 5)
  store %struct.Memory* %call_446d3e, %struct.Memory** %MEMORY

  br label %block_.L_446f6c

  ; Code: .L_446d43:	 RIP: 446d43	 Bytes: 0
block_.L_446d43:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446d43	 Bytes: 4
  %loadMem_446d43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446d43 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446d43)
  store %struct.Memory* %call_446d43, %struct.Memory** %MEMORY

  ; Code: movzwl 0xc(%rax), %ecx	 RIP: 446d47	 Bytes: 4
  %loadMem_446d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446d47 = call %struct.Memory* @routine_movzwl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446d47)
  store %struct.Memory* %call_446d47, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 446d4b	 Bytes: 2
  %loadMem_446d4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446d4b = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446d4b)
  store %struct.Memory* %call_446d4b, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 446d4d	 Bytes: 4
  %loadMem_446d4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446d4d = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446d4d)
  store %struct.Memory* %call_446d4d, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 446d51	 Bytes: 3
  %loadMem_446d51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446d51 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446d51)
  store %struct.Memory* %call_446d51, %struct.Memory** %MEMORY

  ; Code: callq .malloc_plt	 RIP: 446d54	 Bytes: 5
  %loadMem1_446d54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_446d54 = call %struct.Memory* @routine_callq_.malloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_446d54, i64 -284548, i64 5, i64 5)
  store %struct.Memory* %call1_446d54, %struct.Memory** %MEMORY

  %loadMem2_446d54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446d54 = load i64, i64* %3
  %call2_446d54 = call %struct.Memory* @ext_malloc(%struct.State* %0, i64  %loadPC_446d54, %struct.Memory* %loadMem2_446d54)
  store %struct.Memory* %call2_446d54, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 446d59	 Bytes: 4
  %loadMem_446d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446d59 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446d59)
  store %struct.Memory* %call_446d59, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x80(%rdi)	 RIP: 446d5d	 Bytes: 7
  %loadMem_446d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446d5d = call %struct.Memory* @routine_movq__rax__0x80__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446d5d)
  store %struct.Memory* %call_446d5d, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 446d64	 Bytes: 4
  %loadMem_446d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446d64 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446d64)
  store %struct.Memory* %call_446d64, %struct.Memory** %MEMORY

  ; Code: jne .L_446d7a	 RIP: 446d68	 Bytes: 6
  %loadMem_446d68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446d68 = call %struct.Memory* @routine_jne_.L_446d7a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446d68, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_446d68, %struct.Memory** %MEMORY

  %loadBr_446d68 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446d68 = icmp eq i8 %loadBr_446d68, 1
  br i1 %cmpBr_446d68, label %block_.L_446d7a, label %block_446d6e

block_446d6e:
  ; Code: movl $0x3, -0x1c(%rbp)	 RIP: 446d6e	 Bytes: 7
  %loadMem_446d6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446d6e = call %struct.Memory* @routine_movl__0x3__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446d6e)
  store %struct.Memory* %call_446d6e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_446f6c	 RIP: 446d75	 Bytes: 5
  %loadMem_446d75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446d75 = call %struct.Memory* @routine_jmpq_.L_446f6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446d75, i64 503, i64 5)
  store %struct.Memory* %call_446d75, %struct.Memory** %MEMORY

  br label %block_.L_446f6c

  ; Code: .L_446d7a:	 RIP: 446d7a	 Bytes: 0
block_.L_446d7a:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446d7a	 Bytes: 4
  %loadMem_446d7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446d7a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446d7a)
  store %struct.Memory* %call_446d7a, %struct.Memory** %MEMORY

  ; Code: movzwl 0xc(%rax), %ecx	 RIP: 446d7e	 Bytes: 4
  %loadMem_446d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446d7e = call %struct.Memory* @routine_movzwl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446d7e)
  store %struct.Memory* %call_446d7e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 446d82	 Bytes: 2
  %loadMem_446d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446d82 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446d82)
  store %struct.Memory* %call_446d82, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 446d84	 Bytes: 4
  %loadMem_446d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446d84 = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446d84)
  store %struct.Memory* %call_446d84, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 446d88	 Bytes: 3
  %loadMem_446d88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446d88 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446d88)
  store %struct.Memory* %call_446d88, %struct.Memory** %MEMORY

  ; Code: callq .malloc_plt	 RIP: 446d8b	 Bytes: 5
  %loadMem1_446d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_446d8b = call %struct.Memory* @routine_callq_.malloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_446d8b, i64 -284603, i64 5, i64 5)
  store %struct.Memory* %call1_446d8b, %struct.Memory** %MEMORY

  %loadMem2_446d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446d8b = load i64, i64* %3
  %call2_446d8b = call %struct.Memory* @ext_malloc(%struct.State* %0, i64  %loadPC_446d8b, %struct.Memory* %loadMem2_446d8b)
  store %struct.Memory* %call2_446d8b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 446d90	 Bytes: 4
  %loadMem_446d90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446d90 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446d90)
  store %struct.Memory* %call_446d90, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x88(%rdi)	 RIP: 446d94	 Bytes: 7
  %loadMem_446d94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446d94 = call %struct.Memory* @routine_movq__rax__0x88__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446d94)
  store %struct.Memory* %call_446d94, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 446d9b	 Bytes: 4
  %loadMem_446d9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446d9b = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446d9b)
  store %struct.Memory* %call_446d9b, %struct.Memory** %MEMORY

  ; Code: jne .L_446db1	 RIP: 446d9f	 Bytes: 6
  %loadMem_446d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446d9f = call %struct.Memory* @routine_jne_.L_446db1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446d9f, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_446d9f, %struct.Memory** %MEMORY

  %loadBr_446d9f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446d9f = icmp eq i8 %loadBr_446d9f, 1
  br i1 %cmpBr_446d9f, label %block_.L_446db1, label %block_446da5

block_446da5:
  ; Code: movl $0x3, -0x1c(%rbp)	 RIP: 446da5	 Bytes: 7
  %loadMem_446da5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446da5 = call %struct.Memory* @routine_movl__0x3__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446da5)
  store %struct.Memory* %call_446da5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_446f6c	 RIP: 446dac	 Bytes: 5
  %loadMem_446dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446dac = call %struct.Memory* @routine_jmpq_.L_446f6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446dac, i64 448, i64 5)
  store %struct.Memory* %call_446dac, %struct.Memory** %MEMORY

  br label %block_.L_446f6c

  ; Code: .L_446db1:	 RIP: 446db1	 Bytes: 0
block_.L_446db1:

  ; Code: movw $0x0, -0x16(%rbp)	 RIP: 446db1	 Bytes: 6
  %loadMem_446db1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446db1 = call %struct.Memory* @routine_movw__0x0__MINUS0x16__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446db1)
  store %struct.Memory* %call_446db1, %struct.Memory** %MEMORY

  ; Code: .L_446db7:	 RIP: 446db7	 Bytes: 0
  br label %block_.L_446db7
block_.L_446db7:

  ; Code: movzwl -0x16(%rbp), %eax	 RIP: 446db7	 Bytes: 4
  %loadMem_446db7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446db7 = call %struct.Memory* @routine_movzwl_MINUS0x16__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446db7)
  store %struct.Memory* %call_446db7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 446dbb	 Bytes: 4
  %loadMem_446dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446dbb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446dbb)
  store %struct.Memory* %call_446dbb, %struct.Memory** %MEMORY

  ; Code: movzwl 0xc(%rcx), %edx	 RIP: 446dbf	 Bytes: 4
  %loadMem_446dbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446dbf = call %struct.Memory* @routine_movzwl_0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446dbf)
  store %struct.Memory* %call_446dbf, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %eax	 RIP: 446dc3	 Bytes: 2
  %loadMem_446dc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446dc3 = call %struct.Memory* @routine_cmpl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446dc3)
  store %struct.Memory* %call_446dc3, %struct.Memory** %MEMORY

  ; Code: jge .L_446f60	 RIP: 446dc5	 Bytes: 6
  %loadMem_446dc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446dc5 = call %struct.Memory* @routine_jge_.L_446f60(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446dc5, i8* %BRANCH_TAKEN, i64 411, i64 6, i64 6)
  store %struct.Memory* %call_446dc5, %struct.Memory** %MEMORY

  %loadBr_446dc5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446dc5 = icmp eq i8 %loadBr_446dc5, 1
  br i1 %cmpBr_446dc5, label %block_.L_446f60, label %block_446dcb

block_446dcb:
  ; Code: movq -0x10(%rbp), %rdi	 RIP: 446dcb	 Bytes: 4
  %loadMem_446dcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446dcb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446dcb)
  store %struct.Memory* %call_446dcb, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446dcf	 Bytes: 4
  %loadMem_446dcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446dcf = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446dcf)
  store %struct.Memory* %call_446dcf, %struct.Memory** %MEMORY

  ; Code: addq $0x30, %rax	 RIP: 446dd3	 Bytes: 4
  %loadMem_446dd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446dd3 = call %struct.Memory* @routine_addq__0x30___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446dd3)
  store %struct.Memory* %call_446dd3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 446dd7	 Bytes: 4
  %loadMem_446dd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446dd7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446dd7)
  store %struct.Memory* %call_446dd7, %struct.Memory** %MEMORY

  ; Code: movl 0x24(%rcx), %edx	 RIP: 446ddb	 Bytes: 3
  %loadMem_446ddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ddb = call %struct.Memory* @routine_movl_0x24__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ddb)
  store %struct.Memory* %call_446ddb, %struct.Memory** %MEMORY

  ; Code: movzwl -0x16(%rbp), %ecx	 RIP: 446dde	 Bytes: 4
  %loadMem_446dde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446dde = call %struct.Memory* @routine_movzwl_MINUS0x16__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446dde)
  store %struct.Memory* %call_446dde, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 446de2	 Bytes: 3
  %loadMem_446de2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446de2 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446de2)
  store %struct.Memory* %call_446de2, %struct.Memory** %MEMORY

  ; Code: callq .indexfile_position	 RIP: 446de5	 Bytes: 5
  %loadMem1_446de5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_446de5 = call %struct.Memory* @routine_callq_.indexfile_position(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_446de5, i64 843, i64 5, i64 5)
  store %struct.Memory* %call1_446de5, %struct.Memory** %MEMORY

  %loadMem2_446de5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446de5 = load i64, i64* %3
  %call2_446de5 = call %struct.Memory* @sub_447130.indexfile_position(%struct.State* %0, i64  %loadPC_446de5, %struct.Memory* %loadMem2_446de5)
  store %struct.Memory* %call2_446de5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 446dea	 Bytes: 3
  %loadMem_446dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446dea = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446dea)
  store %struct.Memory* %call_446dea, %struct.Memory** %MEMORY

  ; Code: je .L_446df8	 RIP: 446ded	 Bytes: 6
  %loadMem_446ded = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ded = call %struct.Memory* @routine_je_.L_446df8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ded, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_446ded, %struct.Memory** %MEMORY

  %loadBr_446ded = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446ded = icmp eq i8 %loadBr_446ded, 1
  br i1 %cmpBr_446ded, label %block_.L_446df8, label %block_446df3

block_446df3:
  ; Code: jmpq .L_446f6c	 RIP: 446df3	 Bytes: 5
  %loadMem_446df3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446df3 = call %struct.Memory* @routine_jmpq_.L_446f6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446df3, i64 377, i64 5)
  store %struct.Memory* %call_446df3, %struct.Memory** %MEMORY

  br label %block_.L_446f6c

  ; Code: .L_446df8:	 RIP: 446df8	 Bytes: 0
block_.L_446df8:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446df8	 Bytes: 4
  %loadMem_446df8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446df8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446df8)
  store %struct.Memory* %call_446df8, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rax), %ecx	 RIP: 446dfc	 Bytes: 3
  %loadMem_446dfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446dfc = call %struct.Memory* @routine_movl_0x18__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446dfc)
  store %struct.Memory* %call_446dfc, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 446dff	 Bytes: 2
  %loadMem_446dff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446dff = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446dff)
  store %struct.Memory* %call_446dff, %struct.Memory** %MEMORY

  ; Code: shlq $0x0, %rax	 RIP: 446e01	 Bytes: 4
  %loadMem_446e01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e01 = call %struct.Memory* @routine_shlq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e01)
  store %struct.Memory* %call_446e01, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 446e05	 Bytes: 3
  %loadMem_446e05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e05 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e05)
  store %struct.Memory* %call_446e05, %struct.Memory** %MEMORY

  ; Code: callq .malloc_plt	 RIP: 446e08	 Bytes: 5
  %loadMem1_446e08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_446e08 = call %struct.Memory* @routine_callq_.malloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_446e08, i64 -284728, i64 5, i64 5)
  store %struct.Memory* %call1_446e08, %struct.Memory** %MEMORY

  %loadMem2_446e08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446e08 = load i64, i64* %3
  %call2_446e08 = call %struct.Memory* @ext_malloc(%struct.State* %0, i64  %loadPC_446e08, %struct.Memory* %loadMem2_446e08)
  store %struct.Memory* %call2_446e08, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 446e0d	 Bytes: 4
  %loadMem_446e0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e0d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e0d)
  store %struct.Memory* %call_446e0d, %struct.Memory** %MEMORY

  ; Code: movq 0x68(%rdi), %rdi	 RIP: 446e11	 Bytes: 4
  %loadMem_446e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e11 = call %struct.Memory* @routine_movq_0x68__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e11)
  store %struct.Memory* %call_446e11, %struct.Memory** %MEMORY

  ; Code: movzwl -0x16(%rbp), %ecx	 RIP: 446e15	 Bytes: 4
  %loadMem_446e15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e15 = call %struct.Memory* @routine_movzwl_MINUS0x16__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e15)
  store %struct.Memory* %call_446e15, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 446e19	 Bytes: 2
  %loadMem_446e19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e19 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e19)
  store %struct.Memory* %call_446e19, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdi,%rdx,8)	 RIP: 446e1b	 Bytes: 4
  %loadMem_446e1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e1b = call %struct.Memory* @routine_movq__rax____rdi__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e1b)
  store %struct.Memory* %call_446e1b, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 446e1f	 Bytes: 4
  %loadMem_446e1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e1f = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e1f)
  store %struct.Memory* %call_446e1f, %struct.Memory** %MEMORY

  ; Code: jne .L_446e35	 RIP: 446e23	 Bytes: 6
  %loadMem_446e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e23 = call %struct.Memory* @routine_jne_.L_446e35(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e23, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_446e23, %struct.Memory** %MEMORY

  %loadBr_446e23 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446e23 = icmp eq i8 %loadBr_446e23, 1
  br i1 %cmpBr_446e23, label %block_.L_446e35, label %block_446e29

block_446e29:
  ; Code: movl $0x3, -0x1c(%rbp)	 RIP: 446e29	 Bytes: 7
  %loadMem_446e29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e29 = call %struct.Memory* @routine_movl__0x3__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e29)
  store %struct.Memory* %call_446e29, %struct.Memory** %MEMORY

  ; Code: jmpq .L_446f6c	 RIP: 446e30	 Bytes: 5
  %loadMem_446e30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e30 = call %struct.Memory* @routine_jmpq_.L_446f6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e30, i64 316, i64 5)
  store %struct.Memory* %call_446e30, %struct.Memory** %MEMORY

  br label %block_.L_446f6c

  ; Code: .L_446e35:	 RIP: 446e35	 Bytes: 0
block_.L_446e35:

  ; Code: movl $0x1, %eax	 RIP: 446e35	 Bytes: 5
  %loadMem_446e35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e35 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e35)
  store %struct.Memory* %call_446e35, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 446e3a	 Bytes: 2
  %loadMem_446e3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e3a = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e3a)
  store %struct.Memory* %call_446e3a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 446e3c	 Bytes: 4
  %loadMem_446e3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e3c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e3c)
  store %struct.Memory* %call_446e3c, %struct.Memory** %MEMORY

  ; Code: movq 0x68(%rcx), %rcx	 RIP: 446e40	 Bytes: 4
  %loadMem_446e40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e40 = call %struct.Memory* @routine_movq_0x68__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e40)
  store %struct.Memory* %call_446e40, %struct.Memory** %MEMORY

  ; Code: movzwl -0x16(%rbp), %eax	 RIP: 446e44	 Bytes: 4
  %loadMem_446e44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e44 = call %struct.Memory* @routine_movzwl_MINUS0x16__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e44)
  store %struct.Memory* %call_446e44, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 446e48	 Bytes: 2
  %loadMem_446e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e48 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e48)
  store %struct.Memory* %call_446e48, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rdi	 RIP: 446e4a	 Bytes: 4
  %loadMem_446e4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e4a = call %struct.Memory* @routine_movq___rcx__rdx_8____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e4a)
  store %struct.Memory* %call_446e4a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 446e4e	 Bytes: 4
  %loadMem_446e4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e4e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e4e)
  store %struct.Memory* %call_446e4e, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rcx), %eax	 RIP: 446e52	 Bytes: 3
  %loadMem_446e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e52 = call %struct.Memory* @routine_movl_0x18__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e52)
  store %struct.Memory* %call_446e52, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 446e55	 Bytes: 2
  %loadMem_446e55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e55 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e55)
  store %struct.Memory* %call_446e55, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 446e57	 Bytes: 4
  %loadMem_446e57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e57 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e57)
  store %struct.Memory* %call_446e57, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 446e5b	 Bytes: 3
  %loadMem_446e5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e5b = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e5b)
  store %struct.Memory* %call_446e5b, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 446e5e	 Bytes: 5
  %loadMem1_446e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_446e5e = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_446e5e, i64 -285262, i64 5, i64 5)
  store %struct.Memory* %call1_446e5e, %struct.Memory** %MEMORY

  %loadMem2_446e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446e5e = load i64, i64* %3
  %call2_446e5e = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_446e5e, %struct.Memory* %loadMem2_446e5e)
  store %struct.Memory* %call2_446e5e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 446e63	 Bytes: 4
  %loadMem_446e63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e63 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e63)
  store %struct.Memory* %call_446e63, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rcx), %r8d	 RIP: 446e67	 Bytes: 4
  %loadMem_446e67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e67 = call %struct.Memory* @routine_movl_0x18__rcx____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e67)
  store %struct.Memory* %call_446e67, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %ecx	 RIP: 446e6b	 Bytes: 3
  %loadMem_446e6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e6b = call %struct.Memory* @routine_movl__r8d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e6b)
  store %struct.Memory* %call_446e6b, %struct.Memory** %MEMORY

  ; Code: cmpq %rcx, %rax	 RIP: 446e6e	 Bytes: 3
  %loadMem_446e6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e6e = call %struct.Memory* @routine_cmpq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e6e)
  store %struct.Memory* %call_446e6e, %struct.Memory** %MEMORY

  ; Code: je .L_446e7c	 RIP: 446e71	 Bytes: 6
  %loadMem_446e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e71 = call %struct.Memory* @routine_je_.L_446e7c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e71, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_446e71, %struct.Memory** %MEMORY

  %loadBr_446e71 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446e71 = icmp eq i8 %loadBr_446e71, 1
  br i1 %cmpBr_446e71, label %block_.L_446e7c, label %block_446e77

block_446e77:
  ; Code: jmpq .L_446f6c	 RIP: 446e77	 Bytes: 5
  %loadMem_446e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e77 = call %struct.Memory* @routine_jmpq_.L_446f6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e77, i64 245, i64 5)
  store %struct.Memory* %call_446e77, %struct.Memory** %MEMORY

  br label %block_.L_446f6c

  ; Code: .L_446e7c:	 RIP: 446e7c	 Bytes: 0
block_.L_446e7c:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446e7c	 Bytes: 4
  %loadMem_446e7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e7c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e7c)
  store %struct.Memory* %call_446e7c, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 446e80	 Bytes: 3
  %loadMem_446e80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e80 = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e80)
  store %struct.Memory* %call_446e80, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446e83	 Bytes: 4
  %loadMem_446e83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e83 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e83)
  store %struct.Memory* %call_446e83, %struct.Memory** %MEMORY

  ; Code: movq 0x70(%rax), %rax	 RIP: 446e87	 Bytes: 4
  %loadMem_446e87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e87 = call %struct.Memory* @routine_movq_0x70__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e87)
  store %struct.Memory* %call_446e87, %struct.Memory** %MEMORY

  ; Code: movzwl -0x16(%rbp), %ecx	 RIP: 446e8b	 Bytes: 4
  %loadMem_446e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e8b = call %struct.Memory* @routine_movzwl_MINUS0x16__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e8b)
  store %struct.Memory* %call_446e8b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 446e8f	 Bytes: 2
  %loadMem_446e8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e8f = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e8f)
  store %struct.Memory* %call_446e8f, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rdx	 RIP: 446e91	 Bytes: 4
  %loadMem_446e91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e91 = call %struct.Memory* @routine_shlq__0x2___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e91)
  store %struct.Memory* %call_446e91, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 446e95	 Bytes: 3
  %loadMem_446e95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e95 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e95)
  store %struct.Memory* %call_446e95, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 446e98	 Bytes: 3
  %loadMem_446e98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446e98 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446e98)
  store %struct.Memory* %call_446e98, %struct.Memory** %MEMORY

  ; Code: callq .read_i32	 RIP: 446e9b	 Bytes: 5
  %loadMem1_446e9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_446e9b = call %struct.Memory* @routine_callq_.read_i32(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_446e9b, i64 245, i64 5, i64 5)
  store %struct.Memory* %call1_446e9b, %struct.Memory** %MEMORY

  %loadMem2_446e9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446e9b = load i64, i64* %3
  %call2_446e9b = call %struct.Memory* @sub_446f90.read_i32(%struct.State* %0, i64  %loadPC_446e9b, %struct.Memory* %loadMem2_446e9b)
  store %struct.Memory* %call2_446e9b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 446ea0	 Bytes: 3
  %loadMem_446ea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ea0 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ea0)
  store %struct.Memory* %call_446ea0, %struct.Memory** %MEMORY

  ; Code: jne .L_446eae	 RIP: 446ea3	 Bytes: 6
  %loadMem_446ea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ea3 = call %struct.Memory* @routine_jne_.L_446eae(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ea3, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_446ea3, %struct.Memory** %MEMORY

  %loadBr_446ea3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446ea3 = icmp eq i8 %loadBr_446ea3, 1
  br i1 %cmpBr_446ea3, label %block_.L_446eae, label %block_446ea9

block_446ea9:
  ; Code: jmpq .L_446f6c	 RIP: 446ea9	 Bytes: 5
  %loadMem_446ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ea9 = call %struct.Memory* @routine_jmpq_.L_446f6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ea9, i64 195, i64 5)
  store %struct.Memory* %call_446ea9, %struct.Memory** %MEMORY

  br label %block_.L_446f6c

  ; Code: .L_446eae:	 RIP: 446eae	 Bytes: 0
block_.L_446eae:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446eae	 Bytes: 4
  %loadMem_446eae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446eae = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446eae)
  store %struct.Memory* %call_446eae, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 446eb2	 Bytes: 3
  %loadMem_446eb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446eb2 = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446eb2)
  store %struct.Memory* %call_446eb2, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446eb5	 Bytes: 4
  %loadMem_446eb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446eb5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446eb5)
  store %struct.Memory* %call_446eb5, %struct.Memory** %MEMORY

  ; Code: movq 0x78(%rax), %rax	 RIP: 446eb9	 Bytes: 4
  %loadMem_446eb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446eb9 = call %struct.Memory* @routine_movq_0x78__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446eb9)
  store %struct.Memory* %call_446eb9, %struct.Memory** %MEMORY

  ; Code: movzwl -0x16(%rbp), %ecx	 RIP: 446ebd	 Bytes: 4
  %loadMem_446ebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ebd = call %struct.Memory* @routine_movzwl_MINUS0x16__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ebd)
  store %struct.Memory* %call_446ebd, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 446ec1	 Bytes: 2
  %loadMem_446ec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ec1 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ec1)
  store %struct.Memory* %call_446ec1, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rdx	 RIP: 446ec3	 Bytes: 4
  %loadMem_446ec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ec3 = call %struct.Memory* @routine_shlq__0x2___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ec3)
  store %struct.Memory* %call_446ec3, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 446ec7	 Bytes: 3
  %loadMem_446ec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ec7 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ec7)
  store %struct.Memory* %call_446ec7, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 446eca	 Bytes: 3
  %loadMem_446eca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446eca = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446eca)
  store %struct.Memory* %call_446eca, %struct.Memory** %MEMORY

  ; Code: callq .read_i32	 RIP: 446ecd	 Bytes: 5
  %loadMem1_446ecd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_446ecd = call %struct.Memory* @routine_callq_.read_i32(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_446ecd, i64 195, i64 5, i64 5)
  store %struct.Memory* %call1_446ecd, %struct.Memory** %MEMORY

  %loadMem2_446ecd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446ecd = load i64, i64* %3
  %call2_446ecd = call %struct.Memory* @sub_446f90.read_i32(%struct.State* %0, i64  %loadPC_446ecd, %struct.Memory* %loadMem2_446ecd)
  store %struct.Memory* %call2_446ecd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 446ed2	 Bytes: 3
  %loadMem_446ed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ed2 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ed2)
  store %struct.Memory* %call_446ed2, %struct.Memory** %MEMORY

  ; Code: jne .L_446ee0	 RIP: 446ed5	 Bytes: 6
  %loadMem_446ed5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ed5 = call %struct.Memory* @routine_jne_.L_446ee0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ed5, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_446ed5, %struct.Memory** %MEMORY

  %loadBr_446ed5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446ed5 = icmp eq i8 %loadBr_446ed5, 1
  br i1 %cmpBr_446ed5, label %block_.L_446ee0, label %block_446edb

block_446edb:
  ; Code: jmpq .L_446f6c	 RIP: 446edb	 Bytes: 5
  %loadMem_446edb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446edb = call %struct.Memory* @routine_jmpq_.L_446f6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446edb, i64 145, i64 5)
  store %struct.Memory* %call_446edb, %struct.Memory** %MEMORY

  br label %block_.L_446f6c

  ; Code: .L_446ee0:	 RIP: 446ee0	 Bytes: 0
block_.L_446ee0:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446ee0	 Bytes: 4
  %loadMem_446ee0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ee0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ee0)
  store %struct.Memory* %call_446ee0, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 446ee4	 Bytes: 3
  %loadMem_446ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ee4 = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ee4)
  store %struct.Memory* %call_446ee4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446ee7	 Bytes: 4
  %loadMem_446ee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ee7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ee7)
  store %struct.Memory* %call_446ee7, %struct.Memory** %MEMORY

  ; Code: movq 0x80(%rax), %rax	 RIP: 446eeb	 Bytes: 7
  %loadMem_446eeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446eeb = call %struct.Memory* @routine_movq_0x80__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446eeb)
  store %struct.Memory* %call_446eeb, %struct.Memory** %MEMORY

  ; Code: movzwl -0x16(%rbp), %ecx	 RIP: 446ef2	 Bytes: 4
  %loadMem_446ef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ef2 = call %struct.Memory* @routine_movzwl_MINUS0x16__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ef2)
  store %struct.Memory* %call_446ef2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 446ef6	 Bytes: 2
  %loadMem_446ef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ef6 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ef6)
  store %struct.Memory* %call_446ef6, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rdx	 RIP: 446ef8	 Bytes: 4
  %loadMem_446ef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446ef8 = call %struct.Memory* @routine_shlq__0x2___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446ef8)
  store %struct.Memory* %call_446ef8, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 446efc	 Bytes: 3
  %loadMem_446efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446efc = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446efc)
  store %struct.Memory* %call_446efc, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 446eff	 Bytes: 3
  %loadMem_446eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446eff = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446eff)
  store %struct.Memory* %call_446eff, %struct.Memory** %MEMORY

  ; Code: callq .read_i32	 RIP: 446f02	 Bytes: 5
  %loadMem1_446f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_446f02 = call %struct.Memory* @routine_callq_.read_i32(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_446f02, i64 142, i64 5, i64 5)
  store %struct.Memory* %call1_446f02, %struct.Memory** %MEMORY

  %loadMem2_446f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446f02 = load i64, i64* %3
  %call2_446f02 = call %struct.Memory* @sub_446f90.read_i32(%struct.State* %0, i64  %loadPC_446f02, %struct.Memory* %loadMem2_446f02)
  store %struct.Memory* %call2_446f02, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 446f07	 Bytes: 3
  %loadMem_446f07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446f07 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446f07)
  store %struct.Memory* %call_446f07, %struct.Memory** %MEMORY

  ; Code: jne .L_446f15	 RIP: 446f0a	 Bytes: 6
  %loadMem_446f0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446f0a = call %struct.Memory* @routine_jne_.L_446f15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446f0a, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_446f0a, %struct.Memory** %MEMORY

  %loadBr_446f0a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446f0a = icmp eq i8 %loadBr_446f0a, 1
  br i1 %cmpBr_446f0a, label %block_.L_446f15, label %block_446f10

block_446f10:
  ; Code: jmpq .L_446f6c	 RIP: 446f10	 Bytes: 5
  %loadMem_446f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446f10 = call %struct.Memory* @routine_jmpq_.L_446f6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446f10, i64 92, i64 5)
  store %struct.Memory* %call_446f10, %struct.Memory** %MEMORY

  br label %block_.L_446f6c

  ; Code: .L_446f15:	 RIP: 446f15	 Bytes: 0
block_.L_446f15:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446f15	 Bytes: 4
  %loadMem_446f15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446f15 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446f15)
  store %struct.Memory* %call_446f15, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 446f19	 Bytes: 3
  %loadMem_446f19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446f19 = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446f19)
  store %struct.Memory* %call_446f19, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 446f1c	 Bytes: 4
  %loadMem_446f1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446f1c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446f1c)
  store %struct.Memory* %call_446f1c, %struct.Memory** %MEMORY

  ; Code: movq 0x88(%rax), %rax	 RIP: 446f20	 Bytes: 7
  %loadMem_446f20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446f20 = call %struct.Memory* @routine_movq_0x88__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446f20)
  store %struct.Memory* %call_446f20, %struct.Memory** %MEMORY

  ; Code: movzwl -0x16(%rbp), %ecx	 RIP: 446f27	 Bytes: 4
  %loadMem_446f27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446f27 = call %struct.Memory* @routine_movzwl_MINUS0x16__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446f27)
  store %struct.Memory* %call_446f27, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 446f2b	 Bytes: 2
  %loadMem_446f2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446f2b = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446f2b)
  store %struct.Memory* %call_446f2b, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rdx	 RIP: 446f2d	 Bytes: 4
  %loadMem_446f2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446f2d = call %struct.Memory* @routine_shlq__0x2___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446f2d)
  store %struct.Memory* %call_446f2d, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 446f31	 Bytes: 3
  %loadMem_446f31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446f31 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446f31)
  store %struct.Memory* %call_446f31, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 446f34	 Bytes: 3
  %loadMem_446f34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446f34 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446f34)
  store %struct.Memory* %call_446f34, %struct.Memory** %MEMORY

  ; Code: callq .read_i32	 RIP: 446f37	 Bytes: 5
  %loadMem1_446f37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_446f37 = call %struct.Memory* @routine_callq_.read_i32(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_446f37, i64 89, i64 5, i64 5)
  store %struct.Memory* %call1_446f37, %struct.Memory** %MEMORY

  %loadMem2_446f37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446f37 = load i64, i64* %3
  %call2_446f37 = call %struct.Memory* @sub_446f90.read_i32(%struct.State* %0, i64  %loadPC_446f37, %struct.Memory* %loadMem2_446f37)
  store %struct.Memory* %call2_446f37, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 446f3c	 Bytes: 3
  %loadMem_446f3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446f3c = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446f3c)
  store %struct.Memory* %call_446f3c, %struct.Memory** %MEMORY

  ; Code: jne .L_446f4a	 RIP: 446f3f	 Bytes: 6
  %loadMem_446f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446f3f = call %struct.Memory* @routine_jne_.L_446f4a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446f3f, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_446f3f, %struct.Memory** %MEMORY

  %loadBr_446f3f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_446f3f = icmp eq i8 %loadBr_446f3f, 1
  br i1 %cmpBr_446f3f, label %block_.L_446f4a, label %block_446f45

block_446f45:
  ; Code: jmpq .L_446f6c	 RIP: 446f45	 Bytes: 5
  %loadMem_446f45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446f45 = call %struct.Memory* @routine_jmpq_.L_446f6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446f45, i64 39, i64 5)
  store %struct.Memory* %call_446f45, %struct.Memory** %MEMORY

  br label %block_.L_446f6c

  ; Code: .L_446f4a:	 RIP: 446f4a	 Bytes: 0
block_.L_446f4a:

  ; Code: jmpq .L_446f4f	 RIP: 446f4a	 Bytes: 5
  %loadMem_446f4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446f4a = call %struct.Memory* @routine_jmpq_.L_446f4f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446f4a, i64 5, i64 5)
  store %struct.Memory* %call_446f4a, %struct.Memory** %MEMORY

  br label %block_.L_446f4f

  ; Code: .L_446f4f:	 RIP: 446f4f	 Bytes: 0
block_.L_446f4f:

  ; Code: movw -0x16(%rbp), %ax	 RIP: 446f4f	 Bytes: 4
  %loadMem_446f4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446f4f = call %struct.Memory* @routine_movw_MINUS0x16__rbp____ax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446f4f)
  store %struct.Memory* %call_446f4f, %struct.Memory** %MEMORY

  ; Code: addw $0x1, %ax	 RIP: 446f53	 Bytes: 4
  %loadMem_446f53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446f53 = call %struct.Memory* @routine_addw__0x1___ax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446f53)
  store %struct.Memory* %call_446f53, %struct.Memory** %MEMORY

  ; Code: movw %ax, -0x16(%rbp)	 RIP: 446f57	 Bytes: 4
  %loadMem_446f57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446f57 = call %struct.Memory* @routine_movw__ax__MINUS0x16__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446f57)
  store %struct.Memory* %call_446f57, %struct.Memory** %MEMORY

  ; Code: jmpq .L_446db7	 RIP: 446f5b	 Bytes: 5
  %loadMem_446f5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446f5b = call %struct.Memory* @routine_jmpq_.L_446db7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446f5b, i64 -420, i64 5)
  store %struct.Memory* %call_446f5b, %struct.Memory** %MEMORY

  br label %block_.L_446db7

  ; Code: .L_446f60:	 RIP: 446f60	 Bytes: 0
block_.L_446f60:

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 446f60	 Bytes: 7
  %loadMem_446f60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446f60 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446f60)
  store %struct.Memory* %call_446f60, %struct.Memory** %MEMORY

  ; Code: jmpq .L_446f7b	 RIP: 446f67	 Bytes: 5
  %loadMem_446f67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446f67 = call %struct.Memory* @routine_jmpq_.L_446f7b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446f67, i64 20, i64 5)
  store %struct.Memory* %call_446f67, %struct.Memory** %MEMORY

  br label %block_.L_446f7b

  ; Code: .L_446f6c:	 RIP: 446f6c	 Bytes: 0
block_.L_446f6c:

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 446f6c	 Bytes: 4
  %loadMem_446f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446f6c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446f6c)
  store %struct.Memory* %call_446f6c, %struct.Memory** %MEMORY

  ; Code: callq .SSIClose	 RIP: 446f70	 Bytes: 5
  %loadMem1_446f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_446f70 = call %struct.Memory* @routine_callq_.SSIClose(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_446f70, i64 640, i64 5, i64 5)
  store %struct.Memory* %call1_446f70, %struct.Memory** %MEMORY

  %loadMem2_446f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_446f70 = load i64, i64* %3
  %call2_446f70 = call %struct.Memory* @sub_4471f0.SSIClose(%struct.State* %0, i64  %loadPC_446f70, %struct.Memory* %loadMem2_446f70)
  store %struct.Memory* %call2_446f70, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 446f75	 Bytes: 3
  %loadMem_446f75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446f75 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446f75)
  store %struct.Memory* %call_446f75, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 446f78	 Bytes: 3
  %loadMem_446f78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446f78 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446f78)
  store %struct.Memory* %call_446f78, %struct.Memory** %MEMORY

  ; Code: .L_446f7b:	 RIP: 446f7b	 Bytes: 0
  br label %block_.L_446f7b
block_.L_446f7b:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 446f7b	 Bytes: 3
  %loadMem_446f7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446f7b = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446f7b)
  store %struct.Memory* %call_446f7b, %struct.Memory** %MEMORY

  ; Code: addq $0x20, %rsp	 RIP: 446f7e	 Bytes: 4
  %loadMem_446f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446f7e = call %struct.Memory* @routine_addq__0x20___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446f7e)
  store %struct.Memory* %call_446f7e, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 446f82	 Bytes: 1
  %loadMem_446f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446f82 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446f82)
  store %struct.Memory* %call_446f82, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 446f83	 Bytes: 1
  %loadMem_446f83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_446f83 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_446f83)
  store %struct.Memory* %call_446f83, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_446f83
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

define %struct.Memory* @routine_subq__0x20___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 32)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x14__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x6__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 6)
  ret %struct.Memory* %13
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x0__0x68__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 104
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x0__0x70__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 112
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x0__0x78__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 120
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x0__0x80__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 128
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x0__0x88__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 136
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2InItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i16
  %6 = inttoptr i64 %2 to i16*
  store i16 %5, i16* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movw__0x0__0xc__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2InItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_callq_.read_i32(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_4469b4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x5__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_446f6c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

define %struct.Memory* @routine_cmpl_0x663038___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x663038_type* @G_0x663038 to i64))
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

define %struct.Memory* @routine_je_.L_4469e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl_0x66303c___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x66303c_type* @G_0x66303c to i64))
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_addq__0x8___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 8)
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






define %struct.Memory* @routine_jne_.L_446a05(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_446a2b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_446a37(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x7__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 7)
  ret %struct.Memory* %13
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 1)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x8__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_andl__0x2___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 2)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6CMOVNZI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %6 = load i8, i8* %5, align 1
  %7 = icmp eq i8 %6, 0
  %8 = load i64, i64* %2, align 8
  %9 = select i1 %7, i64 %3, i64 %8
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmovnel__ecx___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6CMOVNZI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__sil___dil(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 11
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %SIL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %DIL, i64 %15)
  ret %struct.Memory* %18
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__dil__0x60__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RDX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 96
  %15 = load i8, i8* %DIL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}






define %struct.Memory* @routine_andl__0x1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 1)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6CMOVNZI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movb__al___dil(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 11
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %DIL, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movb__dil__0x61__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RDX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 97
  %15 = load i8, i8* %DIL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}




define %struct.Memory* @routine_movq___rdx____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_addq__0xc___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 12)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_callq_.read_i16(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_446a9b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_addq__0x10___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 16)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_jne_.L_446ac0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_addq__0x14___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 20)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_jne_.L_446ae5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_addq__0x18___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 24)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_jne_.L_446b0a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_addq__0x1c___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 28)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_jne_.L_446b2f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_addq__0x20___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 32)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_jne_.L_446b54(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_addq__0x24___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 36)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_jne_.L_446b79(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_addq__0x28___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 40)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_jne_.L_446b9e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_addq__0x2c___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 44)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_jne_.L_446bc3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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









define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  store i8 %6, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb_0x60__rax____cl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %CL, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_addq__0x30___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 48)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i32
  %6 = shl i32 %5, 24
  %7 = ashr exact i32 %6, 24
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsbl__cl___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 9
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RSI = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %CL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_callq_.read_offset(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_446bf2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_addq__0x40___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 64)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_jne_.L_446c21(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_addq__0x50___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 80)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_jne_.L_446c50(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i16*
  %6 = load i16, i16* %5
  %7 = zext i16 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzwl_0xc__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jne_.L_446c66(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_shlq__0x3___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 3)
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


define %struct.Memory* @routine_callq_.malloc_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__rax__0x68__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 104
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


define %struct.Memory* @routine_jne_.L_446c9a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x3__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movw__0x0__MINUS0x16__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 22
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2InItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movzwl_MINUS0x16__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 22
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movzwl_0xc__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_jge_.L_446cdb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movzwl_MINUS0x16__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 22
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__0x0____rax__rdx_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i16* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i16*
  %6 = load i16, i16* %5
  store i16 %6, i16* %2, align 2
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movw_MINUS0x16__rbp____ax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %AX = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 22
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %AX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWItE2RnItE2InItEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i16* nocapture, i64, i64) #0 {
  %6 = trunc i64 %3 to i16
  %7 = trunc i64 %4 to i16
  %8 = add i16 %7, %6
  store i16 %8, i16* %2, align 2
  %9 = icmp ult i16 %8, %6
  %10 = icmp ult i16 %8, %7
  %11 = or i1 %9, %10
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i16 %8, 255
  %15 = zext i16 %14 to i32
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #22
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %4, %3
  %22 = trunc i64 %21 to i16
  %23 = xor i16 %22, %8
  %24 = lshr i16 %23, 4
  %25 = trunc i16 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i16 %8, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i16 %8, 15
  %32 = trunc i16 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i16 %6, 15
  %35 = lshr i16 %7, 15
  %36 = xor i16 %31, %34
  %37 = xor i16 %31, %35
  %38 = add   i16 %36, %37
  %39 = icmp eq i16 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addw__0x1___ax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %AX = bitcast %union.anon* %8 to i16*
  %9 = load i16, i16* %AX
  %10 = zext i16 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWItE2RnItE2InItEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i16* %AX, i64 %10, i64 1)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i16
  %6 = inttoptr i64 %2 to i16*
  store i16 %5, i16* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movw__ax__MINUS0x16__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %AX = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 22
  %14 = load i16, i16* %AX
  %15 = zext i16 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_446ca0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_shlq__0x2___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 2)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_movq__rax__0x70__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 112
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_446d0f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_movq__rax__0x78__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 120
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_446d43(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_movq__rax__0x80__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 128
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_446d7a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_movq__rax__0x88__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_446db1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jge_.L_446f60(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_callq_.indexfile_position(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_446df8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_shlq__0x0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 0)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_movq_0x68__rdi____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 104
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movq__rax____rdi__rdx_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDI
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %RAX
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_jne_.L_446e35(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 1)
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq_0x68__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 104
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movq___rcx__rdx_8____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %18)
  ret %struct.Memory* %21
}




define %struct.Memory* @routine_movl_0x18__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq___rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_callq_.fread_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0x18__rcx____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
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

define %struct.Memory* @routine_cmpq__rcx___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_je_.L_446e7c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movq_0x70__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 112
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_shlq__0x2___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 2)
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








define %struct.Memory* @routine_jne_.L_446eae(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movq_0x78__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 120
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}
















define %struct.Memory* @routine_jne_.L_446ee0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movq_0x80__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 128
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}
















define %struct.Memory* @routine_jne_.L_446f15(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movq_0x88__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 136
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}
















define %struct.Memory* @routine_jne_.L_446f4a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jmpq_.L_446f4f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_446db7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_446f7b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_callq_.SSIClose(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_addq__0x20___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 32)
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

