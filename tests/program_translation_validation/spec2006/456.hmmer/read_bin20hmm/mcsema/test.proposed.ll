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
declare %struct.Memory* @sub_401410.fread_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_422380.byteswap(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_431d60.AllocPlan7Shell(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_422410.read_bin_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_404ca0.SetAlphabet(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_410e60.AlphabetType2String(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_431fd0.AllocPlan7Body(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4325d0.FreePlan7(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x661538_type = type <{ [4 x i8] }>
@G_0x661538= global %G_0x661538_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x676d90_type = type <{ [4 x i8] }>
@G_0x676d90= global %G_0x676d90_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x677060_type = type <{ [4 x i8] }>
@G_0x677060= global %G_0x677060_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x457899_type = type <{ [8 x i8] }>
@G__0x457899= global %G__0x457899_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @read_bin20hmm(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .read_bin20hmm:	 RIP: 41d160	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 41d160	 Bytes: 1
  %loadMem_41d160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d160 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d160)
  store %struct.Memory* %call_41d160, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 41d161	 Bytes: 3
  %loadMem_41d161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d161 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d161)
  store %struct.Memory* %call_41d161, %struct.Memory** %MEMORY

  ; Code: subq $0xf0, %rsp	 RIP: 41d164	 Bytes: 7
  %loadMem_41d164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d164 = call %struct.Memory* @routine_subq__0xf0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d164)
  store %struct.Memory* %call_41d164, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x10(%rbp)	 RIP: 41d16b	 Bytes: 4
  %loadMem_41d16b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d16b = call %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d16b)
  store %struct.Memory* %call_41d16b, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x18(%rbp)	 RIP: 41d16f	 Bytes: 4
  %loadMem_41d16f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d16f = call %struct.Memory* @routine_movq__rsi__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d16f)
  store %struct.Memory* %call_41d16f, %struct.Memory** %MEMORY

  ; Code: movq $0x0, -0x20(%rbp)	 RIP: 41d173	 Bytes: 8
  %loadMem_41d173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d173 = call %struct.Memory* @routine_movq__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d173)
  store %struct.Memory* %call_41d173, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 41d17b	 Bytes: 4
  %loadMem_41d17b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d17b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d17b)
  store %struct.Memory* %call_41d17b, %struct.Memory** %MEMORY

  ; Code: movq (%rsi), %rdi	 RIP: 41d17f	 Bytes: 3
  %loadMem_41d17f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d17f = call %struct.Memory* @routine_movq___rsi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d17f)
  store %struct.Memory* %call_41d17f, %struct.Memory** %MEMORY

  ; Code: callq .feof_plt	 RIP: 41d182	 Bytes: 5
  %loadMem1_41d182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d182 = call %struct.Memory* @routine_callq_.feof_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d182, i64 -113650, i64 5, i64 5)
  store %struct.Memory* %call1_41d182, %struct.Memory** %MEMORY

  %loadMem2_41d182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d182 = load i64, i64* %3
  %call2_41d182 = call %struct.Memory* @sub_401590.feof_plt(%struct.State* %0, i64  %loadPC_41d182, %struct.Memory* %loadMem2_41d182)
  store %struct.Memory* %call2_41d182, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41d187	 Bytes: 3
  %loadMem_41d187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d187 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d187)
  store %struct.Memory* %call_41d187, %struct.Memory** %MEMORY

  ; Code: je .L_41d19c	 RIP: 41d18a	 Bytes: 6
  %loadMem_41d18a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d18a = call %struct.Memory* @routine_je_.L_41d19c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d18a, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_41d18a, %struct.Memory** %MEMORY

  %loadBr_41d18a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d18a = icmp eq i8 %loadBr_41d18a, 1
  br i1 %cmpBr_41d18a, label %block_.L_41d19c, label %block_41d190

block_41d190:
  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 41d190	 Bytes: 7
  %loadMem_41d190 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d190 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d190)
  store %struct.Memory* %call_41d190, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41e085	 RIP: 41d197	 Bytes: 5
  %loadMem_41d197 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d197 = call %struct.Memory* @routine_jmpq_.L_41e085(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d197, i64 3822, i64 5)
  store %struct.Memory* %call_41d197, %struct.Memory** %MEMORY

  br label %block_.L_41e085

  ; Code: .L_41d19c:	 RIP: 41d19c	 Bytes: 0
block_.L_41d19c:

  ; Code: movl $0x4, %eax	 RIP: 41d19c	 Bytes: 5
  %loadMem_41d19c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d19c = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d19c)
  store %struct.Memory* %call_41d19c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41d1a1	 Bytes: 2
  %loadMem_41d1a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d1a1 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d1a1)
  store %struct.Memory* %call_41d1a1, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 41d1a3	 Bytes: 5
  %loadMem_41d1a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d1a3 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d1a3)
  store %struct.Memory* %call_41d1a3, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41d1a8	 Bytes: 2
  %loadMem_41d1a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d1a8 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d1a8)
  store %struct.Memory* %call_41d1a8, %struct.Memory** %MEMORY

  ; Code: leaq -0x30(%rbp), %rcx	 RIP: 41d1aa	 Bytes: 4
  %loadMem_41d1aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d1aa = call %struct.Memory* @routine_leaq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d1aa)
  store %struct.Memory* %call_41d1aa, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 41d1ae	 Bytes: 4
  %loadMem_41d1ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d1ae = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d1ae)
  store %struct.Memory* %call_41d1ae, %struct.Memory** %MEMORY

  ; Code: movq (%rdi), %rdi	 RIP: 41d1b2	 Bytes: 3
  %loadMem_41d1b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d1b2 = call %struct.Memory* @routine_movq___rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d1b2)
  store %struct.Memory* %call_41d1b2, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x38(%rbp)	 RIP: 41d1b5	 Bytes: 4
  %loadMem_41d1b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d1b5 = call %struct.Memory* @routine_movq__rdi__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d1b5)
  store %struct.Memory* %call_41d1b5, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41d1b9	 Bytes: 3
  %loadMem_41d1b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d1b9 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d1b9)
  store %struct.Memory* %call_41d1b9, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 41d1bc	 Bytes: 4
  %loadMem_41d1bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d1bc = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d1bc)
  store %struct.Memory* %call_41d1bc, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 41d1c0	 Bytes: 5
  %loadMem1_41d1c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d1c0 = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d1c0, i64 -114096, i64 5, i64 5)
  store %struct.Memory* %call1_41d1c0, %struct.Memory** %MEMORY

  %loadMem2_41d1c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d1c0 = load i64, i64* %3
  %call2_41d1c0 = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_41d1c0, %struct.Memory* %loadMem2_41d1c0)
  store %struct.Memory* %call2_41d1c0, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41d1c5	 Bytes: 4
  %loadMem_41d1c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d1c5 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d1c5)
  store %struct.Memory* %call_41d1c5, %struct.Memory** %MEMORY

  ; Code: jne .L_41d1db	 RIP: 41d1c9	 Bytes: 6
  %loadMem_41d1c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d1c9 = call %struct.Memory* @routine_jne_.L_41d1db(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d1c9, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_41d1c9, %struct.Memory** %MEMORY

  %loadBr_41d1c9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d1c9 = icmp eq i8 %loadBr_41d1c9, 1
  br i1 %cmpBr_41d1c9, label %block_.L_41d1db, label %block_41d1cf

block_41d1cf:
  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 41d1cf	 Bytes: 7
  %loadMem_41d1cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d1cf = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d1cf)
  store %struct.Memory* %call_41d1cf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41e085	 RIP: 41d1d6	 Bytes: 5
  %loadMem_41d1d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d1d6 = call %struct.Memory* @routine_jmpq_.L_41e085(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d1d6, i64 3759, i64 5)
  store %struct.Memory* %call_41d1d6, %struct.Memory** %MEMORY

  br label %block_.L_41e085

  ; Code: .L_41d1db:	 RIP: 41d1db	 Bytes: 0
block_.L_41d1db:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41d1db	 Bytes: 4
  %loadMem_41d1db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d1db = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d1db)
  store %struct.Memory* %call_41d1db, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x1c(%rax)	 RIP: 41d1df	 Bytes: 4
  %loadMem_41d1df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d1df = call %struct.Memory* @routine_cmpl__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d1df)
  store %struct.Memory* %call_41d1df, %struct.Memory** %MEMORY

  ; Code: je .L_41d1fa	 RIP: 41d1e3	 Bytes: 6
  %loadMem_41d1e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d1e3 = call %struct.Memory* @routine_je_.L_41d1fa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d1e3, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_41d1e3, %struct.Memory** %MEMORY

  %loadBr_41d1e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d1e3 = icmp eq i8 %loadBr_41d1e3, 1
  br i1 %cmpBr_41d1e3, label %block_.L_41d1fa, label %block_41d1e9

block_41d1e9:
  ; Code: movl $0x4, %esi	 RIP: 41d1e9	 Bytes: 5
  %loadMem_41d1e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d1e9 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d1e9)
  store %struct.Memory* %call_41d1e9, %struct.Memory** %MEMORY

  ; Code: leaq -0x30(%rbp), %rax	 RIP: 41d1ee	 Bytes: 4
  %loadMem_41d1ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d1ee = call %struct.Memory* @routine_leaq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d1ee)
  store %struct.Memory* %call_41d1ee, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41d1f2	 Bytes: 3
  %loadMem_41d1f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d1f2 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d1f2)
  store %struct.Memory* %call_41d1f2, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 41d1f5	 Bytes: 5
  %loadMem1_41d1f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d1f5 = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d1f5, i64 20875, i64 5, i64 5)
  store %struct.Memory* %call1_41d1f5, %struct.Memory** %MEMORY

  %loadMem2_41d1f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d1f5 = load i64, i64* %3
  %call2_41d1f5 = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_41d1f5, %struct.Memory* %loadMem2_41d1f5)
  store %struct.Memory* %call2_41d1f5, %struct.Memory** %MEMORY

  ; Code: .L_41d1fa:	 RIP: 41d1fa	 Bytes: 0
  br label %block_.L_41d1fa
block_.L_41d1fa:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 41d1fa	 Bytes: 3
  %loadMem_41d1fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d1fa = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d1fa)
  store %struct.Memory* %call_41d1fa, %struct.Memory** %MEMORY

  ; Code: cmpl 0x661538, %eax	 RIP: 41d1fd	 Bytes: 7
  %loadMem_41d1fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d1fd = call %struct.Memory* @routine_cmpl_0x661538___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d1fd)
  store %struct.Memory* %call_41d1fd, %struct.Memory** %MEMORY

  ; Code: je .L_41d20f	 RIP: 41d204	 Bytes: 6
  %loadMem_41d204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d204 = call %struct.Memory* @routine_je_.L_41d20f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d204, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41d204, %struct.Memory** %MEMORY

  %loadBr_41d204 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d204 = icmp eq i8 %loadBr_41d204, 1
  br i1 %cmpBr_41d204, label %block_.L_41d20f, label %block_41d20a

block_41d20a:
  ; Code: jmpq .L_41e05f	 RIP: 41d20a	 Bytes: 5
  %loadMem_41d20a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d20a = call %struct.Memory* @routine_jmpq_.L_41e05f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d20a, i64 3669, i64 5)
  store %struct.Memory* %call_41d20a, %struct.Memory** %MEMORY

  br label %block_.L_41e05f

  ; Code: .L_41d20f:	 RIP: 41d20f	 Bytes: 0
block_.L_41d20f:

  ; Code: callq .AllocPlan7Shell	 RIP: 41d20f	 Bytes: 5
  %loadMem1_41d20f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d20f = call %struct.Memory* @routine_callq_.AllocPlan7Shell(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d20f, i64 84817, i64 5, i64 5)
  store %struct.Memory* %call1_41d20f, %struct.Memory** %MEMORY

  %loadMem2_41d20f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d20f = load i64, i64* %3
  %call2_41d20f = call %struct.Memory* @sub_431d60.AllocPlan7Shell(%struct.State* %0, i64  %loadPC_41d20f, %struct.Memory* %loadMem2_41d20f)
  store %struct.Memory* %call2_41d20f, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %ecx	 RIP: 41d214	 Bytes: 5
  %loadMem_41d214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d214 = call %struct.Memory* @routine_movl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d214)
  store %struct.Memory* %call_41d214, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %esi	 RIP: 41d219	 Bytes: 2
  %loadMem_41d219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d219 = call %struct.Memory* @routine_movl__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d219)
  store %struct.Memory* %call_41d219, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 41d21b	 Bytes: 5
  %loadMem_41d21b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d21b = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d21b)
  store %struct.Memory* %call_41d21b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 41d220	 Bytes: 2
  %loadMem_41d220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d220 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d220)
  store %struct.Memory* %call_41d220, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x20(%rbp)	 RIP: 41d222	 Bytes: 4
  %loadMem_41d222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d222 = call %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d222)
  store %struct.Memory* %call_41d222, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41d226	 Bytes: 4
  %loadMem_41d226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d226 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d226)
  store %struct.Memory* %call_41d226, %struct.Memory** %MEMORY

  ; Code: addq $0x1c8, %rax	 RIP: 41d22a	 Bytes: 6
  %loadMem_41d22a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d22a = call %struct.Memory* @routine_addq__0x1c8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d22a)
  store %struct.Memory* %call_41d22a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 41d230	 Bytes: 4
  %loadMem_41d230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d230 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d230)
  store %struct.Memory* %call_41d230, %struct.Memory** %MEMORY

  ; Code: movq (%rdi), %rcx	 RIP: 41d234	 Bytes: 3
  %loadMem_41d234 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d234 = call %struct.Memory* @routine_movq___rdi____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d234)
  store %struct.Memory* %call_41d234, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41d237	 Bytes: 3
  %loadMem_41d237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d237 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d237)
  store %struct.Memory* %call_41d237, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 41d23a	 Bytes: 5
  %loadMem1_41d23a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d23a = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d23a, i64 -114218, i64 5, i64 5)
  store %struct.Memory* %call1_41d23a, %struct.Memory** %MEMORY

  %loadMem2_41d23a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d23a = load i64, i64* %3
  %call2_41d23a = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_41d23a, %struct.Memory* %loadMem2_41d23a)
  store %struct.Memory* %call2_41d23a, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41d23f	 Bytes: 4
  %loadMem_41d23f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d23f = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d23f)
  store %struct.Memory* %call_41d23f, %struct.Memory** %MEMORY

  ; Code: jne .L_41d24e	 RIP: 41d243	 Bytes: 6
  %loadMem_41d243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d243 = call %struct.Memory* @routine_jne_.L_41d24e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d243, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41d243, %struct.Memory** %MEMORY

  %loadBr_41d243 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d243 = icmp eq i8 %loadBr_41d243, 1
  br i1 %cmpBr_41d243, label %block_.L_41d24e, label %block_41d249

block_41d249:
  ; Code: jmpq .L_41e05f	 RIP: 41d249	 Bytes: 5
  %loadMem_41d249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d249 = call %struct.Memory* @routine_jmpq_.L_41e05f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d249, i64 3606, i64 5)
  store %struct.Memory* %call_41d249, %struct.Memory** %MEMORY

  br label %block_.L_41e05f

  ; Code: .L_41d24e:	 RIP: 41d24e	 Bytes: 0
block_.L_41d24e:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41d24e	 Bytes: 4
  %loadMem_41d24e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d24e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d24e)
  store %struct.Memory* %call_41d24e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x1c(%rax)	 RIP: 41d252	 Bytes: 4
  %loadMem_41d252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d252 = call %struct.Memory* @routine_cmpl__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d252)
  store %struct.Memory* %call_41d252, %struct.Memory** %MEMORY

  ; Code: je .L_41d273	 RIP: 41d256	 Bytes: 6
  %loadMem_41d256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d256 = call %struct.Memory* @routine_je_.L_41d273(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d256, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_41d256, %struct.Memory** %MEMORY

  %loadBr_41d256 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d256 = icmp eq i8 %loadBr_41d256, 1
  br i1 %cmpBr_41d256, label %block_.L_41d273, label %block_41d25c

block_41d25c:
  ; Code: movl $0x4, %esi	 RIP: 41d25c	 Bytes: 5
  %loadMem_41d25c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d25c = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d25c)
  store %struct.Memory* %call_41d25c, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41d261	 Bytes: 4
  %loadMem_41d261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d261 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d261)
  store %struct.Memory* %call_41d261, %struct.Memory** %MEMORY

  ; Code: addq $0x1c8, %rax	 RIP: 41d265	 Bytes: 6
  %loadMem_41d265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d265 = call %struct.Memory* @routine_addq__0x1c8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d265)
  store %struct.Memory* %call_41d265, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41d26b	 Bytes: 3
  %loadMem_41d26b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d26b = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d26b)
  store %struct.Memory* %call_41d26b, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 41d26e	 Bytes: 5
  %loadMem1_41d26e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d26e = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d26e, i64 20754, i64 5, i64 5)
  store %struct.Memory* %call1_41d26e, %struct.Memory** %MEMORY

  %loadMem2_41d26e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d26e = load i64, i64* %3
  %call2_41d26e = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_41d26e, %struct.Memory* %loadMem2_41d26e)
  store %struct.Memory* %call2_41d26e, %struct.Memory** %MEMORY

  ; Code: .L_41d273:	 RIP: 41d273	 Bytes: 0
  br label %block_.L_41d273
block_.L_41d273:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41d273	 Bytes: 4
  %loadMem_41d273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d273 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d273)
  store %struct.Memory* %call_41d273, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 41d277	 Bytes: 3
  %loadMem_41d277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d277 = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d277)
  store %struct.Memory* %call_41d277, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41d27a	 Bytes: 4
  %loadMem_41d27a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d27a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d27a)
  store %struct.Memory* %call_41d27a, %struct.Memory** %MEMORY

  ; Code: movl 0x1c(%rax), %esi	 RIP: 41d27e	 Bytes: 3
  %loadMem_41d27e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d27e = call %struct.Memory* @routine_movl_0x1c__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d27e)
  store %struct.Memory* %call_41d27e, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdx	 RIP: 41d281	 Bytes: 4
  %loadMem_41d281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d281 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d281)
  store %struct.Memory* %call_41d281, %struct.Memory** %MEMORY

  ; Code: callq .read_bin_string	 RIP: 41d285	 Bytes: 5
  %loadMem1_41d285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d285 = call %struct.Memory* @routine_callq_.read_bin_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d285, i64 20875, i64 5, i64 5)
  store %struct.Memory* %call1_41d285, %struct.Memory** %MEMORY

  %loadMem2_41d285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d285 = load i64, i64* %3
  %call2_41d285 = call %struct.Memory* @sub_422410.read_bin_string(%struct.State* %0, i64  %loadPC_41d285, %struct.Memory* %loadMem2_41d285)
  store %struct.Memory* %call2_41d285, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41d28a	 Bytes: 3
  %loadMem_41d28a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d28a = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d28a)
  store %struct.Memory* %call_41d28a, %struct.Memory** %MEMORY

  ; Code: jne .L_41d298	 RIP: 41d28d	 Bytes: 6
  %loadMem_41d28d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d28d = call %struct.Memory* @routine_jne_.L_41d298(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d28d, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41d28d, %struct.Memory** %MEMORY

  %loadBr_41d28d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d28d = icmp eq i8 %loadBr_41d28d, 1
  br i1 %cmpBr_41d28d, label %block_.L_41d298, label %block_41d293

block_41d293:
  ; Code: jmpq .L_41e05f	 RIP: 41d293	 Bytes: 5
  %loadMem_41d293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d293 = call %struct.Memory* @routine_jmpq_.L_41e05f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d293, i64 3532, i64 5)
  store %struct.Memory* %call_41d293, %struct.Memory** %MEMORY

  br label %block_.L_41e05f

  ; Code: .L_41d298:	 RIP: 41d298	 Bytes: 0
block_.L_41d298:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41d298	 Bytes: 4
  %loadMem_41d298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d298 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d298)
  store %struct.Memory* %call_41d298, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %ecx	 RIP: 41d29c	 Bytes: 6
  %loadMem_41d29c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d29c = call %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d29c)
  store %struct.Memory* %call_41d29c, %struct.Memory** %MEMORY

  ; Code: andl $0x200, %ecx	 RIP: 41d2a2	 Bytes: 6
  %loadMem_41d2a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d2a2 = call %struct.Memory* @routine_andl__0x200___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d2a2)
  store %struct.Memory* %call_41d2a2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 41d2a8	 Bytes: 3
  %loadMem_41d2a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d2a8 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d2a8)
  store %struct.Memory* %call_41d2a8, %struct.Memory** %MEMORY

  ; Code: je .L_41d2dd	 RIP: 41d2ab	 Bytes: 6
  %loadMem_41d2ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d2ab = call %struct.Memory* @routine_je_.L_41d2dd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d2ab, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_41d2ab, %struct.Memory** %MEMORY

  %loadBr_41d2ab = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d2ab = icmp eq i8 %loadBr_41d2ab, 1
  br i1 %cmpBr_41d2ab, label %block_.L_41d2dd, label %block_41d2b1

block_41d2b1:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 41d2b1	 Bytes: 4
  %loadMem_41d2b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d2b1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d2b1)
  store %struct.Memory* %call_41d2b1, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 41d2b5	 Bytes: 3
  %loadMem_41d2b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d2b5 = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d2b5)
  store %struct.Memory* %call_41d2b5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41d2b8	 Bytes: 4
  %loadMem_41d2b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d2b8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d2b8)
  store %struct.Memory* %call_41d2b8, %struct.Memory** %MEMORY

  ; Code: movl 0x1c(%rax), %esi	 RIP: 41d2bc	 Bytes: 3
  %loadMem_41d2bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d2bc = call %struct.Memory* @routine_movl_0x1c__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d2bc)
  store %struct.Memory* %call_41d2bc, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41d2bf	 Bytes: 4
  %loadMem_41d2bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d2bf = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d2bf)
  store %struct.Memory* %call_41d2bf, %struct.Memory** %MEMORY

  ; Code: addq $0x8, %rax	 RIP: 41d2c3	 Bytes: 4
  %loadMem_41d2c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d2c3 = call %struct.Memory* @routine_addq__0x8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d2c3)
  store %struct.Memory* %call_41d2c3, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 41d2c7	 Bytes: 3
  %loadMem_41d2c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d2c7 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d2c7)
  store %struct.Memory* %call_41d2c7, %struct.Memory** %MEMORY

  ; Code: callq .read_bin_string	 RIP: 41d2ca	 Bytes: 5
  %loadMem1_41d2ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d2ca = call %struct.Memory* @routine_callq_.read_bin_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d2ca, i64 20806, i64 5, i64 5)
  store %struct.Memory* %call1_41d2ca, %struct.Memory** %MEMORY

  %loadMem2_41d2ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d2ca = load i64, i64* %3
  %call2_41d2ca = call %struct.Memory* @sub_422410.read_bin_string(%struct.State* %0, i64  %loadPC_41d2ca, %struct.Memory* %loadMem2_41d2ca)
  store %struct.Memory* %call2_41d2ca, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41d2cf	 Bytes: 3
  %loadMem_41d2cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d2cf = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d2cf)
  store %struct.Memory* %call_41d2cf, %struct.Memory** %MEMORY

  ; Code: jne .L_41d2dd	 RIP: 41d2d2	 Bytes: 6
  %loadMem_41d2d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d2d2 = call %struct.Memory* @routine_jne_.L_41d2dd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d2d2, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41d2d2, %struct.Memory** %MEMORY

  %loadBr_41d2d2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d2d2 = icmp eq i8 %loadBr_41d2d2, 1
  br i1 %cmpBr_41d2d2, label %block_.L_41d2dd, label %block_41d2d8

block_41d2d8:
  ; Code: jmpq .L_41e05f	 RIP: 41d2d8	 Bytes: 5
  %loadMem_41d2d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d2d8 = call %struct.Memory* @routine_jmpq_.L_41e05f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d2d8, i64 3463, i64 5)
  store %struct.Memory* %call_41d2d8, %struct.Memory** %MEMORY

  br label %block_.L_41e05f

  ; Code: .L_41d2dd:	 RIP: 41d2dd	 Bytes: 0
block_.L_41d2dd:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41d2dd	 Bytes: 4
  %loadMem_41d2dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d2dd = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d2dd)
  store %struct.Memory* %call_41d2dd, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %ecx	 RIP: 41d2e1	 Bytes: 6
  %loadMem_41d2e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d2e1 = call %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d2e1)
  store %struct.Memory* %call_41d2e1, %struct.Memory** %MEMORY

  ; Code: andl $0x2, %ecx	 RIP: 41d2e7	 Bytes: 3
  %loadMem_41d2e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d2e7 = call %struct.Memory* @routine_andl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d2e7)
  store %struct.Memory* %call_41d2e7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 41d2ea	 Bytes: 3
  %loadMem_41d2ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d2ea = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d2ea)
  store %struct.Memory* %call_41d2ea, %struct.Memory** %MEMORY

  ; Code: je .L_41d31f	 RIP: 41d2ed	 Bytes: 6
  %loadMem_41d2ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d2ed = call %struct.Memory* @routine_je_.L_41d31f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d2ed, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_41d2ed, %struct.Memory** %MEMORY

  %loadBr_41d2ed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d2ed = icmp eq i8 %loadBr_41d2ed, 1
  br i1 %cmpBr_41d2ed, label %block_.L_41d31f, label %block_41d2f3

block_41d2f3:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 41d2f3	 Bytes: 4
  %loadMem_41d2f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d2f3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d2f3)
  store %struct.Memory* %call_41d2f3, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 41d2f7	 Bytes: 3
  %loadMem_41d2f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d2f7 = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d2f7)
  store %struct.Memory* %call_41d2f7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41d2fa	 Bytes: 4
  %loadMem_41d2fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d2fa = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d2fa)
  store %struct.Memory* %call_41d2fa, %struct.Memory** %MEMORY

  ; Code: movl 0x1c(%rax), %esi	 RIP: 41d2fe	 Bytes: 3
  %loadMem_41d2fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d2fe = call %struct.Memory* @routine_movl_0x1c__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d2fe)
  store %struct.Memory* %call_41d2fe, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41d301	 Bytes: 4
  %loadMem_41d301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d301 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d301)
  store %struct.Memory* %call_41d301, %struct.Memory** %MEMORY

  ; Code: addq $0x10, %rax	 RIP: 41d305	 Bytes: 4
  %loadMem_41d305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d305 = call %struct.Memory* @routine_addq__0x10___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d305)
  store %struct.Memory* %call_41d305, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 41d309	 Bytes: 3
  %loadMem_41d309 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d309 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d309)
  store %struct.Memory* %call_41d309, %struct.Memory** %MEMORY

  ; Code: callq .read_bin_string	 RIP: 41d30c	 Bytes: 5
  %loadMem1_41d30c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d30c = call %struct.Memory* @routine_callq_.read_bin_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d30c, i64 20740, i64 5, i64 5)
  store %struct.Memory* %call1_41d30c, %struct.Memory** %MEMORY

  %loadMem2_41d30c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d30c = load i64, i64* %3
  %call2_41d30c = call %struct.Memory* @sub_422410.read_bin_string(%struct.State* %0, i64  %loadPC_41d30c, %struct.Memory* %loadMem2_41d30c)
  store %struct.Memory* %call2_41d30c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41d311	 Bytes: 3
  %loadMem_41d311 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d311 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d311)
  store %struct.Memory* %call_41d311, %struct.Memory** %MEMORY

  ; Code: jne .L_41d31f	 RIP: 41d314	 Bytes: 6
  %loadMem_41d314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d314 = call %struct.Memory* @routine_jne_.L_41d31f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d314, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41d314, %struct.Memory** %MEMORY

  %loadBr_41d314 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d314 = icmp eq i8 %loadBr_41d314, 1
  br i1 %cmpBr_41d314, label %block_.L_41d31f, label %block_41d31a

block_41d31a:
  ; Code: jmpq .L_41e05f	 RIP: 41d31a	 Bytes: 5
  %loadMem_41d31a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d31a = call %struct.Memory* @routine_jmpq_.L_41e05f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d31a, i64 3397, i64 5)
  store %struct.Memory* %call_41d31a, %struct.Memory** %MEMORY

  br label %block_.L_41e05f

  ; Code: .L_41d31f:	 RIP: 41d31f	 Bytes: 0
