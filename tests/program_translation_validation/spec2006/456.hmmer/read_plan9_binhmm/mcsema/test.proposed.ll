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

declare %struct.Memory* @sub_401410.fread_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_422380.byteswap(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_404ca0.SetAlphabet(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_410e60.AlphabetType2String(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_435250.P9AllocHMM(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_401600.fseek_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4356e0.P9DefaultNullModel(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4355e0.P9Renormalize(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x676d90_type = type <{ [4 x i8] }>
@G_0x676d90= global %G_0x676d90_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x677060_type = type <{ [4 x i8] }>
@G_0x677060= global %G_0x677060_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x45763b_type = type <{ [8 x i8] }>
@G__0x45763b= global %G__0x45763b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457852_type = type <{ [8 x i8] }>
@G__0x457852= global %G__0x457852_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x457899_type = type <{ [8 x i8] }>
@G__0x457899= global %G__0x457899_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4578f2_type = type <{ [8 x i8] }>
@G__0x4578f2= global %G__0x4578f2_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @read_plan9_binhmm(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .read_plan9_binhmm:	 RIP: 4217e0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 4217e0	 Bytes: 1
  %loadMem_4217e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4217e0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4217e0)
  store %struct.Memory* %call_4217e0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 4217e1	 Bytes: 3
  %loadMem_4217e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4217e1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4217e1)
  store %struct.Memory* %call_4217e1, %struct.Memory** %MEMORY

  ; Code: subq $0x100, %rsp	 RIP: 4217e4	 Bytes: 7
  %loadMem_4217e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4217e4 = call %struct.Memory* @routine_subq__0x100___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4217e4)
  store %struct.Memory* %call_4217e4, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %eax	 RIP: 4217eb	 Bytes: 5
  %loadMem_4217eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4217eb = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4217eb)
  store %struct.Memory* %call_4217eb, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4217f0	 Bytes: 2
  %loadMem_4217f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4217f0 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4217f0)
  store %struct.Memory* %call_4217f0, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 4217f2	 Bytes: 5
  %loadMem_4217f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4217f2 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4217f2)
  store %struct.Memory* %call_4217f2, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 4217f7	 Bytes: 3
  %loadMem_4217f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4217f7 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4217f7)
  store %struct.Memory* %call_4217f7, %struct.Memory** %MEMORY

  ; Code: leaq -0x24(%rbp), %r9	 RIP: 4217fa	 Bytes: 4
  %loadMem_4217fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4217fa = call %struct.Memory* @routine_leaq_MINUS0x24__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4217fa)
  store %struct.Memory* %call_4217fa, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x10(%rbp)	 RIP: 4217fe	 Bytes: 4
  %loadMem_4217fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4217fe = call %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4217fe)
  store %struct.Memory* %call_4217fe, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x14(%rbp)	 RIP: 421802	 Bytes: 3
  %loadMem_421802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421802 = call %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421802)
  store %struct.Memory* %call_421802, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x18(%rbp)	 RIP: 421805	 Bytes: 3
  %loadMem_421805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421805 = call %struct.Memory* @routine_movl__edx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421805)
  store %struct.Memory* %call_421805, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 421808	 Bytes: 4
  %loadMem_421808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421808 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421808)
  store %struct.Memory* %call_421808, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x58(%rbp)	 RIP: 42180c	 Bytes: 4
  %loadMem_42180c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42180c = call %struct.Memory* @routine_movq__rdi__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42180c)
  store %struct.Memory* %call_42180c, %struct.Memory** %MEMORY

  ; Code: movq %r9, %rdi	 RIP: 421810	 Bytes: 3
  %loadMem_421810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421810 = call %struct.Memory* @routine_movq__r9___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421810)
  store %struct.Memory* %call_421810, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rsi	 RIP: 421813	 Bytes: 3
  %loadMem_421813 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421813 = call %struct.Memory* @routine_movq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421813)
  store %struct.Memory* %call_421813, %struct.Memory** %MEMORY

  ; Code: movq %r8, %rdx	 RIP: 421816	 Bytes: 3
  %loadMem_421816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421816 = call %struct.Memory* @routine_movq__r8___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421816)
  store %struct.Memory* %call_421816, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rcx	 RIP: 421819	 Bytes: 4
  %loadMem_421819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421819 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421819)
  store %struct.Memory* %call_421819, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 42181d	 Bytes: 5
  %loadMem1_42181d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42181d = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42181d, i64 -132109, i64 5, i64 5)
  store %struct.Memory* %call1_42181d, %struct.Memory** %MEMORY

  %loadMem2_42181d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42181d = load i64, i64* %3
  %call2_42181d = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_42181d, %struct.Memory* %loadMem2_42181d)
  store %struct.Memory* %call2_42181d, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 421822	 Bytes: 4
  %loadMem_421822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421822 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421822)
  store %struct.Memory* %call_421822, %struct.Memory** %MEMORY

  ; Code: jne .L_421839	 RIP: 421826	 Bytes: 6
  %loadMem_421826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421826 = call %struct.Memory* @routine_jne_.L_421839(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421826, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_421826, %struct.Memory** %MEMORY

  %loadBr_421826 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421826 = icmp eq i8 %loadBr_421826, 1
  br i1 %cmpBr_421826, label %block_.L_421839, label %block_42182c

block_42182c:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 42182c	 Bytes: 8
  %loadMem_42182c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42182c = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42182c)
  store %struct.Memory* %call_42182c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_422364	 RIP: 421834	 Bytes: 5
  %loadMem_421834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421834 = call %struct.Memory* @routine_jmpq_.L_422364(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421834, i64 2864, i64 5)
  store %struct.Memory* %call_421834, %struct.Memory** %MEMORY

  br label %block_.L_422364

  ; Code: .L_421839:	 RIP: 421839	 Bytes: 0
block_.L_421839:

  ; Code: movl $0x4, %eax	 RIP: 421839	 Bytes: 5
  %loadMem_421839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421839 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421839)
  store %struct.Memory* %call_421839, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 42183e	 Bytes: 2
  %loadMem_42183e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42183e = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42183e)
  store %struct.Memory* %call_42183e, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 421840	 Bytes: 5
  %loadMem_421840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421840 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421840)
  store %struct.Memory* %call_421840, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 421845	 Bytes: 2
  %loadMem_421845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421845 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421845)
  store %struct.Memory* %call_421845, %struct.Memory** %MEMORY

  ; Code: leaq -0x34(%rbp), %rcx	 RIP: 421847	 Bytes: 4
  %loadMem_421847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421847 = call %struct.Memory* @routine_leaq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421847)
  store %struct.Memory* %call_421847, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 42184b	 Bytes: 4
  %loadMem_42184b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42184b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42184b)
  store %struct.Memory* %call_42184b, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x60(%rbp)	 RIP: 42184f	 Bytes: 4
  %loadMem_42184f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42184f = call %struct.Memory* @routine_movq__rdi__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42184f)
  store %struct.Memory* %call_42184f, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 421853	 Bytes: 3
  %loadMem_421853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421853 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421853)
  store %struct.Memory* %call_421853, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rcx	 RIP: 421856	 Bytes: 4
  %loadMem_421856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421856 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421856)
  store %struct.Memory* %call_421856, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 42185a	 Bytes: 5
  %loadMem1_42185a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42185a = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42185a, i64 -132170, i64 5, i64 5)
  store %struct.Memory* %call1_42185a, %struct.Memory** %MEMORY

  %loadMem2_42185a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42185a = load i64, i64* %3
  %call2_42185a = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_42185a, %struct.Memory* %loadMem2_42185a)
  store %struct.Memory* %call2_42185a, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 42185f	 Bytes: 4
  %loadMem_42185f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42185f = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42185f)
  store %struct.Memory* %call_42185f, %struct.Memory** %MEMORY

  ; Code: jne .L_421876	 RIP: 421863	 Bytes: 6
  %loadMem_421863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421863 = call %struct.Memory* @routine_jne_.L_421876(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421863, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_421863, %struct.Memory** %MEMORY

  %loadBr_421863 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421863 = icmp eq i8 %loadBr_421863, 1
  br i1 %cmpBr_421863, label %block_.L_421876, label %block_421869

block_421869:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 421869	 Bytes: 8
  %loadMem_421869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421869 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421869)
  store %struct.Memory* %call_421869, %struct.Memory** %MEMORY

  ; Code: jmpq .L_422364	 RIP: 421871	 Bytes: 5
  %loadMem_421871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421871 = call %struct.Memory* @routine_jmpq_.L_422364(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421871, i64 2803, i64 5)
  store %struct.Memory* %call_421871, %struct.Memory** %MEMORY

  br label %block_.L_422364

  ; Code: .L_421876:	 RIP: 421876	 Bytes: 0
block_.L_421876:

  ; Code: cmpl $0x0, -0x18(%rbp)	 RIP: 421876	 Bytes: 4
  %loadMem_421876 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421876 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421876)
  store %struct.Memory* %call_421876, %struct.Memory** %MEMORY

  ; Code: je .L_4218a2	 RIP: 42187a	 Bytes: 6
  %loadMem_42187a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42187a = call %struct.Memory* @routine_je_.L_4218a2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42187a, i8* %BRANCH_TAKEN, i64 40, i64 6, i64 6)
  store %struct.Memory* %call_42187a, %struct.Memory** %MEMORY

  %loadBr_42187a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42187a = icmp eq i8 %loadBr_42187a, 1
  br i1 %cmpBr_42187a, label %block_.L_4218a2, label %block_421880

block_421880:
  ; Code: movl $0x4, %esi	 RIP: 421880	 Bytes: 5
  %loadMem_421880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421880 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421880)
  store %struct.Memory* %call_421880, %struct.Memory** %MEMORY

  ; Code: leaq -0x24(%rbp), %rax	 RIP: 421885	 Bytes: 4
  %loadMem_421885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421885 = call %struct.Memory* @routine_leaq_MINUS0x24__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421885)
  store %struct.Memory* %call_421885, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 421889	 Bytes: 3
  %loadMem_421889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421889 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421889)
  store %struct.Memory* %call_421889, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 42188c	 Bytes: 5
  %loadMem1_42188c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42188c = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42188c, i64 2804, i64 5, i64 5)
  store %struct.Memory* %call1_42188c, %struct.Memory** %MEMORY

  %loadMem2_42188c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42188c = load i64, i64* %3
  %call2_42188c = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_42188c, %struct.Memory* %loadMem2_42188c)
  store %struct.Memory* %call2_42188c, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %esi	 RIP: 421891	 Bytes: 5
  %loadMem_421891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421891 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421891)
  store %struct.Memory* %call_421891, %struct.Memory** %MEMORY

  ; Code: leaq -0x34(%rbp), %rax	 RIP: 421896	 Bytes: 4
  %loadMem_421896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421896 = call %struct.Memory* @routine_leaq_MINUS0x34__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421896)
  store %struct.Memory* %call_421896, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 42189a	 Bytes: 3
  %loadMem_42189a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42189a = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42189a)
  store %struct.Memory* %call_42189a, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 42189d	 Bytes: 5
  %loadMem1_42189d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42189d = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42189d, i64 2787, i64 5, i64 5)
  store %struct.Memory* %call1_42189d, %struct.Memory** %MEMORY

  %loadMem2_42189d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42189d = load i64, i64* %3
  %call2_42189d = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_42189d, %struct.Memory* %loadMem2_42189d)
  store %struct.Memory* %call2_42189d, %struct.Memory** %MEMORY

  ; Code: .L_4218a2:	 RIP: 4218a2	 Bytes: 0
  br label %block_.L_4218a2
block_.L_4218a2:

  ; Code: cmpl $0x4, -0x34(%rbp)	 RIP: 4218a2	 Bytes: 4
  %loadMem_4218a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218a2 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218a2)
  store %struct.Memory* %call_4218a2, %struct.Memory** %MEMORY

  ; Code: jne .L_4218b8	 RIP: 4218a6	 Bytes: 6
  %loadMem_4218a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218a6 = call %struct.Memory* @routine_jne_.L_4218b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218a6, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4218a6, %struct.Memory** %MEMORY

  %loadBr_4218a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4218a6 = icmp eq i8 %loadBr_4218a6, 1
  br i1 %cmpBr_4218a6, label %block_.L_4218b8, label %block_4218ac

block_4218ac:
  ; Code: movl $0x2, -0x38(%rbp)	 RIP: 4218ac	 Bytes: 7
  %loadMem_4218ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218ac = call %struct.Memory* @routine_movl__0x2__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218ac)
  store %struct.Memory* %call_4218ac, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4218e7	 RIP: 4218b3	 Bytes: 5
  %loadMem_4218b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218b3 = call %struct.Memory* @routine_jmpq_.L_4218e7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218b3, i64 52, i64 5)
  store %struct.Memory* %call_4218b3, %struct.Memory** %MEMORY

  br label %block_.L_4218e7

  ; Code: .L_4218b8:	 RIP: 4218b8	 Bytes: 0
block_.L_4218b8:

  ; Code: cmpl $0x14, -0x34(%rbp)	 RIP: 4218b8	 Bytes: 4
  %loadMem_4218b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218b8 = call %struct.Memory* @routine_cmpl__0x14__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218b8)
  store %struct.Memory* %call_4218b8, %struct.Memory** %MEMORY

  ; Code: jne .L_4218ce	 RIP: 4218bc	 Bytes: 6
  %loadMem_4218bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218bc = call %struct.Memory* @routine_jne_.L_4218ce(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218bc, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4218bc, %struct.Memory** %MEMORY

  %loadBr_4218bc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4218bc = icmp eq i8 %loadBr_4218bc, 1
  br i1 %cmpBr_4218bc, label %block_.L_4218ce, label %block_4218c2

block_4218c2:
  ; Code: movl $0x3, -0x38(%rbp)	 RIP: 4218c2	 Bytes: 7
  %loadMem_4218c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218c2 = call %struct.Memory* @routine_movl__0x3__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218c2)
  store %struct.Memory* %call_4218c2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4218e2	 RIP: 4218c9	 Bytes: 5
  %loadMem_4218c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218c9 = call %struct.Memory* @routine_jmpq_.L_4218e2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218c9, i64 25, i64 5)
  store %struct.Memory* %call_4218c9, %struct.Memory** %MEMORY

  br label %block_.L_4218e2

  ; Code: .L_4218ce:	 RIP: 4218ce	 Bytes: 0
block_.L_4218ce:

  ; Code: movq $0x457852, %rdi	 RIP: 4218ce	 Bytes: 10
  %loadMem_4218ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218ce = call %struct.Memory* @routine_movq__0x457852___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218ce)
  store %struct.Memory* %call_4218ce, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 4218d8	 Bytes: 3
  %loadMem_4218d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218d8 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218d8)
  store %struct.Memory* %call_4218d8, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4218db	 Bytes: 2
  %loadMem_4218db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218db = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218db)
  store %struct.Memory* %call_4218db, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 4218dd	 Bytes: 5
  %loadMem1_4218dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4218dd = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4218dd, i64 119091, i64 5, i64 5)
  store %struct.Memory* %call1_4218dd, %struct.Memory** %MEMORY

  %loadMem2_4218dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4218dd = load i64, i64* %3
  %call2_4218dd = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_4218dd, %struct.Memory* %loadMem2_4218dd)
  store %struct.Memory* %call2_4218dd, %struct.Memory** %MEMORY

  ; Code: .L_4218e2:	 RIP: 4218e2	 Bytes: 0
  br label %block_.L_4218e2
block_.L_4218e2:

  ; Code: jmpq .L_4218e7	 RIP: 4218e2	 Bytes: 5
  %loadMem_4218e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218e2 = call %struct.Memory* @routine_jmpq_.L_4218e7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218e2, i64 5, i64 5)
  store %struct.Memory* %call_4218e2, %struct.Memory** %MEMORY

  br label %block_.L_4218e7

  ; Code: .L_4218e7:	 RIP: 4218e7	 Bytes: 0
block_.L_4218e7:

  ; Code: cmpl $0x0, 0x676d90	 RIP: 4218e7	 Bytes: 8
  %loadMem_4218e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218e7 = call %struct.Memory* @routine_cmpl__0x0__0x676d90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218e7)
  store %struct.Memory* %call_4218e7, %struct.Memory** %MEMORY

  ; Code: jne .L_421902	 RIP: 4218ef	 Bytes: 6
  %loadMem_4218ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218ef = call %struct.Memory* @routine_jne_.L_421902(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218ef, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4218ef, %struct.Memory** %MEMORY

  %loadBr_4218ef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4218ef = icmp eq i8 %loadBr_4218ef, 1
  br i1 %cmpBr_4218ef, label %block_.L_421902, label %block_4218f5

block_4218f5:
  ; Code: movl -0x38(%rbp), %edi	 RIP: 4218f5	 Bytes: 3
  %loadMem_4218f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218f5 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218f5)
  store %struct.Memory* %call_4218f5, %struct.Memory** %MEMORY

  ; Code: callq .SetAlphabet	 RIP: 4218f8	 Bytes: 5
  %loadMem1_4218f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4218f8 = call %struct.Memory* @routine_callq_.SetAlphabet(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4218f8, i64 -117848, i64 5, i64 5)
  store %struct.Memory* %call1_4218f8, %struct.Memory** %MEMORY

  %loadMem2_4218f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4218f8 = load i64, i64* %3
  %call2_4218f8 = call %struct.Memory* @sub_404ca0.SetAlphabet(%struct.State* %0, i64  %loadPC_4218f8, %struct.Memory* %loadMem2_4218f8)
  store %struct.Memory* %call2_4218f8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421947	 RIP: 4218fd	 Bytes: 5
  %loadMem_4218fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218fd = call %struct.Memory* @routine_jmpq_.L_421947(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218fd, i64 74, i64 5)
  store %struct.Memory* %call_4218fd, %struct.Memory** %MEMORY

  br label %block_.L_421947

  ; Code: .L_421902:	 RIP: 421902	 Bytes: 0
block_.L_421902:

  ; Code: movl -0x38(%rbp), %eax	 RIP: 421902	 Bytes: 3
  %loadMem_421902 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421902 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421902)
  store %struct.Memory* %call_421902, %struct.Memory** %MEMORY

  ; Code: cmpl 0x676d90, %eax	 RIP: 421905	 Bytes: 7
  %loadMem_421905 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421905 = call %struct.Memory* @routine_cmpl_0x676d90___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421905)
  store %struct.Memory* %call_421905, %struct.Memory** %MEMORY

  ; Code: je .L_421942	 RIP: 42190c	 Bytes: 6
  %loadMem_42190c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42190c = call %struct.Memory* @routine_je_.L_421942(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42190c, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_42190c, %struct.Memory** %MEMORY

  %loadBr_42190c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42190c = icmp eq i8 %loadBr_42190c, 1
  br i1 %cmpBr_42190c, label %block_.L_421942, label %block_421912

block_421912:
  ; Code: movl 0x676d90, %edi	 RIP: 421912	 Bytes: 7
  %loadMem_421912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421912 = call %struct.Memory* @routine_movl_0x676d90___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421912)
  store %struct.Memory* %call_421912, %struct.Memory** %MEMORY

  ; Code: callq .AlphabetType2String	 RIP: 421919	 Bytes: 5
  %loadMem1_421919 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421919 = call %struct.Memory* @routine_callq_.AlphabetType2String(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421919, i64 -68281, i64 5, i64 5)
  store %struct.Memory* %call1_421919, %struct.Memory** %MEMORY

  %loadMem2_421919 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421919 = load i64, i64* %3
  %call2_421919 = call %struct.Memory* @sub_410e60.AlphabetType2String(%struct.State* %0, i64  %loadPC_421919, %struct.Memory* %loadMem2_421919)
  store %struct.Memory* %call2_421919, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %edi	 RIP: 42191e	 Bytes: 3
  %loadMem_42191e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42191e = call %struct.Memory* @routine_movl_MINUS0x38__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42191e)
  store %struct.Memory* %call_42191e, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x68(%rbp)	 RIP: 421921	 Bytes: 4
  %loadMem_421921 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421921 = call %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421921)
  store %struct.Memory* %call_421921, %struct.Memory** %MEMORY

  ; Code: callq .AlphabetType2String	 RIP: 421925	 Bytes: 5
  %loadMem1_421925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421925 = call %struct.Memory* @routine_callq_.AlphabetType2String(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421925, i64 -68293, i64 5, i64 5)
  store %struct.Memory* %call1_421925, %struct.Memory** %MEMORY

  %loadMem2_421925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421925 = load i64, i64* %3
  %call2_421925 = call %struct.Memory* @sub_410e60.AlphabetType2String(%struct.State* %0, i64  %loadPC_421925, %struct.Memory* %loadMem2_421925)
  store %struct.Memory* %call2_421925, %struct.Memory** %MEMORY

  ; Code: movq $0x457899, %rdi	 RIP: 42192a	 Bytes: 10
  %loadMem_42192a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42192a = call %struct.Memory* @routine_movq__0x457899___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42192a)
  store %struct.Memory* %call_42192a, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rsi	 RIP: 421934	 Bytes: 4
  %loadMem_421934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421934 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421934)
  store %struct.Memory* %call_421934, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 421938	 Bytes: 3
  %loadMem_421938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421938 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421938)
  store %struct.Memory* %call_421938, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 42193b	 Bytes: 2
  %loadMem_42193b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42193b = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42193b)
  store %struct.Memory* %call_42193b, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 42193d	 Bytes: 5
  %loadMem1_42193d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42193d = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42193d, i64 118995, i64 5, i64 5)
  store %struct.Memory* %call1_42193d, %struct.Memory** %MEMORY

  %loadMem2_42193d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42193d = load i64, i64* %3
  %call2_42193d = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_42193d, %struct.Memory* %loadMem2_42193d)
  store %struct.Memory* %call2_42193d, %struct.Memory** %MEMORY

  ; Code: .L_421942:	 RIP: 421942	 Bytes: 0
  br label %block_.L_421942
