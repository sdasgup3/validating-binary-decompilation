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
declare %struct.Memory* @sub_401540.fgets_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_431d60.AllocPlan7Shell(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_428c70.Getword(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_432b80.Plan7SetName(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_446010.s2upper(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_404ca0.SetAlphabet(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_410e60.AlphabetType2String(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_421780.ascii2prob(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_431fd0.AllocPlan7Body(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4329f0.ZeroPlan7(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_434270.Plan7LSConfig(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_433c30.Plan7Renormalize(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_445df0.Strdup(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_432e50.Plan7SetCtime(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4325d0.FreePlan7(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x342ff__rip__type = type <{ [4 x i8] }>
@G_0x342ff__rip_= global %G_0x342ff__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x3438c__rip__type = type <{ [4 x i8] }>
@G_0x3438c__rip_= global %G_0x3438c__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x34431__rip__type = type <{ [4 x i8] }>
@G_0x34431__rip_= global %G_0x34431__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x344c0__rip__type = type <{ [4 x i8] }>
@G_0x344c0__rip_= global %G_0x344c0__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x34529__rip__type = type <{ [4 x i8] }>
@G_0x34529__rip_= global %G_0x34529__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x345aa__rip__type = type <{ [4 x i8] }>
@G_0x345aa__rip_= global %G_0x345aa__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x34638__rip__type = type <{ [4 x i8] }>
@G_0x34638__rip_= global %G_0x34638__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x34881__rip__type = type <{ [4 x i8] }>
@G_0x34881__rip_= global %G_0x34881__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x348c9__rip__type = type <{ [4 x i8] }>
@G_0x348c9__rip_= global %G_0x348c9__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x34a70__rip__type = type <{ [4 x i8] }>
@G_0x34a70__rip_= global %G_0x34a70__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x34b94__rip__type = type <{ [8 x i8] }>
@G_0x34b94__rip_= global %G_0x34b94__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x676d90_type = type <{ [4 x i8] }>
@G_0x676d90= global %G_0x676d90_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x677060_type = type <{ [4 x i8] }>
@G_0x677060= global %G_0x677060_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x4577ce_type = type <{ [8 x i8] }>
@G__0x4577ce= global %G__0x4577ce_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457830_type = type <{ [8 x i8] }>
@G__0x457830= global %G__0x457830_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457899_type = type <{ [8 x i8] }>
@G__0x457899= global %G__0x457899_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457914_type = type <{ [4 x i8] }>
@G__0x457914= global %G__0x457914_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x457947_type = type <{ [4 x i8] }>
@G__0x457947= global %G__0x457947_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x45794d_type = type <{ [4 x i8] }>
@G__0x45794d= global %G__0x45794d_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x457955_type = type <{ [4 x i8] }>
@G__0x457955= global %G__0x457955_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x676fe0_type = type <{ [8 x i8] }>
@G__0x676fe0= global %G__0x676fe0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @read_asc19hmm(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .read_asc19hmm:	 RIP: 41f910	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 41f910	 Bytes: 1
  %loadMem_41f910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f910 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f910)
  store %struct.Memory* %call_41f910, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 41f911	 Bytes: 3
  %loadMem_41f911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f911 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f911)
  store %struct.Memory* %call_41f911, %struct.Memory** %MEMORY

  ; Code: subq $0x270, %rsp	 RIP: 41f914	 Bytes: 7
  %loadMem_41f914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f914 = call %struct.Memory* @routine_subq__0x270___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f914)
  store %struct.Memory* %call_41f914, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x10(%rbp)	 RIP: 41f91b	 Bytes: 4
  %loadMem_41f91b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f91b = call %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f91b)
  store %struct.Memory* %call_41f91b, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x18(%rbp)	 RIP: 41f91f	 Bytes: 4
  %loadMem_41f91f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f91f = call %struct.Memory* @routine_movq__rsi__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f91f)
  store %struct.Memory* %call_41f91f, %struct.Memory** %MEMORY

  ; Code: movq $0x0, -0x20(%rbp)	 RIP: 41f923	 Bytes: 8
  %loadMem_41f923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f923 = call %struct.Memory* @routine_movq__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f923)
  store %struct.Memory* %call_41f923, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 41f92b	 Bytes: 4
  %loadMem_41f92b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f92b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f92b)
  store %struct.Memory* %call_41f92b, %struct.Memory** %MEMORY

  ; Code: movq (%rsi), %rsi	 RIP: 41f92f	 Bytes: 3
  %loadMem_41f92f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f92f = call %struct.Memory* @routine_movq___rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f92f)
  store %struct.Memory* %call_41f92f, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x28(%rbp)	 RIP: 41f932	 Bytes: 4
  %loadMem_41f932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f932 = call %struct.Memory* @routine_movq__rsi__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f932)
  store %struct.Memory* %call_41f932, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 41f936	 Bytes: 4
  %loadMem_41f936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f936 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f936)
  store %struct.Memory* %call_41f936, %struct.Memory** %MEMORY

  ; Code: callq .feof_plt	 RIP: 41f93a	 Bytes: 5
  %loadMem1_41f93a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f93a = call %struct.Memory* @routine_callq_.feof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f93a, i64 -123818, i64 5, i64 5)
  store %struct.Memory* %call1_41f93a, %struct.Memory** %MEMORY

  %loadMem2_41f93a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f93a = load i64, i64* %3
  %call2_41f93a = call %struct.Memory* @sub_401590.feof_plt(%struct.State* %0, i64  %loadPC_41f93a, %struct.Memory* %loadMem2_41f93a)
  store %struct.Memory* %call2_41f93a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41f93f	 Bytes: 3
  %loadMem_41f93f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f93f = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f93f)
  store %struct.Memory* %call_41f93f, %struct.Memory** %MEMORY

  ; Code: jne .L_41f967	 RIP: 41f942	 Bytes: 6
  %loadMem_41f942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f942 = call %struct.Memory* @routine_jne_.L_41f967(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f942, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_41f942, %struct.Memory** %MEMORY

  %loadBr_41f942 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f942 = icmp eq i8 %loadBr_41f942, 1
  br i1 %cmpBr_41f942, label %block_.L_41f967, label %block_41f948

block_41f948:
  ; Code: movl $0x200, %esi	 RIP: 41f948	 Bytes: 5
  %loadMem_41f948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f948 = call %struct.Memory* @routine_movl__0x200___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f948)
  store %struct.Memory* %call_41f948, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 41f94d	 Bytes: 7
  %loadMem_41f94d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f94d = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f94d)
  store %struct.Memory* %call_41f94d, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdx	 RIP: 41f954	 Bytes: 4
  %loadMem_41f954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f954 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f954)
  store %struct.Memory* %call_41f954, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 41f958	 Bytes: 5
  %loadMem1_41f958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f958 = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f958, i64 -123928, i64 5, i64 5)
  store %struct.Memory* %call1_41f958, %struct.Memory** %MEMORY

  %loadMem2_41f958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f958 = load i64, i64* %3
  %call2_41f958 = call %struct.Memory* @sub_401540.fgets_plt(%struct.State* %0, i64  %loadPC_41f958, %struct.Memory* %loadMem2_41f958)
  store %struct.Memory* %call2_41f958, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41f95d	 Bytes: 4
  %loadMem_41f95d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f95d = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f95d)
  store %struct.Memory* %call_41f95d, %struct.Memory** %MEMORY

  ; Code: jne .L_41f973	 RIP: 41f961	 Bytes: 6
  %loadMem_41f961 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f961 = call %struct.Memory* @routine_jne_.L_41f973(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f961, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_41f961, %struct.Memory** %MEMORY

  %loadBr_41f961 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f961 = icmp eq i8 %loadBr_41f961, 1
  br i1 %cmpBr_41f961, label %block_.L_41f973, label %block_.L_41f967

  ; Code: .L_41f967:	 RIP: 41f967	 Bytes: 0
block_.L_41f967:

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 41f967	 Bytes: 7
  %loadMem_41f967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f967 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f967)
  store %struct.Memory* %call_41f967, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4206bb	 RIP: 41f96e	 Bytes: 5
  %loadMem_41f96e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f96e = call %struct.Memory* @routine_jmpq_.L_4206bb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f96e, i64 3405, i64 5)
  store %struct.Memory* %call_41f96e, %struct.Memory** %MEMORY

  br label %block_.L_4206bb

  ; Code: .L_41f973:	 RIP: 41f973	 Bytes: 0
block_.L_41f973:

  ; Code: movq $0x4577ce, %rsi	 RIP: 41f973	 Bytes: 10
  %loadMem_41f973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f973 = call %struct.Memory* @routine_movq__0x4577ce___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f973)
  store %struct.Memory* %call_41f973, %struct.Memory** %MEMORY

  ; Code: movl $0xa, %eax	 RIP: 41f97d	 Bytes: 5
  %loadMem_41f97d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f97d = call %struct.Memory* @routine_movl__0xa___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f97d)
  store %struct.Memory* %call_41f97d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41f982	 Bytes: 2
  %loadMem_41f982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f982 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f982)
  store %struct.Memory* %call_41f982, %struct.Memory** %MEMORY

  ; Code: leaq -0x230(%rbp), %rdi	 RIP: 41f984	 Bytes: 7
  %loadMem_41f984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f984 = call %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f984)
  store %struct.Memory* %call_41f984, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41f98b	 Bytes: 5
  %loadMem1_41f98b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f98b = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f98b, i64 -124347, i64 5, i64 5)
  store %struct.Memory* %call1_41f98b, %struct.Memory** %MEMORY

  %loadMem2_41f98b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f98b = load i64, i64* %3
  %call2_41f98b = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41f98b, %struct.Memory* %loadMem2_41f98b)
  store %struct.Memory* %call2_41f98b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41f990	 Bytes: 3
  %loadMem_41f990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f990 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f990)
  store %struct.Memory* %call_41f990, %struct.Memory** %MEMORY

  ; Code: je .L_41f99e	 RIP: 41f993	 Bytes: 6
  %loadMem_41f993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f993 = call %struct.Memory* @routine_je_.L_41f99e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f993, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41f993, %struct.Memory** %MEMORY

  %loadBr_41f993 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f993 = icmp eq i8 %loadBr_41f993, 1
  br i1 %cmpBr_41f993, label %block_.L_41f99e, label %block_41f999

block_41f999:
  ; Code: jmpq .L_420695	 RIP: 41f999	 Bytes: 5
  %loadMem_41f999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f999 = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f999, i64 3324, i64 5)
  store %struct.Memory* %call_41f999, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_41f99e:	 RIP: 41f99e	 Bytes: 0
block_.L_41f99e:

  ; Code: callq .AllocPlan7Shell	 RIP: 41f99e	 Bytes: 5
  %loadMem1_41f99e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f99e = call %struct.Memory* @routine_callq_.AllocPlan7Shell(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f99e, i64 74690, i64 5, i64 5)
  store %struct.Memory* %call1_41f99e, %struct.Memory** %MEMORY

  %loadMem2_41f99e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f99e = load i64, i64* %3
  %call2_41f99e = call %struct.Memory* @sub_431d60.AllocPlan7Shell(%struct.State* %0, i64  %loadPC_41f99e, %struct.Memory* %loadMem2_41f99e)
  store %struct.Memory* %call2_41f99e, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %esi	 RIP: 41f9a3	 Bytes: 5
  %loadMem_41f9a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f9a3 = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f9a3)
  store %struct.Memory* %call_41f9a3, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x20(%rbp)	 RIP: 41f9a8	 Bytes: 4
  %loadMem_41f9a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f9a8 = call %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f9a8)
  store %struct.Memory* %call_41f9a8, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 41f9ac	 Bytes: 4
  %loadMem_41f9ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f9ac = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f9ac)
  store %struct.Memory* %call_41f9ac, %struct.Memory** %MEMORY

  ; Code: callq .Getword	 RIP: 41f9b0	 Bytes: 5
  %loadMem1_41f9b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f9b0 = call %struct.Memory* @routine_callq_.Getword(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f9b0, i64 37568, i64 5, i64 5)
  store %struct.Memory* %call1_41f9b0, %struct.Memory** %MEMORY

  %loadMem2_41f9b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f9b0 = load i64, i64* %3
  %call2_41f9b0 = call %struct.Memory* @sub_428c70.Getword(%struct.State* %0, i64  %loadPC_41f9b0, %struct.Memory* %loadMem2_41f9b0)
  store %struct.Memory* %call2_41f9b0, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 41f9b5	 Bytes: 7
  %loadMem_41f9b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f9b5 = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f9b5)
  store %struct.Memory* %call_41f9b5, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41f9bc	 Bytes: 4
  %loadMem_41f9bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f9bc = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f9bc)
  store %struct.Memory* %call_41f9bc, %struct.Memory** %MEMORY

  ; Code: jne .L_41f9cb	 RIP: 41f9c0	 Bytes: 6
  %loadMem_41f9c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f9c0 = call %struct.Memory* @routine_jne_.L_41f9cb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f9c0, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41f9c0, %struct.Memory** %MEMORY

  %loadBr_41f9c0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f9c0 = icmp eq i8 %loadBr_41f9c0, 1
  br i1 %cmpBr_41f9c0, label %block_.L_41f9cb, label %block_41f9c6

block_41f9c6:
  ; Code: jmpq .L_420695	 RIP: 41f9c6	 Bytes: 5
  %loadMem_41f9c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f9c6 = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f9c6, i64 3279, i64 5)
  store %struct.Memory* %call_41f9c6, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_41f9cb:	 RIP: 41f9cb	 Bytes: 0
block_.L_41f9cb:

  ; Code: movq -0x238(%rbp), %rdi	 RIP: 41f9cb	 Bytes: 7
  %loadMem_41f9cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f9cb = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f9cb)
  store %struct.Memory* %call_41f9cb, %struct.Memory** %MEMORY

  ; Code: callq .atoi_plt	 RIP: 41f9d2	 Bytes: 5
  %loadMem1_41f9d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f9d2 = call %struct.Memory* @routine_callq_.atoi_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f9d2, i64 -123698, i64 5, i64 5)
  store %struct.Memory* %call1_41f9d2, %struct.Memory** %MEMORY

  %loadMem2_41f9d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f9d2 = load i64, i64* %3
  %call2_41f9d2 = call %struct.Memory* @ext_atoi(%struct.State* %0, i64  %loadPC_41f9d2, %struct.Memory* %loadMem2_41f9d2)
  store %struct.Memory* %call2_41f9d2, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %esi	 RIP: 41f9d7	 Bytes: 5
  %loadMem_41f9d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f9d7 = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f9d7)
  store %struct.Memory* %call_41f9d7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x23c(%rbp)	 RIP: 41f9dc	 Bytes: 6
  %loadMem_41f9dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f9dc = call %struct.Memory* @routine_movl__eax__MINUS0x23c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f9dc)
  store %struct.Memory* %call_41f9dc, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 41f9e2	 Bytes: 4
  %loadMem_41f9e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f9e2 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f9e2)
  store %struct.Memory* %call_41f9e2, %struct.Memory** %MEMORY

  ; Code: callq .Getword	 RIP: 41f9e6	 Bytes: 5
  %loadMem1_41f9e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41f9e6 = call %struct.Memory* @routine_callq_.Getword(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41f9e6, i64 37514, i64 5, i64 5)
  store %struct.Memory* %call1_41f9e6, %struct.Memory** %MEMORY

  %loadMem2_41f9e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41f9e6 = load i64, i64* %3
  %call2_41f9e6 = call %struct.Memory* @sub_428c70.Getword(%struct.State* %0, i64  %loadPC_41f9e6, %struct.Memory* %loadMem2_41f9e6)
  store %struct.Memory* %call2_41f9e6, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 41f9eb	 Bytes: 7
  %loadMem_41f9eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f9eb = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f9eb)
  store %struct.Memory* %call_41f9eb, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41f9f2	 Bytes: 4
  %loadMem_41f9f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f9f2 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f9f2)
  store %struct.Memory* %call_41f9f2, %struct.Memory** %MEMORY

  ; Code: jne .L_41fa01	 RIP: 41f9f6	 Bytes: 6
  %loadMem_41f9f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f9f6 = call %struct.Memory* @routine_jne_.L_41fa01(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f9f6, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41f9f6, %struct.Memory** %MEMORY

  %loadBr_41f9f6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41f9f6 = icmp eq i8 %loadBr_41f9f6, 1
  br i1 %cmpBr_41f9f6, label %block_.L_41fa01, label %block_41f9fc

block_41f9fc:
  ; Code: jmpq .L_420695	 RIP: 41f9fc	 Bytes: 5
  %loadMem_41f9fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41f9fc = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41f9fc, i64 3225, i64 5)
  store %struct.Memory* %call_41f9fc, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_41fa01:	 RIP: 41fa01	 Bytes: 0
block_.L_41fa01:

  ; Code: movl $0x4, %esi	 RIP: 41fa01	 Bytes: 5
  %loadMem_41fa01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fa01 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fa01)
  store %struct.Memory* %call_41fa01, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 41fa06	 Bytes: 4
  %loadMem_41fa06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fa06 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fa06)
  store %struct.Memory* %call_41fa06, %struct.Memory** %MEMORY

  ; Code: callq .Getword	 RIP: 41fa0a	 Bytes: 5
  %loadMem1_41fa0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41fa0a = call %struct.Memory* @routine_callq_.Getword(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41fa0a, i64 37478, i64 5, i64 5)
  store %struct.Memory* %call1_41fa0a, %struct.Memory** %MEMORY

  %loadMem2_41fa0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41fa0a = load i64, i64* %3
  %call2_41fa0a = call %struct.Memory* @sub_428c70.Getword(%struct.State* %0, i64  %loadPC_41fa0a, %struct.Memory* %loadMem2_41fa0a)
  store %struct.Memory* %call2_41fa0a, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 41fa0f	 Bytes: 7
  %loadMem_41fa0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fa0f = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fa0f)
  store %struct.Memory* %call_41fa0f, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41fa16	 Bytes: 4
  %loadMem_41fa16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fa16 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fa16)
  store %struct.Memory* %call_41fa16, %struct.Memory** %MEMORY

  ; Code: jne .L_41fa25	 RIP: 41fa1a	 Bytes: 6
  %loadMem_41fa1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fa1a = call %struct.Memory* @routine_jne_.L_41fa25(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fa1a, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41fa1a, %struct.Memory** %MEMORY

  %loadBr_41fa1a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41fa1a = icmp eq i8 %loadBr_41fa1a, 1
  br i1 %cmpBr_41fa1a, label %block_.L_41fa25, label %block_41fa20

block_41fa20:
  ; Code: jmpq .L_420695	 RIP: 41fa20	 Bytes: 5
  %loadMem_41fa20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fa20 = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fa20, i64 3189, i64 5)
  store %struct.Memory* %call_41fa20, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_41fa25:	 RIP: 41fa25	 Bytes: 0
block_.L_41fa25:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41fa25	 Bytes: 4
  %loadMem_41fa25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fa25 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fa25)
  store %struct.Memory* %call_41fa25, %struct.Memory** %MEMORY

  ; Code: movq -0x238(%rbp), %rsi	 RIP: 41fa29	 Bytes: 7
  %loadMem_41fa29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fa29 = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fa29)
  store %struct.Memory* %call_41fa29, %struct.Memory** %MEMORY

  ; Code: callq .Plan7SetName	 RIP: 41fa30	 Bytes: 5
  %loadMem1_41fa30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41fa30 = call %struct.Memory* @routine_callq_.Plan7SetName(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41fa30, i64 78160, i64 5, i64 5)
  store %struct.Memory* %call1_41fa30, %struct.Memory** %MEMORY

  %loadMem2_41fa30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41fa30 = load i64, i64* %3
  %call2_41fa30 = call %struct.Memory* @sub_432b80.Plan7SetName(%struct.State* %0, i64  %loadPC_41fa30, %struct.Memory* %loadMem2_41fa30)
  store %struct.Memory* %call2_41fa30, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %esi	 RIP: 41fa35	 Bytes: 5
  %loadMem_41fa35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fa35 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fa35)
  store %struct.Memory* %call_41fa35, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 41fa3a	 Bytes: 4
  %loadMem_41fa3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fa3a = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fa3a)
  store %struct.Memory* %call_41fa3a, %struct.Memory** %MEMORY

  ; Code: callq .Getword	 RIP: 41fa3e	 Bytes: 5
  %loadMem1_41fa3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41fa3e = call %struct.Memory* @routine_callq_.Getword(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41fa3e, i64 37426, i64 5, i64 5)
  store %struct.Memory* %call1_41fa3e, %struct.Memory** %MEMORY

  %loadMem2_41fa3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41fa3e = load i64, i64* %3
  %call2_41fa3e = call %struct.Memory* @sub_428c70.Getword(%struct.State* %0, i64  %loadPC_41fa3e, %struct.Memory* %loadMem2_41fa3e)
  store %struct.Memory* %call2_41fa3e, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 41fa43	 Bytes: 7
  %loadMem_41fa43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fa43 = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fa43)
  store %struct.Memory* %call_41fa43, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41fa4a	 Bytes: 4
  %loadMem_41fa4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fa4a = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fa4a)
  store %struct.Memory* %call_41fa4a, %struct.Memory** %MEMORY

  ; Code: jne .L_41fa59	 RIP: 41fa4e	 Bytes: 6
  %loadMem_41fa4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fa4e = call %struct.Memory* @routine_jne_.L_41fa59(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fa4e, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41fa4e, %struct.Memory** %MEMORY

  %loadBr_41fa4e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41fa4e = icmp eq i8 %loadBr_41fa4e, 1
  br i1 %cmpBr_41fa4e, label %block_.L_41fa59, label %block_41fa54

block_41fa54:
  ; Code: jmpq .L_420695	 RIP: 41fa54	 Bytes: 5
  %loadMem_41fa54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fa54 = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fa54, i64 3137, i64 5)
  store %struct.Memory* %call_41fa54, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_41fa59:	 RIP: 41fa59	 Bytes: 0
block_.L_41fa59:

  ; Code: movq -0x238(%rbp), %rdi	 RIP: 41fa59	 Bytes: 7
  %loadMem_41fa59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fa59 = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fa59)
  store %struct.Memory* %call_41fa59, %struct.Memory** %MEMORY

  ; Code: callq .s2upper	 RIP: 41fa60	 Bytes: 5
  %loadMem1_41fa60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41fa60 = call %struct.Memory* @routine_callq_.s2upper(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41fa60, i64 157104, i64 5, i64 5)
  store %struct.Memory* %call1_41fa60, %struct.Memory** %MEMORY

  %loadMem2_41fa60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41fa60 = load i64, i64* %3
  %call2_41fa60 = call %struct.Memory* @sub_446010.s2upper(%struct.State* %0, i64  %loadPC_41fa60, %struct.Memory* %loadMem2_41fa60)
  store %struct.Memory* %call2_41fa60, %struct.Memory** %MEMORY

  ; Code: movq -0x238(%rbp), %rdi	 RIP: 41fa65	 Bytes: 7
  %loadMem_41fa65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fa65 = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fa65)
  store %struct.Memory* %call_41fa65, %struct.Memory** %MEMORY

  ; Code: movl $0x457947, %eax	 RIP: 41fa6c	 Bytes: 5
  %loadMem_41fa6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fa6c = call %struct.Memory* @routine_movl__0x457947___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fa6c)
  store %struct.Memory* %call_41fa6c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41fa71	 Bytes: 2
  %loadMem_41fa71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fa71 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fa71)
  store %struct.Memory* %call_41fa71, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 41fa73	 Bytes: 5
  %loadMem1_41fa73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41fa73 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41fa73, i64 -124179, i64 5, i64 5)
  store %struct.Memory* %call1_41fa73, %struct.Memory** %MEMORY

  %loadMem2_41fa73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41fa73 = load i64, i64* %3
  %call2_41fa73 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_41fa73, %struct.Memory* %loadMem2_41fa73)
  store %struct.Memory* %call2_41fa73, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41fa78	 Bytes: 3
  %loadMem_41fa78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fa78 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fa78)
  store %struct.Memory* %call_41fa78, %struct.Memory** %MEMORY

  ; Code: jne .L_41fa90	 RIP: 41fa7b	 Bytes: 6
  %loadMem_41fa7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fa7b = call %struct.Memory* @routine_jne_.L_41fa90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fa7b, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_41fa7b, %struct.Memory** %MEMORY

  %loadBr_41fa7b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41fa7b = icmp eq i8 %loadBr_41fa7b, 1
  br i1 %cmpBr_41fa7b, label %block_.L_41fa90, label %block_41fa81

block_41fa81:
  ; Code: movl $0x3, -0x248(%rbp)	 RIP: 41fa81	 Bytes: 10
  %loadMem_41fa81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fa81 = call %struct.Memory* @routine_movl__0x3__MINUS0x248__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fa81)
  store %struct.Memory* %call_41fa81, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41fac5	 RIP: 41fa8b	 Bytes: 5
  %loadMem_41fa8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fa8b = call %struct.Memory* @routine_jmpq_.L_41fac5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fa8b, i64 58, i64 5)
  store %struct.Memory* %call_41fa8b, %struct.Memory** %MEMORY

  br label %block_.L_41fac5

  ; Code: .L_41fa90:	 RIP: 41fa90	 Bytes: 0