block_.L_41d31f:

  ; Code: movl $0x4, %eax	 RIP: 41d31f	 Bytes: 5
  %loadMem_41d31f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d31f = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d31f)
  store %struct.Memory* %call_41d31f, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41d324	 Bytes: 2
  %loadMem_41d324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d324 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d324)
  store %struct.Memory* %call_41d324, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 41d326	 Bytes: 5
  %loadMem_41d326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d326 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d326)
  store %struct.Memory* %call_41d326, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41d32b	 Bytes: 2
  %loadMem_41d32b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d32b = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d32b)
  store %struct.Memory* %call_41d32b, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41d32d	 Bytes: 4
  %loadMem_41d32d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d32d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d32d)
  store %struct.Memory* %call_41d32d, %struct.Memory** %MEMORY

  ; Code: addq $0x88, %rcx	 RIP: 41d331	 Bytes: 7
  %loadMem_41d331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d331 = call %struct.Memory* @routine_addq__0x88___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d331)
  store %struct.Memory* %call_41d331, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 41d338	 Bytes: 4
  %loadMem_41d338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d338 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d338)
  store %struct.Memory* %call_41d338, %struct.Memory** %MEMORY

  ; Code: movq (%rdi), %rdi	 RIP: 41d33c	 Bytes: 3
  %loadMem_41d33c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d33c = call %struct.Memory* @routine_movq___rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d33c)
  store %struct.Memory* %call_41d33c, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x40(%rbp)	 RIP: 41d33f	 Bytes: 4
  %loadMem_41d33f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d33f = call %struct.Memory* @routine_movq__rdi__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d33f)
  store %struct.Memory* %call_41d33f, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41d343	 Bytes: 3
  %loadMem_41d343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d343 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d343)
  store %struct.Memory* %call_41d343, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 41d346	 Bytes: 4
  %loadMem_41d346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d346 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d346)
  store %struct.Memory* %call_41d346, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 41d34a	 Bytes: 5
  %loadMem1_41d34a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d34a = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d34a, i64 -114490, i64 5, i64 5)
  store %struct.Memory* %call1_41d34a, %struct.Memory** %MEMORY

  %loadMem2_41d34a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d34a = load i64, i64* %3
  %call2_41d34a = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_41d34a, %struct.Memory* %loadMem2_41d34a)
  store %struct.Memory* %call2_41d34a, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41d34f	 Bytes: 4
  %loadMem_41d34f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d34f = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d34f)
  store %struct.Memory* %call_41d34f, %struct.Memory** %MEMORY

  ; Code: jne .L_41d35e	 RIP: 41d353	 Bytes: 6
  %loadMem_41d353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d353 = call %struct.Memory* @routine_jne_.L_41d35e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d353, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41d353, %struct.Memory** %MEMORY

  %loadBr_41d353 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d353 = icmp eq i8 %loadBr_41d353, 1
  br i1 %cmpBr_41d353, label %block_.L_41d35e, label %block_41d359

block_41d359:
  ; Code: jmpq .L_41e05f	 RIP: 41d359	 Bytes: 5
  %loadMem_41d359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d359 = call %struct.Memory* @routine_jmpq_.L_41e05f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d359, i64 3334, i64 5)
  store %struct.Memory* %call_41d359, %struct.Memory** %MEMORY

  br label %block_.L_41e05f

  ; Code: .L_41d35e:	 RIP: 41d35e	 Bytes: 0
block_.L_41d35e:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41d35e	 Bytes: 4
  %loadMem_41d35e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d35e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d35e)
  store %struct.Memory* %call_41d35e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x1c(%rax)	 RIP: 41d362	 Bytes: 4
  %loadMem_41d362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d362 = call %struct.Memory* @routine_cmpl__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d362)
  store %struct.Memory* %call_41d362, %struct.Memory** %MEMORY

  ; Code: je .L_41d383	 RIP: 41d366	 Bytes: 6
  %loadMem_41d366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d366 = call %struct.Memory* @routine_je_.L_41d383(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d366, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_41d366, %struct.Memory** %MEMORY

  %loadBr_41d366 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d366 = icmp eq i8 %loadBr_41d366, 1
  br i1 %cmpBr_41d366, label %block_.L_41d383, label %block_41d36c

block_41d36c:
  ; Code: movl $0x4, %esi	 RIP: 41d36c	 Bytes: 5
  %loadMem_41d36c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d36c = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d36c)
  store %struct.Memory* %call_41d36c, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41d371	 Bytes: 4
  %loadMem_41d371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d371 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d371)
  store %struct.Memory* %call_41d371, %struct.Memory** %MEMORY

  ; Code: addq $0x88, %rax	 RIP: 41d375	 Bytes: 6
  %loadMem_41d375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d375 = call %struct.Memory* @routine_addq__0x88___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d375)
  store %struct.Memory* %call_41d375, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41d37b	 Bytes: 3
  %loadMem_41d37b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d37b = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d37b)
  store %struct.Memory* %call_41d37b, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 41d37e	 Bytes: 5
  %loadMem1_41d37e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d37e = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d37e, i64 20482, i64 5, i64 5)
  store %struct.Memory* %call1_41d37e, %struct.Memory** %MEMORY

  %loadMem2_41d37e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d37e = load i64, i64* %3
  %call2_41d37e = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_41d37e, %struct.Memory* %loadMem2_41d37e)
  store %struct.Memory* %call2_41d37e, %struct.Memory** %MEMORY

  ; Code: .L_41d383:	 RIP: 41d383	 Bytes: 0
  br label %block_.L_41d383
block_.L_41d383:

  ; Code: movl $0x4, %eax	 RIP: 41d383	 Bytes: 5
  %loadMem_41d383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d383 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d383)
  store %struct.Memory* %call_41d383, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41d388	 Bytes: 2
  %loadMem_41d388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d388 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d388)
  store %struct.Memory* %call_41d388, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 41d38a	 Bytes: 5
  %loadMem_41d38a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d38a = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d38a)
  store %struct.Memory* %call_41d38a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41d38f	 Bytes: 2
  %loadMem_41d38f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d38f = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d38f)
  store %struct.Memory* %call_41d38f, %struct.Memory** %MEMORY

  ; Code: leaq -0x2c(%rbp), %rcx	 RIP: 41d391	 Bytes: 4
  %loadMem_41d391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d391 = call %struct.Memory* @routine_leaq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d391)
  store %struct.Memory* %call_41d391, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 41d395	 Bytes: 4
  %loadMem_41d395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d395 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d395)
  store %struct.Memory* %call_41d395, %struct.Memory** %MEMORY

  ; Code: movq (%rdi), %rdi	 RIP: 41d399	 Bytes: 3
  %loadMem_41d399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d399 = call %struct.Memory* @routine_movq___rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d399)
  store %struct.Memory* %call_41d399, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x48(%rbp)	 RIP: 41d39c	 Bytes: 4
  %loadMem_41d39c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d39c = call %struct.Memory* @routine_movq__rdi__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d39c)
  store %struct.Memory* %call_41d39c, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41d3a0	 Bytes: 3
  %loadMem_41d3a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d3a0 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d3a0)
  store %struct.Memory* %call_41d3a0, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rcx	 RIP: 41d3a3	 Bytes: 4
  %loadMem_41d3a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d3a3 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d3a3)
  store %struct.Memory* %call_41d3a3, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 41d3a7	 Bytes: 5
  %loadMem1_41d3a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d3a7 = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d3a7, i64 -114583, i64 5, i64 5)
  store %struct.Memory* %call1_41d3a7, %struct.Memory** %MEMORY

  %loadMem2_41d3a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d3a7 = load i64, i64* %3
  %call2_41d3a7 = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_41d3a7, %struct.Memory* %loadMem2_41d3a7)
  store %struct.Memory* %call2_41d3a7, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41d3ac	 Bytes: 4
  %loadMem_41d3ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d3ac = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d3ac)
  store %struct.Memory* %call_41d3ac, %struct.Memory** %MEMORY

  ; Code: jne .L_41d3bb	 RIP: 41d3b0	 Bytes: 6
  %loadMem_41d3b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d3b0 = call %struct.Memory* @routine_jne_.L_41d3bb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d3b0, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41d3b0, %struct.Memory** %MEMORY

  %loadBr_41d3b0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d3b0 = icmp eq i8 %loadBr_41d3b0, 1
  br i1 %cmpBr_41d3b0, label %block_.L_41d3bb, label %block_41d3b6

block_41d3b6:
  ; Code: jmpq .L_41e05f	 RIP: 41d3b6	 Bytes: 5
  %loadMem_41d3b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d3b6 = call %struct.Memory* @routine_jmpq_.L_41e05f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d3b6, i64 3241, i64 5)
  store %struct.Memory* %call_41d3b6, %struct.Memory** %MEMORY

  br label %block_.L_41e05f

  ; Code: .L_41d3bb:	 RIP: 41d3bb	 Bytes: 0
block_.L_41d3bb:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41d3bb	 Bytes: 4
  %loadMem_41d3bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d3bb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d3bb)
  store %struct.Memory* %call_41d3bb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x1c(%rax)	 RIP: 41d3bf	 Bytes: 4
  %loadMem_41d3bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d3bf = call %struct.Memory* @routine_cmpl__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d3bf)
  store %struct.Memory* %call_41d3bf, %struct.Memory** %MEMORY

  ; Code: je .L_41d3da	 RIP: 41d3c3	 Bytes: 6
  %loadMem_41d3c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d3c3 = call %struct.Memory* @routine_je_.L_41d3da(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d3c3, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_41d3c3, %struct.Memory** %MEMORY

  %loadBr_41d3c3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d3c3 = icmp eq i8 %loadBr_41d3c3, 1
  br i1 %cmpBr_41d3c3, label %block_.L_41d3da, label %block_41d3c9

block_41d3c9:
  ; Code: movl $0x4, %esi	 RIP: 41d3c9	 Bytes: 5
  %loadMem_41d3c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d3c9 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d3c9)
  store %struct.Memory* %call_41d3c9, %struct.Memory** %MEMORY

  ; Code: leaq -0x2c(%rbp), %rax	 RIP: 41d3ce	 Bytes: 4
  %loadMem_41d3ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d3ce = call %struct.Memory* @routine_leaq_MINUS0x2c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d3ce)
  store %struct.Memory* %call_41d3ce, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41d3d2	 Bytes: 3
  %loadMem_41d3d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d3d2 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d3d2)
  store %struct.Memory* %call_41d3d2, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 41d3d5	 Bytes: 5
  %loadMem1_41d3d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d3d5 = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d3d5, i64 20395, i64 5, i64 5)
  store %struct.Memory* %call1_41d3d5, %struct.Memory** %MEMORY

  %loadMem2_41d3d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d3d5 = load i64, i64* %3
  %call2_41d3d5 = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_41d3d5, %struct.Memory* %loadMem2_41d3d5)
  store %struct.Memory* %call2_41d3d5, %struct.Memory** %MEMORY

  ; Code: .L_41d3da:	 RIP: 41d3da	 Bytes: 0
  br label %block_.L_41d3da
block_.L_41d3da:

  ; Code: cmpl $0x0, 0x676d90	 RIP: 41d3da	 Bytes: 8
  %loadMem_41d3da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d3da = call %struct.Memory* @routine_cmpl__0x0__0x676d90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d3da)
  store %struct.Memory* %call_41d3da, %struct.Memory** %MEMORY

  ; Code: jne .L_41d3f5	 RIP: 41d3e2	 Bytes: 6
  %loadMem_41d3e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d3e2 = call %struct.Memory* @routine_jne_.L_41d3f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d3e2, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_41d3e2, %struct.Memory** %MEMORY

  %loadBr_41d3e2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d3e2 = icmp eq i8 %loadBr_41d3e2, 1
  br i1 %cmpBr_41d3e2, label %block_.L_41d3f5, label %block_41d3e8

block_41d3e8:
  ; Code: movl -0x2c(%rbp), %edi	 RIP: 41d3e8	 Bytes: 3
  %loadMem_41d3e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d3e8 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d3e8)
  store %struct.Memory* %call_41d3e8, %struct.Memory** %MEMORY

  ; Code: callq .SetAlphabet	 RIP: 41d3eb	 Bytes: 5
  %loadMem1_41d3eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d3eb = call %struct.Memory* @routine_callq_.SetAlphabet(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d3eb, i64 -100171, i64 5, i64 5)
  store %struct.Memory* %call1_41d3eb, %struct.Memory** %MEMORY

  %loadMem2_41d3eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d3eb = load i64, i64* %3
  %call2_41d3eb = call %struct.Memory* @sub_404ca0.SetAlphabet(%struct.State* %0, i64  %loadPC_41d3eb, %struct.Memory* %loadMem2_41d3eb)
  store %struct.Memory* %call2_41d3eb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41d43a	 RIP: 41d3f0	 Bytes: 5
  %loadMem_41d3f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d3f0 = call %struct.Memory* @routine_jmpq_.L_41d43a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d3f0, i64 74, i64 5)
  store %struct.Memory* %call_41d3f0, %struct.Memory** %MEMORY

  br label %block_.L_41d43a

  ; Code: .L_41d3f5:	 RIP: 41d3f5	 Bytes: 0
block_.L_41d3f5:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 41d3f5	 Bytes: 3
  %loadMem_41d3f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d3f5 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d3f5)
  store %struct.Memory* %call_41d3f5, %struct.Memory** %MEMORY

  ; Code: cmpl 0x676d90, %eax	 RIP: 41d3f8	 Bytes: 7
  %loadMem_41d3f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d3f8 = call %struct.Memory* @routine_cmpl_0x676d90___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d3f8)
  store %struct.Memory* %call_41d3f8, %struct.Memory** %MEMORY

  ; Code: je .L_41d435	 RIP: 41d3ff	 Bytes: 6
  %loadMem_41d3ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d3ff = call %struct.Memory* @routine_je_.L_41d435(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d3ff, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_41d3ff, %struct.Memory** %MEMORY

  %loadBr_41d3ff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d3ff = icmp eq i8 %loadBr_41d3ff, 1
  br i1 %cmpBr_41d3ff, label %block_.L_41d435, label %block_41d405

block_41d405:
  ; Code: movl 0x676d90, %edi	 RIP: 41d405	 Bytes: 7
  %loadMem_41d405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d405 = call %struct.Memory* @routine_movl_0x676d90___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d405)
  store %struct.Memory* %call_41d405, %struct.Memory** %MEMORY

  ; Code: callq .AlphabetType2String	 RIP: 41d40c	 Bytes: 5
  %loadMem1_41d40c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d40c = call %struct.Memory* @routine_callq_.AlphabetType2String(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d40c, i64 -50604, i64 5, i64 5)
  store %struct.Memory* %call1_41d40c, %struct.Memory** %MEMORY

  %loadMem2_41d40c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d40c = load i64, i64* %3
  %call2_41d40c = call %struct.Memory* @sub_410e60.AlphabetType2String(%struct.State* %0, i64  %loadPC_41d40c, %struct.Memory* %loadMem2_41d40c)
  store %struct.Memory* %call2_41d40c, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edi	 RIP: 41d411	 Bytes: 3
  %loadMem_41d411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d411 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d411)
  store %struct.Memory* %call_41d411, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x50(%rbp)	 RIP: 41d414	 Bytes: 4
  %loadMem_41d414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d414 = call %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d414)
  store %struct.Memory* %call_41d414, %struct.Memory** %MEMORY

  ; Code: callq .AlphabetType2String	 RIP: 41d418	 Bytes: 5
  %loadMem1_41d418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d418 = call %struct.Memory* @routine_callq_.AlphabetType2String(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d418, i64 -50616, i64 5, i64 5)
  store %struct.Memory* %call1_41d418, %struct.Memory** %MEMORY

  %loadMem2_41d418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d418 = load i64, i64* %3
  %call2_41d418 = call %struct.Memory* @sub_410e60.AlphabetType2String(%struct.State* %0, i64  %loadPC_41d418, %struct.Memory* %loadMem2_41d418)
  store %struct.Memory* %call2_41d418, %struct.Memory** %MEMORY

  ; Code: movq $0x457899, %rdi	 RIP: 41d41d	 Bytes: 10
  %loadMem_41d41d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d41d = call %struct.Memory* @routine_movq__0x457899___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d41d)
  store %struct.Memory* %call_41d41d, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rsi	 RIP: 41d427	 Bytes: 4
  %loadMem_41d427 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d427 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d427)
  store %struct.Memory* %call_41d427, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 41d42b	 Bytes: 3
  %loadMem_41d42b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d42b = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d42b)
  store %struct.Memory* %call_41d42b, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 41d42e	 Bytes: 2
  %loadMem_41d42e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d42e = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d42e)
  store %struct.Memory* %call_41d42e, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 41d430	 Bytes: 5
  %loadMem1_41d430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d430 = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d430, i64 136672, i64 5, i64 5)
  store %struct.Memory* %call1_41d430, %struct.Memory** %MEMORY

  %loadMem2_41d430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d430 = load i64, i64* %3
  %call2_41d430 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_41d430, %struct.Memory* %loadMem2_41d430)
  store %struct.Memory* %call2_41d430, %struct.Memory** %MEMORY

  ; Code: .L_41d435:	 RIP: 41d435	 Bytes: 0
  br label %block_.L_41d435
block_.L_41d435:

  ; Code: jmpq .L_41d43a	 RIP: 41d435	 Bytes: 5
  %loadMem_41d435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d435 = call %struct.Memory* @routine_jmpq_.L_41d43a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d435, i64 5, i64 5)
  store %struct.Memory* %call_41d435, %struct.Memory** %MEMORY

  br label %block_.L_41d43a

  ; Code: .L_41d43a:	 RIP: 41d43a	 Bytes: 0
block_.L_41d43a:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41d43a	 Bytes: 4
  %loadMem_41d43a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d43a = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d43a)
  store %struct.Memory* %call_41d43a, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41d43e	 Bytes: 4
  %loadMem_41d43e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d43e = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d43e)
  store %struct.Memory* %call_41d43e, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rax), %esi	 RIP: 41d442	 Bytes: 6
  %loadMem_41d442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d442 = call %struct.Memory* @routine_movl_0x88__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d442)
  store %struct.Memory* %call_41d442, %struct.Memory** %MEMORY

  ; Code: callq .AllocPlan7Body	 RIP: 41d448	 Bytes: 5
  %loadMem1_41d448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d448 = call %struct.Memory* @routine_callq_.AllocPlan7Body(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d448, i64 84872, i64 5, i64 5)
  store %struct.Memory* %call1_41d448, %struct.Memory** %MEMORY

  %loadMem2_41d448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d448 = load i64, i64* %3
  %call2_41d448 = call %struct.Memory* @sub_431fd0.AllocPlan7Body(%struct.State* %0, i64  %loadPC_41d448, %struct.Memory* %loadMem2_41d448)
  store %struct.Memory* %call2_41d448, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41d44d	 Bytes: 4
  %loadMem_41d44d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d44d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d44d)
  store %struct.Memory* %call_41d44d, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %esi	 RIP: 41d451	 Bytes: 6
  %loadMem_41d451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d451 = call %struct.Memory* @routine_movl_0x1c8__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d451)
  store %struct.Memory* %call_41d451, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %esi	 RIP: 41d457	 Bytes: 3
  %loadMem_41d457 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d457 = call %struct.Memory* @routine_andl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d457)
  store %struct.Memory* %call_41d457, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %esi	 RIP: 41d45a	 Bytes: 3
  %loadMem_41d45a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d45a = call %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d45a)
  store %struct.Memory* %call_41d45a, %struct.Memory** %MEMORY

  ; Code: je .L_41d49d	 RIP: 41d45d	 Bytes: 6
  %loadMem_41d45d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d45d = call %struct.Memory* @routine_je_.L_41d49d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d45d, i8* %BRANCH_TAKEN, i64 64, i64 6, i64 6)
  store %struct.Memory* %call_41d45d, %struct.Memory** %MEMORY

  %loadBr_41d45d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d45d = icmp eq i8 %loadBr_41d45d, 1
  br i1 %cmpBr_41d45d, label %block_.L_41d49d, label %block_41d463

block_41d463:
  ; Code: movl $0x1, %eax	 RIP: 41d463	 Bytes: 5
  %loadMem_41d463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d463 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d463)
  store %struct.Memory* %call_41d463, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41d468	 Bytes: 2
  %loadMem_41d468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d468 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d468)
  store %struct.Memory* %call_41d468, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41d46a	 Bytes: 4
  %loadMem_41d46a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d46a = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d46a)
  store %struct.Memory* %call_41d46a, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rcx), %rdi	 RIP: 41d46e	 Bytes: 4
  %loadMem_41d46e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d46e = call %struct.Memory* @routine_movq_0x18__rcx____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d46e)
  store %struct.Memory* %call_41d46e, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41d472	 Bytes: 4
  %loadMem_41d472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d472 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d472)
  store %struct.Memory* %call_41d472, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rcx), %eax	 RIP: 41d476	 Bytes: 6
  %loadMem_41d476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d476 = call %struct.Memory* @routine_movl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d476)
  store %struct.Memory* %call_41d476, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41d47c	 Bytes: 3
  %loadMem_41d47c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d47c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d47c)
  store %struct.Memory* %call_41d47c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 41d47f	 Bytes: 3
  %loadMem_41d47f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d47f = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d47f)
  store %struct.Memory* %call_41d47f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 41d482	 Bytes: 4
  %loadMem_41d482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d482 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d482)
  store %struct.Memory* %call_41d482, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 41d486	 Bytes: 3
  %loadMem_41d486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d486 = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d486)
  store %struct.Memory* %call_41d486, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 41d489	 Bytes: 5
  %loadMem1_41d489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d489 = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d489, i64 -114809, i64 5, i64 5)
  store %struct.Memory* %call1_41d489, %struct.Memory** %MEMORY

  %loadMem2_41d489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d489 = load i64, i64* %3
  %call2_41d489 = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_41d489, %struct.Memory* %loadMem2_41d489)
  store %struct.Memory* %call2_41d489, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41d48e	 Bytes: 4
  %loadMem_41d48e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d48e = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d48e)
  store %struct.Memory* %call_41d48e, %struct.Memory** %MEMORY

  ; Code: jne .L_41d49d	 RIP: 41d492	 Bytes: 6
  %loadMem_41d492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d492 = call %struct.Memory* @routine_jne_.L_41d49d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d492, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41d492, %struct.Memory** %MEMORY

  %loadBr_41d492 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d492 = icmp eq i8 %loadBr_41d492, 1
  br i1 %cmpBr_41d492, label %block_.L_41d49d, label %block_41d498

block_41d498:
  ; Code: jmpq .L_41e05f	 RIP: 41d498	 Bytes: 5
  %loadMem_41d498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d498 = call %struct.Memory* @routine_jmpq_.L_41e05f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d498, i64 3015, i64 5)
  store %struct.Memory* %call_41d498, %struct.Memory** %MEMORY

  br label %block_.L_41e05f

  ; Code: .L_41d49d:	 RIP: 41d49d	 Bytes: 0
block_.L_41d49d:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41d49d	 Bytes: 4
  %loadMem_41d49d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d49d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d49d)
  store %struct.Memory* %call_41d49d, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 41d4a1	 Bytes: 4
  %loadMem_41d4a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d4a1 = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d4a1)
  store %struct.Memory* %call_41d4a1, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41d4a5	 Bytes: 4
  %loadMem_41d4a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d4a5 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d4a5)
  store %struct.Memory* %call_41d4a5, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rcx), %edx	 RIP: 41d4a9	 Bytes: 6
  %loadMem_41d4a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d4a9 = call %struct.Memory* @routine_movl_0x88__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d4a9)
  store %struct.Memory* %call_41d4a9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 41d4af	 Bytes: 3
  %loadMem_41d4af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d4af = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d4af)
  store %struct.Memory* %call_41d4af, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 41d4b2	 Bytes: 3
  %loadMem_41d4b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d4b2 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d4b2)
  store %struct.Memory* %call_41d4b2, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rax,%rcx,1)	 RIP: 41d4b5	 Bytes: 4
  %loadMem_41d4b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d4b5 = call %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d4b5)
  store %struct.Memory* %call_41d4b5, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41d4b9	 Bytes: 4
  %loadMem_41d4b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d4b9 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d4b9)
  store %struct.Memory* %call_41d4b9, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %edx	 RIP: 41d4bd	 Bytes: 6
  %loadMem_41d4bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d4bd = call %struct.Memory* @routine_movl_0x1c8__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d4bd)
  store %struct.Memory* %call_41d4bd, %struct.Memory** %MEMORY

  ; Code: andl $0x8, %edx	 RIP: 41d4c3	 Bytes: 3
  %loadMem_41d4c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d4c3 = call %struct.Memory* @routine_andl__0x8___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d4c3)
  store %struct.Memory* %call_41d4c3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 41d4c6	 Bytes: 3
  %loadMem_41d4c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d4c6 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d4c6)
  store %struct.Memory* %call_41d4c6, %struct.Memory** %MEMORY

  ; Code: je .L_41d509	 RIP: 41d4c9	 Bytes: 6
  %loadMem_41d4c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d4c9 = call %struct.Memory* @routine_je_.L_41d509(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d4c9, i8* %BRANCH_TAKEN, i64 64, i64 6, i64 6)
  store %struct.Memory* %call_41d4c9, %struct.Memory** %MEMORY

  %loadBr_41d4c9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d4c9 = icmp eq i8 %loadBr_41d4c9, 1
  br i1 %cmpBr_41d4c9, label %block_.L_41d509, label %block_41d4cf

block_41d4cf:
  ; Code: movl $0x1, %eax	 RIP: 41d4cf	 Bytes: 5
  %loadMem_41d4cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d4cf = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d4cf)
  store %struct.Memory* %call_41d4cf, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41d4d4	 Bytes: 2
  %loadMem_41d4d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d4d4 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d4d4)
  store %struct.Memory* %call_41d4d4, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41d4d6	 Bytes: 4
  %loadMem_41d4d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d4d6 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d4d6)
  store %struct.Memory* %call_41d4d6, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rcx), %rdi	 RIP: 41d4da	 Bytes: 4
  %loadMem_41d4da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d4da = call %struct.Memory* @routine_movq_0x20__rcx____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d4da)
  store %struct.Memory* %call_41d4da, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41d4de	 Bytes: 4
  %loadMem_41d4de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d4de = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d4de)
  store %struct.Memory* %call_41d4de, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rcx), %eax	 RIP: 41d4e2	 Bytes: 6
  %loadMem_41d4e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d4e2 = call %struct.Memory* @routine_movl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d4e2)
  store %struct.Memory* %call_41d4e2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41d4e8	 Bytes: 3
  %loadMem_41d4e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d4e8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d4e8)
  store %struct.Memory* %call_41d4e8, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 41d4eb	 Bytes: 3
  %loadMem_41d4eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d4eb = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d4eb)
  store %struct.Memory* %call_41d4eb, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 41d4ee	 Bytes: 4
  %loadMem_41d4ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d4ee = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d4ee)
  store %struct.Memory* %call_41d4ee, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 41d4f2	 Bytes: 3
  %loadMem_41d4f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d4f2 = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d4f2)
  store %struct.Memory* %call_41d4f2, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 41d4f5	 Bytes: 5
  %loadMem1_41d4f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d4f5 = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d4f5, i64 -114917, i64 5, i64 5)
  store %struct.Memory* %call1_41d4f5, %struct.Memory** %MEMORY

  %loadMem2_41d4f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d4f5 = load i64, i64* %3
  %call2_41d4f5 = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_41d4f5, %struct.Memory* %loadMem2_41d4f5)
  store %struct.Memory* %call2_41d4f5, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41d4fa	 Bytes: 4
  %loadMem_41d4fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d4fa = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d4fa)
  store %struct.Memory* %call_41d4fa, %struct.Memory** %MEMORY

  ; Code: jne .L_41d509	 RIP: 41d4fe	 Bytes: 6
  %loadMem_41d4fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d4fe = call %struct.Memory* @routine_jne_.L_41d509(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d4fe, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41d4fe, %struct.Memory** %MEMORY

  %loadBr_41d4fe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d4fe = icmp eq i8 %loadBr_41d4fe, 1
  br i1 %cmpBr_41d4fe, label %block_.L_41d509, label %block_41d504

block_41d504:
  ; Code: jmpq .L_41e05f	 RIP: 41d504	 Bytes: 5
  %loadMem_41d504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d504 = call %struct.Memory* @routine_jmpq_.L_41e05f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d504, i64 2907, i64 5)
  store %struct.Memory* %call_41d504, %struct.Memory** %MEMORY

  br label %block_.L_41e05f

  ; Code: .L_41d509:	 RIP: 41d509	 Bytes: 0