block_.L_421942:

  ; Code: jmpq .L_421947	 RIP: 421942	 Bytes: 5
  %loadMem_421942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421942 = call %struct.Memory* @routine_jmpq_.L_421947(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421942, i64 5, i64 5)
  store %struct.Memory* %call_421942, %struct.Memory** %MEMORY

  br label %block_.L_421947

  ; Code: .L_421947:	 RIP: 421947	 Bytes: 0
block_.L_421947:

  ; Code: movl -0x24(%rbp), %edi	 RIP: 421947	 Bytes: 3
  %loadMem_421947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421947 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421947)
  store %struct.Memory* %call_421947, %struct.Memory** %MEMORY

  ; Code: callq .P9AllocHMM	 RIP: 42194a	 Bytes: 5
  %loadMem1_42194a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42194a = call %struct.Memory* @routine_callq_.P9AllocHMM(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42194a, i64 80134, i64 5, i64 5)
  store %struct.Memory* %call1_42194a, %struct.Memory** %MEMORY

  %loadMem2_42194a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42194a = load i64, i64* %3
  %call2_42194a = call %struct.Memory* @sub_435250.P9AllocHMM(%struct.State* %0, i64  %loadPC_42194a, %struct.Memory* %loadMem2_42194a)
  store %struct.Memory* %call2_42194a, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x20(%rbp)	 RIP: 42194f	 Bytes: 4
  %loadMem_42194f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42194f = call %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42194f)
  store %struct.Memory* %call_42194f, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 421953	 Bytes: 4
  %loadMem_421953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421953 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421953)
  store %struct.Memory* %call_421953, %struct.Memory** %MEMORY

  ; Code: jne .L_42196e	 RIP: 421957	 Bytes: 6
  %loadMem_421957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421957 = call %struct.Memory* @routine_jne_.L_42196e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421957, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_421957, %struct.Memory** %MEMORY

  %loadBr_421957 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421957 = icmp eq i8 %loadBr_421957, 1
  br i1 %cmpBr_421957, label %block_.L_42196e, label %block_42195d

block_42195d:
  ; Code: movq $0x4578f2, %rdi	 RIP: 42195d	 Bytes: 10
  %loadMem_42195d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42195d = call %struct.Memory* @routine_movq__0x4578f2___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42195d)
  store %struct.Memory* %call_42195d, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 421967	 Bytes: 2
  %loadMem_421967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421967 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421967)
  store %struct.Memory* %call_421967, %struct.Memory** %MEMORY

  ; Code: callq .Die	 RIP: 421969	 Bytes: 5
  %loadMem1_421969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421969 = call %struct.Memory* @routine_callq_.Die(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421969, i64 118951, i64 5, i64 5)
  store %struct.Memory* %call1_421969, %struct.Memory** %MEMORY

  %loadMem2_421969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421969 = load i64, i64* %3
  %call2_421969 = call %struct.Memory* @sub_43ea10.Die(%struct.State* %0, i64  %loadPC_421969, %struct.Memory* %loadMem2_421969)
  store %struct.Memory* %call2_421969, %struct.Memory** %MEMORY

  ; Code: .L_42196e:	 RIP: 42196e	 Bytes: 0
  br label %block_.L_42196e
block_.L_42196e:

  ; Code: cmpl $0x7, -0x14(%rbp)	 RIP: 42196e	 Bytes: 4
  %loadMem_42196e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42196e = call %struct.Memory* @routine_cmpl__0x7__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42196e)
  store %struct.Memory* %call_42196e, %struct.Memory** %MEMORY

  ; Code: jne .L_421a45	 RIP: 421972	 Bytes: 6
  %loadMem_421972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421972 = call %struct.Memory* @routine_jne_.L_421a45(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421972, i8* %BRANCH_TAKEN, i64 211, i64 6, i64 6)
  store %struct.Memory* %call_421972, %struct.Memory** %MEMORY

  %loadBr_421972 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421972 = icmp eq i8 %loadBr_421972, 1
  br i1 %cmpBr_421972, label %block_.L_421a45, label %block_421978

block_421978:
  ; Code: movl $0x4, %eax	 RIP: 421978	 Bytes: 5
  %loadMem_421978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421978 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421978)
  store %struct.Memory* %call_421978, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 42197d	 Bytes: 2
  %loadMem_42197d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42197d = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42197d)
  store %struct.Memory* %call_42197d, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 42197f	 Bytes: 5
  %loadMem_42197f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42197f = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42197f)
  store %struct.Memory* %call_42197f, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 421984	 Bytes: 2
  %loadMem_421984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421984 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421984)
  store %struct.Memory* %call_421984, %struct.Memory** %MEMORY

  ; Code: leaq -0x30(%rbp), %rcx	 RIP: 421986	 Bytes: 4
  %loadMem_421986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421986 = call %struct.Memory* @routine_leaq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421986)
  store %struct.Memory* %call_421986, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 42198a	 Bytes: 4
  %loadMem_42198a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42198a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42198a)
  store %struct.Memory* %call_42198a, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x70(%rbp)	 RIP: 42198e	 Bytes: 4
  %loadMem_42198e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42198e = call %struct.Memory* @routine_movq__rdi__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42198e)
  store %struct.Memory* %call_42198e, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 421992	 Bytes: 3
  %loadMem_421992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421992 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421992)
  store %struct.Memory* %call_421992, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rcx	 RIP: 421995	 Bytes: 4
  %loadMem_421995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421995 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421995)
  store %struct.Memory* %call_421995, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 421999	 Bytes: 5
  %loadMem1_421999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421999 = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421999, i64 -132489, i64 5, i64 5)
  store %struct.Memory* %call1_421999, %struct.Memory** %MEMORY

  %loadMem2_421999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421999 = load i64, i64* %3
  %call2_421999 = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_421999, %struct.Memory* %loadMem2_421999)
  store %struct.Memory* %call2_421999, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 42199e	 Bytes: 4
  %loadMem_42199e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42199e = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42199e)
  store %struct.Memory* %call_42199e, %struct.Memory** %MEMORY

  ; Code: jne .L_4219b5	 RIP: 4219a2	 Bytes: 6
  %loadMem_4219a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219a2 = call %struct.Memory* @routine_jne_.L_4219b5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219a2, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4219a2, %struct.Memory** %MEMORY

  %loadBr_4219a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4219a2 = icmp eq i8 %loadBr_4219a2, 1
  br i1 %cmpBr_4219a2, label %block_.L_4219b5, label %block_4219a8

block_4219a8:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 4219a8	 Bytes: 8
  %loadMem_4219a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219a8 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219a8)
  store %struct.Memory* %call_4219a8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_422364	 RIP: 4219b0	 Bytes: 5
  %loadMem_4219b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219b0 = call %struct.Memory* @routine_jmpq_.L_422364(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219b0, i64 2484, i64 5)
  store %struct.Memory* %call_4219b0, %struct.Memory** %MEMORY

  br label %block_.L_422364

  ; Code: .L_4219b5:	 RIP: 4219b5	 Bytes: 0
block_.L_4219b5:

  ; Code: cmpl $0x0, -0x18(%rbp)	 RIP: 4219b5	 Bytes: 4
  %loadMem_4219b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219b5 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219b5)
  store %struct.Memory* %call_4219b5, %struct.Memory** %MEMORY

  ; Code: je .L_4219d0	 RIP: 4219b9	 Bytes: 6
  %loadMem_4219b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219b9 = call %struct.Memory* @routine_je_.L_4219d0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219b9, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_4219b9, %struct.Memory** %MEMORY

  %loadBr_4219b9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4219b9 = icmp eq i8 %loadBr_4219b9, 1
  br i1 %cmpBr_4219b9, label %block_.L_4219d0, label %block_4219bf

block_4219bf:
  ; Code: movl $0x4, %esi	 RIP: 4219bf	 Bytes: 5
  %loadMem_4219bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219bf = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219bf)
  store %struct.Memory* %call_4219bf, %struct.Memory** %MEMORY

  ; Code: leaq -0x30(%rbp), %rax	 RIP: 4219c4	 Bytes: 4
  %loadMem_4219c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219c4 = call %struct.Memory* @routine_leaq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219c4)
  store %struct.Memory* %call_4219c4, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4219c8	 Bytes: 3
  %loadMem_4219c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219c8 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219c8)
  store %struct.Memory* %call_4219c8, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 4219cb	 Bytes: 5
  %loadMem1_4219cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4219cb = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4219cb, i64 2485, i64 5, i64 5)
  store %struct.Memory* %call1_4219cb, %struct.Memory** %MEMORY

  %loadMem2_4219cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4219cb = load i64, i64* %3
  %call2_4219cb = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_4219cb, %struct.Memory* %loadMem2_4219cb)
  store %struct.Memory* %call2_4219cb, %struct.Memory** %MEMORY

  ; Code: .L_4219d0:	 RIP: 4219d0	 Bytes: 0
  br label %block_.L_4219d0
block_.L_4219d0:

  ; Code: movq $0x45763b, %rdi	 RIP: 4219d0	 Bytes: 10
  %loadMem_4219d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219d0 = call %struct.Memory* @routine_movq__0x45763b___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219d0)
  store %struct.Memory* %call_4219d0, %struct.Memory** %MEMORY

  ; Code: movl $0x5c3, %esi	 RIP: 4219da	 Bytes: 5
  %loadMem_4219da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219da = call %struct.Memory* @routine_movl__0x5c3___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219da)
  store %struct.Memory* %call_4219da, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4219df	 Bytes: 4
  %loadMem_4219df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219df = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219df)
  store %struct.Memory* %call_4219df, %struct.Memory** %MEMORY

  ; Code: movq 0x70(%rax), %rdx	 RIP: 4219e3	 Bytes: 4
  %loadMem_4219e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219e3 = call %struct.Memory* @routine_movq_0x70__rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219e3)
  store %struct.Memory* %call_4219e3, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %ecx	 RIP: 4219e7	 Bytes: 3
  %loadMem_4219e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219e7 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219e7)
  store %struct.Memory* %call_4219e7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4219ea	 Bytes: 3
  %loadMem_4219ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219ea = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219ea)
  store %struct.Memory* %call_4219ea, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 4219ed	 Bytes: 3
  %loadMem_4219ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219ed = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219ed)
  store %struct.Memory* %call_4219ed, %struct.Memory** %MEMORY

  ; Code: shlq $0x0, %rax	 RIP: 4219f0	 Bytes: 4
  %loadMem_4219f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219f0 = call %struct.Memory* @routine_shlq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219f0)
  store %struct.Memory* %call_4219f0, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 4219f4	 Bytes: 3
  %loadMem_4219f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219f4 = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219f4)
  store %struct.Memory* %call_4219f4, %struct.Memory** %MEMORY

  ; Code: callq .sre_realloc	 RIP: 4219f7	 Bytes: 5
  %loadMem1_4219f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4219f7 = call %struct.Memory* @routine_callq_.sre_realloc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4219f7, i64 149177, i64 5, i64 5)
  store %struct.Memory* %call1_4219f7, %struct.Memory** %MEMORY

  %loadMem2_4219f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4219f7 = load i64, i64* %3
  %call2_4219f7 = call %struct.Memory* @sub_4460b0.sre_realloc(%struct.State* %0, i64  %loadPC_4219f7, %struct.Memory* %loadMem2_4219f7)
  store %struct.Memory* %call2_4219f7, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %esi	 RIP: 4219fc	 Bytes: 5
  %loadMem_4219fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219fc = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219fc)
  store %struct.Memory* %call_4219fc, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 421a01	 Bytes: 4
  %loadMem_421a01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a01 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a01)
  store %struct.Memory* %call_421a01, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x70(%rcx)	 RIP: 421a05	 Bytes: 4
  %loadMem_421a05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a05 = call %struct.Memory* @routine_movq__rax__0x70__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a05)
  store %struct.Memory* %call_421a05, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 421a09	 Bytes: 4
  %loadMem_421a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a09 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a09)
  store %struct.Memory* %call_421a09, %struct.Memory** %MEMORY

  ; Code: movq 0x70(%rax), %rdi	 RIP: 421a0d	 Bytes: 4
  %loadMem_421a0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a0d = call %struct.Memory* @routine_movq_0x70__rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a0d)
  store %struct.Memory* %call_421a0d, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdx	 RIP: 421a11	 Bytes: 4
  %loadMem_421a11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a11 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a11)
  store %struct.Memory* %call_421a11, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 421a15	 Bytes: 4
  %loadMem_421a15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a15 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a15)
  store %struct.Memory* %call_421a15, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 421a19	 Bytes: 5
  %loadMem1_421a19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421a19 = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421a19, i64 -132617, i64 5, i64 5)
  store %struct.Memory* %call1_421a19, %struct.Memory** %MEMORY

  %loadMem2_421a19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421a19 = load i64, i64* %3
  %call2_421a19 = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_421a19, %struct.Memory* %loadMem2_421a19)
  store %struct.Memory* %call2_421a19, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 421a1e	 Bytes: 4
  %loadMem_421a1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a1e = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a1e)
  store %struct.Memory* %call_421a1e, %struct.Memory** %MEMORY

  ; Code: jne .L_421a35	 RIP: 421a22	 Bytes: 6
  %loadMem_421a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a22 = call %struct.Memory* @routine_jne_.L_421a35(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a22, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_421a22, %struct.Memory** %MEMORY

  %loadBr_421a22 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421a22 = icmp eq i8 %loadBr_421a22, 1
  br i1 %cmpBr_421a22, label %block_.L_421a35, label %block_421a28

block_421a28:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 421a28	 Bytes: 8
  %loadMem_421a28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a28 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a28)
  store %struct.Memory* %call_421a28, %struct.Memory** %MEMORY

  ; Code: jmpq .L_422364	 RIP: 421a30	 Bytes: 5
  %loadMem_421a30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a30 = call %struct.Memory* @routine_jmpq_.L_422364(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a30, i64 2356, i64 5)
  store %struct.Memory* %call_421a30, %struct.Memory** %MEMORY

  br label %block_.L_422364

  ; Code: .L_421a35:	 RIP: 421a35	 Bytes: 0
block_.L_421a35:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 421a35	 Bytes: 4
  %loadMem_421a35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a35 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a35)
  store %struct.Memory* %call_421a35, %struct.Memory** %MEMORY

  ; Code: movq 0x70(%rax), %rax	 RIP: 421a39	 Bytes: 4
  %loadMem_421a39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a39 = call %struct.Memory* @routine_movq_0x70__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a39)
  store %struct.Memory* %call_421a39, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 421a3d	 Bytes: 4
  %loadMem_421a3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a3d = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a3d)
  store %struct.Memory* %call_421a3d, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rax,%rcx,1)	 RIP: 421a41	 Bytes: 4
  %loadMem_421a41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a41 = call %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a41)
  store %struct.Memory* %call_421a41, %struct.Memory** %MEMORY

  ; Code: .L_421a45:	 RIP: 421a45	 Bytes: 0
  br label %block_.L_421a45
block_.L_421a45:

  ; Code: movl $0x4, %eax	 RIP: 421a45	 Bytes: 5
  %loadMem_421a45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a45 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a45)
  store %struct.Memory* %call_421a45, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 421a4a	 Bytes: 2
  %loadMem_421a4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a4a = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a4a)
  store %struct.Memory* %call_421a4a, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 421a4c	 Bytes: 5
  %loadMem_421a4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a4c = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a4c)
  store %struct.Memory* %call_421a4c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 421a51	 Bytes: 2
  %loadMem_421a51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a51 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a51)
  store %struct.Memory* %call_421a51, %struct.Memory** %MEMORY

  ; Code: leaq -0x38(%rbp), %rcx	 RIP: 421a53	 Bytes: 4
  %loadMem_421a53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a53 = call %struct.Memory* @routine_leaq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a53)
  store %struct.Memory* %call_421a53, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 421a57	 Bytes: 4
  %loadMem_421a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a57 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a57)
  store %struct.Memory* %call_421a57, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x78(%rbp)	 RIP: 421a5b	 Bytes: 4
  %loadMem_421a5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a5b = call %struct.Memory* @routine_movq__rdi__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a5b)
  store %struct.Memory* %call_421a5b, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 421a5f	 Bytes: 3
  %loadMem_421a5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a5f = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a5f)
  store %struct.Memory* %call_421a5f, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %rcx	 RIP: 421a62	 Bytes: 4
  %loadMem_421a62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a62 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a62)
  store %struct.Memory* %call_421a62, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 421a66	 Bytes: 5
  %loadMem1_421a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421a66 = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421a66, i64 -132694, i64 5, i64 5)
  store %struct.Memory* %call1_421a66, %struct.Memory** %MEMORY

  %loadMem2_421a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421a66 = load i64, i64* %3
  %call2_421a66 = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_421a66, %struct.Memory* %loadMem2_421a66)
  store %struct.Memory* %call2_421a66, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 421a6b	 Bytes: 4
  %loadMem_421a6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a6b = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a6b)
  store %struct.Memory* %call_421a6b, %struct.Memory** %MEMORY

  ; Code: jne .L_421a82	 RIP: 421a6f	 Bytes: 6
  %loadMem_421a6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a6f = call %struct.Memory* @routine_jne_.L_421a82(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a6f, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_421a6f, %struct.Memory** %MEMORY

  %loadBr_421a6f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421a6f = icmp eq i8 %loadBr_421a6f, 1
  br i1 %cmpBr_421a6f, label %block_.L_421a82, label %block_421a75

block_421a75:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 421a75	 Bytes: 8
  %loadMem_421a75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a75 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a75)
  store %struct.Memory* %call_421a75, %struct.Memory** %MEMORY

  ; Code: jmpq .L_422364	 RIP: 421a7d	 Bytes: 5
  %loadMem_421a7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a7d = call %struct.Memory* @routine_jmpq_.L_422364(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a7d, i64 2279, i64 5)
  store %struct.Memory* %call_421a7d, %struct.Memory** %MEMORY

  br label %block_.L_422364

  ; Code: .L_421a82:	 RIP: 421a82	 Bytes: 0
block_.L_421a82:

  ; Code: movl $0x1, %eax	 RIP: 421a82	 Bytes: 5
  %loadMem_421a82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a82 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a82)
  store %struct.Memory* %call_421a82, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 421a87	 Bytes: 2
  %loadMem_421a87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a87 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a87)
  store %struct.Memory* %call_421a87, %struct.Memory** %MEMORY

  ; Code: leaq -0x50(%rbp), %rdi	 RIP: 421a89	 Bytes: 4
  %loadMem_421a89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a89 = call %struct.Memory* @routine_leaq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a89)
  store %struct.Memory* %call_421a89, %struct.Memory** %MEMORY

  ; Code: movslq 0x677060, %rdx	 RIP: 421a8d	 Bytes: 8
  %loadMem_421a8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a8d = call %struct.Memory* @routine_movslq_0x677060___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a8d)
  store %struct.Memory* %call_421a8d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 421a95	 Bytes: 4
  %loadMem_421a95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a95 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a95)
  store %struct.Memory* %call_421a95, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 421a99	 Bytes: 5
  %loadMem1_421a99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421a99 = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421a99, i64 -132745, i64 5, i64 5)
  store %struct.Memory* %call1_421a99, %struct.Memory** %MEMORY

  %loadMem2_421a99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421a99 = load i64, i64* %3
  %call2_421a99 = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_421a99, %struct.Memory* %loadMem2_421a99)
  store %struct.Memory* %call2_421a99, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 421a9e	 Bytes: 4
  %loadMem_421a9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a9e = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a9e)
  store %struct.Memory* %call_421a9e, %struct.Memory** %MEMORY

  ; Code: jne .L_421ab5	 RIP: 421aa2	 Bytes: 6
  %loadMem_421aa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421aa2 = call %struct.Memory* @routine_jne_.L_421ab5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421aa2, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_421aa2, %struct.Memory** %MEMORY

  %loadBr_421aa2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421aa2 = icmp eq i8 %loadBr_421aa2, 1
  br i1 %cmpBr_421aa2, label %block_.L_421ab5, label %block_421aa8