block_.L_41fa90:

  ; Code: movq -0x238(%rbp), %rdi	 RIP: 41fa90	 Bytes: 7
  %loadMem_41fa90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fa90 = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fa90)
  store %struct.Memory* %call_41fa90, %struct.Memory** %MEMORY

  ; Code: movl $0x45794d, %eax	 RIP: 41fa97	 Bytes: 5
  %loadMem_41fa97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fa97 = call %struct.Memory* @routine_movl__0x45794d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fa97)
  store %struct.Memory* %call_41fa97, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41fa9c	 Bytes: 2
  %loadMem_41fa9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fa9c = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fa9c)
  store %struct.Memory* %call_41fa9c, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 41fa9e	 Bytes: 5
  %loadMem1_41fa9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41fa9e = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41fa9e, i64 -124222, i64 5, i64 5)
  store %struct.Memory* %call1_41fa9e, %struct.Memory** %MEMORY

  %loadMem2_41fa9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41fa9e = load i64, i64* %3
  %call2_41fa9e = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_41fa9e, %struct.Memory* %loadMem2_41fa9e)
  store %struct.Memory* %call2_41fa9e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41faa3	 Bytes: 3
  %loadMem_41faa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41faa3 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41faa3)
  store %struct.Memory* %call_41faa3, %struct.Memory** %MEMORY

  ; Code: jne .L_41fabb	 RIP: 41faa6	 Bytes: 6
  %loadMem_41faa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41faa6 = call %struct.Memory* @routine_jne_.L_41fabb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41faa6, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_41faa6, %struct.Memory** %MEMORY

  %loadBr_41faa6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41faa6 = icmp eq i8 %loadBr_41faa6, 1
  br i1 %cmpBr_41faa6, label %block_.L_41fabb, label %block_41faac

block_41faac:
  ; Code: movl $0x2, -0x248(%rbp)	 RIP: 41faac	 Bytes: 10
  %loadMem_41faac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41faac = call %struct.Memory* @routine_movl__0x2__MINUS0x248__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41faac)
  store %struct.Memory* %call_41faac, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41fac0	 RIP: 41fab6	 Bytes: 5
  %loadMem_41fab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fab6 = call %struct.Memory* @routine_jmpq_.L_41fac0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fab6, i64 10, i64 5)
  store %struct.Memory* %call_41fab6, %struct.Memory** %MEMORY

  br label %block_.L_41fac0

  ; Code: .L_41fabb:	 RIP: 41fabb	 Bytes: 0
block_.L_41fabb:

  ; Code: jmpq .L_420695	 RIP: 41fabb	 Bytes: 5
  %loadMem_41fabb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fabb = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fabb, i64 3034, i64 5)
  store %struct.Memory* %call_41fabb, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_41fac0:	 RIP: 41fac0	 Bytes: 0
block_.L_41fac0:

  ; Code: jmpq .L_41fac5	 RIP: 41fac0	 Bytes: 5
  %loadMem_41fac0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fac0 = call %struct.Memory* @routine_jmpq_.L_41fac5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fac0, i64 5, i64 5)
  store %struct.Memory* %call_41fac0, %struct.Memory** %MEMORY

  br label %block_.L_41fac5

  ; Code: .L_41fac5:	 RIP: 41fac5	 Bytes: 0
block_.L_41fac5:

  ; Code: cmpl $0x0, 0x676d90	 RIP: 41fac5	 Bytes: 8
  %loadMem_41fac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fac5 = call %struct.Memory* @routine_cmpl__0x0__0x676d90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fac5)
  store %struct.Memory* %call_41fac5, %struct.Memory** %MEMORY

  ; Code: jne .L_41fae3	 RIP: 41facd	 Bytes: 6
  %loadMem_41facd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41facd = call %struct.Memory* @routine_jne_.L_41fae3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41facd, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_41facd, %struct.Memory** %MEMORY

  %loadBr_41facd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41facd = icmp eq i8 %loadBr_41facd, 1
  br i1 %cmpBr_41facd, label %block_.L_41fae3, label %block_41fad3

block_41fad3:
  ; Code: movl -0x248(%rbp), %edi	 RIP: 41fad3	 Bytes: 6
  %loadMem_41fad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fad3 = call %struct.Memory* @routine_movl_MINUS0x248__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fad3)
  store %struct.Memory* %call_41fad3, %struct.Memory** %MEMORY

  ; Code: callq .SetAlphabet	 RIP: 41fad9	 Bytes: 5
  %loadMem1_41fad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41fad9 = call %struct.Memory* @routine_callq_.SetAlphabet(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41fad9, i64 -110137, i64 5, i64 5)
  store %struct.Memory* %call1_41fad9, %struct.Memory** %MEMORY

  %loadMem2_41fad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41fad9 = load i64, i64* %3
  %call2_41fad9 = call %struct.Memory* @sub_404ca0.SetAlphabet(%struct.State* %0, i64  %loadPC_41fad9, %struct.Memory* %loadMem2_41fad9)
  store %struct.Memory* %call2_41fad9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41fb34	 RIP: 41fade	 Bytes: 5
  %loadMem_41fade = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fade = call %struct.Memory* @routine_jmpq_.L_41fb34(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fade, i64 86, i64 5)
  store %struct.Memory* %call_41fade, %struct.Memory** %MEMORY

  br label %block_.L_41fb34

  ; Code: .L_41fae3:	 RIP: 41fae3	 Bytes: 0
block_.L_41fae3:

  ; Code: movl -0x248(%rbp), %eax	 RIP: 41fae3	 Bytes: 6
  %loadMem_41fae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fae3 = call %struct.Memory* @routine_movl_MINUS0x248__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fae3)
  store %struct.Memory* %call_41fae3, %struct.Memory** %MEMORY

  ; Code: cmpl 0x676d90, %eax	 RIP: 41fae9	 Bytes: 7
  %loadMem_41fae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fae9 = call %struct.Memory* @routine_cmpl_0x676d90___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fae9)
  store %struct.Memory* %call_41fae9, %struct.Memory** %MEMORY

  ; Code: je .L_41fb2f	 RIP: 41faf0	 Bytes: 6
  %loadMem_41faf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41faf0 = call %struct.Memory* @routine_je_.L_41fb2f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41faf0, i8* %BRANCH_TAKEN, i64 63, i64 6, i64 6)
  store %struct.Memory* %call_41faf0, %struct.Memory** %MEMORY

  %loadBr_41faf0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41faf0 = icmp eq i8 %loadBr_41faf0, 1
  br i1 %cmpBr_41faf0, label %block_.L_41fb2f, label %block_41faf6

block_41faf6:
  ; Code: movl 0x676d90, %edi	 RIP: 41faf6	 Bytes: 7
  %loadMem_41faf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41faf6 = call %struct.Memory* @routine_movl_0x676d90___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41faf6)
  store %struct.Memory* %call_41faf6, %struct.Memory** %MEMORY

  ; Code: callq .AlphabetType2String	 RIP: 41fafd	 Bytes: 5
  %loadMem1_41fafd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41fafd = call %struct.Memory* @routine_callq_.AlphabetType2String(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41fafd, i64 -60573, i64 5, i64 5)
  store %struct.Memory* %call1_41fafd, %struct.Memory** %MEMORY

  %loadMem2_41fafd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41fafd = load i64, i64* %3
  %call2_41fafd = call %struct.Memory* @sub_410e60.AlphabetType2String(%struct.State* %0, i64  %loadPC_41fafd, %struct.Memory* %loadMem2_41fafd)
  store %struct.Memory* %call2_41fafd, %struct.Memory** %MEMORY

  ; Code: movl -0x248(%rbp), %edi	 RIP: 41fb02	 Bytes: 6
  %loadMem_41fb02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fb02 = call %struct.Memory* @routine_movl_MINUS0x248__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fb02)
  store %struct.Memory* %call_41fb02, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x250(%rbp)	 RIP: 41fb08	 Bytes: 7
  %loadMem_41fb08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fb08 = call %struct.Memory* @routine_movq__rax__MINUS0x250__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fb08)
  store %struct.Memory* %call_41fb08, %struct.Memory** %MEMORY

  ; Code: callq .AlphabetType2String	 RIP: 41fb0f	 Bytes: 5
  %loadMem1_41fb0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41fb0f = call %struct.Memory* @routine_callq_.AlphabetType2String(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41fb0f, i64 -60591, i64 5, i64 5)
  store %struct.Memory* %call1_41fb0f, %struct.Memory** %MEMORY

  %loadMem2_41fb0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41fb0f = load i64, i64* %3
  %call2_41fb0f = call %struct.Memory* @sub_410e60.AlphabetType2String(%struct.State* %0, i64  %loadPC_41fb0f, %struct.Memory* %loadMem2_41fb0f)
  store %struct.Memory* %call2_41fb0f, %struct.Memory** %MEMORY

  ; Code: movq $0x457899, %rdi	 RIP: 41fb14	 Bytes: 10
  %loadMem_41fb14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fb14 = call %struct.Memory* @routine_movq__0x457899___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fb14)
  store %struct.Memory* %call_41fb14, %struct.Memory** %MEMORY

  ; Code: movq -0x250(%rbp), %rsi	 RIP: 41fb1e	 Bytes: 7
  %loadMem_41fb1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fb1e = call %struct.Memory* @routine_movq_MINUS0x250__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fb1e)
  store %struct.Memory* %call_41fb1e, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 41fb25	 Bytes: 3
  %loadMem_41fb25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fb25 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fb25)
  store %struct.Memory* %call_41fb25, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 41fb28	 Bytes: 2
  %loadMem_41fb28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fb28 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fb28)
  store %struct.Memory* %call_41fb28, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 41fb2a	 Bytes: 5
  %loadMem1_41fb2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41fb2a = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41fb2a, i64 126694, i64 5, i64 5)
  store %struct.Memory* %call1_41fb2a, %struct.Memory** %MEMORY

  %loadMem2_41fb2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41fb2a = load i64, i64* %3
  %call2_41fb2a = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_41fb2a, %struct.Memory* %loadMem2_41fb2a)
  store %struct.Memory* %call2_41fb2a, %struct.Memory** %MEMORY

  ; Code: .L_41fb2f:	 RIP: 41fb2f	 Bytes: 0
  br label %block_.L_41fb2f
block_.L_41fb2f:

  ; Code: jmpq .L_41fb34	 RIP: 41fb2f	 Bytes: 5
  %loadMem_41fb2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fb2f = call %struct.Memory* @routine_jmpq_.L_41fb34(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fb2f, i64 5, i64 5)
  store %struct.Memory* %call_41fb2f, %struct.Memory** %MEMORY

  br label %block_.L_41fb34

  ; Code: .L_41fb34:	 RIP: 41fb34	 Bytes: 0
block_.L_41fb34:

  ; Code: movl $0x4, %esi	 RIP: 41fb34	 Bytes: 5
  %loadMem_41fb34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fb34 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fb34)
  store %struct.Memory* %call_41fb34, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 41fb39	 Bytes: 4
  %loadMem_41fb39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fb39 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fb39)
  store %struct.Memory* %call_41fb39, %struct.Memory** %MEMORY

  ; Code: callq .Getword	 RIP: 41fb3d	 Bytes: 5
  %loadMem1_41fb3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41fb3d = call %struct.Memory* @routine_callq_.Getword(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41fb3d, i64 37171, i64 5, i64 5)
  store %struct.Memory* %call1_41fb3d, %struct.Memory** %MEMORY

  %loadMem2_41fb3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41fb3d = load i64, i64* %3
  %call2_41fb3d = call %struct.Memory* @sub_428c70.Getword(%struct.State* %0, i64  %loadPC_41fb3d, %struct.Memory* %loadMem2_41fb3d)
  store %struct.Memory* %call2_41fb3d, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 41fb42	 Bytes: 7
  %loadMem_41fb42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fb42 = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fb42)
  store %struct.Memory* %call_41fb42, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41fb49	 Bytes: 4
  %loadMem_41fb49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fb49 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fb49)
  store %struct.Memory* %call_41fb49, %struct.Memory** %MEMORY

  ; Code: jne .L_41fb58	 RIP: 41fb4d	 Bytes: 6
  %loadMem_41fb4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fb4d = call %struct.Memory* @routine_jne_.L_41fb58(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fb4d, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41fb4d, %struct.Memory** %MEMORY

  %loadBr_41fb4d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41fb4d = icmp eq i8 %loadBr_41fb4d, 1
  br i1 %cmpBr_41fb4d, label %block_.L_41fb58, label %block_41fb53

block_41fb53:
  ; Code: jmpq .L_420695	 RIP: 41fb53	 Bytes: 5
  %loadMem_41fb53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fb53 = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fb53, i64 2882, i64 5)
  store %struct.Memory* %call_41fb53, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_41fb58:	 RIP: 41fb58	 Bytes: 0
block_.L_41fb58:

  ; Code: movq $0x676fe0, %rsi	 RIP: 41fb58	 Bytes: 10
  %loadMem_41fb58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fb58 = call %struct.Memory* @routine_movq__0x676fe0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fb58)
  store %struct.Memory* %call_41fb58, %struct.Memory** %MEMORY

  ; Code: movq -0x238(%rbp), %rdi	 RIP: 41fb62	 Bytes: 7
  %loadMem_41fb62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fb62 = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fb62)
  store %struct.Memory* %call_41fb62, %struct.Memory** %MEMORY

  ; Code: movslq 0x677060, %rdx	 RIP: 41fb69	 Bytes: 8
  %loadMem_41fb69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fb69 = call %struct.Memory* @routine_movslq_0x677060___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fb69)
  store %struct.Memory* %call_41fb69, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 41fb71	 Bytes: 5
  %loadMem1_41fb71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41fb71 = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41fb71, i64 -124833, i64 5, i64 5)
  store %struct.Memory* %call1_41fb71, %struct.Memory** %MEMORY

  %loadMem2_41fb71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41fb71 = load i64, i64* %3
  %call2_41fb71 = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_41fb71, %struct.Memory* %loadMem2_41fb71)
  store %struct.Memory* %call2_41fb71, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41fb76	 Bytes: 3
  %loadMem_41fb76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fb76 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fb76)
  store %struct.Memory* %call_41fb76, %struct.Memory** %MEMORY

  ; Code: je .L_41fb84	 RIP: 41fb79	 Bytes: 6
  %loadMem_41fb79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fb79 = call %struct.Memory* @routine_je_.L_41fb84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fb79, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41fb79, %struct.Memory** %MEMORY

  %loadBr_41fb79 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41fb79 = icmp eq i8 %loadBr_41fb79, 1
  br i1 %cmpBr_41fb79, label %block_.L_41fb84, label %block_41fb7f

block_41fb7f:
  ; Code: jmpq .L_420695	 RIP: 41fb7f	 Bytes: 5
  %loadMem_41fb7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fb7f = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fb7f, i64 2838, i64 5)
  store %struct.Memory* %call_41fb7f, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_41fb84:	 RIP: 41fb84	 Bytes: 0
block_.L_41fb84:

  ; Code: movl $0x4, %esi	 RIP: 41fb84	 Bytes: 5
  %loadMem_41fb84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fb84 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fb84)
  store %struct.Memory* %call_41fb84, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 41fb89	 Bytes: 4
  %loadMem_41fb89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fb89 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fb89)
  store %struct.Memory* %call_41fb89, %struct.Memory** %MEMORY

  ; Code: callq .Getword	 RIP: 41fb8d	 Bytes: 5
  %loadMem1_41fb8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41fb8d = call %struct.Memory* @routine_callq_.Getword(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41fb8d, i64 37091, i64 5, i64 5)
  store %struct.Memory* %call1_41fb8d, %struct.Memory** %MEMORY

  %loadMem2_41fb8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41fb8d = load i64, i64* %3
  %call2_41fb8d = call %struct.Memory* @sub_428c70.Getword(%struct.State* %0, i64  %loadPC_41fb8d, %struct.Memory* %loadMem2_41fb8d)
  store %struct.Memory* %call2_41fb8d, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 41fb92	 Bytes: 7
  %loadMem_41fb92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fb92 = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fb92)
  store %struct.Memory* %call_41fb92, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41fb99	 Bytes: 4
  %loadMem_41fb99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fb99 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fb99)
  store %struct.Memory* %call_41fb99, %struct.Memory** %MEMORY

  ; Code: jne .L_41fba8	 RIP: 41fb9d	 Bytes: 6
  %loadMem_41fb9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fb9d = call %struct.Memory* @routine_jne_.L_41fba8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fb9d, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41fb9d, %struct.Memory** %MEMORY

  %loadBr_41fb9d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41fb9d = icmp eq i8 %loadBr_41fb9d, 1
  br i1 %cmpBr_41fb9d, label %block_.L_41fba8, label %block_41fba3

block_41fba3:
  ; Code: jmpq .L_420695	 RIP: 41fba3	 Bytes: 5
  %loadMem_41fba3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fba3 = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fba3, i64 2802, i64 5)
  store %struct.Memory* %call_41fba3, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_41fba8:	 RIP: 41fba8	 Bytes: 0
block_.L_41fba8:

  ; Code: movq -0x238(%rbp), %rdi	 RIP: 41fba8	 Bytes: 7
  %loadMem_41fba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fba8 = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fba8)
  store %struct.Memory* %call_41fba8, %struct.Memory** %MEMORY

  ; Code: movl $0x457914, %eax	 RIP: 41fbaf	 Bytes: 5
  %loadMem_41fbaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fbaf = call %struct.Memory* @routine_movl__0x457914___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fbaf)
  store %struct.Memory* %call_41fbaf, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41fbb4	 Bytes: 2
  %loadMem_41fbb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fbb4 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fbb4)
  store %struct.Memory* %call_41fbb4, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 41fbb6	 Bytes: 5
  %loadMem1_41fbb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41fbb6 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41fbb6, i64 -124502, i64 5, i64 5)
  store %struct.Memory* %call1_41fbb6, %struct.Memory** %MEMORY

  %loadMem2_41fbb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41fbb6 = load i64, i64* %3
  %call2_41fbb6 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_41fbb6, %struct.Memory* %loadMem2_41fbb6)
  store %struct.Memory* %call2_41fbb6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41fbbb	 Bytes: 3
  %loadMem_41fbbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fbbb = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fbbb)
  store %struct.Memory* %call_41fbbb, %struct.Memory** %MEMORY

  ; Code: jne .L_41fbd7	 RIP: 41fbbe	 Bytes: 6
  %loadMem_41fbbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fbbe = call %struct.Memory* @routine_jne_.L_41fbd7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fbbe, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_41fbbe, %struct.Memory** %MEMORY

  %loadBr_41fbbe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41fbbe = icmp eq i8 %loadBr_41fbbe, 1
  br i1 %cmpBr_41fbbe, label %block_.L_41fbd7, label %block_41fbc4

block_41fbc4:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 41fbc4	 Bytes: 4
  %loadMem_41fbc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fbc4 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fbc4)
  store %struct.Memory* %call_41fbc4, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %ecx	 RIP: 41fbc8	 Bytes: 6
  %loadMem_41fbc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fbc8 = call %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fbc8)
  store %struct.Memory* %call_41fbc8, %struct.Memory** %MEMORY

  ; Code: orl $0x4, %ecx	 RIP: 41fbce	 Bytes: 3
  %loadMem_41fbce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fbce = call %struct.Memory* @routine_orl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fbce)
  store %struct.Memory* %call_41fbce, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1c8(%rax)	 RIP: 41fbd1	 Bytes: 6
  %loadMem_41fbd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fbd1 = call %struct.Memory* @routine_movl__ecx__0x1c8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fbd1)
  store %struct.Memory* %call_41fbd1, %struct.Memory** %MEMORY

  ; Code: .L_41fbd7:	 RIP: 41fbd7	 Bytes: 0
  br label %block_.L_41fbd7
block_.L_41fbd7:

  ; Code: movl $0x4, %esi	 RIP: 41fbd7	 Bytes: 5
  %loadMem_41fbd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fbd7 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fbd7)
  store %struct.Memory* %call_41fbd7, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 41fbdc	 Bytes: 4
  %loadMem_41fbdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fbdc = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fbdc)
  store %struct.Memory* %call_41fbdc, %struct.Memory** %MEMORY

  ; Code: callq .Getword	 RIP: 41fbe0	 Bytes: 5
  %loadMem1_41fbe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41fbe0 = call %struct.Memory* @routine_callq_.Getword(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41fbe0, i64 37008, i64 5, i64 5)
  store %struct.Memory* %call1_41fbe0, %struct.Memory** %MEMORY

  %loadMem2_41fbe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41fbe0 = load i64, i64* %3
  %call2_41fbe0 = call %struct.Memory* @sub_428c70.Getword(%struct.State* %0, i64  %loadPC_41fbe0, %struct.Memory* %loadMem2_41fbe0)
  store %struct.Memory* %call2_41fbe0, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 41fbe5	 Bytes: 7
  %loadMem_41fbe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fbe5 = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fbe5)
  store %struct.Memory* %call_41fbe5, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41fbec	 Bytes: 4
  %loadMem_41fbec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fbec = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fbec)
  store %struct.Memory* %call_41fbec, %struct.Memory** %MEMORY

  ; Code: jne .L_41fbfb	 RIP: 41fbf0	 Bytes: 6
  %loadMem_41fbf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fbf0 = call %struct.Memory* @routine_jne_.L_41fbfb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fbf0, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41fbf0, %struct.Memory** %MEMORY

  %loadBr_41fbf0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41fbf0 = icmp eq i8 %loadBr_41fbf0, 1
  br i1 %cmpBr_41fbf0, label %block_.L_41fbfb, label %block_41fbf6

block_41fbf6:
  ; Code: jmpq .L_420695	 RIP: 41fbf6	 Bytes: 5
  %loadMem_41fbf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fbf6 = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fbf6, i64 2719, i64 5)
  store %struct.Memory* %call_41fbf6, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_41fbfb:	 RIP: 41fbfb	 Bytes: 0
block_.L_41fbfb:

  ; Code: movq -0x238(%rbp), %rdi	 RIP: 41fbfb	 Bytes: 7
  %loadMem_41fbfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fbfb = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fbfb)
  store %struct.Memory* %call_41fbfb, %struct.Memory** %MEMORY

  ; Code: movl $0x457914, %eax	 RIP: 41fc02	 Bytes: 5
  %loadMem_41fc02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fc02 = call %struct.Memory* @routine_movl__0x457914___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fc02)
  store %struct.Memory* %call_41fc02, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41fc07	 Bytes: 2
  %loadMem_41fc07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fc07 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fc07)
  store %struct.Memory* %call_41fc07, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 41fc09	 Bytes: 5
  %loadMem1_41fc09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41fc09 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41fc09, i64 -124585, i64 5, i64 5)
  store %struct.Memory* %call1_41fc09, %struct.Memory** %MEMORY

  %loadMem2_41fc09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41fc09 = load i64, i64* %3
  %call2_41fc09 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_41fc09, %struct.Memory* %loadMem2_41fc09)
  store %struct.Memory* %call2_41fc09, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41fc0e	 Bytes: 3
  %loadMem_41fc0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fc0e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fc0e)
  store %struct.Memory* %call_41fc0e, %struct.Memory** %MEMORY

  ; Code: jne .L_41fc2a	 RIP: 41fc11	 Bytes: 6
  %loadMem_41fc11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fc11 = call %struct.Memory* @routine_jne_.L_41fc2a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fc11, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_41fc11, %struct.Memory** %MEMORY

  %loadBr_41fc11 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41fc11 = icmp eq i8 %loadBr_41fc11, 1
  br i1 %cmpBr_41fc11, label %block_.L_41fc2a, label %block_41fc17

block_41fc17:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 41fc17	 Bytes: 4
  %loadMem_41fc17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fc17 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fc17)
  store %struct.Memory* %call_41fc17, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %ecx	 RIP: 41fc1b	 Bytes: 6
  %loadMem_41fc1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fc1b = call %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fc1b)
  store %struct.Memory* %call_41fc1b, %struct.Memory** %MEMORY

  ; Code: orl $0x8, %ecx	 RIP: 41fc21	 Bytes: 3
  %loadMem_41fc21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fc21 = call %struct.Memory* @routine_orl__0x8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fc21)
  store %struct.Memory* %call_41fc21, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1c8(%rax)	 RIP: 41fc24	 Bytes: 6
  %loadMem_41fc24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fc24 = call %struct.Memory* @routine_movl__ecx__0x1c8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fc24)
  store %struct.Memory* %call_41fc24, %struct.Memory** %MEMORY

  ; Code: .L_41fc2a:	 RIP: 41fc2a	 Bytes: 0
  br label %block_.L_41fc2a
block_.L_41fc2a:

  ; Code: movl $0x4, %esi	 RIP: 41fc2a	 Bytes: 5
  %loadMem_41fc2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fc2a = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fc2a)
  store %struct.Memory* %call_41fc2a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 41fc2f	 Bytes: 4
  %loadMem_41fc2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fc2f = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fc2f)
  store %struct.Memory* %call_41fc2f, %struct.Memory** %MEMORY

  ; Code: callq .Getword	 RIP: 41fc33	 Bytes: 5
  %loadMem1_41fc33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41fc33 = call %struct.Memory* @routine_callq_.Getword(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41fc33, i64 36925, i64 5, i64 5)
  store %struct.Memory* %call1_41fc33, %struct.Memory** %MEMORY

  %loadMem2_41fc33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41fc33 = load i64, i64* %3
  %call2_41fc33 = call %struct.Memory* @sub_428c70.Getword(%struct.State* %0, i64  %loadPC_41fc33, %struct.Memory* %loadMem2_41fc33)
  store %struct.Memory* %call2_41fc33, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 41fc38	 Bytes: 7
  %loadMem_41fc38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fc38 = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fc38)
  store %struct.Memory* %call_41fc38, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41fc3f	 Bytes: 4
  %loadMem_41fc3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fc3f = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fc3f)
  store %struct.Memory* %call_41fc3f, %struct.Memory** %MEMORY

  ; Code: jne .L_41fc4e	 RIP: 41fc43	 Bytes: 6
  %loadMem_41fc43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fc43 = call %struct.Memory* @routine_jne_.L_41fc4e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fc43, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41fc43, %struct.Memory** %MEMORY

  %loadBr_41fc43 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41fc43 = icmp eq i8 %loadBr_41fc43, 1
  br i1 %cmpBr_41fc43, label %block_.L_41fc4e, label %block_41fc49