block_.L_41d509:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41d509	 Bytes: 4
  %loadMem_41d509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d509 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d509)
  store %struct.Memory* %call_41d509, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rax), %rax	 RIP: 41d50d	 Bytes: 4
  %loadMem_41d50d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d50d = call %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d50d)
  store %struct.Memory* %call_41d50d, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41d511	 Bytes: 4
  %loadMem_41d511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d511 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d511)
  store %struct.Memory* %call_41d511, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rcx), %edx	 RIP: 41d515	 Bytes: 6
  %loadMem_41d515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d515 = call %struct.Memory* @routine_movl_0x88__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d515)
  store %struct.Memory* %call_41d515, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 41d51b	 Bytes: 3
  %loadMem_41d51b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d51b = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d51b)
  store %struct.Memory* %call_41d51b, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 41d51e	 Bytes: 3
  %loadMem_41d51e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d51e = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d51e)
  store %struct.Memory* %call_41d51e, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rax,%rcx,1)	 RIP: 41d521	 Bytes: 4
  %loadMem_41d521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d521 = call %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d521)
  store %struct.Memory* %call_41d521, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41d525	 Bytes: 4
  %loadMem_41d525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d525 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d525)
  store %struct.Memory* %call_41d525, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %edx	 RIP: 41d529	 Bytes: 6
  %loadMem_41d529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d529 = call %struct.Memory* @routine_movl_0x1c8__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d529)
  store %struct.Memory* %call_41d529, %struct.Memory** %MEMORY

  ; Code: andl $0x100, %edx	 RIP: 41d52f	 Bytes: 6
  %loadMem_41d52f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d52f = call %struct.Memory* @routine_andl__0x100___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d52f)
  store %struct.Memory* %call_41d52f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 41d535	 Bytes: 3
  %loadMem_41d535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d535 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d535)
  store %struct.Memory* %call_41d535, %struct.Memory** %MEMORY

  ; Code: je .L_41d583	 RIP: 41d538	 Bytes: 6
  %loadMem_41d538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d538 = call %struct.Memory* @routine_je_.L_41d583(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d538, i8* %BRANCH_TAKEN, i64 75, i64 6, i64 6)
  store %struct.Memory* %call_41d538, %struct.Memory** %MEMORY

  %loadBr_41d538 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d538 = icmp eq i8 %loadBr_41d538, 1
  br i1 %cmpBr_41d538, label %block_.L_41d583, label %block_41d53e

block_41d53e:
  ; Code: movl $0x4, %eax	 RIP: 41d53e	 Bytes: 5
  %loadMem_41d53e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d53e = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d53e)
  store %struct.Memory* %call_41d53e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41d543	 Bytes: 2
  %loadMem_41d543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d543 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d543)
  store %struct.Memory* %call_41d543, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41d545	 Bytes: 4
  %loadMem_41d545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d545 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d545)
  store %struct.Memory* %call_41d545, %struct.Memory** %MEMORY

  ; Code: movq 0x48(%rcx), %rcx	 RIP: 41d549	 Bytes: 4
  %loadMem_41d549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d549 = call %struct.Memory* @routine_movq_0x48__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d549)
  store %struct.Memory* %call_41d549, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdx	 RIP: 41d54d	 Bytes: 4
  %loadMem_41d54d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d54d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d54d)
  store %struct.Memory* %call_41d54d, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rdx), %eax	 RIP: 41d551	 Bytes: 6
  %loadMem_41d551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d551 = call %struct.Memory* @routine_movl_0x88__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d551)
  store %struct.Memory* %call_41d551, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41d557	 Bytes: 3
  %loadMem_41d557 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d557 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d557)
  store %struct.Memory* %call_41d557, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 41d55a	 Bytes: 3
  %loadMem_41d55a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d55a = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d55a)
  store %struct.Memory* %call_41d55a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 41d55d	 Bytes: 4
  %loadMem_41d55d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d55d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d55d)
  store %struct.Memory* %call_41d55d, %struct.Memory** %MEMORY

  ; Code: movq (%rdi), %rdi	 RIP: 41d561	 Bytes: 3
  %loadMem_41d561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d561 = call %struct.Memory* @routine_movq___rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d561)
  store %struct.Memory* %call_41d561, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x58(%rbp)	 RIP: 41d564	 Bytes: 4
  %loadMem_41d564 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d564 = call %struct.Memory* @routine_movq__rdi__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d564)
  store %struct.Memory* %call_41d564, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41d568	 Bytes: 3
  %loadMem_41d568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d568 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d568)
  store %struct.Memory* %call_41d568, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rcx	 RIP: 41d56b	 Bytes: 4
  %loadMem_41d56b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d56b = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d56b)
  store %struct.Memory* %call_41d56b, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 41d56f	 Bytes: 5
  %loadMem1_41d56f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d56f = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d56f, i64 -115039, i64 5, i64 5)
  store %struct.Memory* %call1_41d56f, %struct.Memory** %MEMORY

  %loadMem2_41d56f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d56f = load i64, i64* %3
  %call2_41d56f = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_41d56f, %struct.Memory* %loadMem2_41d56f)
  store %struct.Memory* %call2_41d56f, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41d574	 Bytes: 4
  %loadMem_41d574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d574 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d574)
  store %struct.Memory* %call_41d574, %struct.Memory** %MEMORY

  ; Code: jne .L_41d583	 RIP: 41d578	 Bytes: 6
  %loadMem_41d578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d578 = call %struct.Memory* @routine_jne_.L_41d583(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d578, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41d578, %struct.Memory** %MEMORY

  %loadBr_41d578 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d578 = icmp eq i8 %loadBr_41d578, 1
  br i1 %cmpBr_41d578, label %block_.L_41d583, label %block_41d57e

block_41d57e:
  ; Code: jmpq .L_41e05f	 RIP: 41d57e	 Bytes: 5
  %loadMem_41d57e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d57e = call %struct.Memory* @routine_jmpq_.L_41e05f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d57e, i64 2785, i64 5)
  store %struct.Memory* %call_41d57e, %struct.Memory** %MEMORY

  br label %block_.L_41e05f

  ; Code: .L_41d583:	 RIP: 41d583	 Bytes: 0
block_.L_41d583:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41d583	 Bytes: 4
  %loadMem_41d583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d583 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d583)
  store %struct.Memory* %call_41d583, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x1c(%rax)	 RIP: 41d587	 Bytes: 4
  %loadMem_41d587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d587 = call %struct.Memory* @routine_cmpl__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d587)
  store %struct.Memory* %call_41d587, %struct.Memory** %MEMORY

  ; Code: je .L_41d5de	 RIP: 41d58b	 Bytes: 6
  %loadMem_41d58b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d58b = call %struct.Memory* @routine_je_.L_41d5de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d58b, i8* %BRANCH_TAKEN, i64 83, i64 6, i64 6)
  store %struct.Memory* %call_41d58b, %struct.Memory** %MEMORY

  %loadBr_41d58b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d58b = icmp eq i8 %loadBr_41d58b, 1
  br i1 %cmpBr_41d58b, label %block_.L_41d5de, label %block_41d591

block_41d591:
  ; Code: movl $0x1, -0x24(%rbp)	 RIP: 41d591	 Bytes: 7
  %loadMem_41d591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d591 = call %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d591)
  store %struct.Memory* %call_41d591, %struct.Memory** %MEMORY

  ; Code: .L_41d598:	 RIP: 41d598	 Bytes: 0
  br label %block_.L_41d598
block_.L_41d598:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 41d598	 Bytes: 3
  %loadMem_41d598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d598 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d598)
  store %struct.Memory* %call_41d598, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41d59b	 Bytes: 4
  %loadMem_41d59b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d59b = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d59b)
  store %struct.Memory* %call_41d59b, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 41d59f	 Bytes: 6
  %loadMem_41d59f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d59f = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d59f)
  store %struct.Memory* %call_41d59f, %struct.Memory** %MEMORY

  ; Code: jg .L_41d5d9	 RIP: 41d5a5	 Bytes: 6
  %loadMem_41d5a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d5a5 = call %struct.Memory* @routine_jg_.L_41d5d9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d5a5, i8* %BRANCH_TAKEN, i64 52, i64 6, i64 6)
  store %struct.Memory* %call_41d5a5, %struct.Memory** %MEMORY

  %loadBr_41d5a5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d5a5 = icmp eq i8 %loadBr_41d5a5, 1
  br i1 %cmpBr_41d5a5, label %block_.L_41d5d9, label %block_41d5ab

block_41d5ab:
  ; Code: movl $0x4, %esi	 RIP: 41d5ab	 Bytes: 5
  %loadMem_41d5ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d5ab = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d5ab)
  store %struct.Memory* %call_41d5ab, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41d5b0	 Bytes: 4
  %loadMem_41d5b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d5b0 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d5b0)
  store %struct.Memory* %call_41d5b0, %struct.Memory** %MEMORY

  ; Code: movq 0x48(%rax), %rax	 RIP: 41d5b4	 Bytes: 4
  %loadMem_41d5b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d5b4 = call %struct.Memory* @routine_movq_0x48__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d5b4)
  store %struct.Memory* %call_41d5b4, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 41d5b8	 Bytes: 4
  %loadMem_41d5b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d5b8 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d5b8)
  store %struct.Memory* %call_41d5b8, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rcx	 RIP: 41d5bc	 Bytes: 4
  %loadMem_41d5bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d5bc = call %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d5bc)
  store %struct.Memory* %call_41d5bc, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41d5c0	 Bytes: 3
  %loadMem_41d5c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d5c0 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d5c0)
  store %struct.Memory* %call_41d5c0, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41d5c3	 Bytes: 3
  %loadMem_41d5c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d5c3 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d5c3)
  store %struct.Memory* %call_41d5c3, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 41d5c6	 Bytes: 5
  %loadMem1_41d5c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d5c6 = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d5c6, i64 19898, i64 5, i64 5)
  store %struct.Memory* %call1_41d5c6, %struct.Memory** %MEMORY

  %loadMem2_41d5c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d5c6 = load i64, i64* %3
  %call2_41d5c6 = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_41d5c6, %struct.Memory* %loadMem2_41d5c6)
  store %struct.Memory* %call2_41d5c6, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 41d5cb	 Bytes: 3
  %loadMem_41d5cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d5cb = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d5cb)
  store %struct.Memory* %call_41d5cb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41d5ce	 Bytes: 3
  %loadMem_41d5ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d5ce = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d5ce)
  store %struct.Memory* %call_41d5ce, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 41d5d1	 Bytes: 3
  %loadMem_41d5d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d5d1 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d5d1)
  store %struct.Memory* %call_41d5d1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41d598	 RIP: 41d5d4	 Bytes: 5
  %loadMem_41d5d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d5d4 = call %struct.Memory* @routine_jmpq_.L_41d598(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d5d4, i64 -60, i64 5)
  store %struct.Memory* %call_41d5d4, %struct.Memory** %MEMORY

  br label %block_.L_41d598

  ; Code: .L_41d5d9:	 RIP: 41d5d9	 Bytes: 0
block_.L_41d5d9:

  ; Code: jmpq .L_41d5de	 RIP: 41d5d9	 Bytes: 5
  %loadMem_41d5d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d5d9 = call %struct.Memory* @routine_jmpq_.L_41d5de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d5d9, i64 5, i64 5)
  store %struct.Memory* %call_41d5d9, %struct.Memory** %MEMORY

  br label %block_.L_41d5de

  ; Code: .L_41d5de:	 RIP: 41d5de	 Bytes: 0
block_.L_41d5de:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41d5de	 Bytes: 4
  %loadMem_41d5de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d5de = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d5de)
  store %struct.Memory* %call_41d5de, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 41d5e2	 Bytes: 3
  %loadMem_41d5e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d5e2 = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d5e2)
  store %struct.Memory* %call_41d5e2, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41d5e5	 Bytes: 4
  %loadMem_41d5e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d5e5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d5e5)
  store %struct.Memory* %call_41d5e5, %struct.Memory** %MEMORY

  ; Code: movl 0x1c(%rax), %esi	 RIP: 41d5e9	 Bytes: 3
  %loadMem_41d5e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d5e9 = call %struct.Memory* @routine_movl_0x1c__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d5e9)
  store %struct.Memory* %call_41d5e9, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41d5ec	 Bytes: 4
  %loadMem_41d5ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d5ec = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d5ec)
  store %struct.Memory* %call_41d5ec, %struct.Memory** %MEMORY

  ; Code: addq $0x30, %rax	 RIP: 41d5f0	 Bytes: 4
  %loadMem_41d5f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d5f0 = call %struct.Memory* @routine_addq__0x30___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d5f0)
  store %struct.Memory* %call_41d5f0, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 41d5f4	 Bytes: 3
  %loadMem_41d5f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d5f4 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d5f4)
  store %struct.Memory* %call_41d5f4, %struct.Memory** %MEMORY

  ; Code: callq .read_bin_string	 RIP: 41d5f7	 Bytes: 5
  %loadMem1_41d5f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d5f7 = call %struct.Memory* @routine_callq_.read_bin_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d5f7, i64 19993, i64 5, i64 5)
  store %struct.Memory* %call1_41d5f7, %struct.Memory** %MEMORY

  %loadMem2_41d5f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d5f7 = load i64, i64* %3
  %call2_41d5f7 = call %struct.Memory* @sub_422410.read_bin_string(%struct.State* %0, i64  %loadPC_41d5f7, %struct.Memory* %loadMem2_41d5f7)
  store %struct.Memory* %call2_41d5f7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41d5fc	 Bytes: 3
  %loadMem_41d5fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d5fc = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d5fc)
  store %struct.Memory* %call_41d5fc, %struct.Memory** %MEMORY

  ; Code: jne .L_41d60a	 RIP: 41d5ff	 Bytes: 6
  %loadMem_41d5ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d5ff = call %struct.Memory* @routine_jne_.L_41d60a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d5ff, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41d5ff, %struct.Memory** %MEMORY

  %loadBr_41d5ff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d5ff = icmp eq i8 %loadBr_41d5ff, 1
  br i1 %cmpBr_41d5ff, label %block_.L_41d60a, label %block_41d605

block_41d605:
  ; Code: jmpq .L_41e05f	 RIP: 41d605	 Bytes: 5
  %loadMem_41d605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d605 = call %struct.Memory* @routine_jmpq_.L_41e05f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d605, i64 2650, i64 5)
  store %struct.Memory* %call_41d605, %struct.Memory** %MEMORY

  br label %block_.L_41e05f

  ; Code: .L_41d60a:	 RIP: 41d60a	 Bytes: 0
block_.L_41d60a:

  ; Code: movl $0x4, %eax	 RIP: 41d60a	 Bytes: 5
  %loadMem_41d60a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d60a = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d60a)
  store %struct.Memory* %call_41d60a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41d60f	 Bytes: 2
  %loadMem_41d60f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d60f = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d60f)
  store %struct.Memory* %call_41d60f, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 41d611	 Bytes: 5
  %loadMem_41d611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d611 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d611)
  store %struct.Memory* %call_41d611, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41d616	 Bytes: 2
  %loadMem_41d616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d616 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d616)
  store %struct.Memory* %call_41d616, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41d618	 Bytes: 4
  %loadMem_41d618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d618 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d618)
  store %struct.Memory* %call_41d618, %struct.Memory** %MEMORY

  ; Code: addq $0x38, %rcx	 RIP: 41d61c	 Bytes: 4
  %loadMem_41d61c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d61c = call %struct.Memory* @routine_addq__0x38___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d61c)
  store %struct.Memory* %call_41d61c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 41d620	 Bytes: 4
  %loadMem_41d620 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d620 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d620)
  store %struct.Memory* %call_41d620, %struct.Memory** %MEMORY

  ; Code: movq (%rdi), %rdi	 RIP: 41d624	 Bytes: 3
  %loadMem_41d624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d624 = call %struct.Memory* @routine_movq___rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d624)
  store %struct.Memory* %call_41d624, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x60(%rbp)	 RIP: 41d627	 Bytes: 4
  %loadMem_41d627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d627 = call %struct.Memory* @routine_movq__rdi__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d627)
  store %struct.Memory* %call_41d627, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41d62b	 Bytes: 3
  %loadMem_41d62b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d62b = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d62b)
  store %struct.Memory* %call_41d62b, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rcx	 RIP: 41d62e	 Bytes: 4
  %loadMem_41d62e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d62e = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d62e)
  store %struct.Memory* %call_41d62e, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 41d632	 Bytes: 5
  %loadMem1_41d632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d632 = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d632, i64 -115234, i64 5, i64 5)
  store %struct.Memory* %call1_41d632, %struct.Memory** %MEMORY

  %loadMem2_41d632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d632 = load i64, i64* %3
  %call2_41d632 = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_41d632, %struct.Memory* %loadMem2_41d632)
  store %struct.Memory* %call2_41d632, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41d637	 Bytes: 4
  %loadMem_41d637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d637 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d637)
  store %struct.Memory* %call_41d637, %struct.Memory** %MEMORY

  ; Code: jne .L_41d646	 RIP: 41d63b	 Bytes: 6
  %loadMem_41d63b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d63b = call %struct.Memory* @routine_jne_.L_41d646(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d63b, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41d63b, %struct.Memory** %MEMORY

  %loadBr_41d63b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d63b = icmp eq i8 %loadBr_41d63b, 1
  br i1 %cmpBr_41d63b, label %block_.L_41d646, label %block_41d641

block_41d641:
  ; Code: jmpq .L_41e05f	 RIP: 41d641	 Bytes: 5
  %loadMem_41d641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d641 = call %struct.Memory* @routine_jmpq_.L_41e05f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d641, i64 2590, i64 5)
  store %struct.Memory* %call_41d641, %struct.Memory** %MEMORY

  br label %block_.L_41e05f

  ; Code: .L_41d646:	 RIP: 41d646	 Bytes: 0
block_.L_41d646:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41d646	 Bytes: 4
  %loadMem_41d646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d646 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d646)
  store %struct.Memory* %call_41d646, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x1c(%rax)	 RIP: 41d64a	 Bytes: 4
  %loadMem_41d64a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d64a = call %struct.Memory* @routine_cmpl__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d64a)
  store %struct.Memory* %call_41d64a, %struct.Memory** %MEMORY

  ; Code: je .L_41d669	 RIP: 41d64e	 Bytes: 6
  %loadMem_41d64e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d64e = call %struct.Memory* @routine_je_.L_41d669(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d64e, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_41d64e, %struct.Memory** %MEMORY

  %loadBr_41d64e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d64e = icmp eq i8 %loadBr_41d64e, 1
  br i1 %cmpBr_41d64e, label %block_.L_41d669, label %block_41d654

block_41d654:
  ; Code: movl $0x4, %esi	 RIP: 41d654	 Bytes: 5
  %loadMem_41d654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d654 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d654)
  store %struct.Memory* %call_41d654, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41d659	 Bytes: 4
  %loadMem_41d659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d659 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d659)
  store %struct.Memory* %call_41d659, %struct.Memory** %MEMORY

  ; Code: addq $0x38, %rax	 RIP: 41d65d	 Bytes: 4
  %loadMem_41d65d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d65d = call %struct.Memory* @routine_addq__0x38___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d65d)
  store %struct.Memory* %call_41d65d, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41d661	 Bytes: 3
  %loadMem_41d661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d661 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d661)
  store %struct.Memory* %call_41d661, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 41d664	 Bytes: 5
  %loadMem1_41d664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d664 = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d664, i64 19740, i64 5, i64 5)
  store %struct.Memory* %call1_41d664, %struct.Memory** %MEMORY

  %loadMem2_41d664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d664 = load i64, i64* %3
  %call2_41d664 = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_41d664, %struct.Memory* %loadMem2_41d664)
  store %struct.Memory* %call2_41d664, %struct.Memory** %MEMORY

  ; Code: .L_41d669:	 RIP: 41d669	 Bytes: 0
  br label %block_.L_41d669
block_.L_41d669:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41d669	 Bytes: 4
  %loadMem_41d669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d669 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d669)
  store %struct.Memory* %call_41d669, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 41d66d	 Bytes: 3
  %loadMem_41d66d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d66d = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d66d)
  store %struct.Memory* %call_41d66d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41d670	 Bytes: 4
  %loadMem_41d670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d670 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d670)
  store %struct.Memory* %call_41d670, %struct.Memory** %MEMORY

  ; Code: movl 0x1c(%rax), %esi	 RIP: 41d674	 Bytes: 3
  %loadMem_41d674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d674 = call %struct.Memory* @routine_movl_0x1c__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d674)
  store %struct.Memory* %call_41d674, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41d677	 Bytes: 4
  %loadMem_41d677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d677 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d677)
  store %struct.Memory* %call_41d677, %struct.Memory** %MEMORY

  ; Code: addq $0x40, %rax	 RIP: 41d67b	 Bytes: 4
  %loadMem_41d67b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d67b = call %struct.Memory* @routine_addq__0x40___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d67b)
  store %struct.Memory* %call_41d67b, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 41d67f	 Bytes: 3
  %loadMem_41d67f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d67f = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d67f)
  store %struct.Memory* %call_41d67f, %struct.Memory** %MEMORY

  ; Code: callq .read_bin_string	 RIP: 41d682	 Bytes: 5
  %loadMem1_41d682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d682 = call %struct.Memory* @routine_callq_.read_bin_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d682, i64 19854, i64 5, i64 5)
  store %struct.Memory* %call1_41d682, %struct.Memory** %MEMORY

  %loadMem2_41d682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d682 = load i64, i64* %3
  %call2_41d682 = call %struct.Memory* @sub_422410.read_bin_string(%struct.State* %0, i64  %loadPC_41d682, %struct.Memory* %loadMem2_41d682)
  store %struct.Memory* %call2_41d682, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 41d687	 Bytes: 3
  %loadMem_41d687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d687 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d687)
  store %struct.Memory* %call_41d687, %struct.Memory** %MEMORY

  ; Code: jne .L_41d695	 RIP: 41d68a	 Bytes: 6
  %loadMem_41d68a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d68a = call %struct.Memory* @routine_jne_.L_41d695(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d68a, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41d68a, %struct.Memory** %MEMORY

  %loadBr_41d68a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d68a = icmp eq i8 %loadBr_41d68a, 1
  br i1 %cmpBr_41d68a, label %block_.L_41d695, label %block_41d690

block_41d690:
  ; Code: jmpq .L_41e05f	 RIP: 41d690	 Bytes: 5
  %loadMem_41d690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d690 = call %struct.Memory* @routine_jmpq_.L_41e05f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d690, i64 2511, i64 5)
  store %struct.Memory* %call_41d690, %struct.Memory** %MEMORY

  br label %block_.L_41e05f

  ; Code: .L_41d695:	 RIP: 41d695	 Bytes: 0
block_.L_41d695:

  ; Code: movl $0x4, %eax	 RIP: 41d695	 Bytes: 5
  %loadMem_41d695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d695 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d695)
  store %struct.Memory* %call_41d695, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41d69a	 Bytes: 2
  %loadMem_41d69a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d69a = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d69a)
  store %struct.Memory* %call_41d69a, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 41d69c	 Bytes: 5
  %loadMem_41d69c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d69c = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d69c)
  store %struct.Memory* %call_41d69c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41d6a1	 Bytes: 2
  %loadMem_41d6a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d6a1 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d6a1)
  store %struct.Memory* %call_41d6a1, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41d6a3	 Bytes: 4
  %loadMem_41d6a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d6a3 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d6a3)
  store %struct.Memory* %call_41d6a3, %struct.Memory** %MEMORY

  ; Code: addq $0x50, %rcx	 RIP: 41d6a7	 Bytes: 4
  %loadMem_41d6a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d6a7 = call %struct.Memory* @routine_addq__0x50___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d6a7)
  store %struct.Memory* %call_41d6a7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 41d6ab	 Bytes: 4
  %loadMem_41d6ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d6ab = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d6ab)
  store %struct.Memory* %call_41d6ab, %struct.Memory** %MEMORY

  ; Code: movq (%rdi), %rdi	 RIP: 41d6af	 Bytes: 3
  %loadMem_41d6af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d6af = call %struct.Memory* @routine_movq___rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d6af)
  store %struct.Memory* %call_41d6af, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x68(%rbp)	 RIP: 41d6b2	 Bytes: 4
  %loadMem_41d6b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d6b2 = call %struct.Memory* @routine_movq__rdi__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d6b2)
  store %struct.Memory* %call_41d6b2, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41d6b6	 Bytes: 3
  %loadMem_41d6b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d6b6 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d6b6)
  store %struct.Memory* %call_41d6b6, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rcx	 RIP: 41d6b9	 Bytes: 4
  %loadMem_41d6b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d6b9 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d6b9)
  store %struct.Memory* %call_41d6b9, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 41d6bd	 Bytes: 5
  %loadMem1_41d6bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d6bd = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d6bd, i64 -115373, i64 5, i64 5)
  store %struct.Memory* %call1_41d6bd, %struct.Memory** %MEMORY

  %loadMem2_41d6bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d6bd = load i64, i64* %3
  %call2_41d6bd = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_41d6bd, %struct.Memory* %loadMem2_41d6bd)
  store %struct.Memory* %call2_41d6bd, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41d6c2	 Bytes: 4
  %loadMem_41d6c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d6c2 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d6c2)
  store %struct.Memory* %call_41d6c2, %struct.Memory** %MEMORY

  ; Code: jne .L_41d6d1	 RIP: 41d6c6	 Bytes: 6
  %loadMem_41d6c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d6c6 = call %struct.Memory* @routine_jne_.L_41d6d1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d6c6, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41d6c6, %struct.Memory** %MEMORY

  %loadBr_41d6c6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d6c6 = icmp eq i8 %loadBr_41d6c6, 1
  br i1 %cmpBr_41d6c6, label %block_.L_41d6d1, label %block_41d6cc

block_41d6cc:
  ; Code: jmpq .L_41e05f	 RIP: 41d6cc	 Bytes: 5
  %loadMem_41d6cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d6cc = call %struct.Memory* @routine_jmpq_.L_41e05f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d6cc, i64 2451, i64 5)
  store %struct.Memory* %call_41d6cc, %struct.Memory** %MEMORY

  br label %block_.L_41e05f

  ; Code: .L_41d6d1:	 RIP: 41d6d1	 Bytes: 0
block_.L_41d6d1:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41d6d1	 Bytes: 4
  %loadMem_41d6d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d6d1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d6d1)
  store %struct.Memory* %call_41d6d1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x1c(%rax)	 RIP: 41d6d5	 Bytes: 4
  %loadMem_41d6d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d6d5 = call %struct.Memory* @routine_cmpl__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d6d5)
  store %struct.Memory* %call_41d6d5, %struct.Memory** %MEMORY

  ; Code: je .L_41d6f4	 RIP: 41d6d9	 Bytes: 6
  %loadMem_41d6d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d6d9 = call %struct.Memory* @routine_je_.L_41d6f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d6d9, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_41d6d9, %struct.Memory** %MEMORY

  %loadBr_41d6d9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d6d9 = icmp eq i8 %loadBr_41d6d9, 1
  br i1 %cmpBr_41d6d9, label %block_.L_41d6f4, label %block_41d6df