block_421aa8:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 421aa8	 Bytes: 8
  %loadMem_421aa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421aa8 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421aa8)
  store %struct.Memory* %call_421aa8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_422364	 RIP: 421ab0	 Bytes: 5
  %loadMem_421ab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ab0 = call %struct.Memory* @routine_jmpq_.L_422364(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ab0, i64 2228, i64 5)
  store %struct.Memory* %call_421ab0, %struct.Memory** %MEMORY

  br label %block_.L_422364

  ; Code: .L_421ab5:	 RIP: 421ab5	 Bytes: 0
block_.L_421ab5:

  ; Code: cmpl $0x1, -0x14(%rbp)	 RIP: 421ab5	 Bytes: 4
  %loadMem_421ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ab5 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ab5)
  store %struct.Memory* %call_421ab5, %struct.Memory** %MEMORY

  ; Code: jne .L_421adf	 RIP: 421ab9	 Bytes: 6
  %loadMem_421ab9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ab9 = call %struct.Memory* @routine_jne_.L_421adf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ab9, i8* %BRANCH_TAKEN, i64 38, i64 6, i64 6)
  store %struct.Memory* %call_421ab9, %struct.Memory** %MEMORY

  %loadBr_421ab9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421ab9 = icmp eq i8 %loadBr_421ab9, 1
  br i1 %cmpBr_421ab9, label %block_.L_421adf, label %block_421abf

block_421abf:
  ; Code: movl $0x1, %edx	 RIP: 421abf	 Bytes: 5
  %loadMem_421abf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421abf = call %struct.Memory* @routine_movl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421abf)
  store %struct.Memory* %call_421abf, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 421ac4	 Bytes: 4
  %loadMem_421ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ac4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ac4)
  store %struct.Memory* %call_421ac4, %struct.Memory** %MEMORY

  ; Code: movslq 0x677060, %rax	 RIP: 421ac8	 Bytes: 8
  %loadMem_421ac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ac8 = call %struct.Memory* @routine_movslq_0x677060___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ac8)
  store %struct.Memory* %call_421ac8, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rax	 RIP: 421ad0	 Bytes: 4
  %loadMem_421ad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ad0 = call %struct.Memory* @routine_shlq__0x2___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ad0)
  store %struct.Memory* %call_421ad0, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 421ad4	 Bytes: 3
  %loadMem_421ad4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ad4 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ad4)
  store %struct.Memory* %call_421ad4, %struct.Memory** %MEMORY

  ; Code: callq .fseek_plt	 RIP: 421ad7	 Bytes: 5
  %loadMem1_421ad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421ad7 = call %struct.Memory* @routine_callq_.fseek_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421ad7, i64 -132311, i64 5, i64 5)
  store %struct.Memory* %call1_421ad7, %struct.Memory** %MEMORY

  %loadMem2_421ad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421ad7 = load i64, i64* %3
  %call2_421ad7 = call %struct.Memory* @sub_401600.fseek_plt(%struct.State* %0, i64  %loadPC_421ad7, %struct.Memory* %loadMem2_421ad7)
  store %struct.Memory* %call2_421ad7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x7c(%rbp)	 RIP: 421adc	 Bytes: 3
  %loadMem_421adc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421adc = call %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421adc)
  store %struct.Memory* %call_421adc, %struct.Memory** %MEMORY

  ; Code: .L_421adf:	 RIP: 421adf	 Bytes: 0
  br label %block_.L_421adf
block_.L_421adf:

  ; Code: cmpl $0x5, -0x14(%rbp)	 RIP: 421adf	 Bytes: 4
  %loadMem_421adf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421adf = call %struct.Memory* @routine_cmpl__0x5__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421adf)
  store %struct.Memory* %call_421adf, %struct.Memory** %MEMORY

  ; Code: je .L_421af3	 RIP: 421ae3	 Bytes: 6
  %loadMem_421ae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ae3 = call %struct.Memory* @routine_je_.L_421af3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ae3, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_421ae3, %struct.Memory** %MEMORY

  %loadBr_421ae3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421ae3 = icmp eq i8 %loadBr_421ae3, 1
  br i1 %cmpBr_421ae3, label %block_.L_421af3, label %block_421ae9

block_421ae9:
  ; Code: cmpl $0x7, -0x14(%rbp)	 RIP: 421ae9	 Bytes: 4
  %loadMem_421ae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ae9 = call %struct.Memory* @routine_cmpl__0x7__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ae9)
  store %struct.Memory* %call_421ae9, %struct.Memory** %MEMORY

  ; Code: jne .L_421c36	 RIP: 421aed	 Bytes: 6
  %loadMem_421aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421aed = call %struct.Memory* @routine_jne_.L_421c36(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421aed, i8* %BRANCH_TAKEN, i64 329, i64 6, i64 6)
  store %struct.Memory* %call_421aed, %struct.Memory** %MEMORY

  %loadBr_421aed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421aed = icmp eq i8 %loadBr_421aed, 1
  br i1 %cmpBr_421aed, label %block_.L_421c36, label %block_.L_421af3

  ; Code: .L_421af3:	 RIP: 421af3	 Bytes: 0
block_.L_421af3:

  ; Code: movl $0x4, %eax	 RIP: 421af3	 Bytes: 5
  %loadMem_421af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421af3 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421af3)
  store %struct.Memory* %call_421af3, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 421af8	 Bytes: 2
  %loadMem_421af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421af8 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421af8)
  store %struct.Memory* %call_421af8, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 421afa	 Bytes: 5
  %loadMem_421afa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421afa = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421afa)
  store %struct.Memory* %call_421afa, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 421aff	 Bytes: 2
  %loadMem_421aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421aff = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421aff)
  store %struct.Memory* %call_421aff, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 421b01	 Bytes: 4
  %loadMem_421b01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b01 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b01)
  store %struct.Memory* %call_421b01, %struct.Memory** %MEMORY

  ; Code: addq $0x90, %rcx	 RIP: 421b05	 Bytes: 7
  %loadMem_421b05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b05 = call %struct.Memory* @routine_addq__0x90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b05)
  store %struct.Memory* %call_421b05, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 421b0c	 Bytes: 4
  %loadMem_421b0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b0c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b0c)
  store %struct.Memory* %call_421b0c, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x88(%rbp)	 RIP: 421b10	 Bytes: 7
  %loadMem_421b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b10 = call %struct.Memory* @routine_movq__rdi__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b10)
  store %struct.Memory* %call_421b10, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 421b17	 Bytes: 3
  %loadMem_421b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b17 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b17)
  store %struct.Memory* %call_421b17, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rcx	 RIP: 421b1a	 Bytes: 7
  %loadMem_421b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b1a = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b1a)
  store %struct.Memory* %call_421b1a, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 421b21	 Bytes: 5
  %loadMem1_421b21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421b21 = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421b21, i64 -132881, i64 5, i64 5)
  store %struct.Memory* %call1_421b21, %struct.Memory** %MEMORY

  %loadMem2_421b21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421b21 = load i64, i64* %3
  %call2_421b21 = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_421b21, %struct.Memory* %loadMem2_421b21)
  store %struct.Memory* %call2_421b21, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 421b26	 Bytes: 4
  %loadMem_421b26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b26 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b26)
  store %struct.Memory* %call_421b26, %struct.Memory** %MEMORY

  ; Code: jne .L_421b3d	 RIP: 421b2a	 Bytes: 6
  %loadMem_421b2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b2a = call %struct.Memory* @routine_jne_.L_421b3d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b2a, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_421b2a, %struct.Memory** %MEMORY

  %loadBr_421b2a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421b2a = icmp eq i8 %loadBr_421b2a, 1
  br i1 %cmpBr_421b2a, label %block_.L_421b3d, label %block_421b30

block_421b30:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 421b30	 Bytes: 8
  %loadMem_421b30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b30 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b30)
  store %struct.Memory* %call_421b30, %struct.Memory** %MEMORY

  ; Code: jmpq .L_422364	 RIP: 421b38	 Bytes: 5
  %loadMem_421b38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b38 = call %struct.Memory* @routine_jmpq_.L_422364(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b38, i64 2092, i64 5)
  store %struct.Memory* %call_421b38, %struct.Memory** %MEMORY

  br label %block_.L_422364

  ; Code: .L_421b3d:	 RIP: 421b3d	 Bytes: 0
block_.L_421b3d:

  ; Code: cmpl $0x0, -0x18(%rbp)	 RIP: 421b3d	 Bytes: 4
  %loadMem_421b3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b3d = call %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b3d)
  store %struct.Memory* %call_421b3d, %struct.Memory** %MEMORY

  ; Code: je .L_421b5e	 RIP: 421b41	 Bytes: 6
  %loadMem_421b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b41 = call %struct.Memory* @routine_je_.L_421b5e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b41, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_421b41, %struct.Memory** %MEMORY

  %loadBr_421b41 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421b41 = icmp eq i8 %loadBr_421b41, 1
  br i1 %cmpBr_421b41, label %block_.L_421b5e, label %block_421b47

block_421b47:
  ; Code: movl $0x4, %esi	 RIP: 421b47	 Bytes: 5
  %loadMem_421b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b47 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b47)
  store %struct.Memory* %call_421b47, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 421b4c	 Bytes: 4
  %loadMem_421b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b4c = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b4c)
  store %struct.Memory* %call_421b4c, %struct.Memory** %MEMORY

  ; Code: addq $0x90, %rax	 RIP: 421b50	 Bytes: 6
  %loadMem_421b50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b50 = call %struct.Memory* @routine_addq__0x90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b50)
  store %struct.Memory* %call_421b50, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 421b56	 Bytes: 3
  %loadMem_421b56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b56 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b56)
  store %struct.Memory* %call_421b56, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 421b59	 Bytes: 5
  %loadMem1_421b59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421b59 = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421b59, i64 2087, i64 5, i64 5)
  store %struct.Memory* %call1_421b59, %struct.Memory** %MEMORY

  %loadMem2_421b59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421b59 = load i64, i64* %3
  %call2_421b59 = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_421b59, %struct.Memory* %loadMem2_421b59)
  store %struct.Memory* %call2_421b59, %struct.Memory** %MEMORY

  ; Code: .L_421b5e:	 RIP: 421b5e	 Bytes: 0
  br label %block_.L_421b5e
block_.L_421b5e:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 421b5e	 Bytes: 4
  %loadMem_421b5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b5e = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b5e)
  store %struct.Memory* %call_421b5e, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rax), %ecx	 RIP: 421b62	 Bytes: 6
  %loadMem_421b62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b62 = call %struct.Memory* @routine_movl_0x90__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b62)
  store %struct.Memory* %call_421b62, %struct.Memory** %MEMORY

  ; Code: andl $0x1, %ecx	 RIP: 421b68	 Bytes: 3
  %loadMem_421b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b68 = call %struct.Memory* @routine_andl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b68)
  store %struct.Memory* %call_421b68, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 421b6b	 Bytes: 3
  %loadMem_421b6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b6b = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b6b)
  store %struct.Memory* %call_421b6b, %struct.Memory** %MEMORY

  ; Code: je .L_421baf	 RIP: 421b6e	 Bytes: 6
  %loadMem_421b6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b6e = call %struct.Memory* @routine_je_.L_421baf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b6e, i8* %BRANCH_TAKEN, i64 65, i64 6, i64 6)
  store %struct.Memory* %call_421b6e, %struct.Memory** %MEMORY

  %loadBr_421b6e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421b6e = icmp eq i8 %loadBr_421b6e, 1
  br i1 %cmpBr_421b6e, label %block_.L_421baf, label %block_421b74

block_421b74:
  ; Code: movl $0x1, %eax	 RIP: 421b74	 Bytes: 5
  %loadMem_421b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b74 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b74)
  store %struct.Memory* %call_421b74, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 421b79	 Bytes: 2
  %loadMem_421b79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b79 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b79)
  store %struct.Memory* %call_421b79, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 421b7b	 Bytes: 4
  %loadMem_421b7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b7b = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b7b)
  store %struct.Memory* %call_421b7b, %struct.Memory** %MEMORY

  ; Code: movq 0x78(%rcx), %rdi	 RIP: 421b7f	 Bytes: 4
  %loadMem_421b7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b7f = call %struct.Memory* @routine_movq_0x78__rcx____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b7f)
  store %struct.Memory* %call_421b7f, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 421b83	 Bytes: 4
  %loadMem_421b83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b83 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b83)
  store %struct.Memory* %call_421b83, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %eax	 RIP: 421b87	 Bytes: 2
  %loadMem_421b87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b87 = call %struct.Memory* @routine_movl___rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b87)
  store %struct.Memory* %call_421b87, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 421b89	 Bytes: 3
  %loadMem_421b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b89 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b89)
  store %struct.Memory* %call_421b89, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 421b8c	 Bytes: 3
  %loadMem_421b8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b8c = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b8c)
  store %struct.Memory* %call_421b8c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 421b8f	 Bytes: 4
  %loadMem_421b8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b8f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b8f)
  store %struct.Memory* %call_421b8f, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 421b93	 Bytes: 5
  %loadMem1_421b93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421b93 = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421b93, i64 -132995, i64 5, i64 5)
  store %struct.Memory* %call1_421b93, %struct.Memory** %MEMORY

  %loadMem2_421b93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421b93 = load i64, i64* %3
  %call2_421b93 = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_421b93, %struct.Memory* %loadMem2_421b93)
  store %struct.Memory* %call2_421b93, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 421b98	 Bytes: 4
  %loadMem_421b98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b98 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b98)
  store %struct.Memory* %call_421b98, %struct.Memory** %MEMORY

  ; Code: jne .L_421baf	 RIP: 421b9c	 Bytes: 6
  %loadMem_421b9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b9c = call %struct.Memory* @routine_jne_.L_421baf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b9c, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_421b9c, %struct.Memory** %MEMORY

  %loadBr_421b9c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421b9c = icmp eq i8 %loadBr_421b9c, 1
  br i1 %cmpBr_421b9c, label %block_.L_421baf, label %block_421ba2

block_421ba2:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 421ba2	 Bytes: 8
  %loadMem_421ba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ba2 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ba2)
  store %struct.Memory* %call_421ba2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_422364	 RIP: 421baa	 Bytes: 5
  %loadMem_421baa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421baa = call %struct.Memory* @routine_jmpq_.L_422364(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421baa, i64 1978, i64 5)
  store %struct.Memory* %call_421baa, %struct.Memory** %MEMORY

  br label %block_.L_422364

  ; Code: .L_421baf:	 RIP: 421baf	 Bytes: 0
block_.L_421baf:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 421baf	 Bytes: 4
  %loadMem_421baf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421baf = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421baf)
  store %struct.Memory* %call_421baf, %struct.Memory** %MEMORY

  ; Code: movq 0x78(%rax), %rax	 RIP: 421bb3	 Bytes: 4
  %loadMem_421bb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bb3 = call %struct.Memory* @routine_movq_0x78__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bb3)
  store %struct.Memory* %call_421bb3, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 421bb7	 Bytes: 4
  %loadMem_421bb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bb7 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bb7)
  store %struct.Memory* %call_421bb7, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %edx	 RIP: 421bbb	 Bytes: 2
  %loadMem_421bbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bbb = call %struct.Memory* @routine_movl___rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bbb)
  store %struct.Memory* %call_421bbb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 421bbd	 Bytes: 3
  %loadMem_421bbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bbd = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bbd)
  store %struct.Memory* %call_421bbd, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 421bc0	 Bytes: 3
  %loadMem_421bc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bc0 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bc0)
  store %struct.Memory* %call_421bc0, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rax,%rcx,1)	 RIP: 421bc3	 Bytes: 4
  %loadMem_421bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bc3 = call %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bc3)
  store %struct.Memory* %call_421bc3, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 421bc7	 Bytes: 4
  %loadMem_421bc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bc7 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bc7)
  store %struct.Memory* %call_421bc7, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rax), %edx	 RIP: 421bcb	 Bytes: 6
  %loadMem_421bcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bcb = call %struct.Memory* @routine_movl_0x90__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bcb)
  store %struct.Memory* %call_421bcb, %struct.Memory** %MEMORY

  ; Code: andl $0x2, %edx	 RIP: 421bd1	 Bytes: 3
  %loadMem_421bd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bd1 = call %struct.Memory* @routine_andl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bd1)
  store %struct.Memory* %call_421bd1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 421bd4	 Bytes: 3
  %loadMem_421bd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bd4 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bd4)
  store %struct.Memory* %call_421bd4, %struct.Memory** %MEMORY

  ; Code: je .L_421c1b	 RIP: 421bd7	 Bytes: 6
  %loadMem_421bd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bd7 = call %struct.Memory* @routine_je_.L_421c1b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bd7, i8* %BRANCH_TAKEN, i64 68, i64 6, i64 6)
  store %struct.Memory* %call_421bd7, %struct.Memory** %MEMORY

  %loadBr_421bd7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421bd7 = icmp eq i8 %loadBr_421bd7, 1
  br i1 %cmpBr_421bd7, label %block_.L_421c1b, label %block_421bdd

block_421bdd:
  ; Code: movl $0x1, %eax	 RIP: 421bdd	 Bytes: 5
  %loadMem_421bdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bdd = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bdd)
  store %struct.Memory* %call_421bdd, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 421be2	 Bytes: 2
  %loadMem_421be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421be2 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421be2)
  store %struct.Memory* %call_421be2, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 421be4	 Bytes: 4
  %loadMem_421be4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421be4 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421be4)
  store %struct.Memory* %call_421be4, %struct.Memory** %MEMORY

  ; Code: movq 0x80(%rcx), %rdi	 RIP: 421be8	 Bytes: 7
  %loadMem_421be8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421be8 = call %struct.Memory* @routine_movq_0x80__rcx____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421be8)
  store %struct.Memory* %call_421be8, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 421bef	 Bytes: 4
  %loadMem_421bef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bef = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bef)
  store %struct.Memory* %call_421bef, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %eax	 RIP: 421bf3	 Bytes: 2
  %loadMem_421bf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bf3 = call %struct.Memory* @routine_movl___rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bf3)
  store %struct.Memory* %call_421bf3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 421bf5	 Bytes: 3
  %loadMem_421bf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bf5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bf5)
  store %struct.Memory* %call_421bf5, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 421bf8	 Bytes: 3
  %loadMem_421bf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bf8 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bf8)
  store %struct.Memory* %call_421bf8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 421bfb	 Bytes: 4
  %loadMem_421bfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bfb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bfb)
  store %struct.Memory* %call_421bfb, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 421bff	 Bytes: 5
  %loadMem1_421bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421bff = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421bff, i64 -133103, i64 5, i64 5)
  store %struct.Memory* %call1_421bff, %struct.Memory** %MEMORY

  %loadMem2_421bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421bff = load i64, i64* %3
  %call2_421bff = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_421bff, %struct.Memory* %loadMem2_421bff)
  store %struct.Memory* %call2_421bff, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 421c04	 Bytes: 4
  %loadMem_421c04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c04 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c04)
  store %struct.Memory* %call_421c04, %struct.Memory** %MEMORY

  ; Code: jne .L_421c1b	 RIP: 421c08	 Bytes: 6
  %loadMem_421c08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c08 = call %struct.Memory* @routine_jne_.L_421c1b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c08, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_421c08, %struct.Memory** %MEMORY

  %loadBr_421c08 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421c08 = icmp eq i8 %loadBr_421c08, 1
  br i1 %cmpBr_421c08, label %block_.L_421c1b, label %block_421c0e

