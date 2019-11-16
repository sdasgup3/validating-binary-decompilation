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

declare %struct.Memory* @sub_41c560.see(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x633b50_type = type <{ [1 x i8] }>
@G_0x633b50= global %G_0x633b50_type <{ [1 x i8] c"\00" }>
%G_0x639110_type = type <{ [4 x i8] }>
@G_0x639110= global %G_0x639110_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x864500_type = type <{ [4 x i8] }>
@G_0x864500= global %G_0x864500_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8661bc_type = type <{ [1 x i8] }>
@G_0x8661bc= global %G_0x8661bc_type <{ [1 x i8] c"\00" }>
%G_0x886bc0_type = type <{ [4 x i8] }>
@G_0x886bc0= global %G_0x886bc0_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x639220_type = type <{ [8 x i8] }>
@G__0x639220= global %G__0x639220_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x63ae50_type = type <{ [8 x i8] }>
@G__0x63ae50= global %G__0x63ae50_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x86bda0_type = type <{ [8 x i8] }>
@G__0x86bda0= global %G__0x86bda0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x882600_type = type <{ [8 x i8] }>
@G__0x882600= global %G__0x882600_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x884b20_type = type <{ [8 x i8] }>
@G__0x884b20= global %G__0x884b20_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @order_moves(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .order_moves:	 RIP: 415f00	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 415f00	 Bytes: 1
  %loadMem_415f00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f00 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f00)
  store %struct.Memory* %call_415f00, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 415f01	 Bytes: 3
  %loadMem_415f01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f01 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f01)
  store %struct.Memory* %call_415f01, %struct.Memory** %MEMORY

  ; Code: subq $0x80, %rsp	 RIP: 415f04	 Bytes: 7
  %loadMem_415f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f04 = call %struct.Memory* @routine_subq__0x80___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f04)
  store %struct.Memory* %call_415f04, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 415f0b	 Bytes: 4
  %loadMem_415f0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f0b = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f0b)
  store %struct.Memory* %call_415f0b, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 415f0f	 Bytes: 4
  %loadMem_415f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f0f = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f0f)
  store %struct.Memory* %call_415f0f, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x18(%rbp)	 RIP: 415f13	 Bytes: 4
  %loadMem_415f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f13 = call %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f13)
  store %struct.Memory* %call_415f13, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1c(%rbp)	 RIP: 415f17	 Bytes: 3
  %loadMem_415f17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f17 = call %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f17)
  store %struct.Memory* %call_415f17, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x20(%rbp)	 RIP: 415f1a	 Bytes: 4
  %loadMem_415f1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f1a = call %struct.Memory* @routine_movl__r8d__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f1a)
  store %struct.Memory* %call_415f1a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x639110	 RIP: 415f1e	 Bytes: 8
  %loadMem_415f1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f1e = call %struct.Memory* @routine_cmpl__0x0__0x639110(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f1e)
  store %struct.Memory* %call_415f1e, %struct.Memory** %MEMORY

  ; Code: je .L_416727	 RIP: 415f26	 Bytes: 6
  %loadMem_415f26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f26 = call %struct.Memory* @routine_je_.L_416727(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f26, i8* %BRANCH_TAKEN, i64 2049, i64 6, i64 6)
  store %struct.Memory* %call_415f26, %struct.Memory** %MEMORY

  %loadBr_415f26 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_415f26 = icmp eq i8 %loadBr_415f26, 1
  br i1 %cmpBr_415f26, label %block_.L_416727, label %block_415f2c

block_415f2c:
  ; Code: movl $0x0, 0x639110	 RIP: 415f2c	 Bytes: 11
  %loadMem_415f2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f2c = call %struct.Memory* @routine_movl__0x0__0x639110(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f2c)
  store %struct.Memory* %call_415f2c, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 415f37	 Bytes: 7
  %loadMem_415f37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f37 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f37)
  store %struct.Memory* %call_415f37, %struct.Memory** %MEMORY

  ; Code: .L_415f3e:	 RIP: 415f3e	 Bytes: 0
  br label %block_.L_415f3e
block_.L_415f3e:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 415f3e	 Bytes: 3
  %loadMem_415f3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f3e = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f3e)
  store %struct.Memory* %call_415f3e, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1c(%rbp), %eax	 RIP: 415f41	 Bytes: 3
  %loadMem_415f41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f41 = call %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f41)
  store %struct.Memory* %call_415f41, %struct.Memory** %MEMORY

  ; Code: jge .L_416722	 RIP: 415f44	 Bytes: 6
  %loadMem_415f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f44 = call %struct.Memory* @routine_jge_.L_416722(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f44, i8* %BRANCH_TAKEN, i64 2014, i64 6, i64 6)
  store %struct.Memory* %call_415f44, %struct.Memory** %MEMORY

  %loadBr_415f44 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_415f44 = icmp eq i8 %loadBr_415f44, 1
  br i1 %cmpBr_415f44, label %block_.L_416722, label %block_415f4a

block_415f4a:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 415f4a	 Bytes: 4
  %loadMem_415f4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f4a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f4a)
  store %struct.Memory* %call_415f4a, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 415f4e	 Bytes: 4
  %loadMem_415f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f4e = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f4e)
  store %struct.Memory* %call_415f4e, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 415f52	 Bytes: 4
  %loadMem_415f52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f52 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f52)
  store %struct.Memory* %call_415f52, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 415f56	 Bytes: 3
  %loadMem_415f56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f56 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f56)
  store %struct.Memory* %call_415f56, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %edx	 RIP: 415f59	 Bytes: 2
  %loadMem_415f59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f59 = call %struct.Memory* @routine_movl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f59)
  store %struct.Memory* %call_415f59, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x30(%rbp)	 RIP: 415f5b	 Bytes: 3
  %loadMem_415f5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f5b = call %struct.Memory* @routine_movl__edx__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f5b)
  store %struct.Memory* %call_415f5b, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 415f5e	 Bytes: 4
  %loadMem_415f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f5e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f5e)
  store %struct.Memory* %call_415f5e, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 415f62	 Bytes: 4
  %loadMem_415f62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f62 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f62)
  store %struct.Memory* %call_415f62, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 415f66	 Bytes: 4
  %loadMem_415f66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f66 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f66)
  store %struct.Memory* %call_415f66, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 415f6a	 Bytes: 3
  %loadMem_415f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f6a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f6a)
  store %struct.Memory* %call_415f6a, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 415f6d	 Bytes: 3
  %loadMem_415f6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f6d = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f6d)
  store %struct.Memory* %call_415f6d, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x34(%rbp)	 RIP: 415f70	 Bytes: 3
  %loadMem_415f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f70 = call %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f70)
  store %struct.Memory* %call_415f70, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 415f73	 Bytes: 4
  %loadMem_415f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f73 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f73)
  store %struct.Memory* %call_415f73, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 415f77	 Bytes: 4
  %loadMem_415f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f77 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f77)
  store %struct.Memory* %call_415f77, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 415f7b	 Bytes: 4
  %loadMem_415f7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f7b = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f7b)
  store %struct.Memory* %call_415f7b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 415f7f	 Bytes: 3
  %loadMem_415f7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f7f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f7f)
  store %struct.Memory* %call_415f7f, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 415f82	 Bytes: 3
  %loadMem_415f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f82 = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f82)
  store %struct.Memory* %call_415f82, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x24(%rbp)	 RIP: 415f85	 Bytes: 3
  %loadMem_415f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f85 = call %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f85)
  store %struct.Memory* %call_415f85, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 415f88	 Bytes: 4
  %loadMem_415f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f88 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f88)
  store %struct.Memory* %call_415f88, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 415f8c	 Bytes: 4
  %loadMem_415f8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f8c = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f8c)
  store %struct.Memory* %call_415f8c, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 415f90	 Bytes: 4
  %loadMem_415f90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f90 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f90)
  store %struct.Memory* %call_415f90, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 415f94	 Bytes: 3
  %loadMem_415f94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f94 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f94)
  store %struct.Memory* %call_415f94, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %edx	 RIP: 415f97	 Bytes: 3
  %loadMem_415f97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f97 = call %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f97)
  store %struct.Memory* %call_415f97, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x28(%rbp)	 RIP: 415f9a	 Bytes: 3
  %loadMem_415f9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f9a = call %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f9a)
  store %struct.Memory* %call_415f9a, %struct.Memory** %MEMORY

  ; Code: cmpl $0xd, -0x28(%rbp)	 RIP: 415f9d	 Bytes: 4
  %loadMem_415f9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415f9d = call %struct.Memory* @routine_cmpl__0xd__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415f9d)
  store %struct.Memory* %call_415f9d, %struct.Memory** %MEMORY

  ; Code: je .L_4160a3	 RIP: 415fa1	 Bytes: 6
  %loadMem_415fa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415fa1 = call %struct.Memory* @routine_je_.L_4160a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415fa1, i8* %BRANCH_TAKEN, i64 258, i64 6, i64 6)
  store %struct.Memory* %call_415fa1, %struct.Memory** %MEMORY

  %loadBr_415fa1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_415fa1 = icmp eq i8 %loadBr_415fa1, 1
  br i1 %cmpBr_415fa1, label %block_.L_4160a3, label %block_415fa7

block_415fa7:
  ; Code: movslq -0x28(%rbp), %rax	 RIP: 415fa7	 Bytes: 4
  %loadMem_415fa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415fa7 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415fa7)
  store %struct.Memory* %call_415fa7, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rax,4), %edi	 RIP: 415fab	 Bytes: 7
  %loadMem_415fab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415fab = call %struct.Memory* @routine_movl_0x62dab0___rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415fab)
  store %struct.Memory* %call_415fab, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 415fb2	 Bytes: 5
  %loadMem1_415fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_415fb2 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_415fb2, i64 -86834, i64 5, i64 5)
  store %struct.Memory* %call1_415fb2, %struct.Memory** %MEMORY

  %loadMem2_415fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_415fb2 = load i64, i64* %3
  %call2_415fb2 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_415fb2, %struct.Memory* %loadMem2_415fb2)
  store %struct.Memory* %call2_415fb2, %struct.Memory** %MEMORY

  ; Code: addl $0xf, %eax	 RIP: 415fb7	 Bytes: 3
  %loadMem_415fb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415fb7 = call %struct.Memory* @routine_addl__0xf___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415fb7)
  store %struct.Memory* %call_415fb7, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 415fba	 Bytes: 4
  %loadMem_415fba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415fba = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415fba)
  store %struct.Memory* %call_415fba, %struct.Memory** %MEMORY

  ; Code: movslq 0x866540(,%rcx,4), %rcx	 RIP: 415fbe	 Bytes: 8
  %loadMem_415fbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415fbe = call %struct.Memory* @routine_movslq_0x866540___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415fbe)
  store %struct.Memory* %call_415fbe, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rcx,4), %edi	 RIP: 415fc6	 Bytes: 7
  %loadMem_415fc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415fc6 = call %struct.Memory* @routine_movl_0x62dab0___rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415fc6)
  store %struct.Memory* %call_415fc6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 415fcd	 Bytes: 3
  %loadMem_415fcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415fcd = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415fcd)
  store %struct.Memory* %call_415fcd, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 415fd0	 Bytes: 5
  %loadMem1_415fd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_415fd0 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_415fd0, i64 -86864, i64 5, i64 5)
  store %struct.Memory* %call1_415fd0, %struct.Memory** %MEMORY

  %loadMem2_415fd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_415fd0 = load i64, i64* %3
  %call2_415fd0 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_415fd0, %struct.Memory* %loadMem2_415fd0)
  store %struct.Memory* %call2_415fd0, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %edi	 RIP: 415fd5	 Bytes: 3
  %loadMem_415fd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415fd5 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415fd5)
  store %struct.Memory* %call_415fd5, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %edi	 RIP: 415fd8	 Bytes: 2
  %loadMem_415fd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415fd8 = call %struct.Memory* @routine_cmpl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415fd8)
  store %struct.Memory* %call_415fd8, %struct.Memory** %MEMORY

  ; Code: jl .L_41603e	 RIP: 415fda	 Bytes: 6
  %loadMem_415fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415fda = call %struct.Memory* @routine_jl_.L_41603e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415fda, i8* %BRANCH_TAKEN, i64 100, i64 6, i64 6)
  store %struct.Memory* %call_415fda, %struct.Memory** %MEMORY

  %loadBr_415fda = load i8, i8* %BRANCH_TAKEN
  %cmpBr_415fda = icmp eq i8 %loadBr_415fda, 1
  br i1 %cmpBr_415fda, label %block_.L_41603e, label %block_415fe0

block_415fe0:
  ; Code: movslq -0x28(%rbp), %rax	 RIP: 415fe0	 Bytes: 4
  %loadMem_415fe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415fe0 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415fe0)
  store %struct.Memory* %call_415fe0, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rax,4), %edi	 RIP: 415fe4	 Bytes: 7
  %loadMem_415fe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415fe4 = call %struct.Memory* @routine_movl_0x62dab0___rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415fe4)
  store %struct.Memory* %call_415fe4, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 415feb	 Bytes: 5
  %loadMem1_415feb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_415feb = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_415feb, i64 -86891, i64 5, i64 5)
  store %struct.Memory* %call1_415feb, %struct.Memory** %MEMORY

  %loadMem2_415feb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_415feb = load i64, i64* %3
  %call2_415feb = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_415feb, %struct.Memory* %loadMem2_415feb)
  store %struct.Memory* %call2_415feb, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 415ff0	 Bytes: 4
  %loadMem_415ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415ff0 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415ff0)
  store %struct.Memory* %call_415ff0, %struct.Memory** %MEMORY

  ; Code: movslq 0x866540(,%rcx,4), %rcx	 RIP: 415ff4	 Bytes: 8
  %loadMem_415ff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415ff4 = call %struct.Memory* @routine_movslq_0x866540___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415ff4)
  store %struct.Memory* %call_415ff4, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rcx,4), %edi	 RIP: 415ffc	 Bytes: 7
  %loadMem_415ffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_415ffc = call %struct.Memory* @routine_movl_0x62dab0___rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_415ffc)
  store %struct.Memory* %call_415ffc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40(%rbp)	 RIP: 416003	 Bytes: 3
  %loadMem_416003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416003 = call %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416003)
  store %struct.Memory* %call_416003, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 416006	 Bytes: 5
  %loadMem1_416006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_416006 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_416006, i64 -86918, i64 5, i64 5)
  store %struct.Memory* %call1_416006, %struct.Memory** %MEMORY

  %loadMem2_416006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416006 = load i64, i64* %3
  %call2_416006 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_416006, %struct.Memory* %loadMem2_416006)
  store %struct.Memory* %call2_416006, %struct.Memory** %MEMORY

  ; Code: sarl $0x4, %eax	 RIP: 41600b	 Bytes: 3
  %loadMem_41600b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41600b = call %struct.Memory* @routine_sarl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41600b)
  store %struct.Memory* %call_41600b, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %edi	 RIP: 41600e	 Bytes: 3
  %loadMem_41600e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41600e = call %struct.Memory* @routine_movl_MINUS0x40__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41600e)
  store %struct.Memory* %call_41600e, %struct.Memory** %MEMORY

  ; Code: subl %eax, %edi	 RIP: 416011	 Bytes: 2
  %loadMem_416011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416011 = call %struct.Memory* @routine_subl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416011)
  store %struct.Memory* %call_416011, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 416013	 Bytes: 4
  %loadMem_416013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416013 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416013)
  store %struct.Memory* %call_416013, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 416017	 Bytes: 4
  %loadMem_416017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416017 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416017)
  store %struct.Memory* %call_416017, %struct.Memory** %MEMORY

  ; Code: movl %edi, (%rcx,%rdx,4)	 RIP: 41601b	 Bytes: 3
  %loadMem_41601b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41601b = call %struct.Memory* @routine_movl__edi____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41601b)
  store %struct.Memory* %call_41601b, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 41601e	 Bytes: 4
  %loadMem_41601e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41601e = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41601e)
  store %struct.Memory* %call_41601e, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 416022	 Bytes: 4
  %loadMem_416022 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416022 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416022)
  store %struct.Memory* %call_416022, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %eax	 RIP: 416026	 Bytes: 3
  %loadMem_416026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416026 = call %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416026)
  store %struct.Memory* %call_416026, %struct.Memory** %MEMORY

  ; Code: addl $0x2faf080, %eax	 RIP: 416029	 Bytes: 5
  %loadMem_416029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416029 = call %struct.Memory* @routine_addl__0x2faf080___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416029)
  store %struct.Memory* %call_416029, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 41602e	 Bytes: 4
  %loadMem_41602e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41602e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41602e)
  store %struct.Memory* %call_41602e, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 416032	 Bytes: 4
  %loadMem_416032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416032 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416032)
  store %struct.Memory* %call_416032, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 416036	 Bytes: 3
  %loadMem_416036 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416036 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416036)
  store %struct.Memory* %call_416036, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41609e	 RIP: 416039	 Bytes: 5
  %loadMem_416039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416039 = call %struct.Memory* @routine_jmpq_.L_41609e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416039, i64 101, i64 5)
  store %struct.Memory* %call_416039, %struct.Memory** %MEMORY

  br label %block_.L_41609e

  ; Code: .L_41603e:	 RIP: 41603e	 Bytes: 0
block_.L_41603e:

  ; Code: movl $0x1, %eax	 RIP: 41603e	 Bytes: 5
  %loadMem_41603e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41603e = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41603e)
  store %struct.Memory* %call_41603e, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 416043	 Bytes: 2
  %loadMem_416043 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416043 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416043)
  store %struct.Memory* %call_416043, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 416045	 Bytes: 8
  %loadMem_416045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416045 = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416045)
  store %struct.Memory* %call_416045, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %eax	 RIP: 41604d	 Bytes: 3
  %loadMem_41604d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41604d = call %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41604d)
  store %struct.Memory* %call_41604d, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 416050	 Bytes: 3
  %loadMem_416050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416050 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416050)
  store %struct.Memory* %call_416050, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edx	 RIP: 416053	 Bytes: 3
  %loadMem_416053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416053 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416053)
  store %struct.Memory* %call_416053, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 416056	 Bytes: 2
  %loadMem_416056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416056 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416056)
  store %struct.Memory* %call_416056, %struct.Memory** %MEMORY

  ; Code: callq .see	 RIP: 416058	 Bytes: 5
  %loadMem1_416058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_416058 = call %struct.Memory* @routine_callq_.see(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_416058, i64 25864, i64 5, i64 5)
  store %struct.Memory* %call1_416058, %struct.Memory** %MEMORY

  %loadMem2_416058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416058 = load i64, i64* %3
  %call2_416058 = call %struct.Memory* @sub_41c560.see(%struct.State* %0, i64  %loadPC_416058, %struct.Memory* %loadMem2_416058)
  store %struct.Memory* %call2_416058, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 41605d	 Bytes: 3
  %loadMem_41605d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41605d = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41605d)
  store %struct.Memory* %call_41605d, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffffce, -0x38(%rbp)	 RIP: 416060	 Bytes: 4
  %loadMem_416060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416060 = call %struct.Memory* @routine_cmpl__0xffffffce__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416060)
  store %struct.Memory* %call_416060, %struct.Memory** %MEMORY

  ; Code: jl .L_416082	 RIP: 416064	 Bytes: 6
  %loadMem_416064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416064 = call %struct.Memory* @routine_jl_.L_416082(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416064, i8* %BRANCH_TAKEN, i64 30, i64 6, i64 6)
  store %struct.Memory* %call_416064, %struct.Memory** %MEMORY

  %loadBr_416064 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416064 = icmp eq i8 %loadBr_416064, 1
  br i1 %cmpBr_416064, label %block_.L_416082, label %block_41606a

block_41606a:
  ; Code: movl -0x38(%rbp), %eax	 RIP: 41606a	 Bytes: 3
  %loadMem_41606a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41606a = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41606a)
  store %struct.Memory* %call_41606a, %struct.Memory** %MEMORY

  ; Code: addl $0x2faf080, %eax	 RIP: 41606d	 Bytes: 5
  %loadMem_41606d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41606d = call %struct.Memory* @routine_addl__0x2faf080___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41606d)
  store %struct.Memory* %call_41606d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 416072	 Bytes: 4
  %loadMem_416072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416072 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416072)
  store %struct.Memory* %call_416072, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 416076	 Bytes: 4
  %loadMem_416076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416076 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416076)
  store %struct.Memory* %call_416076, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 41607a	 Bytes: 3
  %loadMem_41607a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41607a = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41607a)
  store %struct.Memory* %call_41607a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_416090	 RIP: 41607d	 Bytes: 5
  %loadMem_41607d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41607d = call %struct.Memory* @routine_jmpq_.L_416090(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41607d, i64 19, i64 5)
  store %struct.Memory* %call_41607d, %struct.Memory** %MEMORY

  br label %block_.L_416090

  ; Code: .L_416082:	 RIP: 416082	 Bytes: 0
block_.L_416082:

  ; Code: movl -0x38(%rbp), %eax	 RIP: 416082	 Bytes: 3
  %loadMem_416082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416082 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416082)
  store %struct.Memory* %call_416082, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 416085	 Bytes: 4
  %loadMem_416085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416085 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416085)
  store %struct.Memory* %call_416085, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 416089	 Bytes: 4
  %loadMem_416089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416089 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416089)
  store %struct.Memory* %call_416089, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 41608d	 Bytes: 3
  %loadMem_41608d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41608d = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41608d)
  store %struct.Memory* %call_41608d, %struct.Memory** %MEMORY

  ; Code: .L_416090:	 RIP: 416090	 Bytes: 0
  br label %block_.L_416090
block_.L_416090:

  ; Code: movl -0x38(%rbp), %eax	 RIP: 416090	 Bytes: 3
  %loadMem_416090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416090 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416090)
  store %struct.Memory* %call_416090, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 416093	 Bytes: 4
  %loadMem_416093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416093 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416093)
  store %struct.Memory* %call_416093, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 416097	 Bytes: 4
  %loadMem_416097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416097 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416097)
  store %struct.Memory* %call_416097, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 41609b	 Bytes: 3
  %loadMem_41609b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41609b = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41609b)
  store %struct.Memory* %call_41609b, %struct.Memory** %MEMORY

  ; Code: .L_41609e:	 RIP: 41609e	 Bytes: 0
  br label %block_.L_41609e
block_.L_41609e:

  ; Code: jmpq .L_4160b2	 RIP: 41609e	 Bytes: 5
  %loadMem_41609e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41609e = call %struct.Memory* @routine_jmpq_.L_4160b2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41609e, i64 20, i64 5)
  store %struct.Memory* %call_41609e, %struct.Memory** %MEMORY

  br label %block_.L_4160b2

  ; Code: .L_4160a3:	 RIP: 4160a3	 Bytes: 0
block_.L_4160a3:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4160a3	 Bytes: 4
  %loadMem_4160a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160a3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160a3)
  store %struct.Memory* %call_4160a3, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 4160a7	 Bytes: 4
  %loadMem_4160a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160a7 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160a7)
  store %struct.Memory* %call_4160a7, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 4160ab	 Bytes: 7
  %loadMem_4160ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160ab = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160ab)
  store %struct.Memory* %call_4160ab, %struct.Memory** %MEMORY

  ; Code: .L_4160b2:	 RIP: 4160b2	 Bytes: 0
  br label %block_.L_4160b2
block_.L_4160b2:

  ; Code: movq $0x63ae50, %rax	 RIP: 4160b2	 Bytes: 10
  %loadMem_4160b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160b2 = call %struct.Memory* @routine_movq__0x63ae50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160b2)
  store %struct.Memory* %call_4160b2, %struct.Memory** %MEMORY

  ; Code: addq $0x1c20, %rax	 RIP: 4160bc	 Bytes: 6
  %loadMem_4160bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160bc = call %struct.Memory* @routine_addq__0x1c20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160bc)
  store %struct.Memory* %call_4160bc, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %ecx	 RIP: 4160c2	 Bytes: 3
  %loadMem_4160c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160c2 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160c2)
  store %struct.Memory* %call_4160c2, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 4160c5	 Bytes: 8
  %loadMem_4160c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160c5 = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160c5)
  store %struct.Memory* %call_4160c5, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 4160cd	 Bytes: 4
  %loadMem_4160cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160cd = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160cd)
  store %struct.Memory* %call_4160cd, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4160d1	 Bytes: 3
  %loadMem_4160d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160d1 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160d1)
  store %struct.Memory* %call_4160d1, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax), %ecx	 RIP: 4160d4	 Bytes: 2
  %loadMem_4160d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160d4 = call %struct.Memory* @routine_cmpl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160d4)
  store %struct.Memory* %call_4160d4, %struct.Memory** %MEMORY

  ; Code: jne .L_41620d	 RIP: 4160d6	 Bytes: 6
  %loadMem_4160d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160d6 = call %struct.Memory* @routine_jne_.L_41620d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160d6, i8* %BRANCH_TAKEN, i64 311, i64 6, i64 6)
  store %struct.Memory* %call_4160d6, %struct.Memory** %MEMORY

  %loadBr_4160d6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4160d6 = icmp eq i8 %loadBr_4160d6, 1
  br i1 %cmpBr_4160d6, label %block_.L_41620d, label %block_4160dc