block_41d6df:
  ; Code: movl $0x4, %esi	 RIP: 41d6df	 Bytes: 5
  %loadMem_41d6df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d6df = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d6df)
  store %struct.Memory* %call_41d6df, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41d6e4	 Bytes: 4
  %loadMem_41d6e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d6e4 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d6e4)
  store %struct.Memory* %call_41d6e4, %struct.Memory** %MEMORY

  ; Code: addq $0x50, %rax	 RIP: 41d6e8	 Bytes: 4
  %loadMem_41d6e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d6e8 = call %struct.Memory* @routine_addq__0x50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d6e8)
  store %struct.Memory* %call_41d6e8, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41d6ec	 Bytes: 3
  %loadMem_41d6ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d6ec = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d6ec)
  store %struct.Memory* %call_41d6ec, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 41d6ef	 Bytes: 5
  %loadMem1_41d6ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d6ef = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d6ef, i64 19601, i64 5, i64 5)
  store %struct.Memory* %call1_41d6ef, %struct.Memory** %MEMORY

  %loadMem2_41d6ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d6ef = load i64, i64* %3
  %call2_41d6ef = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_41d6ef, %struct.Memory* %loadMem2_41d6ef)
  store %struct.Memory* %call2_41d6ef, %struct.Memory** %MEMORY

  ; Code: .L_41d6f4:	 RIP: 41d6f4	 Bytes: 0
  br label %block_.L_41d6f4
block_.L_41d6f4:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41d6f4	 Bytes: 4
  %loadMem_41d6f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d6f4 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d6f4)
  store %struct.Memory* %call_41d6f4, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %ecx	 RIP: 41d6f8	 Bytes: 6
  %loadMem_41d6f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d6f8 = call %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d6f8)
  store %struct.Memory* %call_41d6f8, %struct.Memory** %MEMORY

  ; Code: andl $0x400, %ecx	 RIP: 41d6fe	 Bytes: 6
  %loadMem_41d6fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d6fe = call %struct.Memory* @routine_andl__0x400___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d6fe)
  store %struct.Memory* %call_41d6fe, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 41d704	 Bytes: 3
  %loadMem_41d704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d704 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d704)
  store %struct.Memory* %call_41d704, %struct.Memory** %MEMORY

  ; Code: je .L_41d7c2	 RIP: 41d707	 Bytes: 6
  %loadMem_41d707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d707 = call %struct.Memory* @routine_je_.L_41d7c2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d707, i8* %BRANCH_TAKEN, i64 187, i64 6, i64 6)
  store %struct.Memory* %call_41d707, %struct.Memory** %MEMORY

  %loadBr_41d707 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d707 = icmp eq i8 %loadBr_41d707, 1
  br i1 %cmpBr_41d707, label %block_.L_41d7c2, label %block_41d70d

block_41d70d:
  ; Code: movl $0x4, %eax	 RIP: 41d70d	 Bytes: 5
  %loadMem_41d70d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d70d = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d70d)
  store %struct.Memory* %call_41d70d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41d712	 Bytes: 2
  %loadMem_41d712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d712 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d712)
  store %struct.Memory* %call_41d712, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 41d714	 Bytes: 5
  %loadMem_41d714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d714 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d714)
  store %struct.Memory* %call_41d714, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41d719	 Bytes: 2
  %loadMem_41d719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d719 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d719)
  store %struct.Memory* %call_41d719, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41d71b	 Bytes: 4
  %loadMem_41d71b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d71b = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d71b)
  store %struct.Memory* %call_41d71b, %struct.Memory** %MEMORY

  ; Code: addq $0x70, %rcx	 RIP: 41d71f	 Bytes: 4
  %loadMem_41d71f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d71f = call %struct.Memory* @routine_addq__0x70___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d71f)
  store %struct.Memory* %call_41d71f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 41d723	 Bytes: 4
  %loadMem_41d723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d723 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d723)
  store %struct.Memory* %call_41d723, %struct.Memory** %MEMORY

  ; Code: movq (%rdi), %rdi	 RIP: 41d727	 Bytes: 3
  %loadMem_41d727 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d727 = call %struct.Memory* @routine_movq___rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d727)
  store %struct.Memory* %call_41d727, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x70(%rbp)	 RIP: 41d72a	 Bytes: 4
  %loadMem_41d72a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d72a = call %struct.Memory* @routine_movq__rdi__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d72a)
  store %struct.Memory* %call_41d72a, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41d72e	 Bytes: 3
  %loadMem_41d72e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d72e = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d72e)
  store %struct.Memory* %call_41d72e, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rcx	 RIP: 41d731	 Bytes: 4
  %loadMem_41d731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d731 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d731)
  store %struct.Memory* %call_41d731, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 41d735	 Bytes: 5
  %loadMem1_41d735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d735 = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d735, i64 -115493, i64 5, i64 5)
  store %struct.Memory* %call1_41d735, %struct.Memory** %MEMORY

  %loadMem2_41d735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d735 = load i64, i64* %3
  %call2_41d735 = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_41d735, %struct.Memory* %loadMem2_41d735)
  store %struct.Memory* %call2_41d735, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41d73a	 Bytes: 4
  %loadMem_41d73a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d73a = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d73a)
  store %struct.Memory* %call_41d73a, %struct.Memory** %MEMORY

  ; Code: jne .L_41d749	 RIP: 41d73e	 Bytes: 6
  %loadMem_41d73e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d73e = call %struct.Memory* @routine_jne_.L_41d749(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d73e, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41d73e, %struct.Memory** %MEMORY

  %loadBr_41d73e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d73e = icmp eq i8 %loadBr_41d73e, 1
  br i1 %cmpBr_41d73e, label %block_.L_41d749, label %block_41d744

block_41d744:
  ; Code: jmpq .L_41e05f	 RIP: 41d744	 Bytes: 5
  %loadMem_41d744 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d744 = call %struct.Memory* @routine_jmpq_.L_41e05f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d744, i64 2331, i64 5)
  store %struct.Memory* %call_41d744, %struct.Memory** %MEMORY

  br label %block_.L_41e05f

  ; Code: .L_41d749:	 RIP: 41d749	 Bytes: 0
block_.L_41d749:

  ; Code: movl $0x4, %eax	 RIP: 41d749	 Bytes: 5
  %loadMem_41d749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d749 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d749)
  store %struct.Memory* %call_41d749, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41d74e	 Bytes: 2
  %loadMem_41d74e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d74e = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d74e)
  store %struct.Memory* %call_41d74e, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 41d750	 Bytes: 5
  %loadMem_41d750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d750 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d750)
  store %struct.Memory* %call_41d750, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41d755	 Bytes: 2
  %loadMem_41d755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d755 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d755)
  store %struct.Memory* %call_41d755, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41d757	 Bytes: 4
  %loadMem_41d757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d757 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d757)
  store %struct.Memory* %call_41d757, %struct.Memory** %MEMORY

  ; Code: addq $0x74, %rcx	 RIP: 41d75b	 Bytes: 4
  %loadMem_41d75b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d75b = call %struct.Memory* @routine_addq__0x74___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d75b)
  store %struct.Memory* %call_41d75b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 41d75f	 Bytes: 4
  %loadMem_41d75f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d75f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d75f)
  store %struct.Memory* %call_41d75f, %struct.Memory** %MEMORY

  ; Code: movq (%rdi), %rdi	 RIP: 41d763	 Bytes: 3
  %loadMem_41d763 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d763 = call %struct.Memory* @routine_movq___rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d763)
  store %struct.Memory* %call_41d763, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x78(%rbp)	 RIP: 41d766	 Bytes: 4
  %loadMem_41d766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d766 = call %struct.Memory* @routine_movq__rdi__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d766)
  store %struct.Memory* %call_41d766, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41d76a	 Bytes: 3
  %loadMem_41d76a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d76a = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d76a)
  store %struct.Memory* %call_41d76a, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %rcx	 RIP: 41d76d	 Bytes: 4
  %loadMem_41d76d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d76d = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d76d)
  store %struct.Memory* %call_41d76d, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 41d771	 Bytes: 5
  %loadMem1_41d771 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d771 = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d771, i64 -115553, i64 5, i64 5)
  store %struct.Memory* %call1_41d771, %struct.Memory** %MEMORY

  %loadMem2_41d771 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d771 = load i64, i64* %3
  %call2_41d771 = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_41d771, %struct.Memory* %loadMem2_41d771)
  store %struct.Memory* %call2_41d771, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41d776	 Bytes: 4
  %loadMem_41d776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d776 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d776)
  store %struct.Memory* %call_41d776, %struct.Memory** %MEMORY

  ; Code: jne .L_41d785	 RIP: 41d77a	 Bytes: 6
  %loadMem_41d77a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d77a = call %struct.Memory* @routine_jne_.L_41d785(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d77a, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41d77a, %struct.Memory** %MEMORY

  %loadBr_41d77a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d77a = icmp eq i8 %loadBr_41d77a, 1
  br i1 %cmpBr_41d77a, label %block_.L_41d785, label %block_41d780

block_41d780:
  ; Code: jmpq .L_41e05f	 RIP: 41d780	 Bytes: 5
  %loadMem_41d780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d780 = call %struct.Memory* @routine_jmpq_.L_41e05f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d780, i64 2271, i64 5)
  store %struct.Memory* %call_41d780, %struct.Memory** %MEMORY

  br label %block_.L_41e05f

  ; Code: .L_41d785:	 RIP: 41d785	 Bytes: 0
block_.L_41d785:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41d785	 Bytes: 4
  %loadMem_41d785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d785 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d785)
  store %struct.Memory* %call_41d785, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x1c(%rax)	 RIP: 41d789	 Bytes: 4
  %loadMem_41d789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d789 = call %struct.Memory* @routine_cmpl__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d789)
  store %struct.Memory* %call_41d789, %struct.Memory** %MEMORY

  ; Code: je .L_41d7bd	 RIP: 41d78d	 Bytes: 6
  %loadMem_41d78d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d78d = call %struct.Memory* @routine_je_.L_41d7bd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d78d, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_41d78d, %struct.Memory** %MEMORY

  %loadBr_41d78d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d78d = icmp eq i8 %loadBr_41d78d, 1
  br i1 %cmpBr_41d78d, label %block_.L_41d7bd, label %block_41d793

block_41d793:
  ; Code: movl $0x4, %esi	 RIP: 41d793	 Bytes: 5
  %loadMem_41d793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d793 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d793)
  store %struct.Memory* %call_41d793, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41d798	 Bytes: 4
  %loadMem_41d798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d798 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d798)
  store %struct.Memory* %call_41d798, %struct.Memory** %MEMORY

  ; Code: addq $0x70, %rax	 RIP: 41d79c	 Bytes: 4
  %loadMem_41d79c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d79c = call %struct.Memory* @routine_addq__0x70___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d79c)
  store %struct.Memory* %call_41d79c, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41d7a0	 Bytes: 3
  %loadMem_41d7a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d7a0 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d7a0)
  store %struct.Memory* %call_41d7a0, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 41d7a3	 Bytes: 5
  %loadMem1_41d7a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d7a3 = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d7a3, i64 19421, i64 5, i64 5)
  store %struct.Memory* %call1_41d7a3, %struct.Memory** %MEMORY

  %loadMem2_41d7a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d7a3 = load i64, i64* %3
  %call2_41d7a3 = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_41d7a3, %struct.Memory* %loadMem2_41d7a3)
  store %struct.Memory* %call2_41d7a3, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %esi	 RIP: 41d7a8	 Bytes: 5
  %loadMem_41d7a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d7a8 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d7a8)
  store %struct.Memory* %call_41d7a8, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41d7ad	 Bytes: 4
  %loadMem_41d7ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d7ad = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d7ad)
  store %struct.Memory* %call_41d7ad, %struct.Memory** %MEMORY

  ; Code: addq $0x74, %rax	 RIP: 41d7b1	 Bytes: 4
  %loadMem_41d7b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d7b1 = call %struct.Memory* @routine_addq__0x74___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d7b1)
  store %struct.Memory* %call_41d7b1, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41d7b5	 Bytes: 3
  %loadMem_41d7b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d7b5 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d7b5)
  store %struct.Memory* %call_41d7b5, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 41d7b8	 Bytes: 5
  %loadMem1_41d7b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d7b8 = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d7b8, i64 19400, i64 5, i64 5)
  store %struct.Memory* %call1_41d7b8, %struct.Memory** %MEMORY

  %loadMem2_41d7b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d7b8 = load i64, i64* %3
  %call2_41d7b8 = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_41d7b8, %struct.Memory* %loadMem2_41d7b8)
  store %struct.Memory* %call2_41d7b8, %struct.Memory** %MEMORY

  ; Code: .L_41d7bd:	 RIP: 41d7bd	 Bytes: 0
  br label %block_.L_41d7bd
block_.L_41d7bd:

  ; Code: jmpq .L_41d7c2	 RIP: 41d7bd	 Bytes: 5
  %loadMem_41d7bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d7bd = call %struct.Memory* @routine_jmpq_.L_41d7c2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d7bd, i64 5, i64 5)
  store %struct.Memory* %call_41d7bd, %struct.Memory** %MEMORY

  br label %block_.L_41d7c2

  ; Code: .L_41d7c2:	 RIP: 41d7c2	 Bytes: 0
block_.L_41d7c2:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41d7c2	 Bytes: 4
  %loadMem_41d7c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d7c2 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d7c2)
  store %struct.Memory* %call_41d7c2, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %ecx	 RIP: 41d7c6	 Bytes: 6
  %loadMem_41d7c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d7c6 = call %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d7c6)
  store %struct.Memory* %call_41d7c6, %struct.Memory** %MEMORY

  ; Code: andl $0x800, %ecx	 RIP: 41d7cc	 Bytes: 6
  %loadMem_41d7cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d7cc = call %struct.Memory* @routine_andl__0x800___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d7cc)
  store %struct.Memory* %call_41d7cc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 41d7d2	 Bytes: 3
  %loadMem_41d7d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d7d2 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d7d2)
  store %struct.Memory* %call_41d7d2, %struct.Memory** %MEMORY

  ; Code: je .L_41d896	 RIP: 41d7d5	 Bytes: 6
  %loadMem_41d7d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d7d5 = call %struct.Memory* @routine_je_.L_41d896(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d7d5, i8* %BRANCH_TAKEN, i64 193, i64 6, i64 6)
  store %struct.Memory* %call_41d7d5, %struct.Memory** %MEMORY

  %loadBr_41d7d5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d7d5 = icmp eq i8 %loadBr_41d7d5, 1
  br i1 %cmpBr_41d7d5, label %block_.L_41d896, label %block_41d7db

block_41d7db:
  ; Code: movl $0x4, %eax	 RIP: 41d7db	 Bytes: 5
  %loadMem_41d7db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d7db = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d7db)
  store %struct.Memory* %call_41d7db, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41d7e0	 Bytes: 2
  %loadMem_41d7e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d7e0 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d7e0)
  store %struct.Memory* %call_41d7e0, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 41d7e2	 Bytes: 5
  %loadMem_41d7e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d7e2 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d7e2)
  store %struct.Memory* %call_41d7e2, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41d7e7	 Bytes: 2
  %loadMem_41d7e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d7e7 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d7e7)
  store %struct.Memory* %call_41d7e7, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41d7e9	 Bytes: 4
  %loadMem_41d7e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d7e9 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d7e9)
  store %struct.Memory* %call_41d7e9, %struct.Memory** %MEMORY

  ; Code: addq $0x78, %rcx	 RIP: 41d7ed	 Bytes: 4
  %loadMem_41d7ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d7ed = call %struct.Memory* @routine_addq__0x78___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d7ed)
  store %struct.Memory* %call_41d7ed, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 41d7f1	 Bytes: 4
  %loadMem_41d7f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d7f1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d7f1)
  store %struct.Memory* %call_41d7f1, %struct.Memory** %MEMORY

  ; Code: movq (%rdi), %rdi	 RIP: 41d7f5	 Bytes: 3
  %loadMem_41d7f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d7f5 = call %struct.Memory* @routine_movq___rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d7f5)
  store %struct.Memory* %call_41d7f5, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x80(%rbp)	 RIP: 41d7f8	 Bytes: 4
  %loadMem_41d7f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d7f8 = call %struct.Memory* @routine_movq__rdi__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d7f8)
  store %struct.Memory* %call_41d7f8, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41d7fc	 Bytes: 3
  %loadMem_41d7fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d7fc = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d7fc)
  store %struct.Memory* %call_41d7fc, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rcx	 RIP: 41d7ff	 Bytes: 4
  %loadMem_41d7ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d7ff = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d7ff)
  store %struct.Memory* %call_41d7ff, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 41d803	 Bytes: 5
  %loadMem1_41d803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d803 = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d803, i64 -115699, i64 5, i64 5)
  store %struct.Memory* %call1_41d803, %struct.Memory** %MEMORY

  %loadMem2_41d803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d803 = load i64, i64* %3
  %call2_41d803 = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_41d803, %struct.Memory* %loadMem2_41d803)
  store %struct.Memory* %call2_41d803, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41d808	 Bytes: 4
  %loadMem_41d808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d808 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d808)
  store %struct.Memory* %call_41d808, %struct.Memory** %MEMORY

  ; Code: jne .L_41d817	 RIP: 41d80c	 Bytes: 6
  %loadMem_41d80c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d80c = call %struct.Memory* @routine_jne_.L_41d817(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d80c, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41d80c, %struct.Memory** %MEMORY

  %loadBr_41d80c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d80c = icmp eq i8 %loadBr_41d80c, 1
  br i1 %cmpBr_41d80c, label %block_.L_41d817, label %block_41d812

block_41d812:
  ; Code: jmpq .L_41e05f	 RIP: 41d812	 Bytes: 5
  %loadMem_41d812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d812 = call %struct.Memory* @routine_jmpq_.L_41e05f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d812, i64 2125, i64 5)
  store %struct.Memory* %call_41d812, %struct.Memory** %MEMORY

  br label %block_.L_41e05f

  ; Code: .L_41d817:	 RIP: 41d817	 Bytes: 0
block_.L_41d817:

  ; Code: movl $0x4, %eax	 RIP: 41d817	 Bytes: 5
  %loadMem_41d817 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d817 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d817)
  store %struct.Memory* %call_41d817, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41d81c	 Bytes: 2
  %loadMem_41d81c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d81c = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d81c)
  store %struct.Memory* %call_41d81c, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 41d81e	 Bytes: 5
  %loadMem_41d81e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d81e = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d81e)
  store %struct.Memory* %call_41d81e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41d823	 Bytes: 2
  %loadMem_41d823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d823 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d823)
  store %struct.Memory* %call_41d823, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41d825	 Bytes: 4
  %loadMem_41d825 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d825 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d825)
  store %struct.Memory* %call_41d825, %struct.Memory** %MEMORY

  ; Code: addq $0x7c, %rcx	 RIP: 41d829	 Bytes: 4
  %loadMem_41d829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d829 = call %struct.Memory* @routine_addq__0x7c___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d829)
  store %struct.Memory* %call_41d829, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 41d82d	 Bytes: 4
  %loadMem_41d82d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d82d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d82d)
  store %struct.Memory* %call_41d82d, %struct.Memory** %MEMORY

  ; Code: movq (%rdi), %rdi	 RIP: 41d831	 Bytes: 3
  %loadMem_41d831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d831 = call %struct.Memory* @routine_movq___rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d831)
  store %struct.Memory* %call_41d831, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x88(%rbp)	 RIP: 41d834	 Bytes: 7
  %loadMem_41d834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d834 = call %struct.Memory* @routine_movq__rdi__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d834)
  store %struct.Memory* %call_41d834, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41d83b	 Bytes: 3
  %loadMem_41d83b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d83b = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d83b)
  store %struct.Memory* %call_41d83b, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rcx	 RIP: 41d83e	 Bytes: 7
  %loadMem_41d83e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d83e = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d83e)
  store %struct.Memory* %call_41d83e, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 41d845	 Bytes: 5
  %loadMem1_41d845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d845 = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d845, i64 -115765, i64 5, i64 5)
  store %struct.Memory* %call1_41d845, %struct.Memory** %MEMORY

  %loadMem2_41d845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d845 = load i64, i64* %3
  %call2_41d845 = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_41d845, %struct.Memory* %loadMem2_41d845)
  store %struct.Memory* %call2_41d845, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41d84a	 Bytes: 4
  %loadMem_41d84a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d84a = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d84a)
  store %struct.Memory* %call_41d84a, %struct.Memory** %MEMORY

  ; Code: jne .L_41d859	 RIP: 41d84e	 Bytes: 6
  %loadMem_41d84e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d84e = call %struct.Memory* @routine_jne_.L_41d859(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d84e, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41d84e, %struct.Memory** %MEMORY

  %loadBr_41d84e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d84e = icmp eq i8 %loadBr_41d84e, 1
  br i1 %cmpBr_41d84e, label %block_.L_41d859, label %block_41d854

block_41d854:
  ; Code: jmpq .L_41e05f	 RIP: 41d854	 Bytes: 5
  %loadMem_41d854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d854 = call %struct.Memory* @routine_jmpq_.L_41e05f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d854, i64 2059, i64 5)
  store %struct.Memory* %call_41d854, %struct.Memory** %MEMORY

  br label %block_.L_41e05f

  ; Code: .L_41d859:	 RIP: 41d859	 Bytes: 0
block_.L_41d859:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41d859	 Bytes: 4
  %loadMem_41d859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d859 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d859)
  store %struct.Memory* %call_41d859, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x1c(%rax)	 RIP: 41d85d	 Bytes: 4
  %loadMem_41d85d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d85d = call %struct.Memory* @routine_cmpl__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d85d)
  store %struct.Memory* %call_41d85d, %struct.Memory** %MEMORY

  ; Code: je .L_41d891	 RIP: 41d861	 Bytes: 6
  %loadMem_41d861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d861 = call %struct.Memory* @routine_je_.L_41d891(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d861, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_41d861, %struct.Memory** %MEMORY

  %loadBr_41d861 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d861 = icmp eq i8 %loadBr_41d861, 1
  br i1 %cmpBr_41d861, label %block_.L_41d891, label %block_41d867

block_41d867:
  ; Code: movl $0x4, %esi	 RIP: 41d867	 Bytes: 5
  %loadMem_41d867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d867 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d867)
  store %struct.Memory* %call_41d867, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41d86c	 Bytes: 4
  %loadMem_41d86c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d86c = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d86c)
  store %struct.Memory* %call_41d86c, %struct.Memory** %MEMORY

  ; Code: addq $0x78, %rax	 RIP: 41d870	 Bytes: 4
  %loadMem_41d870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d870 = call %struct.Memory* @routine_addq__0x78___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d870)
  store %struct.Memory* %call_41d870, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41d874	 Bytes: 3
  %loadMem_41d874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d874 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d874)
  store %struct.Memory* %call_41d874, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 41d877	 Bytes: 5
  %loadMem1_41d877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d877 = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d877, i64 19209, i64 5, i64 5)
  store %struct.Memory* %call1_41d877, %struct.Memory** %MEMORY

  %loadMem2_41d877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d877 = load i64, i64* %3
  %call2_41d877 = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_41d877, %struct.Memory* %loadMem2_41d877)
  store %struct.Memory* %call2_41d877, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %esi	 RIP: 41d87c	 Bytes: 5
  %loadMem_41d87c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d87c = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d87c)
  store %struct.Memory* %call_41d87c, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41d881	 Bytes: 4
  %loadMem_41d881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d881 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d881)
  store %struct.Memory* %call_41d881, %struct.Memory** %MEMORY

  ; Code: addq $0x7c, %rax	 RIP: 41d885	 Bytes: 4
  %loadMem_41d885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d885 = call %struct.Memory* @routine_addq__0x7c___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d885)
  store %struct.Memory* %call_41d885, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41d889	 Bytes: 3
  %loadMem_41d889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d889 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d889)
  store %struct.Memory* %call_41d889, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 41d88c	 Bytes: 5
  %loadMem1_41d88c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d88c = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d88c, i64 19188, i64 5, i64 5)
  store %struct.Memory* %call1_41d88c, %struct.Memory** %MEMORY

  %loadMem2_41d88c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d88c = load i64, i64* %3
  %call2_41d88c = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_41d88c, %struct.Memory* %loadMem2_41d88c)
  store %struct.Memory* %call2_41d88c, %struct.Memory** %MEMORY

  ; Code: .L_41d891:	 RIP: 41d891	 Bytes: 0
  br label %block_.L_41d891
block_.L_41d891:

  ; Code: jmpq .L_41d896	 RIP: 41d891	 Bytes: 5
  %loadMem_41d891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d891 = call %struct.Memory* @routine_jmpq_.L_41d896(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d891, i64 5, i64 5)
  store %struct.Memory* %call_41d891, %struct.Memory** %MEMORY

  br label %block_.L_41d896

  ; Code: .L_41d896:	 RIP: 41d896	 Bytes: 0
block_.L_41d896:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41d896	 Bytes: 4
  %loadMem_41d896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d896 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d896)
  store %struct.Memory* %call_41d896, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %ecx	 RIP: 41d89a	 Bytes: 6
  %loadMem_41d89a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d89a = call %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d89a)
  store %struct.Memory* %call_41d89a, %struct.Memory** %MEMORY

  ; Code: andl $0x1000, %ecx	 RIP: 41d8a0	 Bytes: 6
  %loadMem_41d8a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d8a0 = call %struct.Memory* @routine_andl__0x1000___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d8a0)
  store %struct.Memory* %call_41d8a0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 41d8a6	 Bytes: 3
  %loadMem_41d8a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d8a6 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d8a6)
  store %struct.Memory* %call_41d8a6, %struct.Memory** %MEMORY

  ; Code: je .L_41d97a	 RIP: 41d8a9	 Bytes: 6
  %loadMem_41d8a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d8a9 = call %struct.Memory* @routine_je_.L_41d97a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d8a9, i8* %BRANCH_TAKEN, i64 209, i64 6, i64 6)
  store %struct.Memory* %call_41d8a9, %struct.Memory** %MEMORY

  %loadBr_41d8a9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d8a9 = icmp eq i8 %loadBr_41d8a9, 1
  br i1 %cmpBr_41d8a9, label %block_.L_41d97a, label %block_41d8af

block_41d8af:
  ; Code: movl $0x4, %eax	 RIP: 41d8af	 Bytes: 5
  %loadMem_41d8af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d8af = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d8af)
  store %struct.Memory* %call_41d8af, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41d8b4	 Bytes: 2
  %loadMem_41d8b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d8b4 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d8b4)
  store %struct.Memory* %call_41d8b4, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 41d8b6	 Bytes: 5
  %loadMem_41d8b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d8b6 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d8b6)
  store %struct.Memory* %call_41d8b6, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41d8bb	 Bytes: 2
  %loadMem_41d8bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d8bb = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d8bb)
  store %struct.Memory* %call_41d8bb, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41d8bd	 Bytes: 4
  %loadMem_41d8bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d8bd = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d8bd)
  store %struct.Memory* %call_41d8bd, %struct.Memory** %MEMORY

  ; Code: addq $0x80, %rcx	 RIP: 41d8c1	 Bytes: 7
  %loadMem_41d8c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d8c1 = call %struct.Memory* @routine_addq__0x80___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d8c1)
  store %struct.Memory* %call_41d8c1, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 41d8c8	 Bytes: 4
  %loadMem_41d8c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d8c8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d8c8)
  store %struct.Memory* %call_41d8c8, %struct.Memory** %MEMORY

  ; Code: movq (%rdi), %rdi	 RIP: 41d8cc	 Bytes: 3
  %loadMem_41d8cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d8cc = call %struct.Memory* @routine_movq___rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d8cc)
  store %struct.Memory* %call_41d8cc, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x90(%rbp)	 RIP: 41d8cf	 Bytes: 7
  %loadMem_41d8cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d8cf = call %struct.Memory* @routine_movq__rdi__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d8cf)
  store %struct.Memory* %call_41d8cf, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41d8d6	 Bytes: 3
  %loadMem_41d8d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d8d6 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d8d6)
  store %struct.Memory* %call_41d8d6, %struct.Memory** %MEMORY

  ; Code: movq -0x90(%rbp), %rcx	 RIP: 41d8d9	 Bytes: 7
  %loadMem_41d8d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d8d9 = call %struct.Memory* @routine_movq_MINUS0x90__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d8d9)
  store %struct.Memory* %call_41d8d9, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 41d8e0	 Bytes: 5
  %loadMem1_41d8e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d8e0 = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d8e0, i64 -115920, i64 5, i64 5)
  store %struct.Memory* %call1_41d8e0, %struct.Memory** %MEMORY

  %loadMem2_41d8e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d8e0 = load i64, i64* %3
  %call2_41d8e0 = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_41d8e0, %struct.Memory* %loadMem2_41d8e0)
  store %struct.Memory* %call2_41d8e0, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41d8e5	 Bytes: 4
  %loadMem_41d8e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d8e5 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d8e5)
  store %struct.Memory* %call_41d8e5, %struct.Memory** %MEMORY

  ; Code: jne .L_41d8f4	 RIP: 41d8e9	 Bytes: 6
  %loadMem_41d8e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d8e9 = call %struct.Memory* @routine_jne_.L_41d8f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d8e9, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41d8e9, %struct.Memory** %MEMORY

  %loadBr_41d8e9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d8e9 = icmp eq i8 %loadBr_41d8e9, 1
  br i1 %cmpBr_41d8e9, label %block_.L_41d8f4, label %block_41d8ef