block_421c0e:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 421c0e	 Bytes: 8
  %loadMem_421c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c0e = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c0e)
  store %struct.Memory* %call_421c0e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_422364	 RIP: 421c16	 Bytes: 5
  %loadMem_421c16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c16 = call %struct.Memory* @routine_jmpq_.L_422364(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c16, i64 1870, i64 5)
  store %struct.Memory* %call_421c16, %struct.Memory** %MEMORY

  br label %block_.L_422364

  ; Code: .L_421c1b:	 RIP: 421c1b	 Bytes: 0
block_.L_421c1b:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 421c1b	 Bytes: 4
  %loadMem_421c1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c1b = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c1b)
  store %struct.Memory* %call_421c1b, %struct.Memory** %MEMORY

  ; Code: movq 0x80(%rax), %rax	 RIP: 421c1f	 Bytes: 7
  %loadMem_421c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c1f = call %struct.Memory* @routine_movq_0x80__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c1f)
  store %struct.Memory* %call_421c1f, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 421c26	 Bytes: 4
  %loadMem_421c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c26 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c26)
  store %struct.Memory* %call_421c26, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %edx	 RIP: 421c2a	 Bytes: 2
  %loadMem_421c2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c2a = call %struct.Memory* @routine_movl___rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c2a)
  store %struct.Memory* %call_421c2a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 421c2c	 Bytes: 3
  %loadMem_421c2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c2c = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c2c)
  store %struct.Memory* %call_421c2c, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 421c2f	 Bytes: 3
  %loadMem_421c2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c2f = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c2f)
  store %struct.Memory* %call_421c2f, %struct.Memory** %MEMORY

  ; Code: movb $0x0, (%rax,%rcx,1)	 RIP: 421c32	 Bytes: 4
  %loadMem_421c32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c32 = call %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c32)
  store %struct.Memory* %call_421c32, %struct.Memory** %MEMORY

  ; Code: .L_421c36:	 RIP: 421c36	 Bytes: 0
  br label %block_.L_421c36
block_.L_421c36:

  ; Code: cmpl $0x7, -0x14(%rbp)	 RIP: 421c36	 Bytes: 4
  %loadMem_421c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c36 = call %struct.Memory* @routine_cmpl__0x7__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c36)
  store %struct.Memory* %call_421c36, %struct.Memory** %MEMORY

  ; Code: jne .L_421ce1	 RIP: 421c3a	 Bytes: 6
  %loadMem_421c3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c3a = call %struct.Memory* @routine_jne_.L_421ce1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c3a, i8* %BRANCH_TAKEN, i64 167, i64 6, i64 6)
  store %struct.Memory* %call_421c3a, %struct.Memory** %MEMORY

  %loadBr_421c3a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421c3a = icmp eq i8 %loadBr_421c3a, 1
  br i1 %cmpBr_421c3a, label %block_.L_421ce1, label %block_421c40

block_421c40:
  ; Code: movl $0x4, %eax	 RIP: 421c40	 Bytes: 5
  %loadMem_421c40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c40 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c40)
  store %struct.Memory* %call_421c40, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 421c45	 Bytes: 2
  %loadMem_421c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c45 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c45)
  store %struct.Memory* %call_421c45, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 421c47	 Bytes: 4
  %loadMem_421c47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c47 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c47)
  store %struct.Memory* %call_421c47, %struct.Memory** %MEMORY

  ; Code: addq $0x20, %rcx	 RIP: 421c4b	 Bytes: 4
  %loadMem_421c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c4b = call %struct.Memory* @routine_addq__0x20___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c4b)
  store %struct.Memory* %call_421c4b, %struct.Memory** %MEMORY

  ; Code: movslq 0x677060, %rdx	 RIP: 421c4f	 Bytes: 8
  %loadMem_421c4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c4f = call %struct.Memory* @routine_movslq_0x677060___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c4f)
  store %struct.Memory* %call_421c4f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 421c57	 Bytes: 4
  %loadMem_421c57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c57 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c57)
  store %struct.Memory* %call_421c57, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x90(%rbp)	 RIP: 421c5b	 Bytes: 7
  %loadMem_421c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c5b = call %struct.Memory* @routine_movq__rdi__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c5b)
  store %struct.Memory* %call_421c5b, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 421c62	 Bytes: 3
  %loadMem_421c62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c62 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c62)
  store %struct.Memory* %call_421c62, %struct.Memory** %MEMORY

  ; Code: movq -0x90(%rbp), %rcx	 RIP: 421c65	 Bytes: 7
  %loadMem_421c65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c65 = call %struct.Memory* @routine_movq_MINUS0x90__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c65)
  store %struct.Memory* %call_421c65, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 421c6c	 Bytes: 5
  %loadMem1_421c6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421c6c = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421c6c, i64 -133212, i64 5, i64 5)
  store %struct.Memory* %call1_421c6c, %struct.Memory** %MEMORY

  %loadMem2_421c6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421c6c = load i64, i64* %3
  %call2_421c6c = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_421c6c, %struct.Memory* %loadMem2_421c6c)
  store %struct.Memory* %call2_421c6c, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 421c71	 Bytes: 4
  %loadMem_421c71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c71 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c71)
  store %struct.Memory* %call_421c71, %struct.Memory** %MEMORY

  ; Code: jne .L_421c88	 RIP: 421c75	 Bytes: 6
  %loadMem_421c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c75 = call %struct.Memory* @routine_jne_.L_421c88(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c75, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_421c75, %struct.Memory** %MEMORY

  %loadBr_421c75 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421c75 = icmp eq i8 %loadBr_421c75, 1
  br i1 %cmpBr_421c75, label %block_.L_421c88, label %block_421c7b

block_421c7b:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 421c7b	 Bytes: 8
  %loadMem_421c7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c7b = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c7b)
  store %struct.Memory* %call_421c7b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_422364	 RIP: 421c83	 Bytes: 5
  %loadMem_421c83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c83 = call %struct.Memory* @routine_jmpq_.L_422364(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c83, i64 1761, i64 5)
  store %struct.Memory* %call_421c83, %struct.Memory** %MEMORY

  br label %block_.L_422364

  ; Code: .L_421c88:	 RIP: 421c88	 Bytes: 0
block_.L_421c88:

  ; Code: cmpl $0x0, -0x18(%rbp)	 RIP: 421c88	 Bytes: 4
  %loadMem_421c88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c88 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c88)
  store %struct.Memory* %call_421c88, %struct.Memory** %MEMORY

  ; Code: je .L_421cdc	 RIP: 421c8c	 Bytes: 6
  %loadMem_421c8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c8c = call %struct.Memory* @routine_je_.L_421cdc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c8c, i8* %BRANCH_TAKEN, i64 80, i64 6, i64 6)
  store %struct.Memory* %call_421c8c, %struct.Memory** %MEMORY

  %loadBr_421c8c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421c8c = icmp eq i8 %loadBr_421c8c, 1
  br i1 %cmpBr_421c8c, label %block_.L_421cdc, label %block_421c92

block_421c92:
  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 421c92	 Bytes: 7
  %loadMem_421c92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c92 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c92)
  store %struct.Memory* %call_421c92, %struct.Memory** %MEMORY

  ; Code: .L_421c99:	 RIP: 421c99	 Bytes: 0
  br label %block_.L_421c99
block_.L_421c99:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 421c99	 Bytes: 3
  %loadMem_421c99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c99 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c99)
  store %struct.Memory* %call_421c99, %struct.Memory** %MEMORY

  ; Code: cmpl 0x677060, %eax	 RIP: 421c9c	 Bytes: 7
  %loadMem_421c9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421c9c = call %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421c9c)
  store %struct.Memory* %call_421c9c, %struct.Memory** %MEMORY

  ; Code: jge .L_421cd7	 RIP: 421ca3	 Bytes: 6
  %loadMem_421ca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ca3 = call %struct.Memory* @routine_jge_.L_421cd7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ca3, i8* %BRANCH_TAKEN, i64 52, i64 6, i64 6)
  store %struct.Memory* %call_421ca3, %struct.Memory** %MEMORY

  %loadBr_421ca3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421ca3 = icmp eq i8 %loadBr_421ca3, 1
  br i1 %cmpBr_421ca3, label %block_.L_421cd7, label %block_421ca9

block_421ca9:
  ; Code: movl $0x4, %esi	 RIP: 421ca9	 Bytes: 5
  %loadMem_421ca9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ca9 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ca9)
  store %struct.Memory* %call_421ca9, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 421cae	 Bytes: 4
  %loadMem_421cae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421cae = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421cae)
  store %struct.Memory* %call_421cae, %struct.Memory** %MEMORY

  ; Code: addq $0x20, %rax	 RIP: 421cb2	 Bytes: 4
  %loadMem_421cb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421cb2 = call %struct.Memory* @routine_addq__0x20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421cb2)
  store %struct.Memory* %call_421cb2, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 421cb6	 Bytes: 4
  %loadMem_421cb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421cb6 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421cb6)
  store %struct.Memory* %call_421cb6, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rcx	 RIP: 421cba	 Bytes: 4
  %loadMem_421cba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421cba = call %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421cba)
  store %struct.Memory* %call_421cba, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 421cbe	 Bytes: 3
  %loadMem_421cbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421cbe = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421cbe)
  store %struct.Memory* %call_421cbe, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 421cc1	 Bytes: 3
  %loadMem_421cc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421cc1 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421cc1)
  store %struct.Memory* %call_421cc1, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 421cc4	 Bytes: 5
  %loadMem1_421cc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421cc4 = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421cc4, i64 1724, i64 5, i64 5)
  store %struct.Memory* %call1_421cc4, %struct.Memory** %MEMORY

  %loadMem2_421cc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421cc4 = load i64, i64* %3
  %call2_421cc4 = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_421cc4, %struct.Memory* %loadMem2_421cc4)
  store %struct.Memory* %call2_421cc4, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 421cc9	 Bytes: 3
  %loadMem_421cc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421cc9 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421cc9)
  store %struct.Memory* %call_421cc9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 421ccc	 Bytes: 3
  %loadMem_421ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ccc = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ccc)
  store %struct.Memory* %call_421ccc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 421ccf	 Bytes: 3
  %loadMem_421ccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ccf = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ccf)
  store %struct.Memory* %call_421ccf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421c99	 RIP: 421cd2	 Bytes: 5
  %loadMem_421cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421cd2 = call %struct.Memory* @routine_jmpq_.L_421c99(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421cd2, i64 -57, i64 5)
  store %struct.Memory* %call_421cd2, %struct.Memory** %MEMORY

  br label %block_.L_421c99

  ; Code: .L_421cd7:	 RIP: 421cd7	 Bytes: 0
block_.L_421cd7:

  ; Code: jmpq .L_421cdc	 RIP: 421cd7	 Bytes: 5
  %loadMem_421cd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421cd7 = call %struct.Memory* @routine_jmpq_.L_421cdc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421cd7, i64 5, i64 5)
  store %struct.Memory* %call_421cd7, %struct.Memory** %MEMORY

  br label %block_.L_421cdc

  ; Code: .L_421cdc:	 RIP: 421cdc	 Bytes: 0
block_.L_421cdc:

  ; Code: jmpq .L_421cf1	 RIP: 421cdc	 Bytes: 5
  %loadMem_421cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421cdc = call %struct.Memory* @routine_jmpq_.L_421cf1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421cdc, i64 21, i64 5)
  store %struct.Memory* %call_421cdc, %struct.Memory** %MEMORY

  br label %block_.L_421cf1

  ; Code: .L_421ce1:	 RIP: 421ce1	 Bytes: 0
block_.L_421ce1:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 421ce1	 Bytes: 4
  %loadMem_421ce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ce1 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ce1)
  store %struct.Memory* %call_421ce1, %struct.Memory** %MEMORY

  ; Code: addq $0x20, %rax	 RIP: 421ce5	 Bytes: 4
  %loadMem_421ce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ce5 = call %struct.Memory* @routine_addq__0x20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ce5)
  store %struct.Memory* %call_421ce5, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 421ce9	 Bytes: 3
  %loadMem_421ce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ce9 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ce9)
  store %struct.Memory* %call_421ce9, %struct.Memory** %MEMORY

  ; Code: callq .P9DefaultNullModel	 RIP: 421cec	 Bytes: 5
  %loadMem1_421cec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421cec = call %struct.Memory* @routine_callq_.P9DefaultNullModel(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421cec, i64 80372, i64 5, i64 5)
  store %struct.Memory* %call1_421cec, %struct.Memory** %MEMORY

  %loadMem2_421cec = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421cec = load i64, i64* %3
  %call2_421cec = call %struct.Memory* @sub_4356e0.P9DefaultNullModel(%struct.State* %0, i64  %loadPC_421cec, %struct.Memory* %loadMem2_421cec)
  store %struct.Memory* %call2_421cec, %struct.Memory** %MEMORY

  ; Code: .L_421cf1:	 RIP: 421cf1	 Bytes: 0
  br label %block_.L_421cf1
block_.L_421cf1:

  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 421cf1	 Bytes: 7
  %loadMem_421cf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421cf1 = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421cf1)
  store %struct.Memory* %call_421cf1, %struct.Memory** %MEMORY

  ; Code: .L_421cf8:	 RIP: 421cf8	 Bytes: 0
  br label %block_.L_421cf8
block_.L_421cf8:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 421cf8	 Bytes: 3
  %loadMem_421cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421cf8 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421cf8)
  store %struct.Memory* %call_421cf8, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 421cfb	 Bytes: 4
  %loadMem_421cfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421cfb = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421cfb)
  store %struct.Memory* %call_421cfb, %struct.Memory** %MEMORY

  ; Code: cmpl (%rcx), %eax	 RIP: 421cff	 Bytes: 2
  %loadMem_421cff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421cff = call %struct.Memory* @routine_cmpl___rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421cff)
  store %struct.Memory* %call_421cff, %struct.Memory** %MEMORY

  ; Code: jg .L_422353	 RIP: 421d01	 Bytes: 6
  %loadMem_421d01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d01 = call %struct.Memory* @routine_jg_.L_422353(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d01, i8* %BRANCH_TAKEN, i64 1618, i64 6, i64 6)
  store %struct.Memory* %call_421d01, %struct.Memory** %MEMORY

  %loadBr_421d01 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421d01 = icmp eq i8 %loadBr_421d01, 1
  br i1 %cmpBr_421d01, label %block_.L_422353, label %block_421d07

block_421d07:
  ; Code: movl $0x4, %eax	 RIP: 421d07	 Bytes: 5
  %loadMem_421d07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d07 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d07)
  store %struct.Memory* %call_421d07, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 421d0c	 Bytes: 2
  %loadMem_421d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d0c = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d0c)
  store %struct.Memory* %call_421d0c, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 421d0e	 Bytes: 5
  %loadMem_421d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d0e = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d0e)
  store %struct.Memory* %call_421d0e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 421d13	 Bytes: 2
  %loadMem_421d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d13 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d13)
  store %struct.Memory* %call_421d13, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 421d15	 Bytes: 4
  %loadMem_421d15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d15 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d15)
  store %struct.Memory* %call_421d15, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rcx), %rcx	 RIP: 421d19	 Bytes: 4
  %loadMem_421d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d19 = call %struct.Memory* @routine_movq_0x10__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d19)
  store %struct.Memory* %call_421d19, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdi	 RIP: 421d1d	 Bytes: 4
  %loadMem_421d1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d1d = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d1d)
  store %struct.Memory* %call_421d1d, %struct.Memory** %MEMORY

  ; Code: imulq $0x5c, %rdi, %rdi	 RIP: 421d21	 Bytes: 4
  %loadMem_421d21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d21 = call %struct.Memory* @routine_imulq__0x5c___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d21)
  store %struct.Memory* %call_421d21, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rcx	 RIP: 421d25	 Bytes: 3
  %loadMem_421d25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d25 = call %struct.Memory* @routine_addq__rdi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d25)
  store %struct.Memory* %call_421d25, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 421d28	 Bytes: 4
  %loadMem_421d28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d28 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d28)
  store %struct.Memory* %call_421d28, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x98(%rbp)	 RIP: 421d2c	 Bytes: 7
  %loadMem_421d2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d2c = call %struct.Memory* @routine_movq__rdi__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d2c)
  store %struct.Memory* %call_421d2c, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 421d33	 Bytes: 3
  %loadMem_421d33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d33 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d33)
  store %struct.Memory* %call_421d33, %struct.Memory** %MEMORY

  ; Code: movq -0x98(%rbp), %rcx	 RIP: 421d36	 Bytes: 7
  %loadMem_421d36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d36 = call %struct.Memory* @routine_movq_MINUS0x98__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d36)
  store %struct.Memory* %call_421d36, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 421d3d	 Bytes: 5
  %loadMem1_421d3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421d3d = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421d3d, i64 -133421, i64 5, i64 5)
  store %struct.Memory* %call1_421d3d, %struct.Memory** %MEMORY

  %loadMem2_421d3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421d3d = load i64, i64* %3
  %call2_421d3d = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_421d3d, %struct.Memory* %loadMem2_421d3d)
  store %struct.Memory* %call2_421d3d, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 421d42	 Bytes: 4
  %loadMem_421d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d42 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d42)
  store %struct.Memory* %call_421d42, %struct.Memory** %MEMORY

  ; Code: jne .L_421d59	 RIP: 421d46	 Bytes: 6
  %loadMem_421d46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d46 = call %struct.Memory* @routine_jne_.L_421d59(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d46, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_421d46, %struct.Memory** %MEMORY

  %loadBr_421d46 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421d46 = icmp eq i8 %loadBr_421d46, 1
  br i1 %cmpBr_421d46, label %block_.L_421d59, label %block_421d4c

block_421d4c:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 421d4c	 Bytes: 8
  %loadMem_421d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d4c = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d4c)
  store %struct.Memory* %call_421d4c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_422364	 RIP: 421d54	 Bytes: 5
  %loadMem_421d54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d54 = call %struct.Memory* @routine_jmpq_.L_422364(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d54, i64 1552, i64 5)
  store %struct.Memory* %call_421d54, %struct.Memory** %MEMORY

  br label %block_.L_422364

  ; Code: .L_421d59:	 RIP: 421d59	 Bytes: 0
block_.L_421d59:

  ; Code: movl $0x4, %eax	 RIP: 421d59	 Bytes: 5
  %loadMem_421d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d59 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d59)
  store %struct.Memory* %call_421d59, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 421d5e	 Bytes: 2
  %loadMem_421d5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d5e = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d5e)
  store %struct.Memory* %call_421d5e, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 421d60	 Bytes: 5
  %loadMem_421d60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d60 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d60)
  store %struct.Memory* %call_421d60, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 421d65	 Bytes: 2
  %loadMem_421d65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d65 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d65)
  store %struct.Memory* %call_421d65, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 421d67	 Bytes: 4
  %loadMem_421d67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d67 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d67)
  store %struct.Memory* %call_421d67, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rcx), %rcx	 RIP: 421d6b	 Bytes: 4
  %loadMem_421d6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d6b = call %struct.Memory* @routine_movq_0x10__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d6b)
  store %struct.Memory* %call_421d6b, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdi	 RIP: 421d6f	 Bytes: 4
  %loadMem_421d6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d6f = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d6f)
  store %struct.Memory* %call_421d6f, %struct.Memory** %MEMORY

  ; Code: imulq $0x5c, %rdi, %rdi	 RIP: 421d73	 Bytes: 4
  %loadMem_421d73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d73 = call %struct.Memory* @routine_imulq__0x5c___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d73)
  store %struct.Memory* %call_421d73, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rcx	 RIP: 421d77	 Bytes: 3
  %loadMem_421d77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d77 = call %struct.Memory* @routine_addq__rdi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d77)
  store %struct.Memory* %call_421d77, %struct.Memory** %MEMORY

  ; Code: addq $0x8, %rcx	 RIP: 421d7a	 Bytes: 4
  %loadMem_421d7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d7a = call %struct.Memory* @routine_addq__0x8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d7a)
  store %struct.Memory* %call_421d7a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 421d7e	 Bytes: 4
  %loadMem_421d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d7e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d7e)
  store %struct.Memory* %call_421d7e, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0xa0(%rbp)	 RIP: 421d82	 Bytes: 7
  %loadMem_421d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d82 = call %struct.Memory* @routine_movq__rdi__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d82)
  store %struct.Memory* %call_421d82, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 421d89	 Bytes: 3
  %loadMem_421d89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d89 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d89)
  store %struct.Memory* %call_421d89, %struct.Memory** %MEMORY

  ; Code: movq -0xa0(%rbp), %rcx	 RIP: 421d8c	 Bytes: 7
  %loadMem_421d8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d8c = call %struct.Memory* @routine_movq_MINUS0xa0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d8c)
  store %struct.Memory* %call_421d8c, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 421d93	 Bytes: 5
  %loadMem1_421d93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421d93 = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421d93, i64 -133507, i64 5, i64 5)
  store %struct.Memory* %call1_421d93, %struct.Memory** %MEMORY

  %loadMem2_421d93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421d93 = load i64, i64* %3
  %call2_421d93 = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_421d93, %struct.Memory* %loadMem2_421d93)
  store %struct.Memory* %call2_421d93, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 421d98	 Bytes: 4
  %loadMem_421d98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d98 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d98)
  store %struct.Memory* %call_421d98, %struct.Memory** %MEMORY

  ; Code: jne .L_421daf	 RIP: 421d9c	 Bytes: 6
  %loadMem_421d9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421d9c = call %struct.Memory* @routine_jne_.L_421daf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421d9c, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_421d9c, %struct.Memory** %MEMORY

  %loadBr_421d9c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421d9c = icmp eq i8 %loadBr_421d9c, 1
  br i1 %cmpBr_421d9c, label %block_.L_421daf, label %block_421da2