block_4160dc:
  ; Code: movq $0x63ae50, %rax	 RIP: 4160dc	 Bytes: 10
  %loadMem_4160dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160dc = call %struct.Memory* @routine_movq__0x63ae50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160dc)
  store %struct.Memory* %call_4160dc, %struct.Memory** %MEMORY

  ; Code: addq $0x1c20, %rax	 RIP: 4160e6	 Bytes: 6
  %loadMem_4160e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160e6 = call %struct.Memory* @routine_addq__0x1c20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160e6)
  store %struct.Memory* %call_4160e6, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 4160ec	 Bytes: 3
  %loadMem_4160ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160ec = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160ec)
  store %struct.Memory* %call_4160ec, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 4160ef	 Bytes: 8
  %loadMem_4160ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160ef = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160ef)
  store %struct.Memory* %call_4160ef, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 4160f7	 Bytes: 4
  %loadMem_4160f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160f7 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160f7)
  store %struct.Memory* %call_4160f7, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4160fb	 Bytes: 3
  %loadMem_4160fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160fb = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160fb)
  store %struct.Memory* %call_4160fb, %struct.Memory** %MEMORY

  ; Code: cmpl 0x4(%rax), %ecx	 RIP: 4160fe	 Bytes: 3
  %loadMem_4160fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4160fe = call %struct.Memory* @routine_cmpl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4160fe)
  store %struct.Memory* %call_4160fe, %struct.Memory** %MEMORY

  ; Code: jne .L_41620d	 RIP: 416101	 Bytes: 6
  %loadMem_416101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416101 = call %struct.Memory* @routine_jne_.L_41620d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416101, i8* %BRANCH_TAKEN, i64 268, i64 6, i64 6)
  store %struct.Memory* %call_416101, %struct.Memory** %MEMORY

  %loadBr_416101 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416101 = icmp eq i8 %loadBr_416101, 1
  br i1 %cmpBr_416101, label %block_.L_41620d, label %block_416107

block_416107:
  ; Code: movq $0x63ae50, %rax	 RIP: 416107	 Bytes: 10
  %loadMem_416107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416107 = call %struct.Memory* @routine_movq__0x63ae50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416107)
  store %struct.Memory* %call_416107, %struct.Memory** %MEMORY

  ; Code: addq $0x1c20, %rax	 RIP: 416111	 Bytes: 6
  %loadMem_416111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416111 = call %struct.Memory* @routine_addq__0x1c20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416111)
  store %struct.Memory* %call_416111, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 416117	 Bytes: 3
  %loadMem_416117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416117 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416117)
  store %struct.Memory* %call_416117, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 41611a	 Bytes: 8
  %loadMem_41611a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41611a = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41611a)
  store %struct.Memory* %call_41611a, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 416122	 Bytes: 4
  %loadMem_416122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416122 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416122)
  store %struct.Memory* %call_416122, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 416126	 Bytes: 3
  %loadMem_416126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416126 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416126)
  store %struct.Memory* %call_416126, %struct.Memory** %MEMORY

  ; Code: cmpl 0xc(%rax), %ecx	 RIP: 416129	 Bytes: 3
  %loadMem_416129 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416129 = call %struct.Memory* @routine_cmpl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416129)
  store %struct.Memory* %call_416129, %struct.Memory** %MEMORY

  ; Code: jne .L_41620d	 RIP: 41612c	 Bytes: 6
  %loadMem_41612c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41612c = call %struct.Memory* @routine_jne_.L_41620d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41612c, i8* %BRANCH_TAKEN, i64 225, i64 6, i64 6)
  store %struct.Memory* %call_41612c, %struct.Memory** %MEMORY

  %loadBr_41612c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41612c = icmp eq i8 %loadBr_41612c, 1
  br i1 %cmpBr_41612c, label %block_.L_41620d, label %block_416132

block_416132:
  ; Code: movl $0x1, 0x639110	 RIP: 416132	 Bytes: 11
  %loadMem_416132 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416132 = call %struct.Memory* @routine_movl__0x1__0x639110(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416132)
  store %struct.Memory* %call_416132, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 41613d	 Bytes: 4
  %loadMem_41613d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41613d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41613d)
  store %struct.Memory* %call_41613d, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 416141	 Bytes: 4
  %loadMem_416141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416141 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416141)
  store %struct.Memory* %call_416141, %struct.Memory** %MEMORY

  ; Code: movl $0x5f5e100, (%rax,%rcx,4)	 RIP: 416145	 Bytes: 7
  %loadMem_416145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416145 = call %struct.Memory* @routine_movl__0x5f5e100____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416145)
  store %struct.Memory* %call_416145, %struct.Memory** %MEMORY

  ; Code: cmpl $0xd, -0x28(%rbp)	 RIP: 41614c	 Bytes: 4
  %loadMem_41614c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41614c = call %struct.Memory* @routine_cmpl__0xd__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41614c)
  store %struct.Memory* %call_41614c, %struct.Memory** %MEMORY

  ; Code: je .L_416208	 RIP: 416150	 Bytes: 6
  %loadMem_416150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416150 = call %struct.Memory* @routine_je_.L_416208(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416150, i8* %BRANCH_TAKEN, i64 184, i64 6, i64 6)
  store %struct.Memory* %call_416150, %struct.Memory** %MEMORY

  %loadBr_416150 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416150 = icmp eq i8 %loadBr_416150, 1
  br i1 %cmpBr_416150, label %block_.L_416208, label %block_416156

block_416156:
  ; Code: movslq -0x28(%rbp), %rax	 RIP: 416156	 Bytes: 4
  %loadMem_416156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416156 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416156)
  store %struct.Memory* %call_416156, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rax,4), %edi	 RIP: 41615a	 Bytes: 7
  %loadMem_41615a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41615a = call %struct.Memory* @routine_movl_0x62dab0___rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41615a)
  store %struct.Memory* %call_41615a, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 416161	 Bytes: 5
  %loadMem1_416161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_416161 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_416161, i64 -87265, i64 5, i64 5)
  store %struct.Memory* %call1_416161, %struct.Memory** %MEMORY

  %loadMem2_416161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416161 = load i64, i64* %3
  %call2_416161 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_416161, %struct.Memory* %loadMem2_416161)
  store %struct.Memory* %call2_416161, %struct.Memory** %MEMORY

  ; Code: addl $0xf, %eax	 RIP: 416166	 Bytes: 3
  %loadMem_416166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416166 = call %struct.Memory* @routine_addl__0xf___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416166)
  store %struct.Memory* %call_416166, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 416169	 Bytes: 4
  %loadMem_416169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416169 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416169)
  store %struct.Memory* %call_416169, %struct.Memory** %MEMORY

  ; Code: movslq 0x866540(,%rcx,4), %rcx	 RIP: 41616d	 Bytes: 8
  %loadMem_41616d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41616d = call %struct.Memory* @routine_movslq_0x866540___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41616d)
  store %struct.Memory* %call_41616d, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rcx,4), %edi	 RIP: 416175	 Bytes: 7
  %loadMem_416175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416175 = call %struct.Memory* @routine_movl_0x62dab0___rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416175)
  store %struct.Memory* %call_416175, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x44(%rbp)	 RIP: 41617c	 Bytes: 3
  %loadMem_41617c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41617c = call %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41617c)
  store %struct.Memory* %call_41617c, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 41617f	 Bytes: 5
  %loadMem1_41617f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41617f = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41617f, i64 -87295, i64 5, i64 5)
  store %struct.Memory* %call1_41617f, %struct.Memory** %MEMORY

  %loadMem2_41617f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41617f = load i64, i64* %3
  %call2_41617f = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_41617f, %struct.Memory* %loadMem2_41617f)
  store %struct.Memory* %call2_41617f, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %edi	 RIP: 416184	 Bytes: 3
  %loadMem_416184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416184 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416184)
  store %struct.Memory* %call_416184, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %edi	 RIP: 416187	 Bytes: 2
  %loadMem_416187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416187 = call %struct.Memory* @routine_cmpl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416187)
  store %struct.Memory* %call_416187, %struct.Memory** %MEMORY

  ; Code: jl .L_4161d2	 RIP: 416189	 Bytes: 6
  %loadMem_416189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416189 = call %struct.Memory* @routine_jl_.L_4161d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416189, i8* %BRANCH_TAKEN, i64 73, i64 6, i64 6)
  store %struct.Memory* %call_416189, %struct.Memory** %MEMORY

  %loadBr_416189 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416189 = icmp eq i8 %loadBr_416189, 1
  br i1 %cmpBr_416189, label %block_.L_4161d2, label %block_41618f

block_41618f:
  ; Code: movslq -0x28(%rbp), %rax	 RIP: 41618f	 Bytes: 4
  %loadMem_41618f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41618f = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41618f)
  store %struct.Memory* %call_41618f, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rax,4), %edi	 RIP: 416193	 Bytes: 7
  %loadMem_416193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416193 = call %struct.Memory* @routine_movl_0x62dab0___rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416193)
  store %struct.Memory* %call_416193, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 41619a	 Bytes: 5
  %loadMem1_41619a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41619a = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41619a, i64 -87322, i64 5, i64 5)
  store %struct.Memory* %call1_41619a, %struct.Memory** %MEMORY

  %loadMem2_41619a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41619a = load i64, i64* %3
  %call2_41619a = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_41619a, %struct.Memory* %loadMem2_41619a)
  store %struct.Memory* %call2_41619a, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 41619f	 Bytes: 4
  %loadMem_41619f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41619f = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41619f)
  store %struct.Memory* %call_41619f, %struct.Memory** %MEMORY

  ; Code: movslq 0x866540(,%rcx,4), %rcx	 RIP: 4161a3	 Bytes: 8
  %loadMem_4161a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161a3 = call %struct.Memory* @routine_movslq_0x866540___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161a3)
  store %struct.Memory* %call_4161a3, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rcx,4), %edi	 RIP: 4161ab	 Bytes: 7
  %loadMem_4161ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161ab = call %struct.Memory* @routine_movl_0x62dab0___rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161ab)
  store %struct.Memory* %call_4161ab, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 4161b2	 Bytes: 3
  %loadMem_4161b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161b2 = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161b2)
  store %struct.Memory* %call_4161b2, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 4161b5	 Bytes: 5
  %loadMem1_4161b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4161b5 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4161b5, i64 -87349, i64 5, i64 5)
  store %struct.Memory* %call1_4161b5, %struct.Memory** %MEMORY

  %loadMem2_4161b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4161b5 = load i64, i64* %3
  %call2_4161b5 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_4161b5, %struct.Memory* %loadMem2_4161b5)
  store %struct.Memory* %call2_4161b5, %struct.Memory** %MEMORY

  ; Code: sarl $0x4, %eax	 RIP: 4161ba	 Bytes: 3
  %loadMem_4161ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161ba = call %struct.Memory* @routine_sarl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161ba)
  store %struct.Memory* %call_4161ba, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %edi	 RIP: 4161bd	 Bytes: 3
  %loadMem_4161bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161bd = call %struct.Memory* @routine_movl_MINUS0x48__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161bd)
  store %struct.Memory* %call_4161bd, %struct.Memory** %MEMORY

  ; Code: subl %eax, %edi	 RIP: 4161c0	 Bytes: 2
  %loadMem_4161c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161c0 = call %struct.Memory* @routine_subl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161c0)
  store %struct.Memory* %call_4161c0, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4161c2	 Bytes: 4
  %loadMem_4161c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161c2 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161c2)
  store %struct.Memory* %call_4161c2, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 4161c6	 Bytes: 4
  %loadMem_4161c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161c6 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161c6)
  store %struct.Memory* %call_4161c6, %struct.Memory** %MEMORY

  ; Code: movl %edi, (%rcx,%rdx,4)	 RIP: 4161ca	 Bytes: 3
  %loadMem_4161ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161ca = call %struct.Memory* @routine_movl__edi____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161ca)
  store %struct.Memory* %call_4161ca, %struct.Memory** %MEMORY

  ; Code: jmpq .L_416203	 RIP: 4161cd	 Bytes: 5
  %loadMem_4161cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161cd = call %struct.Memory* @routine_jmpq_.L_416203(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161cd, i64 54, i64 5)
  store %struct.Memory* %call_4161cd, %struct.Memory** %MEMORY

  br label %block_.L_416203

  ; Code: .L_4161d2:	 RIP: 4161d2	 Bytes: 0
block_.L_4161d2:

  ; Code: movl $0x1, %eax	 RIP: 4161d2	 Bytes: 5
  %loadMem_4161d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161d2 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161d2)
  store %struct.Memory* %call_4161d2, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 4161d7	 Bytes: 2
  %loadMem_4161d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161d7 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161d7)
  store %struct.Memory* %call_4161d7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 4161d9	 Bytes: 8
  %loadMem_4161d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161d9 = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161d9)
  store %struct.Memory* %call_4161d9, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %eax	 RIP: 4161e1	 Bytes: 3
  %loadMem_4161e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161e1 = call %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161e1)
  store %struct.Memory* %call_4161e1, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 4161e4	 Bytes: 3
  %loadMem_4161e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161e4 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161e4)
  store %struct.Memory* %call_4161e4, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edx	 RIP: 4161e7	 Bytes: 3
  %loadMem_4161e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161e7 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161e7)
  store %struct.Memory* %call_4161e7, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 4161ea	 Bytes: 2
  %loadMem_4161ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161ea = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161ea)
  store %struct.Memory* %call_4161ea, %struct.Memory** %MEMORY

  ; Code: callq .see	 RIP: 4161ec	 Bytes: 5
  %loadMem1_4161ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4161ec = call %struct.Memory* @routine_callq_.see(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4161ec, i64 25460, i64 5, i64 5)
  store %struct.Memory* %call1_4161ec, %struct.Memory** %MEMORY

  %loadMem2_4161ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4161ec = load i64, i64* %3
  %call2_4161ec = call %struct.Memory* @sub_41c560.see(%struct.State* %0, i64  %loadPC_4161ec, %struct.Memory* %loadMem2_4161ec)
  store %struct.Memory* %call2_4161ec, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 4161f1	 Bytes: 3
  %loadMem_4161f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161f1 = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161f1)
  store %struct.Memory* %call_4161f1, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %eax	 RIP: 4161f4	 Bytes: 3
  %loadMem_4161f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161f4 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161f4)
  store %struct.Memory* %call_4161f4, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %r8	 RIP: 4161f7	 Bytes: 4
  %loadMem_4161f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161f7 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161f7)
  store %struct.Memory* %call_4161f7, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %r9	 RIP: 4161fb	 Bytes: 4
  %loadMem_4161fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161fb = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161fb)
  store %struct.Memory* %call_4161fb, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%r8,%r9,4)	 RIP: 4161ff	 Bytes: 4
  %loadMem_4161ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4161ff = call %struct.Memory* @routine_movl__eax____r8__r9_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4161ff)
  store %struct.Memory* %call_4161ff, %struct.Memory** %MEMORY

  ; Code: .L_416203:	 RIP: 416203	 Bytes: 0
  br label %block_.L_416203
block_.L_416203:

  ; Code: jmpq .L_416208	 RIP: 416203	 Bytes: 5
  %loadMem_416203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416203 = call %struct.Memory* @routine_jmpq_.L_416208(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416203, i64 5, i64 5)
  store %struct.Memory* %call_416203, %struct.Memory** %MEMORY

  br label %block_.L_416208

  ; Code: .L_416208:	 RIP: 416208	 Bytes: 0
block_.L_416208:

  ; Code: jmpq .L_41670f	 RIP: 416208	 Bytes: 5
  %loadMem_416208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416208 = call %struct.Memory* @routine_jmpq_.L_41670f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416208, i64 1287, i64 5)
  store %struct.Memory* %call_416208, %struct.Memory** %MEMORY

  br label %block_.L_41670f

  ; Code: .L_41620d:	 RIP: 41620d	 Bytes: 0
block_.L_41620d:

  ; Code: cmpl $0xffffffff, -0x20(%rbp)	 RIP: 41620d	 Bytes: 4
  %loadMem_41620d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41620d = call %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41620d)
  store %struct.Memory* %call_41620d, %struct.Memory** %MEMORY

  ; Code: je .L_4162fd	 RIP: 416211	 Bytes: 6
  %loadMem_416211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416211 = call %struct.Memory* @routine_je_.L_4162fd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416211, i8* %BRANCH_TAKEN, i64 236, i64 6, i64 6)
  store %struct.Memory* %call_416211, %struct.Memory** %MEMORY

  %loadBr_416211 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416211 = icmp eq i8 %loadBr_416211, 1
  br i1 %cmpBr_416211, label %block_.L_4162fd, label %block_416217

block_416217:
  ; Code: cmpl $0xfffffffe, -0x20(%rbp)	 RIP: 416217	 Bytes: 4
  %loadMem_416217 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416217 = call %struct.Memory* @routine_cmpl__0xfffffffe__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416217)
  store %struct.Memory* %call_416217, %struct.Memory** %MEMORY

  ; Code: je .L_4162fd	 RIP: 41621b	 Bytes: 6
  %loadMem_41621b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41621b = call %struct.Memory* @routine_je_.L_4162fd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41621b, i8* %BRANCH_TAKEN, i64 226, i64 6, i64 6)
  store %struct.Memory* %call_41621b, %struct.Memory** %MEMORY

  %loadBr_41621b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41621b = icmp eq i8 %loadBr_41621b, 1
  br i1 %cmpBr_41621b, label %block_.L_4162fd, label %block_416221

block_416221:
  ; Code: movl -0x2c(%rbp), %eax	 RIP: 416221	 Bytes: 3
  %loadMem_416221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416221 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416221)
  store %struct.Memory* %call_416221, %struct.Memory** %MEMORY

  ; Code: cmpl -0x20(%rbp), %eax	 RIP: 416224	 Bytes: 3
  %loadMem_416224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416224 = call %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416224)
  store %struct.Memory* %call_416224, %struct.Memory** %MEMORY

  ; Code: jne .L_4162fd	 RIP: 416227	 Bytes: 6
  %loadMem_416227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416227 = call %struct.Memory* @routine_jne_.L_4162fd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416227, i8* %BRANCH_TAKEN, i64 214, i64 6, i64 6)
  store %struct.Memory* %call_416227, %struct.Memory** %MEMORY

  %loadBr_416227 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416227 = icmp eq i8 %loadBr_416227, 1
  br i1 %cmpBr_416227, label %block_.L_4162fd, label %block_41622d

block_41622d:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 41622d	 Bytes: 4
  %loadMem_41622d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41622d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41622d)
  store %struct.Memory* %call_41622d, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 416231	 Bytes: 4
  %loadMem_416231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416231 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416231)
  store %struct.Memory* %call_416231, %struct.Memory** %MEMORY

  ; Code: movl $0x5f5e100, (%rax,%rcx,4)	 RIP: 416235	 Bytes: 7
  %loadMem_416235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416235 = call %struct.Memory* @routine_movl__0x5f5e100____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416235)
  store %struct.Memory* %call_416235, %struct.Memory** %MEMORY

  ; Code: cmpl $0xd, -0x28(%rbp)	 RIP: 41623c	 Bytes: 4
  %loadMem_41623c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41623c = call %struct.Memory* @routine_cmpl__0xd__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41623c)
  store %struct.Memory* %call_41623c, %struct.Memory** %MEMORY

  ; Code: je .L_4162f8	 RIP: 416240	 Bytes: 6
  %loadMem_416240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416240 = call %struct.Memory* @routine_je_.L_4162f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416240, i8* %BRANCH_TAKEN, i64 184, i64 6, i64 6)
  store %struct.Memory* %call_416240, %struct.Memory** %MEMORY

  %loadBr_416240 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416240 = icmp eq i8 %loadBr_416240, 1
  br i1 %cmpBr_416240, label %block_.L_4162f8, label %block_416246

block_416246:
  ; Code: movslq -0x28(%rbp), %rax	 RIP: 416246	 Bytes: 4
  %loadMem_416246 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416246 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416246)
  store %struct.Memory* %call_416246, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rax,4), %edi	 RIP: 41624a	 Bytes: 7
  %loadMem_41624a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41624a = call %struct.Memory* @routine_movl_0x62dab0___rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41624a)
  store %struct.Memory* %call_41624a, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 416251	 Bytes: 5
  %loadMem1_416251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_416251 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_416251, i64 -87505, i64 5, i64 5)
  store %struct.Memory* %call1_416251, %struct.Memory** %MEMORY

  %loadMem2_416251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416251 = load i64, i64* %3
  %call2_416251 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_416251, %struct.Memory* %loadMem2_416251)
  store %struct.Memory* %call2_416251, %struct.Memory** %MEMORY

  ; Code: addl $0xf, %eax	 RIP: 416256	 Bytes: 3
  %loadMem_416256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416256 = call %struct.Memory* @routine_addl__0xf___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416256)
  store %struct.Memory* %call_416256, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 416259	 Bytes: 4
  %loadMem_416259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416259 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416259)
  store %struct.Memory* %call_416259, %struct.Memory** %MEMORY

  ; Code: movslq 0x866540(,%rcx,4), %rcx	 RIP: 41625d	 Bytes: 8
  %loadMem_41625d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41625d = call %struct.Memory* @routine_movslq_0x866540___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41625d)
  store %struct.Memory* %call_41625d, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rcx,4), %edi	 RIP: 416265	 Bytes: 7
  %loadMem_416265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416265 = call %struct.Memory* @routine_movl_0x62dab0___rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416265)
  store %struct.Memory* %call_416265, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 41626c	 Bytes: 3
  %loadMem_41626c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41626c = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41626c)
  store %struct.Memory* %call_41626c, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 41626f	 Bytes: 5
  %loadMem1_41626f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41626f = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41626f, i64 -87535, i64 5, i64 5)
  store %struct.Memory* %call1_41626f, %struct.Memory** %MEMORY

  %loadMem2_41626f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41626f = load i64, i64* %3
  %call2_41626f = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_41626f, %struct.Memory* %loadMem2_41626f)
  store %struct.Memory* %call2_41626f, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edi	 RIP: 416274	 Bytes: 3
  %loadMem_416274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416274 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416274)
  store %struct.Memory* %call_416274, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %edi	 RIP: 416277	 Bytes: 2
  %loadMem_416277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416277 = call %struct.Memory* @routine_cmpl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416277)
  store %struct.Memory* %call_416277, %struct.Memory** %MEMORY

  ; Code: jl .L_4162c2	 RIP: 416279	 Bytes: 6
  %loadMem_416279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416279 = call %struct.Memory* @routine_jl_.L_4162c2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416279, i8* %BRANCH_TAKEN, i64 73, i64 6, i64 6)
  store %struct.Memory* %call_416279, %struct.Memory** %MEMORY

  %loadBr_416279 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416279 = icmp eq i8 %loadBr_416279, 1
  br i1 %cmpBr_416279, label %block_.L_4162c2, label %block_41627f