block_41fc49:
  ; Code: jmpq .L_420695	 RIP: 41fc49	 Bytes: 5
  %loadMem_41fc49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fc49 = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fc49, i64 2636, i64 5)
  store %struct.Memory* %call_41fc49, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_41fc4e:	 RIP: 41fc4e	 Bytes: 0
block_.L_41fc4e:

  ; Code: movq -0x238(%rbp), %rdi	 RIP: 41fc4e	 Bytes: 7
  %loadMem_41fc4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fc4e = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fc4e)
  store %struct.Memory* %call_41fc4e, %struct.Memory** %MEMORY

  ; Code: movl $0x457955, %eax	 RIP: 41fc55	 Bytes: 5
  %loadMem_41fc55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fc55 = call %struct.Memory* @routine_movl__0x457955___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fc55)
  store %struct.Memory* %call_41fc55, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41fc5a	 Bytes: 2
  %loadMem_41fc5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fc5a = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fc5a)
  store %struct.Memory* %call_41fc5a, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 41fc5c	 Bytes: 5
  %loadMem1_41fc5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41fc5c = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41fc5c, i64 -124668, i64 5, i64 5)
  store %struct.Memory* %call1_41fc5c, %struct.Memory** %MEMORY

  %loadMem2_41fc5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41fc5c = load i64, i64* %3
  %call2_41fc5c = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_41fc5c, %struct.Memory* %loadMem2_41fc5c)
  store %struct.Memory* %call2_41fc5c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41fc61	 Bytes: 3
  %loadMem_41fc61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fc61 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fc61)
  store %struct.Memory* %call_41fc61, %struct.Memory** %MEMORY

  ; Code: je .L_41fc6f	 RIP: 41fc64	 Bytes: 6
  %loadMem_41fc64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fc64 = call %struct.Memory* @routine_je_.L_41fc6f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fc64, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41fc64, %struct.Memory** %MEMORY

  %loadBr_41fc64 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41fc64 = icmp eq i8 %loadBr_41fc64, 1
  br i1 %cmpBr_41fc64, label %block_.L_41fc6f, label %block_41fc6a

block_41fc6a:
  ; Code: jmpq .L_420695	 RIP: 41fc6a	 Bytes: 5
  %loadMem_41fc6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fc6a = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fc6a, i64 2603, i64 5)
  store %struct.Memory* %call_41fc6a, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_41fc6f:	 RIP: 41fc6f	 Bytes: 0
block_.L_41fc6f:

  ; Code: movl $0x0, -0x244(%rbp)	 RIP: 41fc6f	 Bytes: 10
  %loadMem_41fc6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fc6f = call %struct.Memory* @routine_movl__0x0__MINUS0x244__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fc6f)
  store %struct.Memory* %call_41fc6f, %struct.Memory** %MEMORY

  ; Code: .L_41fc79:	 RIP: 41fc79	 Bytes: 0
  br label %block_.L_41fc79
block_.L_41fc79:

  ; Code: movl -0x244(%rbp), %eax	 RIP: 41fc79	 Bytes: 6
  %loadMem_41fc79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fc79 = call %struct.Memory* @routine_movl_MINUS0x244__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fc79)
  store %struct.Memory* %call_41fc79, %struct.Memory** %MEMORY

  ; Code: cmpl 0x677060, %eax	 RIP: 41fc7f	 Bytes: 7
  %loadMem_41fc7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fc7f = call %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fc7f)
  store %struct.Memory* %call_41fc7f, %struct.Memory** %MEMORY

  ; Code: jge .L_41fcec	 RIP: 41fc86	 Bytes: 6
  %loadMem_41fc86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fc86 = call %struct.Memory* @routine_jge_.L_41fcec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fc86, i8* %BRANCH_TAKEN, i64 102, i64 6, i64 6)
  store %struct.Memory* %call_41fc86, %struct.Memory** %MEMORY

  %loadBr_41fc86 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41fc86 = icmp eq i8 %loadBr_41fc86, 1
  br i1 %cmpBr_41fc86, label %block_.L_41fcec, label %block_41fc8c

block_41fc8c:
  ; Code: movl $0x1, %esi	 RIP: 41fc8c	 Bytes: 5
  %loadMem_41fc8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fc8c = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fc8c)
  store %struct.Memory* %call_41fc8c, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 41fc91	 Bytes: 4
  %loadMem_41fc91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fc91 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fc91)
  store %struct.Memory* %call_41fc91, %struct.Memory** %MEMORY

  ; Code: callq .Getword	 RIP: 41fc95	 Bytes: 5
  %loadMem1_41fc95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41fc95 = call %struct.Memory* @routine_callq_.Getword(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41fc95, i64 36827, i64 5, i64 5)
  store %struct.Memory* %call1_41fc95, %struct.Memory** %MEMORY

  %loadMem2_41fc95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41fc95 = load i64, i64* %3
  %call2_41fc95 = call %struct.Memory* @sub_428c70.Getword(%struct.State* %0, i64  %loadPC_41fc95, %struct.Memory* %loadMem2_41fc95)
  store %struct.Memory* %call2_41fc95, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 41fc9a	 Bytes: 7
  %loadMem_41fc9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fc9a = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fc9a)
  store %struct.Memory* %call_41fc9a, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41fca1	 Bytes: 4
  %loadMem_41fca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fca1 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fca1)
  store %struct.Memory* %call_41fca1, %struct.Memory** %MEMORY

  ; Code: jne .L_41fcb0	 RIP: 41fca5	 Bytes: 6
  %loadMem_41fca5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fca5 = call %struct.Memory* @routine_jne_.L_41fcb0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fca5, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41fca5, %struct.Memory** %MEMORY

  %loadBr_41fca5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41fca5 = icmp eq i8 %loadBr_41fca5, 1
  br i1 %cmpBr_41fca5, label %block_.L_41fcb0, label %block_41fcab

block_41fcab:
  ; Code: jmpq .L_420695	 RIP: 41fcab	 Bytes: 5
  %loadMem_41fcab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fcab = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fcab, i64 2538, i64 5)
  store %struct.Memory* %call_41fcab, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_41fcb0:	 RIP: 41fcb0	 Bytes: 0
block_.L_41fcb0:

  ; Code: movss 0x34a70(%rip), %xmm0	 RIP: 41fcb0	 Bytes: 8
  %loadMem_41fcb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fcb0 = call %struct.Memory* @routine_movss_0x34a70__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fcb0)
  store %struct.Memory* %call_41fcb0, %struct.Memory** %MEMORY

  ; Code: movq -0x238(%rbp), %rdi	 RIP: 41fcb8	 Bytes: 7
  %loadMem_41fcb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fcb8 = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fcb8)
  store %struct.Memory* %call_41fcb8, %struct.Memory** %MEMORY

  ; Code: callq .ascii2prob	 RIP: 41fcbf	 Bytes: 5
  %loadMem1_41fcbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41fcbf = call %struct.Memory* @routine_callq_.ascii2prob(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41fcbf, i64 6849, i64 5, i64 5)
  store %struct.Memory* %call1_41fcbf, %struct.Memory** %MEMORY

  %loadMem2_41fcbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41fcbf = load i64, i64* %3
  %call2_41fcbf = call %struct.Memory* @sub_421780.ascii2prob(%struct.State* %0, i64  %loadPC_41fcbf, %struct.Memory* %loadMem2_41fcbf)
  store %struct.Memory* %call2_41fcbf, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41fcc4	 Bytes: 4
  %loadMem_41fcc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fcc4 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fcc4)
  store %struct.Memory* %call_41fcc4, %struct.Memory** %MEMORY

  ; Code: movslq -0x244(%rbp), %rax	 RIP: 41fcc8	 Bytes: 7
  %loadMem_41fcc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fcc8 = call %struct.Memory* @routine_movslq_MINUS0x244__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fcc8)
  store %struct.Memory* %call_41fcc8, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0xe0(%rdi,%rax,4)	 RIP: 41fccf	 Bytes: 9
  %loadMem_41fccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fccf = call %struct.Memory* @routine_movss__xmm0__0xe0__rdi__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fccf)
  store %struct.Memory* %call_41fccf, %struct.Memory** %MEMORY

  ; Code: movl -0x244(%rbp), %eax	 RIP: 41fcd8	 Bytes: 6
  %loadMem_41fcd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fcd8 = call %struct.Memory* @routine_movl_MINUS0x244__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fcd8)
  store %struct.Memory* %call_41fcd8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41fcde	 Bytes: 3
  %loadMem_41fcde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fcde = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fcde)
  store %struct.Memory* %call_41fcde, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x244(%rbp)	 RIP: 41fce1	 Bytes: 6
  %loadMem_41fce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fce1 = call %struct.Memory* @routine_movl__eax__MINUS0x244__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fce1)
  store %struct.Memory* %call_41fce1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41fc79	 RIP: 41fce7	 Bytes: 5
  %loadMem_41fce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fce7 = call %struct.Memory* @routine_jmpq_.L_41fc79(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fce7, i64 -110, i64 5)
  store %struct.Memory* %call_41fce7, %struct.Memory** %MEMORY

  br label %block_.L_41fc79

  ; Code: .L_41fcec:	 RIP: 41fcec	 Bytes: 0
block_.L_41fcec:

  ; Code: movsd 0x34b94(%rip), %xmm0	 RIP: 41fcec	 Bytes: 8
  %loadMem_41fcec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fcec = call %struct.Memory* @routine_movsd_0x34b94__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fcec)
  store %struct.Memory* %call_41fcec, %struct.Memory** %MEMORY

  ; Code: movsd 0x34b94(%rip), %xmm1	 RIP: 41fcf4	 Bytes: 8
  %loadMem_41fcf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fcf4 = call %struct.Memory* @routine_movsd_0x34b94__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fcf4)
  store %struct.Memory* %call_41fcf4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, 0x676d90	 RIP: 41fcfc	 Bytes: 8
  %loadMem_41fcfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fcfc = call %struct.Memory* @routine_cmpl__0x3__0x676d90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fcfc)
  store %struct.Memory* %call_41fcfc, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0x258(%rbp)	 RIP: 41fd04	 Bytes: 8
  %loadMem_41fd04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fd04 = call %struct.Memory* @routine_movsd__xmm1__MINUS0x258__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fd04)
  store %struct.Memory* %call_41fd04, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x260(%rbp)	 RIP: 41fd0c	 Bytes: 8
  %loadMem_41fd0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fd0c = call %struct.Memory* @routine_movsd__xmm0__MINUS0x260__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fd0c)
  store %struct.Memory* %call_41fd0c, %struct.Memory** %MEMORY

  ; Code: je .L_41fd2a	 RIP: 41fd14	 Bytes: 6
  %loadMem_41fd14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fd14 = call %struct.Memory* @routine_je_.L_41fd2a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fd14, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_41fd14, %struct.Memory** %MEMORY

  %loadBr_41fd14 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41fd14 = icmp eq i8 %loadBr_41fd14, 1
  br i1 %cmpBr_41fd14, label %block_.L_41fd2a, label %block_41fd1a

block_41fd1a:
  ; Code: movsd -0x258(%rbp), %xmm0	 RIP: 41fd1a	 Bytes: 8
  %loadMem_41fd1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fd1a = call %struct.Memory* @routine_movsd_MINUS0x258__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fd1a)
  store %struct.Memory* %call_41fd1a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x260(%rbp)	 RIP: 41fd22	 Bytes: 8
  %loadMem_41fd22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fd22 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x260__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fd22)
  store %struct.Memory* %call_41fd22, %struct.Memory** %MEMORY

  ; Code: .L_41fd2a:	 RIP: 41fd2a	 Bytes: 0
  br label %block_.L_41fd2a
block_.L_41fd2a:

  ; Code: movsd -0x260(%rbp), %xmm0	 RIP: 41fd2a	 Bytes: 8
  %loadMem_41fd2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fd2a = call %struct.Memory* @routine_movsd_MINUS0x260__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fd2a)
  store %struct.Memory* %call_41fd2a, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 41fd32	 Bytes: 4
  %loadMem_41fd32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fd32 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fd32)
  store %struct.Memory* %call_41fd32, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41fd36	 Bytes: 4
  %loadMem_41fd36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fd36 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fd36)
  store %struct.Memory* %call_41fd36, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x130(%rax)	 RIP: 41fd3a	 Bytes: 8
  %loadMem_41fd3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fd3a = call %struct.Memory* @routine_movss__xmm0__0x130__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fd3a)
  store %struct.Memory* %call_41fd3a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41fd42	 Bytes: 4
  %loadMem_41fd42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fd42 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fd42)
  store %struct.Memory* %call_41fd42, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 41fd46	 Bytes: 3
  %loadMem_41fd46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fd46 = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fd46)
  store %struct.Memory* %call_41fd46, %struct.Memory** %MEMORY

  ; Code: callq .feof_plt	 RIP: 41fd49	 Bytes: 5
  %loadMem1_41fd49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41fd49 = call %struct.Memory* @routine_callq_.feof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41fd49, i64 -124857, i64 5, i64 5)
  store %struct.Memory* %call1_41fd49, %struct.Memory** %MEMORY

  %loadMem2_41fd49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41fd49 = load i64, i64* %3
  %call2_41fd49 = call %struct.Memory* @sub_401590.feof_plt(%struct.State* %0, i64  %loadPC_41fd49, %struct.Memory* %loadMem2_41fd49)
  store %struct.Memory* %call2_41fd49, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41fd4e	 Bytes: 3
  %loadMem_41fd4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fd4e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fd4e)
  store %struct.Memory* %call_41fd4e, %struct.Memory** %MEMORY

  ; Code: je .L_41fd5c	 RIP: 41fd51	 Bytes: 6
  %loadMem_41fd51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fd51 = call %struct.Memory* @routine_je_.L_41fd5c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fd51, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41fd51, %struct.Memory** %MEMORY

  %loadBr_41fd51 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41fd51 = icmp eq i8 %loadBr_41fd51, 1
  br i1 %cmpBr_41fd51, label %block_.L_41fd5c, label %block_41fd57

block_41fd57:
  ; Code: jmpq .L_420695	 RIP: 41fd57	 Bytes: 5
  %loadMem_41fd57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fd57 = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fd57, i64 2366, i64 5)
  store %struct.Memory* %call_41fd57, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_41fd5c:	 RIP: 41fd5c	 Bytes: 0
block_.L_41fd5c:

  ; Code: cmpl $0x1, -0x23c(%rbp)	 RIP: 41fd5c	 Bytes: 7
  %loadMem_41fd5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fd5c = call %struct.Memory* @routine_cmpl__0x1__MINUS0x23c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fd5c)
  store %struct.Memory* %call_41fd5c, %struct.Memory** %MEMORY

  ; Code: jge .L_41fd6e	 RIP: 41fd63	 Bytes: 6
  %loadMem_41fd63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fd63 = call %struct.Memory* @routine_jge_.L_41fd6e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fd63, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41fd63, %struct.Memory** %MEMORY

  %loadBr_41fd63 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41fd63 = icmp eq i8 %loadBr_41fd63, 1
  br i1 %cmpBr_41fd63, label %block_.L_41fd6e, label %block_41fd69

block_41fd69:
  ; Code: jmpq .L_420695	 RIP: 41fd69	 Bytes: 5
  %loadMem_41fd69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fd69 = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fd69, i64 2348, i64 5)
  store %struct.Memory* %call_41fd69, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_41fd6e:	 RIP: 41fd6e	 Bytes: 0
block_.L_41fd6e:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41fd6e	 Bytes: 4
  %loadMem_41fd6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fd6e = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fd6e)
  store %struct.Memory* %call_41fd6e, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, (%rax)	 RIP: 41fd72	 Bytes: 4
  %loadMem_41fd72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fd72 = call %struct.Memory* @routine_cmpq__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fd72)
  store %struct.Memory* %call_41fd72, %struct.Memory** %MEMORY

  ; Code: jne .L_41fd81	 RIP: 41fd76	 Bytes: 6
  %loadMem_41fd76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fd76 = call %struct.Memory* @routine_jne_.L_41fd81(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fd76, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41fd76, %struct.Memory** %MEMORY

  %loadBr_41fd76 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41fd76 = icmp eq i8 %loadBr_41fd76, 1
  br i1 %cmpBr_41fd76, label %block_.L_41fd81, label %block_41fd7c

block_41fd7c:
  ; Code: jmpq .L_420695	 RIP: 41fd7c	 Bytes: 5
  %loadMem_41fd7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fd7c = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fd7c, i64 2329, i64 5)
  store %struct.Memory* %call_41fd7c, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_41fd81:	 RIP: 41fd81	 Bytes: 0
block_.L_41fd81:

  ; Code: cmpl $0x0, 0x676d90	 RIP: 41fd81	 Bytes: 8
  %loadMem_41fd81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fd81 = call %struct.Memory* @routine_cmpl__0x0__0x676d90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fd81)
  store %struct.Memory* %call_41fd81, %struct.Memory** %MEMORY

  ; Code: jne .L_41fd94	 RIP: 41fd89	 Bytes: 6
  %loadMem_41fd89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fd89 = call %struct.Memory* @routine_jne_.L_41fd94(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fd89, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41fd89, %struct.Memory** %MEMORY

  %loadBr_41fd89 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41fd89 = icmp eq i8 %loadBr_41fd89, 1
  br i1 %cmpBr_41fd89, label %block_.L_41fd94, label %block_41fd8f

block_41fd8f:
  ; Code: jmpq .L_420695	 RIP: 41fd8f	 Bytes: 5
  %loadMem_41fd8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fd8f = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fd8f, i64 2310, i64 5)
  store %struct.Memory* %call_41fd8f, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_41fd94:	 RIP: 41fd94	 Bytes: 0
block_.L_41fd94:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41fd94	 Bytes: 4
  %loadMem_41fd94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fd94 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fd94)
  store %struct.Memory* %call_41fd94, %struct.Memory** %MEMORY

  ; Code: movl -0x23c(%rbp), %esi	 RIP: 41fd98	 Bytes: 6
  %loadMem_41fd98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fd98 = call %struct.Memory* @routine_movl_MINUS0x23c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fd98)
  store %struct.Memory* %call_41fd98, %struct.Memory** %MEMORY

  ; Code: callq .AllocPlan7Body	 RIP: 41fd9e	 Bytes: 5
  %loadMem1_41fd9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41fd9e = call %struct.Memory* @routine_callq_.AllocPlan7Body(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41fd9e, i64 74290, i64 5, i64 5)
  store %struct.Memory* %call1_41fd9e, %struct.Memory** %MEMORY

  %loadMem2_41fd9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41fd9e = load i64, i64* %3
  %call2_41fd9e = call %struct.Memory* @sub_431fd0.AllocPlan7Body(%struct.State* %0, i64  %loadPC_41fd9e, %struct.Memory* %loadMem2_41fd9e)
  store %struct.Memory* %call2_41fd9e, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41fda3	 Bytes: 4
  %loadMem_41fda3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fda3 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fda3)
  store %struct.Memory* %call_41fda3, %struct.Memory** %MEMORY

  ; Code: callq .ZeroPlan7	 RIP: 41fda7	 Bytes: 5
  %loadMem1_41fda7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41fda7 = call %struct.Memory* @routine_callq_.ZeroPlan7(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41fda7, i64 76873, i64 5, i64 5)
  store %struct.Memory* %call1_41fda7, %struct.Memory** %MEMORY

  %loadMem2_41fda7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41fda7 = load i64, i64* %3
  %call2_41fda7 = call %struct.Memory* @sub_4329f0.ZeroPlan7(%struct.State* %0, i64  %loadPC_41fda7, %struct.Memory* %loadMem2_41fda7)
  store %struct.Memory* %call2_41fda7, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41fdac	 Bytes: 4
  %loadMem_41fdac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fdac = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fdac)
  store %struct.Memory* %call_41fdac, %struct.Memory** %MEMORY

  ; Code: callq .Plan7LSConfig	 RIP: 41fdb0	 Bytes: 5
  %loadMem1_41fdb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41fdb0 = call %struct.Memory* @routine_callq_.Plan7LSConfig(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41fdb0, i64 83136, i64 5, i64 5)
  store %struct.Memory* %call1_41fdb0, %struct.Memory** %MEMORY

  %loadMem2_41fdb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41fdb0 = load i64, i64* %3
  %call2_41fdb0 = call %struct.Memory* @sub_434270.Plan7LSConfig(%struct.State* %0, i64  %loadPC_41fdb0, %struct.Memory* %loadMem2_41fdb0)
  store %struct.Memory* %call2_41fdb0, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %esi	 RIP: 41fdb5	 Bytes: 5
  %loadMem_41fdb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fdb5 = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fdb5)
  store %struct.Memory* %call_41fdb5, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 41fdba	 Bytes: 4
  %loadMem_41fdba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fdba = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fdba)
  store %struct.Memory* %call_41fdba, %struct.Memory** %MEMORY

  ; Code: callq .Getword	 RIP: 41fdbe	 Bytes: 5
  %loadMem1_41fdbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41fdbe = call %struct.Memory* @routine_callq_.Getword(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41fdbe, i64 36530, i64 5, i64 5)
  store %struct.Memory* %call1_41fdbe, %struct.Memory** %MEMORY

  %loadMem2_41fdbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41fdbe = load i64, i64* %3
  %call2_41fdbe = call %struct.Memory* @sub_428c70.Getword(%struct.State* %0, i64  %loadPC_41fdbe, %struct.Memory* %loadMem2_41fdbe)
  store %struct.Memory* %call2_41fdbe, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 41fdc3	 Bytes: 7
  %loadMem_41fdc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fdc3 = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fdc3)
  store %struct.Memory* %call_41fdc3, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41fdca	 Bytes: 4
  %loadMem_41fdca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fdca = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fdca)
  store %struct.Memory* %call_41fdca, %struct.Memory** %MEMORY

  ; Code: jne .L_41fdd9	 RIP: 41fdce	 Bytes: 6
  %loadMem_41fdce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fdce = call %struct.Memory* @routine_jne_.L_41fdd9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fdce, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41fdce, %struct.Memory** %MEMORY

  %loadBr_41fdce = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41fdce = icmp eq i8 %loadBr_41fdce, 1
  br i1 %cmpBr_41fdce, label %block_.L_41fdd9, label %block_41fdd4

block_41fdd4:
  ; Code: jmpq .L_420695	 RIP: 41fdd4	 Bytes: 5
  %loadMem_41fdd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fdd4 = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fdd4, i64 2241, i64 5)
  store %struct.Memory* %call_41fdd4, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_41fdd9:	 RIP: 41fdd9	 Bytes: 0
block_.L_41fdd9:

  ; Code: movl $0x0, -0x244(%rbp)	 RIP: 41fdd9	 Bytes: 10
  %loadMem_41fdd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fdd9 = call %struct.Memory* @routine_movl__0x0__MINUS0x244__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fdd9)
  store %struct.Memory* %call_41fdd9, %struct.Memory** %MEMORY

  ; Code: .L_41fde3:	 RIP: 41fde3	 Bytes: 0
  br label %block_.L_41fde3
block_.L_41fde3:

  ; Code: movl -0x244(%rbp), %eax	 RIP: 41fde3	 Bytes: 6
  %loadMem_41fde3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fde3 = call %struct.Memory* @routine_movl_MINUS0x244__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fde3)
  store %struct.Memory* %call_41fde3, %struct.Memory** %MEMORY

  ; Code: cmpl 0x677060, %eax	 RIP: 41fde9	 Bytes: 7
  %loadMem_41fde9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fde9 = call %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fde9)
  store %struct.Memory* %call_41fde9, %struct.Memory** %MEMORY

  ; Code: jge .L_41fe33	 RIP: 41fdf0	 Bytes: 6
  %loadMem_41fdf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fdf0 = call %struct.Memory* @routine_jge_.L_41fe33(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fdf0, i8* %BRANCH_TAKEN, i64 67, i64 6, i64 6)
  store %struct.Memory* %call_41fdf0, %struct.Memory** %MEMORY

  %loadBr_41fdf0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41fdf0 = icmp eq i8 %loadBr_41fdf0, 1
  br i1 %cmpBr_41fdf0, label %block_.L_41fe33, label %block_41fdf6