block_41d8ef:
  ; Code: jmpq .L_41e05f	 RIP: 41d8ef	 Bytes: 5
  %loadMem_41d8ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d8ef = call %struct.Memory* @routine_jmpq_.L_41e05f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d8ef, i64 1904, i64 5)
  store %struct.Memory* %call_41d8ef, %struct.Memory** %MEMORY

  br label %block_.L_41e05f

  ; Code: .L_41d8f4:	 RIP: 41d8f4	 Bytes: 0
block_.L_41d8f4:

  ; Code: movl $0x4, %eax	 RIP: 41d8f4	 Bytes: 5
  %loadMem_41d8f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d8f4 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d8f4)
  store %struct.Memory* %call_41d8f4, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41d8f9	 Bytes: 2
  %loadMem_41d8f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d8f9 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d8f9)
  store %struct.Memory* %call_41d8f9, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 41d8fb	 Bytes: 5
  %loadMem_41d8fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d8fb = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d8fb)
  store %struct.Memory* %call_41d8fb, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41d900	 Bytes: 2
  %loadMem_41d900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d900 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d900)
  store %struct.Memory* %call_41d900, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41d902	 Bytes: 4
  %loadMem_41d902 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d902 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d902)
  store %struct.Memory* %call_41d902, %struct.Memory** %MEMORY

  ; Code: addq $0x84, %rcx	 RIP: 41d906	 Bytes: 7
  %loadMem_41d906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d906 = call %struct.Memory* @routine_addq__0x84___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d906)
  store %struct.Memory* %call_41d906, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 41d90d	 Bytes: 4
  %loadMem_41d90d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d90d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d90d)
  store %struct.Memory* %call_41d90d, %struct.Memory** %MEMORY

  ; Code: movq (%rdi), %rdi	 RIP: 41d911	 Bytes: 3
  %loadMem_41d911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d911 = call %struct.Memory* @routine_movq___rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d911)
  store %struct.Memory* %call_41d911, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x98(%rbp)	 RIP: 41d914	 Bytes: 7
  %loadMem_41d914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d914 = call %struct.Memory* @routine_movq__rdi__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d914)
  store %struct.Memory* %call_41d914, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41d91b	 Bytes: 3
  %loadMem_41d91b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d91b = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d91b)
  store %struct.Memory* %call_41d91b, %struct.Memory** %MEMORY

  ; Code: movq -0x98(%rbp), %rcx	 RIP: 41d91e	 Bytes: 7
  %loadMem_41d91e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d91e = call %struct.Memory* @routine_movq_MINUS0x98__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d91e)
  store %struct.Memory* %call_41d91e, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 41d925	 Bytes: 5
  %loadMem1_41d925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d925 = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d925, i64 -115989, i64 5, i64 5)
  store %struct.Memory* %call1_41d925, %struct.Memory** %MEMORY

  %loadMem2_41d925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d925 = load i64, i64* %3
  %call2_41d925 = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_41d925, %struct.Memory* %loadMem2_41d925)
  store %struct.Memory* %call2_41d925, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41d92a	 Bytes: 4
  %loadMem_41d92a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d92a = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d92a)
  store %struct.Memory* %call_41d92a, %struct.Memory** %MEMORY

  ; Code: jne .L_41d939	 RIP: 41d92e	 Bytes: 6
  %loadMem_41d92e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d92e = call %struct.Memory* @routine_jne_.L_41d939(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d92e, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41d92e, %struct.Memory** %MEMORY

  %loadBr_41d92e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d92e = icmp eq i8 %loadBr_41d92e, 1
  br i1 %cmpBr_41d92e, label %block_.L_41d939, label %block_41d934

block_41d934:
  ; Code: jmpq .L_41e05f	 RIP: 41d934	 Bytes: 5
  %loadMem_41d934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d934 = call %struct.Memory* @routine_jmpq_.L_41e05f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d934, i64 1835, i64 5)
  store %struct.Memory* %call_41d934, %struct.Memory** %MEMORY

  br label %block_.L_41e05f

  ; Code: .L_41d939:	 RIP: 41d939	 Bytes: 0
block_.L_41d939:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41d939	 Bytes: 4
  %loadMem_41d939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d939 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d939)
  store %struct.Memory* %call_41d939, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x1c(%rax)	 RIP: 41d93d	 Bytes: 4
  %loadMem_41d93d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d93d = call %struct.Memory* @routine_cmpl__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d93d)
  store %struct.Memory* %call_41d93d, %struct.Memory** %MEMORY

  ; Code: je .L_41d975	 RIP: 41d941	 Bytes: 6
  %loadMem_41d941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d941 = call %struct.Memory* @routine_je_.L_41d975(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d941, i8* %BRANCH_TAKEN, i64 52, i64 6, i64 6)
  store %struct.Memory* %call_41d941, %struct.Memory** %MEMORY

  %loadBr_41d941 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d941 = icmp eq i8 %loadBr_41d941, 1
  br i1 %cmpBr_41d941, label %block_.L_41d975, label %block_41d947

block_41d947:
  ; Code: movl $0x4, %esi	 RIP: 41d947	 Bytes: 5
  %loadMem_41d947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d947 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d947)
  store %struct.Memory* %call_41d947, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41d94c	 Bytes: 4
  %loadMem_41d94c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d94c = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d94c)
  store %struct.Memory* %call_41d94c, %struct.Memory** %MEMORY

  ; Code: addq $0x80, %rax	 RIP: 41d950	 Bytes: 6
  %loadMem_41d950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d950 = call %struct.Memory* @routine_addq__0x80___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d950)
  store %struct.Memory* %call_41d950, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41d956	 Bytes: 3
  %loadMem_41d956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d956 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d956)
  store %struct.Memory* %call_41d956, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 41d959	 Bytes: 5
  %loadMem1_41d959 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d959 = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d959, i64 18983, i64 5, i64 5)
  store %struct.Memory* %call1_41d959, %struct.Memory** %MEMORY

  %loadMem2_41d959 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d959 = load i64, i64* %3
  %call2_41d959 = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_41d959, %struct.Memory* %loadMem2_41d959)
  store %struct.Memory* %call2_41d959, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %esi	 RIP: 41d95e	 Bytes: 5
  %loadMem_41d95e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d95e = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d95e)
  store %struct.Memory* %call_41d95e, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41d963	 Bytes: 4
  %loadMem_41d963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d963 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d963)
  store %struct.Memory* %call_41d963, %struct.Memory** %MEMORY

  ; Code: addq $0x84, %rax	 RIP: 41d967	 Bytes: 6
  %loadMem_41d967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d967 = call %struct.Memory* @routine_addq__0x84___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d967)
  store %struct.Memory* %call_41d967, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41d96d	 Bytes: 3
  %loadMem_41d96d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d96d = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d96d)
  store %struct.Memory* %call_41d96d, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 41d970	 Bytes: 5
  %loadMem1_41d970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d970 = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d970, i64 18960, i64 5, i64 5)
  store %struct.Memory* %call1_41d970, %struct.Memory** %MEMORY

  %loadMem2_41d970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d970 = load i64, i64* %3
  %call2_41d970 = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_41d970, %struct.Memory* %loadMem2_41d970)
  store %struct.Memory* %call2_41d970, %struct.Memory** %MEMORY

  ; Code: .L_41d975:	 RIP: 41d975	 Bytes: 0
  br label %block_.L_41d975
block_.L_41d975:

  ; Code: jmpq .L_41d97a	 RIP: 41d975	 Bytes: 5
  %loadMem_41d975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d975 = call %struct.Memory* @routine_jmpq_.L_41d97a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d975, i64 5, i64 5)
  store %struct.Memory* %call_41d975, %struct.Memory** %MEMORY

  br label %block_.L_41d97a

  ; Code: .L_41d97a:	 RIP: 41d97a	 Bytes: 0
block_.L_41d97a:

  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 41d97a	 Bytes: 7
  %loadMem_41d97a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d97a = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d97a)
  store %struct.Memory* %call_41d97a, %struct.Memory** %MEMORY

  ; Code: .L_41d981:	 RIP: 41d981	 Bytes: 0
  br label %block_.L_41d981
block_.L_41d981:

  ; Code: cmpl $0x4, -0x24(%rbp)	 RIP: 41d981	 Bytes: 4
  %loadMem_41d981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d981 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d981)
  store %struct.Memory* %call_41d981, %struct.Memory** %MEMORY

  ; Code: jge .L_41da4d	 RIP: 41d985	 Bytes: 6
  %loadMem_41d985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d985 = call %struct.Memory* @routine_jge_.L_41da4d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d985, i8* %BRANCH_TAKEN, i64 200, i64 6, i64 6)
  store %struct.Memory* %call_41d985, %struct.Memory** %MEMORY

  %loadBr_41d985 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d985 = icmp eq i8 %loadBr_41d985, 1
  br i1 %cmpBr_41d985, label %block_.L_41da4d, label %block_41d98b

block_41d98b:
  ; Code: movl $0x4, %eax	 RIP: 41d98b	 Bytes: 5
  %loadMem_41d98b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d98b = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d98b)
  store %struct.Memory* %call_41d98b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41d990	 Bytes: 2
  %loadMem_41d990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d990 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d990)
  store %struct.Memory* %call_41d990, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %eax	 RIP: 41d992	 Bytes: 5
  %loadMem_41d992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d992 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d992)
  store %struct.Memory* %call_41d992, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41d997	 Bytes: 2
  %loadMem_41d997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d997 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d997)
  store %struct.Memory* %call_41d997, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41d999	 Bytes: 4
  %loadMem_41d999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d999 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d999)
  store %struct.Memory* %call_41d999, %struct.Memory** %MEMORY

  ; Code: addq $0xac, %rcx	 RIP: 41d99d	 Bytes: 7
  %loadMem_41d99d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d99d = call %struct.Memory* @routine_addq__0xac___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d99d)
  store %struct.Memory* %call_41d99d, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdi	 RIP: 41d9a4	 Bytes: 4
  %loadMem_41d9a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d9a4 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d9a4)
  store %struct.Memory* %call_41d9a4, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdi	 RIP: 41d9a8	 Bytes: 4
  %loadMem_41d9a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d9a8 = call %struct.Memory* @routine_shlq__0x3___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d9a8)
  store %struct.Memory* %call_41d9a8, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rcx	 RIP: 41d9ac	 Bytes: 3
  %loadMem_41d9ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d9ac = call %struct.Memory* @routine_addq__rdi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d9ac)
  store %struct.Memory* %call_41d9ac, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 41d9af	 Bytes: 4
  %loadMem_41d9af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d9af = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d9af)
  store %struct.Memory* %call_41d9af, %struct.Memory** %MEMORY

  ; Code: movq (%rdi), %rdi	 RIP: 41d9b3	 Bytes: 3
  %loadMem_41d9b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d9b3 = call %struct.Memory* @routine_movq___rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d9b3)
  store %struct.Memory* %call_41d9b3, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0xa0(%rbp)	 RIP: 41d9b6	 Bytes: 7
  %loadMem_41d9b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d9b6 = call %struct.Memory* @routine_movq__rdi__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d9b6)
  store %struct.Memory* %call_41d9b6, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41d9bd	 Bytes: 3
  %loadMem_41d9bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d9bd = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d9bd)
  store %struct.Memory* %call_41d9bd, %struct.Memory** %MEMORY

  ; Code: movq -0xa0(%rbp), %rcx	 RIP: 41d9c0	 Bytes: 7
  %loadMem_41d9c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d9c0 = call %struct.Memory* @routine_movq_MINUS0xa0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d9c0)
  store %struct.Memory* %call_41d9c0, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 41d9c7	 Bytes: 5
  %loadMem1_41d9c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41d9c7 = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41d9c7, i64 -116151, i64 5, i64 5)
  store %struct.Memory* %call1_41d9c7, %struct.Memory** %MEMORY

  %loadMem2_41d9c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41d9c7 = load i64, i64* %3
  %call2_41d9c7 = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_41d9c7, %struct.Memory* %loadMem2_41d9c7)
  store %struct.Memory* %call2_41d9c7, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41d9cc	 Bytes: 4
  %loadMem_41d9cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d9cc = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d9cc)
  store %struct.Memory* %call_41d9cc, %struct.Memory** %MEMORY

  ; Code: jne .L_41d9db	 RIP: 41d9d0	 Bytes: 6
  %loadMem_41d9d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d9d0 = call %struct.Memory* @routine_jne_.L_41d9db(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d9d0, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41d9d0, %struct.Memory** %MEMORY

  %loadBr_41d9d0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d9d0 = icmp eq i8 %loadBr_41d9d0, 1
  br i1 %cmpBr_41d9d0, label %block_.L_41d9db, label %block_41d9d6

block_41d9d6:
  ; Code: jmpq .L_41e05f	 RIP: 41d9d6	 Bytes: 5
  %loadMem_41d9d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d9d6 = call %struct.Memory* @routine_jmpq_.L_41e05f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d9d6, i64 1673, i64 5)
  store %struct.Memory* %call_41d9d6, %struct.Memory** %MEMORY

  br label %block_.L_41e05f

  ; Code: .L_41d9db:	 RIP: 41d9db	 Bytes: 0
block_.L_41d9db:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41d9db	 Bytes: 4
  %loadMem_41d9db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d9db = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d9db)
  store %struct.Memory* %call_41d9db, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x1c(%rax)	 RIP: 41d9df	 Bytes: 4
  %loadMem_41d9df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d9df = call %struct.Memory* @routine_cmpl__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d9df)
  store %struct.Memory* %call_41d9df, %struct.Memory** %MEMORY

  ; Code: je .L_41da3a	 RIP: 41d9e3	 Bytes: 6
  %loadMem_41d9e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d9e3 = call %struct.Memory* @routine_je_.L_41da3a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d9e3, i8* %BRANCH_TAKEN, i64 87, i64 6, i64 6)
  store %struct.Memory* %call_41d9e3, %struct.Memory** %MEMORY

  %loadBr_41d9e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d9e3 = icmp eq i8 %loadBr_41d9e3, 1
  br i1 %cmpBr_41d9e3, label %block_.L_41da3a, label %block_41d9e9

block_41d9e9:
  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 41d9e9	 Bytes: 7
  %loadMem_41d9e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d9e9 = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d9e9)
  store %struct.Memory* %call_41d9e9, %struct.Memory** %MEMORY

  ; Code: .L_41d9f0:	 RIP: 41d9f0	 Bytes: 0
  br label %block_.L_41d9f0
block_.L_41d9f0:

  ; Code: cmpl $0x2, -0x28(%rbp)	 RIP: 41d9f0	 Bytes: 4
  %loadMem_41d9f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d9f0 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d9f0)
  store %struct.Memory* %call_41d9f0, %struct.Memory** %MEMORY

  ; Code: jge .L_41da35	 RIP: 41d9f4	 Bytes: 6
  %loadMem_41d9f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d9f4 = call %struct.Memory* @routine_jge_.L_41da35(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d9f4, i8* %BRANCH_TAKEN, i64 65, i64 6, i64 6)
  store %struct.Memory* %call_41d9f4, %struct.Memory** %MEMORY

  %loadBr_41d9f4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41d9f4 = icmp eq i8 %loadBr_41d9f4, 1
  br i1 %cmpBr_41d9f4, label %block_.L_41da35, label %block_41d9fa

block_41d9fa:
  ; Code: movl $0x4, %esi	 RIP: 41d9fa	 Bytes: 5
  %loadMem_41d9fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d9fa = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d9fa)
  store %struct.Memory* %call_41d9fa, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41d9ff	 Bytes: 4
  %loadMem_41d9ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41d9ff = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41d9ff)
  store %struct.Memory* %call_41d9ff, %struct.Memory** %MEMORY

  ; Code: addq $0xac, %rax	 RIP: 41da03	 Bytes: 6
  %loadMem_41da03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da03 = call %struct.Memory* @routine_addq__0xac___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da03)
  store %struct.Memory* %call_41da03, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 41da09	 Bytes: 4
  %loadMem_41da09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da09 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da09)
  store %struct.Memory* %call_41da09, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rcx	 RIP: 41da0d	 Bytes: 4
  %loadMem_41da0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da0d = call %struct.Memory* @routine_shlq__0x3___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da0d)
  store %struct.Memory* %call_41da0d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41da11	 Bytes: 3
  %loadMem_41da11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da11 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da11)
  store %struct.Memory* %call_41da11, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 41da14	 Bytes: 4
  %loadMem_41da14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da14 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da14)
  store %struct.Memory* %call_41da14, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rcx	 RIP: 41da18	 Bytes: 4
  %loadMem_41da18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da18 = call %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da18)
  store %struct.Memory* %call_41da18, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41da1c	 Bytes: 3
  %loadMem_41da1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da1c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da1c)
  store %struct.Memory* %call_41da1c, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41da1f	 Bytes: 3
  %loadMem_41da1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da1f = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da1f)
  store %struct.Memory* %call_41da1f, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 41da22	 Bytes: 5
  %loadMem1_41da22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41da22 = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41da22, i64 18782, i64 5, i64 5)
  store %struct.Memory* %call1_41da22, %struct.Memory** %MEMORY

  %loadMem2_41da22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41da22 = load i64, i64* %3
  %call2_41da22 = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_41da22, %struct.Memory* %loadMem2_41da22)
  store %struct.Memory* %call2_41da22, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 41da27	 Bytes: 3
  %loadMem_41da27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da27 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da27)
  store %struct.Memory* %call_41da27, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41da2a	 Bytes: 3
  %loadMem_41da2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da2a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da2a)
  store %struct.Memory* %call_41da2a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 41da2d	 Bytes: 3
  %loadMem_41da2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da2d = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da2d)
  store %struct.Memory* %call_41da2d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41d9f0	 RIP: 41da30	 Bytes: 5
  %loadMem_41da30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da30 = call %struct.Memory* @routine_jmpq_.L_41d9f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da30, i64 -64, i64 5)
  store %struct.Memory* %call_41da30, %struct.Memory** %MEMORY

  br label %block_.L_41d9f0

  ; Code: .L_41da35:	 RIP: 41da35	 Bytes: 0
block_.L_41da35:

  ; Code: jmpq .L_41da3a	 RIP: 41da35	 Bytes: 5
  %loadMem_41da35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da35 = call %struct.Memory* @routine_jmpq_.L_41da3a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da35, i64 5, i64 5)
  store %struct.Memory* %call_41da35, %struct.Memory** %MEMORY

  br label %block_.L_41da3a

  ; Code: .L_41da3a:	 RIP: 41da3a	 Bytes: 0
block_.L_41da3a:

  ; Code: jmpq .L_41da3f	 RIP: 41da3a	 Bytes: 5
  %loadMem_41da3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da3a = call %struct.Memory* @routine_jmpq_.L_41da3f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da3a, i64 5, i64 5)
  store %struct.Memory* %call_41da3a, %struct.Memory** %MEMORY

  br label %block_.L_41da3f

  ; Code: .L_41da3f:	 RIP: 41da3f	 Bytes: 0
block_.L_41da3f:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 41da3f	 Bytes: 3
  %loadMem_41da3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da3f = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da3f)
  store %struct.Memory* %call_41da3f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41da42	 Bytes: 3
  %loadMem_41da42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da42 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da42)
  store %struct.Memory* %call_41da42, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 41da45	 Bytes: 3
  %loadMem_41da45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da45 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da45)
  store %struct.Memory* %call_41da45, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41d981	 RIP: 41da48	 Bytes: 5
  %loadMem_41da48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da48 = call %struct.Memory* @routine_jmpq_.L_41d981(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da48, i64 -199, i64 5)
  store %struct.Memory* %call_41da48, %struct.Memory** %MEMORY

  br label %block_.L_41d981

  ; Code: .L_41da4d:	 RIP: 41da4d	 Bytes: 0
block_.L_41da4d:

  ; Code: movl $0x4, %eax	 RIP: 41da4d	 Bytes: 5
  %loadMem_41da4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da4d = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da4d)
  store %struct.Memory* %call_41da4d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41da52	 Bytes: 2
  %loadMem_41da52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da52 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da52)
  store %struct.Memory* %call_41da52, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 41da54	 Bytes: 5
  %loadMem_41da54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da54 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da54)
  store %struct.Memory* %call_41da54, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41da59	 Bytes: 2
  %loadMem_41da59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da59 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da59)
  store %struct.Memory* %call_41da59, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41da5b	 Bytes: 4
  %loadMem_41da5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da5b = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da5b)
  store %struct.Memory* %call_41da5b, %struct.Memory** %MEMORY

  ; Code: addq $0x130, %rcx	 RIP: 41da5f	 Bytes: 7
  %loadMem_41da5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da5f = call %struct.Memory* @routine_addq__0x130___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da5f)
  store %struct.Memory* %call_41da5f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 41da66	 Bytes: 4
  %loadMem_41da66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da66 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da66)
  store %struct.Memory* %call_41da66, %struct.Memory** %MEMORY

  ; Code: movq (%rdi), %rdi	 RIP: 41da6a	 Bytes: 3
  %loadMem_41da6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da6a = call %struct.Memory* @routine_movq___rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da6a)
  store %struct.Memory* %call_41da6a, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0xa8(%rbp)	 RIP: 41da6d	 Bytes: 7
  %loadMem_41da6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da6d = call %struct.Memory* @routine_movq__rdi__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da6d)
  store %struct.Memory* %call_41da6d, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41da74	 Bytes: 3
  %loadMem_41da74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da74 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da74)
  store %struct.Memory* %call_41da74, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rcx	 RIP: 41da77	 Bytes: 7
  %loadMem_41da77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da77 = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da77)
  store %struct.Memory* %call_41da77, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 41da7e	 Bytes: 5
  %loadMem1_41da7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41da7e = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41da7e, i64 -116334, i64 5, i64 5)
  store %struct.Memory* %call1_41da7e, %struct.Memory** %MEMORY

  %loadMem2_41da7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41da7e = load i64, i64* %3
  %call2_41da7e = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_41da7e, %struct.Memory* %loadMem2_41da7e)
  store %struct.Memory* %call2_41da7e, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41da83	 Bytes: 4
  %loadMem_41da83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da83 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da83)
  store %struct.Memory* %call_41da83, %struct.Memory** %MEMORY

  ; Code: jne .L_41da92	 RIP: 41da87	 Bytes: 6
  %loadMem_41da87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da87 = call %struct.Memory* @routine_jne_.L_41da92(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da87, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41da87, %struct.Memory** %MEMORY

  %loadBr_41da87 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41da87 = icmp eq i8 %loadBr_41da87, 1
  br i1 %cmpBr_41da87, label %block_.L_41da92, label %block_41da8d

block_41da8d:
  ; Code: jmpq .L_41e05f	 RIP: 41da8d	 Bytes: 5
  %loadMem_41da8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da8d = call %struct.Memory* @routine_jmpq_.L_41e05f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da8d, i64 1490, i64 5)
  store %struct.Memory* %call_41da8d, %struct.Memory** %MEMORY

  br label %block_.L_41e05f

  ; Code: .L_41da92:	 RIP: 41da92	 Bytes: 0
block_.L_41da92:

  ; Code: movl $0x4, %eax	 RIP: 41da92	 Bytes: 5
  %loadMem_41da92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da92 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da92)
  store %struct.Memory* %call_41da92, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41da97	 Bytes: 2
  %loadMem_41da97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da97 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da97)
  store %struct.Memory* %call_41da97, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41da99	 Bytes: 4
  %loadMem_41da99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da99 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da99)
  store %struct.Memory* %call_41da99, %struct.Memory** %MEMORY

  ; Code: addq $0xe0, %rcx	 RIP: 41da9d	 Bytes: 7
  %loadMem_41da9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41da9d = call %struct.Memory* @routine_addq__0xe0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41da9d)
  store %struct.Memory* %call_41da9d, %struct.Memory** %MEMORY

  ; Code: movslq 0x677060, %rdx	 RIP: 41daa4	 Bytes: 8
  %loadMem_41daa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41daa4 = call %struct.Memory* @routine_movslq_0x677060___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41daa4)
  store %struct.Memory* %call_41daa4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 41daac	 Bytes: 4
  %loadMem_41daac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41daac = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41daac)
  store %struct.Memory* %call_41daac, %struct.Memory** %MEMORY

  ; Code: movq (%rdi), %rdi	 RIP: 41dab0	 Bytes: 3
  %loadMem_41dab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dab0 = call %struct.Memory* @routine_movq___rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dab0)
  store %struct.Memory* %call_41dab0, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0xb0(%rbp)	 RIP: 41dab3	 Bytes: 7
  %loadMem_41dab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dab3 = call %struct.Memory* @routine_movq__rdi__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dab3)
  store %struct.Memory* %call_41dab3, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41daba	 Bytes: 3
  %loadMem_41daba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41daba = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41daba)
  store %struct.Memory* %call_41daba, %struct.Memory** %MEMORY

  ; Code: movq -0xb0(%rbp), %rcx	 RIP: 41dabd	 Bytes: 7
  %loadMem_41dabd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dabd = call %struct.Memory* @routine_movq_MINUS0xb0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dabd)
  store %struct.Memory* %call_41dabd, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 41dac4	 Bytes: 5
  %loadMem1_41dac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41dac4 = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41dac4, i64 -116404, i64 5, i64 5)
  store %struct.Memory* %call1_41dac4, %struct.Memory** %MEMORY

  %loadMem2_41dac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41dac4 = load i64, i64* %3
  %call2_41dac4 = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_41dac4, %struct.Memory* %loadMem2_41dac4)
  store %struct.Memory* %call2_41dac4, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41dac9	 Bytes: 4
  %loadMem_41dac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dac9 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dac9)
  store %struct.Memory* %call_41dac9, %struct.Memory** %MEMORY

  ; Code: jne .L_41dad8	 RIP: 41dacd	 Bytes: 6
  %loadMem_41dacd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dacd = call %struct.Memory* @routine_jne_.L_41dad8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dacd, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41dacd, %struct.Memory** %MEMORY

  %loadBr_41dacd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41dacd = icmp eq i8 %loadBr_41dacd, 1
  br i1 %cmpBr_41dacd, label %block_.L_41dad8, label %block_41dad3

block_41dad3:
  ; Code: jmpq .L_41e05f	 RIP: 41dad3	 Bytes: 5
  %loadMem_41dad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dad3 = call %struct.Memory* @routine_jmpq_.L_41e05f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dad3, i64 1420, i64 5)
  store %struct.Memory* %call_41dad3, %struct.Memory** %MEMORY

  br label %block_.L_41e05f

  ; Code: .L_41dad8:	 RIP: 41dad8	 Bytes: 0