block_421da2:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 421da2	 Bytes: 8
  %loadMem_421da2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421da2 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421da2)
  store %struct.Memory* %call_421da2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_422364	 RIP: 421daa	 Bytes: 5
  %loadMem_421daa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421daa = call %struct.Memory* @routine_jmpq_.L_422364(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421daa, i64 1466, i64 5)
  store %struct.Memory* %call_421daa, %struct.Memory** %MEMORY

  br label %block_.L_422364

  ; Code: .L_421daf:	 RIP: 421daf	 Bytes: 0
block_.L_421daf:

  ; Code: movl $0x4, %eax	 RIP: 421daf	 Bytes: 5
  %loadMem_421daf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421daf = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421daf)
  store %struct.Memory* %call_421daf, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 421db4	 Bytes: 2
  %loadMem_421db4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421db4 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421db4)
  store %struct.Memory* %call_421db4, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 421db6	 Bytes: 5
  %loadMem_421db6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421db6 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421db6)
  store %struct.Memory* %call_421db6, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 421dbb	 Bytes: 2
  %loadMem_421dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421dbb = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421dbb)
  store %struct.Memory* %call_421dbb, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 421dbd	 Bytes: 4
  %loadMem_421dbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421dbd = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421dbd)
  store %struct.Memory* %call_421dbd, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rcx), %rcx	 RIP: 421dc1	 Bytes: 4
  %loadMem_421dc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421dc1 = call %struct.Memory* @routine_movq_0x10__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421dc1)
  store %struct.Memory* %call_421dc1, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdi	 RIP: 421dc5	 Bytes: 4
  %loadMem_421dc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421dc5 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421dc5)
  store %struct.Memory* %call_421dc5, %struct.Memory** %MEMORY

  ; Code: imulq $0x5c, %rdi, %rdi	 RIP: 421dc9	 Bytes: 4
  %loadMem_421dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421dc9 = call %struct.Memory* @routine_imulq__0x5c___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421dc9)
  store %struct.Memory* %call_421dc9, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rcx	 RIP: 421dcd	 Bytes: 3
  %loadMem_421dcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421dcd = call %struct.Memory* @routine_addq__rdi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421dcd)
  store %struct.Memory* %call_421dcd, %struct.Memory** %MEMORY

  ; Code: addq $0x4, %rcx	 RIP: 421dd0	 Bytes: 4
  %loadMem_421dd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421dd0 = call %struct.Memory* @routine_addq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421dd0)
  store %struct.Memory* %call_421dd0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 421dd4	 Bytes: 4
  %loadMem_421dd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421dd4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421dd4)
  store %struct.Memory* %call_421dd4, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0xa8(%rbp)	 RIP: 421dd8	 Bytes: 7
  %loadMem_421dd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421dd8 = call %struct.Memory* @routine_movq__rdi__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421dd8)
  store %struct.Memory* %call_421dd8, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 421ddf	 Bytes: 3
  %loadMem_421ddf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ddf = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ddf)
  store %struct.Memory* %call_421ddf, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %rcx	 RIP: 421de2	 Bytes: 7
  %loadMem_421de2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421de2 = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421de2)
  store %struct.Memory* %call_421de2, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 421de9	 Bytes: 5
  %loadMem1_421de9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421de9 = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421de9, i64 -133593, i64 5, i64 5)
  store %struct.Memory* %call1_421de9, %struct.Memory** %MEMORY

  %loadMem2_421de9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421de9 = load i64, i64* %3
  %call2_421de9 = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_421de9, %struct.Memory* %loadMem2_421de9)
  store %struct.Memory* %call2_421de9, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 421dee	 Bytes: 4
  %loadMem_421dee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421dee = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421dee)
  store %struct.Memory* %call_421dee, %struct.Memory** %MEMORY

  ; Code: jne .L_421e05	 RIP: 421df2	 Bytes: 6
  %loadMem_421df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421df2 = call %struct.Memory* @routine_jne_.L_421e05(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421df2, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_421df2, %struct.Memory** %MEMORY

  %loadBr_421df2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421df2 = icmp eq i8 %loadBr_421df2, 1
  br i1 %cmpBr_421df2, label %block_.L_421e05, label %block_421df8

block_421df8:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 421df8	 Bytes: 8
  %loadMem_421df8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421df8 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421df8)
  store %struct.Memory* %call_421df8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_422364	 RIP: 421e00	 Bytes: 5
  %loadMem_421e00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e00 = call %struct.Memory* @routine_jmpq_.L_422364(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e00, i64 1380, i64 5)
  store %struct.Memory* %call_421e00, %struct.Memory** %MEMORY

  br label %block_.L_422364

  ; Code: .L_421e05:	 RIP: 421e05	 Bytes: 0
block_.L_421e05:

  ; Code: movl $0x4, %eax	 RIP: 421e05	 Bytes: 5
  %loadMem_421e05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e05 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e05)
  store %struct.Memory* %call_421e05, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 421e0a	 Bytes: 2
  %loadMem_421e0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e0a = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e0a)
  store %struct.Memory* %call_421e0a, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 421e0c	 Bytes: 4
  %loadMem_421e0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e0c = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e0c)
  store %struct.Memory* %call_421e0c, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rcx), %rcx	 RIP: 421e10	 Bytes: 4
  %loadMem_421e10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e10 = call %struct.Memory* @routine_movq_0x10__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e10)
  store %struct.Memory* %call_421e10, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 421e14	 Bytes: 4
  %loadMem_421e14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e14 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e14)
  store %struct.Memory* %call_421e14, %struct.Memory** %MEMORY

  ; Code: imulq $0x5c, %rdx, %rdx	 RIP: 421e18	 Bytes: 4
  %loadMem_421e18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e18 = call %struct.Memory* @routine_imulq__0x5c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e18)
  store %struct.Memory* %call_421e18, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 421e1c	 Bytes: 3
  %loadMem_421e1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e1c = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e1c)
  store %struct.Memory* %call_421e1c, %struct.Memory** %MEMORY

  ; Code: addq $0xc, %rcx	 RIP: 421e1f	 Bytes: 4
  %loadMem_421e1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e1f = call %struct.Memory* @routine_addq__0xc___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e1f)
  store %struct.Memory* %call_421e1f, %struct.Memory** %MEMORY

  ; Code: movslq 0x677060, %rdx	 RIP: 421e23	 Bytes: 8
  %loadMem_421e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e23 = call %struct.Memory* @routine_movslq_0x677060___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e23)
  store %struct.Memory* %call_421e23, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 421e2b	 Bytes: 4
  %loadMem_421e2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e2b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e2b)
  store %struct.Memory* %call_421e2b, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0xb0(%rbp)	 RIP: 421e2f	 Bytes: 7
  %loadMem_421e2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e2f = call %struct.Memory* @routine_movq__rdi__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e2f)
  store %struct.Memory* %call_421e2f, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 421e36	 Bytes: 3
  %loadMem_421e36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e36 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e36)
  store %struct.Memory* %call_421e36, %struct.Memory** %MEMORY

  ; Code: movq -0xb0(%rbp), %rcx	 RIP: 421e39	 Bytes: 7
  %loadMem_421e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e39 = call %struct.Memory* @routine_movq_MINUS0xb0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e39)
  store %struct.Memory* %call_421e39, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 421e40	 Bytes: 5
  %loadMem1_421e40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421e40 = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421e40, i64 -133680, i64 5, i64 5)
  store %struct.Memory* %call1_421e40, %struct.Memory** %MEMORY

  %loadMem2_421e40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421e40 = load i64, i64* %3
  %call2_421e40 = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_421e40, %struct.Memory* %loadMem2_421e40)
  store %struct.Memory* %call2_421e40, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 421e45	 Bytes: 4
  %loadMem_421e45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e45 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e45)
  store %struct.Memory* %call_421e45, %struct.Memory** %MEMORY

  ; Code: jne .L_421e5c	 RIP: 421e49	 Bytes: 6
  %loadMem_421e49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e49 = call %struct.Memory* @routine_jne_.L_421e5c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e49, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_421e49, %struct.Memory** %MEMORY

  %loadBr_421e49 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421e49 = icmp eq i8 %loadBr_421e49, 1
  br i1 %cmpBr_421e49, label %block_.L_421e5c, label %block_421e4f

block_421e4f:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 421e4f	 Bytes: 8
  %loadMem_421e4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e4f = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e4f)
  store %struct.Memory* %call_421e4f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_422364	 RIP: 421e57	 Bytes: 5
  %loadMem_421e57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e57 = call %struct.Memory* @routine_jmpq_.L_422364(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e57, i64 1293, i64 5)
  store %struct.Memory* %call_421e57, %struct.Memory** %MEMORY

  br label %block_.L_422364

  ; Code: .L_421e5c:	 RIP: 421e5c	 Bytes: 0
block_.L_421e5c:

  ; Code: cmpl $0x0, -0x18(%rbp)	 RIP: 421e5c	 Bytes: 4
  %loadMem_421e5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e5c = call %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e5c)
  store %struct.Memory* %call_421e5c, %struct.Memory** %MEMORY

  ; Code: je .L_421f27	 RIP: 421e60	 Bytes: 6
  %loadMem_421e60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e60 = call %struct.Memory* @routine_je_.L_421f27(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e60, i8* %BRANCH_TAKEN, i64 199, i64 6, i64 6)
  store %struct.Memory* %call_421e60, %struct.Memory** %MEMORY

  %loadBr_421e60 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421e60 = icmp eq i8 %loadBr_421e60, 1
  br i1 %cmpBr_421e60, label %block_.L_421f27, label %block_421e66

block_421e66:
  ; Code: movl $0x4, %esi	 RIP: 421e66	 Bytes: 5
  %loadMem_421e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e66 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e66)
  store %struct.Memory* %call_421e66, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 421e6b	 Bytes: 4
  %loadMem_421e6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e6b = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e6b)
  store %struct.Memory* %call_421e6b, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 421e6f	 Bytes: 4
  %loadMem_421e6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e6f = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e6f)
  store %struct.Memory* %call_421e6f, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 421e73	 Bytes: 4
  %loadMem_421e73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e73 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e73)
  store %struct.Memory* %call_421e73, %struct.Memory** %MEMORY

  ; Code: imulq $0x5c, %rcx, %rcx	 RIP: 421e77	 Bytes: 4
  %loadMem_421e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e77 = call %struct.Memory* @routine_imulq__0x5c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e77)
  store %struct.Memory* %call_421e77, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 421e7b	 Bytes: 3
  %loadMem_421e7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e7b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e7b)
  store %struct.Memory* %call_421e7b, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 421e7e	 Bytes: 3
  %loadMem_421e7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e7e = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e7e)
  store %struct.Memory* %call_421e7e, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 421e81	 Bytes: 5
  %loadMem1_421e81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421e81 = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421e81, i64 1279, i64 5, i64 5)
  store %struct.Memory* %call1_421e81, %struct.Memory** %MEMORY

  %loadMem2_421e81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421e81 = load i64, i64* %3
  %call2_421e81 = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_421e81, %struct.Memory* %loadMem2_421e81)
  store %struct.Memory* %call2_421e81, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %esi	 RIP: 421e86	 Bytes: 5
  %loadMem_421e86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e86 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e86)
  store %struct.Memory* %call_421e86, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 421e8b	 Bytes: 4
  %loadMem_421e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e8b = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e8b)
  store %struct.Memory* %call_421e8b, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 421e8f	 Bytes: 4
  %loadMem_421e8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e8f = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e8f)
  store %struct.Memory* %call_421e8f, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 421e93	 Bytes: 4
  %loadMem_421e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e93 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e93)
  store %struct.Memory* %call_421e93, %struct.Memory** %MEMORY

  ; Code: imulq $0x5c, %rcx, %rcx	 RIP: 421e97	 Bytes: 4
  %loadMem_421e97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e97 = call %struct.Memory* @routine_imulq__0x5c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e97)
  store %struct.Memory* %call_421e97, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 421e9b	 Bytes: 3
  %loadMem_421e9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e9b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e9b)
  store %struct.Memory* %call_421e9b, %struct.Memory** %MEMORY

  ; Code: addq $0x8, %rax	 RIP: 421e9e	 Bytes: 4
  %loadMem_421e9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421e9e = call %struct.Memory* @routine_addq__0x8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421e9e)
  store %struct.Memory* %call_421e9e, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 421ea2	 Bytes: 3
  %loadMem_421ea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ea2 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ea2)
  store %struct.Memory* %call_421ea2, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 421ea5	 Bytes: 5
  %loadMem1_421ea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421ea5 = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421ea5, i64 1243, i64 5, i64 5)
  store %struct.Memory* %call1_421ea5, %struct.Memory** %MEMORY

  %loadMem2_421ea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421ea5 = load i64, i64* %3
  %call2_421ea5 = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_421ea5, %struct.Memory* %loadMem2_421ea5)
  store %struct.Memory* %call2_421ea5, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %esi	 RIP: 421eaa	 Bytes: 5
  %loadMem_421eaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421eaa = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421eaa)
  store %struct.Memory* %call_421eaa, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 421eaf	 Bytes: 4
  %loadMem_421eaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421eaf = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421eaf)
  store %struct.Memory* %call_421eaf, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 421eb3	 Bytes: 4
  %loadMem_421eb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421eb3 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421eb3)
  store %struct.Memory* %call_421eb3, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 421eb7	 Bytes: 4
  %loadMem_421eb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421eb7 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421eb7)
  store %struct.Memory* %call_421eb7, %struct.Memory** %MEMORY

  ; Code: imulq $0x5c, %rcx, %rcx	 RIP: 421ebb	 Bytes: 4
  %loadMem_421ebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ebb = call %struct.Memory* @routine_imulq__0x5c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ebb)
  store %struct.Memory* %call_421ebb, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 421ebf	 Bytes: 3
  %loadMem_421ebf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ebf = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ebf)
  store %struct.Memory* %call_421ebf, %struct.Memory** %MEMORY

  ; Code: addq $0x4, %rax	 RIP: 421ec2	 Bytes: 4
  %loadMem_421ec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ec2 = call %struct.Memory* @routine_addq__0x4___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ec2)
  store %struct.Memory* %call_421ec2, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 421ec6	 Bytes: 3
  %loadMem_421ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ec6 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ec6)
  store %struct.Memory* %call_421ec6, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 421ec9	 Bytes: 5
  %loadMem1_421ec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421ec9 = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421ec9, i64 1207, i64 5, i64 5)
  store %struct.Memory* %call1_421ec9, %struct.Memory** %MEMORY

  %loadMem2_421ec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421ec9 = load i64, i64* %3
  %call2_421ec9 = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_421ec9, %struct.Memory* %loadMem2_421ec9)
  store %struct.Memory* %call2_421ec9, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 421ece	 Bytes: 7
  %loadMem_421ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ece = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ece)
  store %struct.Memory* %call_421ece, %struct.Memory** %MEMORY

  ; Code: .L_421ed5:	 RIP: 421ed5	 Bytes: 0
  br label %block_.L_421ed5
block_.L_421ed5:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 421ed5	 Bytes: 3
  %loadMem_421ed5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ed5 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ed5)
  store %struct.Memory* %call_421ed5, %struct.Memory** %MEMORY

  ; Code: cmpl 0x677060, %eax	 RIP: 421ed8	 Bytes: 7
  %loadMem_421ed8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ed8 = call %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ed8)
  store %struct.Memory* %call_421ed8, %struct.Memory** %MEMORY

  ; Code: jge .L_421f22	 RIP: 421edf	 Bytes: 6
  %loadMem_421edf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421edf = call %struct.Memory* @routine_jge_.L_421f22(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421edf, i8* %BRANCH_TAKEN, i64 67, i64 6, i64 6)
  store %struct.Memory* %call_421edf, %struct.Memory** %MEMORY

  %loadBr_421edf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421edf = icmp eq i8 %loadBr_421edf, 1
  br i1 %cmpBr_421edf, label %block_.L_421f22, label %block_421ee5

block_421ee5:
  ; Code: movl $0x4, %esi	 RIP: 421ee5	 Bytes: 5
  %loadMem_421ee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ee5 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ee5)
  store %struct.Memory* %call_421ee5, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 421eea	 Bytes: 4
  %loadMem_421eea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421eea = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421eea)
  store %struct.Memory* %call_421eea, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 421eee	 Bytes: 4
  %loadMem_421eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421eee = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421eee)
  store %struct.Memory* %call_421eee, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 421ef2	 Bytes: 4
  %loadMem_421ef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ef2 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ef2)
  store %struct.Memory* %call_421ef2, %struct.Memory** %MEMORY

  ; Code: imulq $0x5c, %rcx, %rcx	 RIP: 421ef6	 Bytes: 4
  %loadMem_421ef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ef6 = call %struct.Memory* @routine_imulq__0x5c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ef6)
  store %struct.Memory* %call_421ef6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 421efa	 Bytes: 3
  %loadMem_421efa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421efa = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421efa)
  store %struct.Memory* %call_421efa, %struct.Memory** %MEMORY

  ; Code: addq $0xc, %rax	 RIP: 421efd	 Bytes: 4
  %loadMem_421efd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421efd = call %struct.Memory* @routine_addq__0xc___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421efd)
  store %struct.Memory* %call_421efd, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 421f01	 Bytes: 4
  %loadMem_421f01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f01 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f01)
  store %struct.Memory* %call_421f01, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rcx	 RIP: 421f05	 Bytes: 4
  %loadMem_421f05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f05 = call %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f05)
  store %struct.Memory* %call_421f05, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 421f09	 Bytes: 3
  %loadMem_421f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f09 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f09)
  store %struct.Memory* %call_421f09, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 421f0c	 Bytes: 3
  %loadMem_421f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f0c = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f0c)
  store %struct.Memory* %call_421f0c, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 421f0f	 Bytes: 5
  %loadMem1_421f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421f0f = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421f0f, i64 1137, i64 5, i64 5)
  store %struct.Memory* %call1_421f0f, %struct.Memory** %MEMORY

  %loadMem2_421f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421f0f = load i64, i64* %3
  %call2_421f0f = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_421f0f, %struct.Memory* %loadMem2_421f0f)
  store %struct.Memory* %call2_421f0f, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 421f14	 Bytes: 3
  %loadMem_421f14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f14 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f14)
  store %struct.Memory* %call_421f14, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 421f17	 Bytes: 3
  %loadMem_421f17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f17 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f17)
  store %struct.Memory* %call_421f17, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 421f1a	 Bytes: 3
  %loadMem_421f1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f1a = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f1a)
  store %struct.Memory* %call_421f1a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421ed5	 RIP: 421f1d	 Bytes: 5
  %loadMem_421f1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f1d = call %struct.Memory* @routine_jmpq_.L_421ed5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f1d, i64 -72, i64 5)
  store %struct.Memory* %call_421f1d, %struct.Memory** %MEMORY

  br label %block_.L_421ed5

  ; Code: .L_421f22:	 RIP: 421f22	 Bytes: 0
block_.L_421f22:

  ; Code: jmpq .L_421f27	 RIP: 421f22	 Bytes: 5
  %loadMem_421f22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f22 = call %struct.Memory* @routine_jmpq_.L_421f27(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f22, i64 5, i64 5)
  store %struct.Memory* %call_421f22, %struct.Memory** %MEMORY

  br label %block_.L_421f27

  ; Code: .L_421f27:	 RIP: 421f27	 Bytes: 0