block_41627f:
  ; Code: movslq -0x28(%rbp), %rax	 RIP: 41627f	 Bytes: 4
  %loadMem_41627f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41627f = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41627f)
  store %struct.Memory* %call_41627f, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rax,4), %edi	 RIP: 416283	 Bytes: 7
  %loadMem_416283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416283 = call %struct.Memory* @routine_movl_0x62dab0___rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416283)
  store %struct.Memory* %call_416283, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 41628a	 Bytes: 5
  %loadMem1_41628a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41628a = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41628a, i64 -87562, i64 5, i64 5)
  store %struct.Memory* %call1_41628a, %struct.Memory** %MEMORY

  %loadMem2_41628a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41628a = load i64, i64* %3
  %call2_41628a = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_41628a, %struct.Memory* %loadMem2_41628a)
  store %struct.Memory* %call2_41628a, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 41628f	 Bytes: 4
  %loadMem_41628f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41628f = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41628f)
  store %struct.Memory* %call_41628f, %struct.Memory** %MEMORY

  ; Code: movslq 0x866540(,%rcx,4), %rcx	 RIP: 416293	 Bytes: 8
  %loadMem_416293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416293 = call %struct.Memory* @routine_movslq_0x866540___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416293)
  store %struct.Memory* %call_416293, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rcx,4), %edi	 RIP: 41629b	 Bytes: 7
  %loadMem_41629b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41629b = call %struct.Memory* @routine_movl_0x62dab0___rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41629b)
  store %struct.Memory* %call_41629b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 4162a2	 Bytes: 3
  %loadMem_4162a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162a2 = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162a2)
  store %struct.Memory* %call_4162a2, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 4162a5	 Bytes: 5
  %loadMem1_4162a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4162a5 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4162a5, i64 -87589, i64 5, i64 5)
  store %struct.Memory* %call1_4162a5, %struct.Memory** %MEMORY

  %loadMem2_4162a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4162a5 = load i64, i64* %3
  %call2_4162a5 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_4162a5, %struct.Memory* %loadMem2_4162a5)
  store %struct.Memory* %call2_4162a5, %struct.Memory** %MEMORY

  ; Code: sarl $0x4, %eax	 RIP: 4162aa	 Bytes: 3
  %loadMem_4162aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162aa = call %struct.Memory* @routine_sarl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162aa)
  store %struct.Memory* %call_4162aa, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %edi	 RIP: 4162ad	 Bytes: 3
  %loadMem_4162ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162ad = call %struct.Memory* @routine_movl_MINUS0x50__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162ad)
  store %struct.Memory* %call_4162ad, %struct.Memory** %MEMORY

  ; Code: subl %eax, %edi	 RIP: 4162b0	 Bytes: 2
  %loadMem_4162b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162b0 = call %struct.Memory* @routine_subl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162b0)
  store %struct.Memory* %call_4162b0, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4162b2	 Bytes: 4
  %loadMem_4162b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162b2 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162b2)
  store %struct.Memory* %call_4162b2, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 4162b6	 Bytes: 4
  %loadMem_4162b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162b6 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162b6)
  store %struct.Memory* %call_4162b6, %struct.Memory** %MEMORY

  ; Code: movl %edi, (%rcx,%rdx,4)	 RIP: 4162ba	 Bytes: 3
  %loadMem_4162ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162ba = call %struct.Memory* @routine_movl__edi____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162ba)
  store %struct.Memory* %call_4162ba, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4162f3	 RIP: 4162bd	 Bytes: 5
  %loadMem_4162bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162bd = call %struct.Memory* @routine_jmpq_.L_4162f3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162bd, i64 54, i64 5)
  store %struct.Memory* %call_4162bd, %struct.Memory** %MEMORY

  br label %block_.L_4162f3

  ; Code: .L_4162c2:	 RIP: 4162c2	 Bytes: 0
block_.L_4162c2:

  ; Code: movl $0x1, %eax	 RIP: 4162c2	 Bytes: 5
  %loadMem_4162c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162c2 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162c2)
  store %struct.Memory* %call_4162c2, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 4162c7	 Bytes: 2
  %loadMem_4162c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162c7 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162c7)
  store %struct.Memory* %call_4162c7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 4162c9	 Bytes: 8
  %loadMem_4162c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162c9 = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162c9)
  store %struct.Memory* %call_4162c9, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %eax	 RIP: 4162d1	 Bytes: 3
  %loadMem_4162d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162d1 = call %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162d1)
  store %struct.Memory* %call_4162d1, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 4162d4	 Bytes: 3
  %loadMem_4162d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162d4 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162d4)
  store %struct.Memory* %call_4162d4, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edx	 RIP: 4162d7	 Bytes: 3
  %loadMem_4162d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162d7 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162d7)
  store %struct.Memory* %call_4162d7, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 4162da	 Bytes: 2
  %loadMem_4162da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162da = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162da)
  store %struct.Memory* %call_4162da, %struct.Memory** %MEMORY

  ; Code: callq .see	 RIP: 4162dc	 Bytes: 5
  %loadMem1_4162dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4162dc = call %struct.Memory* @routine_callq_.see(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4162dc, i64 25220, i64 5, i64 5)
  store %struct.Memory* %call1_4162dc, %struct.Memory** %MEMORY

  %loadMem2_4162dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4162dc = load i64, i64* %3
  %call2_4162dc = call %struct.Memory* @sub_41c560.see(%struct.State* %0, i64  %loadPC_4162dc, %struct.Memory* %loadMem2_4162dc)
  store %struct.Memory* %call2_4162dc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 4162e1	 Bytes: 3
  %loadMem_4162e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162e1 = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162e1)
  store %struct.Memory* %call_4162e1, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %eax	 RIP: 4162e4	 Bytes: 3
  %loadMem_4162e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162e4 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162e4)
  store %struct.Memory* %call_4162e4, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %r8	 RIP: 4162e7	 Bytes: 4
  %loadMem_4162e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162e7 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162e7)
  store %struct.Memory* %call_4162e7, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %r9	 RIP: 4162eb	 Bytes: 4
  %loadMem_4162eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162eb = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162eb)
  store %struct.Memory* %call_4162eb, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%r8,%r9,4)	 RIP: 4162ef	 Bytes: 4
  %loadMem_4162ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162ef = call %struct.Memory* @routine_movl__eax____r8__r9_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162ef)
  store %struct.Memory* %call_4162ef, %struct.Memory** %MEMORY

  ; Code: .L_4162f3:	 RIP: 4162f3	 Bytes: 0
  br label %block_.L_4162f3
block_.L_4162f3:

  ; Code: jmpq .L_4162f8	 RIP: 4162f3	 Bytes: 5
  %loadMem_4162f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162f3 = call %struct.Memory* @routine_jmpq_.L_4162f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162f3, i64 5, i64 5)
  store %struct.Memory* %call_4162f3, %struct.Memory** %MEMORY

  br label %block_.L_4162f8

  ; Code: .L_4162f8:	 RIP: 4162f8	 Bytes: 0
block_.L_4162f8:

  ; Code: jmpq .L_41670a	 RIP: 4162f8	 Bytes: 5
  %loadMem_4162f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162f8 = call %struct.Memory* @routine_jmpq_.L_41670a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162f8, i64 1042, i64 5)
  store %struct.Memory* %call_4162f8, %struct.Memory** %MEMORY

  br label %block_.L_41670a

  ; Code: .L_4162fd:	 RIP: 4162fd	 Bytes: 0
block_.L_4162fd:

  ; Code: cmpl $0xfffffffe, -0x20(%rbp)	 RIP: 4162fd	 Bytes: 4
  %loadMem_4162fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4162fd = call %struct.Memory* @routine_cmpl__0xfffffffe__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4162fd)
  store %struct.Memory* %call_4162fd, %struct.Memory** %MEMORY

  ; Code: jne .L_41649e	 RIP: 416301	 Bytes: 6
  %loadMem_416301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416301 = call %struct.Memory* @routine_jne_.L_41649e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416301, i8* %BRANCH_TAKEN, i64 413, i64 6, i64 6)
  store %struct.Memory* %call_416301, %struct.Memory** %MEMORY

  %loadBr_416301 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416301 = icmp eq i8 %loadBr_416301, 1
  br i1 %cmpBr_416301, label %block_.L_41649e, label %block_416307

block_416307:
  ; Code: movq $0x63ae50, %rax	 RIP: 416307	 Bytes: 10
  %loadMem_416307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416307 = call %struct.Memory* @routine_movq__0x63ae50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416307)
  store %struct.Memory* %call_416307, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %ecx	 RIP: 416311	 Bytes: 3
  %loadMem_416311 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416311 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416311)
  store %struct.Memory* %call_416311, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %edx	 RIP: 416314	 Bytes: 7
  %loadMem_416314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416314 = call %struct.Memory* @routine_movl_0x886bc0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416314)
  store %struct.Memory* %call_416314, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 41631b	 Bytes: 3
  %loadMem_41631b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41631b = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41631b)
  store %struct.Memory* %call_41631b, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 41631e	 Bytes: 3
  %loadMem_41631e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41631e = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41631e)
  store %struct.Memory* %call_41631e, %struct.Memory** %MEMORY

  ; Code: imulq $0x1c20, %rsi, %rsi	 RIP: 416321	 Bytes: 7
  %loadMem_416321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416321 = call %struct.Memory* @routine_imulq__0x1c20___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416321)
  store %struct.Memory* %call_416321, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rax	 RIP: 416328	 Bytes: 3
  %loadMem_416328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416328 = call %struct.Memory* @routine_addq__rsi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416328)
  store %struct.Memory* %call_416328, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %edx	 RIP: 41632b	 Bytes: 7
  %loadMem_41632b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41632b = call %struct.Memory* @routine_movl_0x886bc0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41632b)
  store %struct.Memory* %call_41632b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 416332	 Bytes: 3
  %loadMem_416332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416332 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416332)
  store %struct.Memory* %call_416332, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 416335	 Bytes: 3
  %loadMem_416335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416335 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416335)
  store %struct.Memory* %call_416335, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rsi, %rsi	 RIP: 416338	 Bytes: 4
  %loadMem_416338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416338 = call %struct.Memory* @routine_imulq__0x18___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416338)
  store %struct.Memory* %call_416338, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rax	 RIP: 41633c	 Bytes: 3
  %loadMem_41633c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41633c = call %struct.Memory* @routine_addq__rsi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41633c)
  store %struct.Memory* %call_41633c, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax), %ecx	 RIP: 41633f	 Bytes: 2
  %loadMem_41633f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41633f = call %struct.Memory* @routine_cmpl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41633f)
  store %struct.Memory* %call_41633f, %struct.Memory** %MEMORY

  ; Code: jne .L_416499	 RIP: 416341	 Bytes: 6
  %loadMem_416341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416341 = call %struct.Memory* @routine_jne_.L_416499(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416341, i8* %BRANCH_TAKEN, i64 344, i64 6, i64 6)
  store %struct.Memory* %call_416341, %struct.Memory** %MEMORY

  %loadBr_416341 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416341 = icmp eq i8 %loadBr_416341, 1
  br i1 %cmpBr_416341, label %block_.L_416499, label %block_416347

block_416347:
  ; Code: movq $0x63ae50, %rax	 RIP: 416347	 Bytes: 10
  %loadMem_416347 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416347 = call %struct.Memory* @routine_movq__0x63ae50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416347)
  store %struct.Memory* %call_416347, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 416351	 Bytes: 3
  %loadMem_416351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416351 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416351)
  store %struct.Memory* %call_416351, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %edx	 RIP: 416354	 Bytes: 7
  %loadMem_416354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416354 = call %struct.Memory* @routine_movl_0x886bc0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416354)
  store %struct.Memory* %call_416354, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 41635b	 Bytes: 3
  %loadMem_41635b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41635b = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41635b)
  store %struct.Memory* %call_41635b, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 41635e	 Bytes: 3
  %loadMem_41635e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41635e = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41635e)
  store %struct.Memory* %call_41635e, %struct.Memory** %MEMORY

  ; Code: imulq $0x1c20, %rsi, %rsi	 RIP: 416361	 Bytes: 7
  %loadMem_416361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416361 = call %struct.Memory* @routine_imulq__0x1c20___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416361)
  store %struct.Memory* %call_416361, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rax	 RIP: 416368	 Bytes: 3
  %loadMem_416368 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416368 = call %struct.Memory* @routine_addq__rsi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416368)
  store %struct.Memory* %call_416368, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %edx	 RIP: 41636b	 Bytes: 7
  %loadMem_41636b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41636b = call %struct.Memory* @routine_movl_0x886bc0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41636b)
  store %struct.Memory* %call_41636b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 416372	 Bytes: 3
  %loadMem_416372 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416372 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416372)
  store %struct.Memory* %call_416372, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 416375	 Bytes: 3
  %loadMem_416375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416375 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416375)
  store %struct.Memory* %call_416375, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rsi, %rsi	 RIP: 416378	 Bytes: 4
  %loadMem_416378 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416378 = call %struct.Memory* @routine_imulq__0x18___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416378)
  store %struct.Memory* %call_416378, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rax	 RIP: 41637c	 Bytes: 3
  %loadMem_41637c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41637c = call %struct.Memory* @routine_addq__rsi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41637c)
  store %struct.Memory* %call_41637c, %struct.Memory** %MEMORY

  ; Code: cmpl 0x4(%rax), %ecx	 RIP: 41637f	 Bytes: 3
  %loadMem_41637f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41637f = call %struct.Memory* @routine_cmpl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41637f)
  store %struct.Memory* %call_41637f, %struct.Memory** %MEMORY

  ; Code: jne .L_416499	 RIP: 416382	 Bytes: 6
  %loadMem_416382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416382 = call %struct.Memory* @routine_jne_.L_416499(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416382, i8* %BRANCH_TAKEN, i64 279, i64 6, i64 6)
  store %struct.Memory* %call_416382, %struct.Memory** %MEMORY

  %loadBr_416382 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416382 = icmp eq i8 %loadBr_416382, 1
  br i1 %cmpBr_416382, label %block_.L_416499, label %block_416388

block_416388:
  ; Code: movq $0x63ae50, %rax	 RIP: 416388	 Bytes: 10
  %loadMem_416388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416388 = call %struct.Memory* @routine_movq__0x63ae50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416388)
  store %struct.Memory* %call_416388, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 416392	 Bytes: 3
  %loadMem_416392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416392 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416392)
  store %struct.Memory* %call_416392, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %edx	 RIP: 416395	 Bytes: 7
  %loadMem_416395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416395 = call %struct.Memory* @routine_movl_0x886bc0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416395)
  store %struct.Memory* %call_416395, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 41639c	 Bytes: 3
  %loadMem_41639c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41639c = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41639c)
  store %struct.Memory* %call_41639c, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 41639f	 Bytes: 3
  %loadMem_41639f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41639f = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41639f)
  store %struct.Memory* %call_41639f, %struct.Memory** %MEMORY

  ; Code: imulq $0x1c20, %rsi, %rsi	 RIP: 4163a2	 Bytes: 7
  %loadMem_4163a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163a2 = call %struct.Memory* @routine_imulq__0x1c20___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163a2)
  store %struct.Memory* %call_4163a2, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rax	 RIP: 4163a9	 Bytes: 3
  %loadMem_4163a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163a9 = call %struct.Memory* @routine_addq__rsi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163a9)
  store %struct.Memory* %call_4163a9, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %edx	 RIP: 4163ac	 Bytes: 7
  %loadMem_4163ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163ac = call %struct.Memory* @routine_movl_0x886bc0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163ac)
  store %struct.Memory* %call_4163ac, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 4163b3	 Bytes: 3
  %loadMem_4163b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163b3 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163b3)
  store %struct.Memory* %call_4163b3, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 4163b6	 Bytes: 3
  %loadMem_4163b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163b6 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163b6)
  store %struct.Memory* %call_4163b6, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rsi, %rsi	 RIP: 4163b9	 Bytes: 4
  %loadMem_4163b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163b9 = call %struct.Memory* @routine_imulq__0x18___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163b9)
  store %struct.Memory* %call_4163b9, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rax	 RIP: 4163bd	 Bytes: 3
  %loadMem_4163bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163bd = call %struct.Memory* @routine_addq__rsi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163bd)
  store %struct.Memory* %call_4163bd, %struct.Memory** %MEMORY

  ; Code: cmpl 0xc(%rax), %ecx	 RIP: 4163c0	 Bytes: 3
  %loadMem_4163c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163c0 = call %struct.Memory* @routine_cmpl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163c0)
  store %struct.Memory* %call_4163c0, %struct.Memory** %MEMORY

  ; Code: jne .L_416499	 RIP: 4163c3	 Bytes: 6
  %loadMem_4163c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163c3 = call %struct.Memory* @routine_jne_.L_416499(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163c3, i8* %BRANCH_TAKEN, i64 214, i64 6, i64 6)
  store %struct.Memory* %call_4163c3, %struct.Memory** %MEMORY

  %loadBr_4163c3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4163c3 = icmp eq i8 %loadBr_4163c3, 1
  br i1 %cmpBr_4163c3, label %block_.L_416499, label %block_4163c9

block_4163c9:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 4163c9	 Bytes: 4
  %loadMem_4163c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163c9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163c9)
  store %struct.Memory* %call_4163c9, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 4163cd	 Bytes: 4
  %loadMem_4163cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163cd = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163cd)
  store %struct.Memory* %call_4163cd, %struct.Memory** %MEMORY

  ; Code: movl $0x5f5e100, (%rax,%rcx,4)	 RIP: 4163d1	 Bytes: 7
  %loadMem_4163d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163d1 = call %struct.Memory* @routine_movl__0x5f5e100____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163d1)
  store %struct.Memory* %call_4163d1, %struct.Memory** %MEMORY

  ; Code: cmpl $0xd, -0x28(%rbp)	 RIP: 4163d8	 Bytes: 4
  %loadMem_4163d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163d8 = call %struct.Memory* @routine_cmpl__0xd__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163d8)
  store %struct.Memory* %call_4163d8, %struct.Memory** %MEMORY

  ; Code: je .L_416494	 RIP: 4163dc	 Bytes: 6
  %loadMem_4163dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163dc = call %struct.Memory* @routine_je_.L_416494(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163dc, i8* %BRANCH_TAKEN, i64 184, i64 6, i64 6)
  store %struct.Memory* %call_4163dc, %struct.Memory** %MEMORY

  %loadBr_4163dc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4163dc = icmp eq i8 %loadBr_4163dc, 1
  br i1 %cmpBr_4163dc, label %block_.L_416494, label %block_4163e2

block_4163e2:
  ; Code: movslq -0x28(%rbp), %rax	 RIP: 4163e2	 Bytes: 4
  %loadMem_4163e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163e2 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163e2)
  store %struct.Memory* %call_4163e2, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rax,4), %edi	 RIP: 4163e6	 Bytes: 7
  %loadMem_4163e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163e6 = call %struct.Memory* @routine_movl_0x62dab0___rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163e6)
  store %struct.Memory* %call_4163e6, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 4163ed	 Bytes: 5
  %loadMem1_4163ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4163ed = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4163ed, i64 -87917, i64 5, i64 5)
  store %struct.Memory* %call1_4163ed, %struct.Memory** %MEMORY

  %loadMem2_4163ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4163ed = load i64, i64* %3
  %call2_4163ed = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_4163ed, %struct.Memory* %loadMem2_4163ed)
  store %struct.Memory* %call2_4163ed, %struct.Memory** %MEMORY

  ; Code: addl $0xf, %eax	 RIP: 4163f2	 Bytes: 3
  %loadMem_4163f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163f2 = call %struct.Memory* @routine_addl__0xf___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163f2)
  store %struct.Memory* %call_4163f2, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4163f5	 Bytes: 4
  %loadMem_4163f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163f5 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163f5)
  store %struct.Memory* %call_4163f5, %struct.Memory** %MEMORY

  ; Code: movslq 0x866540(,%rcx,4), %rcx	 RIP: 4163f9	 Bytes: 8
  %loadMem_4163f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4163f9 = call %struct.Memory* @routine_movslq_0x866540___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4163f9)
  store %struct.Memory* %call_4163f9, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rcx,4), %edi	 RIP: 416401	 Bytes: 7
  %loadMem_416401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416401 = call %struct.Memory* @routine_movl_0x62dab0___rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416401)
  store %struct.Memory* %call_416401, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x54(%rbp)	 RIP: 416408	 Bytes: 3
  %loadMem_416408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416408 = call %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416408)
  store %struct.Memory* %call_416408, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 41640b	 Bytes: 5
  %loadMem1_41640b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41640b = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41640b, i64 -87947, i64 5, i64 5)
  store %struct.Memory* %call1_41640b, %struct.Memory** %MEMORY

  %loadMem2_41640b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41640b = load i64, i64* %3
  %call2_41640b = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_41640b, %struct.Memory* %loadMem2_41640b)
  store %struct.Memory* %call2_41640b, %struct.Memory** %MEMORY

  ; Code: movl -0x54(%rbp), %edi	 RIP: 416410	 Bytes: 3
  %loadMem_416410 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416410 = call %struct.Memory* @routine_movl_MINUS0x54__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416410)
  store %struct.Memory* %call_416410, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %edi	 RIP: 416413	 Bytes: 2
  %loadMem_416413 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416413 = call %struct.Memory* @routine_cmpl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416413)
  store %struct.Memory* %call_416413, %struct.Memory** %MEMORY

  ; Code: jl .L_41645e	 RIP: 416415	 Bytes: 6
  %loadMem_416415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416415 = call %struct.Memory* @routine_jl_.L_41645e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416415, i8* %BRANCH_TAKEN, i64 73, i64 6, i64 6)
  store %struct.Memory* %call_416415, %struct.Memory** %MEMORY

  %loadBr_416415 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416415 = icmp eq i8 %loadBr_416415, 1
  br i1 %cmpBr_416415, label %block_.L_41645e, label %block_41641b

block_41641b:
  ; Code: movslq -0x28(%rbp), %rax	 RIP: 41641b	 Bytes: 4
  %loadMem_41641b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41641b = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41641b)
  store %struct.Memory* %call_41641b, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rax,4), %edi	 RIP: 41641f	 Bytes: 7
  %loadMem_41641f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41641f = call %struct.Memory* @routine_movl_0x62dab0___rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41641f)
  store %struct.Memory* %call_41641f, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 416426	 Bytes: 5
  %loadMem1_416426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_416426 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_416426, i64 -87974, i64 5, i64 5)
  store %struct.Memory* %call1_416426, %struct.Memory** %MEMORY

  %loadMem2_416426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416426 = load i64, i64* %3
  %call2_416426 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_416426, %struct.Memory* %loadMem2_416426)
  store %struct.Memory* %call2_416426, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 41642b	 Bytes: 4
  %loadMem_41642b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41642b = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41642b)
  store %struct.Memory* %call_41642b, %struct.Memory** %MEMORY

  ; Code: movslq 0x866540(,%rcx,4), %rcx	 RIP: 41642f	 Bytes: 8
  %loadMem_41642f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41642f = call %struct.Memory* @routine_movslq_0x866540___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41642f)
  store %struct.Memory* %call_41642f, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rcx,4), %edi	 RIP: 416437	 Bytes: 7
  %loadMem_416437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416437 = call %struct.Memory* @routine_movl_0x62dab0___rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416437)
  store %struct.Memory* %call_416437, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x58(%rbp)	 RIP: 41643e	 Bytes: 3
  %loadMem_41643e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41643e = call %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41643e)
  store %struct.Memory* %call_41643e, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 416441	 Bytes: 5
  %loadMem1_416441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_416441 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_416441, i64 -88001, i64 5, i64 5)
  store %struct.Memory* %call1_416441, %struct.Memory** %MEMORY

  %loadMem2_416441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416441 = load i64, i64* %3
  %call2_416441 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_416441, %struct.Memory* %loadMem2_416441)
  store %struct.Memory* %call2_416441, %struct.Memory** %MEMORY

  ; Code: sarl $0x4, %eax	 RIP: 416446	 Bytes: 3
  %loadMem_416446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416446 = call %struct.Memory* @routine_sarl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416446)
  store %struct.Memory* %call_416446, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp), %edi	 RIP: 416449	 Bytes: 3
  %loadMem_416449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416449 = call %struct.Memory* @routine_movl_MINUS0x58__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416449)
  store %struct.Memory* %call_416449, %struct.Memory** %MEMORY

  ; Code: subl %eax, %edi	 RIP: 41644c	 Bytes: 2
  %loadMem_41644c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41644c = call %struct.Memory* @routine_subl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41644c)
  store %struct.Memory* %call_41644c, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 41644e	 Bytes: 4
  %loadMem_41644e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41644e = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41644e)
  store %struct.Memory* %call_41644e, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 416452	 Bytes: 4
  %loadMem_416452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416452 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416452)
  store %struct.Memory* %call_416452, %struct.Memory** %MEMORY

  ; Code: movl %edi, (%rcx,%rdx,4)	 RIP: 416456	 Bytes: 3
  %loadMem_416456 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416456 = call %struct.Memory* @routine_movl__edi____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416456)
  store %struct.Memory* %call_416456, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41648f	 RIP: 416459	 Bytes: 5
  %loadMem_416459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416459 = call %struct.Memory* @routine_jmpq_.L_41648f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416459, i64 54, i64 5)
  store %struct.Memory* %call_416459, %struct.Memory** %MEMORY

  br label %block_.L_41648f

  ; Code: .L_41645e:	 RIP: 41645e	 Bytes: 0