block_41fdf6:
  ; Code: movl $0x1, %esi	 RIP: 41fdf6	 Bytes: 5
  %loadMem_41fdf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fdf6 = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fdf6)
  store %struct.Memory* %call_41fdf6, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 41fdfb	 Bytes: 4
  %loadMem_41fdfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fdfb = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fdfb)
  store %struct.Memory* %call_41fdfb, %struct.Memory** %MEMORY

  ; Code: callq .Getword	 RIP: 41fdff	 Bytes: 5
  %loadMem1_41fdff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41fdff = call %struct.Memory* @routine_callq_.Getword(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41fdff, i64 36465, i64 5, i64 5)
  store %struct.Memory* %call1_41fdff, %struct.Memory** %MEMORY

  %loadMem2_41fdff = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41fdff = load i64, i64* %3
  %call2_41fdff = call %struct.Memory* @sub_428c70.Getword(%struct.State* %0, i64  %loadPC_41fdff, %struct.Memory* %loadMem2_41fdff)
  store %struct.Memory* %call2_41fdff, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 41fe04	 Bytes: 7
  %loadMem_41fe04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fe04 = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fe04)
  store %struct.Memory* %call_41fe04, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41fe0b	 Bytes: 4
  %loadMem_41fe0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fe0b = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fe0b)
  store %struct.Memory* %call_41fe0b, %struct.Memory** %MEMORY

  ; Code: jne .L_41fe1a	 RIP: 41fe0f	 Bytes: 6
  %loadMem_41fe0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fe0f = call %struct.Memory* @routine_jne_.L_41fe1a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fe0f, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41fe0f, %struct.Memory** %MEMORY

  %loadBr_41fe0f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41fe0f = icmp eq i8 %loadBr_41fe0f, 1
  br i1 %cmpBr_41fe0f, label %block_.L_41fe1a, label %block_41fe15

block_41fe15:
  ; Code: jmpq .L_420695	 RIP: 41fe15	 Bytes: 5
  %loadMem_41fe15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fe15 = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fe15, i64 2176, i64 5)
  store %struct.Memory* %call_41fe15, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_41fe1a:	 RIP: 41fe1a	 Bytes: 0
block_.L_41fe1a:

  ; Code: jmpq .L_41fe1f	 RIP: 41fe1a	 Bytes: 5
  %loadMem_41fe1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fe1a = call %struct.Memory* @routine_jmpq_.L_41fe1f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fe1a, i64 5, i64 5)
  store %struct.Memory* %call_41fe1a, %struct.Memory** %MEMORY

  br label %block_.L_41fe1f

  ; Code: .L_41fe1f:	 RIP: 41fe1f	 Bytes: 0
block_.L_41fe1f:

  ; Code: movl -0x244(%rbp), %eax	 RIP: 41fe1f	 Bytes: 6
  %loadMem_41fe1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fe1f = call %struct.Memory* @routine_movl_MINUS0x244__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fe1f)
  store %struct.Memory* %call_41fe1f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41fe25	 Bytes: 3
  %loadMem_41fe25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fe25 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fe25)
  store %struct.Memory* %call_41fe25, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x244(%rbp)	 RIP: 41fe28	 Bytes: 6
  %loadMem_41fe28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fe28 = call %struct.Memory* @routine_movl__eax__MINUS0x244__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fe28)
  store %struct.Memory* %call_41fe28, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41fde3	 RIP: 41fe2e	 Bytes: 5
  %loadMem_41fe2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fe2e = call %struct.Memory* @routine_jmpq_.L_41fde3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fe2e, i64 -75, i64 5)
  store %struct.Memory* %call_41fe2e, %struct.Memory** %MEMORY

  br label %block_.L_41fde3

  ; Code: .L_41fe33:	 RIP: 41fe33	 Bytes: 0
block_.L_41fe33:

  ; Code: movl $0x1, %esi	 RIP: 41fe33	 Bytes: 5
  %loadMem_41fe33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fe33 = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fe33)
  store %struct.Memory* %call_41fe33, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 41fe38	 Bytes: 4
  %loadMem_41fe38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fe38 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fe38)
  store %struct.Memory* %call_41fe38, %struct.Memory** %MEMORY

  ; Code: callq .Getword	 RIP: 41fe3c	 Bytes: 5
  %loadMem1_41fe3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41fe3c = call %struct.Memory* @routine_callq_.Getword(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41fe3c, i64 36404, i64 5, i64 5)
  store %struct.Memory* %call1_41fe3c, %struct.Memory** %MEMORY

  %loadMem2_41fe3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41fe3c = load i64, i64* %3
  %call2_41fe3c = call %struct.Memory* @sub_428c70.Getword(%struct.State* %0, i64  %loadPC_41fe3c, %struct.Memory* %loadMem2_41fe3c)
  store %struct.Memory* %call2_41fe3c, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 41fe41	 Bytes: 7
  %loadMem_41fe41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fe41 = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fe41)
  store %struct.Memory* %call_41fe41, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41fe48	 Bytes: 4
  %loadMem_41fe48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fe48 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fe48)
  store %struct.Memory* %call_41fe48, %struct.Memory** %MEMORY

  ; Code: jne .L_41fe57	 RIP: 41fe4c	 Bytes: 6
  %loadMem_41fe4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fe4c = call %struct.Memory* @routine_jne_.L_41fe57(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fe4c, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41fe4c, %struct.Memory** %MEMORY

  %loadBr_41fe4c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41fe4c = icmp eq i8 %loadBr_41fe4c, 1
  br i1 %cmpBr_41fe4c, label %block_.L_41fe57, label %block_41fe52

block_41fe52:
  ; Code: jmpq .L_420695	 RIP: 41fe52	 Bytes: 5
  %loadMem_41fe52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fe52 = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fe52, i64 2115, i64 5)
  store %struct.Memory* %call_41fe52, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_41fe57:	 RIP: 41fe57	 Bytes: 0
block_.L_41fe57:

  ; Code: movss 0x348c9(%rip), %xmm0	 RIP: 41fe57	 Bytes: 8
  %loadMem_41fe57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fe57 = call %struct.Memory* @routine_movss_0x348c9__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fe57)
  store %struct.Memory* %call_41fe57, %struct.Memory** %MEMORY

  ; Code: movq -0x238(%rbp), %rdi	 RIP: 41fe5f	 Bytes: 7
  %loadMem_41fe5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fe5f = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fe5f)
  store %struct.Memory* %call_41fe5f, %struct.Memory** %MEMORY

  ; Code: callq .ascii2prob	 RIP: 41fe66	 Bytes: 5
  %loadMem1_41fe66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41fe66 = call %struct.Memory* @routine_callq_.ascii2prob(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41fe66, i64 6426, i64 5, i64 5)
  store %struct.Memory* %call1_41fe66, %struct.Memory** %MEMORY

  %loadMem2_41fe66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41fe66 = load i64, i64* %3
  %call2_41fe66 = call %struct.Memory* @sub_421780.ascii2prob(%struct.State* %0, i64  %loadPC_41fe66, %struct.Memory* %loadMem2_41fe66)
  store %struct.Memory* %call2_41fe66, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %esi	 RIP: 41fe6b	 Bytes: 5
  %loadMem_41fe6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fe6b = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fe6b)
  store %struct.Memory* %call_41fe6b, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41fe70	 Bytes: 4
  %loadMem_41fe70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fe70 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fe70)
  store %struct.Memory* %call_41fe70, %struct.Memory** %MEMORY

  ; Code: movq 0xd0(%rdi), %rdi	 RIP: 41fe74	 Bytes: 7
  %loadMem_41fe74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fe74 = call %struct.Memory* @routine_movq_0xd0__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fe74)
  store %struct.Memory* %call_41fe74, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x4(%rdi)	 RIP: 41fe7b	 Bytes: 5
  %loadMem_41fe7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fe7b = call %struct.Memory* @routine_movss__xmm0__0x4__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fe7b)
  store %struct.Memory* %call_41fe7b, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 41fe80	 Bytes: 4
  %loadMem_41fe80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fe80 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fe80)
  store %struct.Memory* %call_41fe80, %struct.Memory** %MEMORY

  ; Code: callq .Getword	 RIP: 41fe84	 Bytes: 5
  %loadMem1_41fe84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41fe84 = call %struct.Memory* @routine_callq_.Getword(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41fe84, i64 36332, i64 5, i64 5)
  store %struct.Memory* %call1_41fe84, %struct.Memory** %MEMORY

  %loadMem2_41fe84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41fe84 = load i64, i64* %3
  %call2_41fe84 = call %struct.Memory* @sub_428c70.Getword(%struct.State* %0, i64  %loadPC_41fe84, %struct.Memory* %loadMem2_41fe84)
  store %struct.Memory* %call2_41fe84, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 41fe89	 Bytes: 7
  %loadMem_41fe89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fe89 = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fe89)
  store %struct.Memory* %call_41fe89, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41fe90	 Bytes: 4
  %loadMem_41fe90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fe90 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fe90)
  store %struct.Memory* %call_41fe90, %struct.Memory** %MEMORY

  ; Code: jne .L_41fe9f	 RIP: 41fe94	 Bytes: 6
  %loadMem_41fe94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fe94 = call %struct.Memory* @routine_jne_.L_41fe9f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fe94, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41fe94, %struct.Memory** %MEMORY

  %loadBr_41fe94 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41fe94 = icmp eq i8 %loadBr_41fe94, 1
  br i1 %cmpBr_41fe94, label %block_.L_41fe9f, label %block_41fe9a

block_41fe9a:
  ; Code: jmpq .L_420695	 RIP: 41fe9a	 Bytes: 5
  %loadMem_41fe9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fe9a = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fe9a, i64 2043, i64 5)
  store %struct.Memory* %call_41fe9a, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_41fe9f:	 RIP: 41fe9f	 Bytes: 0
block_.L_41fe9f:

  ; Code: movss 0x34881(%rip), %xmm0	 RIP: 41fe9f	 Bytes: 8
  %loadMem_41fe9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fe9f = call %struct.Memory* @routine_movss_0x34881__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fe9f)
  store %struct.Memory* %call_41fe9f, %struct.Memory** %MEMORY

  ; Code: movq -0x238(%rbp), %rdi	 RIP: 41fea7	 Bytes: 7
  %loadMem_41fea7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fea7 = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fea7)
  store %struct.Memory* %call_41fea7, %struct.Memory** %MEMORY

  ; Code: callq .ascii2prob	 RIP: 41feae	 Bytes: 5
  %loadMem1_41feae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41feae = call %struct.Memory* @routine_callq_.ascii2prob(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41feae, i64 6354, i64 5, i64 5)
  store %struct.Memory* %call1_41feae, %struct.Memory** %MEMORY

  %loadMem2_41feae = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41feae = load i64, i64* %3
  %call2_41feae = call %struct.Memory* @sub_421780.ascii2prob(%struct.State* %0, i64  %loadPC_41feae, %struct.Memory* %loadMem2_41feae)
  store %struct.Memory* %call2_41feae, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41feb3	 Bytes: 4
  %loadMem_41feb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41feb3 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41feb3)
  store %struct.Memory* %call_41feb3, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0xa8(%rdi)	 RIP: 41feb7	 Bytes: 8
  %loadMem_41feb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41feb7 = call %struct.Memory* @routine_movss__xmm0__0xa8__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41feb7)
  store %struct.Memory* %call_41feb7, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41febf	 Bytes: 4
  %loadMem_41febf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41febf = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41febf)
  store %struct.Memory* %call_41febf, %struct.Memory** %MEMORY

  ; Code: movq 0xd0(%rdi), %rdi	 RIP: 41fec3	 Bytes: 7
  %loadMem_41fec3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fec3 = call %struct.Memory* @routine_movq_0xd0__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fec3)
  store %struct.Memory* %call_41fec3, %struct.Memory** %MEMORY

  ; Code: movss 0x4(%rdi), %xmm0	 RIP: 41feca	 Bytes: 5
  %loadMem_41feca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41feca = call %struct.Memory* @routine_movss_0x4__rdi____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41feca)
  store %struct.Memory* %call_41feca, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41fecf	 Bytes: 4
  %loadMem_41fecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fecf = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fecf)
  store %struct.Memory* %call_41fecf, %struct.Memory** %MEMORY

  ; Code: movq 0xd0(%rdi), %rdi	 RIP: 41fed3	 Bytes: 7
  %loadMem_41fed3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fed3 = call %struct.Memory* @routine_movq_0xd0__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fed3)
  store %struct.Memory* %call_41fed3, %struct.Memory** %MEMORY

  ; Code: movss 0x4(%rdi), %xmm1	 RIP: 41feda	 Bytes: 5
  %loadMem_41feda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41feda = call %struct.Memory* @routine_movss_0x4__rdi____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41feda)
  store %struct.Memory* %call_41feda, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41fedf	 Bytes: 4
  %loadMem_41fedf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fedf = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fedf)
  store %struct.Memory* %call_41fedf, %struct.Memory** %MEMORY

  ; Code: addss 0xa8(%rdi), %xmm1	 RIP: 41fee3	 Bytes: 8
  %loadMem_41fee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fee3 = call %struct.Memory* @routine_addss_0xa8__rdi____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fee3)
  store %struct.Memory* %call_41fee3, %struct.Memory** %MEMORY

  ; Code: divss %xmm1, %xmm0	 RIP: 41feeb	 Bytes: 4
  %loadMem_41feeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41feeb = call %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41feeb)
  store %struct.Memory* %call_41feeb, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41feef	 Bytes: 4
  %loadMem_41feef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41feef = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41feef)
  store %struct.Memory* %call_41feef, %struct.Memory** %MEMORY

  ; Code: movq 0xd0(%rdi), %rdi	 RIP: 41fef3	 Bytes: 7
  %loadMem_41fef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fef3 = call %struct.Memory* @routine_movq_0xd0__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fef3)
  store %struct.Memory* %call_41fef3, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x4(%rdi)	 RIP: 41fefa	 Bytes: 5
  %loadMem_41fefa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fefa = call %struct.Memory* @routine_movss__xmm0__0x4__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fefa)
  store %struct.Memory* %call_41fefa, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41feff	 Bytes: 4
  %loadMem_41feff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41feff = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41feff)
  store %struct.Memory* %call_41feff, %struct.Memory** %MEMORY

  ; Code: movss 0xa8(%rdi), %xmm0	 RIP: 41ff03	 Bytes: 8
  %loadMem_41ff03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ff03 = call %struct.Memory* @routine_movss_0xa8__rdi____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ff03)
  store %struct.Memory* %call_41ff03, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41ff0b	 Bytes: 4
  %loadMem_41ff0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ff0b = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ff0b)
  store %struct.Memory* %call_41ff0b, %struct.Memory** %MEMORY

  ; Code: movq 0xd0(%rdi), %rdi	 RIP: 41ff0f	 Bytes: 7
  %loadMem_41ff0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ff0f = call %struct.Memory* @routine_movq_0xd0__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ff0f)
  store %struct.Memory* %call_41ff0f, %struct.Memory** %MEMORY

  ; Code: movss 0x4(%rdi), %xmm1	 RIP: 41ff16	 Bytes: 5
  %loadMem_41ff16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ff16 = call %struct.Memory* @routine_movss_0x4__rdi____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ff16)
  store %struct.Memory* %call_41ff16, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41ff1b	 Bytes: 4
  %loadMem_41ff1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ff1b = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ff1b)
  store %struct.Memory* %call_41ff1b, %struct.Memory** %MEMORY

  ; Code: addss 0xa8(%rdi), %xmm1	 RIP: 41ff1f	 Bytes: 8
  %loadMem_41ff1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ff1f = call %struct.Memory* @routine_addss_0xa8__rdi____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ff1f)
  store %struct.Memory* %call_41ff1f, %struct.Memory** %MEMORY

  ; Code: divss %xmm1, %xmm0	 RIP: 41ff27	 Bytes: 4
  %loadMem_41ff27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ff27 = call %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ff27)
  store %struct.Memory* %call_41ff27, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41ff2b	 Bytes: 4
  %loadMem_41ff2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ff2b = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ff2b)
  store %struct.Memory* %call_41ff2b, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0xa8(%rdi)	 RIP: 41ff2f	 Bytes: 8
  %loadMem_41ff2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ff2f = call %struct.Memory* @routine_movss__xmm0__0xa8__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ff2f)
  store %struct.Memory* %call_41ff2f, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x244(%rbp)	 RIP: 41ff37	 Bytes: 10
  %loadMem_41ff37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ff37 = call %struct.Memory* @routine_movl__0x0__MINUS0x244__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ff37)
  store %struct.Memory* %call_41ff37, %struct.Memory** %MEMORY

  ; Code: .L_41ff41:	 RIP: 41ff41	 Bytes: 0
  br label %block_.L_41ff41
block_.L_41ff41:

  ; Code: cmpl $0x7, -0x244(%rbp)	 RIP: 41ff41	 Bytes: 7
  %loadMem_41ff41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ff41 = call %struct.Memory* @routine_cmpl__0x7__MINUS0x244__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ff41)
  store %struct.Memory* %call_41ff41, %struct.Memory** %MEMORY

  ; Code: jge .L_41ff8b	 RIP: 41ff48	 Bytes: 6
  %loadMem_41ff48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ff48 = call %struct.Memory* @routine_jge_.L_41ff8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ff48, i8* %BRANCH_TAKEN, i64 67, i64 6, i64 6)
  store %struct.Memory* %call_41ff48, %struct.Memory** %MEMORY

  %loadBr_41ff48 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ff48 = icmp eq i8 %loadBr_41ff48, 1
  br i1 %cmpBr_41ff48, label %block_.L_41ff8b, label %block_41ff4e

block_41ff4e:
  ; Code: movl $0x1, %esi	 RIP: 41ff4e	 Bytes: 5
  %loadMem_41ff4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ff4e = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ff4e)
  store %struct.Memory* %call_41ff4e, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 41ff53	 Bytes: 4
  %loadMem_41ff53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ff53 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ff53)
  store %struct.Memory* %call_41ff53, %struct.Memory** %MEMORY

  ; Code: callq .Getword	 RIP: 41ff57	 Bytes: 5
  %loadMem1_41ff57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ff57 = call %struct.Memory* @routine_callq_.Getword(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ff57, i64 36121, i64 5, i64 5)
  store %struct.Memory* %call1_41ff57, %struct.Memory** %MEMORY

  %loadMem2_41ff57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ff57 = load i64, i64* %3
  %call2_41ff57 = call %struct.Memory* @sub_428c70.Getword(%struct.State* %0, i64  %loadPC_41ff57, %struct.Memory* %loadMem2_41ff57)
  store %struct.Memory* %call2_41ff57, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 41ff5c	 Bytes: 7
  %loadMem_41ff5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ff5c = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ff5c)
  store %struct.Memory* %call_41ff5c, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41ff63	 Bytes: 4
  %loadMem_41ff63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ff63 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ff63)
  store %struct.Memory* %call_41ff63, %struct.Memory** %MEMORY

  ; Code: jne .L_41ff72	 RIP: 41ff67	 Bytes: 6
  %loadMem_41ff67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ff67 = call %struct.Memory* @routine_jne_.L_41ff72(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ff67, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41ff67, %struct.Memory** %MEMORY

  %loadBr_41ff67 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ff67 = icmp eq i8 %loadBr_41ff67, 1
  br i1 %cmpBr_41ff67, label %block_.L_41ff72, label %block_41ff6d

block_41ff6d:
  ; Code: jmpq .L_420695	 RIP: 41ff6d	 Bytes: 5
  %loadMem_41ff6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ff6d = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ff6d, i64 1832, i64 5)
  store %struct.Memory* %call_41ff6d, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_41ff72:	 RIP: 41ff72	 Bytes: 0
block_.L_41ff72:

  ; Code: jmpq .L_41ff77	 RIP: 41ff72	 Bytes: 5
  %loadMem_41ff72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ff72 = call %struct.Memory* @routine_jmpq_.L_41ff77(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ff72, i64 5, i64 5)
  store %struct.Memory* %call_41ff72, %struct.Memory** %MEMORY

  br label %block_.L_41ff77

  ; Code: .L_41ff77:	 RIP: 41ff77	 Bytes: 0
block_.L_41ff77:

  ; Code: movl -0x244(%rbp), %eax	 RIP: 41ff77	 Bytes: 6
  %loadMem_41ff77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ff77 = call %struct.Memory* @routine_movl_MINUS0x244__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ff77)
  store %struct.Memory* %call_41ff77, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41ff7d	 Bytes: 3
  %loadMem_41ff7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ff7d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ff7d)
  store %struct.Memory* %call_41ff7d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x244(%rbp)	 RIP: 41ff80	 Bytes: 6
  %loadMem_41ff80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ff80 = call %struct.Memory* @routine_movl__eax__MINUS0x244__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ff80)
  store %struct.Memory* %call_41ff80, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41ff41	 RIP: 41ff86	 Bytes: 5
  %loadMem_41ff86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ff86 = call %struct.Memory* @routine_jmpq_.L_41ff41(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ff86, i64 -69, i64 5)
  store %struct.Memory* %call_41ff86, %struct.Memory** %MEMORY

  br label %block_.L_41ff41

  ; Code: .L_41ff8b:	 RIP: 41ff8b	 Bytes: 0
block_.L_41ff8b:

  ; Code: movl $0x4, %esi	 RIP: 41ff8b	 Bytes: 5
  %loadMem_41ff8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ff8b = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ff8b)
  store %struct.Memory* %call_41ff8b, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 41ff90	 Bytes: 4
  %loadMem_41ff90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ff90 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ff90)
  store %struct.Memory* %call_41ff90, %struct.Memory** %MEMORY

  ; Code: callq .Getword	 RIP: 41ff94	 Bytes: 5
  %loadMem1_41ff94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ff94 = call %struct.Memory* @routine_callq_.Getword(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ff94, i64 36060, i64 5, i64 5)
  store %struct.Memory* %call1_41ff94, %struct.Memory** %MEMORY

  %loadMem2_41ff94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ff94 = load i64, i64* %3
  %call2_41ff94 = call %struct.Memory* @sub_428c70.Getword(%struct.State* %0, i64  %loadPC_41ff94, %struct.Memory* %loadMem2_41ff94)
  store %struct.Memory* %call2_41ff94, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 41ff99	 Bytes: 7
  %loadMem_41ff99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ff99 = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ff99)
  store %struct.Memory* %call_41ff99, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41ffa0	 Bytes: 4
  %loadMem_41ffa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ffa0 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ffa0)
  store %struct.Memory* %call_41ffa0, %struct.Memory** %MEMORY

  ; Code: jne .L_41ffaf	 RIP: 41ffa4	 Bytes: 6
  %loadMem_41ffa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ffa4 = call %struct.Memory* @routine_jne_.L_41ffaf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ffa4, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41ffa4, %struct.Memory** %MEMORY

  %loadBr_41ffa4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ffa4 = icmp eq i8 %loadBr_41ffa4, 1
  br i1 %cmpBr_41ffa4, label %block_.L_41ffaf, label %block_41ffaa

block_41ffaa:
  ; Code: jmpq .L_420695	 RIP: 41ffaa	 Bytes: 5
  %loadMem_41ffaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ffaa = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ffaa, i64 1771, i64 5)
  store %struct.Memory* %call_41ffaa, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_41ffaf:	 RIP: 41ffaf	 Bytes: 0
block_.L_41ffaf:

  ; Code: movl $0x4, %esi	 RIP: 41ffaf	 Bytes: 5
  %loadMem_41ffaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ffaf = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ffaf)
  store %struct.Memory* %call_41ffaf, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 41ffb4	 Bytes: 4
  %loadMem_41ffb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ffb4 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ffb4)
  store %struct.Memory* %call_41ffb4, %struct.Memory** %MEMORY

  ; Code: callq .Getword	 RIP: 41ffb8	 Bytes: 5
  %loadMem1_41ffb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41ffb8 = call %struct.Memory* @routine_callq_.Getword(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41ffb8, i64 36024, i64 5, i64 5)
  store %struct.Memory* %call1_41ffb8, %struct.Memory** %MEMORY

  %loadMem2_41ffb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ffb8 = load i64, i64* %3
  %call2_41ffb8 = call %struct.Memory* @sub_428c70.Getword(%struct.State* %0, i64  %loadPC_41ffb8, %struct.Memory* %loadMem2_41ffb8)
  store %struct.Memory* %call2_41ffb8, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 41ffbd	 Bytes: 7
  %loadMem_41ffbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ffbd = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ffbd)
  store %struct.Memory* %call_41ffbd, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41ffc4	 Bytes: 4
  %loadMem_41ffc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ffc4 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ffc4)
  store %struct.Memory* %call_41ffc4, %struct.Memory** %MEMORY

  ; Code: jne .L_41ffd3	 RIP: 41ffc8	 Bytes: 6
  %loadMem_41ffc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ffc8 = call %struct.Memory* @routine_jne_.L_41ffd3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ffc8, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41ffc8, %struct.Memory** %MEMORY

  %loadBr_41ffc8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ffc8 = icmp eq i8 %loadBr_41ffc8, 1
  br i1 %cmpBr_41ffc8, label %block_.L_41ffd3, label %block_41ffce

block_41ffce:
  ; Code: jmpq .L_420695	 RIP: 41ffce	 Bytes: 5
  %loadMem_41ffce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ffce = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ffce, i64 1735, i64 5)
  store %struct.Memory* %call_41ffce, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_41ffd3:	 RIP: 41ffd3	 Bytes: 0
block_.L_41ffd3:

  ; Code: movl $0x1, -0x240(%rbp)	 RIP: 41ffd3	 Bytes: 10
  %loadMem_41ffd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ffd3 = call %struct.Memory* @routine_movl__0x1__MINUS0x240__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ffd3)
  store %struct.Memory* %call_41ffd3, %struct.Memory** %MEMORY

  ; Code: .L_41ffdd:	 RIP: 41ffdd	 Bytes: 0
  br label %block_.L_41ffdd