block_.L_41dad8:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41dad8	 Bytes: 4
  %loadMem_41dad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dad8 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dad8)
  store %struct.Memory* %call_41dad8, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %ecx	 RIP: 41dadc	 Bytes: 6
  %loadMem_41dadc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dadc = call %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dadc)
  store %struct.Memory* %call_41dadc, %struct.Memory** %MEMORY

  ; Code: andl $0x80, %ecx	 RIP: 41dae2	 Bytes: 6
  %loadMem_41dae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dae2 = call %struct.Memory* @routine_andl__0x80___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dae2)
  store %struct.Memory* %call_41dae2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 41dae8	 Bytes: 3
  %loadMem_41dae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dae8 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dae8)
  store %struct.Memory* %call_41dae8, %struct.Memory** %MEMORY

  ; Code: je .L_41dbbc	 RIP: 41daeb	 Bytes: 6
  %loadMem_41daeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41daeb = call %struct.Memory* @routine_je_.L_41dbbc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41daeb, i8* %BRANCH_TAKEN, i64 209, i64 6, i64 6)
  store %struct.Memory* %call_41daeb, %struct.Memory** %MEMORY

  %loadBr_41daeb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41daeb = icmp eq i8 %loadBr_41daeb, 1
  br i1 %cmpBr_41daeb, label %block_.L_41dbbc, label %block_41daf1

block_41daf1:
  ; Code: movl $0x4, %eax	 RIP: 41daf1	 Bytes: 5
  %loadMem_41daf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41daf1 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41daf1)
  store %struct.Memory* %call_41daf1, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41daf6	 Bytes: 2
  %loadMem_41daf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41daf6 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41daf6)
  store %struct.Memory* %call_41daf6, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 41daf8	 Bytes: 5
  %loadMem_41daf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41daf8 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41daf8)
  store %struct.Memory* %call_41daf8, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41dafd	 Bytes: 2
  %loadMem_41dafd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dafd = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dafd)
  store %struct.Memory* %call_41dafd, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41daff	 Bytes: 4
  %loadMem_41daff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41daff = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41daff)
  store %struct.Memory* %call_41daff, %struct.Memory** %MEMORY

  ; Code: addq $0x1c0, %rcx	 RIP: 41db03	 Bytes: 7
  %loadMem_41db03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41db03 = call %struct.Memory* @routine_addq__0x1c0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41db03)
  store %struct.Memory* %call_41db03, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 41db0a	 Bytes: 4
  %loadMem_41db0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41db0a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41db0a)
  store %struct.Memory* %call_41db0a, %struct.Memory** %MEMORY

  ; Code: movq (%rdi), %rdi	 RIP: 41db0e	 Bytes: 3
  %loadMem_41db0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41db0e = call %struct.Memory* @routine_movq___rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41db0e)
  store %struct.Memory* %call_41db0e, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0xb8(%rbp)	 RIP: 41db11	 Bytes: 7
  %loadMem_41db11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41db11 = call %struct.Memory* @routine_movq__rdi__MINUS0xb8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41db11)
  store %struct.Memory* %call_41db11, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41db18	 Bytes: 3
  %loadMem_41db18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41db18 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41db18)
  store %struct.Memory* %call_41db18, %struct.Memory** %MEMORY

  ; Code: movq -0xb8(%rbp), %rcx	 RIP: 41db1b	 Bytes: 7
  %loadMem_41db1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41db1b = call %struct.Memory* @routine_movq_MINUS0xb8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41db1b)
  store %struct.Memory* %call_41db1b, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 41db22	 Bytes: 5
  %loadMem1_41db22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41db22 = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41db22, i64 -116498, i64 5, i64 5)
  store %struct.Memory* %call1_41db22, %struct.Memory** %MEMORY

  %loadMem2_41db22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41db22 = load i64, i64* %3
  %call2_41db22 = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_41db22, %struct.Memory* %loadMem2_41db22)
  store %struct.Memory* %call2_41db22, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41db27	 Bytes: 4
  %loadMem_41db27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41db27 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41db27)
  store %struct.Memory* %call_41db27, %struct.Memory** %MEMORY

  ; Code: jne .L_41db36	 RIP: 41db2b	 Bytes: 6
  %loadMem_41db2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41db2b = call %struct.Memory* @routine_jne_.L_41db36(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41db2b, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41db2b, %struct.Memory** %MEMORY

  %loadBr_41db2b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41db2b = icmp eq i8 %loadBr_41db2b, 1
  br i1 %cmpBr_41db2b, label %block_.L_41db36, label %block_41db31

block_41db31:
  ; Code: jmpq .L_41e05f	 RIP: 41db31	 Bytes: 5
  %loadMem_41db31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41db31 = call %struct.Memory* @routine_jmpq_.L_41e05f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41db31, i64 1326, i64 5)
  store %struct.Memory* %call_41db31, %struct.Memory** %MEMORY

  br label %block_.L_41e05f

  ; Code: .L_41db36:	 RIP: 41db36	 Bytes: 0
block_.L_41db36:

  ; Code: movl $0x4, %eax	 RIP: 41db36	 Bytes: 5
  %loadMem_41db36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41db36 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41db36)
  store %struct.Memory* %call_41db36, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41db3b	 Bytes: 2
  %loadMem_41db3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41db3b = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41db3b)
  store %struct.Memory* %call_41db3b, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 41db3d	 Bytes: 5
  %loadMem_41db3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41db3d = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41db3d)
  store %struct.Memory* %call_41db3d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41db42	 Bytes: 2
  %loadMem_41db42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41db42 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41db42)
  store %struct.Memory* %call_41db42, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41db44	 Bytes: 4
  %loadMem_41db44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41db44 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41db44)
  store %struct.Memory* %call_41db44, %struct.Memory** %MEMORY

  ; Code: addq $0x1c4, %rcx	 RIP: 41db48	 Bytes: 7
  %loadMem_41db48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41db48 = call %struct.Memory* @routine_addq__0x1c4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41db48)
  store %struct.Memory* %call_41db48, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 41db4f	 Bytes: 4
  %loadMem_41db4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41db4f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41db4f)
  store %struct.Memory* %call_41db4f, %struct.Memory** %MEMORY

  ; Code: movq (%rdi), %rdi	 RIP: 41db53	 Bytes: 3
  %loadMem_41db53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41db53 = call %struct.Memory* @routine_movq___rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41db53)
  store %struct.Memory* %call_41db53, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0xc0(%rbp)	 RIP: 41db56	 Bytes: 7
  %loadMem_41db56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41db56 = call %struct.Memory* @routine_movq__rdi__MINUS0xc0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41db56)
  store %struct.Memory* %call_41db56, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41db5d	 Bytes: 3
  %loadMem_41db5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41db5d = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41db5d)
  store %struct.Memory* %call_41db5d, %struct.Memory** %MEMORY

  ; Code: movq -0xc0(%rbp), %rcx	 RIP: 41db60	 Bytes: 7
  %loadMem_41db60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41db60 = call %struct.Memory* @routine_movq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41db60)
  store %struct.Memory* %call_41db60, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 41db67	 Bytes: 5
  %loadMem1_41db67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41db67 = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41db67, i64 -116567, i64 5, i64 5)
  store %struct.Memory* %call1_41db67, %struct.Memory** %MEMORY

  %loadMem2_41db67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41db67 = load i64, i64* %3
  %call2_41db67 = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_41db67, %struct.Memory* %loadMem2_41db67)
  store %struct.Memory* %call2_41db67, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41db6c	 Bytes: 4
  %loadMem_41db6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41db6c = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41db6c)
  store %struct.Memory* %call_41db6c, %struct.Memory** %MEMORY

  ; Code: jne .L_41db7b	 RIP: 41db70	 Bytes: 6
  %loadMem_41db70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41db70 = call %struct.Memory* @routine_jne_.L_41db7b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41db70, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41db70, %struct.Memory** %MEMORY

  %loadBr_41db70 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41db70 = icmp eq i8 %loadBr_41db70, 1
  br i1 %cmpBr_41db70, label %block_.L_41db7b, label %block_41db76

block_41db76:
  ; Code: jmpq .L_41e05f	 RIP: 41db76	 Bytes: 5
  %loadMem_41db76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41db76 = call %struct.Memory* @routine_jmpq_.L_41e05f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41db76, i64 1257, i64 5)
  store %struct.Memory* %call_41db76, %struct.Memory** %MEMORY

  br label %block_.L_41e05f

  ; Code: .L_41db7b:	 RIP: 41db7b	 Bytes: 0
block_.L_41db7b:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41db7b	 Bytes: 4
  %loadMem_41db7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41db7b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41db7b)
  store %struct.Memory* %call_41db7b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x1c(%rax)	 RIP: 41db7f	 Bytes: 4
  %loadMem_41db7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41db7f = call %struct.Memory* @routine_cmpl__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41db7f)
  store %struct.Memory* %call_41db7f, %struct.Memory** %MEMORY

  ; Code: je .L_41dbb7	 RIP: 41db83	 Bytes: 6
  %loadMem_41db83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41db83 = call %struct.Memory* @routine_je_.L_41dbb7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41db83, i8* %BRANCH_TAKEN, i64 52, i64 6, i64 6)
  store %struct.Memory* %call_41db83, %struct.Memory** %MEMORY

  %loadBr_41db83 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41db83 = icmp eq i8 %loadBr_41db83, 1
  br i1 %cmpBr_41db83, label %block_.L_41dbb7, label %block_41db89

block_41db89:
  ; Code: movl $0x4, %esi	 RIP: 41db89	 Bytes: 5
  %loadMem_41db89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41db89 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41db89)
  store %struct.Memory* %call_41db89, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41db8e	 Bytes: 4
  %loadMem_41db8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41db8e = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41db8e)
  store %struct.Memory* %call_41db8e, %struct.Memory** %MEMORY

  ; Code: addq $0x1c0, %rax	 RIP: 41db92	 Bytes: 6
  %loadMem_41db92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41db92 = call %struct.Memory* @routine_addq__0x1c0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41db92)
  store %struct.Memory* %call_41db92, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41db98	 Bytes: 3
  %loadMem_41db98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41db98 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41db98)
  store %struct.Memory* %call_41db98, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 41db9b	 Bytes: 5
  %loadMem1_41db9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41db9b = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41db9b, i64 18405, i64 5, i64 5)
  store %struct.Memory* %call1_41db9b, %struct.Memory** %MEMORY

  %loadMem2_41db9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41db9b = load i64, i64* %3
  %call2_41db9b = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_41db9b, %struct.Memory* %loadMem2_41db9b)
  store %struct.Memory* %call2_41db9b, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %esi	 RIP: 41dba0	 Bytes: 5
  %loadMem_41dba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dba0 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dba0)
  store %struct.Memory* %call_41dba0, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41dba5	 Bytes: 4
  %loadMem_41dba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dba5 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dba5)
  store %struct.Memory* %call_41dba5, %struct.Memory** %MEMORY

  ; Code: addq $0x1c4, %rax	 RIP: 41dba9	 Bytes: 6
  %loadMem_41dba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dba9 = call %struct.Memory* @routine_addq__0x1c4___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dba9)
  store %struct.Memory* %call_41dba9, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41dbaf	 Bytes: 3
  %loadMem_41dbaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dbaf = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dbaf)
  store %struct.Memory* %call_41dbaf, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 41dbb2	 Bytes: 5
  %loadMem1_41dbb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41dbb2 = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41dbb2, i64 18382, i64 5, i64 5)
  store %struct.Memory* %call1_41dbb2, %struct.Memory** %MEMORY

  %loadMem2_41dbb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41dbb2 = load i64, i64* %3
  %call2_41dbb2 = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_41dbb2, %struct.Memory* %loadMem2_41dbb2)
  store %struct.Memory* %call2_41dbb2, %struct.Memory** %MEMORY

  ; Code: .L_41dbb7:	 RIP: 41dbb7	 Bytes: 0
  br label %block_.L_41dbb7
block_.L_41dbb7:

  ; Code: jmpq .L_41dbbc	 RIP: 41dbb7	 Bytes: 5
  %loadMem_41dbb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dbb7 = call %struct.Memory* @routine_jmpq_.L_41dbbc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dbb7, i64 5, i64 5)
  store %struct.Memory* %call_41dbb7, %struct.Memory** %MEMORY

  br label %block_.L_41dbbc

  ; Code: .L_41dbbc:	 RIP: 41dbbc	 Bytes: 0
block_.L_41dbbc:

  ; Code: movl $0x4, %eax	 RIP: 41dbbc	 Bytes: 5
  %loadMem_41dbbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dbbc = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dbbc)
  store %struct.Memory* %call_41dbbc, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41dbc1	 Bytes: 2
  %loadMem_41dbc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dbc1 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dbc1)
  store %struct.Memory* %call_41dbc1, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 41dbc3	 Bytes: 5
  %loadMem_41dbc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dbc3 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dbc3)
  store %struct.Memory* %call_41dbc3, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41dbc8	 Bytes: 2
  %loadMem_41dbc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dbc8 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dbc8)
  store %struct.Memory* %call_41dbc8, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41dbca	 Bytes: 4
  %loadMem_41dbca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dbca = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dbca)
  store %struct.Memory* %call_41dbca, %struct.Memory** %MEMORY

  ; Code: addq $0xa8, %rcx	 RIP: 41dbce	 Bytes: 7
  %loadMem_41dbce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dbce = call %struct.Memory* @routine_addq__0xa8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dbce)
  store %struct.Memory* %call_41dbce, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 41dbd5	 Bytes: 4
  %loadMem_41dbd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dbd5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dbd5)
  store %struct.Memory* %call_41dbd5, %struct.Memory** %MEMORY

  ; Code: movq (%rdi), %rdi	 RIP: 41dbd9	 Bytes: 3
  %loadMem_41dbd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dbd9 = call %struct.Memory* @routine_movq___rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dbd9)
  store %struct.Memory* %call_41dbd9, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0xc8(%rbp)	 RIP: 41dbdc	 Bytes: 7
  %loadMem_41dbdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dbdc = call %struct.Memory* @routine_movq__rdi__MINUS0xc8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dbdc)
  store %struct.Memory* %call_41dbdc, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41dbe3	 Bytes: 3
  %loadMem_41dbe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dbe3 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dbe3)
  store %struct.Memory* %call_41dbe3, %struct.Memory** %MEMORY

  ; Code: movq -0xc8(%rbp), %rcx	 RIP: 41dbe6	 Bytes: 7
  %loadMem_41dbe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dbe6 = call %struct.Memory* @routine_movq_MINUS0xc8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dbe6)
  store %struct.Memory* %call_41dbe6, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 41dbed	 Bytes: 5
  %loadMem1_41dbed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41dbed = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41dbed, i64 -116701, i64 5, i64 5)
  store %struct.Memory* %call1_41dbed, %struct.Memory** %MEMORY

  %loadMem2_41dbed = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41dbed = load i64, i64* %3
  %call2_41dbed = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_41dbed, %struct.Memory* %loadMem2_41dbed)
  store %struct.Memory* %call2_41dbed, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41dbf2	 Bytes: 4
  %loadMem_41dbf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dbf2 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dbf2)
  store %struct.Memory* %call_41dbf2, %struct.Memory** %MEMORY

  ; Code: jne .L_41dc01	 RIP: 41dbf6	 Bytes: 6
  %loadMem_41dbf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dbf6 = call %struct.Memory* @routine_jne_.L_41dc01(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dbf6, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41dbf6, %struct.Memory** %MEMORY

  %loadBr_41dbf6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41dbf6 = icmp eq i8 %loadBr_41dbf6, 1
  br i1 %cmpBr_41dbf6, label %block_.L_41dc01, label %block_41dbfc

block_41dbfc:
  ; Code: jmpq .L_41e05f	 RIP: 41dbfc	 Bytes: 5
  %loadMem_41dbfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dbfc = call %struct.Memory* @routine_jmpq_.L_41e05f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dbfc, i64 1123, i64 5)
  store %struct.Memory* %call_41dbfc, %struct.Memory** %MEMORY

  br label %block_.L_41e05f

  ; Code: .L_41dc01:	 RIP: 41dc01	 Bytes: 0
block_.L_41dc01:

  ; Code: movl $0x4, %eax	 RIP: 41dc01	 Bytes: 5
  %loadMem_41dc01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dc01 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dc01)
  store %struct.Memory* %call_41dc01, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41dc06	 Bytes: 2
  %loadMem_41dc06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dc06 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dc06)
  store %struct.Memory* %call_41dc06, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41dc08	 Bytes: 4
  %loadMem_41dc08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dc08 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dc08)
  store %struct.Memory* %call_41dc08, %struct.Memory** %MEMORY

  ; Code: movq 0xd0(%rcx), %rcx	 RIP: 41dc0c	 Bytes: 7
  %loadMem_41dc0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dc0c = call %struct.Memory* @routine_movq_0xd0__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dc0c)
  store %struct.Memory* %call_41dc0c, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdx	 RIP: 41dc13	 Bytes: 4
  %loadMem_41dc13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dc13 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dc13)
  store %struct.Memory* %call_41dc13, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rdx), %eax	 RIP: 41dc17	 Bytes: 6
  %loadMem_41dc17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dc17 = call %struct.Memory* @routine_movl_0x88__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dc17)
  store %struct.Memory* %call_41dc17, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41dc1d	 Bytes: 3
  %loadMem_41dc1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dc1d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dc1d)
  store %struct.Memory* %call_41dc1d, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 41dc20	 Bytes: 3
  %loadMem_41dc20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dc20 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dc20)
  store %struct.Memory* %call_41dc20, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 41dc23	 Bytes: 4
  %loadMem_41dc23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dc23 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dc23)
  store %struct.Memory* %call_41dc23, %struct.Memory** %MEMORY

  ; Code: movq (%rdi), %rdi	 RIP: 41dc27	 Bytes: 3
  %loadMem_41dc27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dc27 = call %struct.Memory* @routine_movq___rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dc27)
  store %struct.Memory* %call_41dc27, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0xd0(%rbp)	 RIP: 41dc2a	 Bytes: 7
  %loadMem_41dc2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dc2a = call %struct.Memory* @routine_movq__rdi__MINUS0xd0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dc2a)
  store %struct.Memory* %call_41dc2a, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41dc31	 Bytes: 3
  %loadMem_41dc31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dc31 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dc31)
  store %struct.Memory* %call_41dc31, %struct.Memory** %MEMORY

  ; Code: movq -0xd0(%rbp), %rcx	 RIP: 41dc34	 Bytes: 7
  %loadMem_41dc34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dc34 = call %struct.Memory* @routine_movq_MINUS0xd0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dc34)
  store %struct.Memory* %call_41dc34, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 41dc3b	 Bytes: 5
  %loadMem1_41dc3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41dc3b = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41dc3b, i64 -116779, i64 5, i64 5)
  store %struct.Memory* %call1_41dc3b, %struct.Memory** %MEMORY

  %loadMem2_41dc3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41dc3b = load i64, i64* %3
  %call2_41dc3b = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_41dc3b, %struct.Memory* %loadMem2_41dc3b)
  store %struct.Memory* %call2_41dc3b, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41dc40	 Bytes: 4
  %loadMem_41dc40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dc40 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dc40)
  store %struct.Memory* %call_41dc40, %struct.Memory** %MEMORY

  ; Code: jne .L_41dc4f	 RIP: 41dc44	 Bytes: 6
  %loadMem_41dc44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dc44 = call %struct.Memory* @routine_jne_.L_41dc4f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dc44, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41dc44, %struct.Memory** %MEMORY

  %loadBr_41dc44 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41dc44 = icmp eq i8 %loadBr_41dc44, 1
  br i1 %cmpBr_41dc44, label %block_.L_41dc4f, label %block_41dc4a

block_41dc4a:
  ; Code: jmpq .L_41e05f	 RIP: 41dc4a	 Bytes: 5
  %loadMem_41dc4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dc4a = call %struct.Memory* @routine_jmpq_.L_41e05f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dc4a, i64 1045, i64 5)
  store %struct.Memory* %call_41dc4a, %struct.Memory** %MEMORY

  br label %block_.L_41e05f

  ; Code: .L_41dc4f:	 RIP: 41dc4f	 Bytes: 0
block_.L_41dc4f:

  ; Code: movl $0x4, %eax	 RIP: 41dc4f	 Bytes: 5
  %loadMem_41dc4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dc4f = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dc4f)
  store %struct.Memory* %call_41dc4f, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41dc54	 Bytes: 2
  %loadMem_41dc54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dc54 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dc54)
  store %struct.Memory* %call_41dc54, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41dc56	 Bytes: 4
  %loadMem_41dc56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dc56 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dc56)
  store %struct.Memory* %call_41dc56, %struct.Memory** %MEMORY

  ; Code: movq 0xd8(%rcx), %rcx	 RIP: 41dc5a	 Bytes: 7
  %loadMem_41dc5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dc5a = call %struct.Memory* @routine_movq_0xd8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dc5a)
  store %struct.Memory* %call_41dc5a, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdx	 RIP: 41dc61	 Bytes: 4
  %loadMem_41dc61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dc61 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dc61)
  store %struct.Memory* %call_41dc61, %struct.Memory** %MEMORY

  ; Code: movl 0x88(%rdx), %eax	 RIP: 41dc65	 Bytes: 6
  %loadMem_41dc65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dc65 = call %struct.Memory* @routine_movl_0x88__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dc65)
  store %struct.Memory* %call_41dc65, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41dc6b	 Bytes: 3
  %loadMem_41dc6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dc6b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dc6b)
  store %struct.Memory* %call_41dc6b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 41dc6e	 Bytes: 3
  %loadMem_41dc6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dc6e = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dc6e)
  store %struct.Memory* %call_41dc6e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 41dc71	 Bytes: 4
  %loadMem_41dc71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dc71 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dc71)
  store %struct.Memory* %call_41dc71, %struct.Memory** %MEMORY

  ; Code: movq (%rdi), %rdi	 RIP: 41dc75	 Bytes: 3
  %loadMem_41dc75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dc75 = call %struct.Memory* @routine_movq___rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dc75)
  store %struct.Memory* %call_41dc75, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0xd8(%rbp)	 RIP: 41dc78	 Bytes: 7
  %loadMem_41dc78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dc78 = call %struct.Memory* @routine_movq__rdi__MINUS0xd8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dc78)
  store %struct.Memory* %call_41dc78, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41dc7f	 Bytes: 3
  %loadMem_41dc7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dc7f = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dc7f)
  store %struct.Memory* %call_41dc7f, %struct.Memory** %MEMORY

  ; Code: movq -0xd8(%rbp), %rcx	 RIP: 41dc82	 Bytes: 7
  %loadMem_41dc82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dc82 = call %struct.Memory* @routine_movq_MINUS0xd8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dc82)
  store %struct.Memory* %call_41dc82, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 41dc89	 Bytes: 5
  %loadMem1_41dc89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41dc89 = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41dc89, i64 -116857, i64 5, i64 5)
  store %struct.Memory* %call1_41dc89, %struct.Memory** %MEMORY

  %loadMem2_41dc89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41dc89 = load i64, i64* %3
  %call2_41dc89 = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_41dc89, %struct.Memory* %loadMem2_41dc89)
  store %struct.Memory* %call2_41dc89, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41dc8e	 Bytes: 4
  %loadMem_41dc8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dc8e = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dc8e)
  store %struct.Memory* %call_41dc8e, %struct.Memory** %MEMORY

  ; Code: jne .L_41dc9d	 RIP: 41dc92	 Bytes: 6
  %loadMem_41dc92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dc92 = call %struct.Memory* @routine_jne_.L_41dc9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dc92, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41dc92, %struct.Memory** %MEMORY

  %loadBr_41dc92 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41dc92 = icmp eq i8 %loadBr_41dc92, 1
  br i1 %cmpBr_41dc92, label %block_.L_41dc9d, label %block_41dc98

block_41dc98:
  ; Code: jmpq .L_41e05f	 RIP: 41dc98	 Bytes: 5
  %loadMem_41dc98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dc98 = call %struct.Memory* @routine_jmpq_.L_41e05f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dc98, i64 967, i64 5)
  store %struct.Memory* %call_41dc98, %struct.Memory** %MEMORY

  br label %block_.L_41e05f

  ; Code: .L_41dc9d:	 RIP: 41dc9d	 Bytes: 0
block_.L_41dc9d:

  ; Code: movl $0x1, -0x24(%rbp)	 RIP: 41dc9d	 Bytes: 7
  %loadMem_41dc9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dc9d = call %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dc9d)
  store %struct.Memory* %call_41dc9d, %struct.Memory** %MEMORY

  ; Code: .L_41dca4:	 RIP: 41dca4	 Bytes: 0
  br label %block_.L_41dca4
block_.L_41dca4:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 41dca4	 Bytes: 3
  %loadMem_41dca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dca4 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dca4)
  store %struct.Memory* %call_41dca4, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41dca7	 Bytes: 4
  %loadMem_41dca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dca7 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dca7)
  store %struct.Memory* %call_41dca7, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 41dcab	 Bytes: 6
  %loadMem_41dcab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dcab = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dcab)
  store %struct.Memory* %call_41dcab, %struct.Memory** %MEMORY

  ; Code: jg .L_41dd18	 RIP: 41dcb1	 Bytes: 6
  %loadMem_41dcb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dcb1 = call %struct.Memory* @routine_jg_.L_41dd18(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dcb1, i8* %BRANCH_TAKEN, i64 103, i64 6, i64 6)
  store %struct.Memory* %call_41dcb1, %struct.Memory** %MEMORY

  %loadBr_41dcb1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41dcb1 = icmp eq i8 %loadBr_41dcb1, 1
  br i1 %cmpBr_41dcb1, label %block_.L_41dd18, label %block_41dcb7

block_41dcb7:
  ; Code: movl $0x4, %eax	 RIP: 41dcb7	 Bytes: 5
  %loadMem_41dcb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dcb7 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dcb7)
  store %struct.Memory* %call_41dcb7, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41dcbc	 Bytes: 2
  %loadMem_41dcbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dcbc = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dcbc)
  store %struct.Memory* %call_41dcbc, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41dcbe	 Bytes: 4
  %loadMem_41dcbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dcbe = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dcbe)
  store %struct.Memory* %call_41dcbe, %struct.Memory** %MEMORY

  ; Code: movq 0x98(%rcx), %rcx	 RIP: 41dcc2	 Bytes: 7
  %loadMem_41dcc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dcc2 = call %struct.Memory* @routine_movq_0x98__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dcc2)
  store %struct.Memory* %call_41dcc2, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 41dcc9	 Bytes: 4
  %loadMem_41dcc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dcc9 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dcc9)
  store %struct.Memory* %call_41dcc9, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 41dccd	 Bytes: 4
  %loadMem_41dccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dccd = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dccd)
  store %struct.Memory* %call_41dccd, %struct.Memory** %MEMORY

  ; Code: movslq 0x677060, %rdx	 RIP: 41dcd1	 Bytes: 8
  %loadMem_41dcd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dcd1 = call %struct.Memory* @routine_movslq_0x677060___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dcd1)
  store %struct.Memory* %call_41dcd1, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 41dcd9	 Bytes: 4
  %loadMem_41dcd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dcd9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dcd9)
  store %struct.Memory* %call_41dcd9, %struct.Memory** %MEMORY

  ; Code: movq (%rdi), %rdi	 RIP: 41dcdd	 Bytes: 3
  %loadMem_41dcdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dcdd = call %struct.Memory* @routine_movq___rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dcdd)
  store %struct.Memory* %call_41dcdd, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0xe0(%rbp)	 RIP: 41dce0	 Bytes: 7
  %loadMem_41dce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dce0 = call %struct.Memory* @routine_movq__rdi__MINUS0xe0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dce0)
  store %struct.Memory* %call_41dce0, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41dce7	 Bytes: 3
  %loadMem_41dce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dce7 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dce7)
  store %struct.Memory* %call_41dce7, %struct.Memory** %MEMORY

  ; Code: movq -0xe0(%rbp), %rcx	 RIP: 41dcea	 Bytes: 7
  %loadMem_41dcea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dcea = call %struct.Memory* @routine_movq_MINUS0xe0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dcea)
  store %struct.Memory* %call_41dcea, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 41dcf1	 Bytes: 5
  %loadMem1_41dcf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41dcf1 = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41dcf1, i64 -116961, i64 5, i64 5)
  store %struct.Memory* %call1_41dcf1, %struct.Memory** %MEMORY

  %loadMem2_41dcf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41dcf1 = load i64, i64* %3
  %call2_41dcf1 = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_41dcf1, %struct.Memory* %loadMem2_41dcf1)
  store %struct.Memory* %call2_41dcf1, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41dcf6	 Bytes: 4
  %loadMem_41dcf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dcf6 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dcf6)
  store %struct.Memory* %call_41dcf6, %struct.Memory** %MEMORY

  ; Code: jne .L_41dd05	 RIP: 41dcfa	 Bytes: 6
  %loadMem_41dcfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dcfa = call %struct.Memory* @routine_jne_.L_41dd05(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dcfa, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41dcfa, %struct.Memory** %MEMORY

  %loadBr_41dcfa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41dcfa = icmp eq i8 %loadBr_41dcfa, 1
  br i1 %cmpBr_41dcfa, label %block_.L_41dd05, label %block_41dd00

block_41dd00:
  ; Code: jmpq .L_41e05f	 RIP: 41dd00	 Bytes: 5
  %loadMem_41dd00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd00 = call %struct.Memory* @routine_jmpq_.L_41e05f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd00, i64 863, i64 5)
  store %struct.Memory* %call_41dd00, %struct.Memory** %MEMORY

  br label %block_.L_41e05f

  ; Code: .L_41dd05:	 RIP: 41dd05	 Bytes: 0