block_.L_41645e:

  ; Code: movl $0x1, %eax	 RIP: 41645e	 Bytes: 5
  %loadMem_41645e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41645e = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41645e)
  store %struct.Memory* %call_41645e, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 416463	 Bytes: 2
  %loadMem_416463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416463 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416463)
  store %struct.Memory* %call_416463, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 416465	 Bytes: 8
  %loadMem_416465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416465 = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416465)
  store %struct.Memory* %call_416465, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %eax	 RIP: 41646d	 Bytes: 3
  %loadMem_41646d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41646d = call %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41646d)
  store %struct.Memory* %call_41646d, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 416470	 Bytes: 3
  %loadMem_416470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416470 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416470)
  store %struct.Memory* %call_416470, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edx	 RIP: 416473	 Bytes: 3
  %loadMem_416473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416473 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416473)
  store %struct.Memory* %call_416473, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 416476	 Bytes: 2
  %loadMem_416476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416476 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416476)
  store %struct.Memory* %call_416476, %struct.Memory** %MEMORY

  ; Code: callq .see	 RIP: 416478	 Bytes: 5
  %loadMem1_416478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_416478 = call %struct.Memory* @routine_callq_.see(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_416478, i64 24808, i64 5, i64 5)
  store %struct.Memory* %call1_416478, %struct.Memory** %MEMORY

  %loadMem2_416478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416478 = load i64, i64* %3
  %call2_416478 = call %struct.Memory* @sub_41c560.see(%struct.State* %0, i64  %loadPC_416478, %struct.Memory* %loadMem2_416478)
  store %struct.Memory* %call2_416478, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 41647d	 Bytes: 3
  %loadMem_41647d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41647d = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41647d)
  store %struct.Memory* %call_41647d, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %eax	 RIP: 416480	 Bytes: 3
  %loadMem_416480 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416480 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416480)
  store %struct.Memory* %call_416480, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %r8	 RIP: 416483	 Bytes: 4
  %loadMem_416483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416483 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416483)
  store %struct.Memory* %call_416483, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %r9	 RIP: 416487	 Bytes: 4
  %loadMem_416487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416487 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416487)
  store %struct.Memory* %call_416487, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%r8,%r9,4)	 RIP: 41648b	 Bytes: 4
  %loadMem_41648b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41648b = call %struct.Memory* @routine_movl__eax____r8__r9_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41648b)
  store %struct.Memory* %call_41648b, %struct.Memory** %MEMORY

  ; Code: .L_41648f:	 RIP: 41648f	 Bytes: 0
  br label %block_.L_41648f
block_.L_41648f:

  ; Code: jmpq .L_416494	 RIP: 41648f	 Bytes: 5
  %loadMem_41648f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41648f = call %struct.Memory* @routine_jmpq_.L_416494(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41648f, i64 5, i64 5)
  store %struct.Memory* %call_41648f, %struct.Memory** %MEMORY

  br label %block_.L_416494

  ; Code: .L_416494:	 RIP: 416494	 Bytes: 0
block_.L_416494:

  ; Code: jmpq .L_416499	 RIP: 416494	 Bytes: 5
  %loadMem_416494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416494 = call %struct.Memory* @routine_jmpq_.L_416499(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416494, i64 5, i64 5)
  store %struct.Memory* %call_416494, %struct.Memory** %MEMORY

  br label %block_.L_416499

  ; Code: .L_416499:	 RIP: 416499	 Bytes: 0
block_.L_416499:

  ; Code: jmpq .L_416705	 RIP: 416499	 Bytes: 5
  %loadMem_416499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416499 = call %struct.Memory* @routine_jmpq_.L_416705(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416499, i64 620, i64 5)
  store %struct.Memory* %call_416499, %struct.Memory** %MEMORY

  br label %block_.L_416705

  ; Code: .L_41649e:	 RIP: 41649e	 Bytes: 0
block_.L_41649e:

  ; Code: cmpl $0x1, 0x886bc0	 RIP: 41649e	 Bytes: 8
  %loadMem_41649e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41649e = call %struct.Memory* @routine_cmpl__0x1__0x886bc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41649e)
  store %struct.Memory* %call_41649e, %struct.Memory** %MEMORY

  ; Code: jne .L_4164ba	 RIP: 4164a6	 Bytes: 6
  %loadMem_4164a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164a6 = call %struct.Memory* @routine_jne_.L_4164ba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164a6, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_4164a6, %struct.Memory** %MEMORY

  %loadBr_4164a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4164a6 = icmp eq i8 %loadBr_4164a6, 1
  br i1 %cmpBr_4164a6, label %block_.L_4164ba, label %block_4164ac

block_4164ac:
  ; Code: cmpl $0x2, 0x633b50	 RIP: 4164ac	 Bytes: 8
  %loadMem_4164ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164ac = call %struct.Memory* @routine_cmpl__0x2__0x633b50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164ac)
  store %struct.Memory* %call_4164ac, %struct.Memory** %MEMORY

  ; Code: jge .L_416686	 RIP: 4164b4	 Bytes: 6
  %loadMem_4164b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164b4 = call %struct.Memory* @routine_jge_.L_416686(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164b4, i8* %BRANCH_TAKEN, i64 466, i64 6, i64 6)
  store %struct.Memory* %call_4164b4, %struct.Memory** %MEMORY

  %loadBr_4164b4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4164b4 = icmp eq i8 %loadBr_4164b4, 1
  br i1 %cmpBr_4164b4, label %block_.L_416686, label %block_.L_4164ba

  ; Code: .L_4164ba:	 RIP: 4164ba	 Bytes: 0
block_.L_4164ba:

  ; Code: movq $0x884b20, %rax	 RIP: 4164ba	 Bytes: 10
  %loadMem_4164ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164ba = call %struct.Memory* @routine_movq__0x884b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164ba)
  store %struct.Memory* %call_4164ba, %struct.Memory** %MEMORY

  ; Code: movq $0x86bda0, %rcx	 RIP: 4164c4	 Bytes: 10
  %loadMem_4164c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164c4 = call %struct.Memory* @routine_movq__0x86bda0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164c4)
  store %struct.Memory* %call_4164c4, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdx	 RIP: 4164ce	 Bytes: 4
  %loadMem_4164ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164ce = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164ce)
  store %struct.Memory* %call_4164ce, %struct.Memory** %MEMORY

  ; Code: imulq $0x240, %rdx, %rdx	 RIP: 4164d2	 Bytes: 7
  %loadMem_4164d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164d2 = call %struct.Memory* @routine_imulq__0x240___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164d2)
  store %struct.Memory* %call_4164d2, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4164d9	 Bytes: 3
  %loadMem_4164d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164d9 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164d9)
  store %struct.Memory* %call_4164d9, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rdx	 RIP: 4164dc	 Bytes: 4
  %loadMem_4164dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164dc = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164dc)
  store %struct.Memory* %call_4164dc, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %esi	 RIP: 4164e0	 Bytes: 3
  %loadMem_4164e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164e0 = call %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164e0)
  store %struct.Memory* %call_4164e0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4164e3	 Bytes: 4
  %loadMem_4164e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164e3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164e3)
  store %struct.Memory* %call_4164e3, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 4164e7	 Bytes: 4
  %loadMem_4164e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164e7 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164e7)
  store %struct.Memory* %call_4164e7, %struct.Memory** %MEMORY

  ; Code: addl (%rcx,%rdx,4), %esi	 RIP: 4164eb	 Bytes: 3
  %loadMem_4164eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164eb = call %struct.Memory* @routine_addl___rcx__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164eb)
  store %struct.Memory* %call_4164eb, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rcx,%rdx,4)	 RIP: 4164ee	 Bytes: 3
  %loadMem_4164ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164ee = call %struct.Memory* @routine_movl__esi____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164ee)
  store %struct.Memory* %call_4164ee, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %esi	 RIP: 4164f1	 Bytes: 3
  %loadMem_4164f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164f1 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164f1)
  store %struct.Memory* %call_4164f1, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rcx	 RIP: 4164f4	 Bytes: 8
  %loadMem_4164f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164f4 = call %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164f4)
  store %struct.Memory* %call_4164f4, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 4164fc	 Bytes: 4
  %loadMem_4164fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4164fc = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4164fc)
  store %struct.Memory* %call_4164fc, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 416500	 Bytes: 3
  %loadMem_416500 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416500 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416500)
  store %struct.Memory* %call_416500, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax), %esi	 RIP: 416503	 Bytes: 2
  %loadMem_416503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416503 = call %struct.Memory* @routine_cmpl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416503)
  store %struct.Memory* %call_416503, %struct.Memory** %MEMORY

  ; Code: jne .L_41656e	 RIP: 416505	 Bytes: 6
  %loadMem_416505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416505 = call %struct.Memory* @routine_jne_.L_41656e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416505, i8* %BRANCH_TAKEN, i64 105, i64 6, i64 6)
  store %struct.Memory* %call_416505, %struct.Memory** %MEMORY

  %loadBr_416505 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416505 = icmp eq i8 %loadBr_416505, 1
  br i1 %cmpBr_416505, label %block_.L_41656e, label %block_41650b

block_41650b:
  ; Code: movq $0x884b20, %rax	 RIP: 41650b	 Bytes: 10
  %loadMem_41650b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41650b = call %struct.Memory* @routine_movq__0x884b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41650b)
  store %struct.Memory* %call_41650b, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 416515	 Bytes: 3
  %loadMem_416515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416515 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416515)
  store %struct.Memory* %call_416515, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 416518	 Bytes: 8
  %loadMem_416518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416518 = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416518)
  store %struct.Memory* %call_416518, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 416520	 Bytes: 4
  %loadMem_416520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416520 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416520)
  store %struct.Memory* %call_416520, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 416524	 Bytes: 3
  %loadMem_416524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416524 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416524)
  store %struct.Memory* %call_416524, %struct.Memory** %MEMORY

  ; Code: cmpl 0x4(%rax), %ecx	 RIP: 416527	 Bytes: 3
  %loadMem_416527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416527 = call %struct.Memory* @routine_cmpl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416527)
  store %struct.Memory* %call_416527, %struct.Memory** %MEMORY

  ; Code: jne .L_41656e	 RIP: 41652a	 Bytes: 6
  %loadMem_41652a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41652a = call %struct.Memory* @routine_jne_.L_41656e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41652a, i8* %BRANCH_TAKEN, i64 68, i64 6, i64 6)
  store %struct.Memory* %call_41652a, %struct.Memory** %MEMORY

  %loadBr_41652a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41652a = icmp eq i8 %loadBr_41652a, 1
  br i1 %cmpBr_41652a, label %block_.L_41656e, label %block_416530

block_416530:
  ; Code: movq $0x884b20, %rax	 RIP: 416530	 Bytes: 10
  %loadMem_416530 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416530 = call %struct.Memory* @routine_movq__0x884b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416530)
  store %struct.Memory* %call_416530, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 41653a	 Bytes: 3
  %loadMem_41653a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41653a = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41653a)
  store %struct.Memory* %call_41653a, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 41653d	 Bytes: 8
  %loadMem_41653d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41653d = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41653d)
  store %struct.Memory* %call_41653d, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 416545	 Bytes: 4
  %loadMem_416545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416545 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416545)
  store %struct.Memory* %call_416545, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 416549	 Bytes: 3
  %loadMem_416549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416549 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416549)
  store %struct.Memory* %call_416549, %struct.Memory** %MEMORY

  ; Code: cmpl 0xc(%rax), %ecx	 RIP: 41654c	 Bytes: 3
  %loadMem_41654c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41654c = call %struct.Memory* @routine_cmpl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41654c)
  store %struct.Memory* %call_41654c, %struct.Memory** %MEMORY

  ; Code: jne .L_41656e	 RIP: 41654f	 Bytes: 6
  %loadMem_41654f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41654f = call %struct.Memory* @routine_jne_.L_41656e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41654f, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_41654f, %struct.Memory** %MEMORY

  %loadBr_41654f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41654f = icmp eq i8 %loadBr_41654f, 1
  br i1 %cmpBr_41654f, label %block_.L_41656e, label %block_416555

block_416555:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 416555	 Bytes: 4
  %loadMem_416555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416555 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416555)
  store %struct.Memory* %call_416555, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 416559	 Bytes: 4
  %loadMem_416559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416559 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416559)
  store %struct.Memory* %call_416559, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 41655d	 Bytes: 3
  %loadMem_41655d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41655d = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41655d)
  store %struct.Memory* %call_41655d, %struct.Memory** %MEMORY

  ; Code: addl $0x17d7840, %edx	 RIP: 416560	 Bytes: 6
  %loadMem_416560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416560 = call %struct.Memory* @routine_addl__0x17d7840___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416560)
  store %struct.Memory* %call_416560, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 416566	 Bytes: 3
  %loadMem_416566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416566 = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416566)
  store %struct.Memory* %call_416566, %struct.Memory** %MEMORY

  ; Code: jmpq .L_416681	 RIP: 416569	 Bytes: 5
  %loadMem_416569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416569 = call %struct.Memory* @routine_jmpq_.L_416681(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416569, i64 280, i64 5)
  store %struct.Memory* %call_416569, %struct.Memory** %MEMORY

  br label %block_.L_416681

  ; Code: .L_41656e:	 RIP: 41656e	 Bytes: 0
block_.L_41656e:

  ; Code: movq $0x639220, %rax	 RIP: 41656e	 Bytes: 10
  %loadMem_41656e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41656e = call %struct.Memory* @routine_movq__0x639220___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41656e)
  store %struct.Memory* %call_41656e, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %ecx	 RIP: 416578	 Bytes: 3
  %loadMem_416578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416578 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416578)
  store %struct.Memory* %call_416578, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 41657b	 Bytes: 8
  %loadMem_41657b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41657b = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41657b)
  store %struct.Memory* %call_41657b, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 416583	 Bytes: 4
  %loadMem_416583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416583 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416583)
  store %struct.Memory* %call_416583, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 416587	 Bytes: 3
  %loadMem_416587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416587 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416587)
  store %struct.Memory* %call_416587, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax), %ecx	 RIP: 41658a	 Bytes: 2
  %loadMem_41658a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41658a = call %struct.Memory* @routine_cmpl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41658a)
  store %struct.Memory* %call_41658a, %struct.Memory** %MEMORY

  ; Code: jne .L_4165f5	 RIP: 41658c	 Bytes: 6
  %loadMem_41658c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41658c = call %struct.Memory* @routine_jne_.L_4165f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41658c, i8* %BRANCH_TAKEN, i64 105, i64 6, i64 6)
  store %struct.Memory* %call_41658c, %struct.Memory** %MEMORY

  %loadBr_41658c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41658c = icmp eq i8 %loadBr_41658c, 1
  br i1 %cmpBr_41658c, label %block_.L_4165f5, label %block_416592

block_416592:
  ; Code: movq $0x639220, %rax	 RIP: 416592	 Bytes: 10
  %loadMem_416592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416592 = call %struct.Memory* @routine_movq__0x639220___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416592)
  store %struct.Memory* %call_416592, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 41659c	 Bytes: 3
  %loadMem_41659c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41659c = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41659c)
  store %struct.Memory* %call_41659c, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 41659f	 Bytes: 8
  %loadMem_41659f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41659f = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41659f)
  store %struct.Memory* %call_41659f, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 4165a7	 Bytes: 4
  %loadMem_4165a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165a7 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165a7)
  store %struct.Memory* %call_4165a7, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4165ab	 Bytes: 3
  %loadMem_4165ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165ab = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165ab)
  store %struct.Memory* %call_4165ab, %struct.Memory** %MEMORY

  ; Code: cmpl 0x4(%rax), %ecx	 RIP: 4165ae	 Bytes: 3
  %loadMem_4165ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165ae = call %struct.Memory* @routine_cmpl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165ae)
  store %struct.Memory* %call_4165ae, %struct.Memory** %MEMORY

  ; Code: jne .L_4165f5	 RIP: 4165b1	 Bytes: 6
  %loadMem_4165b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165b1 = call %struct.Memory* @routine_jne_.L_4165f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165b1, i8* %BRANCH_TAKEN, i64 68, i64 6, i64 6)
  store %struct.Memory* %call_4165b1, %struct.Memory** %MEMORY

  %loadBr_4165b1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4165b1 = icmp eq i8 %loadBr_4165b1, 1
  br i1 %cmpBr_4165b1, label %block_.L_4165f5, label %block_4165b7

block_4165b7:
  ; Code: movq $0x639220, %rax	 RIP: 4165b7	 Bytes: 10
  %loadMem_4165b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165b7 = call %struct.Memory* @routine_movq__0x639220___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165b7)
  store %struct.Memory* %call_4165b7, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 4165c1	 Bytes: 3
  %loadMem_4165c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165c1 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165c1)
  store %struct.Memory* %call_4165c1, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 4165c4	 Bytes: 8
  %loadMem_4165c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165c4 = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165c4)
  store %struct.Memory* %call_4165c4, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 4165cc	 Bytes: 4
  %loadMem_4165cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165cc = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165cc)
  store %struct.Memory* %call_4165cc, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4165d0	 Bytes: 3
  %loadMem_4165d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165d0 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165d0)
  store %struct.Memory* %call_4165d0, %struct.Memory** %MEMORY

  ; Code: cmpl 0xc(%rax), %ecx	 RIP: 4165d3	 Bytes: 3
  %loadMem_4165d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165d3 = call %struct.Memory* @routine_cmpl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165d3)
  store %struct.Memory* %call_4165d3, %struct.Memory** %MEMORY

  ; Code: jne .L_4165f5	 RIP: 4165d6	 Bytes: 6
  %loadMem_4165d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165d6 = call %struct.Memory* @routine_jne_.L_4165f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165d6, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_4165d6, %struct.Memory** %MEMORY

  %loadBr_4165d6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4165d6 = icmp eq i8 %loadBr_4165d6, 1
  br i1 %cmpBr_4165d6, label %block_.L_4165f5, label %block_4165dc

block_4165dc:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 4165dc	 Bytes: 4
  %loadMem_4165dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165dc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165dc)
  store %struct.Memory* %call_4165dc, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 4165e0	 Bytes: 4
  %loadMem_4165e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165e0 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165e0)
  store %struct.Memory* %call_4165e0, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 4165e4	 Bytes: 3
  %loadMem_4165e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165e4 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165e4)
  store %struct.Memory* %call_4165e4, %struct.Memory** %MEMORY

  ; Code: addl $0x1312d00, %edx	 RIP: 4165e7	 Bytes: 6
  %loadMem_4165e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165e7 = call %struct.Memory* @routine_addl__0x1312d00___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165e7)
  store %struct.Memory* %call_4165e7, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 4165ed	 Bytes: 3
  %loadMem_4165ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165ed = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165ed)
  store %struct.Memory* %call_4165ed, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41667c	 RIP: 4165f0	 Bytes: 5
  %loadMem_4165f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165f0 = call %struct.Memory* @routine_jmpq_.L_41667c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165f0, i64 140, i64 5)
  store %struct.Memory* %call_4165f0, %struct.Memory** %MEMORY

  br label %block_.L_41667c

  ; Code: .L_4165f5:	 RIP: 4165f5	 Bytes: 0
block_.L_4165f5:

  ; Code: movq $0x882600, %rax	 RIP: 4165f5	 Bytes: 10
  %loadMem_4165f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165f5 = call %struct.Memory* @routine_movq__0x882600___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165f5)
  store %struct.Memory* %call_4165f5, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %ecx	 RIP: 4165ff	 Bytes: 3
  %loadMem_4165ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4165ff = call %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4165ff)
  store %struct.Memory* %call_4165ff, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 416602	 Bytes: 8
  %loadMem_416602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416602 = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416602)
  store %struct.Memory* %call_416602, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41660a	 Bytes: 4
  %loadMem_41660a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41660a = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41660a)
  store %struct.Memory* %call_41660a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41660e	 Bytes: 3
  %loadMem_41660e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41660e = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41660e)
  store %struct.Memory* %call_41660e, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax), %ecx	 RIP: 416611	 Bytes: 2
  %loadMem_416611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416611 = call %struct.Memory* @routine_cmpl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416611)
  store %struct.Memory* %call_416611, %struct.Memory** %MEMORY

  ; Code: jne .L_416677	 RIP: 416613	 Bytes: 6
  %loadMem_416613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416613 = call %struct.Memory* @routine_jne_.L_416677(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416613, i8* %BRANCH_TAKEN, i64 100, i64 6, i64 6)
  store %struct.Memory* %call_416613, %struct.Memory** %MEMORY

  %loadBr_416613 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416613 = icmp eq i8 %loadBr_416613, 1
  br i1 %cmpBr_416613, label %block_.L_416677, label %block_416619

block_416619:
  ; Code: movq $0x882600, %rax	 RIP: 416619	 Bytes: 10
  %loadMem_416619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416619 = call %struct.Memory* @routine_movq__0x882600___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416619)
  store %struct.Memory* %call_416619, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 416623	 Bytes: 3
  %loadMem_416623 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416623 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416623)
  store %struct.Memory* %call_416623, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 416626	 Bytes: 8
  %loadMem_416626 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416626 = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416626)
  store %struct.Memory* %call_416626, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 41662e	 Bytes: 4
  %loadMem_41662e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41662e = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41662e)
  store %struct.Memory* %call_41662e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 416632	 Bytes: 3
  %loadMem_416632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416632 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416632)
  store %struct.Memory* %call_416632, %struct.Memory** %MEMORY

  ; Code: cmpl 0x4(%rax), %ecx	 RIP: 416635	 Bytes: 3
  %loadMem_416635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416635 = call %struct.Memory* @routine_cmpl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416635)
  store %struct.Memory* %call_416635, %struct.Memory** %MEMORY

  ; Code: jne .L_416677	 RIP: 416638	 Bytes: 6
  %loadMem_416638 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416638 = call %struct.Memory* @routine_jne_.L_416677(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416638, i8* %BRANCH_TAKEN, i64 63, i64 6, i64 6)
  store %struct.Memory* %call_416638, %struct.Memory** %MEMORY

  %loadBr_416638 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416638 = icmp eq i8 %loadBr_416638, 1
  br i1 %cmpBr_416638, label %block_.L_416677, label %block_41663e

block_41663e:
  ; Code: movq $0x882600, %rax	 RIP: 41663e	 Bytes: 10
  %loadMem_41663e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41663e = call %struct.Memory* @routine_movq__0x882600___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41663e)
  store %struct.Memory* %call_41663e, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 416648	 Bytes: 3
  %loadMem_416648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416648 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416648)
  store %struct.Memory* %call_416648, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 41664b	 Bytes: 8
  %loadMem_41664b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41664b = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41664b)
  store %struct.Memory* %call_41664b, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 416653	 Bytes: 4
  %loadMem_416653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416653 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416653)
  store %struct.Memory* %call_416653, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 416657	 Bytes: 3
  %loadMem_416657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416657 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416657)
  store %struct.Memory* %call_416657, %struct.Memory** %MEMORY

  ; Code: cmpl 0xc(%rax), %ecx	 RIP: 41665a	 Bytes: 3
  %loadMem_41665a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41665a = call %struct.Memory* @routine_cmpl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41665a)
  store %struct.Memory* %call_41665a, %struct.Memory** %MEMORY

  ; Code: jne .L_416677	 RIP: 41665d	 Bytes: 6
  %loadMem_41665d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41665d = call %struct.Memory* @routine_jne_.L_416677(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41665d, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_41665d, %struct.Memory** %MEMORY

  %loadBr_41665d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41665d = icmp eq i8 %loadBr_41665d, 1
  br i1 %cmpBr_41665d, label %block_.L_416677, label %block_416663

block_416663:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 416663	 Bytes: 4
  %loadMem_416663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416663 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416663)
  store %struct.Memory* %call_416663, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 416667	 Bytes: 4
  %loadMem_416667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416667 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416667)
  store %struct.Memory* %call_416667, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 41666b	 Bytes: 3
  %loadMem_41666b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41666b = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41666b)
  store %struct.Memory* %call_41666b, %struct.Memory** %MEMORY

  ; Code: addl $0xe4e1c0, %edx	 RIP: 41666e	 Bytes: 6
  %loadMem_41666e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41666e = call %struct.Memory* @routine_addl__0xe4e1c0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41666e)
  store %struct.Memory* %call_41666e, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 416674	 Bytes: 3
  %loadMem_416674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416674 = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416674)
  store %struct.Memory* %call_416674, %struct.Memory** %MEMORY

  ; Code: .L_416677:	 RIP: 416677	 Bytes: 0
  br label %block_.L_416677
block_.L_416677:

  ; Code: jmpq .L_41667c	 RIP: 416677	 Bytes: 5
  %loadMem_416677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416677 = call %struct.Memory* @routine_jmpq_.L_41667c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416677, i64 5, i64 5)
  store %struct.Memory* %call_416677, %struct.Memory** %MEMORY

  br label %block_.L_41667c

  ; Code: .L_41667c:	 RIP: 41667c	 Bytes: 0
block_.L_41667c:

  ; Code: jmpq .L_416681	 RIP: 41667c	 Bytes: 5
  %loadMem_41667c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41667c = call %struct.Memory* @routine_jmpq_.L_416681(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41667c, i64 5, i64 5)
  store %struct.Memory* %call_41667c, %struct.Memory** %MEMORY

  br label %block_.L_416681

  ; Code: .L_416681:	 RIP: 416681	 Bytes: 0
block_.L_416681:

  ; Code: jmpq .L_416700	 RIP: 416681	 Bytes: 5
  %loadMem_416681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416681 = call %struct.Memory* @routine_jmpq_.L_416700(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416681, i64 127, i64 5)
  store %struct.Memory* %call_416681, %struct.Memory** %MEMORY

  br label %block_.L_416700

  ; Code: .L_416686:	 RIP: 416686	 Bytes: 0