block_.L_41ffdd:

  ; Code: movl -0x240(%rbp), %eax	 RIP: 41ffdd	 Bytes: 6
  %loadMem_41ffdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ffdd = call %struct.Memory* @routine_movl_MINUS0x240__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ffdd)
  store %struct.Memory* %call_41ffdd, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41ffe3	 Bytes: 4
  %loadMem_41ffe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ffe3 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ffe3)
  store %struct.Memory* %call_41ffe3, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 41ffe7	 Bytes: 6
  %loadMem_41ffe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ffe7 = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ffe7)
  store %struct.Memory* %call_41ffe7, %struct.Memory** %MEMORY

  ; Code: jg .L_420513	 RIP: 41ffed	 Bytes: 6
  %loadMem_41ffed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ffed = call %struct.Memory* @routine_jg_.L_420513(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ffed, i8* %BRANCH_TAKEN, i64 1318, i64 6, i64 6)
  store %struct.Memory* %call_41ffed, %struct.Memory** %MEMORY

  %loadBr_41ffed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ffed = icmp eq i8 %loadBr_41ffed, 1
  br i1 %cmpBr_41ffed, label %block_.L_420513, label %block_41fff3

block_41fff3:
  ; Code: movl $0x1, %esi	 RIP: 41fff3	 Bytes: 5
  %loadMem_41fff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fff3 = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fff3)
  store %struct.Memory* %call_41fff3, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 41fff8	 Bytes: 4
  %loadMem_41fff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41fff8 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41fff8)
  store %struct.Memory* %call_41fff8, %struct.Memory** %MEMORY

  ; Code: callq .Getword	 RIP: 41fffc	 Bytes: 5
  %loadMem1_41fffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41fffc = call %struct.Memory* @routine_callq_.Getword(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41fffc, i64 35956, i64 5, i64 5)
  store %struct.Memory* %call1_41fffc, %struct.Memory** %MEMORY

  %loadMem2_41fffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41fffc = load i64, i64* %3
  %call2_41fffc = call %struct.Memory* @sub_428c70.Getword(%struct.State* %0, i64  %loadPC_41fffc, %struct.Memory* %loadMem2_41fffc)
  store %struct.Memory* %call2_41fffc, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 420001	 Bytes: 7
  %loadMem_420001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420001 = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420001)
  store %struct.Memory* %call_420001, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 420008	 Bytes: 4
  %loadMem_420008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420008 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420008)
  store %struct.Memory* %call_420008, %struct.Memory** %MEMORY

  ; Code: jne .L_420017	 RIP: 42000c	 Bytes: 6
  %loadMem_42000c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42000c = call %struct.Memory* @routine_jne_.L_420017(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42000c, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_42000c, %struct.Memory** %MEMORY

  %loadBr_42000c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42000c = icmp eq i8 %loadBr_42000c, 1
  br i1 %cmpBr_42000c, label %block_.L_420017, label %block_420012

block_420012:
  ; Code: jmpq .L_420695	 RIP: 420012	 Bytes: 5
  %loadMem_420012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420012 = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420012, i64 1667, i64 5)
  store %struct.Memory* %call_420012, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_420017:	 RIP: 420017	 Bytes: 0
block_.L_420017:

  ; Code: movl $0x0, -0x244(%rbp)	 RIP: 420017	 Bytes: 10
  %loadMem_420017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420017 = call %struct.Memory* @routine_movl__0x0__MINUS0x244__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420017)
  store %struct.Memory* %call_420017, %struct.Memory** %MEMORY

  ; Code: .L_420021:	 RIP: 420021	 Bytes: 0
  br label %block_.L_420021
block_.L_420021:

  ; Code: movl -0x244(%rbp), %eax	 RIP: 420021	 Bytes: 6
  %loadMem_420021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420021 = call %struct.Memory* @routine_movl_MINUS0x244__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420021)
  store %struct.Memory* %call_420021, %struct.Memory** %MEMORY

  ; Code: cmpl 0x677060, %eax	 RIP: 420027	 Bytes: 7
  %loadMem_420027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420027 = call %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420027)
  store %struct.Memory* %call_420027, %struct.Memory** %MEMORY

  ; Code: jge .L_4200ae	 RIP: 42002e	 Bytes: 6
  %loadMem_42002e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42002e = call %struct.Memory* @routine_jge_.L_4200ae(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42002e, i8* %BRANCH_TAKEN, i64 128, i64 6, i64 6)
  store %struct.Memory* %call_42002e, %struct.Memory** %MEMORY

  %loadBr_42002e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42002e = icmp eq i8 %loadBr_42002e, 1
  br i1 %cmpBr_42002e, label %block_.L_4200ae, label %block_420034

block_420034:
  ; Code: movl $0x1, %esi	 RIP: 420034	 Bytes: 5
  %loadMem_420034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420034 = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420034)
  store %struct.Memory* %call_420034, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 420039	 Bytes: 4
  %loadMem_420039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420039 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420039)
  store %struct.Memory* %call_420039, %struct.Memory** %MEMORY

  ; Code: callq .Getword	 RIP: 42003d	 Bytes: 5
  %loadMem1_42003d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42003d = call %struct.Memory* @routine_callq_.Getword(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42003d, i64 35891, i64 5, i64 5)
  store %struct.Memory* %call1_42003d, %struct.Memory** %MEMORY

  %loadMem2_42003d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42003d = load i64, i64* %3
  %call2_42003d = call %struct.Memory* @sub_428c70.Getword(%struct.State* %0, i64  %loadPC_42003d, %struct.Memory* %loadMem2_42003d)
  store %struct.Memory* %call2_42003d, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 420042	 Bytes: 7
  %loadMem_420042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420042 = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420042)
  store %struct.Memory* %call_420042, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 420049	 Bytes: 4
  %loadMem_420049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420049 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420049)
  store %struct.Memory* %call_420049, %struct.Memory** %MEMORY

  ; Code: jne .L_420058	 RIP: 42004d	 Bytes: 6
  %loadMem_42004d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42004d = call %struct.Memory* @routine_jne_.L_420058(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42004d, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_42004d, %struct.Memory** %MEMORY

  %loadBr_42004d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42004d = icmp eq i8 %loadBr_42004d, 1
  br i1 %cmpBr_42004d, label %block_.L_420058, label %block_420053

block_420053:
  ; Code: jmpq .L_420695	 RIP: 420053	 Bytes: 5
  %loadMem_420053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420053 = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420053, i64 1602, i64 5)
  store %struct.Memory* %call_420053, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_420058:	 RIP: 420058	 Bytes: 0
block_.L_420058:

  ; Code: movq -0x238(%rbp), %rdi	 RIP: 420058	 Bytes: 7
  %loadMem_420058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420058 = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420058)
  store %struct.Memory* %call_420058, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 42005f	 Bytes: 4
  %loadMem_42005f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42005f = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42005f)
  store %struct.Memory* %call_42005f, %struct.Memory** %MEMORY

  ; Code: movslq -0x244(%rbp), %rcx	 RIP: 420063	 Bytes: 7
  %loadMem_420063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420063 = call %struct.Memory* @routine_movslq_MINUS0x244__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420063)
  store %struct.Memory* %call_420063, %struct.Memory** %MEMORY

  ; Code: movss 0xe0(%rax,%rcx,4), %xmm0	 RIP: 42006a	 Bytes: 9
  %loadMem_42006a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42006a = call %struct.Memory* @routine_movss_0xe0__rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42006a)
  store %struct.Memory* %call_42006a, %struct.Memory** %MEMORY

  ; Code: callq .ascii2prob	 RIP: 420073	 Bytes: 5
  %loadMem1_420073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420073 = call %struct.Memory* @routine_callq_.ascii2prob(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420073, i64 5901, i64 5, i64 5)
  store %struct.Memory* %call1_420073, %struct.Memory** %MEMORY

  %loadMem2_420073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420073 = load i64, i64* %3
  %call2_420073 = call %struct.Memory* @sub_421780.ascii2prob(%struct.State* %0, i64  %loadPC_420073, %struct.Memory* %loadMem2_420073)
  store %struct.Memory* %call2_420073, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 420078	 Bytes: 4
  %loadMem_420078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420078 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420078)
  store %struct.Memory* %call_420078, %struct.Memory** %MEMORY

  ; Code: movq 0x98(%rax), %rax	 RIP: 42007c	 Bytes: 7
  %loadMem_42007c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42007c = call %struct.Memory* @routine_movq_0x98__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42007c)
  store %struct.Memory* %call_42007c, %struct.Memory** %MEMORY

  ; Code: movslq -0x240(%rbp), %rcx	 RIP: 420083	 Bytes: 7
  %loadMem_420083 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420083 = call %struct.Memory* @routine_movslq_MINUS0x240__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420083)
  store %struct.Memory* %call_420083, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42008a	 Bytes: 4
  %loadMem_42008a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42008a = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42008a)
  store %struct.Memory* %call_42008a, %struct.Memory** %MEMORY

  ; Code: movslq -0x244(%rbp), %rcx	 RIP: 42008e	 Bytes: 7
  %loadMem_42008e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42008e = call %struct.Memory* @routine_movslq_MINUS0x244__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42008e)
  store %struct.Memory* %call_42008e, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax,%rcx,4)	 RIP: 420095	 Bytes: 5
  %loadMem_420095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420095 = call %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420095)
  store %struct.Memory* %call_420095, %struct.Memory** %MEMORY

  ; Code: movl -0x244(%rbp), %eax	 RIP: 42009a	 Bytes: 6
  %loadMem_42009a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42009a = call %struct.Memory* @routine_movl_MINUS0x244__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42009a)
  store %struct.Memory* %call_42009a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4200a0	 Bytes: 3
  %loadMem_4200a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4200a0 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4200a0)
  store %struct.Memory* %call_4200a0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x244(%rbp)	 RIP: 4200a3	 Bytes: 6
  %loadMem_4200a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4200a3 = call %struct.Memory* @routine_movl__eax__MINUS0x244__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4200a3)
  store %struct.Memory* %call_4200a3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_420021	 RIP: 4200a9	 Bytes: 5
  %loadMem_4200a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4200a9 = call %struct.Memory* @routine_jmpq_.L_420021(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4200a9, i64 -136, i64 5)
  store %struct.Memory* %call_4200a9, %struct.Memory** %MEMORY

  br label %block_.L_420021

  ; Code: .L_4200ae:	 RIP: 4200ae	 Bytes: 0
block_.L_4200ae:

  ; Code: movl $0x1, %esi	 RIP: 4200ae	 Bytes: 5
  %loadMem_4200ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4200ae = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4200ae)
  store %struct.Memory* %call_4200ae, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 4200b3	 Bytes: 4
  %loadMem_4200b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4200b3 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4200b3)
  store %struct.Memory* %call_4200b3, %struct.Memory** %MEMORY

  ; Code: callq .Getword	 RIP: 4200b7	 Bytes: 5
  %loadMem1_4200b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4200b7 = call %struct.Memory* @routine_callq_.Getword(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4200b7, i64 35769, i64 5, i64 5)
  store %struct.Memory* %call1_4200b7, %struct.Memory** %MEMORY

  %loadMem2_4200b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4200b7 = load i64, i64* %3
  %call2_4200b7 = call %struct.Memory* @sub_428c70.Getword(%struct.State* %0, i64  %loadPC_4200b7, %struct.Memory* %loadMem2_4200b7)
  store %struct.Memory* %call2_4200b7, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 4200bc	 Bytes: 7
  %loadMem_4200bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4200bc = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4200bc)
  store %struct.Memory* %call_4200bc, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4200c3	 Bytes: 4
  %loadMem_4200c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4200c3 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4200c3)
  store %struct.Memory* %call_4200c3, %struct.Memory** %MEMORY

  ; Code: jne .L_4200d2	 RIP: 4200c7	 Bytes: 6
  %loadMem_4200c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4200c7 = call %struct.Memory* @routine_jne_.L_4200d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4200c7, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4200c7, %struct.Memory** %MEMORY

  %loadBr_4200c7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4200c7 = icmp eq i8 %loadBr_4200c7, 1
  br i1 %cmpBr_4200c7, label %block_.L_4200d2, label %block_4200cd

block_4200cd:
  ; Code: jmpq .L_420695	 RIP: 4200cd	 Bytes: 5
  %loadMem_4200cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4200cd = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4200cd, i64 1480, i64 5)
  store %struct.Memory* %call_4200cd, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_4200d2:	 RIP: 4200d2	 Bytes: 0
block_.L_4200d2:

  ; Code: movl -0x240(%rbp), %eax	 RIP: 4200d2	 Bytes: 6
  %loadMem_4200d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4200d2 = call %struct.Memory* @routine_movl_MINUS0x240__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4200d2)
  store %struct.Memory* %call_4200d2, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4200d8	 Bytes: 4
  %loadMem_4200d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4200d8 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4200d8)
  store %struct.Memory* %call_4200d8, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 4200dc	 Bytes: 6
  %loadMem_4200dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4200dc = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4200dc)
  store %struct.Memory* %call_4200dc, %struct.Memory** %MEMORY

  ; Code: jge .L_420116	 RIP: 4200e2	 Bytes: 6
  %loadMem_4200e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4200e2 = call %struct.Memory* @routine_jge_.L_420116(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4200e2, i8* %BRANCH_TAKEN, i64 52, i64 6, i64 6)
  store %struct.Memory* %call_4200e2, %struct.Memory** %MEMORY

  %loadBr_4200e2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4200e2 = icmp eq i8 %loadBr_4200e2, 1
  br i1 %cmpBr_4200e2, label %block_.L_420116, label %block_4200e8

block_4200e8:
  ; Code: movss 0x34638(%rip), %xmm0	 RIP: 4200e8	 Bytes: 8
  %loadMem_4200e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4200e8 = call %struct.Memory* @routine_movss_0x34638__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4200e8)
  store %struct.Memory* %call_4200e8, %struct.Memory** %MEMORY

  ; Code: movq -0x238(%rbp), %rdi	 RIP: 4200f0	 Bytes: 7
  %loadMem_4200f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4200f0 = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4200f0)
  store %struct.Memory* %call_4200f0, %struct.Memory** %MEMORY

  ; Code: callq .ascii2prob	 RIP: 4200f7	 Bytes: 5
  %loadMem1_4200f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4200f7 = call %struct.Memory* @routine_callq_.ascii2prob(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4200f7, i64 5769, i64 5, i64 5)
  store %struct.Memory* %call1_4200f7, %struct.Memory** %MEMORY

  %loadMem2_4200f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4200f7 = load i64, i64* %3
  %call2_4200f7 = call %struct.Memory* @sub_421780.ascii2prob(%struct.State* %0, i64  %loadPC_4200f7, %struct.Memory* %loadMem2_4200f7)
  store %struct.Memory* %call2_4200f7, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 4200fc	 Bytes: 4
  %loadMem_4200fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4200fc = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4200fc)
  store %struct.Memory* %call_4200fc, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rdi), %rdi	 RIP: 420100	 Bytes: 7
  %loadMem_420100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420100 = call %struct.Memory* @routine_movq_0x90__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420100)
  store %struct.Memory* %call_420100, %struct.Memory** %MEMORY

  ; Code: movslq -0x240(%rbp), %rax	 RIP: 420107	 Bytes: 7
  %loadMem_420107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420107 = call %struct.Memory* @routine_movslq_MINUS0x240__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420107)
  store %struct.Memory* %call_420107, %struct.Memory** %MEMORY

  ; Code: movq (%rdi,%rax,8), %rax	 RIP: 42010e	 Bytes: 4
  %loadMem_42010e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42010e = call %struct.Memory* @routine_movq___rdi__rax_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42010e)
  store %struct.Memory* %call_42010e, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax)	 RIP: 420112	 Bytes: 4
  %loadMem_420112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420112 = call %struct.Memory* @routine_movss__xmm0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420112)
  store %struct.Memory* %call_420112, %struct.Memory** %MEMORY

  ; Code: .L_420116:	 RIP: 420116	 Bytes: 0
  br label %block_.L_420116
block_.L_420116:

  ; Code: movl $0x1, %esi	 RIP: 420116	 Bytes: 5
  %loadMem_420116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420116 = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420116)
  store %struct.Memory* %call_420116, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 42011b	 Bytes: 4
  %loadMem_42011b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42011b = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42011b)
  store %struct.Memory* %call_42011b, %struct.Memory** %MEMORY

  ; Code: callq .Getword	 RIP: 42011f	 Bytes: 5
  %loadMem1_42011f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42011f = call %struct.Memory* @routine_callq_.Getword(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42011f, i64 35665, i64 5, i64 5)
  store %struct.Memory* %call1_42011f, %struct.Memory** %MEMORY

  %loadMem2_42011f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42011f = load i64, i64* %3
  %call2_42011f = call %struct.Memory* @sub_428c70.Getword(%struct.State* %0, i64  %loadPC_42011f, %struct.Memory* %loadMem2_42011f)
  store %struct.Memory* %call2_42011f, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 420124	 Bytes: 7
  %loadMem_420124 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420124 = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420124)
  store %struct.Memory* %call_420124, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 42012b	 Bytes: 4
  %loadMem_42012b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42012b = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42012b)
  store %struct.Memory* %call_42012b, %struct.Memory** %MEMORY

  ; Code: jne .L_42013a	 RIP: 42012f	 Bytes: 6
  %loadMem_42012f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42012f = call %struct.Memory* @routine_jne_.L_42013a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42012f, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_42012f, %struct.Memory** %MEMORY

  %loadBr_42012f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42012f = icmp eq i8 %loadBr_42012f, 1
  br i1 %cmpBr_42012f, label %block_.L_42013a, label %block_420135

block_420135:
  ; Code: jmpq .L_420695	 RIP: 420135	 Bytes: 5
  %loadMem_420135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420135 = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420135, i64 1376, i64 5)
  store %struct.Memory* %call_420135, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_42013a:	 RIP: 42013a	 Bytes: 0
block_.L_42013a:

  ; Code: movl -0x240(%rbp), %eax	 RIP: 42013a	 Bytes: 6
  %loadMem_42013a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42013a = call %struct.Memory* @routine_movl_MINUS0x240__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42013a)
  store %struct.Memory* %call_42013a, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 420140	 Bytes: 4
  %loadMem_420140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420140 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420140)
  store %struct.Memory* %call_420140, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 420144	 Bytes: 6
  %loadMem_420144 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420144 = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420144)
  store %struct.Memory* %call_420144, %struct.Memory** %MEMORY

  ; Code: jge .L_4201bd	 RIP: 42014a	 Bytes: 6
  %loadMem_42014a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42014a = call %struct.Memory* @routine_jge_.L_4201bd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42014a, i8* %BRANCH_TAKEN, i64 115, i64 6, i64 6)
  store %struct.Memory* %call_42014a, %struct.Memory** %MEMORY

  %loadBr_42014a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42014a = icmp eq i8 %loadBr_42014a, 1
  br i1 %cmpBr_42014a, label %block_.L_4201bd, label %block_420150

block_420150:
  ; Code: movl -0x240(%rbp), %eax	 RIP: 420150	 Bytes: 6
  %loadMem_420150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420150 = call %struct.Memory* @routine_movl_MINUS0x240__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420150)
  store %struct.Memory* %call_420150, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 420156	 Bytes: 4
  %loadMem_420156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420156 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420156)
  store %struct.Memory* %call_420156, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 42015a	 Bytes: 6
  %loadMem_42015a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42015a = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42015a)
  store %struct.Memory* %call_42015a, %struct.Memory** %MEMORY

  ; Code: jne .L_420176	 RIP: 420160	 Bytes: 6
  %loadMem_420160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420160 = call %struct.Memory* @routine_jne_.L_420176(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420160, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_420160, %struct.Memory** %MEMORY

  %loadBr_420160 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420160 = icmp eq i8 %loadBr_420160, 1
  br i1 %cmpBr_420160, label %block_.L_420176, label %block_420166

block_420166:
  ; Code: xorps %xmm0, %xmm0	 RIP: 420166	 Bytes: 3
  %loadMem_420166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420166 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420166)
  store %struct.Memory* %call_420166, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x268(%rbp)	 RIP: 420169	 Bytes: 8
  %loadMem_420169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420169 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x268__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420169)
  store %struct.Memory* %call_420169, %struct.Memory** %MEMORY

  ; Code: jmpq .L_420196	 RIP: 420171	 Bytes: 5
  %loadMem_420171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420171 = call %struct.Memory* @routine_jmpq_.L_420196(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420171, i64 37, i64 5)
  store %struct.Memory* %call_420171, %struct.Memory** %MEMORY

  br label %block_.L_420196

  ; Code: .L_420176:	 RIP: 420176	 Bytes: 0
block_.L_420176:

  ; Code: movss 0x345aa(%rip), %xmm0	 RIP: 420176	 Bytes: 8
  %loadMem_420176 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420176 = call %struct.Memory* @routine_movss_0x345aa__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420176)
  store %struct.Memory* %call_420176, %struct.Memory** %MEMORY

  ; Code: movq -0x238(%rbp), %rdi	 RIP: 42017e	 Bytes: 7
  %loadMem_42017e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42017e = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42017e)
  store %struct.Memory* %call_42017e, %struct.Memory** %MEMORY

  ; Code: callq .ascii2prob	 RIP: 420185	 Bytes: 5
  %loadMem1_420185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420185 = call %struct.Memory* @routine_callq_.ascii2prob(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420185, i64 5627, i64 5, i64 5)
  store %struct.Memory* %call1_420185, %struct.Memory** %MEMORY

  %loadMem2_420185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420185 = load i64, i64* %3
  %call2_420185 = call %struct.Memory* @sub_421780.ascii2prob(%struct.State* %0, i64  %loadPC_420185, %struct.Memory* %loadMem2_420185)
  store %struct.Memory* %call2_420185, %struct.Memory** %MEMORY

  ; Code: cvtss2sd %xmm0, %xmm0	 RIP: 42018a	 Bytes: 4
  %loadMem_42018a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42018a = call %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42018a)
  store %struct.Memory* %call_42018a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x268(%rbp)	 RIP: 42018e	 Bytes: 8
  %loadMem_42018e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42018e = call %struct.Memory* @routine_movsd__xmm0__MINUS0x268__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42018e)
  store %struct.Memory* %call_42018e, %struct.Memory** %MEMORY

  ; Code: .L_420196:	 RIP: 420196	 Bytes: 0
  br label %block_.L_420196
block_.L_420196:

  ; Code: movsd -0x268(%rbp), %xmm0	 RIP: 420196	 Bytes: 8
  %loadMem_420196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420196 = call %struct.Memory* @routine_movsd_MINUS0x268__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420196)
  store %struct.Memory* %call_420196, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 42019e	 Bytes: 4
  %loadMem_42019e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42019e = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42019e)
  store %struct.Memory* %call_42019e, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4201a2	 Bytes: 4
  %loadMem_4201a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4201a2 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4201a2)
  store %struct.Memory* %call_4201a2, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rax), %rax	 RIP: 4201a6	 Bytes: 7
  %loadMem_4201a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4201a6 = call %struct.Memory* @routine_movq_0x90__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4201a6)
  store %struct.Memory* %call_4201a6, %struct.Memory** %MEMORY

  ; Code: movslq -0x240(%rbp), %rcx	 RIP: 4201ad	 Bytes: 7
  %loadMem_4201ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4201ad = call %struct.Memory* @routine_movslq_MINUS0x240__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4201ad)
  store %struct.Memory* %call_4201ad, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4201b4	 Bytes: 4
  %loadMem_4201b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4201b4 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4201b4)
  store %struct.Memory* %call_4201b4, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x8(%rax)	 RIP: 4201b8	 Bytes: 5
  %loadMem_4201b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4201b8 = call %struct.Memory* @routine_movss__xmm0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4201b8)
  store %struct.Memory* %call_4201b8, %struct.Memory** %MEMORY

  ; Code: .L_4201bd:	 RIP: 4201bd	 Bytes: 0
  br label %block_.L_4201bd
block_.L_4201bd:

  ; Code: movl $0x1, %esi	 RIP: 4201bd	 Bytes: 5
  %loadMem_4201bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4201bd = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4201bd)
  store %struct.Memory* %call_4201bd, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 4201c2	 Bytes: 4
  %loadMem_4201c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4201c2 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4201c2)
  store %struct.Memory* %call_4201c2, %struct.Memory** %MEMORY

  ; Code: callq .Getword	 RIP: 4201c6	 Bytes: 5
  %loadMem1_4201c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4201c6 = call %struct.Memory* @routine_callq_.Getword(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4201c6, i64 35498, i64 5, i64 5)
  store %struct.Memory* %call1_4201c6, %struct.Memory** %MEMORY

  %loadMem2_4201c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4201c6 = load i64, i64* %3
  %call2_4201c6 = call %struct.Memory* @sub_428c70.Getword(%struct.State* %0, i64  %loadPC_4201c6, %struct.Memory* %loadMem2_4201c6)
  store %struct.Memory* %call2_4201c6, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 4201cb	 Bytes: 7
  %loadMem_4201cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4201cb = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4201cb)
  store %struct.Memory* %call_4201cb, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4201d2	 Bytes: 4
  %loadMem_4201d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4201d2 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4201d2)
  store %struct.Memory* %call_4201d2, %struct.Memory** %MEMORY

  ; Code: jne .L_4201e1	 RIP: 4201d6	 Bytes: 6
  %loadMem_4201d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4201d6 = call %struct.Memory* @routine_jne_.L_4201e1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4201d6, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4201d6, %struct.Memory** %MEMORY

  %loadBr_4201d6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4201d6 = icmp eq i8 %loadBr_4201d6, 1
  br i1 %cmpBr_4201d6, label %block_.L_4201e1, label %block_4201dc