block_.L_421f27:

  ; Code: cmpl $0x1, -0x14(%rbp)	 RIP: 421f27	 Bytes: 4
  %loadMem_421f27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f27 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f27)
  store %struct.Memory* %call_421f27, %struct.Memory** %MEMORY

  ; Code: jne .L_421f59	 RIP: 421f2b	 Bytes: 6
  %loadMem_421f2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f2b = call %struct.Memory* @routine_jne_.L_421f59(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f2b, i8* %BRANCH_TAKEN, i64 46, i64 6, i64 6)
  store %struct.Memory* %call_421f2b, %struct.Memory** %MEMORY

  %loadBr_421f2b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421f2b = icmp eq i8 %loadBr_421f2b, 1
  br i1 %cmpBr_421f2b, label %block_.L_421f59, label %block_421f31

block_421f31:
  ; Code: movl $0x1, %edx	 RIP: 421f31	 Bytes: 5
  %loadMem_421f31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f31 = call %struct.Memory* @routine_movl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f31)
  store %struct.Memory* %call_421f31, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 421f36	 Bytes: 4
  %loadMem_421f36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f36 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f36)
  store %struct.Memory* %call_421f36, %struct.Memory** %MEMORY

  ; Code: movl 0x677060, %eax	 RIP: 421f3a	 Bytes: 7
  %loadMem_421f3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f3a = call %struct.Memory* @routine_movl_0x677060___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f3a)
  store %struct.Memory* %call_421f3a, %struct.Memory** %MEMORY

  ; Code: addl $0x3, %eax	 RIP: 421f41	 Bytes: 3
  %loadMem_421f41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f41 = call %struct.Memory* @routine_addl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f41)
  store %struct.Memory* %call_421f41, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 421f44	 Bytes: 3
  %loadMem_421f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f44 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f44)
  store %struct.Memory* %call_421f44, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rcx	 RIP: 421f47	 Bytes: 4
  %loadMem_421f47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f47 = call %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f47)
  store %struct.Memory* %call_421f47, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rsi	 RIP: 421f4b	 Bytes: 3
  %loadMem_421f4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f4b = call %struct.Memory* @routine_movq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f4b)
  store %struct.Memory* %call_421f4b, %struct.Memory** %MEMORY

  ; Code: callq .fseek_plt	 RIP: 421f4e	 Bytes: 5
  %loadMem1_421f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421f4e = call %struct.Memory* @routine_callq_.fseek_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421f4e, i64 -133454, i64 5, i64 5)
  store %struct.Memory* %call1_421f4e, %struct.Memory** %MEMORY

  %loadMem2_421f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421f4e = load i64, i64* %3
  %call2_421f4e = call %struct.Memory* @sub_401600.fseek_plt(%struct.State* %0, i64  %loadPC_421f4e, %struct.Memory* %loadMem2_421f4e)
  store %struct.Memory* %call2_421f4e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xb4(%rbp)	 RIP: 421f53	 Bytes: 6
  %loadMem_421f53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f53 = call %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f53)
  store %struct.Memory* %call_421f53, %struct.Memory** %MEMORY

  ; Code: .L_421f59:	 RIP: 421f59	 Bytes: 0
  br label %block_.L_421f59
block_.L_421f59:

  ; Code: movl $0x4, %eax	 RIP: 421f59	 Bytes: 5
  %loadMem_421f59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f59 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f59)
  store %struct.Memory* %call_421f59, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 421f5e	 Bytes: 2
  %loadMem_421f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f5e = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f5e)
  store %struct.Memory* %call_421f5e, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 421f60	 Bytes: 5
  %loadMem_421f60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f60 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f60)
  store %struct.Memory* %call_421f60, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 421f65	 Bytes: 2
  %loadMem_421f65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f65 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f65)
  store %struct.Memory* %call_421f65, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 421f67	 Bytes: 4
  %loadMem_421f67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f67 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f67)
  store %struct.Memory* %call_421f67, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rcx), %rcx	 RIP: 421f6b	 Bytes: 4
  %loadMem_421f6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f6b = call %struct.Memory* @routine_movq_0x18__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f6b)
  store %struct.Memory* %call_421f6b, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdi	 RIP: 421f6f	 Bytes: 4
  %loadMem_421f6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f6f = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f6f)
  store %struct.Memory* %call_421f6f, %struct.Memory** %MEMORY

  ; Code: imulq $0x5c, %rdi, %rdi	 RIP: 421f73	 Bytes: 4
  %loadMem_421f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f73 = call %struct.Memory* @routine_imulq__0x5c___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f73)
  store %struct.Memory* %call_421f73, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rcx	 RIP: 421f77	 Bytes: 3
  %loadMem_421f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f77 = call %struct.Memory* @routine_addq__rdi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f77)
  store %struct.Memory* %call_421f77, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 421f7a	 Bytes: 4
  %loadMem_421f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f7a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f7a)
  store %struct.Memory* %call_421f7a, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0xc0(%rbp)	 RIP: 421f7e	 Bytes: 7
  %loadMem_421f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f7e = call %struct.Memory* @routine_movq__rdi__MINUS0xc0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f7e)
  store %struct.Memory* %call_421f7e, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 421f85	 Bytes: 3
  %loadMem_421f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f85 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f85)
  store %struct.Memory* %call_421f85, %struct.Memory** %MEMORY

  ; Code: movq -0xc0(%rbp), %rcx	 RIP: 421f88	 Bytes: 7
  %loadMem_421f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f88 = call %struct.Memory* @routine_movq_MINUS0xc0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f88)
  store %struct.Memory* %call_421f88, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 421f8f	 Bytes: 5
  %loadMem1_421f8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421f8f = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421f8f, i64 -134015, i64 5, i64 5)
  store %struct.Memory* %call1_421f8f, %struct.Memory** %MEMORY

  %loadMem2_421f8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421f8f = load i64, i64* %3
  %call2_421f8f = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_421f8f, %struct.Memory* %loadMem2_421f8f)
  store %struct.Memory* %call2_421f8f, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 421f94	 Bytes: 4
  %loadMem_421f94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f94 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f94)
  store %struct.Memory* %call_421f94, %struct.Memory** %MEMORY

  ; Code: jne .L_421fab	 RIP: 421f98	 Bytes: 6
  %loadMem_421f98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f98 = call %struct.Memory* @routine_jne_.L_421fab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f98, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_421f98, %struct.Memory** %MEMORY

  %loadBr_421f98 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421f98 = icmp eq i8 %loadBr_421f98, 1
  br i1 %cmpBr_421f98, label %block_.L_421fab, label %block_421f9e

block_421f9e:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 421f9e	 Bytes: 8
  %loadMem_421f9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421f9e = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421f9e)
  store %struct.Memory* %call_421f9e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_422364	 RIP: 421fa6	 Bytes: 5
  %loadMem_421fa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421fa6 = call %struct.Memory* @routine_jmpq_.L_422364(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421fa6, i64 958, i64 5)
  store %struct.Memory* %call_421fa6, %struct.Memory** %MEMORY

  br label %block_.L_422364

  ; Code: .L_421fab:	 RIP: 421fab	 Bytes: 0
block_.L_421fab:

  ; Code: movl $0x4, %eax	 RIP: 421fab	 Bytes: 5
  %loadMem_421fab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421fab = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421fab)
  store %struct.Memory* %call_421fab, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 421fb0	 Bytes: 2
  %loadMem_421fb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421fb0 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421fb0)
  store %struct.Memory* %call_421fb0, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 421fb2	 Bytes: 5
  %loadMem_421fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421fb2 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421fb2)
  store %struct.Memory* %call_421fb2, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 421fb7	 Bytes: 2
  %loadMem_421fb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421fb7 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421fb7)
  store %struct.Memory* %call_421fb7, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 421fb9	 Bytes: 4
  %loadMem_421fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421fb9 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421fb9)
  store %struct.Memory* %call_421fb9, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rcx), %rcx	 RIP: 421fbd	 Bytes: 4
  %loadMem_421fbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421fbd = call %struct.Memory* @routine_movq_0x18__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421fbd)
  store %struct.Memory* %call_421fbd, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdi	 RIP: 421fc1	 Bytes: 4
  %loadMem_421fc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421fc1 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421fc1)
  store %struct.Memory* %call_421fc1, %struct.Memory** %MEMORY

  ; Code: imulq $0x5c, %rdi, %rdi	 RIP: 421fc5	 Bytes: 4
  %loadMem_421fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421fc5 = call %struct.Memory* @routine_imulq__0x5c___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421fc5)
  store %struct.Memory* %call_421fc5, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rcx	 RIP: 421fc9	 Bytes: 3
  %loadMem_421fc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421fc9 = call %struct.Memory* @routine_addq__rdi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421fc9)
  store %struct.Memory* %call_421fc9, %struct.Memory** %MEMORY

  ; Code: addq $0x8, %rcx	 RIP: 421fcc	 Bytes: 4
  %loadMem_421fcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421fcc = call %struct.Memory* @routine_addq__0x8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421fcc)
  store %struct.Memory* %call_421fcc, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 421fd0	 Bytes: 4
  %loadMem_421fd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421fd0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421fd0)
  store %struct.Memory* %call_421fd0, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0xc8(%rbp)	 RIP: 421fd4	 Bytes: 7
  %loadMem_421fd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421fd4 = call %struct.Memory* @routine_movq__rdi__MINUS0xc8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421fd4)
  store %struct.Memory* %call_421fd4, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 421fdb	 Bytes: 3
  %loadMem_421fdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421fdb = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421fdb)
  store %struct.Memory* %call_421fdb, %struct.Memory** %MEMORY

  ; Code: movq -0xc8(%rbp), %rcx	 RIP: 421fde	 Bytes: 7
  %loadMem_421fde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421fde = call %struct.Memory* @routine_movq_MINUS0xc8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421fde)
  store %struct.Memory* %call_421fde, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 421fe5	 Bytes: 5
  %loadMem1_421fe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421fe5 = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421fe5, i64 -134101, i64 5, i64 5)
  store %struct.Memory* %call1_421fe5, %struct.Memory** %MEMORY

  %loadMem2_421fe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421fe5 = load i64, i64* %3
  %call2_421fe5 = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_421fe5, %struct.Memory* %loadMem2_421fe5)
  store %struct.Memory* %call2_421fe5, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 421fea	 Bytes: 4
  %loadMem_421fea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421fea = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421fea)
  store %struct.Memory* %call_421fea, %struct.Memory** %MEMORY

  ; Code: jne .L_422001	 RIP: 421fee	 Bytes: 6
  %loadMem_421fee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421fee = call %struct.Memory* @routine_jne_.L_422001(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421fee, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_421fee, %struct.Memory** %MEMORY

  %loadBr_421fee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421fee = icmp eq i8 %loadBr_421fee, 1
  br i1 %cmpBr_421fee, label %block_.L_422001, label %block_421ff4

block_421ff4:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 421ff4	 Bytes: 8
  %loadMem_421ff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ff4 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ff4)
  store %struct.Memory* %call_421ff4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_422364	 RIP: 421ffc	 Bytes: 5
  %loadMem_421ffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ffc = call %struct.Memory* @routine_jmpq_.L_422364(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ffc, i64 872, i64 5)
  store %struct.Memory* %call_421ffc, %struct.Memory** %MEMORY

  br label %block_.L_422364

  ; Code: .L_422001:	 RIP: 422001	 Bytes: 0
block_.L_422001:

  ; Code: movl $0x4, %eax	 RIP: 422001	 Bytes: 5
  %loadMem_422001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422001 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422001)
  store %struct.Memory* %call_422001, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 422006	 Bytes: 2
  %loadMem_422006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422006 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422006)
  store %struct.Memory* %call_422006, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 422008	 Bytes: 5
  %loadMem_422008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422008 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422008)
  store %struct.Memory* %call_422008, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 42200d	 Bytes: 2
  %loadMem_42200d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42200d = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42200d)
  store %struct.Memory* %call_42200d, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 42200f	 Bytes: 4
  %loadMem_42200f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42200f = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42200f)
  store %struct.Memory* %call_42200f, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rcx), %rcx	 RIP: 422013	 Bytes: 4
  %loadMem_422013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422013 = call %struct.Memory* @routine_movq_0x18__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422013)
  store %struct.Memory* %call_422013, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdi	 RIP: 422017	 Bytes: 4
  %loadMem_422017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422017 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422017)
  store %struct.Memory* %call_422017, %struct.Memory** %MEMORY

  ; Code: imulq $0x5c, %rdi, %rdi	 RIP: 42201b	 Bytes: 4
  %loadMem_42201b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42201b = call %struct.Memory* @routine_imulq__0x5c___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42201b)
  store %struct.Memory* %call_42201b, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rcx	 RIP: 42201f	 Bytes: 3
  %loadMem_42201f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42201f = call %struct.Memory* @routine_addq__rdi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42201f)
  store %struct.Memory* %call_42201f, %struct.Memory** %MEMORY

  ; Code: addq $0x4, %rcx	 RIP: 422022	 Bytes: 4
  %loadMem_422022 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422022 = call %struct.Memory* @routine_addq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422022)
  store %struct.Memory* %call_422022, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 422026	 Bytes: 4
  %loadMem_422026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422026 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422026)
  store %struct.Memory* %call_422026, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0xd0(%rbp)	 RIP: 42202a	 Bytes: 7
  %loadMem_42202a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42202a = call %struct.Memory* @routine_movq__rdi__MINUS0xd0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42202a)
  store %struct.Memory* %call_42202a, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 422031	 Bytes: 3
  %loadMem_422031 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422031 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422031)
  store %struct.Memory* %call_422031, %struct.Memory** %MEMORY

  ; Code: movq -0xd0(%rbp), %rcx	 RIP: 422034	 Bytes: 7
  %loadMem_422034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422034 = call %struct.Memory* @routine_movq_MINUS0xd0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422034)
  store %struct.Memory* %call_422034, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 42203b	 Bytes: 5
  %loadMem1_42203b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42203b = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42203b, i64 -134187, i64 5, i64 5)
  store %struct.Memory* %call1_42203b, %struct.Memory** %MEMORY

  %loadMem2_42203b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42203b = load i64, i64* %3
  %call2_42203b = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_42203b, %struct.Memory* %loadMem2_42203b)
  store %struct.Memory* %call2_42203b, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 422040	 Bytes: 4
  %loadMem_422040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422040 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422040)
  store %struct.Memory* %call_422040, %struct.Memory** %MEMORY

  ; Code: jne .L_422057	 RIP: 422044	 Bytes: 6
  %loadMem_422044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422044 = call %struct.Memory* @routine_jne_.L_422057(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422044, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_422044, %struct.Memory** %MEMORY

  %loadBr_422044 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422044 = icmp eq i8 %loadBr_422044, 1
  br i1 %cmpBr_422044, label %block_.L_422057, label %block_42204a

block_42204a:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 42204a	 Bytes: 8
  %loadMem_42204a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42204a = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42204a)
  store %struct.Memory* %call_42204a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_422364	 RIP: 422052	 Bytes: 5
  %loadMem_422052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422052 = call %struct.Memory* @routine_jmpq_.L_422364(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422052, i64 786, i64 5)
  store %struct.Memory* %call_422052, %struct.Memory** %MEMORY

  br label %block_.L_422364

  ; Code: .L_422057:	 RIP: 422057	 Bytes: 0
block_.L_422057:

  ; Code: cmpl $0x0, -0x18(%rbp)	 RIP: 422057	 Bytes: 4
  %loadMem_422057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422057 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422057)
  store %struct.Memory* %call_422057, %struct.Memory** %MEMORY

  ; Code: je .L_4220c9	 RIP: 42205b	 Bytes: 6
  %loadMem_42205b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42205b = call %struct.Memory* @routine_je_.L_4220c9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42205b, i8* %BRANCH_TAKEN, i64 110, i64 6, i64 6)
  store %struct.Memory* %call_42205b, %struct.Memory** %MEMORY

  %loadBr_42205b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42205b = icmp eq i8 %loadBr_42205b, 1
  br i1 %cmpBr_42205b, label %block_.L_4220c9, label %block_422061

block_422061:
  ; Code: movl $0x4, %esi	 RIP: 422061	 Bytes: 5
  %loadMem_422061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422061 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422061)
  store %struct.Memory* %call_422061, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 422066	 Bytes: 4
  %loadMem_422066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422066 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422066)
  store %struct.Memory* %call_422066, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 42206a	 Bytes: 4
  %loadMem_42206a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42206a = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42206a)
  store %struct.Memory* %call_42206a, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42206e	 Bytes: 4
  %loadMem_42206e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42206e = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42206e)
  store %struct.Memory* %call_42206e, %struct.Memory** %MEMORY

  ; Code: imulq $0x5c, %rcx, %rcx	 RIP: 422072	 Bytes: 4
  %loadMem_422072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422072 = call %struct.Memory* @routine_imulq__0x5c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422072)
  store %struct.Memory* %call_422072, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 422076	 Bytes: 3
  %loadMem_422076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422076 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422076)
  store %struct.Memory* %call_422076, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 422079	 Bytes: 3
  %loadMem_422079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422079 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422079)
  store %struct.Memory* %call_422079, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 42207c	 Bytes: 5
  %loadMem1_42207c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42207c = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42207c, i64 772, i64 5, i64 5)
  store %struct.Memory* %call1_42207c, %struct.Memory** %MEMORY

  %loadMem2_42207c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42207c = load i64, i64* %3
  %call2_42207c = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_42207c, %struct.Memory* %loadMem2_42207c)
  store %struct.Memory* %call2_42207c, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %esi	 RIP: 422081	 Bytes: 5
  %loadMem_422081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422081 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422081)
  store %struct.Memory* %call_422081, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 422086	 Bytes: 4
  %loadMem_422086 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422086 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422086)
  store %struct.Memory* %call_422086, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 42208a	 Bytes: 4
  %loadMem_42208a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42208a = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42208a)
  store %struct.Memory* %call_42208a, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42208e	 Bytes: 4
  %loadMem_42208e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42208e = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42208e)
  store %struct.Memory* %call_42208e, %struct.Memory** %MEMORY

  ; Code: imulq $0x5c, %rcx, %rcx	 RIP: 422092	 Bytes: 4
  %loadMem_422092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422092 = call %struct.Memory* @routine_imulq__0x5c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422092)
  store %struct.Memory* %call_422092, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 422096	 Bytes: 3
  %loadMem_422096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422096 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422096)
  store %struct.Memory* %call_422096, %struct.Memory** %MEMORY

  ; Code: addq $0x8, %rax	 RIP: 422099	 Bytes: 4
  %loadMem_422099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422099 = call %struct.Memory* @routine_addq__0x8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422099)
  store %struct.Memory* %call_422099, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 42209d	 Bytes: 3
  %loadMem_42209d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42209d = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42209d)
  store %struct.Memory* %call_42209d, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 4220a0	 Bytes: 5
  %loadMem1_4220a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4220a0 = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4220a0, i64 736, i64 5, i64 5)
  store %struct.Memory* %call1_4220a0, %struct.Memory** %MEMORY

  %loadMem2_4220a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4220a0 = load i64, i64* %3
  %call2_4220a0 = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_4220a0, %struct.Memory* %loadMem2_4220a0)
  store %struct.Memory* %call2_4220a0, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %esi	 RIP: 4220a5	 Bytes: 5
  %loadMem_4220a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4220a5 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4220a5)
  store %struct.Memory* %call_4220a5, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4220aa	 Bytes: 4
  %loadMem_4220aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4220aa = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4220aa)
  store %struct.Memory* %call_4220aa, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 4220ae	 Bytes: 4
  %loadMem_4220ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4220ae = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4220ae)
  store %struct.Memory* %call_4220ae, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 4220b2	 Bytes: 4
  %loadMem_4220b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4220b2 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4220b2)
  store %struct.Memory* %call_4220b2, %struct.Memory** %MEMORY

  ; Code: imulq $0x5c, %rcx, %rcx	 RIP: 4220b6	 Bytes: 4
  %loadMem_4220b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4220b6 = call %struct.Memory* @routine_imulq__0x5c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4220b6)
  store %struct.Memory* %call_4220b6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4220ba	 Bytes: 3
  %loadMem_4220ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4220ba = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4220ba)
  store %struct.Memory* %call_4220ba, %struct.Memory** %MEMORY

  ; Code: addq $0x4, %rax	 RIP: 4220bd	 Bytes: 4
  %loadMem_4220bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4220bd = call %struct.Memory* @routine_addq__0x4___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4220bd)
  store %struct.Memory* %call_4220bd, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4220c1	 Bytes: 3
  %loadMem_4220c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4220c1 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4220c1)
  store %struct.Memory* %call_4220c1, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 4220c4	 Bytes: 5
  %loadMem1_4220c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4220c4 = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4220c4, i64 700, i64 5, i64 5)
  store %struct.Memory* %call1_4220c4, %struct.Memory** %MEMORY

  %loadMem2_4220c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4220c4 = load i64, i64* %3
  %call2_4220c4 = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_4220c4, %struct.Memory* %loadMem2_4220c4)
  store %struct.Memory* %call2_4220c4, %struct.Memory** %MEMORY

  ; Code: .L_4220c9:	 RIP: 4220c9	 Bytes: 0
  br label %block_.L_4220c9