block_.L_416686:

  ; Code: movl $0x64, %eax	 RIP: 416686	 Bytes: 5
  %loadMem_416686 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416686 = call %struct.Memory* @routine_movl__0x64___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416686)
  store %struct.Memory* %call_416686, %struct.Memory** %MEMORY

  ; Code: movl 0x864500, %ecx	 RIP: 41668b	 Bytes: 7
  %loadMem_41668b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41668b = call %struct.Memory* @routine_movl_0x864500___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41668b)
  store %struct.Memory* %call_41668b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5c(%rbp)	 RIP: 416692	 Bytes: 3
  %loadMem_416692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416692 = call %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416692)
  store %struct.Memory* %call_416692, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 416695	 Bytes: 2
  %loadMem_416695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416695 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416695)
  store %struct.Memory* %call_416695, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 416697	 Bytes: 1
  %loadMem_416697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416697 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416697)
  store %struct.Memory* %call_416697, %struct.Memory** %MEMORY

  ; Code: movl -0x5c(%rbp), %ecx	 RIP: 416698	 Bytes: 3
  %loadMem_416698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416698 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416698)
  store %struct.Memory* %call_416698, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 41669b	 Bytes: 2
  %loadMem_41669b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41669b = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41669b)
  store %struct.Memory* %call_41669b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f5e100, %eax	 RIP: 41669d	 Bytes: 5
  %loadMem_41669d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41669d = call %struct.Memory* @routine_cmpl__0x5f5e100___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41669d)
  store %struct.Memory* %call_41669d, %struct.Memory** %MEMORY

  ; Code: jle .L_4166d4	 RIP: 4166a2	 Bytes: 6
  %loadMem_4166a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166a2 = call %struct.Memory* @routine_jle_.L_4166d4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166a2, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_4166a2, %struct.Memory** %MEMORY

  %loadBr_4166a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4166a2 = icmp eq i8 %loadBr_4166a2, 1
  br i1 %cmpBr_4166a2, label %block_.L_4166d4, label %block_4166a8

block_4166a8:
  ; Code: movl $0x3e8, %eax	 RIP: 4166a8	 Bytes: 5
  %loadMem_4166a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166a8 = call %struct.Memory* @routine_movl__0x3e8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166a8)
  store %struct.Memory* %call_4166a8, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 4166ad	 Bytes: 4
  %loadMem_4166ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166ad = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166ad)
  store %struct.Memory* %call_4166ad, %struct.Memory** %MEMORY

  ; Code: movl 0x884320(,%rcx,4), %edx	 RIP: 4166b1	 Bytes: 7
  %loadMem_4166b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166b1 = call %struct.Memory* @routine_movl_0x884320___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166b1)
  store %struct.Memory* %call_4166b1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x60(%rbp)	 RIP: 4166b8	 Bytes: 3
  %loadMem_4166b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166b8 = call %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166b8)
  store %struct.Memory* %call_4166b8, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 4166bb	 Bytes: 2
  %loadMem_4166bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166bb = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166bb)
  store %struct.Memory* %call_4166bb, %struct.Memory** %MEMORY

  ; Code: xorl %edx, %edx	 RIP: 4166bd	 Bytes: 2
  %loadMem_4166bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166bd = call %struct.Memory* @routine_xorl__edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166bd)
  store %struct.Memory* %call_4166bd, %struct.Memory** %MEMORY

  ; Code: movl -0x60(%rbp), %esi	 RIP: 4166bf	 Bytes: 3
  %loadMem_4166bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166bf = call %struct.Memory* @routine_movl_MINUS0x60__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166bf)
  store %struct.Memory* %call_4166bf, %struct.Memory** %MEMORY

  ; Code: divl %esi	 RIP: 4166c2	 Bytes: 2
  %loadMem_4166c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166c2 = call %struct.Memory* @routine_divl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166c2)
  store %struct.Memory* %call_4166c2, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4166c4	 Bytes: 4
  %loadMem_4166c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166c4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166c4)
  store %struct.Memory* %call_4166c4, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdi	 RIP: 4166c8	 Bytes: 4
  %loadMem_4166c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166c8 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166c8)
  store %struct.Memory* %call_4166c8, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdi,4)	 RIP: 4166cc	 Bytes: 3
  %loadMem_4166cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166cc = call %struct.Memory* @routine_movl__eax____rcx__rdi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166cc)
  store %struct.Memory* %call_4166cc, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4166fb	 RIP: 4166cf	 Bytes: 5
  %loadMem_4166cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166cf = call %struct.Memory* @routine_jmpq_.L_4166fb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166cf, i64 44, i64 5)
  store %struct.Memory* %call_4166cf, %struct.Memory** %MEMORY

  br label %block_.L_4166fb

  ; Code: .L_4166d4:	 RIP: 4166d4	 Bytes: 0
block_.L_4166d4:

  ; Code: movl $0x64, %eax	 RIP: 4166d4	 Bytes: 5
  %loadMem_4166d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166d4 = call %struct.Memory* @routine_movl__0x64___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166d4)
  store %struct.Memory* %call_4166d4, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 4166d9	 Bytes: 4
  %loadMem_4166d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166d9 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166d9)
  store %struct.Memory* %call_4166d9, %struct.Memory** %MEMORY

  ; Code: movl 0x884320(,%rcx,4), %edx	 RIP: 4166dd	 Bytes: 7
  %loadMem_4166dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166dd = call %struct.Memory* @routine_movl_0x884320___rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166dd)
  store %struct.Memory* %call_4166dd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x64(%rbp)	 RIP: 4166e4	 Bytes: 3
  %loadMem_4166e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166e4 = call %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166e4)
  store %struct.Memory* %call_4166e4, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 4166e7	 Bytes: 2
  %loadMem_4166e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166e7 = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166e7)
  store %struct.Memory* %call_4166e7, %struct.Memory** %MEMORY

  ; Code: xorl %edx, %edx	 RIP: 4166e9	 Bytes: 2
  %loadMem_4166e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166e9 = call %struct.Memory* @routine_xorl__edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166e9)
  store %struct.Memory* %call_4166e9, %struct.Memory** %MEMORY

  ; Code: movl -0x64(%rbp), %esi	 RIP: 4166eb	 Bytes: 3
  %loadMem_4166eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166eb = call %struct.Memory* @routine_movl_MINUS0x64__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166eb)
  store %struct.Memory* %call_4166eb, %struct.Memory** %MEMORY

  ; Code: divl %esi	 RIP: 4166ee	 Bytes: 2
  %loadMem_4166ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166ee = call %struct.Memory* @routine_divl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166ee)
  store %struct.Memory* %call_4166ee, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4166f0	 Bytes: 4
  %loadMem_4166f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166f0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166f0)
  store %struct.Memory* %call_4166f0, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdi	 RIP: 4166f4	 Bytes: 4
  %loadMem_4166f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166f4 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166f4)
  store %struct.Memory* %call_4166f4, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdi,4)	 RIP: 4166f8	 Bytes: 3
  %loadMem_4166f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166f8 = call %struct.Memory* @routine_movl__eax____rcx__rdi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166f8)
  store %struct.Memory* %call_4166f8, %struct.Memory** %MEMORY

  ; Code: .L_4166fb:	 RIP: 4166fb	 Bytes: 0
  br label %block_.L_4166fb
block_.L_4166fb:

  ; Code: jmpq .L_416700	 RIP: 4166fb	 Bytes: 5
  %loadMem_4166fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4166fb = call %struct.Memory* @routine_jmpq_.L_416700(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4166fb, i64 5, i64 5)
  store %struct.Memory* %call_4166fb, %struct.Memory** %MEMORY

  br label %block_.L_416700

  ; Code: .L_416700:	 RIP: 416700	 Bytes: 0
block_.L_416700:

  ; Code: jmpq .L_416705	 RIP: 416700	 Bytes: 5
  %loadMem_416700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416700 = call %struct.Memory* @routine_jmpq_.L_416705(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416700, i64 5, i64 5)
  store %struct.Memory* %call_416700, %struct.Memory** %MEMORY

  br label %block_.L_416705

  ; Code: .L_416705:	 RIP: 416705	 Bytes: 0
block_.L_416705:

  ; Code: jmpq .L_41670a	 RIP: 416705	 Bytes: 5
  %loadMem_416705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416705 = call %struct.Memory* @routine_jmpq_.L_41670a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416705, i64 5, i64 5)
  store %struct.Memory* %call_416705, %struct.Memory** %MEMORY

  br label %block_.L_41670a

  ; Code: .L_41670a:	 RIP: 41670a	 Bytes: 0
block_.L_41670a:

  ; Code: jmpq .L_41670f	 RIP: 41670a	 Bytes: 5
  %loadMem_41670a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41670a = call %struct.Memory* @routine_jmpq_.L_41670f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41670a, i64 5, i64 5)
  store %struct.Memory* %call_41670a, %struct.Memory** %MEMORY

  br label %block_.L_41670f

  ; Code: .L_41670f:	 RIP: 41670f	 Bytes: 0
block_.L_41670f:

  ; Code: jmpq .L_416714	 RIP: 41670f	 Bytes: 5
  %loadMem_41670f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41670f = call %struct.Memory* @routine_jmpq_.L_416714(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41670f, i64 5, i64 5)
  store %struct.Memory* %call_41670f, %struct.Memory** %MEMORY

  br label %block_.L_416714

  ; Code: .L_416714:	 RIP: 416714	 Bytes: 0
block_.L_416714:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 416714	 Bytes: 3
  %loadMem_416714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416714 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416714)
  store %struct.Memory* %call_416714, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 416717	 Bytes: 3
  %loadMem_416717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416717 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416717)
  store %struct.Memory* %call_416717, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 41671a	 Bytes: 3
  %loadMem_41671a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41671a = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41671a)
  store %struct.Memory* %call_41671a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_415f3e	 RIP: 41671d	 Bytes: 5
  %loadMem_41671d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41671d = call %struct.Memory* @routine_jmpq_.L_415f3e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41671d, i64 -2015, i64 5)
  store %struct.Memory* %call_41671d, %struct.Memory** %MEMORY

  br label %block_.L_415f3e

  ; Code: .L_416722:	 RIP: 416722	 Bytes: 0
block_.L_416722:

  ; Code: jmpq .L_416d12	 RIP: 416722	 Bytes: 5
  %loadMem_416722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416722 = call %struct.Memory* @routine_jmpq_.L_416d12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416722, i64 1520, i64 5)
  store %struct.Memory* %call_416722, %struct.Memory** %MEMORY

  br label %block_.L_416d12

  ; Code: .L_416727:	 RIP: 416727	 Bytes: 0
block_.L_416727:

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 416727	 Bytes: 7
  %loadMem_416727 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416727 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416727)
  store %struct.Memory* %call_416727, %struct.Memory** %MEMORY

  ; Code: .L_41672e:	 RIP: 41672e	 Bytes: 0
  br label %block_.L_41672e
block_.L_41672e:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 41672e	 Bytes: 3
  %loadMem_41672e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41672e = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41672e)
  store %struct.Memory* %call_41672e, %struct.Memory** %MEMORY

  ; Code: cmpl -0x1c(%rbp), %eax	 RIP: 416731	 Bytes: 3
  %loadMem_416731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416731 = call %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416731)
  store %struct.Memory* %call_416731, %struct.Memory** %MEMORY

  ; Code: jge .L_416d0d	 RIP: 416734	 Bytes: 6
  %loadMem_416734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416734 = call %struct.Memory* @routine_jge_.L_416d0d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416734, i8* %BRANCH_TAKEN, i64 1497, i64 6, i64 6)
  store %struct.Memory* %call_416734, %struct.Memory** %MEMORY

  %loadBr_416734 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416734 = icmp eq i8 %loadBr_416734, 1
  br i1 %cmpBr_416734, label %block_.L_416d0d, label %block_41673a

block_41673a:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 41673a	 Bytes: 4
  %loadMem_41673a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41673a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41673a)
  store %struct.Memory* %call_41673a, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 41673e	 Bytes: 4
  %loadMem_41673e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41673e = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41673e)
  store %struct.Memory* %call_41673e, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 416742	 Bytes: 4
  %loadMem_416742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416742 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416742)
  store %struct.Memory* %call_416742, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 416746	 Bytes: 3
  %loadMem_416746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416746 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416746)
  store %struct.Memory* %call_416746, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %edx	 RIP: 416749	 Bytes: 2
  %loadMem_416749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416749 = call %struct.Memory* @routine_movl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416749)
  store %struct.Memory* %call_416749, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x30(%rbp)	 RIP: 41674b	 Bytes: 3
  %loadMem_41674b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41674b = call %struct.Memory* @routine_movl__edx__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41674b)
  store %struct.Memory* %call_41674b, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 41674e	 Bytes: 4
  %loadMem_41674e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41674e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41674e)
  store %struct.Memory* %call_41674e, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 416752	 Bytes: 4
  %loadMem_416752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416752 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416752)
  store %struct.Memory* %call_416752, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 416756	 Bytes: 4
  %loadMem_416756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416756 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416756)
  store %struct.Memory* %call_416756, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41675a	 Bytes: 3
  %loadMem_41675a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41675a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41675a)
  store %struct.Memory* %call_41675a, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 41675d	 Bytes: 3
  %loadMem_41675d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41675d = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41675d)
  store %struct.Memory* %call_41675d, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x34(%rbp)	 RIP: 416760	 Bytes: 3
  %loadMem_416760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416760 = call %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416760)
  store %struct.Memory* %call_416760, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 416763	 Bytes: 4
  %loadMem_416763 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416763 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416763)
  store %struct.Memory* %call_416763, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 416767	 Bytes: 4
  %loadMem_416767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416767 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416767)
  store %struct.Memory* %call_416767, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 41676b	 Bytes: 4
  %loadMem_41676b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41676b = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41676b)
  store %struct.Memory* %call_41676b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 41676f	 Bytes: 3
  %loadMem_41676f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41676f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41676f)
  store %struct.Memory* %call_41676f, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 416772	 Bytes: 3
  %loadMem_416772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416772 = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416772)
  store %struct.Memory* %call_416772, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x24(%rbp)	 RIP: 416775	 Bytes: 3
  %loadMem_416775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416775 = call %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416775)
  store %struct.Memory* %call_416775, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 416778	 Bytes: 4
  %loadMem_416778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416778 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416778)
  store %struct.Memory* %call_416778, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 41677c	 Bytes: 4
  %loadMem_41677c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41677c = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41677c)
  store %struct.Memory* %call_41677c, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 416780	 Bytes: 4
  %loadMem_416780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416780 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416780)
  store %struct.Memory* %call_416780, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 416784	 Bytes: 3
  %loadMem_416784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416784 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416784)
  store %struct.Memory* %call_416784, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %edx	 RIP: 416787	 Bytes: 3
  %loadMem_416787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416787 = call %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416787)
  store %struct.Memory* %call_416787, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x28(%rbp)	 RIP: 41678a	 Bytes: 3
  %loadMem_41678a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41678a = call %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41678a)
  store %struct.Memory* %call_41678a, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffffff, -0x20(%rbp)	 RIP: 41678d	 Bytes: 4
  %loadMem_41678d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41678d = call %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41678d)
  store %struct.Memory* %call_41678d, %struct.Memory** %MEMORY

  ; Code: je .L_416873	 RIP: 416791	 Bytes: 6
  %loadMem_416791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416791 = call %struct.Memory* @routine_je_.L_416873(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416791, i8* %BRANCH_TAKEN, i64 226, i64 6, i64 6)
  store %struct.Memory* %call_416791, %struct.Memory** %MEMORY

  %loadBr_416791 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416791 = icmp eq i8 %loadBr_416791, 1
  br i1 %cmpBr_416791, label %block_.L_416873, label %block_416797

block_416797:
  ; Code: movl -0x2c(%rbp), %eax	 RIP: 416797	 Bytes: 3
  %loadMem_416797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416797 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416797)
  store %struct.Memory* %call_416797, %struct.Memory** %MEMORY

  ; Code: cmpl -0x20(%rbp), %eax	 RIP: 41679a	 Bytes: 3
  %loadMem_41679a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41679a = call %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41679a)
  store %struct.Memory* %call_41679a, %struct.Memory** %MEMORY

  ; Code: jne .L_416873	 RIP: 41679d	 Bytes: 6
  %loadMem_41679d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41679d = call %struct.Memory* @routine_jne_.L_416873(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41679d, i8* %BRANCH_TAKEN, i64 214, i64 6, i64 6)
  store %struct.Memory* %call_41679d, %struct.Memory** %MEMORY

  %loadBr_41679d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41679d = icmp eq i8 %loadBr_41679d, 1
  br i1 %cmpBr_41679d, label %block_.L_416873, label %block_4167a3

block_4167a3:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 4167a3	 Bytes: 4
  %loadMem_4167a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167a3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167a3)
  store %struct.Memory* %call_4167a3, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 4167a7	 Bytes: 4
  %loadMem_4167a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167a7 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167a7)
  store %struct.Memory* %call_4167a7, %struct.Memory** %MEMORY

  ; Code: movl $0x5f5e100, (%rax,%rcx,4)	 RIP: 4167ab	 Bytes: 7
  %loadMem_4167ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167ab = call %struct.Memory* @routine_movl__0x5f5e100____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167ab)
  store %struct.Memory* %call_4167ab, %struct.Memory** %MEMORY

  ; Code: cmpl $0xd, -0x28(%rbp)	 RIP: 4167b2	 Bytes: 4
  %loadMem_4167b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167b2 = call %struct.Memory* @routine_cmpl__0xd__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167b2)
  store %struct.Memory* %call_4167b2, %struct.Memory** %MEMORY

  ; Code: je .L_41686e	 RIP: 4167b6	 Bytes: 6
  %loadMem_4167b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167b6 = call %struct.Memory* @routine_je_.L_41686e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167b6, i8* %BRANCH_TAKEN, i64 184, i64 6, i64 6)
  store %struct.Memory* %call_4167b6, %struct.Memory** %MEMORY

  %loadBr_4167b6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4167b6 = icmp eq i8 %loadBr_4167b6, 1
  br i1 %cmpBr_4167b6, label %block_.L_41686e, label %block_4167bc

block_4167bc:
  ; Code: movslq -0x28(%rbp), %rax	 RIP: 4167bc	 Bytes: 4
  %loadMem_4167bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167bc = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167bc)
  store %struct.Memory* %call_4167bc, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rax,4), %edi	 RIP: 4167c0	 Bytes: 7
  %loadMem_4167c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167c0 = call %struct.Memory* @routine_movl_0x62dab0___rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167c0)
  store %struct.Memory* %call_4167c0, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 4167c7	 Bytes: 5
  %loadMem1_4167c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4167c7 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4167c7, i64 -88903, i64 5, i64 5)
  store %struct.Memory* %call1_4167c7, %struct.Memory** %MEMORY

  %loadMem2_4167c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4167c7 = load i64, i64* %3
  %call2_4167c7 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_4167c7, %struct.Memory* %loadMem2_4167c7)
  store %struct.Memory* %call2_4167c7, %struct.Memory** %MEMORY

  ; Code: addl $0xf, %eax	 RIP: 4167cc	 Bytes: 3
  %loadMem_4167cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167cc = call %struct.Memory* @routine_addl__0xf___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167cc)
  store %struct.Memory* %call_4167cc, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4167cf	 Bytes: 4
  %loadMem_4167cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167cf = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167cf)
  store %struct.Memory* %call_4167cf, %struct.Memory** %MEMORY

  ; Code: movslq 0x866540(,%rcx,4), %rcx	 RIP: 4167d3	 Bytes: 8
  %loadMem_4167d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167d3 = call %struct.Memory* @routine_movslq_0x866540___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167d3)
  store %struct.Memory* %call_4167d3, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rcx,4), %edi	 RIP: 4167db	 Bytes: 7
  %loadMem_4167db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167db = call %struct.Memory* @routine_movl_0x62dab0___rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167db)
  store %struct.Memory* %call_4167db, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x68(%rbp)	 RIP: 4167e2	 Bytes: 3
  %loadMem_4167e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167e2 = call %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167e2)
  store %struct.Memory* %call_4167e2, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 4167e5	 Bytes: 5
  %loadMem1_4167e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4167e5 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4167e5, i64 -88933, i64 5, i64 5)
  store %struct.Memory* %call1_4167e5, %struct.Memory** %MEMORY

  %loadMem2_4167e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4167e5 = load i64, i64* %3
  %call2_4167e5 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_4167e5, %struct.Memory* %loadMem2_4167e5)
  store %struct.Memory* %call2_4167e5, %struct.Memory** %MEMORY

  ; Code: movl -0x68(%rbp), %edi	 RIP: 4167ea	 Bytes: 3
  %loadMem_4167ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167ea = call %struct.Memory* @routine_movl_MINUS0x68__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167ea)
  store %struct.Memory* %call_4167ea, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %edi	 RIP: 4167ed	 Bytes: 2
  %loadMem_4167ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167ed = call %struct.Memory* @routine_cmpl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167ed)
  store %struct.Memory* %call_4167ed, %struct.Memory** %MEMORY

  ; Code: jl .L_416838	 RIP: 4167ef	 Bytes: 6
  %loadMem_4167ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167ef = call %struct.Memory* @routine_jl_.L_416838(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167ef, i8* %BRANCH_TAKEN, i64 73, i64 6, i64 6)
  store %struct.Memory* %call_4167ef, %struct.Memory** %MEMORY

  %loadBr_4167ef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4167ef = icmp eq i8 %loadBr_4167ef, 1
  br i1 %cmpBr_4167ef, label %block_.L_416838, label %block_4167f5

block_4167f5:
  ; Code: movslq -0x28(%rbp), %rax	 RIP: 4167f5	 Bytes: 4
  %loadMem_4167f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167f5 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167f5)
  store %struct.Memory* %call_4167f5, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rax,4), %edi	 RIP: 4167f9	 Bytes: 7
  %loadMem_4167f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4167f9 = call %struct.Memory* @routine_movl_0x62dab0___rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4167f9)
  store %struct.Memory* %call_4167f9, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 416800	 Bytes: 5
  %loadMem1_416800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_416800 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_416800, i64 -88960, i64 5, i64 5)
  store %struct.Memory* %call1_416800, %struct.Memory** %MEMORY

  %loadMem2_416800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416800 = load i64, i64* %3
  %call2_416800 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_416800, %struct.Memory* %loadMem2_416800)
  store %struct.Memory* %call2_416800, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 416805	 Bytes: 4
  %loadMem_416805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416805 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416805)
  store %struct.Memory* %call_416805, %struct.Memory** %MEMORY

  ; Code: movslq 0x866540(,%rcx,4), %rcx	 RIP: 416809	 Bytes: 8
  %loadMem_416809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416809 = call %struct.Memory* @routine_movslq_0x866540___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416809)
  store %struct.Memory* %call_416809, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rcx,4), %edi	 RIP: 416811	 Bytes: 7
  %loadMem_416811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416811 = call %struct.Memory* @routine_movl_0x62dab0___rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416811)
  store %struct.Memory* %call_416811, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6c(%rbp)	 RIP: 416818	 Bytes: 3
  %loadMem_416818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416818 = call %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416818)
  store %struct.Memory* %call_416818, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 41681b	 Bytes: 5
  %loadMem1_41681b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41681b = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41681b, i64 -88987, i64 5, i64 5)
  store %struct.Memory* %call1_41681b, %struct.Memory** %MEMORY

  %loadMem2_41681b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41681b = load i64, i64* %3
  %call2_41681b = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_41681b, %struct.Memory* %loadMem2_41681b)
  store %struct.Memory* %call2_41681b, %struct.Memory** %MEMORY

  ; Code: sarl $0x4, %eax	 RIP: 416820	 Bytes: 3
  %loadMem_416820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416820 = call %struct.Memory* @routine_sarl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416820)
  store %struct.Memory* %call_416820, %struct.Memory** %MEMORY

  ; Code: movl -0x6c(%rbp), %edi	 RIP: 416823	 Bytes: 3
  %loadMem_416823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416823 = call %struct.Memory* @routine_movl_MINUS0x6c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416823)
  store %struct.Memory* %call_416823, %struct.Memory** %MEMORY

  ; Code: subl %eax, %edi	 RIP: 416826	 Bytes: 2
  %loadMem_416826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416826 = call %struct.Memory* @routine_subl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416826)
  store %struct.Memory* %call_416826, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 416828	 Bytes: 4
  %loadMem_416828 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416828 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416828)
  store %struct.Memory* %call_416828, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 41682c	 Bytes: 4
  %loadMem_41682c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41682c = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41682c)
  store %struct.Memory* %call_41682c, %struct.Memory** %MEMORY

  ; Code: movl %edi, (%rcx,%rdx,4)	 RIP: 416830	 Bytes: 3
  %loadMem_416830 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416830 = call %struct.Memory* @routine_movl__edi____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416830)
  store %struct.Memory* %call_416830, %struct.Memory** %MEMORY

  ; Code: jmpq .L_416869	 RIP: 416833	 Bytes: 5
  %loadMem_416833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416833 = call %struct.Memory* @routine_jmpq_.L_416869(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416833, i64 54, i64 5)
  store %struct.Memory* %call_416833, %struct.Memory** %MEMORY

  br label %block_.L_416869

  ; Code: .L_416838:	 RIP: 416838	 Bytes: 0