block_4201dc:
  ; Code: jmpq .L_420695	 RIP: 4201dc	 Bytes: 5
  %loadMem_4201dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4201dc = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4201dc, i64 1209, i64 5)
  store %struct.Memory* %call_4201dc, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_4201e1:	 RIP: 4201e1	 Bytes: 0
block_.L_4201e1:

  ; Code: movl -0x240(%rbp), %eax	 RIP: 4201e1	 Bytes: 6
  %loadMem_4201e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4201e1 = call %struct.Memory* @routine_movl_MINUS0x240__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4201e1)
  store %struct.Memory* %call_4201e1, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4201e7	 Bytes: 4
  %loadMem_4201e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4201e7 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4201e7)
  store %struct.Memory* %call_4201e7, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 4201eb	 Bytes: 6
  %loadMem_4201eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4201eb = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4201eb)
  store %struct.Memory* %call_4201eb, %struct.Memory** %MEMORY

  ; Code: jge .L_420226	 RIP: 4201f1	 Bytes: 6
  %loadMem_4201f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4201f1 = call %struct.Memory* @routine_jge_.L_420226(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4201f1, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_4201f1, %struct.Memory** %MEMORY

  %loadBr_4201f1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4201f1 = icmp eq i8 %loadBr_4201f1, 1
  br i1 %cmpBr_4201f1, label %block_.L_420226, label %block_4201f7

block_4201f7:
  ; Code: movss 0x34529(%rip), %xmm0	 RIP: 4201f7	 Bytes: 8
  %loadMem_4201f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4201f7 = call %struct.Memory* @routine_movss_0x34529__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4201f7)
  store %struct.Memory* %call_4201f7, %struct.Memory** %MEMORY

  ; Code: movq -0x238(%rbp), %rdi	 RIP: 4201ff	 Bytes: 7
  %loadMem_4201ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4201ff = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4201ff)
  store %struct.Memory* %call_4201ff, %struct.Memory** %MEMORY

  ; Code: callq .ascii2prob	 RIP: 420206	 Bytes: 5
  %loadMem1_420206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420206 = call %struct.Memory* @routine_callq_.ascii2prob(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420206, i64 5498, i64 5, i64 5)
  store %struct.Memory* %call1_420206, %struct.Memory** %MEMORY

  %loadMem2_420206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420206 = load i64, i64* %3
  %call2_420206 = call %struct.Memory* @sub_421780.ascii2prob(%struct.State* %0, i64  %loadPC_420206, %struct.Memory* %loadMem2_420206)
  store %struct.Memory* %call2_420206, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 42020b	 Bytes: 4
  %loadMem_42020b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42020b = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42020b)
  store %struct.Memory* %call_42020b, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rdi), %rdi	 RIP: 42020f	 Bytes: 7
  %loadMem_42020f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42020f = call %struct.Memory* @routine_movq_0x90__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42020f)
  store %struct.Memory* %call_42020f, %struct.Memory** %MEMORY

  ; Code: movslq -0x240(%rbp), %rax	 RIP: 420216	 Bytes: 7
  %loadMem_420216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420216 = call %struct.Memory* @routine_movslq_MINUS0x240__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420216)
  store %struct.Memory* %call_420216, %struct.Memory** %MEMORY

  ; Code: movq (%rdi,%rax,8), %rax	 RIP: 42021d	 Bytes: 4
  %loadMem_42021d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42021d = call %struct.Memory* @routine_movq___rdi__rax_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42021d)
  store %struct.Memory* %call_42021d, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x4(%rax)	 RIP: 420221	 Bytes: 5
  %loadMem_420221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420221 = call %struct.Memory* @routine_movss__xmm0__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420221)
  store %struct.Memory* %call_420221, %struct.Memory** %MEMORY

  ; Code: .L_420226:	 RIP: 420226	 Bytes: 0
  br label %block_.L_420226
block_.L_420226:

  ; Code: movl $0x1, %esi	 RIP: 420226	 Bytes: 5
  %loadMem_420226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420226 = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420226)
  store %struct.Memory* %call_420226, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 42022b	 Bytes: 4
  %loadMem_42022b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42022b = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42022b)
  store %struct.Memory* %call_42022b, %struct.Memory** %MEMORY

  ; Code: callq .Getword	 RIP: 42022f	 Bytes: 5
  %loadMem1_42022f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42022f = call %struct.Memory* @routine_callq_.Getword(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42022f, i64 35393, i64 5, i64 5)
  store %struct.Memory* %call1_42022f, %struct.Memory** %MEMORY

  %loadMem2_42022f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42022f = load i64, i64* %3
  %call2_42022f = call %struct.Memory* @sub_428c70.Getword(%struct.State* %0, i64  %loadPC_42022f, %struct.Memory* %loadMem2_42022f)
  store %struct.Memory* %call2_42022f, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 420234	 Bytes: 7
  %loadMem_420234 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420234 = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420234)
  store %struct.Memory* %call_420234, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 42023b	 Bytes: 4
  %loadMem_42023b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42023b = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42023b)
  store %struct.Memory* %call_42023b, %struct.Memory** %MEMORY

  ; Code: jne .L_42024a	 RIP: 42023f	 Bytes: 6
  %loadMem_42023f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42023f = call %struct.Memory* @routine_jne_.L_42024a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42023f, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_42023f, %struct.Memory** %MEMORY

  %loadBr_42023f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42023f = icmp eq i8 %loadBr_42023f, 1
  br i1 %cmpBr_42023f, label %block_.L_42024a, label %block_420245

block_420245:
  ; Code: jmpq .L_420695	 RIP: 420245	 Bytes: 5
  %loadMem_420245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420245 = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420245, i64 1104, i64 5)
  store %struct.Memory* %call_420245, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_42024a:	 RIP: 42024a	 Bytes: 0
block_.L_42024a:

  ; Code: movl -0x240(%rbp), %eax	 RIP: 42024a	 Bytes: 6
  %loadMem_42024a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42024a = call %struct.Memory* @routine_movl_MINUS0x240__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42024a)
  store %struct.Memory* %call_42024a, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 420250	 Bytes: 4
  %loadMem_420250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420250 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420250)
  store %struct.Memory* %call_420250, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 420254	 Bytes: 6
  %loadMem_420254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420254 = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420254)
  store %struct.Memory* %call_420254, %struct.Memory** %MEMORY

  ; Code: jge .L_42028f	 RIP: 42025a	 Bytes: 6
  %loadMem_42025a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42025a = call %struct.Memory* @routine_jge_.L_42028f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42025a, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_42025a, %struct.Memory** %MEMORY

  %loadBr_42025a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42025a = icmp eq i8 %loadBr_42025a, 1
  br i1 %cmpBr_42025a, label %block_.L_42028f, label %block_420260

block_420260:
  ; Code: movss 0x344c0(%rip), %xmm0	 RIP: 420260	 Bytes: 8
  %loadMem_420260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420260 = call %struct.Memory* @routine_movss_0x344c0__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420260)
  store %struct.Memory* %call_420260, %struct.Memory** %MEMORY

  ; Code: movq -0x238(%rbp), %rdi	 RIP: 420268	 Bytes: 7
  %loadMem_420268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420268 = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420268)
  store %struct.Memory* %call_420268, %struct.Memory** %MEMORY

  ; Code: callq .ascii2prob	 RIP: 42026f	 Bytes: 5
  %loadMem1_42026f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42026f = call %struct.Memory* @routine_callq_.ascii2prob(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42026f, i64 5393, i64 5, i64 5)
  store %struct.Memory* %call1_42026f, %struct.Memory** %MEMORY

  %loadMem2_42026f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42026f = load i64, i64* %3
  %call2_42026f = call %struct.Memory* @sub_421780.ascii2prob(%struct.State* %0, i64  %loadPC_42026f, %struct.Memory* %loadMem2_42026f)
  store %struct.Memory* %call2_42026f, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 420274	 Bytes: 4
  %loadMem_420274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420274 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420274)
  store %struct.Memory* %call_420274, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rdi), %rdi	 RIP: 420278	 Bytes: 7
  %loadMem_420278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420278 = call %struct.Memory* @routine_movq_0x90__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420278)
  store %struct.Memory* %call_420278, %struct.Memory** %MEMORY

  ; Code: movslq -0x240(%rbp), %rax	 RIP: 42027f	 Bytes: 7
  %loadMem_42027f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42027f = call %struct.Memory* @routine_movslq_MINUS0x240__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42027f)
  store %struct.Memory* %call_42027f, %struct.Memory** %MEMORY

  ; Code: movq (%rdi,%rax,8), %rax	 RIP: 420286	 Bytes: 4
  %loadMem_420286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420286 = call %struct.Memory* @routine_movq___rdi__rax_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420286)
  store %struct.Memory* %call_420286, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x14(%rax)	 RIP: 42028a	 Bytes: 5
  %loadMem_42028a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42028a = call %struct.Memory* @routine_movss__xmm0__0x14__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42028a)
  store %struct.Memory* %call_42028a, %struct.Memory** %MEMORY

  ; Code: .L_42028f:	 RIP: 42028f	 Bytes: 0
  br label %block_.L_42028f
block_.L_42028f:

  ; Code: movl $0x1, %esi	 RIP: 42028f	 Bytes: 5
  %loadMem_42028f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42028f = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42028f)
  store %struct.Memory* %call_42028f, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 420294	 Bytes: 4
  %loadMem_420294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420294 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420294)
  store %struct.Memory* %call_420294, %struct.Memory** %MEMORY

  ; Code: callq .Getword	 RIP: 420298	 Bytes: 5
  %loadMem1_420298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420298 = call %struct.Memory* @routine_callq_.Getword(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420298, i64 35288, i64 5, i64 5)
  store %struct.Memory* %call1_420298, %struct.Memory** %MEMORY

  %loadMem2_420298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420298 = load i64, i64* %3
  %call2_420298 = call %struct.Memory* @sub_428c70.Getword(%struct.State* %0, i64  %loadPC_420298, %struct.Memory* %loadMem2_420298)
  store %struct.Memory* %call2_420298, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 42029d	 Bytes: 7
  %loadMem_42029d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42029d = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42029d)
  store %struct.Memory* %call_42029d, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4202a4	 Bytes: 4
  %loadMem_4202a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4202a4 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4202a4)
  store %struct.Memory* %call_4202a4, %struct.Memory** %MEMORY

  ; Code: jne .L_4202b3	 RIP: 4202a8	 Bytes: 6
  %loadMem_4202a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4202a8 = call %struct.Memory* @routine_jne_.L_4202b3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4202a8, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4202a8, %struct.Memory** %MEMORY

  %loadBr_4202a8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4202a8 = icmp eq i8 %loadBr_4202a8, 1
  br i1 %cmpBr_4202a8, label %block_.L_4202b3, label %block_4202ae

block_4202ae:
  ; Code: jmpq .L_420695	 RIP: 4202ae	 Bytes: 5
  %loadMem_4202ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4202ae = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4202ae, i64 999, i64 5)
  store %struct.Memory* %call_4202ae, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_4202b3:	 RIP: 4202b3	 Bytes: 0
block_.L_4202b3:

  ; Code: movl -0x240(%rbp), %eax	 RIP: 4202b3	 Bytes: 6
  %loadMem_4202b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4202b3 = call %struct.Memory* @routine_movl_MINUS0x240__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4202b3)
  store %struct.Memory* %call_4202b3, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4202b9	 Bytes: 4
  %loadMem_4202b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4202b9 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4202b9)
  store %struct.Memory* %call_4202b9, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 4202bd	 Bytes: 6
  %loadMem_4202bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4202bd = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4202bd)
  store %struct.Memory* %call_4202bd, %struct.Memory** %MEMORY

  ; Code: jge .L_420336	 RIP: 4202c3	 Bytes: 6
  %loadMem_4202c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4202c3 = call %struct.Memory* @routine_jge_.L_420336(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4202c3, i8* %BRANCH_TAKEN, i64 115, i64 6, i64 6)
  store %struct.Memory* %call_4202c3, %struct.Memory** %MEMORY

  %loadBr_4202c3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4202c3 = icmp eq i8 %loadBr_4202c3, 1
  br i1 %cmpBr_4202c3, label %block_.L_420336, label %block_4202c9

block_4202c9:
  ; Code: movl -0x240(%rbp), %eax	 RIP: 4202c9	 Bytes: 6
  %loadMem_4202c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4202c9 = call %struct.Memory* @routine_movl_MINUS0x240__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4202c9)
  store %struct.Memory* %call_4202c9, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4202cf	 Bytes: 4
  %loadMem_4202cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4202cf = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4202cf)
  store %struct.Memory* %call_4202cf, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 4202d3	 Bytes: 6
  %loadMem_4202d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4202d3 = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4202d3)
  store %struct.Memory* %call_4202d3, %struct.Memory** %MEMORY

  ; Code: jne .L_4202ef	 RIP: 4202d9	 Bytes: 6
  %loadMem_4202d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4202d9 = call %struct.Memory* @routine_jne_.L_4202ef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4202d9, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4202d9, %struct.Memory** %MEMORY

  %loadBr_4202d9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4202d9 = icmp eq i8 %loadBr_4202d9, 1
  br i1 %cmpBr_4202d9, label %block_.L_4202ef, label %block_4202df

block_4202df:
  ; Code: xorps %xmm0, %xmm0	 RIP: 4202df	 Bytes: 3
  %loadMem_4202df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4202df = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4202df)
  store %struct.Memory* %call_4202df, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x270(%rbp)	 RIP: 4202e2	 Bytes: 8
  %loadMem_4202e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4202e2 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x270__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4202e2)
  store %struct.Memory* %call_4202e2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42030f	 RIP: 4202ea	 Bytes: 5
  %loadMem_4202ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4202ea = call %struct.Memory* @routine_jmpq_.L_42030f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4202ea, i64 37, i64 5)
  store %struct.Memory* %call_4202ea, %struct.Memory** %MEMORY

  br label %block_.L_42030f

  ; Code: .L_4202ef:	 RIP: 4202ef	 Bytes: 0
block_.L_4202ef:

  ; Code: movss 0x34431(%rip), %xmm0	 RIP: 4202ef	 Bytes: 8
  %loadMem_4202ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4202ef = call %struct.Memory* @routine_movss_0x34431__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4202ef)
  store %struct.Memory* %call_4202ef, %struct.Memory** %MEMORY

  ; Code: movq -0x238(%rbp), %rdi	 RIP: 4202f7	 Bytes: 7
  %loadMem_4202f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4202f7 = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4202f7)
  store %struct.Memory* %call_4202f7, %struct.Memory** %MEMORY

  ; Code: callq .ascii2prob	 RIP: 4202fe	 Bytes: 5
  %loadMem1_4202fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4202fe = call %struct.Memory* @routine_callq_.ascii2prob(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4202fe, i64 5250, i64 5, i64 5)
  store %struct.Memory* %call1_4202fe, %struct.Memory** %MEMORY

  %loadMem2_4202fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4202fe = load i64, i64* %3
  %call2_4202fe = call %struct.Memory* @sub_421780.ascii2prob(%struct.State* %0, i64  %loadPC_4202fe, %struct.Memory* %loadMem2_4202fe)
  store %struct.Memory* %call2_4202fe, %struct.Memory** %MEMORY

  ; Code: cvtss2sd %xmm0, %xmm0	 RIP: 420303	 Bytes: 4
  %loadMem_420303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420303 = call %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420303)
  store %struct.Memory* %call_420303, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x270(%rbp)	 RIP: 420307	 Bytes: 8
  %loadMem_420307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420307 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x270__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420307)
  store %struct.Memory* %call_420307, %struct.Memory** %MEMORY

  ; Code: .L_42030f:	 RIP: 42030f	 Bytes: 0
  br label %block_.L_42030f
block_.L_42030f:

  ; Code: movsd -0x270(%rbp), %xmm0	 RIP: 42030f	 Bytes: 8
  %loadMem_42030f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42030f = call %struct.Memory* @routine_movsd_MINUS0x270__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42030f)
  store %struct.Memory* %call_42030f, %struct.Memory** %MEMORY

  ; Code: cvtsd2ss %xmm0, %xmm0	 RIP: 420317	 Bytes: 4
  %loadMem_420317 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420317 = call %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420317)
  store %struct.Memory* %call_420317, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 42031b	 Bytes: 4
  %loadMem_42031b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42031b = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42031b)
  store %struct.Memory* %call_42031b, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rax), %rax	 RIP: 42031f	 Bytes: 7
  %loadMem_42031f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42031f = call %struct.Memory* @routine_movq_0x90__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42031f)
  store %struct.Memory* %call_42031f, %struct.Memory** %MEMORY

  ; Code: movslq -0x240(%rbp), %rcx	 RIP: 420326	 Bytes: 7
  %loadMem_420326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420326 = call %struct.Memory* @routine_movslq_MINUS0x240__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420326)
  store %struct.Memory* %call_420326, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 42032d	 Bytes: 4
  %loadMem_42032d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42032d = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42032d)
  store %struct.Memory* %call_42032d, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x18(%rax)	 RIP: 420331	 Bytes: 5
  %loadMem_420331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420331 = call %struct.Memory* @routine_movss__xmm0__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420331)
  store %struct.Memory* %call_420331, %struct.Memory** %MEMORY

  ; Code: .L_420336:	 RIP: 420336	 Bytes: 0
  br label %block_.L_420336
block_.L_420336:

  ; Code: movl $0x1, %esi	 RIP: 420336	 Bytes: 5
  %loadMem_420336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420336 = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420336)
  store %struct.Memory* %call_420336, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 42033b	 Bytes: 4
  %loadMem_42033b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42033b = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42033b)
  store %struct.Memory* %call_42033b, %struct.Memory** %MEMORY

  ; Code: callq .Getword	 RIP: 42033f	 Bytes: 5
  %loadMem1_42033f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42033f = call %struct.Memory* @routine_callq_.Getword(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42033f, i64 35121, i64 5, i64 5)
  store %struct.Memory* %call1_42033f, %struct.Memory** %MEMORY

  %loadMem2_42033f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42033f = load i64, i64* %3
  %call2_42033f = call %struct.Memory* @sub_428c70.Getword(%struct.State* %0, i64  %loadPC_42033f, %struct.Memory* %loadMem2_42033f)
  store %struct.Memory* %call2_42033f, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 420344	 Bytes: 7
  %loadMem_420344 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420344 = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420344)
  store %struct.Memory* %call_420344, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 42034b	 Bytes: 4
  %loadMem_42034b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42034b = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42034b)
  store %struct.Memory* %call_42034b, %struct.Memory** %MEMORY

  ; Code: jne .L_42035a	 RIP: 42034f	 Bytes: 6
  %loadMem_42034f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42034f = call %struct.Memory* @routine_jne_.L_42035a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42034f, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_42034f, %struct.Memory** %MEMORY

  %loadBr_42034f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42034f = icmp eq i8 %loadBr_42034f, 1
  br i1 %cmpBr_42034f, label %block_.L_42035a, label %block_420355

block_420355:
  ; Code: jmpq .L_420695	 RIP: 420355	 Bytes: 5
  %loadMem_420355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420355 = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420355, i64 832, i64 5)
  store %struct.Memory* %call_420355, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_42035a:	 RIP: 42035a	 Bytes: 0
block_.L_42035a:

  ; Code: movl $0x1, %esi	 RIP: 42035a	 Bytes: 5
  %loadMem_42035a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42035a = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42035a)
  store %struct.Memory* %call_42035a, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 42035f	 Bytes: 4
  %loadMem_42035f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42035f = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42035f)
  store %struct.Memory* %call_42035f, %struct.Memory** %MEMORY

  ; Code: callq .Getword	 RIP: 420363	 Bytes: 5
  %loadMem1_420363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420363 = call %struct.Memory* @routine_callq_.Getword(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420363, i64 35085, i64 5, i64 5)
  store %struct.Memory* %call1_420363, %struct.Memory** %MEMORY

  %loadMem2_420363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420363 = load i64, i64* %3
  %call2_420363 = call %struct.Memory* @sub_428c70.Getword(%struct.State* %0, i64  %loadPC_420363, %struct.Memory* %loadMem2_420363)
  store %struct.Memory* %call2_420363, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 420368	 Bytes: 7
  %loadMem_420368 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420368 = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420368)
  store %struct.Memory* %call_420368, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 42036f	 Bytes: 4
  %loadMem_42036f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42036f = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42036f)
  store %struct.Memory* %call_42036f, %struct.Memory** %MEMORY

  ; Code: jne .L_42037e	 RIP: 420373	 Bytes: 6
  %loadMem_420373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420373 = call %struct.Memory* @routine_jne_.L_42037e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420373, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_420373, %struct.Memory** %MEMORY

  %loadBr_420373 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420373 = icmp eq i8 %loadBr_420373, 1
  br i1 %cmpBr_420373, label %block_.L_42037e, label %block_420379

block_420379:
  ; Code: jmpq .L_420695	 RIP: 420379	 Bytes: 5
  %loadMem_420379 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420379 = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420379, i64 796, i64 5)
  store %struct.Memory* %call_420379, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_42037e:	 RIP: 42037e	 Bytes: 0
block_.L_42037e:

  ; Code: movl -0x240(%rbp), %eax	 RIP: 42037e	 Bytes: 6
  %loadMem_42037e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42037e = call %struct.Memory* @routine_movl_MINUS0x240__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42037e)
  store %struct.Memory* %call_42037e, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 420384	 Bytes: 4
  %loadMem_420384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420384 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420384)
  store %struct.Memory* %call_420384, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 420388	 Bytes: 6
  %loadMem_420388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420388 = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420388)
  store %struct.Memory* %call_420388, %struct.Memory** %MEMORY

  ; Code: jge .L_4203c3	 RIP: 42038e	 Bytes: 6
  %loadMem_42038e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42038e = call %struct.Memory* @routine_jge_.L_4203c3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42038e, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_42038e, %struct.Memory** %MEMORY

  %loadBr_42038e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42038e = icmp eq i8 %loadBr_42038e, 1
  br i1 %cmpBr_42038e, label %block_.L_4203c3, label %block_420394

block_420394:
  ; Code: movss 0x3438c(%rip), %xmm0	 RIP: 420394	 Bytes: 8
  %loadMem_420394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420394 = call %struct.Memory* @routine_movss_0x3438c__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420394)
  store %struct.Memory* %call_420394, %struct.Memory** %MEMORY

  ; Code: movq -0x238(%rbp), %rdi	 RIP: 42039c	 Bytes: 7
  %loadMem_42039c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42039c = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42039c)
  store %struct.Memory* %call_42039c, %struct.Memory** %MEMORY

  ; Code: callq .ascii2prob	 RIP: 4203a3	 Bytes: 5
  %loadMem1_4203a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4203a3 = call %struct.Memory* @routine_callq_.ascii2prob(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4203a3, i64 5085, i64 5, i64 5)
  store %struct.Memory* %call1_4203a3, %struct.Memory** %MEMORY

  %loadMem2_4203a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4203a3 = load i64, i64* %3
  %call2_4203a3 = call %struct.Memory* @sub_421780.ascii2prob(%struct.State* %0, i64  %loadPC_4203a3, %struct.Memory* %loadMem2_4203a3)
  store %struct.Memory* %call2_4203a3, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 4203a8	 Bytes: 4
  %loadMem_4203a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4203a8 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4203a8)
  store %struct.Memory* %call_4203a8, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rdi), %rdi	 RIP: 4203ac	 Bytes: 7
  %loadMem_4203ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4203ac = call %struct.Memory* @routine_movq_0x90__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4203ac)
  store %struct.Memory* %call_4203ac, %struct.Memory** %MEMORY

  ; Code: movslq -0x240(%rbp), %rax	 RIP: 4203b3	 Bytes: 7
  %loadMem_4203b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4203b3 = call %struct.Memory* @routine_movslq_MINUS0x240__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4203b3)
  store %struct.Memory* %call_4203b3, %struct.Memory** %MEMORY

  ; Code: movq (%rdi,%rax,8), %rax	 RIP: 4203ba	 Bytes: 4
  %loadMem_4203ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4203ba = call %struct.Memory* @routine_movq___rdi__rax_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4203ba)
  store %struct.Memory* %call_4203ba, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0xc(%rax)	 RIP: 4203be	 Bytes: 5
  %loadMem_4203be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4203be = call %struct.Memory* @routine_movss__xmm0__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4203be)
  store %struct.Memory* %call_4203be, %struct.Memory** %MEMORY

  ; Code: .L_4203c3:	 RIP: 4203c3	 Bytes: 0
  br label %block_.L_4203c3
block_.L_4203c3:

  ; Code: movl $0x1, %esi	 RIP: 4203c3	 Bytes: 5
  %loadMem_4203c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4203c3 = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4203c3)
  store %struct.Memory* %call_4203c3, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 4203c8	 Bytes: 4
  %loadMem_4203c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4203c8 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4203c8)
  store %struct.Memory* %call_4203c8, %struct.Memory** %MEMORY

  ; Code: callq .Getword	 RIP: 4203cc	 Bytes: 5
  %loadMem1_4203cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4203cc = call %struct.Memory* @routine_callq_.Getword(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4203cc, i64 34980, i64 5, i64 5)
  store %struct.Memory* %call1_4203cc, %struct.Memory** %MEMORY

  %loadMem2_4203cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4203cc = load i64, i64* %3
  %call2_4203cc = call %struct.Memory* @sub_428c70.Getword(%struct.State* %0, i64  %loadPC_4203cc, %struct.Memory* %loadMem2_4203cc)
  store %struct.Memory* %call2_4203cc, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 4203d1	 Bytes: 7
  %loadMem_4203d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4203d1 = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4203d1)
  store %struct.Memory* %call_4203d1, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4203d8	 Bytes: 4
  %loadMem_4203d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4203d8 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4203d8)
  store %struct.Memory* %call_4203d8, %struct.Memory** %MEMORY

  ; Code: jne .L_4203e7	 RIP: 4203dc	 Bytes: 6
  %loadMem_4203dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4203dc = call %struct.Memory* @routine_jne_.L_4203e7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4203dc, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4203dc, %struct.Memory** %MEMORY

  %loadBr_4203dc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4203dc = icmp eq i8 %loadBr_4203dc, 1
  br i1 %cmpBr_4203dc, label %block_.L_4203e7, label %block_4203e2