block_.L_41dd05:

  ; Code: jmpq .L_41dd0a	 RIP: 41dd05	 Bytes: 5
  %loadMem_41dd05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd05 = call %struct.Memory* @routine_jmpq_.L_41dd0a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd05, i64 5, i64 5)
  store %struct.Memory* %call_41dd05, %struct.Memory** %MEMORY

  br label %block_.L_41dd0a

  ; Code: .L_41dd0a:	 RIP: 41dd0a	 Bytes: 0
block_.L_41dd0a:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 41dd0a	 Bytes: 3
  %loadMem_41dd0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd0a = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd0a)
  store %struct.Memory* %call_41dd0a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41dd0d	 Bytes: 3
  %loadMem_41dd0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd0d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd0d)
  store %struct.Memory* %call_41dd0d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 41dd10	 Bytes: 3
  %loadMem_41dd10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd10 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd10)
  store %struct.Memory* %call_41dd10, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41dca4	 RIP: 41dd13	 Bytes: 5
  %loadMem_41dd13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd13 = call %struct.Memory* @routine_jmpq_.L_41dca4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd13, i64 -111, i64 5)
  store %struct.Memory* %call_41dd13, %struct.Memory** %MEMORY

  br label %block_.L_41dca4

  ; Code: .L_41dd18:	 RIP: 41dd18	 Bytes: 0
block_.L_41dd18:

  ; Code: movl $0x1, -0x24(%rbp)	 RIP: 41dd18	 Bytes: 7
  %loadMem_41dd18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd18 = call %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd18)
  store %struct.Memory* %call_41dd18, %struct.Memory** %MEMORY

  ; Code: .L_41dd1f:	 RIP: 41dd1f	 Bytes: 0
  br label %block_.L_41dd1f
block_.L_41dd1f:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 41dd1f	 Bytes: 3
  %loadMem_41dd1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd1f = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd1f)
  store %struct.Memory* %call_41dd1f, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41dd22	 Bytes: 4
  %loadMem_41dd22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd22 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd22)
  store %struct.Memory* %call_41dd22, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 41dd26	 Bytes: 6
  %loadMem_41dd26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd26 = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd26)
  store %struct.Memory* %call_41dd26, %struct.Memory** %MEMORY

  ; Code: jge .L_41dd93	 RIP: 41dd2c	 Bytes: 6
  %loadMem_41dd2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd2c = call %struct.Memory* @routine_jge_.L_41dd93(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd2c, i8* %BRANCH_TAKEN, i64 103, i64 6, i64 6)
  store %struct.Memory* %call_41dd2c, %struct.Memory** %MEMORY

  %loadBr_41dd2c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41dd2c = icmp eq i8 %loadBr_41dd2c, 1
  br i1 %cmpBr_41dd2c, label %block_.L_41dd93, label %block_41dd32

block_41dd32:
  ; Code: movl $0x4, %eax	 RIP: 41dd32	 Bytes: 5
  %loadMem_41dd32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd32 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd32)
  store %struct.Memory* %call_41dd32, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41dd37	 Bytes: 2
  %loadMem_41dd37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd37 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd37)
  store %struct.Memory* %call_41dd37, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41dd39	 Bytes: 4
  %loadMem_41dd39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd39 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd39)
  store %struct.Memory* %call_41dd39, %struct.Memory** %MEMORY

  ; Code: movq 0xa0(%rcx), %rcx	 RIP: 41dd3d	 Bytes: 7
  %loadMem_41dd3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd3d = call %struct.Memory* @routine_movq_0xa0__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd3d)
  store %struct.Memory* %call_41dd3d, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 41dd44	 Bytes: 4
  %loadMem_41dd44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd44 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd44)
  store %struct.Memory* %call_41dd44, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 41dd48	 Bytes: 4
  %loadMem_41dd48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd48 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd48)
  store %struct.Memory* %call_41dd48, %struct.Memory** %MEMORY

  ; Code: movslq 0x677060, %rdx	 RIP: 41dd4c	 Bytes: 8
  %loadMem_41dd4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd4c = call %struct.Memory* @routine_movslq_0x677060___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd4c)
  store %struct.Memory* %call_41dd4c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 41dd54	 Bytes: 4
  %loadMem_41dd54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd54 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd54)
  store %struct.Memory* %call_41dd54, %struct.Memory** %MEMORY

  ; Code: movq (%rdi), %rdi	 RIP: 41dd58	 Bytes: 3
  %loadMem_41dd58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd58 = call %struct.Memory* @routine_movq___rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd58)
  store %struct.Memory* %call_41dd58, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0xe8(%rbp)	 RIP: 41dd5b	 Bytes: 7
  %loadMem_41dd5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd5b = call %struct.Memory* @routine_movq__rdi__MINUS0xe8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd5b)
  store %struct.Memory* %call_41dd5b, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41dd62	 Bytes: 3
  %loadMem_41dd62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd62 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd62)
  store %struct.Memory* %call_41dd62, %struct.Memory** %MEMORY

  ; Code: movq -0xe8(%rbp), %rcx	 RIP: 41dd65	 Bytes: 7
  %loadMem_41dd65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd65 = call %struct.Memory* @routine_movq_MINUS0xe8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd65)
  store %struct.Memory* %call_41dd65, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 41dd6c	 Bytes: 5
  %loadMem1_41dd6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41dd6c = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41dd6c, i64 -117084, i64 5, i64 5)
  store %struct.Memory* %call1_41dd6c, %struct.Memory** %MEMORY

  %loadMem2_41dd6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41dd6c = load i64, i64* %3
  %call2_41dd6c = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_41dd6c, %struct.Memory* %loadMem2_41dd6c)
  store %struct.Memory* %call2_41dd6c, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41dd71	 Bytes: 4
  %loadMem_41dd71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd71 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd71)
  store %struct.Memory* %call_41dd71, %struct.Memory** %MEMORY

  ; Code: jne .L_41dd80	 RIP: 41dd75	 Bytes: 6
  %loadMem_41dd75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd75 = call %struct.Memory* @routine_jne_.L_41dd80(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd75, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41dd75, %struct.Memory** %MEMORY

  %loadBr_41dd75 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41dd75 = icmp eq i8 %loadBr_41dd75, 1
  br i1 %cmpBr_41dd75, label %block_.L_41dd80, label %block_41dd7b

block_41dd7b:
  ; Code: jmpq .L_41e05f	 RIP: 41dd7b	 Bytes: 5
  %loadMem_41dd7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd7b = call %struct.Memory* @routine_jmpq_.L_41e05f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd7b, i64 740, i64 5)
  store %struct.Memory* %call_41dd7b, %struct.Memory** %MEMORY

  br label %block_.L_41e05f

  ; Code: .L_41dd80:	 RIP: 41dd80	 Bytes: 0
block_.L_41dd80:

  ; Code: jmpq .L_41dd85	 RIP: 41dd80	 Bytes: 5
  %loadMem_41dd80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd80 = call %struct.Memory* @routine_jmpq_.L_41dd85(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd80, i64 5, i64 5)
  store %struct.Memory* %call_41dd80, %struct.Memory** %MEMORY

  br label %block_.L_41dd85

  ; Code: .L_41dd85:	 RIP: 41dd85	 Bytes: 0
block_.L_41dd85:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 41dd85	 Bytes: 3
  %loadMem_41dd85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd85 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd85)
  store %struct.Memory* %call_41dd85, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41dd88	 Bytes: 3
  %loadMem_41dd88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd88 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd88)
  store %struct.Memory* %call_41dd88, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 41dd8b	 Bytes: 3
  %loadMem_41dd8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd8b = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd8b)
  store %struct.Memory* %call_41dd8b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41dd1f	 RIP: 41dd8e	 Bytes: 5
  %loadMem_41dd8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd8e = call %struct.Memory* @routine_jmpq_.L_41dd1f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd8e, i64 -111, i64 5)
  store %struct.Memory* %call_41dd8e, %struct.Memory** %MEMORY

  br label %block_.L_41dd1f

  ; Code: .L_41dd93:	 RIP: 41dd93	 Bytes: 0
block_.L_41dd93:

  ; Code: movl $0x1, -0x24(%rbp)	 RIP: 41dd93	 Bytes: 7
  %loadMem_41dd93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd93 = call %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd93)
  store %struct.Memory* %call_41dd93, %struct.Memory** %MEMORY

  ; Code: .L_41dd9a:	 RIP: 41dd9a	 Bytes: 0
  br label %block_.L_41dd9a
block_.L_41dd9a:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 41dd9a	 Bytes: 3
  %loadMem_41dd9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd9a = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd9a)
  store %struct.Memory* %call_41dd9a, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41dd9d	 Bytes: 4
  %loadMem_41dd9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dd9d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dd9d)
  store %struct.Memory* %call_41dd9d, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 41dda1	 Bytes: 6
  %loadMem_41dda1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dda1 = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dda1)
  store %struct.Memory* %call_41dda1, %struct.Memory** %MEMORY

  ; Code: jge .L_41de0d	 RIP: 41dda7	 Bytes: 6
  %loadMem_41dda7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dda7 = call %struct.Memory* @routine_jge_.L_41de0d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dda7, i8* %BRANCH_TAKEN, i64 102, i64 6, i64 6)
  store %struct.Memory* %call_41dda7, %struct.Memory** %MEMORY

  %loadBr_41dda7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41dda7 = icmp eq i8 %loadBr_41dda7, 1
  br i1 %cmpBr_41dda7, label %block_.L_41de0d, label %block_41ddad

block_41ddad:
  ; Code: movl $0x4, %eax	 RIP: 41ddad	 Bytes: 5
  %loadMem_41ddad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ddad = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ddad)
  store %struct.Memory* %call_41ddad, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 41ddb2	 Bytes: 2
  %loadMem_41ddb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ddb2 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ddb2)
  store %struct.Memory* %call_41ddb2, %struct.Memory** %MEMORY

  ; Code: movl $0x7, %eax	 RIP: 41ddb4	 Bytes: 5
  %loadMem_41ddb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ddb4 = call %struct.Memory* @routine_movl__0x7___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ddb4)
  store %struct.Memory* %call_41ddb4, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 41ddb9	 Bytes: 2
  %loadMem_41ddb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ddb9 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ddb9)
  store %struct.Memory* %call_41ddb9, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41ddbb	 Bytes: 4
  %loadMem_41ddbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ddbb = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ddbb)
  store %struct.Memory* %call_41ddbb, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rcx), %rcx	 RIP: 41ddbf	 Bytes: 7
  %loadMem_41ddbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ddbf = call %struct.Memory* @routine_movq_0x90__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ddbf)
  store %struct.Memory* %call_41ddbf, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdi	 RIP: 41ddc6	 Bytes: 4
  %loadMem_41ddc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ddc6 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ddc6)
  store %struct.Memory* %call_41ddc6, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdi,8), %rcx	 RIP: 41ddca	 Bytes: 4
  %loadMem_41ddca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ddca = call %struct.Memory* @routine_movq___rcx__rdi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ddca)
  store %struct.Memory* %call_41ddca, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 41ddce	 Bytes: 4
  %loadMem_41ddce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ddce = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ddce)
  store %struct.Memory* %call_41ddce, %struct.Memory** %MEMORY

  ; Code: movq (%rdi), %rdi	 RIP: 41ddd2	 Bytes: 3
  %loadMem_41ddd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ddd2 = call %struct.Memory* @routine_movq___rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ddd2)
  store %struct.Memory* %call_41ddd2, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0xf0(%rbp)	 RIP: 41ddd5	 Bytes: 7
  %loadMem_41ddd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ddd5 = call %struct.Memory* @routine_movq__rdi__MINUS0xf0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ddd5)
  store %struct.Memory* %call_41ddd5, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41dddc	 Bytes: 3
  %loadMem_41dddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dddc = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dddc)
  store %struct.Memory* %call_41dddc, %struct.Memory** %MEMORY

  ; Code: movq -0xf0(%rbp), %rcx	 RIP: 41dddf	 Bytes: 7
  %loadMem_41dddf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dddf = call %struct.Memory* @routine_movq_MINUS0xf0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dddf)
  store %struct.Memory* %call_41dddf, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 41dde6	 Bytes: 5
  %loadMem1_41dde6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41dde6 = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41dde6, i64 -117206, i64 5, i64 5)
  store %struct.Memory* %call1_41dde6, %struct.Memory** %MEMORY

  %loadMem2_41dde6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41dde6 = load i64, i64* %3
  %call2_41dde6 = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_41dde6, %struct.Memory* %loadMem2_41dde6)
  store %struct.Memory* %call2_41dde6, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 41ddeb	 Bytes: 4
  %loadMem_41ddeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ddeb = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ddeb)
  store %struct.Memory* %call_41ddeb, %struct.Memory** %MEMORY

  ; Code: jne .L_41ddfa	 RIP: 41ddef	 Bytes: 6
  %loadMem_41ddef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ddef = call %struct.Memory* @routine_jne_.L_41ddfa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ddef, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_41ddef, %struct.Memory** %MEMORY

  %loadBr_41ddef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ddef = icmp eq i8 %loadBr_41ddef, 1
  br i1 %cmpBr_41ddef, label %block_.L_41ddfa, label %block_41ddf5

block_41ddf5:
  ; Code: jmpq .L_41e05f	 RIP: 41ddf5	 Bytes: 5
  %loadMem_41ddf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ddf5 = call %struct.Memory* @routine_jmpq_.L_41e05f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ddf5, i64 618, i64 5)
  store %struct.Memory* %call_41ddf5, %struct.Memory** %MEMORY

  br label %block_.L_41e05f

  ; Code: .L_41ddfa:	 RIP: 41ddfa	 Bytes: 0
block_.L_41ddfa:

  ; Code: jmpq .L_41ddff	 RIP: 41ddfa	 Bytes: 5
  %loadMem_41ddfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ddfa = call %struct.Memory* @routine_jmpq_.L_41ddff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ddfa, i64 5, i64 5)
  store %struct.Memory* %call_41ddfa, %struct.Memory** %MEMORY

  br label %block_.L_41ddff

  ; Code: .L_41ddff:	 RIP: 41ddff	 Bytes: 0
block_.L_41ddff:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 41ddff	 Bytes: 3
  %loadMem_41ddff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ddff = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ddff)
  store %struct.Memory* %call_41ddff, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41de02	 Bytes: 3
  %loadMem_41de02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de02 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de02)
  store %struct.Memory* %call_41de02, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 41de05	 Bytes: 3
  %loadMem_41de05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de05 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de05)
  store %struct.Memory* %call_41de05, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41dd9a	 RIP: 41de08	 Bytes: 5
  %loadMem_41de08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de08 = call %struct.Memory* @routine_jmpq_.L_41dd9a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de08, i64 -110, i64 5)
  store %struct.Memory* %call_41de08, %struct.Memory** %MEMORY

  br label %block_.L_41dd9a

  ; Code: .L_41de0d:	 RIP: 41de0d	 Bytes: 0
block_.L_41de0d:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41de0d	 Bytes: 4
  %loadMem_41de0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de0d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de0d)
  store %struct.Memory* %call_41de0d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x1c(%rax)	 RIP: 41de11	 Bytes: 4
  %loadMem_41de11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de11 = call %struct.Memory* @routine_cmpl__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de11)
  store %struct.Memory* %call_41de11, %struct.Memory** %MEMORY

  ; Code: je .L_41e022	 RIP: 41de15	 Bytes: 6
  %loadMem_41de15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de15 = call %struct.Memory* @routine_je_.L_41e022(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de15, i8* %BRANCH_TAKEN, i64 525, i64 6, i64 6)
  store %struct.Memory* %call_41de15, %struct.Memory** %MEMORY

  %loadBr_41de15 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41de15 = icmp eq i8 %loadBr_41de15, 1
  br i1 %cmpBr_41de15, label %block_.L_41e022, label %block_41de1b

block_41de1b:
  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 41de1b	 Bytes: 7
  %loadMem_41de1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de1b = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de1b)
  store %struct.Memory* %call_41de1b, %struct.Memory** %MEMORY

  ; Code: .L_41de22:	 RIP: 41de22	 Bytes: 0
  br label %block_.L_41de22
block_.L_41de22:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 41de22	 Bytes: 3
  %loadMem_41de22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de22 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de22)
  store %struct.Memory* %call_41de22, %struct.Memory** %MEMORY

  ; Code: cmpl 0x677060, %eax	 RIP: 41de25	 Bytes: 7
  %loadMem_41de25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de25 = call %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de25)
  store %struct.Memory* %call_41de25, %struct.Memory** %MEMORY

  ; Code: jge .L_41de62	 RIP: 41de2c	 Bytes: 6
  %loadMem_41de2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de2c = call %struct.Memory* @routine_jge_.L_41de62(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de2c, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_41de2c, %struct.Memory** %MEMORY

  %loadBr_41de2c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41de2c = icmp eq i8 %loadBr_41de2c, 1
  br i1 %cmpBr_41de2c, label %block_.L_41de62, label %block_41de32

block_41de32:
  ; Code: movl $0x4, %esi	 RIP: 41de32	 Bytes: 5
  %loadMem_41de32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de32 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de32)
  store %struct.Memory* %call_41de32, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41de37	 Bytes: 4
  %loadMem_41de37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de37 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de37)
  store %struct.Memory* %call_41de37, %struct.Memory** %MEMORY

  ; Code: addq $0xe0, %rax	 RIP: 41de3b	 Bytes: 6
  %loadMem_41de3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de3b = call %struct.Memory* @routine_addq__0xe0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de3b)
  store %struct.Memory* %call_41de3b, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 41de41	 Bytes: 4
  %loadMem_41de41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de41 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de41)
  store %struct.Memory* %call_41de41, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rcx	 RIP: 41de45	 Bytes: 4
  %loadMem_41de45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de45 = call %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de45)
  store %struct.Memory* %call_41de45, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41de49	 Bytes: 3
  %loadMem_41de49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de49 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de49)
  store %struct.Memory* %call_41de49, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41de4c	 Bytes: 3
  %loadMem_41de4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de4c = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de4c)
  store %struct.Memory* %call_41de4c, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 41de4f	 Bytes: 5
  %loadMem1_41de4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41de4f = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41de4f, i64 17713, i64 5, i64 5)
  store %struct.Memory* %call1_41de4f, %struct.Memory** %MEMORY

  %loadMem2_41de4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41de4f = load i64, i64* %3
  %call2_41de4f = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_41de4f, %struct.Memory* %loadMem2_41de4f)
  store %struct.Memory* %call2_41de4f, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 41de54	 Bytes: 3
  %loadMem_41de54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de54 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de54)
  store %struct.Memory* %call_41de54, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41de57	 Bytes: 3
  %loadMem_41de57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de57 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de57)
  store %struct.Memory* %call_41de57, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 41de5a	 Bytes: 3
  %loadMem_41de5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de5a = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de5a)
  store %struct.Memory* %call_41de5a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41de22	 RIP: 41de5d	 Bytes: 5
  %loadMem_41de5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de5d = call %struct.Memory* @routine_jmpq_.L_41de22(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de5d, i64 -59, i64 5)
  store %struct.Memory* %call_41de5d, %struct.Memory** %MEMORY

  br label %block_.L_41de22

  ; Code: .L_41de62:	 RIP: 41de62	 Bytes: 0
block_.L_41de62:

  ; Code: movl $0x4, %esi	 RIP: 41de62	 Bytes: 5
  %loadMem_41de62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de62 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de62)
  store %struct.Memory* %call_41de62, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41de67	 Bytes: 4
  %loadMem_41de67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de67 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de67)
  store %struct.Memory* %call_41de67, %struct.Memory** %MEMORY

  ; Code: addq $0x130, %rax	 RIP: 41de6b	 Bytes: 6
  %loadMem_41de6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de6b = call %struct.Memory* @routine_addq__0x130___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de6b)
  store %struct.Memory* %call_41de6b, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41de71	 Bytes: 3
  %loadMem_41de71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de71 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de71)
  store %struct.Memory* %call_41de71, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 41de74	 Bytes: 5
  %loadMem1_41de74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41de74 = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41de74, i64 17676, i64 5, i64 5)
  store %struct.Memory* %call1_41de74, %struct.Memory** %MEMORY

  %loadMem2_41de74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41de74 = load i64, i64* %3
  %call2_41de74 = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_41de74, %struct.Memory* %loadMem2_41de74)
  store %struct.Memory* %call2_41de74, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %esi	 RIP: 41de79	 Bytes: 5
  %loadMem_41de79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de79 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de79)
  store %struct.Memory* %call_41de79, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41de7e	 Bytes: 4
  %loadMem_41de7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de7e = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de7e)
  store %struct.Memory* %call_41de7e, %struct.Memory** %MEMORY

  ; Code: addq $0xa8, %rax	 RIP: 41de82	 Bytes: 6
  %loadMem_41de82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de82 = call %struct.Memory* @routine_addq__0xa8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de82)
  store %struct.Memory* %call_41de82, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41de88	 Bytes: 3
  %loadMem_41de88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de88 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de88)
  store %struct.Memory* %call_41de88, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 41de8b	 Bytes: 5
  %loadMem1_41de8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41de8b = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41de8b, i64 17653, i64 5, i64 5)
  store %struct.Memory* %call1_41de8b, %struct.Memory** %MEMORY

  %loadMem2_41de8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41de8b = load i64, i64* %3
  %call2_41de8b = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_41de8b, %struct.Memory* %loadMem2_41de8b)
  store %struct.Memory* %call2_41de8b, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x24(%rbp)	 RIP: 41de90	 Bytes: 7
  %loadMem_41de90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de90 = call %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de90)
  store %struct.Memory* %call_41de90, %struct.Memory** %MEMORY

  ; Code: .L_41de97:	 RIP: 41de97	 Bytes: 0
  br label %block_.L_41de97
block_.L_41de97:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 41de97	 Bytes: 3
  %loadMem_41de97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de97 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de97)
  store %struct.Memory* %call_41de97, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41de9a	 Bytes: 4
  %loadMem_41de9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de9a = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de9a)
  store %struct.Memory* %call_41de9a, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 41de9e	 Bytes: 6
  %loadMem_41de9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41de9e = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41de9e)
  store %struct.Memory* %call_41de9e, %struct.Memory** %MEMORY

  ; Code: jg .L_41e01d	 RIP: 41dea4	 Bytes: 6
  %loadMem_41dea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dea4 = call %struct.Memory* @routine_jg_.L_41e01d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dea4, i8* %BRANCH_TAKEN, i64 377, i64 6, i64 6)
  store %struct.Memory* %call_41dea4, %struct.Memory** %MEMORY

  %loadBr_41dea4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41dea4 = icmp eq i8 %loadBr_41dea4, 1
  br i1 %cmpBr_41dea4, label %block_.L_41e01d, label %block_41deaa

block_41deaa:
  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 41deaa	 Bytes: 7
  %loadMem_41deaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41deaa = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41deaa)
  store %struct.Memory* %call_41deaa, %struct.Memory** %MEMORY

  ; Code: .L_41deb1:	 RIP: 41deb1	 Bytes: 0
  br label %block_.L_41deb1
block_.L_41deb1:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 41deb1	 Bytes: 3
  %loadMem_41deb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41deb1 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41deb1)
  store %struct.Memory* %call_41deb1, %struct.Memory** %MEMORY

  ; Code: cmpl 0x677060, %eax	 RIP: 41deb4	 Bytes: 7
  %loadMem_41deb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41deb4 = call %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41deb4)
  store %struct.Memory* %call_41deb4, %struct.Memory** %MEMORY

  ; Code: jge .L_41defa	 RIP: 41debb	 Bytes: 6
  %loadMem_41debb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41debb = call %struct.Memory* @routine_jge_.L_41defa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41debb, i8* %BRANCH_TAKEN, i64 63, i64 6, i64 6)
  store %struct.Memory* %call_41debb, %struct.Memory** %MEMORY

  %loadBr_41debb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41debb = icmp eq i8 %loadBr_41debb, 1
  br i1 %cmpBr_41debb, label %block_.L_41defa, label %block_41dec1

block_41dec1:
  ; Code: movl $0x4, %esi	 RIP: 41dec1	 Bytes: 5
  %loadMem_41dec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dec1 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dec1)
  store %struct.Memory* %call_41dec1, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41dec6	 Bytes: 4
  %loadMem_41dec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dec6 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dec6)
  store %struct.Memory* %call_41dec6, %struct.Memory** %MEMORY

  ; Code: movq 0x98(%rax), %rax	 RIP: 41deca	 Bytes: 7
  %loadMem_41deca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41deca = call %struct.Memory* @routine_movq_0x98__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41deca)
  store %struct.Memory* %call_41deca, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 41ded1	 Bytes: 4
  %loadMem_41ded1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ded1 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ded1)
  store %struct.Memory* %call_41ded1, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 41ded5	 Bytes: 4
  %loadMem_41ded5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ded5 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ded5)
  store %struct.Memory* %call_41ded5, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 41ded9	 Bytes: 4
  %loadMem_41ded9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41ded9 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41ded9)
  store %struct.Memory* %call_41ded9, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rcx	 RIP: 41dedd	 Bytes: 4
  %loadMem_41dedd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dedd = call %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dedd)
  store %struct.Memory* %call_41dedd, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41dee1	 Bytes: 3
  %loadMem_41dee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dee1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dee1)
  store %struct.Memory* %call_41dee1, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41dee4	 Bytes: 3
  %loadMem_41dee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dee4 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dee4)
  store %struct.Memory* %call_41dee4, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 41dee7	 Bytes: 5
  %loadMem1_41dee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41dee7 = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41dee7, i64 17561, i64 5, i64 5)
  store %struct.Memory* %call1_41dee7, %struct.Memory** %MEMORY

  %loadMem2_41dee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41dee7 = load i64, i64* %3
  %call2_41dee7 = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_41dee7, %struct.Memory* %loadMem2_41dee7)
  store %struct.Memory* %call2_41dee7, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 41deec	 Bytes: 3
  %loadMem_41deec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41deec = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41deec)
  store %struct.Memory* %call_41deec, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41deef	 Bytes: 3
  %loadMem_41deef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41deef = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41deef)
  store %struct.Memory* %call_41deef, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 41def2	 Bytes: 3
  %loadMem_41def2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41def2 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41def2)
  store %struct.Memory* %call_41def2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41deb1	 RIP: 41def5	 Bytes: 5
  %loadMem_41def5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41def5 = call %struct.Memory* @routine_jmpq_.L_41deb1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41def5, i64 -68, i64 5)
  store %struct.Memory* %call_41def5, %struct.Memory** %MEMORY

  br label %block_.L_41deb1

  ; Code: .L_41defa:	 RIP: 41defa	 Bytes: 0