block_.L_416838:

  ; Code: movl $0x1, %eax	 RIP: 416838	 Bytes: 5
  %loadMem_416838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416838 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416838)
  store %struct.Memory* %call_416838, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 41683d	 Bytes: 2
  %loadMem_41683d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41683d = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41683d)
  store %struct.Memory* %call_41683d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 41683f	 Bytes: 8
  %loadMem_41683f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41683f = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41683f)
  store %struct.Memory* %call_41683f, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %eax	 RIP: 416847	 Bytes: 3
  %loadMem_416847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416847 = call %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416847)
  store %struct.Memory* %call_416847, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 41684a	 Bytes: 3
  %loadMem_41684a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41684a = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41684a)
  store %struct.Memory* %call_41684a, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edx	 RIP: 41684d	 Bytes: 3
  %loadMem_41684d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41684d = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41684d)
  store %struct.Memory* %call_41684d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 416850	 Bytes: 2
  %loadMem_416850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416850 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416850)
  store %struct.Memory* %call_416850, %struct.Memory** %MEMORY

  ; Code: callq .see	 RIP: 416852	 Bytes: 5
  %loadMem1_416852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_416852 = call %struct.Memory* @routine_callq_.see(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_416852, i64 23822, i64 5, i64 5)
  store %struct.Memory* %call1_416852, %struct.Memory** %MEMORY

  %loadMem2_416852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416852 = load i64, i64* %3
  %call2_416852 = call %struct.Memory* @sub_41c560.see(%struct.State* %0, i64  %loadPC_416852, %struct.Memory* %loadMem2_416852)
  store %struct.Memory* %call2_416852, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 416857	 Bytes: 3
  %loadMem_416857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416857 = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416857)
  store %struct.Memory* %call_416857, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %eax	 RIP: 41685a	 Bytes: 3
  %loadMem_41685a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41685a = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41685a)
  store %struct.Memory* %call_41685a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %r8	 RIP: 41685d	 Bytes: 4
  %loadMem_41685d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41685d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41685d)
  store %struct.Memory* %call_41685d, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %r9	 RIP: 416861	 Bytes: 4
  %loadMem_416861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416861 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416861)
  store %struct.Memory* %call_416861, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%r8,%r9,4)	 RIP: 416865	 Bytes: 4
  %loadMem_416865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416865 = call %struct.Memory* @routine_movl__eax____r8__r9_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416865)
  store %struct.Memory* %call_416865, %struct.Memory** %MEMORY

  ; Code: .L_416869:	 RIP: 416869	 Bytes: 0
  br label %block_.L_416869
block_.L_416869:

  ; Code: jmpq .L_41686e	 RIP: 416869	 Bytes: 5
  %loadMem_416869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416869 = call %struct.Memory* @routine_jmpq_.L_41686e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416869, i64 5, i64 5)
  store %struct.Memory* %call_416869, %struct.Memory** %MEMORY

  br label %block_.L_41686e

  ; Code: .L_41686e:	 RIP: 41686e	 Bytes: 0
block_.L_41686e:

  ; Code: jmpq .L_416b33	 RIP: 41686e	 Bytes: 5
  %loadMem_41686e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41686e = call %struct.Memory* @routine_jmpq_.L_416b33(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41686e, i64 709, i64 5)
  store %struct.Memory* %call_41686e, %struct.Memory** %MEMORY

  br label %block_.L_416b33

  ; Code: .L_416873:	 RIP: 416873	 Bytes: 0
block_.L_416873:

  ; Code: cmpl $0xfffffffe, -0x20(%rbp)	 RIP: 416873	 Bytes: 4
  %loadMem_416873 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416873 = call %struct.Memory* @routine_cmpl__0xfffffffe__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416873)
  store %struct.Memory* %call_416873, %struct.Memory** %MEMORY

  ; Code: jne .L_416a14	 RIP: 416877	 Bytes: 6
  %loadMem_416877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416877 = call %struct.Memory* @routine_jne_.L_416a14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416877, i8* %BRANCH_TAKEN, i64 413, i64 6, i64 6)
  store %struct.Memory* %call_416877, %struct.Memory** %MEMORY

  %loadBr_416877 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416877 = icmp eq i8 %loadBr_416877, 1
  br i1 %cmpBr_416877, label %block_.L_416a14, label %block_41687d

block_41687d:
  ; Code: movq $0x63ae50, %rax	 RIP: 41687d	 Bytes: 10
  %loadMem_41687d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41687d = call %struct.Memory* @routine_movq__0x63ae50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41687d)
  store %struct.Memory* %call_41687d, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %ecx	 RIP: 416887	 Bytes: 3
  %loadMem_416887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416887 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416887)
  store %struct.Memory* %call_416887, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %edx	 RIP: 41688a	 Bytes: 7
  %loadMem_41688a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41688a = call %struct.Memory* @routine_movl_0x886bc0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41688a)
  store %struct.Memory* %call_41688a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 416891	 Bytes: 3
  %loadMem_416891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416891 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416891)
  store %struct.Memory* %call_416891, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 416894	 Bytes: 3
  %loadMem_416894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416894 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416894)
  store %struct.Memory* %call_416894, %struct.Memory** %MEMORY

  ; Code: imulq $0x1c20, %rsi, %rsi	 RIP: 416897	 Bytes: 7
  %loadMem_416897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416897 = call %struct.Memory* @routine_imulq__0x1c20___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416897)
  store %struct.Memory* %call_416897, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rax	 RIP: 41689e	 Bytes: 3
  %loadMem_41689e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41689e = call %struct.Memory* @routine_addq__rsi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41689e)
  store %struct.Memory* %call_41689e, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %edx	 RIP: 4168a1	 Bytes: 7
  %loadMem_4168a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168a1 = call %struct.Memory* @routine_movl_0x886bc0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168a1)
  store %struct.Memory* %call_4168a1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 4168a8	 Bytes: 3
  %loadMem_4168a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168a8 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168a8)
  store %struct.Memory* %call_4168a8, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 4168ab	 Bytes: 3
  %loadMem_4168ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168ab = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168ab)
  store %struct.Memory* %call_4168ab, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rsi, %rsi	 RIP: 4168ae	 Bytes: 4
  %loadMem_4168ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168ae = call %struct.Memory* @routine_imulq__0x18___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168ae)
  store %struct.Memory* %call_4168ae, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rax	 RIP: 4168b2	 Bytes: 3
  %loadMem_4168b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168b2 = call %struct.Memory* @routine_addq__rsi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168b2)
  store %struct.Memory* %call_4168b2, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax), %ecx	 RIP: 4168b5	 Bytes: 2
  %loadMem_4168b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168b5 = call %struct.Memory* @routine_cmpl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168b5)
  store %struct.Memory* %call_4168b5, %struct.Memory** %MEMORY

  ; Code: jne .L_416a0f	 RIP: 4168b7	 Bytes: 6
  %loadMem_4168b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168b7 = call %struct.Memory* @routine_jne_.L_416a0f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168b7, i8* %BRANCH_TAKEN, i64 344, i64 6, i64 6)
  store %struct.Memory* %call_4168b7, %struct.Memory** %MEMORY

  %loadBr_4168b7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4168b7 = icmp eq i8 %loadBr_4168b7, 1
  br i1 %cmpBr_4168b7, label %block_.L_416a0f, label %block_4168bd

block_4168bd:
  ; Code: movq $0x63ae50, %rax	 RIP: 4168bd	 Bytes: 10
  %loadMem_4168bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168bd = call %struct.Memory* @routine_movq__0x63ae50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168bd)
  store %struct.Memory* %call_4168bd, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 4168c7	 Bytes: 3
  %loadMem_4168c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168c7 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168c7)
  store %struct.Memory* %call_4168c7, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %edx	 RIP: 4168ca	 Bytes: 7
  %loadMem_4168ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168ca = call %struct.Memory* @routine_movl_0x886bc0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168ca)
  store %struct.Memory* %call_4168ca, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 4168d1	 Bytes: 3
  %loadMem_4168d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168d1 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168d1)
  store %struct.Memory* %call_4168d1, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 4168d4	 Bytes: 3
  %loadMem_4168d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168d4 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168d4)
  store %struct.Memory* %call_4168d4, %struct.Memory** %MEMORY

  ; Code: imulq $0x1c20, %rsi, %rsi	 RIP: 4168d7	 Bytes: 7
  %loadMem_4168d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168d7 = call %struct.Memory* @routine_imulq__0x1c20___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168d7)
  store %struct.Memory* %call_4168d7, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rax	 RIP: 4168de	 Bytes: 3
  %loadMem_4168de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168de = call %struct.Memory* @routine_addq__rsi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168de)
  store %struct.Memory* %call_4168de, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %edx	 RIP: 4168e1	 Bytes: 7
  %loadMem_4168e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168e1 = call %struct.Memory* @routine_movl_0x886bc0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168e1)
  store %struct.Memory* %call_4168e1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 4168e8	 Bytes: 3
  %loadMem_4168e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168e8 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168e8)
  store %struct.Memory* %call_4168e8, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 4168eb	 Bytes: 3
  %loadMem_4168eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168eb = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168eb)
  store %struct.Memory* %call_4168eb, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rsi, %rsi	 RIP: 4168ee	 Bytes: 4
  %loadMem_4168ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168ee = call %struct.Memory* @routine_imulq__0x18___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168ee)
  store %struct.Memory* %call_4168ee, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rax	 RIP: 4168f2	 Bytes: 3
  %loadMem_4168f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168f2 = call %struct.Memory* @routine_addq__rsi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168f2)
  store %struct.Memory* %call_4168f2, %struct.Memory** %MEMORY

  ; Code: cmpl 0x4(%rax), %ecx	 RIP: 4168f5	 Bytes: 3
  %loadMem_4168f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168f5 = call %struct.Memory* @routine_cmpl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168f5)
  store %struct.Memory* %call_4168f5, %struct.Memory** %MEMORY

  ; Code: jne .L_416a0f	 RIP: 4168f8	 Bytes: 6
  %loadMem_4168f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168f8 = call %struct.Memory* @routine_jne_.L_416a0f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168f8, i8* %BRANCH_TAKEN, i64 279, i64 6, i64 6)
  store %struct.Memory* %call_4168f8, %struct.Memory** %MEMORY

  %loadBr_4168f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4168f8 = icmp eq i8 %loadBr_4168f8, 1
  br i1 %cmpBr_4168f8, label %block_.L_416a0f, label %block_4168fe

block_4168fe:
  ; Code: movq $0x63ae50, %rax	 RIP: 4168fe	 Bytes: 10
  %loadMem_4168fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4168fe = call %struct.Memory* @routine_movq__0x63ae50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4168fe)
  store %struct.Memory* %call_4168fe, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 416908	 Bytes: 3
  %loadMem_416908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416908 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416908)
  store %struct.Memory* %call_416908, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %edx	 RIP: 41690b	 Bytes: 7
  %loadMem_41690b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41690b = call %struct.Memory* @routine_movl_0x886bc0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41690b)
  store %struct.Memory* %call_41690b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 416912	 Bytes: 3
  %loadMem_416912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416912 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416912)
  store %struct.Memory* %call_416912, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 416915	 Bytes: 3
  %loadMem_416915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416915 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416915)
  store %struct.Memory* %call_416915, %struct.Memory** %MEMORY

  ; Code: imulq $0x1c20, %rsi, %rsi	 RIP: 416918	 Bytes: 7
  %loadMem_416918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416918 = call %struct.Memory* @routine_imulq__0x1c20___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416918)
  store %struct.Memory* %call_416918, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rax	 RIP: 41691f	 Bytes: 3
  %loadMem_41691f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41691f = call %struct.Memory* @routine_addq__rsi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41691f)
  store %struct.Memory* %call_41691f, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %edx	 RIP: 416922	 Bytes: 7
  %loadMem_416922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416922 = call %struct.Memory* @routine_movl_0x886bc0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416922)
  store %struct.Memory* %call_416922, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 416929	 Bytes: 3
  %loadMem_416929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416929 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416929)
  store %struct.Memory* %call_416929, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 41692c	 Bytes: 3
  %loadMem_41692c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41692c = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41692c)
  store %struct.Memory* %call_41692c, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rsi, %rsi	 RIP: 41692f	 Bytes: 4
  %loadMem_41692f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41692f = call %struct.Memory* @routine_imulq__0x18___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41692f)
  store %struct.Memory* %call_41692f, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rax	 RIP: 416933	 Bytes: 3
  %loadMem_416933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416933 = call %struct.Memory* @routine_addq__rsi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416933)
  store %struct.Memory* %call_416933, %struct.Memory** %MEMORY

  ; Code: cmpl 0xc(%rax), %ecx	 RIP: 416936	 Bytes: 3
  %loadMem_416936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416936 = call %struct.Memory* @routine_cmpl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416936)
  store %struct.Memory* %call_416936, %struct.Memory** %MEMORY

  ; Code: jne .L_416a0f	 RIP: 416939	 Bytes: 6
  %loadMem_416939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416939 = call %struct.Memory* @routine_jne_.L_416a0f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416939, i8* %BRANCH_TAKEN, i64 214, i64 6, i64 6)
  store %struct.Memory* %call_416939, %struct.Memory** %MEMORY

  %loadBr_416939 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416939 = icmp eq i8 %loadBr_416939, 1
  br i1 %cmpBr_416939, label %block_.L_416a0f, label %block_41693f

block_41693f:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 41693f	 Bytes: 4
  %loadMem_41693f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41693f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41693f)
  store %struct.Memory* %call_41693f, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 416943	 Bytes: 4
  %loadMem_416943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416943 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416943)
  store %struct.Memory* %call_416943, %struct.Memory** %MEMORY

  ; Code: movl $0x5f5e100, (%rax,%rcx,4)	 RIP: 416947	 Bytes: 7
  %loadMem_416947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416947 = call %struct.Memory* @routine_movl__0x5f5e100____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416947)
  store %struct.Memory* %call_416947, %struct.Memory** %MEMORY

  ; Code: cmpl $0xd, -0x28(%rbp)	 RIP: 41694e	 Bytes: 4
  %loadMem_41694e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41694e = call %struct.Memory* @routine_cmpl__0xd__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41694e)
  store %struct.Memory* %call_41694e, %struct.Memory** %MEMORY

  ; Code: je .L_416a0a	 RIP: 416952	 Bytes: 6
  %loadMem_416952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416952 = call %struct.Memory* @routine_je_.L_416a0a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416952, i8* %BRANCH_TAKEN, i64 184, i64 6, i64 6)
  store %struct.Memory* %call_416952, %struct.Memory** %MEMORY

  %loadBr_416952 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416952 = icmp eq i8 %loadBr_416952, 1
  br i1 %cmpBr_416952, label %block_.L_416a0a, label %block_416958

block_416958:
  ; Code: movslq -0x28(%rbp), %rax	 RIP: 416958	 Bytes: 4
  %loadMem_416958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416958 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416958)
  store %struct.Memory* %call_416958, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rax,4), %edi	 RIP: 41695c	 Bytes: 7
  %loadMem_41695c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41695c = call %struct.Memory* @routine_movl_0x62dab0___rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41695c)
  store %struct.Memory* %call_41695c, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 416963	 Bytes: 5
  %loadMem1_416963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_416963 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_416963, i64 -89315, i64 5, i64 5)
  store %struct.Memory* %call1_416963, %struct.Memory** %MEMORY

  %loadMem2_416963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416963 = load i64, i64* %3
  %call2_416963 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_416963, %struct.Memory* %loadMem2_416963)
  store %struct.Memory* %call2_416963, %struct.Memory** %MEMORY

  ; Code: addl $0xf, %eax	 RIP: 416968	 Bytes: 3
  %loadMem_416968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416968 = call %struct.Memory* @routine_addl__0xf___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416968)
  store %struct.Memory* %call_416968, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 41696b	 Bytes: 4
  %loadMem_41696b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41696b = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41696b)
  store %struct.Memory* %call_41696b, %struct.Memory** %MEMORY

  ; Code: movslq 0x866540(,%rcx,4), %rcx	 RIP: 41696f	 Bytes: 8
  %loadMem_41696f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41696f = call %struct.Memory* @routine_movslq_0x866540___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41696f)
  store %struct.Memory* %call_41696f, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rcx,4), %edi	 RIP: 416977	 Bytes: 7
  %loadMem_416977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416977 = call %struct.Memory* @routine_movl_0x62dab0___rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416977)
  store %struct.Memory* %call_416977, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x70(%rbp)	 RIP: 41697e	 Bytes: 3
  %loadMem_41697e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41697e = call %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41697e)
  store %struct.Memory* %call_41697e, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 416981	 Bytes: 5
  %loadMem1_416981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_416981 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_416981, i64 -89345, i64 5, i64 5)
  store %struct.Memory* %call1_416981, %struct.Memory** %MEMORY

  %loadMem2_416981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416981 = load i64, i64* %3
  %call2_416981 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_416981, %struct.Memory* %loadMem2_416981)
  store %struct.Memory* %call2_416981, %struct.Memory** %MEMORY

  ; Code: movl -0x70(%rbp), %edi	 RIP: 416986	 Bytes: 3
  %loadMem_416986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416986 = call %struct.Memory* @routine_movl_MINUS0x70__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416986)
  store %struct.Memory* %call_416986, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %edi	 RIP: 416989	 Bytes: 2
  %loadMem_416989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416989 = call %struct.Memory* @routine_cmpl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416989)
  store %struct.Memory* %call_416989, %struct.Memory** %MEMORY

  ; Code: jl .L_4169d4	 RIP: 41698b	 Bytes: 6
  %loadMem_41698b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41698b = call %struct.Memory* @routine_jl_.L_4169d4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41698b, i8* %BRANCH_TAKEN, i64 73, i64 6, i64 6)
  store %struct.Memory* %call_41698b, %struct.Memory** %MEMORY

  %loadBr_41698b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41698b = icmp eq i8 %loadBr_41698b, 1
  br i1 %cmpBr_41698b, label %block_.L_4169d4, label %block_416991

block_416991:
  ; Code: movslq -0x28(%rbp), %rax	 RIP: 416991	 Bytes: 4
  %loadMem_416991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416991 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416991)
  store %struct.Memory* %call_416991, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rax,4), %edi	 RIP: 416995	 Bytes: 7
  %loadMem_416995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416995 = call %struct.Memory* @routine_movl_0x62dab0___rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416995)
  store %struct.Memory* %call_416995, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 41699c	 Bytes: 5
  %loadMem1_41699c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41699c = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41699c, i64 -89372, i64 5, i64 5)
  store %struct.Memory* %call1_41699c, %struct.Memory** %MEMORY

  %loadMem2_41699c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41699c = load i64, i64* %3
  %call2_41699c = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_41699c, %struct.Memory* %loadMem2_41699c)
  store %struct.Memory* %call2_41699c, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4169a1	 Bytes: 4
  %loadMem_4169a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169a1 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169a1)
  store %struct.Memory* %call_4169a1, %struct.Memory** %MEMORY

  ; Code: movslq 0x866540(,%rcx,4), %rcx	 RIP: 4169a5	 Bytes: 8
  %loadMem_4169a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169a5 = call %struct.Memory* @routine_movslq_0x866540___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169a5)
  store %struct.Memory* %call_4169a5, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rcx,4), %edi	 RIP: 4169ad	 Bytes: 7
  %loadMem_4169ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169ad = call %struct.Memory* @routine_movl_0x62dab0___rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169ad)
  store %struct.Memory* %call_4169ad, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x74(%rbp)	 RIP: 4169b4	 Bytes: 3
  %loadMem_4169b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169b4 = call %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169b4)
  store %struct.Memory* %call_4169b4, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 4169b7	 Bytes: 5
  %loadMem1_4169b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4169b7 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4169b7, i64 -89399, i64 5, i64 5)
  store %struct.Memory* %call1_4169b7, %struct.Memory** %MEMORY

  %loadMem2_4169b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4169b7 = load i64, i64* %3
  %call2_4169b7 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_4169b7, %struct.Memory* %loadMem2_4169b7)
  store %struct.Memory* %call2_4169b7, %struct.Memory** %MEMORY

  ; Code: sarl $0x4, %eax	 RIP: 4169bc	 Bytes: 3
  %loadMem_4169bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169bc = call %struct.Memory* @routine_sarl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169bc)
  store %struct.Memory* %call_4169bc, %struct.Memory** %MEMORY

  ; Code: movl -0x74(%rbp), %edi	 RIP: 4169bf	 Bytes: 3
  %loadMem_4169bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169bf = call %struct.Memory* @routine_movl_MINUS0x74__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169bf)
  store %struct.Memory* %call_4169bf, %struct.Memory** %MEMORY

  ; Code: subl %eax, %edi	 RIP: 4169c2	 Bytes: 2
  %loadMem_4169c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169c2 = call %struct.Memory* @routine_subl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169c2)
  store %struct.Memory* %call_4169c2, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4169c4	 Bytes: 4
  %loadMem_4169c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169c4 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169c4)
  store %struct.Memory* %call_4169c4, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 4169c8	 Bytes: 4
  %loadMem_4169c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169c8 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169c8)
  store %struct.Memory* %call_4169c8, %struct.Memory** %MEMORY

  ; Code: movl %edi, (%rcx,%rdx,4)	 RIP: 4169cc	 Bytes: 3
  %loadMem_4169cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169cc = call %struct.Memory* @routine_movl__edi____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169cc)
  store %struct.Memory* %call_4169cc, %struct.Memory** %MEMORY

  ; Code: jmpq .L_416a05	 RIP: 4169cf	 Bytes: 5
  %loadMem_4169cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169cf = call %struct.Memory* @routine_jmpq_.L_416a05(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169cf, i64 54, i64 5)
  store %struct.Memory* %call_4169cf, %struct.Memory** %MEMORY

  br label %block_.L_416a05

  ; Code: .L_4169d4:	 RIP: 4169d4	 Bytes: 0
block_.L_4169d4:

  ; Code: movl $0x1, %eax	 RIP: 4169d4	 Bytes: 5
  %loadMem_4169d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169d4 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169d4)
  store %struct.Memory* %call_4169d4, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 4169d9	 Bytes: 2
  %loadMem_4169d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169d9 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169d9)
  store %struct.Memory* %call_4169d9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 4169db	 Bytes: 8
  %loadMem_4169db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169db = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169db)
  store %struct.Memory* %call_4169db, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %eax	 RIP: 4169e3	 Bytes: 3
  %loadMem_4169e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169e3 = call %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169e3)
  store %struct.Memory* %call_4169e3, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 4169e6	 Bytes: 3
  %loadMem_4169e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169e6 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169e6)
  store %struct.Memory* %call_4169e6, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edx	 RIP: 4169e9	 Bytes: 3
  %loadMem_4169e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169e9 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169e9)
  store %struct.Memory* %call_4169e9, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 4169ec	 Bytes: 2
  %loadMem_4169ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169ec = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169ec)
  store %struct.Memory* %call_4169ec, %struct.Memory** %MEMORY

  ; Code: callq .see	 RIP: 4169ee	 Bytes: 5
  %loadMem1_4169ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4169ee = call %struct.Memory* @routine_callq_.see(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4169ee, i64 23410, i64 5, i64 5)
  store %struct.Memory* %call1_4169ee, %struct.Memory** %MEMORY

  %loadMem2_4169ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4169ee = load i64, i64* %3
  %call2_4169ee = call %struct.Memory* @sub_41c560.see(%struct.State* %0, i64  %loadPC_4169ee, %struct.Memory* %loadMem2_4169ee)
  store %struct.Memory* %call2_4169ee, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 4169f3	 Bytes: 3
  %loadMem_4169f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169f3 = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169f3)
  store %struct.Memory* %call_4169f3, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %eax	 RIP: 4169f6	 Bytes: 3
  %loadMem_4169f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169f6 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169f6)
  store %struct.Memory* %call_4169f6, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %r8	 RIP: 4169f9	 Bytes: 4
  %loadMem_4169f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169f9 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169f9)
  store %struct.Memory* %call_4169f9, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %r9	 RIP: 4169fd	 Bytes: 4
  %loadMem_4169fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4169fd = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4169fd)
  store %struct.Memory* %call_4169fd, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%r8,%r9,4)	 RIP: 416a01	 Bytes: 4
  %loadMem_416a01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a01 = call %struct.Memory* @routine_movl__eax____r8__r9_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a01)
  store %struct.Memory* %call_416a01, %struct.Memory** %MEMORY

  ; Code: .L_416a05:	 RIP: 416a05	 Bytes: 0
  br label %block_.L_416a05