block_.L_4220c9:

  ; Code: cmpl $0x1, -0x14(%rbp)	 RIP: 4220c9	 Bytes: 4
  %loadMem_4220c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4220c9 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4220c9)
  store %struct.Memory* %call_4220c9, %struct.Memory** %MEMORY

  ; Code: jne .L_4220ee	 RIP: 4220cd	 Bytes: 6
  %loadMem_4220cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4220cd = call %struct.Memory* @routine_jne_.L_4220ee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4220cd, i8* %BRANCH_TAKEN, i64 33, i64 6, i64 6)
  store %struct.Memory* %call_4220cd, %struct.Memory** %MEMORY

  %loadBr_4220cd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4220cd = icmp eq i8 %loadBr_4220cd, 1
  br i1 %cmpBr_4220cd, label %block_.L_4220ee, label %block_4220d3

block_4220d3:
  ; Code: movl $0xc, %eax	 RIP: 4220d3	 Bytes: 5
  %loadMem_4220d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4220d3 = call %struct.Memory* @routine_movl__0xc___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4220d3)
  store %struct.Memory* %call_4220d3, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4220d8	 Bytes: 2
  %loadMem_4220d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4220d8 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4220d8)
  store %struct.Memory* %call_4220d8, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %edx	 RIP: 4220da	 Bytes: 5
  %loadMem_4220da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4220da = call %struct.Memory* @routine_movl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4220da)
  store %struct.Memory* %call_4220da, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 4220df	 Bytes: 4
  %loadMem_4220df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4220df = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4220df)
  store %struct.Memory* %call_4220df, %struct.Memory** %MEMORY

  ; Code: callq .fseek_plt	 RIP: 4220e3	 Bytes: 5
  %loadMem1_4220e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4220e3 = call %struct.Memory* @routine_callq_.fseek_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4220e3, i64 -133859, i64 5, i64 5)
  store %struct.Memory* %call1_4220e3, %struct.Memory** %MEMORY

  %loadMem2_4220e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4220e3 = load i64, i64* %3
  %call2_4220e3 = call %struct.Memory* @sub_401600.fseek_plt(%struct.State* %0, i64  %loadPC_4220e3, %struct.Memory* %loadMem2_4220e3)
  store %struct.Memory* %call2_4220e3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xd4(%rbp)	 RIP: 4220e8	 Bytes: 6
  %loadMem_4220e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4220e8 = call %struct.Memory* @routine_movl__eax__MINUS0xd4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4220e8)
  store %struct.Memory* %call_4220e8, %struct.Memory** %MEMORY

  ; Code: .L_4220ee:	 RIP: 4220ee	 Bytes: 0
  br label %block_.L_4220ee
block_.L_4220ee:

  ; Code: movl $0x4, %eax	 RIP: 4220ee	 Bytes: 5
  %loadMem_4220ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4220ee = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4220ee)
  store %struct.Memory* %call_4220ee, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4220f3	 Bytes: 2
  %loadMem_4220f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4220f3 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4220f3)
  store %struct.Memory* %call_4220f3, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 4220f5	 Bytes: 5
  %loadMem_4220f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4220f5 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4220f5)
  store %struct.Memory* %call_4220f5, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4220fa	 Bytes: 2
  %loadMem_4220fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4220fa = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4220fa)
  store %struct.Memory* %call_4220fa, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4220fc	 Bytes: 4
  %loadMem_4220fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4220fc = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4220fc)
  store %struct.Memory* %call_4220fc, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 422100	 Bytes: 4
  %loadMem_422100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422100 = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422100)
  store %struct.Memory* %call_422100, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdi	 RIP: 422104	 Bytes: 4
  %loadMem_422104 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422104 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422104)
  store %struct.Memory* %call_422104, %struct.Memory** %MEMORY

  ; Code: imulq $0x5c, %rdi, %rdi	 RIP: 422108	 Bytes: 4
  %loadMem_422108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422108 = call %struct.Memory* @routine_imulq__0x5c___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422108)
  store %struct.Memory* %call_422108, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rcx	 RIP: 42210c	 Bytes: 3
  %loadMem_42210c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42210c = call %struct.Memory* @routine_addq__rdi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42210c)
  store %struct.Memory* %call_42210c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 42210f	 Bytes: 4
  %loadMem_42210f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42210f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42210f)
  store %struct.Memory* %call_42210f, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0xe0(%rbp)	 RIP: 422113	 Bytes: 7
  %loadMem_422113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422113 = call %struct.Memory* @routine_movq__rdi__MINUS0xe0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422113)
  store %struct.Memory* %call_422113, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 42211a	 Bytes: 3
  %loadMem_42211a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42211a = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42211a)
  store %struct.Memory* %call_42211a, %struct.Memory** %MEMORY

  ; Code: movq -0xe0(%rbp), %rcx	 RIP: 42211d	 Bytes: 7
  %loadMem_42211d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42211d = call %struct.Memory* @routine_movq_MINUS0xe0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42211d)
  store %struct.Memory* %call_42211d, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 422124	 Bytes: 5
  %loadMem1_422124 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422124 = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422124, i64 -134420, i64 5, i64 5)
  store %struct.Memory* %call1_422124, %struct.Memory** %MEMORY

  %loadMem2_422124 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422124 = load i64, i64* %3
  %call2_422124 = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_422124, %struct.Memory* %loadMem2_422124)
  store %struct.Memory* %call2_422124, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 422129	 Bytes: 4
  %loadMem_422129 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422129 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422129)
  store %struct.Memory* %call_422129, %struct.Memory** %MEMORY

  ; Code: jne .L_422140	 RIP: 42212d	 Bytes: 6
  %loadMem_42212d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42212d = call %struct.Memory* @routine_jne_.L_422140(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42212d, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_42212d, %struct.Memory** %MEMORY

  %loadBr_42212d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42212d = icmp eq i8 %loadBr_42212d, 1
  br i1 %cmpBr_42212d, label %block_.L_422140, label %block_422133

block_422133:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 422133	 Bytes: 8
  %loadMem_422133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422133 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422133)
  store %struct.Memory* %call_422133, %struct.Memory** %MEMORY

  ; Code: jmpq .L_422364	 RIP: 42213b	 Bytes: 5
  %loadMem_42213b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42213b = call %struct.Memory* @routine_jmpq_.L_422364(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42213b, i64 553, i64 5)
  store %struct.Memory* %call_42213b, %struct.Memory** %MEMORY

  br label %block_.L_422364

  ; Code: .L_422140:	 RIP: 422140	 Bytes: 0
block_.L_422140:

  ; Code: movl $0x4, %eax	 RIP: 422140	 Bytes: 5
  %loadMem_422140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422140 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422140)
  store %struct.Memory* %call_422140, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 422145	 Bytes: 2
  %loadMem_422145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422145 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422145)
  store %struct.Memory* %call_422145, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 422147	 Bytes: 5
  %loadMem_422147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422147 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422147)
  store %struct.Memory* %call_422147, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 42214c	 Bytes: 2
  %loadMem_42214c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42214c = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42214c)
  store %struct.Memory* %call_42214c, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 42214e	 Bytes: 4
  %loadMem_42214e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42214e = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42214e)
  store %struct.Memory* %call_42214e, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 422152	 Bytes: 4
  %loadMem_422152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422152 = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422152)
  store %struct.Memory* %call_422152, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdi	 RIP: 422156	 Bytes: 4
  %loadMem_422156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422156 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422156)
  store %struct.Memory* %call_422156, %struct.Memory** %MEMORY

  ; Code: imulq $0x5c, %rdi, %rdi	 RIP: 42215a	 Bytes: 4
  %loadMem_42215a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42215a = call %struct.Memory* @routine_imulq__0x5c___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42215a)
  store %struct.Memory* %call_42215a, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rcx	 RIP: 42215e	 Bytes: 3
  %loadMem_42215e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42215e = call %struct.Memory* @routine_addq__rdi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42215e)
  store %struct.Memory* %call_42215e, %struct.Memory** %MEMORY

  ; Code: addq $0x8, %rcx	 RIP: 422161	 Bytes: 4
  %loadMem_422161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422161 = call %struct.Memory* @routine_addq__0x8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422161)
  store %struct.Memory* %call_422161, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 422165	 Bytes: 4
  %loadMem_422165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422165 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422165)
  store %struct.Memory* %call_422165, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0xe8(%rbp)	 RIP: 422169	 Bytes: 7
  %loadMem_422169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422169 = call %struct.Memory* @routine_movq__rdi__MINUS0xe8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422169)
  store %struct.Memory* %call_422169, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 422170	 Bytes: 3
  %loadMem_422170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422170 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422170)
  store %struct.Memory* %call_422170, %struct.Memory** %MEMORY

  ; Code: movq -0xe8(%rbp), %rcx	 RIP: 422173	 Bytes: 7
  %loadMem_422173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422173 = call %struct.Memory* @routine_movq_MINUS0xe8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422173)
  store %struct.Memory* %call_422173, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 42217a	 Bytes: 5
  %loadMem1_42217a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42217a = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42217a, i64 -134506, i64 5, i64 5)
  store %struct.Memory* %call1_42217a, %struct.Memory** %MEMORY

  %loadMem2_42217a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42217a = load i64, i64* %3
  %call2_42217a = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_42217a, %struct.Memory* %loadMem2_42217a)
  store %struct.Memory* %call2_42217a, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 42217f	 Bytes: 4
  %loadMem_42217f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42217f = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42217f)
  store %struct.Memory* %call_42217f, %struct.Memory** %MEMORY

  ; Code: jne .L_422196	 RIP: 422183	 Bytes: 6
  %loadMem_422183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422183 = call %struct.Memory* @routine_jne_.L_422196(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422183, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_422183, %struct.Memory** %MEMORY

  %loadBr_422183 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422183 = icmp eq i8 %loadBr_422183, 1
  br i1 %cmpBr_422183, label %block_.L_422196, label %block_422189

block_422189:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 422189	 Bytes: 8
  %loadMem_422189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422189 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422189)
  store %struct.Memory* %call_422189, %struct.Memory** %MEMORY

  ; Code: jmpq .L_422364	 RIP: 422191	 Bytes: 5
  %loadMem_422191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422191 = call %struct.Memory* @routine_jmpq_.L_422364(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422191, i64 467, i64 5)
  store %struct.Memory* %call_422191, %struct.Memory** %MEMORY

  br label %block_.L_422364

  ; Code: .L_422196:	 RIP: 422196	 Bytes: 0
block_.L_422196:

  ; Code: movl $0x4, %eax	 RIP: 422196	 Bytes: 5
  %loadMem_422196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422196 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422196)
  store %struct.Memory* %call_422196, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 42219b	 Bytes: 2
  %loadMem_42219b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42219b = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42219b)
  store %struct.Memory* %call_42219b, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %eax	 RIP: 42219d	 Bytes: 5
  %loadMem_42219d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42219d = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42219d)
  store %struct.Memory* %call_42219d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4221a2	 Bytes: 2
  %loadMem_4221a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4221a2 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4221a2)
  store %struct.Memory* %call_4221a2, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4221a4	 Bytes: 4
  %loadMem_4221a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4221a4 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4221a4)
  store %struct.Memory* %call_4221a4, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 4221a8	 Bytes: 4
  %loadMem_4221a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4221a8 = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4221a8)
  store %struct.Memory* %call_4221a8, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdi	 RIP: 4221ac	 Bytes: 4
  %loadMem_4221ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4221ac = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4221ac)
  store %struct.Memory* %call_4221ac, %struct.Memory** %MEMORY

  ; Code: imulq $0x5c, %rdi, %rdi	 RIP: 4221b0	 Bytes: 4
  %loadMem_4221b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4221b0 = call %struct.Memory* @routine_imulq__0x5c___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4221b0)
  store %struct.Memory* %call_4221b0, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rcx	 RIP: 4221b4	 Bytes: 3
  %loadMem_4221b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4221b4 = call %struct.Memory* @routine_addq__rdi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4221b4)
  store %struct.Memory* %call_4221b4, %struct.Memory** %MEMORY

  ; Code: addq $0x4, %rcx	 RIP: 4221b7	 Bytes: 4
  %loadMem_4221b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4221b7 = call %struct.Memory* @routine_addq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4221b7)
  store %struct.Memory* %call_4221b7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 4221bb	 Bytes: 4
  %loadMem_4221bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4221bb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4221bb)
  store %struct.Memory* %call_4221bb, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0xf0(%rbp)	 RIP: 4221bf	 Bytes: 7
  %loadMem_4221bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4221bf = call %struct.Memory* @routine_movq__rdi__MINUS0xf0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4221bf)
  store %struct.Memory* %call_4221bf, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4221c6	 Bytes: 3
  %loadMem_4221c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4221c6 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4221c6)
  store %struct.Memory* %call_4221c6, %struct.Memory** %MEMORY

  ; Code: movq -0xf0(%rbp), %rcx	 RIP: 4221c9	 Bytes: 7
  %loadMem_4221c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4221c9 = call %struct.Memory* @routine_movq_MINUS0xf0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4221c9)
  store %struct.Memory* %call_4221c9, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 4221d0	 Bytes: 5
  %loadMem1_4221d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4221d0 = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4221d0, i64 -134592, i64 5, i64 5)
  store %struct.Memory* %call1_4221d0, %struct.Memory** %MEMORY

  %loadMem2_4221d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4221d0 = load i64, i64* %3
  %call2_4221d0 = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_4221d0, %struct.Memory* %loadMem2_4221d0)
  store %struct.Memory* %call2_4221d0, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4221d5	 Bytes: 4
  %loadMem_4221d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4221d5 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4221d5)
  store %struct.Memory* %call_4221d5, %struct.Memory** %MEMORY

  ; Code: jne .L_4221ec	 RIP: 4221d9	 Bytes: 6
  %loadMem_4221d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4221d9 = call %struct.Memory* @routine_jne_.L_4221ec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4221d9, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4221d9, %struct.Memory** %MEMORY

  %loadBr_4221d9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4221d9 = icmp eq i8 %loadBr_4221d9, 1
  br i1 %cmpBr_4221d9, label %block_.L_4221ec, label %block_4221df

block_4221df:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 4221df	 Bytes: 8
  %loadMem_4221df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4221df = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4221df)
  store %struct.Memory* %call_4221df, %struct.Memory** %MEMORY

  ; Code: jmpq .L_422364	 RIP: 4221e7	 Bytes: 5
  %loadMem_4221e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4221e7 = call %struct.Memory* @routine_jmpq_.L_422364(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4221e7, i64 381, i64 5)
  store %struct.Memory* %call_4221e7, %struct.Memory** %MEMORY

  br label %block_.L_422364

  ; Code: .L_4221ec:	 RIP: 4221ec	 Bytes: 0
block_.L_4221ec:

  ; Code: movl $0x4, %eax	 RIP: 4221ec	 Bytes: 5
  %loadMem_4221ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4221ec = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4221ec)
  store %struct.Memory* %call_4221ec, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4221f1	 Bytes: 2
  %loadMem_4221f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4221f1 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4221f1)
  store %struct.Memory* %call_4221f1, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 4221f3	 Bytes: 4
  %loadMem_4221f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4221f3 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4221f3)
  store %struct.Memory* %call_4221f3, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 4221f7	 Bytes: 4
  %loadMem_4221f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4221f7 = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4221f7)
  store %struct.Memory* %call_4221f7, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4221fb	 Bytes: 4
  %loadMem_4221fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4221fb = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4221fb)
  store %struct.Memory* %call_4221fb, %struct.Memory** %MEMORY

  ; Code: imulq $0x5c, %rdx, %rdx	 RIP: 4221ff	 Bytes: 4
  %loadMem_4221ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4221ff = call %struct.Memory* @routine_imulq__0x5c___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4221ff)
  store %struct.Memory* %call_4221ff, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 422203	 Bytes: 3
  %loadMem_422203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422203 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422203)
  store %struct.Memory* %call_422203, %struct.Memory** %MEMORY

  ; Code: addq $0xc, %rcx	 RIP: 422206	 Bytes: 4
  %loadMem_422206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422206 = call %struct.Memory* @routine_addq__0xc___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422206)
  store %struct.Memory* %call_422206, %struct.Memory** %MEMORY

  ; Code: movslq 0x677060, %rdx	 RIP: 42220a	 Bytes: 8
  %loadMem_42220a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42220a = call %struct.Memory* @routine_movslq_0x677060___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42220a)
  store %struct.Memory* %call_42220a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 422212	 Bytes: 4
  %loadMem_422212 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422212 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422212)
  store %struct.Memory* %call_422212, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0xf8(%rbp)	 RIP: 422216	 Bytes: 7
  %loadMem_422216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422216 = call %struct.Memory* @routine_movq__rdi__MINUS0xf8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422216)
  store %struct.Memory* %call_422216, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 42221d	 Bytes: 3
  %loadMem_42221d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42221d = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42221d)
  store %struct.Memory* %call_42221d, %struct.Memory** %MEMORY

  ; Code: movq -0xf8(%rbp), %rcx	 RIP: 422220	 Bytes: 7
  %loadMem_422220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422220 = call %struct.Memory* @routine_movq_MINUS0xf8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422220)
  store %struct.Memory* %call_422220, %struct.Memory** %MEMORY

  ; Code: callq .fread_plt	 RIP: 422227	 Bytes: 5
  %loadMem1_422227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422227 = call %struct.Memory* @routine_callq_.fread_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422227, i64 -134679, i64 5, i64 5)
  store %struct.Memory* %call1_422227, %struct.Memory** %MEMORY

  %loadMem2_422227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422227 = load i64, i64* %3
  %call2_422227 = call %struct.Memory* @sub_401410.fread_plt(%struct.State* %0, i64  %loadPC_422227, %struct.Memory* %loadMem2_422227)
  store %struct.Memory* %call2_422227, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 42222c	 Bytes: 4
  %loadMem_42222c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42222c = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42222c)
  store %struct.Memory* %call_42222c, %struct.Memory** %MEMORY

  ; Code: jne .L_422243	 RIP: 422230	 Bytes: 6
  %loadMem_422230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422230 = call %struct.Memory* @routine_jne_.L_422243(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422230, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_422230, %struct.Memory** %MEMORY

  %loadBr_422230 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422230 = icmp eq i8 %loadBr_422230, 1
  br i1 %cmpBr_422230, label %block_.L_422243, label %block_422236

block_422236:
  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 422236	 Bytes: 8
  %loadMem_422236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422236 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422236)
  store %struct.Memory* %call_422236, %struct.Memory** %MEMORY

  ; Code: jmpq .L_422364	 RIP: 42223e	 Bytes: 5
  %loadMem_42223e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42223e = call %struct.Memory* @routine_jmpq_.L_422364(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42223e, i64 294, i64 5)
  store %struct.Memory* %call_42223e, %struct.Memory** %MEMORY

  br label %block_.L_422364

  ; Code: .L_422243:	 RIP: 422243	 Bytes: 0
block_.L_422243:

  ; Code: cmpl $0x0, -0x18(%rbp)	 RIP: 422243	 Bytes: 4
  %loadMem_422243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422243 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422243)
  store %struct.Memory* %call_422243, %struct.Memory** %MEMORY

  ; Code: je .L_42230e	 RIP: 422247	 Bytes: 6
  %loadMem_422247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422247 = call %struct.Memory* @routine_je_.L_42230e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422247, i8* %BRANCH_TAKEN, i64 199, i64 6, i64 6)
  store %struct.Memory* %call_422247, %struct.Memory** %MEMORY

  %loadBr_422247 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422247 = icmp eq i8 %loadBr_422247, 1
  br i1 %cmpBr_422247, label %block_.L_42230e, label %block_42224d