block_.L_41defa:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 41defa	 Bytes: 3
  %loadMem_41defa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41defa = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41defa)
  store %struct.Memory* %call_41defa, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 41defd	 Bytes: 4
  %loadMem_41defd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41defd = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41defd)
  store %struct.Memory* %call_41defd, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rcx), %eax	 RIP: 41df01	 Bytes: 6
  %loadMem_41df01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df01 = call %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df01)
  store %struct.Memory* %call_41df01, %struct.Memory** %MEMORY

  ; Code: jge .L_41df62	 RIP: 41df07	 Bytes: 6
  %loadMem_41df07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df07 = call %struct.Memory* @routine_jge_.L_41df62(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df07, i8* %BRANCH_TAKEN, i64 91, i64 6, i64 6)
  store %struct.Memory* %call_41df07, %struct.Memory** %MEMORY

  %loadBr_41df07 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41df07 = icmp eq i8 %loadBr_41df07, 1
  br i1 %cmpBr_41df07, label %block_.L_41df62, label %block_41df0d

block_41df0d:
  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 41df0d	 Bytes: 7
  %loadMem_41df0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df0d = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df0d)
  store %struct.Memory* %call_41df0d, %struct.Memory** %MEMORY

  ; Code: .L_41df14:	 RIP: 41df14	 Bytes: 0
  br label %block_.L_41df14
block_.L_41df14:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 41df14	 Bytes: 3
  %loadMem_41df14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df14 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df14)
  store %struct.Memory* %call_41df14, %struct.Memory** %MEMORY

  ; Code: cmpl 0x677060, %eax	 RIP: 41df17	 Bytes: 7
  %loadMem_41df17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df17 = call %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df17)
  store %struct.Memory* %call_41df17, %struct.Memory** %MEMORY

  ; Code: jge .L_41df5d	 RIP: 41df1e	 Bytes: 6
  %loadMem_41df1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df1e = call %struct.Memory* @routine_jge_.L_41df5d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df1e, i8* %BRANCH_TAKEN, i64 63, i64 6, i64 6)
  store %struct.Memory* %call_41df1e, %struct.Memory** %MEMORY

  %loadBr_41df1e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41df1e = icmp eq i8 %loadBr_41df1e, 1
  br i1 %cmpBr_41df1e, label %block_.L_41df5d, label %block_41df24

block_41df24:
  ; Code: movl $0x4, %esi	 RIP: 41df24	 Bytes: 5
  %loadMem_41df24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df24 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df24)
  store %struct.Memory* %call_41df24, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41df29	 Bytes: 4
  %loadMem_41df29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df29 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df29)
  store %struct.Memory* %call_41df29, %struct.Memory** %MEMORY

  ; Code: movq 0xa0(%rax), %rax	 RIP: 41df2d	 Bytes: 7
  %loadMem_41df2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df2d = call %struct.Memory* @routine_movq_0xa0__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df2d)
  store %struct.Memory* %call_41df2d, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 41df34	 Bytes: 4
  %loadMem_41df34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df34 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df34)
  store %struct.Memory* %call_41df34, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 41df38	 Bytes: 4
  %loadMem_41df38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df38 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df38)
  store %struct.Memory* %call_41df38, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 41df3c	 Bytes: 4
  %loadMem_41df3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df3c = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df3c)
  store %struct.Memory* %call_41df3c, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rcx	 RIP: 41df40	 Bytes: 4
  %loadMem_41df40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df40 = call %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df40)
  store %struct.Memory* %call_41df40, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41df44	 Bytes: 3
  %loadMem_41df44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df44 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df44)
  store %struct.Memory* %call_41df44, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41df47	 Bytes: 3
  %loadMem_41df47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df47 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df47)
  store %struct.Memory* %call_41df47, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 41df4a	 Bytes: 5
  %loadMem1_41df4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41df4a = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41df4a, i64 17462, i64 5, i64 5)
  store %struct.Memory* %call1_41df4a, %struct.Memory** %MEMORY

  %loadMem2_41df4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41df4a = load i64, i64* %3
  %call2_41df4a = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_41df4a, %struct.Memory* %loadMem2_41df4a)
  store %struct.Memory* %call2_41df4a, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 41df4f	 Bytes: 3
  %loadMem_41df4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df4f = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df4f)
  store %struct.Memory* %call_41df4f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41df52	 Bytes: 3
  %loadMem_41df52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df52 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df52)
  store %struct.Memory* %call_41df52, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 41df55	 Bytes: 3
  %loadMem_41df55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df55 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df55)
  store %struct.Memory* %call_41df55, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41df14	 RIP: 41df58	 Bytes: 5
  %loadMem_41df58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df58 = call %struct.Memory* @routine_jmpq_.L_41df14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df58, i64 -68, i64 5)
  store %struct.Memory* %call_41df58, %struct.Memory** %MEMORY

  br label %block_.L_41df14

  ; Code: .L_41df5d:	 RIP: 41df5d	 Bytes: 0
block_.L_41df5d:

  ; Code: jmpq .L_41df62	 RIP: 41df5d	 Bytes: 5
  %loadMem_41df5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df5d = call %struct.Memory* @routine_jmpq_.L_41df62(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df5d, i64 5, i64 5)
  store %struct.Memory* %call_41df5d, %struct.Memory** %MEMORY

  br label %block_.L_41df62

  ; Code: .L_41df62:	 RIP: 41df62	 Bytes: 0
block_.L_41df62:

  ; Code: movl $0x4, %esi	 RIP: 41df62	 Bytes: 5
  %loadMem_41df62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df62 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df62)
  store %struct.Memory* %call_41df62, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41df67	 Bytes: 4
  %loadMem_41df67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df67 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df67)
  store %struct.Memory* %call_41df67, %struct.Memory** %MEMORY

  ; Code: movq 0xd0(%rax), %rax	 RIP: 41df6b	 Bytes: 7
  %loadMem_41df6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df6b = call %struct.Memory* @routine_movq_0xd0__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df6b)
  store %struct.Memory* %call_41df6b, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 41df72	 Bytes: 4
  %loadMem_41df72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df72 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df72)
  store %struct.Memory* %call_41df72, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rcx	 RIP: 41df76	 Bytes: 4
  %loadMem_41df76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df76 = call %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df76)
  store %struct.Memory* %call_41df76, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41df7a	 Bytes: 3
  %loadMem_41df7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df7a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df7a)
  store %struct.Memory* %call_41df7a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41df7d	 Bytes: 3
  %loadMem_41df7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df7d = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df7d)
  store %struct.Memory* %call_41df7d, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 41df80	 Bytes: 5
  %loadMem1_41df80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41df80 = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41df80, i64 17408, i64 5, i64 5)
  store %struct.Memory* %call1_41df80, %struct.Memory** %MEMORY

  %loadMem2_41df80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41df80 = load i64, i64* %3
  %call2_41df80 = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_41df80, %struct.Memory* %loadMem2_41df80)
  store %struct.Memory* %call2_41df80, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %esi	 RIP: 41df85	 Bytes: 5
  %loadMem_41df85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df85 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df85)
  store %struct.Memory* %call_41df85, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41df8a	 Bytes: 4
  %loadMem_41df8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df8a = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df8a)
  store %struct.Memory* %call_41df8a, %struct.Memory** %MEMORY

  ; Code: movq 0xd8(%rax), %rax	 RIP: 41df8e	 Bytes: 7
  %loadMem_41df8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df8e = call %struct.Memory* @routine_movq_0xd8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df8e)
  store %struct.Memory* %call_41df8e, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 41df95	 Bytes: 4
  %loadMem_41df95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df95 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df95)
  store %struct.Memory* %call_41df95, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rcx	 RIP: 41df99	 Bytes: 4
  %loadMem_41df99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df99 = call %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df99)
  store %struct.Memory* %call_41df99, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41df9d	 Bytes: 3
  %loadMem_41df9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41df9d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41df9d)
  store %struct.Memory* %call_41df9d, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41dfa0	 Bytes: 3
  %loadMem_41dfa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfa0 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfa0)
  store %struct.Memory* %call_41dfa0, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 41dfa3	 Bytes: 5
  %loadMem1_41dfa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41dfa3 = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41dfa3, i64 17373, i64 5, i64 5)
  store %struct.Memory* %call1_41dfa3, %struct.Memory** %MEMORY

  %loadMem2_41dfa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41dfa3 = load i64, i64* %3
  %call2_41dfa3 = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_41dfa3, %struct.Memory* %loadMem2_41dfa3)
  store %struct.Memory* %call2_41dfa3, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %esi	 RIP: 41dfa8	 Bytes: 3
  %loadMem_41dfa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfa8 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfa8)
  store %struct.Memory* %call_41dfa8, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41dfab	 Bytes: 4
  %loadMem_41dfab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfab = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfab)
  store %struct.Memory* %call_41dfab, %struct.Memory** %MEMORY

  ; Code: cmpl 0x88(%rax), %esi	 RIP: 41dfaf	 Bytes: 6
  %loadMem_41dfaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfaf = call %struct.Memory* @routine_cmpl_0x88__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfaf)
  store %struct.Memory* %call_41dfaf, %struct.Memory** %MEMORY

  ; Code: jge .L_41e00a	 RIP: 41dfb5	 Bytes: 6
  %loadMem_41dfb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfb5 = call %struct.Memory* @routine_jge_.L_41e00a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfb5, i8* %BRANCH_TAKEN, i64 85, i64 6, i64 6)
  store %struct.Memory* %call_41dfb5, %struct.Memory** %MEMORY

  %loadBr_41dfb5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41dfb5 = icmp eq i8 %loadBr_41dfb5, 1
  br i1 %cmpBr_41dfb5, label %block_.L_41e00a, label %block_41dfbb

block_41dfbb:
  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 41dfbb	 Bytes: 7
  %loadMem_41dfbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfbb = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfbb)
  store %struct.Memory* %call_41dfbb, %struct.Memory** %MEMORY

  ; Code: .L_41dfc2:	 RIP: 41dfc2	 Bytes: 0
  br label %block_.L_41dfc2
block_.L_41dfc2:

  ; Code: cmpl $0x7, -0x28(%rbp)	 RIP: 41dfc2	 Bytes: 4
  %loadMem_41dfc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfc2 = call %struct.Memory* @routine_cmpl__0x7__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfc2)
  store %struct.Memory* %call_41dfc2, %struct.Memory** %MEMORY

  ; Code: jge .L_41e005	 RIP: 41dfc6	 Bytes: 6
  %loadMem_41dfc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfc6 = call %struct.Memory* @routine_jge_.L_41e005(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfc6, i8* %BRANCH_TAKEN, i64 63, i64 6, i64 6)
  store %struct.Memory* %call_41dfc6, %struct.Memory** %MEMORY

  %loadBr_41dfc6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41dfc6 = icmp eq i8 %loadBr_41dfc6, 1
  br i1 %cmpBr_41dfc6, label %block_.L_41e005, label %block_41dfcc

block_41dfcc:
  ; Code: movl $0x4, %esi	 RIP: 41dfcc	 Bytes: 5
  %loadMem_41dfcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfcc = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfcc)
  store %struct.Memory* %call_41dfcc, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41dfd1	 Bytes: 4
  %loadMem_41dfd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfd1 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfd1)
  store %struct.Memory* %call_41dfd1, %struct.Memory** %MEMORY

  ; Code: movq 0x90(%rax), %rax	 RIP: 41dfd5	 Bytes: 7
  %loadMem_41dfd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfd5 = call %struct.Memory* @routine_movq_0x90__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfd5)
  store %struct.Memory* %call_41dfd5, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 41dfdc	 Bytes: 4
  %loadMem_41dfdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfdc = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfdc)
  store %struct.Memory* %call_41dfdc, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 41dfe0	 Bytes: 4
  %loadMem_41dfe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfe0 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfe0)
  store %struct.Memory* %call_41dfe0, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 41dfe4	 Bytes: 4
  %loadMem_41dfe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfe4 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfe4)
  store %struct.Memory* %call_41dfe4, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rcx	 RIP: 41dfe8	 Bytes: 4
  %loadMem_41dfe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfe8 = call %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfe8)
  store %struct.Memory* %call_41dfe8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41dfec	 Bytes: 3
  %loadMem_41dfec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfec = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfec)
  store %struct.Memory* %call_41dfec, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 41dfef	 Bytes: 3
  %loadMem_41dfef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dfef = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dfef)
  store %struct.Memory* %call_41dfef, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 41dff2	 Bytes: 5
  %loadMem1_41dff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41dff2 = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41dff2, i64 17294, i64 5, i64 5)
  store %struct.Memory* %call1_41dff2, %struct.Memory** %MEMORY

  %loadMem2_41dff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41dff2 = load i64, i64* %3
  %call2_41dff2 = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_41dff2, %struct.Memory* %loadMem2_41dff2)
  store %struct.Memory* %call2_41dff2, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 41dff7	 Bytes: 3
  %loadMem_41dff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dff7 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dff7)
  store %struct.Memory* %call_41dff7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41dffa	 Bytes: 3
  %loadMem_41dffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dffa = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dffa)
  store %struct.Memory* %call_41dffa, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 41dffd	 Bytes: 3
  %loadMem_41dffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41dffd = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41dffd)
  store %struct.Memory* %call_41dffd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41dfc2	 RIP: 41e000	 Bytes: 5
  %loadMem_41e000 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e000 = call %struct.Memory* @routine_jmpq_.L_41dfc2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e000, i64 -62, i64 5)
  store %struct.Memory* %call_41e000, %struct.Memory** %MEMORY

  br label %block_.L_41dfc2

  ; Code: .L_41e005:	 RIP: 41e005	 Bytes: 0
block_.L_41e005:

  ; Code: jmpq .L_41e00a	 RIP: 41e005	 Bytes: 5
  %loadMem_41e005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e005 = call %struct.Memory* @routine_jmpq_.L_41e00a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e005, i64 5, i64 5)
  store %struct.Memory* %call_41e005, %struct.Memory** %MEMORY

  br label %block_.L_41e00a

  ; Code: .L_41e00a:	 RIP: 41e00a	 Bytes: 0
block_.L_41e00a:

  ; Code: jmpq .L_41e00f	 RIP: 41e00a	 Bytes: 5
  %loadMem_41e00a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e00a = call %struct.Memory* @routine_jmpq_.L_41e00f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e00a, i64 5, i64 5)
  store %struct.Memory* %call_41e00a, %struct.Memory** %MEMORY

  br label %block_.L_41e00f

  ; Code: .L_41e00f:	 RIP: 41e00f	 Bytes: 0
block_.L_41e00f:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 41e00f	 Bytes: 3
  %loadMem_41e00f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e00f = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e00f)
  store %struct.Memory* %call_41e00f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41e012	 Bytes: 3
  %loadMem_41e012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e012 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e012)
  store %struct.Memory* %call_41e012, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 41e015	 Bytes: 3
  %loadMem_41e015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e015 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e015)
  store %struct.Memory* %call_41e015, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41de97	 RIP: 41e018	 Bytes: 5
  %loadMem_41e018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e018 = call %struct.Memory* @routine_jmpq_.L_41de97(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e018, i64 -385, i64 5)
  store %struct.Memory* %call_41e018, %struct.Memory** %MEMORY

  br label %block_.L_41de97

  ; Code: .L_41e01d:	 RIP: 41e01d	 Bytes: 0
block_.L_41e01d:

  ; Code: jmpq .L_41e022	 RIP: 41e01d	 Bytes: 5
  %loadMem_41e01d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e01d = call %struct.Memory* @routine_jmpq_.L_41e022(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e01d, i64 5, i64 5)
  store %struct.Memory* %call_41e01d, %struct.Memory** %MEMORY

  br label %block_.L_41e022

  ; Code: .L_41e022:	 RIP: 41e022	 Bytes: 0
block_.L_41e022:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41e022	 Bytes: 4
  %loadMem_41e022 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e022 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e022)
  store %struct.Memory* %call_41e022, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %ecx	 RIP: 41e026	 Bytes: 6
  %loadMem_41e026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e026 = call %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e026)
  store %struct.Memory* %call_41e026, %struct.Memory** %MEMORY

  ; Code: orl $0x20, %ecx	 RIP: 41e02c	 Bytes: 3
  %loadMem_41e02c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e02c = call %struct.Memory* @routine_orl__0x20___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e02c)
  store %struct.Memory* %call_41e02c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1c8(%rax)	 RIP: 41e02f	 Bytes: 6
  %loadMem_41e02f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e02f = call %struct.Memory* @routine_movl__ecx__0x1c8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e02f)
  store %struct.Memory* %call_41e02f, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41e035	 Bytes: 4
  %loadMem_41e035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e035 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e035)
  store %struct.Memory* %call_41e035, %struct.Memory** %MEMORY

  ; Code: movl 0x1c8(%rax), %ecx	 RIP: 41e039	 Bytes: 6
  %loadMem_41e039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e039 = call %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e039)
  store %struct.Memory* %call_41e039, %struct.Memory** %MEMORY

  ; Code: andl $0xfffffffe, %ecx	 RIP: 41e03f	 Bytes: 3
  %loadMem_41e03f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e03f = call %struct.Memory* @routine_andl__0xfffffffe___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e03f)
  store %struct.Memory* %call_41e03f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1c8(%rax)	 RIP: 41e042	 Bytes: 6
  %loadMem_41e042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e042 = call %struct.Memory* @routine_movl__ecx__0x1c8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e042)
  store %struct.Memory* %call_41e042, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 41e048	 Bytes: 4
  %loadMem_41e048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e048 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e048)
  store %struct.Memory* %call_41e048, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 41e04c	 Bytes: 4
  %loadMem_41e04c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e04c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e04c)
  store %struct.Memory* %call_41e04c, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rdx)	 RIP: 41e050	 Bytes: 3
  %loadMem_41e050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e050 = call %struct.Memory* @routine_movq__rax____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e050)
  store %struct.Memory* %call_41e050, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 41e053	 Bytes: 7
  %loadMem_41e053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e053 = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e053)
  store %struct.Memory* %call_41e053, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41e085	 RIP: 41e05a	 Bytes: 5
  %loadMem_41e05a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e05a = call %struct.Memory* @routine_jmpq_.L_41e085(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e05a, i64 43, i64 5)
  store %struct.Memory* %call_41e05a, %struct.Memory** %MEMORY

  br label %block_.L_41e085

  ; Code: .L_41e05f:	 RIP: 41e05f	 Bytes: 0
block_.L_41e05f:

  ; Code: cmpq $0x0, -0x20(%rbp)	 RIP: 41e05f	 Bytes: 5
  %loadMem_41e05f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e05f = call %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e05f)
  store %struct.Memory* %call_41e05f, %struct.Memory** %MEMORY

  ; Code: je .L_41e073	 RIP: 41e064	 Bytes: 6
  %loadMem_41e064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e064 = call %struct.Memory* @routine_je_.L_41e073(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e064, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_41e064, %struct.Memory** %MEMORY

  %loadBr_41e064 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41e064 = icmp eq i8 %loadBr_41e064, 1
  br i1 %cmpBr_41e064, label %block_.L_41e073, label %block_41e06a

block_41e06a:
  ; Code: movq -0x20(%rbp), %rdi	 RIP: 41e06a	 Bytes: 4
  %loadMem_41e06a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e06a = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e06a)
  store %struct.Memory* %call_41e06a, %struct.Memory** %MEMORY

  ; Code: callq .FreePlan7	 RIP: 41e06e	 Bytes: 5
  %loadMem1_41e06e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41e06e = call %struct.Memory* @routine_callq_.FreePlan7(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41e06e, i64 83298, i64 5, i64 5)
  store %struct.Memory* %call1_41e06e, %struct.Memory** %MEMORY

  %loadMem2_41e06e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41e06e = load i64, i64* %3
  %call2_41e06e = call %struct.Memory* @sub_4325d0.FreePlan7(%struct.State* %0, i64  %loadPC_41e06e, %struct.Memory* %loadMem2_41e06e)
  store %struct.Memory* %call2_41e06e, %struct.Memory** %MEMORY

  ; Code: .L_41e073:	 RIP: 41e073	 Bytes: 0
  br label %block_.L_41e073
block_.L_41e073:

  ; Code: movq -0x18(%rbp), %rax	 RIP: 41e073	 Bytes: 4
  %loadMem_41e073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e073 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e073)
  store %struct.Memory* %call_41e073, %struct.Memory** %MEMORY

  ; Code: movq $0x0, (%rax)	 RIP: 41e077	 Bytes: 7
  %loadMem_41e077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e077 = call %struct.Memory* @routine_movq__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e077)
  store %struct.Memory* %call_41e077, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 41e07e	 Bytes: 7
  %loadMem_41e07e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e07e = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e07e)
  store %struct.Memory* %call_41e07e, %struct.Memory** %MEMORY

  ; Code: .L_41e085:	 RIP: 41e085	 Bytes: 0
  br label %block_.L_41e085
block_.L_41e085:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 41e085	 Bytes: 3
  %loadMem_41e085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e085 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e085)
  store %struct.Memory* %call_41e085, %struct.Memory** %MEMORY

  ; Code: addq $0xf0, %rsp	 RIP: 41e088	 Bytes: 7
  %loadMem_41e088 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e088 = call %struct.Memory* @routine_addq__0xf0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e088)
  store %struct.Memory* %call_41e088, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 41e08f	 Bytes: 1
  %loadMem_41e08f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e08f = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e08f)
  store %struct.Memory* %call_41e08f, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 41e090	 Bytes: 1
  %loadMem_41e090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41e090 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41e090)
  store %struct.Memory* %call_41e090, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_41e090
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

define %struct.Memory* @routine_subq__0xf0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 240)
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


define %struct.Memory* @routine_movq___rsi____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_je_.L_41d19c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_41e085(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 4)
  ret %struct.Memory* %11
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x30__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq__rdi__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_jne_.L_41d1db(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_41d1fa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x30__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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


define %struct.Memory* @routine_callq_.byteswap(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_cmpl_0x661538___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x661538_type* @G_0x661538 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_41d20f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_41e05f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x4___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 4)
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_addq__0x1c8___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 456)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq___rdi____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
  ret %struct.Memory* %15
}








define %struct.Memory* @routine_jne_.L_41d24e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_41d273(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0x1c__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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


define %struct.Memory* @routine_callq_.read_bin_string(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_41d298(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_andl__0x200___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 512)
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


define %struct.Memory* @routine_je_.L_41d2dd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_41d2dd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_41d31f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_41d31f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_addq__0x88___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 136)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movq__rdi__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_41d35e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_41d383(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_addq__0x88___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 136)
  ret %struct.Memory* %12
}














define %struct.Memory* @routine_leaq_MINUS0x2c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq__rdi__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_41d3bb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_41d3da(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_leaq_MINUS0x2c__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jne_.L_41d3f5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_41d43a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_je_.L_41d435(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
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




define %struct.Memory* @routine_movl_0x88__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 136
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




define %struct.Memory* @routine_movl_0x1c8__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_je_.L_41d49d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movq_0x18__rcx____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_0x88__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 136
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__eax___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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






define %struct.Memory* @routine_jne_.L_41d49d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0x88__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
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




define %struct.Memory* @routine_movl_0x1c8__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_andl__0x8___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 8)
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


define %struct.Memory* @routine_je_.L_41d509(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movq_0x20__rcx____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


















define %struct.Memory* @routine_jne_.L_41d509(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_andl__0x100___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 256)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_41d583(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movq_0x48__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_0x88__rdx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movq__rdi__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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






define %struct.Memory* @routine_jne_.L_41d583(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_41d5de(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
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

define %struct.Memory* @routine_jg_.L_41d5d9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_shlq__0x2___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 2)
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


define %struct.Memory* @routine_jmpq_.L_41d598(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41d5de(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jne_.L_41d60a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_addq__0x38___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 56)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movq__rdi__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x60__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_41d646(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_41d669(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_addq__0x38___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 56)
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








define %struct.Memory* @routine_jne_.L_41d695(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_addq__0x50___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 80)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movq__rdi__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x68__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_41d6d1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_41d6f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_andl__0x400___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1024)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_41d7c2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_addq__0x70___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 112)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movq__rdi__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_41d749(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_addq__0x74___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 116)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movq__rdi__MINUS0x78__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x78__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_41d785(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_41d7bd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_addq__0x70___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 112)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_addq__0x74___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 116)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_jmpq_.L_41d7c2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_andl__0x800___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 2048)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_41d896(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_addq__0x78___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 120)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movq__rdi__MINUS0x80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x80__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_41d817(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_addq__0x7c___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 124)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movq__rdi__MINUS0x88__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x88__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_41d859(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_41d891(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_addq__0x78___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 120)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_addq__0x7c___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 124)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_jmpq_.L_41d896(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_andl__0x1000___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 4096)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_41d97a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_addq__0x80___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 128)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movq__rdi__MINUS0x90__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x90__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_41d8f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_addq__0x84___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 132)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movq__rdi__MINUS0x98__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x98__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_41d939(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_41d975(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_addq__0x80___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 128)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_addq__0x84___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 132)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_jmpq_.L_41d97a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x4__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
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

define %struct.Memory* @routine_jge_.L_41da4d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_addq__0xac___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 172)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x3___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 3)
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






define %struct.Memory* @routine_movq__rdi__MINUS0xa0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0xa0__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_41d9db(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_41da3a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jge_.L_41da35(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_addq__0xac___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 172)
  ret %struct.Memory* %12
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




define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jmpq_.L_41d9f0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41da3a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41da3f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_41d981(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_addq__0x130___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 304)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movq__rdi__MINUS0xa8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0xa8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_41da92(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_addq__0xe0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 224)
  ret %struct.Memory* %12
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






define %struct.Memory* @routine_movq__rdi__MINUS0xb0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0xb0__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_41dad8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_andl__0x80___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 128)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_41dbbc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_addq__0x1c0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 448)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movq__rdi__MINUS0xb8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0xb8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_41db36(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_addq__0x1c4___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 452)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movq__rdi__MINUS0xc0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0xc0__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_41db7b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_41dbb7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_addq__0x1c0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 448)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_addq__0x1c4___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 452)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_jmpq_.L_41dbbc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_addq__0xa8___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 168)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movq__rdi__MINUS0xc8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 200
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0xc8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_41dc01(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movq_0xd0__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 208
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}














define %struct.Memory* @routine_movq__rdi__MINUS0xd0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 208
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0xd0__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 208
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_41dc4f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movq_0xd8__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 216
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}














define %struct.Memory* @routine_movq__rdi__MINUS0xd8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 216
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0xd8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 216
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_41dc9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jg_.L_41dd18(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movq_0x98__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 152
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movq__rdi__MINUS0xe0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 224
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0xe0__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_41dd05(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jmpq_.L_41dd0a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_41dca4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_jge_.L_41dd93(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movq_0xa0__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}












define %struct.Memory* @routine_movq__rdi__MINUS0xe8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 232
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0xe8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 232
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_41dd80(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jmpq_.L_41dd85(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_41dd1f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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










define %struct.Memory* @routine_jge_.L_41de0d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__0x7___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 7)
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq_0x90__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 144
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq___rcx__rdi_8____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq__rdi__MINUS0xf0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 240
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0xf0__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 240
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_41ddfa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jmpq_.L_41ddff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_41dd9a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_je_.L_41e022(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jge_.L_41de62(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_addq__0xe0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 224)
  ret %struct.Memory* %12
}


















define %struct.Memory* @routine_jmpq_.L_41de22(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_addq__0x130___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 304)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_addq__0xa8___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 168)
  ret %struct.Memory* %12
}














define %struct.Memory* @routine_jg_.L_41e01d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_41defa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_jmpq_.L_41deb1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jge_.L_41df62(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_41df5d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_jmpq_.L_41df14(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41df62(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cmpl_0x88__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 136
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_41e00a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x7__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 7)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_41e005(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_jmpq_.L_41dfc2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41e00a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41e00f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_41de97(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41e022(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__rax____rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_je_.L_41e073(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_addq__0xf0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 240)
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