block_.L_416a05:

  ; Code: jmpq .L_416a0a	 RIP: 416a05	 Bytes: 5
  %loadMem_416a05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a05 = call %struct.Memory* @routine_jmpq_.L_416a0a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a05, i64 5, i64 5)
  store %struct.Memory* %call_416a05, %struct.Memory** %MEMORY

  br label %block_.L_416a0a

  ; Code: .L_416a0a:	 RIP: 416a0a	 Bytes: 0
block_.L_416a0a:

  ; Code: jmpq .L_416a0f	 RIP: 416a0a	 Bytes: 5
  %loadMem_416a0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a0a = call %struct.Memory* @routine_jmpq_.L_416a0f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a0a, i64 5, i64 5)
  store %struct.Memory* %call_416a0a, %struct.Memory** %MEMORY

  br label %block_.L_416a0f

  ; Code: .L_416a0f:	 RIP: 416a0f	 Bytes: 0
block_.L_416a0f:

  ; Code: jmpq .L_416b2e	 RIP: 416a0f	 Bytes: 5
  %loadMem_416a0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a0f = call %struct.Memory* @routine_jmpq_.L_416b2e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a0f, i64 287, i64 5)
  store %struct.Memory* %call_416a0f, %struct.Memory** %MEMORY

  br label %block_.L_416b2e

  ; Code: .L_416a14:	 RIP: 416a14	 Bytes: 0
block_.L_416a14:

  ; Code: cmpl $0xd, -0x28(%rbp)	 RIP: 416a14	 Bytes: 4
  %loadMem_416a14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a14 = call %struct.Memory* @routine_cmpl__0xd__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a14)
  store %struct.Memory* %call_416a14, %struct.Memory** %MEMORY

  ; Code: je .L_416b1a	 RIP: 416a18	 Bytes: 6
  %loadMem_416a18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a18 = call %struct.Memory* @routine_je_.L_416b1a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a18, i8* %BRANCH_TAKEN, i64 258, i64 6, i64 6)
  store %struct.Memory* %call_416a18, %struct.Memory** %MEMORY

  %loadBr_416a18 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416a18 = icmp eq i8 %loadBr_416a18, 1
  br i1 %cmpBr_416a18, label %block_.L_416b1a, label %block_416a1e

block_416a1e:
  ; Code: movslq -0x28(%rbp), %rax	 RIP: 416a1e	 Bytes: 4
  %loadMem_416a1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a1e = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a1e)
  store %struct.Memory* %call_416a1e, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rax,4), %edi	 RIP: 416a22	 Bytes: 7
  %loadMem_416a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a22 = call %struct.Memory* @routine_movl_0x62dab0___rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a22)
  store %struct.Memory* %call_416a22, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 416a29	 Bytes: 5
  %loadMem1_416a29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_416a29 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_416a29, i64 -89513, i64 5, i64 5)
  store %struct.Memory* %call1_416a29, %struct.Memory** %MEMORY

  %loadMem2_416a29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416a29 = load i64, i64* %3
  %call2_416a29 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_416a29, %struct.Memory* %loadMem2_416a29)
  store %struct.Memory* %call2_416a29, %struct.Memory** %MEMORY

  ; Code: addl $0xf, %eax	 RIP: 416a2e	 Bytes: 3
  %loadMem_416a2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a2e = call %struct.Memory* @routine_addl__0xf___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a2e)
  store %struct.Memory* %call_416a2e, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 416a31	 Bytes: 4
  %loadMem_416a31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a31 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a31)
  store %struct.Memory* %call_416a31, %struct.Memory** %MEMORY

  ; Code: movslq 0x866540(,%rcx,4), %rcx	 RIP: 416a35	 Bytes: 8
  %loadMem_416a35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a35 = call %struct.Memory* @routine_movslq_0x866540___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a35)
  store %struct.Memory* %call_416a35, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rcx,4), %edi	 RIP: 416a3d	 Bytes: 7
  %loadMem_416a3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a3d = call %struct.Memory* @routine_movl_0x62dab0___rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a3d)
  store %struct.Memory* %call_416a3d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x78(%rbp)	 RIP: 416a44	 Bytes: 3
  %loadMem_416a44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a44 = call %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a44)
  store %struct.Memory* %call_416a44, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 416a47	 Bytes: 5
  %loadMem1_416a47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_416a47 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_416a47, i64 -89543, i64 5, i64 5)
  store %struct.Memory* %call1_416a47, %struct.Memory** %MEMORY

  %loadMem2_416a47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416a47 = load i64, i64* %3
  %call2_416a47 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_416a47, %struct.Memory* %loadMem2_416a47)
  store %struct.Memory* %call2_416a47, %struct.Memory** %MEMORY

  ; Code: movl -0x78(%rbp), %edi	 RIP: 416a4c	 Bytes: 3
  %loadMem_416a4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a4c = call %struct.Memory* @routine_movl_MINUS0x78__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a4c)
  store %struct.Memory* %call_416a4c, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %edi	 RIP: 416a4f	 Bytes: 2
  %loadMem_416a4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a4f = call %struct.Memory* @routine_cmpl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a4f)
  store %struct.Memory* %call_416a4f, %struct.Memory** %MEMORY

  ; Code: jl .L_416ab5	 RIP: 416a51	 Bytes: 6
  %loadMem_416a51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a51 = call %struct.Memory* @routine_jl_.L_416ab5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a51, i8* %BRANCH_TAKEN, i64 100, i64 6, i64 6)
  store %struct.Memory* %call_416a51, %struct.Memory** %MEMORY

  %loadBr_416a51 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416a51 = icmp eq i8 %loadBr_416a51, 1
  br i1 %cmpBr_416a51, label %block_.L_416ab5, label %block_416a57

block_416a57:
  ; Code: movslq -0x28(%rbp), %rax	 RIP: 416a57	 Bytes: 4
  %loadMem_416a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a57 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a57)
  store %struct.Memory* %call_416a57, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rax,4), %edi	 RIP: 416a5b	 Bytes: 7
  %loadMem_416a5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a5b = call %struct.Memory* @routine_movl_0x62dab0___rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a5b)
  store %struct.Memory* %call_416a5b, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 416a62	 Bytes: 5
  %loadMem1_416a62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_416a62 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_416a62, i64 -89570, i64 5, i64 5)
  store %struct.Memory* %call1_416a62, %struct.Memory** %MEMORY

  %loadMem2_416a62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416a62 = load i64, i64* %3
  %call2_416a62 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_416a62, %struct.Memory* %loadMem2_416a62)
  store %struct.Memory* %call2_416a62, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 416a67	 Bytes: 4
  %loadMem_416a67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a67 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a67)
  store %struct.Memory* %call_416a67, %struct.Memory** %MEMORY

  ; Code: movslq 0x866540(,%rcx,4), %rcx	 RIP: 416a6b	 Bytes: 8
  %loadMem_416a6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a6b = call %struct.Memory* @routine_movslq_0x866540___rcx_4____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a6b)
  store %struct.Memory* %call_416a6b, %struct.Memory** %MEMORY

  ; Code: movl 0x62dab0(,%rcx,4), %edi	 RIP: 416a73	 Bytes: 7
  %loadMem_416a73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a73 = call %struct.Memory* @routine_movl_0x62dab0___rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a73)
  store %struct.Memory* %call_416a73, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x7c(%rbp)	 RIP: 416a7a	 Bytes: 3
  %loadMem_416a7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a7a = call %struct.Memory* @routine_movl__eax__MINUS0x7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a7a)
  store %struct.Memory* %call_416a7a, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 416a7d	 Bytes: 5
  %loadMem1_416a7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_416a7d = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_416a7d, i64 -89597, i64 5, i64 5)
  store %struct.Memory* %call1_416a7d, %struct.Memory** %MEMORY

  %loadMem2_416a7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416a7d = load i64, i64* %3
  %call2_416a7d = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_416a7d, %struct.Memory* %loadMem2_416a7d)
  store %struct.Memory* %call2_416a7d, %struct.Memory** %MEMORY

  ; Code: sarl $0x4, %eax	 RIP: 416a82	 Bytes: 3
  %loadMem_416a82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a82 = call %struct.Memory* @routine_sarl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a82)
  store %struct.Memory* %call_416a82, %struct.Memory** %MEMORY

  ; Code: movl -0x7c(%rbp), %edi	 RIP: 416a85	 Bytes: 3
  %loadMem_416a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a85 = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a85)
  store %struct.Memory* %call_416a85, %struct.Memory** %MEMORY

  ; Code: subl %eax, %edi	 RIP: 416a88	 Bytes: 2
  %loadMem_416a88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a88 = call %struct.Memory* @routine_subl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a88)
  store %struct.Memory* %call_416a88, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 416a8a	 Bytes: 4
  %loadMem_416a8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a8a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a8a)
  store %struct.Memory* %call_416a8a, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 416a8e	 Bytes: 4
  %loadMem_416a8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a8e = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a8e)
  store %struct.Memory* %call_416a8e, %struct.Memory** %MEMORY

  ; Code: movl %edi, (%rcx,%rdx,4)	 RIP: 416a92	 Bytes: 3
  %loadMem_416a92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a92 = call %struct.Memory* @routine_movl__edi____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a92)
  store %struct.Memory* %call_416a92, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 416a95	 Bytes: 4
  %loadMem_416a95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a95 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a95)
  store %struct.Memory* %call_416a95, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 416a99	 Bytes: 4
  %loadMem_416a99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a99 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a99)
  store %struct.Memory* %call_416a99, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %eax	 RIP: 416a9d	 Bytes: 3
  %loadMem_416a9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416a9d = call %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416a9d)
  store %struct.Memory* %call_416a9d, %struct.Memory** %MEMORY

  ; Code: addl $0x2faf080, %eax	 RIP: 416aa0	 Bytes: 5
  %loadMem_416aa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416aa0 = call %struct.Memory* @routine_addl__0x2faf080___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416aa0)
  store %struct.Memory* %call_416aa0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 416aa5	 Bytes: 4
  %loadMem_416aa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416aa5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416aa5)
  store %struct.Memory* %call_416aa5, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 416aa9	 Bytes: 4
  %loadMem_416aa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416aa9 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416aa9)
  store %struct.Memory* %call_416aa9, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 416aad	 Bytes: 3
  %loadMem_416aad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416aad = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416aad)
  store %struct.Memory* %call_416aad, %struct.Memory** %MEMORY

  ; Code: jmpq .L_416b15	 RIP: 416ab0	 Bytes: 5
  %loadMem_416ab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ab0 = call %struct.Memory* @routine_jmpq_.L_416b15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ab0, i64 101, i64 5)
  store %struct.Memory* %call_416ab0, %struct.Memory** %MEMORY

  br label %block_.L_416b15

  ; Code: .L_416ab5:	 RIP: 416ab5	 Bytes: 0
block_.L_416ab5:

  ; Code: movl $0x1, %eax	 RIP: 416ab5	 Bytes: 5
  %loadMem_416ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ab5 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ab5)
  store %struct.Memory* %call_416ab5, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 416aba	 Bytes: 2
  %loadMem_416aba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416aba = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416aba)
  store %struct.Memory* %call_416aba, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 416abc	 Bytes: 8
  %loadMem_416abc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416abc = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416abc)
  store %struct.Memory* %call_416abc, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %eax	 RIP: 416ac4	 Bytes: 3
  %loadMem_416ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ac4 = call %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ac4)
  store %struct.Memory* %call_416ac4, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 416ac7	 Bytes: 3
  %loadMem_416ac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ac7 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ac7)
  store %struct.Memory* %call_416ac7, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edx	 RIP: 416aca	 Bytes: 3
  %loadMem_416aca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416aca = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416aca)
  store %struct.Memory* %call_416aca, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 416acd	 Bytes: 2
  %loadMem_416acd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416acd = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416acd)
  store %struct.Memory* %call_416acd, %struct.Memory** %MEMORY

  ; Code: callq .see	 RIP: 416acf	 Bytes: 5
  %loadMem1_416acf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_416acf = call %struct.Memory* @routine_callq_.see(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_416acf, i64 23185, i64 5, i64 5)
  store %struct.Memory* %call1_416acf, %struct.Memory** %MEMORY

  %loadMem2_416acf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_416acf = load i64, i64* %3
  %call2_416acf = call %struct.Memory* @sub_41c560.see(%struct.State* %0, i64  %loadPC_416acf, %struct.Memory* %loadMem2_416acf)
  store %struct.Memory* %call2_416acf, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 416ad4	 Bytes: 3
  %loadMem_416ad4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ad4 = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ad4)
  store %struct.Memory* %call_416ad4, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffffce, -0x38(%rbp)	 RIP: 416ad7	 Bytes: 4
  %loadMem_416ad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ad7 = call %struct.Memory* @routine_cmpl__0xffffffce__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ad7)
  store %struct.Memory* %call_416ad7, %struct.Memory** %MEMORY

  ; Code: jl .L_416af9	 RIP: 416adb	 Bytes: 6
  %loadMem_416adb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416adb = call %struct.Memory* @routine_jl_.L_416af9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416adb, i8* %BRANCH_TAKEN, i64 30, i64 6, i64 6)
  store %struct.Memory* %call_416adb, %struct.Memory** %MEMORY

  %loadBr_416adb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416adb = icmp eq i8 %loadBr_416adb, 1
  br i1 %cmpBr_416adb, label %block_.L_416af9, label %block_416ae1

block_416ae1:
  ; Code: movl -0x38(%rbp), %eax	 RIP: 416ae1	 Bytes: 3
  %loadMem_416ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ae1 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ae1)
  store %struct.Memory* %call_416ae1, %struct.Memory** %MEMORY

  ; Code: addl $0x2faf080, %eax	 RIP: 416ae4	 Bytes: 5
  %loadMem_416ae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ae4 = call %struct.Memory* @routine_addl__0x2faf080___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ae4)
  store %struct.Memory* %call_416ae4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 416ae9	 Bytes: 4
  %loadMem_416ae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ae9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ae9)
  store %struct.Memory* %call_416ae9, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 416aed	 Bytes: 4
  %loadMem_416aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416aed = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416aed)
  store %struct.Memory* %call_416aed, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 416af1	 Bytes: 3
  %loadMem_416af1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416af1 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416af1)
  store %struct.Memory* %call_416af1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_416b07	 RIP: 416af4	 Bytes: 5
  %loadMem_416af4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416af4 = call %struct.Memory* @routine_jmpq_.L_416b07(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416af4, i64 19, i64 5)
  store %struct.Memory* %call_416af4, %struct.Memory** %MEMORY

  br label %block_.L_416b07

  ; Code: .L_416af9:	 RIP: 416af9	 Bytes: 0
block_.L_416af9:

  ; Code: movl -0x38(%rbp), %eax	 RIP: 416af9	 Bytes: 3
  %loadMem_416af9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416af9 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416af9)
  store %struct.Memory* %call_416af9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 416afc	 Bytes: 4
  %loadMem_416afc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416afc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416afc)
  store %struct.Memory* %call_416afc, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 416b00	 Bytes: 4
  %loadMem_416b00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b00 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b00)
  store %struct.Memory* %call_416b00, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 416b04	 Bytes: 3
  %loadMem_416b04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b04 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b04)
  store %struct.Memory* %call_416b04, %struct.Memory** %MEMORY

  ; Code: .L_416b07:	 RIP: 416b07	 Bytes: 0
  br label %block_.L_416b07
block_.L_416b07:

  ; Code: movl -0x38(%rbp), %eax	 RIP: 416b07	 Bytes: 3
  %loadMem_416b07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b07 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b07)
  store %struct.Memory* %call_416b07, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 416b0a	 Bytes: 4
  %loadMem_416b0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b0a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b0a)
  store %struct.Memory* %call_416b0a, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 416b0e	 Bytes: 4
  %loadMem_416b0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b0e = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b0e)
  store %struct.Memory* %call_416b0e, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 416b12	 Bytes: 3
  %loadMem_416b12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b12 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b12)
  store %struct.Memory* %call_416b12, %struct.Memory** %MEMORY

  ; Code: .L_416b15:	 RIP: 416b15	 Bytes: 0
  br label %block_.L_416b15
block_.L_416b15:

  ; Code: jmpq .L_416b29	 RIP: 416b15	 Bytes: 5
  %loadMem_416b15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b15 = call %struct.Memory* @routine_jmpq_.L_416b29(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b15, i64 20, i64 5)
  store %struct.Memory* %call_416b15, %struct.Memory** %MEMORY

  br label %block_.L_416b29

  ; Code: .L_416b1a:	 RIP: 416b1a	 Bytes: 0
block_.L_416b1a:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 416b1a	 Bytes: 4
  %loadMem_416b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b1a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b1a)
  store %struct.Memory* %call_416b1a, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 416b1e	 Bytes: 4
  %loadMem_416b1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b1e = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b1e)
  store %struct.Memory* %call_416b1e, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 416b22	 Bytes: 7
  %loadMem_416b22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b22 = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b22)
  store %struct.Memory* %call_416b22, %struct.Memory** %MEMORY

  ; Code: .L_416b29:	 RIP: 416b29	 Bytes: 0
  br label %block_.L_416b29
block_.L_416b29:

  ; Code: jmpq .L_416b2e	 RIP: 416b29	 Bytes: 5
  %loadMem_416b29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b29 = call %struct.Memory* @routine_jmpq_.L_416b2e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b29, i64 5, i64 5)
  store %struct.Memory* %call_416b29, %struct.Memory** %MEMORY

  br label %block_.L_416b2e

  ; Code: .L_416b2e:	 RIP: 416b2e	 Bytes: 0
block_.L_416b2e:

  ; Code: jmpq .L_416b33	 RIP: 416b2e	 Bytes: 5
  %loadMem_416b2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b2e = call %struct.Memory* @routine_jmpq_.L_416b33(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b2e, i64 5, i64 5)
  store %struct.Memory* %call_416b2e, %struct.Memory** %MEMORY

  br label %block_.L_416b33

  ; Code: .L_416b33:	 RIP: 416b33	 Bytes: 0
block_.L_416b33:

  ; Code: movq $0x884b20, %rax	 RIP: 416b33	 Bytes: 10
  %loadMem_416b33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b33 = call %struct.Memory* @routine_movq__0x884b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b33)
  store %struct.Memory* %call_416b33, %struct.Memory** %MEMORY

  ; Code: movq $0x86bda0, %rcx	 RIP: 416b3d	 Bytes: 10
  %loadMem_416b3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b3d = call %struct.Memory* @routine_movq__0x86bda0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b3d)
  store %struct.Memory* %call_416b3d, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdx	 RIP: 416b47	 Bytes: 4
  %loadMem_416b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b47 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b47)
  store %struct.Memory* %call_416b47, %struct.Memory** %MEMORY

  ; Code: imulq $0x240, %rdx, %rdx	 RIP: 416b4b	 Bytes: 7
  %loadMem_416b4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b4b = call %struct.Memory* @routine_imulq__0x240___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b4b)
  store %struct.Memory* %call_416b4b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 416b52	 Bytes: 3
  %loadMem_416b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b52 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b52)
  store %struct.Memory* %call_416b52, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rdx	 RIP: 416b55	 Bytes: 4
  %loadMem_416b55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b55 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b55)
  store %struct.Memory* %call_416b55, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %esi	 RIP: 416b59	 Bytes: 3
  %loadMem_416b59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b59 = call %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b59)
  store %struct.Memory* %call_416b59, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 416b5c	 Bytes: 4
  %loadMem_416b5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b5c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b5c)
  store %struct.Memory* %call_416b5c, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 416b60	 Bytes: 4
  %loadMem_416b60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b60 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b60)
  store %struct.Memory* %call_416b60, %struct.Memory** %MEMORY

  ; Code: addl (%rcx,%rdx,4), %esi	 RIP: 416b64	 Bytes: 3
  %loadMem_416b64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b64 = call %struct.Memory* @routine_addl___rcx__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b64)
  store %struct.Memory* %call_416b64, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rcx,%rdx,4)	 RIP: 416b67	 Bytes: 3
  %loadMem_416b67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b67 = call %struct.Memory* @routine_movl__esi____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b67)
  store %struct.Memory* %call_416b67, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %esi	 RIP: 416b6a	 Bytes: 3
  %loadMem_416b6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b6a = call %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b6a)
  store %struct.Memory* %call_416b6a, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rcx	 RIP: 416b6d	 Bytes: 8
  %loadMem_416b6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b6d = call %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b6d)
  store %struct.Memory* %call_416b6d, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 416b75	 Bytes: 4
  %loadMem_416b75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b75 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b75)
  store %struct.Memory* %call_416b75, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 416b79	 Bytes: 3
  %loadMem_416b79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b79 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b79)
  store %struct.Memory* %call_416b79, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax), %esi	 RIP: 416b7c	 Bytes: 2
  %loadMem_416b7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b7c = call %struct.Memory* @routine_cmpl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b7c)
  store %struct.Memory* %call_416b7c, %struct.Memory** %MEMORY

  ; Code: jne .L_416be7	 RIP: 416b7e	 Bytes: 6
  %loadMem_416b7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b7e = call %struct.Memory* @routine_jne_.L_416be7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b7e, i8* %BRANCH_TAKEN, i64 105, i64 6, i64 6)
  store %struct.Memory* %call_416b7e, %struct.Memory** %MEMORY

  %loadBr_416b7e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416b7e = icmp eq i8 %loadBr_416b7e, 1
  br i1 %cmpBr_416b7e, label %block_.L_416be7, label %block_416b84

block_416b84:
  ; Code: movq $0x884b20, %rax	 RIP: 416b84	 Bytes: 10
  %loadMem_416b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b84 = call %struct.Memory* @routine_movq__0x884b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b84)
  store %struct.Memory* %call_416b84, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 416b8e	 Bytes: 3
  %loadMem_416b8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b8e = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b8e)
  store %struct.Memory* %call_416b8e, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 416b91	 Bytes: 8
  %loadMem_416b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b91 = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b91)
  store %struct.Memory* %call_416b91, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 416b99	 Bytes: 4
  %loadMem_416b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b99 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b99)
  store %struct.Memory* %call_416b99, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 416b9d	 Bytes: 3
  %loadMem_416b9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416b9d = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416b9d)
  store %struct.Memory* %call_416b9d, %struct.Memory** %MEMORY

  ; Code: cmpl 0x4(%rax), %ecx	 RIP: 416ba0	 Bytes: 3
  %loadMem_416ba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ba0 = call %struct.Memory* @routine_cmpl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ba0)
  store %struct.Memory* %call_416ba0, %struct.Memory** %MEMORY

  ; Code: jne .L_416be7	 RIP: 416ba3	 Bytes: 6
  %loadMem_416ba3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ba3 = call %struct.Memory* @routine_jne_.L_416be7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ba3, i8* %BRANCH_TAKEN, i64 68, i64 6, i64 6)
  store %struct.Memory* %call_416ba3, %struct.Memory** %MEMORY

  %loadBr_416ba3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416ba3 = icmp eq i8 %loadBr_416ba3, 1
  br i1 %cmpBr_416ba3, label %block_.L_416be7, label %block_416ba9

block_416ba9:
  ; Code: movq $0x884b20, %rax	 RIP: 416ba9	 Bytes: 10
  %loadMem_416ba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ba9 = call %struct.Memory* @routine_movq__0x884b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ba9)
  store %struct.Memory* %call_416ba9, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 416bb3	 Bytes: 3
  %loadMem_416bb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416bb3 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416bb3)
  store %struct.Memory* %call_416bb3, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 416bb6	 Bytes: 8
  %loadMem_416bb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416bb6 = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416bb6)
  store %struct.Memory* %call_416bb6, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 416bbe	 Bytes: 4
  %loadMem_416bbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416bbe = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416bbe)
  store %struct.Memory* %call_416bbe, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 416bc2	 Bytes: 3
  %loadMem_416bc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416bc2 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416bc2)
  store %struct.Memory* %call_416bc2, %struct.Memory** %MEMORY

  ; Code: cmpl 0xc(%rax), %ecx	 RIP: 416bc5	 Bytes: 3
  %loadMem_416bc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416bc5 = call %struct.Memory* @routine_cmpl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416bc5)
  store %struct.Memory* %call_416bc5, %struct.Memory** %MEMORY

  ; Code: jne .L_416be7	 RIP: 416bc8	 Bytes: 6
  %loadMem_416bc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416bc8 = call %struct.Memory* @routine_jne_.L_416be7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416bc8, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_416bc8, %struct.Memory** %MEMORY

  %loadBr_416bc8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416bc8 = icmp eq i8 %loadBr_416bc8, 1
  br i1 %cmpBr_416bc8, label %block_.L_416be7, label %block_416bce