block_42224d:
  ; Code: movl $0x4, %esi	 RIP: 42224d	 Bytes: 5
  %loadMem_42224d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42224d = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42224d)
  store %struct.Memory* %call_42224d, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 422252	 Bytes: 4
  %loadMem_422252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422252 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422252)
  store %struct.Memory* %call_422252, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 422256	 Bytes: 4
  %loadMem_422256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422256 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422256)
  store %struct.Memory* %call_422256, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42225a	 Bytes: 4
  %loadMem_42225a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42225a = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42225a)
  store %struct.Memory* %call_42225a, %struct.Memory** %MEMORY

  ; Code: imulq $0x5c, %rcx, %rcx	 RIP: 42225e	 Bytes: 4
  %loadMem_42225e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42225e = call %struct.Memory* @routine_imulq__0x5c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42225e)
  store %struct.Memory* %call_42225e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 422262	 Bytes: 3
  %loadMem_422262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422262 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422262)
  store %struct.Memory* %call_422262, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 422265	 Bytes: 3
  %loadMem_422265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422265 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422265)
  store %struct.Memory* %call_422265, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 422268	 Bytes: 5
  %loadMem1_422268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422268 = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422268, i64 280, i64 5, i64 5)
  store %struct.Memory* %call1_422268, %struct.Memory** %MEMORY

  %loadMem2_422268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422268 = load i64, i64* %3
  %call2_422268 = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_422268, %struct.Memory* %loadMem2_422268)
  store %struct.Memory* %call2_422268, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %esi	 RIP: 42226d	 Bytes: 5
  %loadMem_42226d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42226d = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42226d)
  store %struct.Memory* %call_42226d, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 422272	 Bytes: 4
  %loadMem_422272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422272 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422272)
  store %struct.Memory* %call_422272, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 422276	 Bytes: 4
  %loadMem_422276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422276 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422276)
  store %struct.Memory* %call_422276, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42227a	 Bytes: 4
  %loadMem_42227a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42227a = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42227a)
  store %struct.Memory* %call_42227a, %struct.Memory** %MEMORY

  ; Code: imulq $0x5c, %rcx, %rcx	 RIP: 42227e	 Bytes: 4
  %loadMem_42227e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42227e = call %struct.Memory* @routine_imulq__0x5c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42227e)
  store %struct.Memory* %call_42227e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 422282	 Bytes: 3
  %loadMem_422282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422282 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422282)
  store %struct.Memory* %call_422282, %struct.Memory** %MEMORY

  ; Code: addq $0x8, %rax	 RIP: 422285	 Bytes: 4
  %loadMem_422285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422285 = call %struct.Memory* @routine_addq__0x8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422285)
  store %struct.Memory* %call_422285, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 422289	 Bytes: 3
  %loadMem_422289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422289 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422289)
  store %struct.Memory* %call_422289, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 42228c	 Bytes: 5
  %loadMem1_42228c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42228c = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42228c, i64 244, i64 5, i64 5)
  store %struct.Memory* %call1_42228c, %struct.Memory** %MEMORY

  %loadMem2_42228c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42228c = load i64, i64* %3
  %call2_42228c = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_42228c, %struct.Memory* %loadMem2_42228c)
  store %struct.Memory* %call2_42228c, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %esi	 RIP: 422291	 Bytes: 5
  %loadMem_422291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422291 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422291)
  store %struct.Memory* %call_422291, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 422296	 Bytes: 4
  %loadMem_422296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422296 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422296)
  store %struct.Memory* %call_422296, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 42229a	 Bytes: 4
  %loadMem_42229a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42229a = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42229a)
  store %struct.Memory* %call_42229a, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 42229e	 Bytes: 4
  %loadMem_42229e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42229e = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42229e)
  store %struct.Memory* %call_42229e, %struct.Memory** %MEMORY

  ; Code: imulq $0x5c, %rcx, %rcx	 RIP: 4222a2	 Bytes: 4
  %loadMem_4222a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4222a2 = call %struct.Memory* @routine_imulq__0x5c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4222a2)
  store %struct.Memory* %call_4222a2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4222a6	 Bytes: 3
  %loadMem_4222a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4222a6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4222a6)
  store %struct.Memory* %call_4222a6, %struct.Memory** %MEMORY

  ; Code: addq $0x4, %rax	 RIP: 4222a9	 Bytes: 4
  %loadMem_4222a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4222a9 = call %struct.Memory* @routine_addq__0x4___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4222a9)
  store %struct.Memory* %call_4222a9, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4222ad	 Bytes: 3
  %loadMem_4222ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4222ad = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4222ad)
  store %struct.Memory* %call_4222ad, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 4222b0	 Bytes: 5
  %loadMem1_4222b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4222b0 = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4222b0, i64 208, i64 5, i64 5)
  store %struct.Memory* %call1_4222b0, %struct.Memory** %MEMORY

  %loadMem2_4222b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4222b0 = load i64, i64* %3
  %call2_4222b0 = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_4222b0, %struct.Memory* %loadMem2_4222b0)
  store %struct.Memory* %call2_4222b0, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 4222b5	 Bytes: 7
  %loadMem_4222b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4222b5 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4222b5)
  store %struct.Memory* %call_4222b5, %struct.Memory** %MEMORY

  ; Code: .L_4222bc:	 RIP: 4222bc	 Bytes: 0
  br label %block_.L_4222bc
block_.L_4222bc:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 4222bc	 Bytes: 3
  %loadMem_4222bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4222bc = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4222bc)
  store %struct.Memory* %call_4222bc, %struct.Memory** %MEMORY

  ; Code: cmpl 0x677060, %eax	 RIP: 4222bf	 Bytes: 7
  %loadMem_4222bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4222bf = call %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4222bf)
  store %struct.Memory* %call_4222bf, %struct.Memory** %MEMORY

  ; Code: jge .L_422309	 RIP: 4222c6	 Bytes: 6
  %loadMem_4222c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4222c6 = call %struct.Memory* @routine_jge_.L_422309(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4222c6, i8* %BRANCH_TAKEN, i64 67, i64 6, i64 6)
  store %struct.Memory* %call_4222c6, %struct.Memory** %MEMORY

  %loadBr_4222c6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4222c6 = icmp eq i8 %loadBr_4222c6, 1
  br i1 %cmpBr_4222c6, label %block_.L_422309, label %block_4222cc

block_4222cc:
  ; Code: movl $0x4, %esi	 RIP: 4222cc	 Bytes: 5
  %loadMem_4222cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4222cc = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4222cc)
  store %struct.Memory* %call_4222cc, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4222d1	 Bytes: 4
  %loadMem_4222d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4222d1 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4222d1)
  store %struct.Memory* %call_4222d1, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 4222d5	 Bytes: 4
  %loadMem_4222d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4222d5 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4222d5)
  store %struct.Memory* %call_4222d5, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 4222d9	 Bytes: 4
  %loadMem_4222d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4222d9 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4222d9)
  store %struct.Memory* %call_4222d9, %struct.Memory** %MEMORY

  ; Code: imulq $0x5c, %rcx, %rcx	 RIP: 4222dd	 Bytes: 4
  %loadMem_4222dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4222dd = call %struct.Memory* @routine_imulq__0x5c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4222dd)
  store %struct.Memory* %call_4222dd, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4222e1	 Bytes: 3
  %loadMem_4222e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4222e1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4222e1)
  store %struct.Memory* %call_4222e1, %struct.Memory** %MEMORY

  ; Code: addq $0xc, %rax	 RIP: 4222e4	 Bytes: 4
  %loadMem_4222e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4222e4 = call %struct.Memory* @routine_addq__0xc___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4222e4)
  store %struct.Memory* %call_4222e4, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 4222e8	 Bytes: 4
  %loadMem_4222e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4222e8 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4222e8)
  store %struct.Memory* %call_4222e8, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rcx	 RIP: 4222ec	 Bytes: 4
  %loadMem_4222ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4222ec = call %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4222ec)
  store %struct.Memory* %call_4222ec, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4222f0	 Bytes: 3
  %loadMem_4222f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4222f0 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4222f0)
  store %struct.Memory* %call_4222f0, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4222f3	 Bytes: 3
  %loadMem_4222f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4222f3 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4222f3)
  store %struct.Memory* %call_4222f3, %struct.Memory** %MEMORY

  ; Code: callq .byteswap	 RIP: 4222f6	 Bytes: 5
  %loadMem1_4222f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4222f6 = call %struct.Memory* @routine_callq_.byteswap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4222f6, i64 138, i64 5, i64 5)
  store %struct.Memory* %call1_4222f6, %struct.Memory** %MEMORY

  %loadMem2_4222f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4222f6 = load i64, i64* %3
  %call2_4222f6 = call %struct.Memory* @sub_422380.byteswap(%struct.State* %0, i64  %loadPC_4222f6, %struct.Memory* %loadMem2_4222f6)
  store %struct.Memory* %call2_4222f6, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 4222fb	 Bytes: 3
  %loadMem_4222fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4222fb = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4222fb)
  store %struct.Memory* %call_4222fb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4222fe	 Bytes: 3
  %loadMem_4222fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4222fe = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4222fe)
  store %struct.Memory* %call_4222fe, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 422301	 Bytes: 3
  %loadMem_422301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422301 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422301)
  store %struct.Memory* %call_422301, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4222bc	 RIP: 422304	 Bytes: 5
  %loadMem_422304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422304 = call %struct.Memory* @routine_jmpq_.L_4222bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422304, i64 -72, i64 5)
  store %struct.Memory* %call_422304, %struct.Memory** %MEMORY

  br label %block_.L_4222bc

  ; Code: .L_422309:	 RIP: 422309	 Bytes: 0
block_.L_422309:

  ; Code: jmpq .L_42230e	 RIP: 422309	 Bytes: 5
  %loadMem_422309 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422309 = call %struct.Memory* @routine_jmpq_.L_42230e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422309, i64 5, i64 5)
  store %struct.Memory* %call_422309, %struct.Memory** %MEMORY

  br label %block_.L_42230e

  ; Code: .L_42230e:	 RIP: 42230e	 Bytes: 0
block_.L_42230e:

  ; Code: cmpl $0x1, -0x14(%rbp)	 RIP: 42230e	 Bytes: 4
  %loadMem_42230e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42230e = call %struct.Memory* @routine_cmpl__0x1__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42230e)
  store %struct.Memory* %call_42230e, %struct.Memory** %MEMORY

  ; Code: jne .L_422340	 RIP: 422312	 Bytes: 6
  %loadMem_422312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422312 = call %struct.Memory* @routine_jne_.L_422340(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422312, i8* %BRANCH_TAKEN, i64 46, i64 6, i64 6)
  store %struct.Memory* %call_422312, %struct.Memory** %MEMORY

  %loadBr_422312 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_422312 = icmp eq i8 %loadBr_422312, 1
  br i1 %cmpBr_422312, label %block_.L_422340, label %block_422318

block_422318:
  ; Code: movl $0x1, %edx	 RIP: 422318	 Bytes: 5
  %loadMem_422318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422318 = call %struct.Memory* @routine_movl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422318)
  store %struct.Memory* %call_422318, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 42231d	 Bytes: 4
  %loadMem_42231d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42231d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42231d)
  store %struct.Memory* %call_42231d, %struct.Memory** %MEMORY

  ; Code: movl 0x677060, %eax	 RIP: 422321	 Bytes: 7
  %loadMem_422321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422321 = call %struct.Memory* @routine_movl_0x677060___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422321)
  store %struct.Memory* %call_422321, %struct.Memory** %MEMORY

  ; Code: addl $0x3, %eax	 RIP: 422328	 Bytes: 3
  %loadMem_422328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422328 = call %struct.Memory* @routine_addl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422328)
  store %struct.Memory* %call_422328, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 42232b	 Bytes: 3
  %loadMem_42232b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42232b = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42232b)
  store %struct.Memory* %call_42232b, %struct.Memory** %MEMORY

  ; Code: shlq $0x2, %rcx	 RIP: 42232e	 Bytes: 4
  %loadMem_42232e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42232e = call %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42232e)
  store %struct.Memory* %call_42232e, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rsi	 RIP: 422332	 Bytes: 3
  %loadMem_422332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422332 = call %struct.Memory* @routine_movq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422332)
  store %struct.Memory* %call_422332, %struct.Memory** %MEMORY

  ; Code: callq .fseek_plt	 RIP: 422335	 Bytes: 5
  %loadMem1_422335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422335 = call %struct.Memory* @routine_callq_.fseek_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422335, i64 -134453, i64 5, i64 5)
  store %struct.Memory* %call1_422335, %struct.Memory** %MEMORY

  %loadMem2_422335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422335 = load i64, i64* %3
  %call2_422335 = call %struct.Memory* @sub_401600.fseek_plt(%struct.State* %0, i64  %loadPC_422335, %struct.Memory* %loadMem2_422335)
  store %struct.Memory* %call2_422335, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xfc(%rbp)	 RIP: 42233a	 Bytes: 6
  %loadMem_42233a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42233a = call %struct.Memory* @routine_movl__eax__MINUS0xfc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42233a)
  store %struct.Memory* %call_42233a, %struct.Memory** %MEMORY

  ; Code: .L_422340:	 RIP: 422340	 Bytes: 0
  br label %block_.L_422340
block_.L_422340:

  ; Code: jmpq .L_422345	 RIP: 422340	 Bytes: 5
  %loadMem_422340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422340 = call %struct.Memory* @routine_jmpq_.L_422345(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422340, i64 5, i64 5)
  store %struct.Memory* %call_422340, %struct.Memory** %MEMORY

  br label %block_.L_422345

  ; Code: .L_422345:	 RIP: 422345	 Bytes: 0
block_.L_422345:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 422345	 Bytes: 3
  %loadMem_422345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422345 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422345)
  store %struct.Memory* %call_422345, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 422348	 Bytes: 3
  %loadMem_422348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422348 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422348)
  store %struct.Memory* %call_422348, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 42234b	 Bytes: 3
  %loadMem_42234b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42234b = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42234b)
  store %struct.Memory* %call_42234b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421cf8	 RIP: 42234e	 Bytes: 5
  %loadMem_42234e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42234e = call %struct.Memory* @routine_jmpq_.L_421cf8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42234e, i64 -1622, i64 5)
  store %struct.Memory* %call_42234e, %struct.Memory** %MEMORY

  br label %block_.L_421cf8

  ; Code: .L_422353:	 RIP: 422353	 Bytes: 0
block_.L_422353:

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 422353	 Bytes: 4
  %loadMem_422353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422353 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422353)
  store %struct.Memory* %call_422353, %struct.Memory** %MEMORY

  ; Code: callq .P9Renormalize	 RIP: 422357	 Bytes: 5
  %loadMem1_422357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_422357 = call %struct.Memory* @routine_callq_.P9Renormalize(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_422357, i64 78473, i64 5, i64 5)
  store %struct.Memory* %call1_422357, %struct.Memory** %MEMORY

  %loadMem2_422357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_422357 = load i64, i64* %3
  %call2_422357 = call %struct.Memory* @sub_4355e0.P9Renormalize(%struct.State* %0, i64  %loadPC_422357, %struct.Memory* %loadMem2_422357)
  store %struct.Memory* %call2_422357, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdi	 RIP: 42235c	 Bytes: 4
  %loadMem_42235c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42235c = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42235c)
  store %struct.Memory* %call_42235c, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 422360	 Bytes: 4
  %loadMem_422360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422360 = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422360)
  store %struct.Memory* %call_422360, %struct.Memory** %MEMORY

  ; Code: .L_422364:	 RIP: 422364	 Bytes: 0
  br label %block_.L_422364
block_.L_422364:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 422364	 Bytes: 4
  %loadMem_422364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422364 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422364)
  store %struct.Memory* %call_422364, %struct.Memory** %MEMORY

  ; Code: addq $0x100, %rsp	 RIP: 422368	 Bytes: 7
  %loadMem_422368 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422368 = call %struct.Memory* @routine_addq__0x100___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422368)
  store %struct.Memory* %call_422368, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 42236f	 Bytes: 1
  %loadMem_42236f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42236f = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42236f)
  store %struct.Memory* %call_42236f, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 422370	 Bytes: 1
  %loadMem_422370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_422370 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_422370)
  store %struct.Memory* %call_422370, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_422370
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

define %struct.Memory* @routine_subq__0x100___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 256)
  ret %struct.Memory* %12
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x24__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__edx__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
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


define %struct.Memory* @routine_movq__r9___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %R9
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq__rcx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq__r8___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
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

define %struct.Memory* @routine_jne_.L_421839(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_422364(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_leaq_MINUS0x34__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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






define %struct.Memory* @routine_jne_.L_421876(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_4218a2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x24__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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




define %struct.Memory* @routine_leaq_MINUS0x34__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_cmpl__0x4__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4218b8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x2__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4218e7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x14__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 20)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4218ce(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x3__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4218e2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x457852___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x457852_type* @G__0x457852 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_jne_.L_421902(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x38__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_jmpq_.L_421947(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_je_.L_421942(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
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


define %struct.Memory* @routine_movq_MINUS0x68__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
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








define %struct.Memory* @routine_movl_MINUS0x24__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.P9AllocHMM(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_42196e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4578f2___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4578f2_type* @G__0x4578f2 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_cmpl__0x7__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 7)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_421a45(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_4219b5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_4219d0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq__0x45763b___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x45763b_type* @G__0x45763b to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x5c3___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 1475)
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movq_0x70__rax____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__ecx___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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


define %struct.Memory* @routine_movq__rax___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_callq_.sre_realloc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__rax__0x70__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 112
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_0x70__rax____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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






define %struct.Memory* @routine_jne_.L_421a35(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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










define %struct.Memory* @routine_leaq_MINUS0x38__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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






define %struct.Memory* @routine_jne_.L_421a82(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_leaq_MINUS0x50__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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








define %struct.Memory* @routine_jne_.L_421ab5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cmpl__0x1__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_421adf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movslq_0x677060___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x677060_type* @G_0x677060 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_callq_.fseek_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 124
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x5__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_421af3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_421c36(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_addq__0x90___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 144)
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






define %struct.Memory* @routine_jne_.L_421b3d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_421b5e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_addq__0x90___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 144)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_movl_0x90__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 144
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


define %struct.Memory* @routine_je_.L_421baf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movq_0x78__rcx____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl___rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12)
  ret %struct.Memory* %15
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








define %struct.Memory* @routine_jne_.L_421baf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl___rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
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






define %struct.Memory* @routine_movl_0x90__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_andl__0x2___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 2)
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


define %struct.Memory* @routine_je_.L_421c1b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movq_0x80__rcx____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}
















define %struct.Memory* @routine_jne_.L_421c1b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jne_.L_421ce1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_addq__0x20___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 32)
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






define %struct.Memory* @routine_jne_.L_421c88(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_421cdc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 44
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_jge_.L_421cd7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jmpq_.L_421c99(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_421cdc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_421cf1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_callq_.P9DefaultNullModel(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl___rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_jg_.L_422353(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movq_0x10__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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

define %struct.Memory* @routine_imulq__0x5c___rdi___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 92)
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






define %struct.Memory* @routine_jne_.L_421d59(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_addq__0x8___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 8)
  ret %struct.Memory* %12
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






define %struct.Memory* @routine_jne_.L_421daf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_addq__0x4___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 4)
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






define %struct.Memory* @routine_jne_.L_421e05(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0x5c___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 92)
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


define %struct.Memory* @routine_addq__0xc___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 12)
  ret %struct.Memory* %12
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






define %struct.Memory* @routine_jne_.L_421e5c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_421f27(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_imulq__0x5c___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 92)
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


















define %struct.Memory* @routine_addq__0x4___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 4)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_jge_.L_421f22(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_addq__0xc___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 12)
  ret %struct.Memory* %12
}


















define %struct.Memory* @routine_jmpq_.L_421ed5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_421f27(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_421f59(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_0x677060___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x677060_type* @G_0x677060 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_addl__0x3___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 3)
  ret %struct.Memory* %12
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












define %struct.Memory* @routine_movq_0x18__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
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






define %struct.Memory* @routine_jne_.L_421fab(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_422001(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_422057(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_4220c9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















































define %struct.Memory* @routine_jne_.L_4220ee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0xc___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 12)
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movl__eax__MINUS0xd4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 212
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}












define %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
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






define %struct.Memory* @routine_jne_.L_422140(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_422196(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_4221ec(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


























define %struct.Memory* @routine_movq__rdi__MINUS0xf8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 248
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0xf8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 248
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_422243(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_42230e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















































define %struct.Memory* @routine_jge_.L_422309(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
































define %struct.Memory* @routine_jmpq_.L_4222bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_42230e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_422340(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_movl__eax__MINUS0xfc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 252
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_422345(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_421cf8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_callq_.P9Renormalize(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_addq__0x100___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 256)
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