block_4203e2:
  ; Code: jmpq .L_420695	 RIP: 4203e2	 Bytes: 5
  %loadMem_4203e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4203e2 = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4203e2, i64 691, i64 5)
  store %struct.Memory* %call_4203e2, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_4203e7:	 RIP: 4203e7	 Bytes: 0
block_.L_4203e7:

  ; Code: movl $0x1, %esi	 RIP: 4203e7	 Bytes: 5
  %loadMem_4203e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4203e7 = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4203e7)
  store %struct.Memory* %call_4203e7, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 4203ec	 Bytes: 4
  %loadMem_4203ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4203ec = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4203ec)
  store %struct.Memory* %call_4203ec, %struct.Memory** %MEMORY

  ; Code: callq .Getword	 RIP: 4203f0	 Bytes: 5
  %loadMem1_4203f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4203f0 = call %struct.Memory* @routine_callq_.Getword(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4203f0, i64 34944, i64 5, i64 5)
  store %struct.Memory* %call1_4203f0, %struct.Memory** %MEMORY

  %loadMem2_4203f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4203f0 = load i64, i64* %3
  %call2_4203f0 = call %struct.Memory* @sub_428c70.Getword(%struct.State* %0, i64  %loadPC_4203f0, %struct.Memory* %loadMem2_4203f0)
  store %struct.Memory* %call2_4203f0, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 4203f5	 Bytes: 7
  %loadMem_4203f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4203f5 = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4203f5)
  store %struct.Memory* %call_4203f5, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4203fc	 Bytes: 4
  %loadMem_4203fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4203fc = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4203fc)
  store %struct.Memory* %call_4203fc, %struct.Memory** %MEMORY

  ; Code: jne .L_42040b	 RIP: 420400	 Bytes: 6
  %loadMem_420400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420400 = call %struct.Memory* @routine_jne_.L_42040b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420400, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_420400, %struct.Memory** %MEMORY

  %loadBr_420400 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420400 = icmp eq i8 %loadBr_420400, 1
  br i1 %cmpBr_420400, label %block_.L_42040b, label %block_420406

block_420406:
  ; Code: jmpq .L_420695	 RIP: 420406	 Bytes: 5
  %loadMem_420406 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420406 = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420406, i64 655, i64 5)
  store %struct.Memory* %call_420406, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_42040b:	 RIP: 42040b	 Bytes: 0
block_.L_42040b:

  ; Code: movl -0x240(%rbp), %eax	 RIP: 42040b	 Bytes: 6
  %loadMem_42040b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42040b = call %struct.Memory* @routine_movl_MINUS0x240__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42040b)
  store %struct.Memory* %call_42040b, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 420411	 Bytes: 4
  %loadMem_420411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420411 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420411)
  store %struct.Memory* %call_420411, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 420415	 Bytes: 6
  %loadMem_420415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420415 = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420415)
  store %struct.Memory* %call_420415, %struct.Memory** %MEMORY

  ; Code: jge .L_420450	 RIP: 42041b	 Bytes: 6
  %loadMem_42041b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42041b = call %struct.Memory* @routine_jge_.L_420450(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42041b, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_42041b, %struct.Memory** %MEMORY

  %loadBr_42041b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42041b = icmp eq i8 %loadBr_42041b, 1
  br i1 %cmpBr_42041b, label %block_.L_420450, label %block_420421

block_420421:
  ; Code: movss 0x342ff(%rip), %xmm0	 RIP: 420421	 Bytes: 8
  %loadMem_420421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420421 = call %struct.Memory* @routine_movss_0x342ff__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420421)
  store %struct.Memory* %call_420421, %struct.Memory** %MEMORY

  ; Code: movq -0x238(%rbp), %rdi	 RIP: 420429	 Bytes: 7
  %loadMem_420429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420429 = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420429)
  store %struct.Memory* %call_420429, %struct.Memory** %MEMORY

  ; Code: callq .ascii2prob	 RIP: 420430	 Bytes: 5
  %loadMem1_420430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420430 = call %struct.Memory* @routine_callq_.ascii2prob(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420430, i64 4944, i64 5, i64 5)
  store %struct.Memory* %call1_420430, %struct.Memory** %MEMORY

  %loadMem2_420430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420430 = load i64, i64* %3
  %call2_420430 = call %struct.Memory* @sub_421780.ascii2prob(%struct.State* %0, i64  %loadPC_420430, %struct.Memory* %loadMem2_420430)
  store %struct.Memory* %call2_420430, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 420435	 Bytes: 4
  %loadMem_420435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420435 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420435)
  store %struct.Memory* %call_420435, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rdi), %rdi	 RIP: 420439	 Bytes: 7
  %loadMem_420439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420439 = call %struct.Memory* @routine_movq_0x90__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420439)
  store %struct.Memory* %call_420439, %struct.Memory** %MEMORY

  ; Code: movslq -0x240(%rbp), %rax	 RIP: 420440	 Bytes: 7
  %loadMem_420440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420440 = call %struct.Memory* @routine_movslq_MINUS0x240__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420440)
  store %struct.Memory* %call_420440, %struct.Memory** %MEMORY

  ; Code: movq (%rdi,%rax,8), %rax	 RIP: 420447	 Bytes: 4
  %loadMem_420447 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420447 = call %struct.Memory* @routine_movq___rdi__rax_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420447)
  store %struct.Memory* %call_420447, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x10(%rax)	 RIP: 42044b	 Bytes: 5
  %loadMem_42044b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42044b = call %struct.Memory* @routine_movss__xmm0__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42044b)
  store %struct.Memory* %call_42044b, %struct.Memory** %MEMORY

  ; Code: .L_420450:	 RIP: 420450	 Bytes: 0
  br label %block_.L_420450
block_.L_420450:

  ; Code: movl $0x4, %esi	 RIP: 420450	 Bytes: 5
  %loadMem_420450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420450 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420450)
  store %struct.Memory* %call_420450, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 420455	 Bytes: 4
  %loadMem_420455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420455 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420455)
  store %struct.Memory* %call_420455, %struct.Memory** %MEMORY

  ; Code: callq .Getword	 RIP: 420459	 Bytes: 5
  %loadMem1_420459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420459 = call %struct.Memory* @routine_callq_.Getword(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420459, i64 34839, i64 5, i64 5)
  store %struct.Memory* %call1_420459, %struct.Memory** %MEMORY

  %loadMem2_420459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420459 = load i64, i64* %3
  %call2_420459 = call %struct.Memory* @sub_428c70.Getword(%struct.State* %0, i64  %loadPC_420459, %struct.Memory* %loadMem2_420459)
  store %struct.Memory* %call2_420459, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 42045e	 Bytes: 7
  %loadMem_42045e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42045e = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42045e)
  store %struct.Memory* %call_42045e, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 420465	 Bytes: 4
  %loadMem_420465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420465 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420465)
  store %struct.Memory* %call_420465, %struct.Memory** %MEMORY

  ; Code: jne .L_420474	 RIP: 420469	 Bytes: 6
  %loadMem_420469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420469 = call %struct.Memory* @routine_jne_.L_420474(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420469, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_420469, %struct.Memory** %MEMORY

  %loadBr_420469 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420469 = icmp eq i8 %loadBr_420469, 1
  br i1 %cmpBr_420469, label %block_.L_420474, label %block_42046f

block_42046f:
  ; Code: jmpq .L_420695	 RIP: 42046f	 Bytes: 5
  %loadMem_42046f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42046f = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42046f, i64 550, i64 5)
  store %struct.Memory* %call_42046f, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_420474:	 RIP: 420474	 Bytes: 0
block_.L_420474:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 420474	 Bytes: 4
  %loadMem_420474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420474 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420474)
  store %struct.Memory* %call_420474, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %ecx	 RIP: 420478	 Bytes: 6
  %loadMem_420478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420478 = call %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420478)
  store %struct.Memory* %call_420478, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %ecx	 RIP: 42047e	 Bytes: 3
  %loadMem_42047e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42047e = call %struct.Memory* @routine_andl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42047e)
  store %struct.Memory* %call_42047e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 420481	 Bytes: 3
  %loadMem_420481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420481 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420481)
  store %struct.Memory* %call_420481, %struct.Memory** %MEMORY

  ; Code: je .L_4204a5	 RIP: 420484	 Bytes: 6
  %loadMem_420484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420484 = call %struct.Memory* @routine_je_.L_4204a5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420484, i8* %BRANCH_TAKEN, i64 33, i64 6, i64 6)
  store %struct.Memory* %call_420484, %struct.Memory** %MEMORY

  %loadBr_420484 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420484 = icmp eq i8 %loadBr_420484, 1
  br i1 %cmpBr_420484, label %block_.L_4204a5, label %block_42048a

block_42048a:
  ; Code: movq -0x238(%rbp), %rax	 RIP: 42048a	 Bytes: 7
  %loadMem_42048a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42048a = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42048a)
  store %struct.Memory* %call_42048a, %struct.Memory** %MEMORY

  ; Code: movb (%rax), %cl	 RIP: 420491	 Bytes: 2
  %loadMem_420491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420491 = call %struct.Memory* @routine_movb___rax____cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420491)
  store %struct.Memory* %call_420491, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 420493	 Bytes: 4
  %loadMem_420493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420493 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420493)
  store %struct.Memory* %call_420493, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 420497	 Bytes: 4
  %loadMem_420497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420497 = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420497)
  store %struct.Memory* %call_420497, %struct.Memory** %MEMORY

  ; Code: movslq -0x240(%rbp), %rdx	 RIP: 42049b	 Bytes: 7
  %loadMem_42049b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42049b = call %struct.Memory* @routine_movslq_MINUS0x240__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42049b)
  store %struct.Memory* %call_42049b, %struct.Memory** %MEMORY

  ; Code: movb %cl, (%rax,%rdx,1)	 RIP: 4204a2	 Bytes: 3
  %loadMem_4204a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4204a2 = call %struct.Memory* @routine_movb__cl____rax__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4204a2)
  store %struct.Memory* %call_4204a2, %struct.Memory** %MEMORY

  ; Code: .L_4204a5:	 RIP: 4204a5	 Bytes: 0
  br label %block_.L_4204a5
block_.L_4204a5:

  ; Code: movl $0x4, %esi	 RIP: 4204a5	 Bytes: 5
  %loadMem_4204a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4204a5 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4204a5)
  store %struct.Memory* %call_4204a5, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 4204aa	 Bytes: 4
  %loadMem_4204aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4204aa = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4204aa)
  store %struct.Memory* %call_4204aa, %struct.Memory** %MEMORY

  ; Code: callq .Getword	 RIP: 4204ae	 Bytes: 5
  %loadMem1_4204ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4204ae = call %struct.Memory* @routine_callq_.Getword(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4204ae, i64 34754, i64 5, i64 5)
  store %struct.Memory* %call1_4204ae, %struct.Memory** %MEMORY

  %loadMem2_4204ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4204ae = load i64, i64* %3
  %call2_4204ae = call %struct.Memory* @sub_428c70.Getword(%struct.State* %0, i64  %loadPC_4204ae, %struct.Memory* %loadMem2_4204ae)
  store %struct.Memory* %call2_4204ae, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 4204b3	 Bytes: 7
  %loadMem_4204b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4204b3 = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4204b3)
  store %struct.Memory* %call_4204b3, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4204ba	 Bytes: 4
  %loadMem_4204ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4204ba = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4204ba)
  store %struct.Memory* %call_4204ba, %struct.Memory** %MEMORY

  ; Code: jne .L_4204c9	 RIP: 4204be	 Bytes: 6
  %loadMem_4204be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4204be = call %struct.Memory* @routine_jne_.L_4204c9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4204be, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4204be, %struct.Memory** %MEMORY

  %loadBr_4204be = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4204be = icmp eq i8 %loadBr_4204be, 1
  br i1 %cmpBr_4204be, label %block_.L_4204c9, label %block_4204c4

block_4204c4:
  ; Code: jmpq .L_420695	 RIP: 4204c4	 Bytes: 5
  %loadMem_4204c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4204c4 = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4204c4, i64 465, i64 5)
  store %struct.Memory* %call_4204c4, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_4204c9:	 RIP: 4204c9	 Bytes: 0
block_.L_4204c9:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4204c9	 Bytes: 4
  %loadMem_4204c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4204c9 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4204c9)
  store %struct.Memory* %call_4204c9, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %ecx	 RIP: 4204cd	 Bytes: 6
  %loadMem_4204cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4204cd = call %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4204cd)
  store %struct.Memory* %call_4204cd, %struct.Memory** %MEMORY

  ; Code: andl $0x8, %ecx	 RIP: 4204d3	 Bytes: 3
  %loadMem_4204d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4204d3 = call %struct.Memory* @routine_andl__0x8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4204d3)
  store %struct.Memory* %call_4204d3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 4204d6	 Bytes: 3
  %loadMem_4204d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4204d6 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4204d6)
  store %struct.Memory* %call_4204d6, %struct.Memory** %MEMORY

  ; Code: je .L_4204fa	 RIP: 4204d9	 Bytes: 6
  %loadMem_4204d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4204d9 = call %struct.Memory* @routine_je_.L_4204fa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4204d9, i8* %BRANCH_TAKEN, i64 33, i64 6, i64 6)
  store %struct.Memory* %call_4204d9, %struct.Memory** %MEMORY

  %loadBr_4204d9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4204d9 = icmp eq i8 %loadBr_4204d9, 1
  br i1 %cmpBr_4204d9, label %block_.L_4204fa, label %block_4204df

block_4204df:
  ; Code: movq -0x238(%rbp), %rax	 RIP: 4204df	 Bytes: 7
  %loadMem_4204df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4204df = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4204df)
  store %struct.Memory* %call_4204df, %struct.Memory** %MEMORY

  ; Code: movb (%rax), %cl	 RIP: 4204e6	 Bytes: 2
  %loadMem_4204e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4204e6 = call %struct.Memory* @routine_movb___rax____cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4204e6)
  store %struct.Memory* %call_4204e6, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4204e8	 Bytes: 4
  %loadMem_4204e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4204e8 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4204e8)
  store %struct.Memory* %call_4204e8, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rax), %rax	 RIP: 4204ec	 Bytes: 4
  %loadMem_4204ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4204ec = call %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4204ec)
  store %struct.Memory* %call_4204ec, %struct.Memory** %MEMORY

  ; Code: movslq -0x240(%rbp), %rdx	 RIP: 4204f0	 Bytes: 7
  %loadMem_4204f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4204f0 = call %struct.Memory* @routine_movslq_MINUS0x240__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4204f0)
  store %struct.Memory* %call_4204f0, %struct.Memory** %MEMORY

  ; Code: movb %cl, (%rax,%rdx,1)	 RIP: 4204f7	 Bytes: 3
  %loadMem_4204f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4204f7 = call %struct.Memory* @routine_movb__cl____rax__rdx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4204f7)
  store %struct.Memory* %call_4204f7, %struct.Memory** %MEMORY

  ; Code: .L_4204fa:	 RIP: 4204fa	 Bytes: 0
  br label %block_.L_4204fa
block_.L_4204fa:

  ; Code: jmpq .L_4204ff	 RIP: 4204fa	 Bytes: 5
  %loadMem_4204fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4204fa = call %struct.Memory* @routine_jmpq_.L_4204ff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4204fa, i64 5, i64 5)
  store %struct.Memory* %call_4204fa, %struct.Memory** %MEMORY

  br label %block_.L_4204ff

  ; Code: .L_4204ff:	 RIP: 4204ff	 Bytes: 0
block_.L_4204ff:

  ; Code: movl -0x240(%rbp), %eax	 RIP: 4204ff	 Bytes: 6
  %loadMem_4204ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4204ff = call %struct.Memory* @routine_movl_MINUS0x240__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4204ff)
  store %struct.Memory* %call_4204ff, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 420505	 Bytes: 3
  %loadMem_420505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420505 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420505)
  store %struct.Memory* %call_420505, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x240(%rbp)	 RIP: 420508	 Bytes: 6
  %loadMem_420508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420508 = call %struct.Memory* @routine_movl__eax__MINUS0x240__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420508)
  store %struct.Memory* %call_420508, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41ffdd	 RIP: 42050e	 Bytes: 5
  %loadMem_42050e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42050e = call %struct.Memory* @routine_jmpq_.L_41ffdd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42050e, i64 -1329, i64 5)
  store %struct.Memory* %call_42050e, %struct.Memory** %MEMORY

  br label %block_.L_41ffdd

  ; Code: .L_420513:	 RIP: 420513	 Bytes: 0
block_.L_420513:

  ; Code: movl $0x0, -0x240(%rbp)	 RIP: 420513	 Bytes: 10
  %loadMem_420513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420513 = call %struct.Memory* @routine_movl__0x0__MINUS0x240__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420513)
  store %struct.Memory* %call_420513, %struct.Memory** %MEMORY

  ; Code: .L_42051d:	 RIP: 42051d	 Bytes: 0
  br label %block_.L_42051d
block_.L_42051d:

  ; Code: movl -0x240(%rbp), %eax	 RIP: 42051d	 Bytes: 6
  %loadMem_42051d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42051d = call %struct.Memory* @routine_movl_MINUS0x240__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42051d)
  store %struct.Memory* %call_42051d, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 420523	 Bytes: 4
  %loadMem_420523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420523 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420523)
  store %struct.Memory* %call_420523, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 420527	 Bytes: 6
  %loadMem_420527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420527 = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420527)
  store %struct.Memory* %call_420527, %struct.Memory** %MEMORY

  ; Code: jg .L_42062f	 RIP: 42052d	 Bytes: 6
  %loadMem_42052d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42052d = call %struct.Memory* @routine_jg_.L_42062f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42052d, i8* %BRANCH_TAKEN, i64 258, i64 6, i64 6)
  store %struct.Memory* %call_42052d, %struct.Memory** %MEMORY

  %loadBr_42052d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42052d = icmp eq i8 %loadBr_42052d, 1
  br i1 %cmpBr_42052d, label %block_.L_42062f, label %block_420533

block_420533:
  ; Code: movl $0x1, %esi	 RIP: 420533	 Bytes: 5
  %loadMem_420533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420533 = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420533)
  store %struct.Memory* %call_420533, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 420538	 Bytes: 4
  %loadMem_420538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420538 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420538)
  store %struct.Memory* %call_420538, %struct.Memory** %MEMORY

  ; Code: callq .Getword	 RIP: 42053c	 Bytes: 5
  %loadMem1_42053c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42053c = call %struct.Memory* @routine_callq_.Getword(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42053c, i64 34612, i64 5, i64 5)
  store %struct.Memory* %call1_42053c, %struct.Memory** %MEMORY

  %loadMem2_42053c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42053c = load i64, i64* %3
  %call2_42053c = call %struct.Memory* @sub_428c70.Getword(%struct.State* %0, i64  %loadPC_42053c, %struct.Memory* %loadMem2_42053c)
  store %struct.Memory* %call2_42053c, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 420541	 Bytes: 7
  %loadMem_420541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420541 = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420541)
  store %struct.Memory* %call_420541, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 420548	 Bytes: 4
  %loadMem_420548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420548 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420548)
  store %struct.Memory* %call_420548, %struct.Memory** %MEMORY

  ; Code: jne .L_420557	 RIP: 42054c	 Bytes: 6
  %loadMem_42054c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42054c = call %struct.Memory* @routine_jne_.L_420557(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42054c, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_42054c, %struct.Memory** %MEMORY

  %loadBr_42054c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42054c = icmp eq i8 %loadBr_42054c, 1
  br i1 %cmpBr_42054c, label %block_.L_420557, label %block_420552

block_420552:
  ; Code: jmpq .L_420695	 RIP: 420552	 Bytes: 5
  %loadMem_420552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420552 = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420552, i64 323, i64 5)
  store %struct.Memory* %call_420552, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_420557:	 RIP: 420557	 Bytes: 0
block_.L_420557:

  ; Code: movl $0x0, -0x244(%rbp)	 RIP: 420557	 Bytes: 10
  %loadMem_420557 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420557 = call %struct.Memory* @routine_movl__0x0__MINUS0x244__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420557)
  store %struct.Memory* %call_420557, %struct.Memory** %MEMORY

  ; Code: .L_420561:	 RIP: 420561	 Bytes: 0
  br label %block_.L_420561
block_.L_420561:

  ; Code: movl -0x244(%rbp), %eax	 RIP: 420561	 Bytes: 6
  %loadMem_420561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420561 = call %struct.Memory* @routine_movl_MINUS0x244__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420561)
  store %struct.Memory* %call_420561, %struct.Memory** %MEMORY

  ; Code: cmpl 0x677060, %eax	 RIP: 420567	 Bytes: 7
  %loadMem_420567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420567 = call %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420567)
  store %struct.Memory* %call_420567, %struct.Memory** %MEMORY

  ; Code: jge .L_420616	 RIP: 42056e	 Bytes: 6
  %loadMem_42056e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42056e = call %struct.Memory* @routine_jge_.L_420616(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42056e, i8* %BRANCH_TAKEN, i64 168, i64 6, i64 6)
  store %struct.Memory* %call_42056e, %struct.Memory** %MEMORY

  %loadBr_42056e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42056e = icmp eq i8 %loadBr_42056e, 1
  br i1 %cmpBr_42056e, label %block_.L_420616, label %block_420574

block_420574:
  ; Code: movl $0x1, %esi	 RIP: 420574	 Bytes: 5
  %loadMem_420574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420574 = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420574)
  store %struct.Memory* %call_420574, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rdi	 RIP: 420579	 Bytes: 4
  %loadMem_420579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420579 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420579)
  store %struct.Memory* %call_420579, %struct.Memory** %MEMORY

  ; Code: callq .Getword	 RIP: 42057d	 Bytes: 5
  %loadMem1_42057d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42057d = call %struct.Memory* @routine_callq_.Getword(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42057d, i64 34547, i64 5, i64 5)
  store %struct.Memory* %call1_42057d, %struct.Memory** %MEMORY

  %loadMem2_42057d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42057d = load i64, i64* %3
  %call2_42057d = call %struct.Memory* @sub_428c70.Getword(%struct.State* %0, i64  %loadPC_42057d, %struct.Memory* %loadMem2_42057d)
  store %struct.Memory* %call2_42057d, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x238(%rbp)	 RIP: 420582	 Bytes: 7
  %loadMem_420582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420582 = call %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420582)
  store %struct.Memory* %call_420582, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 420589	 Bytes: 4
  %loadMem_420589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420589 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420589)
  store %struct.Memory* %call_420589, %struct.Memory** %MEMORY

  ; Code: jne .L_420598	 RIP: 42058d	 Bytes: 6
  %loadMem_42058d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42058d = call %struct.Memory* @routine_jne_.L_420598(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42058d, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_42058d, %struct.Memory** %MEMORY

  %loadBr_42058d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42058d = icmp eq i8 %loadBr_42058d, 1
  br i1 %cmpBr_42058d, label %block_.L_420598, label %block_420593

block_420593:
  ; Code: jmpq .L_420695	 RIP: 420593	 Bytes: 5
  %loadMem_420593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420593 = call %struct.Memory* @routine_jmpq_.L_420695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420593, i64 258, i64 5)
  store %struct.Memory* %call_420593, %struct.Memory** %MEMORY

  br label %block_.L_420695

  ; Code: .L_420598:	 RIP: 420598	 Bytes: 0
block_.L_420598:

  ; Code: cmpl $0x0, -0x240(%rbp)	 RIP: 420598	 Bytes: 7
  %loadMem_420598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420598 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x240__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420598)
  store %struct.Memory* %call_420598, %struct.Memory** %MEMORY

  ; Code: jle .L_4205fd	 RIP: 42059f	 Bytes: 6
  %loadMem_42059f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42059f = call %struct.Memory* @routine_jle_.L_4205fd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42059f, i8* %BRANCH_TAKEN, i64 94, i64 6, i64 6)
  store %struct.Memory* %call_42059f, %struct.Memory** %MEMORY

  %loadBr_42059f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42059f = icmp eq i8 %loadBr_42059f, 1
  br i1 %cmpBr_42059f, label %block_.L_4205fd, label %block_4205a5

block_4205a5:
  ; Code: movl -0x240(%rbp), %eax	 RIP: 4205a5	 Bytes: 6
  %loadMem_4205a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4205a5 = call %struct.Memory* @routine_movl_MINUS0x240__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4205a5)
  store %struct.Memory* %call_4205a5, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4205ab	 Bytes: 4
  %loadMem_4205ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4205ab = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4205ab)
  store %struct.Memory* %call_4205ab, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 4205af	 Bytes: 6
  %loadMem_4205af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4205af = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4205af)
  store %struct.Memory* %call_4205af, %struct.Memory** %MEMORY

  ; Code: jge .L_4205fd	 RIP: 4205b5	 Bytes: 6
  %loadMem_4205b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4205b5 = call %struct.Memory* @routine_jge_.L_4205fd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4205b5, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_4205b5, %struct.Memory** %MEMORY

  %loadBr_4205b5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4205b5 = icmp eq i8 %loadBr_4205b5, 1
  br i1 %cmpBr_4205b5, label %block_.L_4205fd, label %block_4205bb