block_416bce:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 416bce	 Bytes: 4
  %loadMem_416bce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416bce = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416bce)
  store %struct.Memory* %call_416bce, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 416bd2	 Bytes: 4
  %loadMem_416bd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416bd2 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416bd2)
  store %struct.Memory* %call_416bd2, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 416bd6	 Bytes: 3
  %loadMem_416bd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416bd6 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416bd6)
  store %struct.Memory* %call_416bd6, %struct.Memory** %MEMORY

  ; Code: addl $0x17d7840, %edx	 RIP: 416bd9	 Bytes: 6
  %loadMem_416bd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416bd9 = call %struct.Memory* @routine_addl__0x17d7840___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416bd9)
  store %struct.Memory* %call_416bd9, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 416bdf	 Bytes: 3
  %loadMem_416bdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416bdf = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416bdf)
  store %struct.Memory* %call_416bdf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_416cfa	 RIP: 416be2	 Bytes: 5
  %loadMem_416be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416be2 = call %struct.Memory* @routine_jmpq_.L_416cfa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416be2, i64 280, i64 5)
  store %struct.Memory* %call_416be2, %struct.Memory** %MEMORY

  br label %block_.L_416cfa

  ; Code: .L_416be7:	 RIP: 416be7	 Bytes: 0
block_.L_416be7:

  ; Code: movq $0x639220, %rax	 RIP: 416be7	 Bytes: 10
  %loadMem_416be7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416be7 = call %struct.Memory* @routine_movq__0x639220___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416be7)
  store %struct.Memory* %call_416be7, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %ecx	 RIP: 416bf1	 Bytes: 3
  %loadMem_416bf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416bf1 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416bf1)
  store %struct.Memory* %call_416bf1, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 416bf4	 Bytes: 8
  %loadMem_416bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416bf4 = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416bf4)
  store %struct.Memory* %call_416bf4, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 416bfc	 Bytes: 4
  %loadMem_416bfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416bfc = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416bfc)
  store %struct.Memory* %call_416bfc, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 416c00	 Bytes: 3
  %loadMem_416c00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c00 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c00)
  store %struct.Memory* %call_416c00, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax), %ecx	 RIP: 416c03	 Bytes: 2
  %loadMem_416c03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c03 = call %struct.Memory* @routine_cmpl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c03)
  store %struct.Memory* %call_416c03, %struct.Memory** %MEMORY

  ; Code: jne .L_416c6e	 RIP: 416c05	 Bytes: 6
  %loadMem_416c05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c05 = call %struct.Memory* @routine_jne_.L_416c6e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c05, i8* %BRANCH_TAKEN, i64 105, i64 6, i64 6)
  store %struct.Memory* %call_416c05, %struct.Memory** %MEMORY

  %loadBr_416c05 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416c05 = icmp eq i8 %loadBr_416c05, 1
  br i1 %cmpBr_416c05, label %block_.L_416c6e, label %block_416c0b

block_416c0b:
  ; Code: movq $0x639220, %rax	 RIP: 416c0b	 Bytes: 10
  %loadMem_416c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c0b = call %struct.Memory* @routine_movq__0x639220___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c0b)
  store %struct.Memory* %call_416c0b, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 416c15	 Bytes: 3
  %loadMem_416c15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c15 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c15)
  store %struct.Memory* %call_416c15, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 416c18	 Bytes: 8
  %loadMem_416c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c18 = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c18)
  store %struct.Memory* %call_416c18, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 416c20	 Bytes: 4
  %loadMem_416c20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c20 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c20)
  store %struct.Memory* %call_416c20, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 416c24	 Bytes: 3
  %loadMem_416c24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c24 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c24)
  store %struct.Memory* %call_416c24, %struct.Memory** %MEMORY

  ; Code: cmpl 0x4(%rax), %ecx	 RIP: 416c27	 Bytes: 3
  %loadMem_416c27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c27 = call %struct.Memory* @routine_cmpl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c27)
  store %struct.Memory* %call_416c27, %struct.Memory** %MEMORY

  ; Code: jne .L_416c6e	 RIP: 416c2a	 Bytes: 6
  %loadMem_416c2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c2a = call %struct.Memory* @routine_jne_.L_416c6e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c2a, i8* %BRANCH_TAKEN, i64 68, i64 6, i64 6)
  store %struct.Memory* %call_416c2a, %struct.Memory** %MEMORY

  %loadBr_416c2a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416c2a = icmp eq i8 %loadBr_416c2a, 1
  br i1 %cmpBr_416c2a, label %block_.L_416c6e, label %block_416c30

block_416c30:
  ; Code: movq $0x639220, %rax	 RIP: 416c30	 Bytes: 10
  %loadMem_416c30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c30 = call %struct.Memory* @routine_movq__0x639220___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c30)
  store %struct.Memory* %call_416c30, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 416c3a	 Bytes: 3
  %loadMem_416c3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c3a = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c3a)
  store %struct.Memory* %call_416c3a, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 416c3d	 Bytes: 8
  %loadMem_416c3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c3d = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c3d)
  store %struct.Memory* %call_416c3d, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 416c45	 Bytes: 4
  %loadMem_416c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c45 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c45)
  store %struct.Memory* %call_416c45, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 416c49	 Bytes: 3
  %loadMem_416c49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c49 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c49)
  store %struct.Memory* %call_416c49, %struct.Memory** %MEMORY

  ; Code: cmpl 0xc(%rax), %ecx	 RIP: 416c4c	 Bytes: 3
  %loadMem_416c4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c4c = call %struct.Memory* @routine_cmpl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c4c)
  store %struct.Memory* %call_416c4c, %struct.Memory** %MEMORY

  ; Code: jne .L_416c6e	 RIP: 416c4f	 Bytes: 6
  %loadMem_416c4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c4f = call %struct.Memory* @routine_jne_.L_416c6e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c4f, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_416c4f, %struct.Memory** %MEMORY

  %loadBr_416c4f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416c4f = icmp eq i8 %loadBr_416c4f, 1
  br i1 %cmpBr_416c4f, label %block_.L_416c6e, label %block_416c55

block_416c55:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 416c55	 Bytes: 4
  %loadMem_416c55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c55 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c55)
  store %struct.Memory* %call_416c55, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 416c59	 Bytes: 4
  %loadMem_416c59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c59 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c59)
  store %struct.Memory* %call_416c59, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 416c5d	 Bytes: 3
  %loadMem_416c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c5d = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c5d)
  store %struct.Memory* %call_416c5d, %struct.Memory** %MEMORY

  ; Code: addl $0x1312d00, %edx	 RIP: 416c60	 Bytes: 6
  %loadMem_416c60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c60 = call %struct.Memory* @routine_addl__0x1312d00___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c60)
  store %struct.Memory* %call_416c60, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 416c66	 Bytes: 3
  %loadMem_416c66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c66 = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c66)
  store %struct.Memory* %call_416c66, %struct.Memory** %MEMORY

  ; Code: jmpq .L_416cf5	 RIP: 416c69	 Bytes: 5
  %loadMem_416c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c69 = call %struct.Memory* @routine_jmpq_.L_416cf5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c69, i64 140, i64 5)
  store %struct.Memory* %call_416c69, %struct.Memory** %MEMORY

  br label %block_.L_416cf5

  ; Code: .L_416c6e:	 RIP: 416c6e	 Bytes: 0
block_.L_416c6e:

  ; Code: movq $0x882600, %rax	 RIP: 416c6e	 Bytes: 10
  %loadMem_416c6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c6e = call %struct.Memory* @routine_movq__0x882600___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c6e)
  store %struct.Memory* %call_416c6e, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %ecx	 RIP: 416c78	 Bytes: 3
  %loadMem_416c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c78 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c78)
  store %struct.Memory* %call_416c78, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 416c7b	 Bytes: 8
  %loadMem_416c7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c7b = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c7b)
  store %struct.Memory* %call_416c7b, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 416c83	 Bytes: 4
  %loadMem_416c83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c83 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c83)
  store %struct.Memory* %call_416c83, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 416c87	 Bytes: 3
  %loadMem_416c87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c87 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c87)
  store %struct.Memory* %call_416c87, %struct.Memory** %MEMORY

  ; Code: cmpl (%rax), %ecx	 RIP: 416c8a	 Bytes: 2
  %loadMem_416c8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c8a = call %struct.Memory* @routine_cmpl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c8a)
  store %struct.Memory* %call_416c8a, %struct.Memory** %MEMORY

  ; Code: jne .L_416cf0	 RIP: 416c8c	 Bytes: 6
  %loadMem_416c8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c8c = call %struct.Memory* @routine_jne_.L_416cf0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c8c, i8* %BRANCH_TAKEN, i64 100, i64 6, i64 6)
  store %struct.Memory* %call_416c8c, %struct.Memory** %MEMORY

  %loadBr_416c8c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416c8c = icmp eq i8 %loadBr_416c8c, 1
  br i1 %cmpBr_416c8c, label %block_.L_416cf0, label %block_416c92

block_416c92:
  ; Code: movq $0x882600, %rax	 RIP: 416c92	 Bytes: 10
  %loadMem_416c92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c92 = call %struct.Memory* @routine_movq__0x882600___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c92)
  store %struct.Memory* %call_416c92, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 416c9c	 Bytes: 3
  %loadMem_416c9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c9c = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c9c)
  store %struct.Memory* %call_416c9c, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 416c9f	 Bytes: 8
  %loadMem_416c9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416c9f = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416c9f)
  store %struct.Memory* %call_416c9f, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 416ca7	 Bytes: 4
  %loadMem_416ca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ca7 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ca7)
  store %struct.Memory* %call_416ca7, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 416cab	 Bytes: 3
  %loadMem_416cab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416cab = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416cab)
  store %struct.Memory* %call_416cab, %struct.Memory** %MEMORY

  ; Code: cmpl 0x4(%rax), %ecx	 RIP: 416cae	 Bytes: 3
  %loadMem_416cae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416cae = call %struct.Memory* @routine_cmpl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416cae)
  store %struct.Memory* %call_416cae, %struct.Memory** %MEMORY

  ; Code: jne .L_416cf0	 RIP: 416cb1	 Bytes: 6
  %loadMem_416cb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416cb1 = call %struct.Memory* @routine_jne_.L_416cf0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416cb1, i8* %BRANCH_TAKEN, i64 63, i64 6, i64 6)
  store %struct.Memory* %call_416cb1, %struct.Memory** %MEMORY

  %loadBr_416cb1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416cb1 = icmp eq i8 %loadBr_416cb1, 1
  br i1 %cmpBr_416cb1, label %block_.L_416cf0, label %block_416cb7

block_416cb7:
  ; Code: movq $0x882600, %rax	 RIP: 416cb7	 Bytes: 10
  %loadMem_416cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416cb7 = call %struct.Memory* @routine_movq__0x882600___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416cb7)
  store %struct.Memory* %call_416cb7, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 416cc1	 Bytes: 3
  %loadMem_416cc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416cc1 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416cc1)
  store %struct.Memory* %call_416cc1, %struct.Memory** %MEMORY

  ; Code: movslq 0x886bc0, %rdx	 RIP: 416cc4	 Bytes: 8
  %loadMem_416cc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416cc4 = call %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416cc4)
  store %struct.Memory* %call_416cc4, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 416ccc	 Bytes: 4
  %loadMem_416ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ccc = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ccc)
  store %struct.Memory* %call_416ccc, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 416cd0	 Bytes: 3
  %loadMem_416cd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416cd0 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416cd0)
  store %struct.Memory* %call_416cd0, %struct.Memory** %MEMORY

  ; Code: cmpl 0xc(%rax), %ecx	 RIP: 416cd3	 Bytes: 3
  %loadMem_416cd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416cd3 = call %struct.Memory* @routine_cmpl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416cd3)
  store %struct.Memory* %call_416cd3, %struct.Memory** %MEMORY

  ; Code: jne .L_416cf0	 RIP: 416cd6	 Bytes: 6
  %loadMem_416cd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416cd6 = call %struct.Memory* @routine_jne_.L_416cf0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416cd6, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_416cd6, %struct.Memory** %MEMORY

  %loadBr_416cd6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_416cd6 = icmp eq i8 %loadBr_416cd6, 1
  br i1 %cmpBr_416cd6, label %block_.L_416cf0, label %block_416cdc

block_416cdc:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 416cdc	 Bytes: 4
  %loadMem_416cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416cdc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416cdc)
  store %struct.Memory* %call_416cdc, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 416ce0	 Bytes: 4
  %loadMem_416ce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ce0 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ce0)
  store %struct.Memory* %call_416ce0, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 416ce4	 Bytes: 3
  %loadMem_416ce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ce4 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ce4)
  store %struct.Memory* %call_416ce4, %struct.Memory** %MEMORY

  ; Code: addl $0xe4e1c0, %edx	 RIP: 416ce7	 Bytes: 6
  %loadMem_416ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ce7 = call %struct.Memory* @routine_addl__0xe4e1c0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ce7)
  store %struct.Memory* %call_416ce7, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 416ced	 Bytes: 3
  %loadMem_416ced = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416ced = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416ced)
  store %struct.Memory* %call_416ced, %struct.Memory** %MEMORY

  ; Code: .L_416cf0:	 RIP: 416cf0	 Bytes: 0
  br label %block_.L_416cf0
block_.L_416cf0:

  ; Code: jmpq .L_416cf5	 RIP: 416cf0	 Bytes: 5
  %loadMem_416cf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416cf0 = call %struct.Memory* @routine_jmpq_.L_416cf5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416cf0, i64 5, i64 5)
  store %struct.Memory* %call_416cf0, %struct.Memory** %MEMORY

  br label %block_.L_416cf5

  ; Code: .L_416cf5:	 RIP: 416cf5	 Bytes: 0
block_.L_416cf5:

  ; Code: jmpq .L_416cfa	 RIP: 416cf5	 Bytes: 5
  %loadMem_416cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416cf5 = call %struct.Memory* @routine_jmpq_.L_416cfa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416cf5, i64 5, i64 5)
  store %struct.Memory* %call_416cf5, %struct.Memory** %MEMORY

  br label %block_.L_416cfa

  ; Code: .L_416cfa:	 RIP: 416cfa	 Bytes: 0
block_.L_416cfa:

  ; Code: jmpq .L_416cff	 RIP: 416cfa	 Bytes: 5
  %loadMem_416cfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416cfa = call %struct.Memory* @routine_jmpq_.L_416cff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416cfa, i64 5, i64 5)
  store %struct.Memory* %call_416cfa, %struct.Memory** %MEMORY

  br label %block_.L_416cff

  ; Code: .L_416cff:	 RIP: 416cff	 Bytes: 0
block_.L_416cff:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 416cff	 Bytes: 3
  %loadMem_416cff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416cff = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416cff)
  store %struct.Memory* %call_416cff, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 416d02	 Bytes: 3
  %loadMem_416d02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d02 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d02)
  store %struct.Memory* %call_416d02, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 416d05	 Bytes: 3
  %loadMem_416d05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d05 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d05)
  store %struct.Memory* %call_416d05, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41672e	 RIP: 416d08	 Bytes: 5
  %loadMem_416d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d08 = call %struct.Memory* @routine_jmpq_.L_41672e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d08, i64 -1498, i64 5)
  store %struct.Memory* %call_416d08, %struct.Memory** %MEMORY

  br label %block_.L_41672e

  ; Code: .L_416d0d:	 RIP: 416d0d	 Bytes: 0
block_.L_416d0d:

  ; Code: jmpq .L_416d12	 RIP: 416d0d	 Bytes: 5
  %loadMem_416d0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d0d = call %struct.Memory* @routine_jmpq_.L_416d12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d0d, i64 5, i64 5)
  store %struct.Memory* %call_416d0d, %struct.Memory** %MEMORY

  br label %block_.L_416d12

  ; Code: .L_416d12:	 RIP: 416d12	 Bytes: 0
block_.L_416d12:

  ; Code: addq $0x80, %rsp	 RIP: 416d12	 Bytes: 7
  %loadMem_416d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d12 = call %struct.Memory* @routine_addq__0x80___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d12)
  store %struct.Memory* %call_416d12, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 416d19	 Bytes: 1
  %loadMem_416d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d19 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d19)
  store %struct.Memory* %call_416d19, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 416d1a	 Bytes: 1
  %loadMem_416d1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_416d1a = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_416d1a)
  store %struct.Memory* %call_416d1a, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_416d1a
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

define %struct.Memory* @routine_subq__0x80___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 128)
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


define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r8d__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
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

define %struct.Memory* @routine_cmpl__0x0__0x639110(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x639110_type* @G_0x639110 to i64), i64 0)
  ret %struct.Memory* %8
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

define %struct.Memory* @routine_je_.L_416727(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x0__0x639110(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x639110_type* @G_0x639110 to i64), i64 0)
  ret %struct.Memory* %8
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_jge_.L_416722(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 24)
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


define %struct.Memory* @routine_movl___rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movl__edx__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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










define %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0xd__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 13)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4160a3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x62dab0___rax_4____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 6478512
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %14)
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

define %struct.Memory* @routine_addl__0xf___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 15)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movslq_0x866540___rcx_4____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl_0x62dab0___rcx_4____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 6478512
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %14)
  ret %struct.Memory* %17
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




define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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

define %struct.Memory* @routine_cmpl__eax___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %EDI = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
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

define %struct.Memory* @routine_jl_.L_41603e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %4 to i5
  switch i5 %6, label %10 [
    i5 0, label %43
    i5 1, label %7
  ]

; <label>:7:                                      ; preds = %5
  %8 = shl i64 %3, 32
  %9 = ashr i64 %8, 33
  br label %19

; <label>:10:                                     ; preds = %5
  %11 = and i64 %4, 31
  %12 = add  i64 %11, -1
  %13 = shl i64 %3, 32
  %14 = ashr exact i64 %13, 32
  %15 = ashr i64 %14, %12
  %16 = icmp ne i8 0, 0
  %17 = zext i1 %16 to i8
  %18 = lshr i64 %15, 1
  br label %19

; <label>:19:                                     ; preds = %10, %7
  %20 = phi i8 [ 0, %10 ], [ 0, %7 ]
  %21 = phi i64 [ %18, %10 ], [ %9, %7 ]
  %22 = phi i8 [ %17, %10 ], [ 0, %7 ]
  %23 = phi i64 [ %15, %10 ], [ %3, %7 ]
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = trunc i64 %21 to i32
  %27 = and i64 %21, 4294967295
  store i64 %27, i64* %2, align 8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %25, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  %30 = and i32 %26, 255
  %31 = tail call i32 @llvm.ctpop.i32(i32 %30) #22
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  store i8 %34, i8* %29, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %20, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %37 = icmp eq i32 %26, 0
  %38 = zext i1 %37 to i8
  store i8 %38, i8* %36, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %40 = lshr i32 %26, 31
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %39, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %22, i8* %42, align 1
  br label %43

; <label>:43:                                     ; preds = %19, %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_sarl__0x4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 4)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl_MINUS0x40__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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

define %struct.Memory* @routine_subl__eax___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edi____rcx__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EDI
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}






define %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_addl__0x2faf080___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 50000000)
  ret %struct.Memory* %12
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




define %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_41609e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x8661bc_type* @G_0x8661bc to i64), i64 0)
  ret %struct.Memory* %8
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


define %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_movl__eax___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.see(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0xffffffce__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -50)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jl_.L_416082(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jmpq_.L_416090(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


















define %struct.Memory* @routine_jmpq_.L_4160b2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x63ae50___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x63ae50_type* @G__0x63ae50 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_addq__0x1c20___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 7200)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movslq_0x886bc0___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 24)
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


define %struct.Memory* @routine_cmpl___rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_jne_.L_41620d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_cmpl_0x4__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 4
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
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








define %struct.Memory* @routine_cmpl_0xc__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl__0x1__0x639110(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x639110_type* @G_0x639110 to i64), i64 1)
  ret %struct.Memory* %8
}






define %struct.Memory* @routine_movl__0x5f5e100____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 100000000)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_je_.L_416208(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x44__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jl_.L_4161d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x48__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_jmpq_.L_416203(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






















define %struct.Memory* @routine_movq_MINUS0x18__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax____r8__r9_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 19
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R9 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %R8
  %16 = load i64, i64* %R9
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EAX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_jmpq_.L_416208(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41670f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4162fd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0xfffffffe__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -2)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 32
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_4162fd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_je_.L_4162f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x4c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jl_.L_4162c2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x50__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_jmpq_.L_4162f3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




























define %struct.Memory* @routine_jmpq_.L_4162f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_41670a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_41649e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_0x886bc0___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64))
  ret %struct.Memory* %11
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__edx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0x1c20___rsi___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 7200)
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








define %struct.Memory* @routine_imulq__0x18___rsi___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 24)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_jne_.L_416499(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


































































define %struct.Memory* @routine_je_.L_416494(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x54__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jl_.L_41645e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x58__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_jmpq_.L_41648f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




























define %struct.Memory* @routine_jmpq_.L_416494(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_416499(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_416705(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x1__0x886bc0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_4164ba(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x2__0x633b50(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x633b50_type* @G_0x633b50 to i64), i64 2)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jge_.L_416686(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x884b20___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x884b20_type* @G__0x884b20 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x86bda0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x86bda0_type* @G__0x86bda0 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_imulq__0x240___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 576)
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

define %struct.Memory* @routine_addl___rcx__rdx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__esi____rcx__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %ESI
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_0x886bc0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_cmpl___rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jne_.L_41656e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_addl__0x17d7840___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 25000000)
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


define %struct.Memory* @routine_jmpq_.L_416681(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x639220___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x639220_type* @G__0x639220 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_4165f5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




































define %struct.Memory* @routine_addl__0x1312d00___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 20000000)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jmpq_.L_41667c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x882600___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x882600_type* @G__0x882600 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jne_.L_416677(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




































define %struct.Memory* @routine_addl__0xe4e1c0___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 15000000)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_jmpq_.L_416700(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x64___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 100)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0x864500___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x864500_type* @G_0x864500 to i64))
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


define %struct.Memory* @routine_movl_MINUS0x5c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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

define %struct.Memory* @routine_idivl__ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 2
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_cmpl__0x5f5e100___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 100000000)
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

define %struct.Memory* @routine_jle_.L_4166d4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x3e8___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 1000)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl_0x884320___rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8930080
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movl__edx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_xorl__edx___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x60__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_(%struct.Memory*, %struct.State* dereferenceable(3376), i64) #0 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 1, i32 0
  %5 = bitcast %union.anon* %4 to i32*
  %6 = load i32, i32* %5, align 8
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 7, i32 0
  %9 = bitcast %union.anon* %8 to i32*
  %10 = load i32, i32* %9, align 8
  %11 = zext i32 %10 to i64
  %12 = and i64 %2, 4294967295
  %13 = shl  i64 %11, 32
  %14 = or i64 %13, %7
  %15 = udiv i64 %14, %12
  %16 = and i64 %15, 4294967295
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %22, label %18

; <label>:18:                                     ; preds = %3
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %20, %struct.Memory* %0) #21
  br label %32

; <label>:22:                                     ; preds = %3
  %23 = urem i64 %14, %12
  %24 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  store i64 %15, i64* %24, align 8
  %25 = getelementptr inbounds %union.anon, %union.anon* %8, i64 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
  br label %32

; <label>:32:                                     ; preds = %22, %18
  %33 = phi %struct.Memory* [ %21, %18 ], [ %0, %22 ]
  ret %struct.Memory* %33
}

define %struct.Memory* @routine_divl__esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax____rcx__rdi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
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


define %struct.Memory* @routine_jmpq_.L_4166fb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


















define %struct.Memory* @routine_jmpq_.L_416714(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_415f3e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_416d12(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jge_.L_416d0d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















































define %struct.Memory* @routine_je_.L_416873(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_416873(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_je_.L_41686e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x68__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jl_.L_416838(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x6c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_jmpq_.L_416869(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




























define %struct.Memory* @routine_jmpq_.L_41686e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_416b33(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_416a14(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_jne_.L_416a0f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


































































define %struct.Memory* @routine_je_.L_416a0a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x70__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jl_.L_4169d4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x74__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 116
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_jmpq_.L_416a05(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




























define %struct.Memory* @routine_jmpq_.L_416a0a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_416a0f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_416b2e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_je_.L_416b1a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x78__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jl_.L_416ab5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x7c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 124
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}
























define %struct.Memory* @routine_jmpq_.L_416b15(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






















define %struct.Memory* @routine_jl_.L_416af9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jmpq_.L_416b07(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


















define %struct.Memory* @routine_jmpq_.L_416b29(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












































define %struct.Memory* @routine_jne_.L_416be7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








































define %struct.Memory* @routine_jmpq_.L_416cfa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_jne_.L_416c6e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








































define %struct.Memory* @routine_jmpq_.L_416cf5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_jne_.L_416cf0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












































define %struct.Memory* @routine_jmpq_.L_416cff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_41672e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_addq__0x80___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 128)
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