block_4205bb:
  ; Code: movq -0x238(%rbp), %rdi	 RIP: 4205bb	 Bytes: 7
  %loadMem_4205bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4205bb = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4205bb)
  store %struct.Memory* %call_4205bb, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4205c2	 Bytes: 4
  %loadMem_4205c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4205c2 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4205c2)
  store %struct.Memory* %call_4205c2, %struct.Memory** %MEMORY

  ; Code: movslq -0x244(%rbp), %rcx	 RIP: 4205c6	 Bytes: 7
  %loadMem_4205c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4205c6 = call %struct.Memory* @routine_movslq_MINUS0x244__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4205c6)
  store %struct.Memory* %call_4205c6, %struct.Memory** %MEMORY

  ; Code: movss 0xe0(%rax,%rcx,4), %xmm0	 RIP: 4205cd	 Bytes: 9
  %loadMem_4205cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4205cd = call %struct.Memory* @routine_movss_0xe0__rax__rcx_4____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4205cd)
  store %struct.Memory* %call_4205cd, %struct.Memory** %MEMORY

  ; Code: callq .ascii2prob	 RIP: 4205d6	 Bytes: 5
  %loadMem1_4205d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4205d6 = call %struct.Memory* @routine_callq_.ascii2prob(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4205d6, i64 4522, i64 5, i64 5)
  store %struct.Memory* %call1_4205d6, %struct.Memory** %MEMORY

  %loadMem2_4205d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4205d6 = load i64, i64* %3
  %call2_4205d6 = call %struct.Memory* @sub_421780.ascii2prob(%struct.State* %0, i64  %loadPC_4205d6, %struct.Memory* %loadMem2_4205d6)
  store %struct.Memory* %call2_4205d6, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4205db	 Bytes: 4
  %loadMem_4205db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4205db = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4205db)
  store %struct.Memory* %call_4205db, %struct.Memory** %MEMORY

  ; Code: movq 0xa0(%rax), %rax	 RIP: 4205df	 Bytes: 7
  %loadMem_4205df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4205df = call %struct.Memory* @routine_movq_0xa0__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4205df)
  store %struct.Memory* %call_4205df, %struct.Memory** %MEMORY

  ; Code: movslq -0x240(%rbp), %rcx	 RIP: 4205e6	 Bytes: 7
  %loadMem_4205e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4205e6 = call %struct.Memory* @routine_movslq_MINUS0x240__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4205e6)
  store %struct.Memory* %call_4205e6, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4205ed	 Bytes: 4
  %loadMem_4205ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4205ed = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4205ed)
  store %struct.Memory* %call_4205ed, %struct.Memory** %MEMORY

  ; Code: movslq -0x244(%rbp), %rcx	 RIP: 4205f1	 Bytes: 7
  %loadMem_4205f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4205f1 = call %struct.Memory* @routine_movslq_MINUS0x244__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4205f1)
  store %struct.Memory* %call_4205f1, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, (%rax,%rcx,4)	 RIP: 4205f8	 Bytes: 5
  %loadMem_4205f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4205f8 = call %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4205f8)
  store %struct.Memory* %call_4205f8, %struct.Memory** %MEMORY

  ; Code: .L_4205fd:	 RIP: 4205fd	 Bytes: 0
  br label %block_.L_4205fd
block_.L_4205fd:

  ; Code: jmpq .L_420602	 RIP: 4205fd	 Bytes: 5
  %loadMem_4205fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4205fd = call %struct.Memory* @routine_jmpq_.L_420602(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4205fd, i64 5, i64 5)
  store %struct.Memory* %call_4205fd, %struct.Memory** %MEMORY

  br label %block_.L_420602

  ; Code: .L_420602:	 RIP: 420602	 Bytes: 0
block_.L_420602:

  ; Code: movl -0x244(%rbp), %eax	 RIP: 420602	 Bytes: 6
  %loadMem_420602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420602 = call %struct.Memory* @routine_movl_MINUS0x244__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420602)
  store %struct.Memory* %call_420602, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 420608	 Bytes: 3
  %loadMem_420608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420608 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420608)
  store %struct.Memory* %call_420608, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x244(%rbp)	 RIP: 42060b	 Bytes: 6
  %loadMem_42060b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42060b = call %struct.Memory* @routine_movl__eax__MINUS0x244__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42060b)
  store %struct.Memory* %call_42060b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_420561	 RIP: 420611	 Bytes: 5
  %loadMem_420611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420611 = call %struct.Memory* @routine_jmpq_.L_420561(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420611, i64 -176, i64 5)
  store %struct.Memory* %call_420611, %struct.Memory** %MEMORY

  br label %block_.L_420561

  ; Code: .L_420616:	 RIP: 420616	 Bytes: 0
block_.L_420616:

  ; Code: jmpq .L_42061b	 RIP: 420616	 Bytes: 5
  %loadMem_420616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420616 = call %struct.Memory* @routine_jmpq_.L_42061b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420616, i64 5, i64 5)
  store %struct.Memory* %call_420616, %struct.Memory** %MEMORY

  br label %block_.L_42061b

  ; Code: .L_42061b:	 RIP: 42061b	 Bytes: 0
block_.L_42061b:

  ; Code: movl -0x240(%rbp), %eax	 RIP: 42061b	 Bytes: 6
  %loadMem_42061b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42061b = call %struct.Memory* @routine_movl_MINUS0x240__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42061b)
  store %struct.Memory* %call_42061b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 420621	 Bytes: 3
  %loadMem_420621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420621 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420621)
  store %struct.Memory* %call_420621, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x240(%rbp)	 RIP: 420624	 Bytes: 6
  %loadMem_420624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420624 = call %struct.Memory* @routine_movl__eax__MINUS0x240__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420624)
  store %struct.Memory* %call_420624, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42051d	 RIP: 42062a	 Bytes: 5
  %loadMem_42062a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42062a = call %struct.Memory* @routine_jmpq_.L_42051d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42062a, i64 -269, i64 5)
  store %struct.Memory* %call_42062a, %struct.Memory** %MEMORY

  br label %block_.L_42051d

  ; Code: .L_42062f:	 RIP: 42062f	 Bytes: 0
block_.L_42062f:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 42062f	 Bytes: 4
  %loadMem_42062f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42062f = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42062f)
  store %struct.Memory* %call_42062f, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %ecx	 RIP: 420633	 Bytes: 6
  %loadMem_420633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420633 = call %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420633)
  store %struct.Memory* %call_420633, %struct.Memory** %MEMORY

  ; Code: orl $0x20, %ecx	 RIP: 420639	 Bytes: 3
  %loadMem_420639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420639 = call %struct.Memory* @routine_orl__0x20___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420639)
  store %struct.Memory* %call_420639, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1c8(%rax)	 RIP: 42063c	 Bytes: 6
  %loadMem_42063c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42063c = call %struct.Memory* @routine_movl__ecx__0x1c8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42063c)
  store %struct.Memory* %call_42063c, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 420642	 Bytes: 4
  %loadMem_420642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420642 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420642)
  store %struct.Memory* %call_420642, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %ecx	 RIP: 420646	 Bytes: 6
  %loadMem_420646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420646 = call %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420646)
  store %struct.Memory* %call_420646, %struct.Memory** %MEMORY

  ; Code: andl $0xfffffffe, %ecx	 RIP: 42064c	 Bytes: 3
  %loadMem_42064c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42064c = call %struct.Memory* @routine_andl__0xfffffffe___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42064c)
  store %struct.Memory* %call_42064c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1c8(%rax)	 RIP: 42064f	 Bytes: 6
  %loadMem_42064f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42064f = call %struct.Memory* @routine_movl__ecx__0x1c8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42064f)
  store %struct.Memory* %call_42064f, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 420655	 Bytes: 4
  %loadMem_420655 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420655 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420655)
  store %struct.Memory* %call_420655, %struct.Memory** %MEMORY

  ; Code: callq .Plan7Renormalize	 RIP: 420659	 Bytes: 5
  %loadMem1_420659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420659 = call %struct.Memory* @routine_callq_.Plan7Renormalize(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420659, i64 79319, i64 5, i64 5)
  store %struct.Memory* %call1_420659, %struct.Memory** %MEMORY

  %loadMem2_420659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420659 = load i64, i64* %3
  %call2_420659 = call %struct.Memory* @sub_433c30.Plan7Renormalize(%struct.State* %0, i64  %loadPC_420659, %struct.Memory* %loadMem2_420659)
  store %struct.Memory* %call2_420659, %struct.Memory** %MEMORY

  ; Code: movq $0x457830, %rdi	 RIP: 42065e	 Bytes: 10
  %loadMem_42065e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42065e = call %struct.Memory* @routine_movq__0x457830___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42065e)
  store %struct.Memory* %call_42065e, %struct.Memory** %MEMORY

  ; Code: callq .Strdup	 RIP: 420668	 Bytes: 5
  %loadMem1_420668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420668 = call %struct.Memory* @routine_callq_.Strdup(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420668, i64 153480, i64 5, i64 5)
  store %struct.Memory* %call1_420668, %struct.Memory** %MEMORY

  %loadMem2_420668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420668 = load i64, i64* %3
  %call2_420668 = call %struct.Memory* @sub_445df0.Strdup(%struct.State* %0, i64  %loadPC_420668, %struct.Memory* %loadMem2_420668)
  store %struct.Memory* %call2_420668, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 42066d	 Bytes: 4
  %loadMem_42066d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42066d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42066d)
  store %struct.Memory* %call_42066d, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x30(%rdi)	 RIP: 420671	 Bytes: 4
  %loadMem_420671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420671 = call %struct.Memory* @routine_movq__rax__0x30__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420671)
  store %struct.Memory* %call_420671, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 420675	 Bytes: 4
  %loadMem_420675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420675 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420675)
  store %struct.Memory* %call_420675, %struct.Memory** %MEMORY

  ; Code: callq .Plan7SetCtime	 RIP: 420679	 Bytes: 5
  %loadMem1_420679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420679 = call %struct.Memory* @routine_callq_.Plan7SetCtime(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420679, i64 75735, i64 5, i64 5)
  store %struct.Memory* %call1_420679, %struct.Memory** %MEMORY

  %loadMem2_420679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420679 = load i64, i64* %3
  %call2_420679 = call %struct.Memory* @sub_432e50.Plan7SetCtime(%struct.State* %0, i64  %loadPC_420679, %struct.Memory* %loadMem2_420679)
  store %struct.Memory* %call2_420679, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 42067e	 Bytes: 4
  %loadMem_42067e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42067e = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42067e)
  store %struct.Memory* %call_42067e, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 420682	 Bytes: 4
  %loadMem_420682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420682 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420682)
  store %struct.Memory* %call_420682, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdi)	 RIP: 420686	 Bytes: 3
  %loadMem_420686 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420686 = call %struct.Memory* @routine_movq__rax____rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420686)
  store %struct.Memory* %call_420686, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 420689	 Bytes: 7
  %loadMem_420689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420689 = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420689)
  store %struct.Memory* %call_420689, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4206bb	 RIP: 420690	 Bytes: 5
  %loadMem_420690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420690 = call %struct.Memory* @routine_jmpq_.L_4206bb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420690, i64 43, i64 5)
  store %struct.Memory* %call_420690, %struct.Memory** %MEMORY

  br label %block_.L_4206bb

  ; Code: .L_420695:	 RIP: 420695	 Bytes: 0
block_.L_420695:

  ; Code: cmpq $0x0, -0x20(%rbp)	 RIP: 420695	 Bytes: 5
  %loadMem_420695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420695 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420695)
  store %struct.Memory* %call_420695, %struct.Memory** %MEMORY

  ; Code: je .L_4206a9	 RIP: 42069a	 Bytes: 6
  %loadMem_42069a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42069a = call %struct.Memory* @routine_je_.L_4206a9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42069a, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_42069a, %struct.Memory** %MEMORY

  %loadBr_42069a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42069a = icmp eq i8 %loadBr_42069a, 1
  br i1 %cmpBr_42069a, label %block_.L_4206a9, label %block_4206a0

block_4206a0:
  ; Code: movq -0x20(%rbp), %rdi	 RIP: 4206a0	 Bytes: 4
  %loadMem_4206a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4206a0 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4206a0)
  store %struct.Memory* %call_4206a0, %struct.Memory** %MEMORY

  ; Code: callq .FreePlan7	 RIP: 4206a4	 Bytes: 5
  %loadMem1_4206a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4206a4 = call %struct.Memory* @routine_callq_.FreePlan7(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4206a4, i64 73516, i64 5, i64 5)
  store %struct.Memory* %call1_4206a4, %struct.Memory** %MEMORY

  %loadMem2_4206a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4206a4 = load i64, i64* %3
  %call2_4206a4 = call %struct.Memory* @sub_4325d0.FreePlan7(%struct.State* %0, i64  %loadPC_4206a4, %struct.Memory* %loadMem2_4206a4)
  store %struct.Memory* %call2_4206a4, %struct.Memory** %MEMORY

  ; Code: .L_4206a9:	 RIP: 4206a9	 Bytes: 0
  br label %block_.L_4206a9
block_.L_4206a9:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4206a9	 Bytes: 4
  %loadMem_4206a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4206a9 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4206a9)
  store %struct.Memory* %call_4206a9, %struct.Memory** %MEMORY

  ; Code: movq $0x0, (%rax)	 RIP: 4206ad	 Bytes: 7
  %loadMem_4206ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4206ad = call %struct.Memory* @routine_movq__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4206ad)
  store %struct.Memory* %call_4206ad, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 4206b4	 Bytes: 7
  %loadMem_4206b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4206b4 = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4206b4)
  store %struct.Memory* %call_4206b4, %struct.Memory** %MEMORY

  ; Code: .L_4206bb:	 RIP: 4206bb	 Bytes: 0
  br label %block_.L_4206bb
block_.L_4206bb:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4206bb	 Bytes: 3
  %loadMem_4206bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4206bb = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4206bb)
  store %struct.Memory* %call_4206bb, %struct.Memory** %MEMORY

  ; Code: addq $0x270, %rsp	 RIP: 4206be	 Bytes: 7
  %loadMem_4206be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4206be = call %struct.Memory* @routine_addq__0x270___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4206be)
  store %struct.Memory* %call_4206be, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 4206c5	 Bytes: 1
  %loadMem_4206c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4206c5 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4206c5)
  store %struct.Memory* %call_4206c5, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 4206c6	 Bytes: 1
  %loadMem_4206c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4206c6 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4206c6)
  store %struct.Memory* %call_4206c6, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_4206c6
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

define %struct.Memory* @routine_subq__0x270___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 624)
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


define %struct.Memory* @routine_movq__rsi__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x0__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rsi____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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

define %struct.Memory* @routine_jne_.L_41f967(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x200___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 512)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x230__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 560
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.fgets_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_41f973(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_4206bb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x4577ce___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4577ce_type* @G__0x4577ce to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0xa___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 10)
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_je_.L_41f99e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_420695(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_callq_.AllocPlan7Shell(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.Getword(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__rax__MINUS0x238__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 568
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_41f9cb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 568
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_movl__eax__MINUS0x23c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 572
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_jne_.L_41fa01(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jne_.L_41fa25(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x238__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 568
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.Plan7SetName(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_41fa59(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_callq_.s2upper(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0x457947___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x457947_type* @G__0x457947 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_callq_.strcmp_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_41fa90(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x3__MINUS0x248__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 584
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_41fac5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x45794d___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x45794d_type* @G__0x45794d to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_41fabb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x2__MINUS0x248__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 584
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_41fac0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__0x676d90(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x676d90_type* @G_0x676d90 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_41fae3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl_MINUS0x248__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 584
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.SetAlphabet(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_41fb34(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x248__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 584
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_cmpl_0x676d90___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x676d90_type* @G_0x676d90 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_41fb2f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x676d90___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x676d90_type* @G_0x676d90 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_callq_.AlphabetType2String(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__rax__MINUS0x250__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 592
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__0x457899___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457899_type* @G__0x457899 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x250__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 592
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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














define %struct.Memory* @routine_jne_.L_41fb58(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__0x676fe0___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x676fe0_type* @G__0x676fe0 to i64))
  ret %struct.Memory* %11
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_0x677060___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x677060_type* @G_0x677060 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_je_.L_41fb84(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_41fba8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__0x457914___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x457914_type* @G__0x457914 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_jne_.L_41fbd7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_orl__0x4___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 4)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__ecx__0x1c8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 456
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}












define %struct.Memory* @routine_jne_.L_41fbfb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_41fc2a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_orl__0x8___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 8)
  ret %struct.Memory* %12
}














define %struct.Memory* @routine_jne_.L_41fc4e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__0x457955___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x457955_type* @G__0x457955 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_je_.L_41fc6f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0x0__MINUS0x244__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 580
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x244__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 580
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x677060_type* @G_0x677060 to i64))
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

define %struct.Memory* @routine_jge_.L_41fcec(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_41fcb0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movss_0x34a70__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x34a70__rip__type* @G_0x34a70__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_callq_.ascii2prob(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movslq_MINUS0x244__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 580
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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

define %struct.Memory* @routine_movss__xmm0__0xe0__rdi__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %RAX
  %16 = mul i64 %15, 4
  %17 = add i64 %14, 224
  %18 = add i64 %17, %16
  %19 = bitcast %union.vec128_t* %XMM0 to i8*
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i8* %19)
  ret %struct.Memory* %22
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


define %struct.Memory* @routine_movl__eax__MINUS0x244__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 580
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_41fc79(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to double*
  %6 = load double, double* %5
  %7 = bitcast i8* %2 to double*
  store double %6, double* %7, align 1
  %8 = getelementptr inbounds i8, i8* %2, i64 8
  %9 = bitcast i8* %8 to double*
  store double 0.000000e+00, double* %9, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd_0x34b94__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x34b94__rip__type* @G_0x34b94__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0x34b94__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint( %G_0x34b94__rip__type* @G_0x34b94__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x3__0x676d90(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x676d90_type* @G_0x676d90 to i64), i64 3)
  ret %struct.Memory* %8
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = inttoptr i64 %2 to double*
  store double %6, double* %7
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x258__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 600
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd__xmm0__MINUS0x260__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 608
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_je_.L_41fd2a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movsd_MINUS0x258__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 600
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd_MINUS0x260__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 608
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_movss__xmm0__0x130__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 304
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
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






define %struct.Memory* @routine_je_.L_41fd5c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x1__MINUS0x23c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 572
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_41fd6e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpq__0x0____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jne_.L_41fd81(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_41fd94(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x23c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 572
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.AllocPlan7Body(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.ZeroPlan7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.Plan7LSConfig(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_41fdd9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_41fe33(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_41fe1a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jmpq_.L_41fe1f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_41fde3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_jne_.L_41fe57(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movss_0x348c9__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x348c9__rip__type* @G_0x348c9__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_movq_0xd0__rdi____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 208
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movss__xmm0__0x4__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDI
  %12 = add i64 %11, 4
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_jne_.L_41fe9f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movss_0x34881__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x34881__rip__type* @G_0x34881__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_movss__xmm0__0xa8__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDI
  %12 = add i64 %11, 168
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movss_0x4__rdi____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movss_0x4__rdi____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = inttoptr i64 %4 to float*
  %12 = load float, float* %11
  %13 = extractelement <2 x float> %7, i32 0
  %14 = fadd float %13, %12
  %15 = bitcast i8* %2 to float*
  store float %14, float* %15, align 1
  %16 = bitcast <2 x float> %7 to <2 x i32>
  %17 = extractelement <2 x i32> %16, i32 1
  %18 = getelementptr inbounds i8, i8* %2, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %10, i32 0
  %21 = getelementptr inbounds i8, i8* %2, i64 8
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %10, i32 1
  %24 = getelementptr inbounds i8, i8* %2, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addss_0xa8__rdi____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RDI
  %14 = add i64 %13, 168
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSSI3VnWI8vec128_tE2VnIS2_E3MVnI7vec32_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = bitcast i8* %4 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %7, i32 0
  %14 = extractelement <2 x float> %12, i32 0
  %15 = fdiv float %13, %14
  %16 = bitcast i8* %2 to float*
  store float %15, float* %16, align 1
  %17 = bitcast <2 x float> %7 to <2 x i32>
  %18 = extractelement <2 x i32> %17, i32 1
  %19 = getelementptr inbounds i8, i8* %2, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %10, i32 0
  %22 = getelementptr inbounds i8, i8* %2, i64 8
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %10, i32 1
  %25 = getelementptr inbounds i8, i8* %2, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}










define %struct.Memory* @routine_movss_0xa8__rdi____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




















define %struct.Memory* @routine_cmpl__0x7__MINUS0x244__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 580
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 7)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_41ff8b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_41ff72(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jmpq_.L_41ff77(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_41ff41(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_jne_.L_41ffaf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_41ffd3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0x1__MINUS0x240__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 576
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x240__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 576
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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


define %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 136
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

define %struct.Memory* @routine_jg_.L_420513(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_420017(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_4200ae(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_420058(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movslq_MINUS0x244__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 580
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movss_0xe0__rax__rcx_4____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 224
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %19)
  ret %struct.Memory* %22
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


define %struct.Memory* @routine_movslq_MINUS0x240__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 576
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %RCX
  %16 = mul i64 %15, 4
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %17, i8* %18)
  ret %struct.Memory* %21
}








define %struct.Memory* @routine_jmpq_.L_420021(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_jne_.L_4200d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_420116(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movss_0x34638__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x34638__rip__type* @G_0x34638__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_movq_0x90__rdi____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 144
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0x240__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 576
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rdi__rax_8____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movss__xmm0____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = load i64, i64* %RAX
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i8* %12)
  ret %struct.Memory* %15
}












define %struct.Memory* @routine_jne_.L_42013a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_4201bd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_420176(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4PXORI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to i64*
  %7 = load i64, i64* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to i64*
  %12 = load i64, i64* %11, align 1
  %13 = getelementptr inbounds i8, i8* %4, i64 8
  %14 = bitcast i8* %13 to i64*
  %15 = load i64, i64* %14, align 1
  %16 = xor i64 %12, %7
  %17 = xor i64 %15, %10
  %18 = trunc i64 %16 to i32
  %19 = lshr i64 %16, 32
  %20 = trunc i64 %19 to i32
  %21 = bitcast i8* %2 to i32*
  store i32 %18, i32* %21, align 1
  %22 = getelementptr inbounds i8, i8* %2, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %20, i32* %23, align 1
  %24 = trunc i64 %17 to i32
  %25 = getelementptr inbounds i8, i8* %2, i64 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  %27 = lshr i64 %17, 32
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds i8, i8* %2, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PXORI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movsd__xmm0__MINUS0x268__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 616
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_420196(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movss_0x345aa__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x345aa__rip__type* @G_0x345aa__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %3 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = fpext float %7 to double
  %9 = bitcast i8* %2 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_movsd_MINUS0x268__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 616
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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






define %struct.Memory* @routine_movss__xmm0__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 8
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_jne_.L_4201e1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_420226(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movss_0x34529__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x34529__rip__type* @G_0x34529__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}














define %struct.Memory* @routine_movss__xmm0__0x4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 4
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_jne_.L_42024a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_42028f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movss_0x344c0__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x344c0__rip__type* @G_0x344c0__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}














define %struct.Memory* @routine_movss__xmm0__0x14__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 20
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_jne_.L_4202b3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_420336(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_4202ef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movsd__xmm0__MINUS0x270__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 624
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_42030f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movss_0x34431__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x34431__rip__type* @G_0x34431__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_movsd_MINUS0x270__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 624
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movss__xmm0__0x18__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 24
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_jne_.L_42035a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_42037e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_4203c3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movss_0x3438c__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x3438c__rip__type* @G_0x3438c__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}














define %struct.Memory* @routine_movss__xmm0__0xc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 12
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_jne_.L_4203e7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_42040b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_420450(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movss_0x342ff__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x342ff__rip__type* @G_0x342ff__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}














define %struct.Memory* @routine_movss__xmm0__0x10__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 16
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_jne_.L_420474(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_4204a5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x238__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 568
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  store i8 %6, i8* %2, align 1
  ret %struct.Memory* %0
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




define %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0x240__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 576
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__cl____rax__rdx_1_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 7
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RDX = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RDX
  %18 = add i64 %17, %16
  %19 = load i8, i8* %CL
  %20 = zext i8 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}












define %struct.Memory* @routine_jne_.L_4204c9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_4204fa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_jmpq_.L_4204ff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__eax__MINUS0x240__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 576
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_41ffdd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x0__MINUS0x240__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 576
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_jg_.L_42062f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_420557(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_420616(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_420598(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__MINUS0x240__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 576
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jle_.L_4205fd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_4205fd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jmpq_.L_420602(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_420561(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42061b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_42051d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_orl__0x20___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 32)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_andl__0xfffffffe___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 -2)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_callq_.Plan7Renormalize(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x457830___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457830_type* @G__0x457830 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_callq_.Strdup(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__rax__0x30__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_callq_.Plan7SetCtime(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__rax____rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4206a9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.FreePlan7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x0____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_addq__0x270___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 624)
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

