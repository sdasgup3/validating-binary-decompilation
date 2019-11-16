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

declare %struct.Memory* @sub_4207f0.StoreTT(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_402920.is_draw(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_407e30.gen(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4098e0.in_check(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40b730.make(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_406680.check_legal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40c7a0.unmake(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x62ea38_type = type <{ [4 x i8] }>
@G_0x62ea38= global %G_0x62ea38_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x633b40_type = type <{ [4 x i8] }>
@G_0x633b40= global %G_0x633b40_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x633b54_type = type <{ [4 x i8] }>
@G_0x633b54= global %G_0x633b54_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x633b58_type = type <{ [4 x i8] }>
@G_0x633b58= global %G_0x633b58_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x85f150_type = type <{ [4 x i8] }>
@G_0x85f150= global %G_0x85f150_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x85f154_type = type <{ [1 x i8] }>
@G_0x85f154= global %G_0x85f154_type <{ [1 x i8] c"\00" }>
%G_0x85f164_type = type <{ [4 x i8] }>
@G_0x85f164= global %G_0x85f164_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x8661bc_type = type <{ [1 x i8] }>
@G_0x8661bc= global %G_0x8661bc_type <{ [1 x i8] c"\00" }>
%G_0x886a78_type = type <{ [1 x i8] }>
@G_0x886a78= global %G_0x886a78_type <{ [1 x i8] c"\00" }>
%G_0x886bc0_type = type <{ [4 x i8] }>
@G_0x886bc0= global %G_0x886bc0_type <{ [4 x i8] c"\00\00\00\00" }>


define %struct.Memory* @set_proof_and_disproof_numbers(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .set_proof_and_disproof_numbers:	 RIP: 413400	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 413400	 Bytes: 1
  %loadMem_413400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413400 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413400)
  store %struct.Memory* %call_413400, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 413401	 Bytes: 3
  %loadMem_413401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413401 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413401)
  store %struct.Memory* %call_413401, %struct.Memory** %MEMORY

  ; Code: subq $0x3060, %rsp	 RIP: 413404	 Bytes: 7
  %loadMem_413404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413404 = call %struct.Memory* @routine_subq__0x3060___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413404)
  store %struct.Memory* %call_413404, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 41340b	 Bytes: 4
  %loadMem_41340b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41340b = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41340b)
  store %struct.Memory* %call_41340b, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 41340f	 Bytes: 4
  %loadMem_41340f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41340f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41340f)
  store %struct.Memory* %call_41340f, %struct.Memory** %MEMORY

  ; Code: cmpb $0x0, 0x2(%rdi)	 RIP: 413413	 Bytes: 4
  %loadMem_413413 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413413 = call %struct.Memory* @routine_cmpb__0x0__0x2__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413413)
  store %struct.Memory* %call_413413, %struct.Memory** %MEMORY

  ; Code: je .L_4136f1	 RIP: 413417	 Bytes: 6
  %loadMem_413417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413417 = call %struct.Memory* @routine_je_.L_4136f1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413417, i8* %BRANCH_TAKEN, i64 730, i64 6, i64 6)
  store %struct.Memory* %call_413417, %struct.Memory** %MEMORY

  %loadBr_413417 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413417 = icmp eq i8 %loadBr_413417, 1
  br i1 %cmpBr_413417, label %block_.L_4136f1, label %block_41341d

block_41341d:
  ; Code: movl $0x1, %eax	 RIP: 41341d	 Bytes: 5
  %loadMem_41341d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41341d = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41341d)
  store %struct.Memory* %call_41341d, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 413422	 Bytes: 2
  %loadMem_413422 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413422 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413422)
  store %struct.Memory* %call_413422, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 413424	 Bytes: 8
  %loadMem_413424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413424 = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413424)
  store %struct.Memory* %call_413424, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %eax	 RIP: 41342c	 Bytes: 3
  %loadMem_41342c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41342c = call %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41342c)
  store %struct.Memory* %call_41342c, %struct.Memory** %MEMORY

  ; Code: cmpl 0x633b54, %eax	 RIP: 41342f	 Bytes: 7
  %loadMem_41342f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41342f = call %struct.Memory* @routine_cmpl_0x633b54___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41342f)
  store %struct.Memory* %call_41342f, %struct.Memory** %MEMORY

  ; Code: je .L_413579	 RIP: 413436	 Bytes: 6
  %loadMem_413436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413436 = call %struct.Memory* @routine_je_.L_413579(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413436, i8* %BRANCH_TAKEN, i64 323, i64 6, i64 6)
  store %struct.Memory* %call_413436, %struct.Memory** %MEMORY

  %loadBr_413436 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413436 = icmp eq i8 %loadBr_413436, 1
  br i1 %cmpBr_413436, label %block_.L_413579, label %block_41343c

block_41343c:
  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 41343c	 Bytes: 7
  %loadMem_41343c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41343c = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41343c)
  store %struct.Memory* %call_41343c, %struct.Memory** %MEMORY

  ; Code: movl $0x5f5e100, -0x10(%rbp)	 RIP: 413443	 Bytes: 7
  %loadMem_413443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413443 = call %struct.Memory* @routine_movl__0x5f5e100__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413443)
  store %struct.Memory* %call_413443, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 41344a	 Bytes: 7
  %loadMem_41344a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41344a = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41344a)
  store %struct.Memory* %call_41344a, %struct.Memory** %MEMORY

  ; Code: .L_413451:	 RIP: 413451	 Bytes: 0
  br label %block_.L_413451
block_.L_413451:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 413451	 Bytes: 3
  %loadMem_413451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413451 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413451)
  store %struct.Memory* %call_413451, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 413454	 Bytes: 4
  %loadMem_413454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413454 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413454)
  store %struct.Memory* %call_413454, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rcx), %edx	 RIP: 413458	 Bytes: 4
  %loadMem_413458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413458 = call %struct.Memory* @routine_movzbl_0x1__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413458)
  store %struct.Memory* %call_413458, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %eax	 RIP: 41345c	 Bytes: 2
  %loadMem_41345c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41345c = call %struct.Memory* @routine_cmpl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41345c)
  store %struct.Memory* %call_41345c, %struct.Memory** %MEMORY

  ; Code: jge .L_4134d6	 RIP: 41345e	 Bytes: 6
  %loadMem_41345e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41345e = call %struct.Memory* @routine_jge_.L_4134d6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41345e, i8* %BRANCH_TAKEN, i64 120, i64 6, i64 6)
  store %struct.Memory* %call_41345e, %struct.Memory** %MEMORY

  %loadBr_41345e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41345e = icmp eq i8 %loadBr_41345e, 1
  br i1 %cmpBr_41345e, label %block_.L_4134d6, label %block_413464

block_413464:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 413464	 Bytes: 4
  %loadMem_413464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413464 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413464)
  store %struct.Memory* %call_413464, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 413468	 Bytes: 4
  %loadMem_413468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413468 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413468)
  store %struct.Memory* %call_413468, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 41346c	 Bytes: 4
  %loadMem_41346c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41346c = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41346c)
  store %struct.Memory* %call_41346c, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 413470	 Bytes: 4
  %loadMem_413470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413470 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413470)
  store %struct.Memory* %call_413470, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 413474	 Bytes: 3
  %loadMem_413474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413474 = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413474)
  store %struct.Memory* %call_413474, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %edx	 RIP: 413477	 Bytes: 3
  %loadMem_413477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413477 = call %struct.Memory* @routine_addl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413477)
  store %struct.Memory* %call_413477, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0xc(%rbp)	 RIP: 41347a	 Bytes: 3
  %loadMem_41347a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41347a = call %struct.Memory* @routine_movl__edx__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41347a)
  store %struct.Memory* %call_41347a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f5e100, -0xc(%rbp)	 RIP: 41347d	 Bytes: 7
  %loadMem_41347d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41347d = call %struct.Memory* @routine_cmpl__0x5f5e100__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41347d)
  store %struct.Memory* %call_41347d, %struct.Memory** %MEMORY

  ; Code: jle .L_413491	 RIP: 413484	 Bytes: 6
  %loadMem_413484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413484 = call %struct.Memory* @routine_jle_.L_413491(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413484, i8* %BRANCH_TAKEN, i64 13, i64 6, i64 6)
  store %struct.Memory* %call_413484, %struct.Memory** %MEMORY

  %loadBr_413484 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413484 = icmp eq i8 %loadBr_413484, 1
  br i1 %cmpBr_413484, label %block_.L_413491, label %block_41348a

block_41348a:
  ; Code: movl $0x5f5e100, -0xc(%rbp)	 RIP: 41348a	 Bytes: 7
  %loadMem_41348a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41348a = call %struct.Memory* @routine_movl__0x5f5e100__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41348a)
  store %struct.Memory* %call_41348a, %struct.Memory** %MEMORY

  ; Code: .L_413491:	 RIP: 413491	 Bytes: 0
  br label %block_.L_413491
block_.L_413491:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 413491	 Bytes: 4
  %loadMem_413491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413491 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413491)
  store %struct.Memory* %call_413491, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 413495	 Bytes: 4
  %loadMem_413495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413495 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413495)
  store %struct.Memory* %call_413495, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 413499	 Bytes: 4
  %loadMem_413499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413499 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413499)
  store %struct.Memory* %call_413499, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 41349d	 Bytes: 4
  %loadMem_41349d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41349d = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41349d)
  store %struct.Memory* %call_41349d, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %edx	 RIP: 4134a1	 Bytes: 3
  %loadMem_4134a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134a1 = call %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134a1)
  store %struct.Memory* %call_4134a1, %struct.Memory** %MEMORY

  ; Code: cmpl -0x10(%rbp), %edx	 RIP: 4134a4	 Bytes: 3
  %loadMem_4134a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134a4 = call %struct.Memory* @routine_cmpl_MINUS0x10__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134a4)
  store %struct.Memory* %call_4134a4, %struct.Memory** %MEMORY

  ; Code: jge .L_4134c3	 RIP: 4134a7	 Bytes: 6
  %loadMem_4134a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134a7 = call %struct.Memory* @routine_jge_.L_4134c3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134a7, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_4134a7, %struct.Memory** %MEMORY

  %loadBr_4134a7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4134a7 = icmp eq i8 %loadBr_4134a7, 1
  br i1 %cmpBr_4134a7, label %block_.L_4134c3, label %block_4134ad

block_4134ad:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4134ad	 Bytes: 4
  %loadMem_4134ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134ad = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134ad)
  store %struct.Memory* %call_4134ad, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 4134b1	 Bytes: 4
  %loadMem_4134b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134b1 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134b1)
  store %struct.Memory* %call_4134b1, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 4134b5	 Bytes: 4
  %loadMem_4134b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134b5 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134b5)
  store %struct.Memory* %call_4134b5, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4134b9	 Bytes: 4
  %loadMem_4134b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134b9 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134b9)
  store %struct.Memory* %call_4134b9, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %edx	 RIP: 4134bd	 Bytes: 3
  %loadMem_4134bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134bd = call %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134bd)
  store %struct.Memory* %call_4134bd, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x10(%rbp)	 RIP: 4134c0	 Bytes: 3
  %loadMem_4134c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134c0 = call %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134c0)
  store %struct.Memory* %call_4134c0, %struct.Memory** %MEMORY

  ; Code: .L_4134c3:	 RIP: 4134c3	 Bytes: 0
  br label %block_.L_4134c3
block_.L_4134c3:

  ; Code: jmpq .L_4134c8	 RIP: 4134c3	 Bytes: 5
  %loadMem_4134c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134c3 = call %struct.Memory* @routine_jmpq_.L_4134c8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134c3, i64 5, i64 5)
  store %struct.Memory* %call_4134c3, %struct.Memory** %MEMORY

  br label %block_.L_4134c8

  ; Code: .L_4134c8:	 RIP: 4134c8	 Bytes: 0
block_.L_4134c8:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 4134c8	 Bytes: 3
  %loadMem_4134c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134c8 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134c8)
  store %struct.Memory* %call_4134c8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4134cb	 Bytes: 3
  %loadMem_4134cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134cb = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134cb)
  store %struct.Memory* %call_4134cb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 4134ce	 Bytes: 3
  %loadMem_4134ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134ce = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134ce)
  store %struct.Memory* %call_4134ce, %struct.Memory** %MEMORY

  ; Code: jmpq .L_413451	 RIP: 4134d1	 Bytes: 5
  %loadMem_4134d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134d1 = call %struct.Memory* @routine_jmpq_.L_413451(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134d1, i64 -128, i64 5)
  store %struct.Memory* %call_4134d1, %struct.Memory** %MEMORY

  br label %block_.L_413451

  ; Code: .L_4134d6:	 RIP: 4134d6	 Bytes: 0
block_.L_4134d6:

  ; Code: cmpl $0x0, -0xc(%rbp)	 RIP: 4134d6	 Bytes: 4
  %loadMem_4134d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134d6 = call %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134d6)
  store %struct.Memory* %call_4134d6, %struct.Memory** %MEMORY

  ; Code: je .L_4134ed	 RIP: 4134da	 Bytes: 6
  %loadMem_4134da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134da = call %struct.Memory* @routine_je_.L_4134ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134da, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4134da, %struct.Memory** %MEMORY

  %loadBr_4134da = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4134da = icmp eq i8 %loadBr_4134da, 1
  br i1 %cmpBr_4134da, label %block_.L_4134ed, label %block_4134e0

block_4134e0:
  ; Code: cmpl $0x5f5e100, -0x10(%rbp)	 RIP: 4134e0	 Bytes: 7
  %loadMem_4134e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134e0 = call %struct.Memory* @routine_cmpl__0x5f5e100__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134e0)
  store %struct.Memory* %call_4134e0, %struct.Memory** %MEMORY

  ; Code: jne .L_413525	 RIP: 4134e7	 Bytes: 6
  %loadMem_4134e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134e7 = call %struct.Memory* @routine_jne_.L_413525(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134e7, i8* %BRANCH_TAKEN, i64 62, i64 6, i64 6)
  store %struct.Memory* %call_4134e7, %struct.Memory** %MEMORY

  %loadBr_4134e7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4134e7 = icmp eq i8 %loadBr_4134e7, 1
  br i1 %cmpBr_4134e7, label %block_.L_413525, label %block_.L_4134ed

  ; Code: .L_4134ed:	 RIP: 4134ed	 Bytes: 0
block_.L_4134ed:

  ; Code: movl $0xf404c, %edi	 RIP: 4134ed	 Bytes: 5
  %loadMem_4134ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134ed = call %struct.Memory* @routine_movl__0xf404c___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134ed)
  store %struct.Memory* %call_4134ed, %struct.Memory** %MEMORY

  ; Code: movl $0xf4240, %esi	 RIP: 4134f2	 Bytes: 5
  %loadMem_4134f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134f2 = call %struct.Memory* @routine_movl__0xf4240___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134f2)
  store %struct.Memory* %call_4134f2, %struct.Memory** %MEMORY

  ; Code: movl $0xfff0bdc0, %edx	 RIP: 4134f7	 Bytes: 5
  %loadMem_4134f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134f7 = call %struct.Memory* @routine_movl__0xfff0bdc0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134f7)
  store %struct.Memory* %call_4134f7, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %ecx	 RIP: 4134fc	 Bytes: 5
  %loadMem_4134fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4134fc = call %struct.Memory* @routine_movl__0xffffffff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4134fc)
  store %struct.Memory* %call_4134fc, %struct.Memory** %MEMORY

  ; Code: xorl %r8d, %r8d	 RIP: 413501	 Bytes: 3
  %loadMem_413501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413501 = call %struct.Memory* @routine_xorl__r8d___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413501)
  store %struct.Memory* %call_413501, %struct.Memory** %MEMORY

  ; Code: movl $0xc8, %r9d	 RIP: 413504	 Bytes: 6
  %loadMem_413504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413504 = call %struct.Memory* @routine_movl__0xc8___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413504)
  store %struct.Memory* %call_413504, %struct.Memory** %MEMORY

  ; Code: movl 0x633b58, %eax	 RIP: 41350a	 Bytes: 7
  %loadMem_41350a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41350a = call %struct.Memory* @routine_movl_0x633b58___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41350a)
  store %struct.Memory* %call_41350a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 413511	 Bytes: 3
  %loadMem_413511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413511 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413511)
  store %struct.Memory* %call_413511, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b58	 RIP: 413514	 Bytes: 7
  %loadMem_413514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413514 = call %struct.Memory* @routine_movl__eax__0x633b58(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413514)
  store %struct.Memory* %call_413514, %struct.Memory** %MEMORY

  ; Code: callq .StoreTT	 RIP: 41351b	 Bytes: 5
  %loadMem1_41351b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41351b = call %struct.Memory* @routine_callq_.StoreTT(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41351b, i64 53973, i64 5, i64 5)
  store %struct.Memory* %call1_41351b, %struct.Memory** %MEMORY

  %loadMem2_41351b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41351b = load i64, i64* %3
  %call2_41351b = call %struct.Memory* @sub_4207f0.StoreTT(%struct.State* %0, i64  %loadPC_41351b, %struct.Memory* %loadMem2_41351b)
  store %struct.Memory* %call2_41351b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_413574	 RIP: 413520	 Bytes: 5
  %loadMem_413520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413520 = call %struct.Memory* @routine_jmpq_.L_413574(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413520, i64 84, i64 5)
  store %struct.Memory* %call_413520, %struct.Memory** %MEMORY

  br label %block_.L_413574

  ; Code: .L_413525:	 RIP: 413525	 Bytes: 0
block_.L_413525:

  ; Code: cmpl $0x0, -0x10(%rbp)	 RIP: 413525	 Bytes: 4
  %loadMem_413525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413525 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413525)
  store %struct.Memory* %call_413525, %struct.Memory** %MEMORY

  ; Code: je .L_41353c	 RIP: 413529	 Bytes: 6
  %loadMem_413529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413529 = call %struct.Memory* @routine_je_.L_41353c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413529, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_413529, %struct.Memory** %MEMORY

  %loadBr_413529 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413529 = icmp eq i8 %loadBr_413529, 1
  br i1 %cmpBr_413529, label %block_.L_41353c, label %block_41352f

block_41352f:
  ; Code: cmpl $0x5f5e100, -0xc(%rbp)	 RIP: 41352f	 Bytes: 7
  %loadMem_41352f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41352f = call %struct.Memory* @routine_cmpl__0x5f5e100__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41352f)
  store %struct.Memory* %call_41352f, %struct.Memory** %MEMORY

  ; Code: jne .L_41356f	 RIP: 413536	 Bytes: 6
  %loadMem_413536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413536 = call %struct.Memory* @routine_jne_.L_41356f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413536, i8* %BRANCH_TAKEN, i64 57, i64 6, i64 6)
  store %struct.Memory* %call_413536, %struct.Memory** %MEMORY

  %loadBr_413536 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413536 = icmp eq i8 %loadBr_413536, 1
  br i1 %cmpBr_413536, label %block_.L_41356f, label %block_.L_41353c

  ; Code: .L_41353c:	 RIP: 41353c	 Bytes: 0
block_.L_41353c:

  ; Code: movl $0xfff0bfb4, %edi	 RIP: 41353c	 Bytes: 5
  %loadMem_41353c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41353c = call %struct.Memory* @routine_movl__0xfff0bfb4___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41353c)
  store %struct.Memory* %call_41353c, %struct.Memory** %MEMORY

  ; Code: movl $0xf4240, %esi	 RIP: 413541	 Bytes: 5
  %loadMem_413541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413541 = call %struct.Memory* @routine_movl__0xf4240___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413541)
  store %struct.Memory* %call_413541, %struct.Memory** %MEMORY

  ; Code: movl $0xfff0bdc0, %edx	 RIP: 413546	 Bytes: 5
  %loadMem_413546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413546 = call %struct.Memory* @routine_movl__0xfff0bdc0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413546)
  store %struct.Memory* %call_413546, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %ecx	 RIP: 41354b	 Bytes: 5
  %loadMem_41354b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41354b = call %struct.Memory* @routine_movl__0xffffffff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41354b)
  store %struct.Memory* %call_41354b, %struct.Memory** %MEMORY

  ; Code: xorl %r8d, %r8d	 RIP: 413550	 Bytes: 3
  %loadMem_413550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413550 = call %struct.Memory* @routine_xorl__r8d___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413550)
  store %struct.Memory* %call_413550, %struct.Memory** %MEMORY

  ; Code: movl $0xc8, %r9d	 RIP: 413553	 Bytes: 6
  %loadMem_413553 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413553 = call %struct.Memory* @routine_movl__0xc8___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413553)
  store %struct.Memory* %call_413553, %struct.Memory** %MEMORY

  ; Code: movl 0x633b58, %eax	 RIP: 413559	 Bytes: 7
  %loadMem_413559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413559 = call %struct.Memory* @routine_movl_0x633b58___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413559)
  store %struct.Memory* %call_413559, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 413560	 Bytes: 3
  %loadMem_413560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413560 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413560)
  store %struct.Memory* %call_413560, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b58	 RIP: 413563	 Bytes: 7
  %loadMem_413563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413563 = call %struct.Memory* @routine_movl__eax__0x633b58(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413563)
  store %struct.Memory* %call_413563, %struct.Memory** %MEMORY

  ; Code: callq .StoreTT	 RIP: 41356a	 Bytes: 5
  %loadMem1_41356a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41356a = call %struct.Memory* @routine_callq_.StoreTT(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41356a, i64 53894, i64 5, i64 5)
  store %struct.Memory* %call1_41356a, %struct.Memory** %MEMORY

  %loadMem2_41356a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41356a = load i64, i64* %3
  %call2_41356a = call %struct.Memory* @sub_4207f0.StoreTT(%struct.State* %0, i64  %loadPC_41356a, %struct.Memory* %loadMem2_41356a)
  store %struct.Memory* %call2_41356a, %struct.Memory** %MEMORY

  ; Code: .L_41356f:	 RIP: 41356f	 Bytes: 0
  br label %block_.L_41356f
block_.L_41356f:

  ; Code: jmpq .L_413574	 RIP: 41356f	 Bytes: 5
  %loadMem_41356f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41356f = call %struct.Memory* @routine_jmpq_.L_413574(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41356f, i64 5, i64 5)
  store %struct.Memory* %call_41356f, %struct.Memory** %MEMORY

  br label %block_.L_413574

  ; Code: .L_413574:	 RIP: 413574	 Bytes: 0
block_.L_413574:

  ; Code: jmpq .L_4136b6	 RIP: 413574	 Bytes: 5
  %loadMem_413574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413574 = call %struct.Memory* @routine_jmpq_.L_4136b6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413574, i64 322, i64 5)
  store %struct.Memory* %call_413574, %struct.Memory** %MEMORY

  br label %block_.L_4136b6

  ; Code: .L_413579:	 RIP: 413579	 Bytes: 0
block_.L_413579:

  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 413579	 Bytes: 7
  %loadMem_413579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413579 = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413579)
  store %struct.Memory* %call_413579, %struct.Memory** %MEMORY

  ; Code: movl $0x5f5e100, -0xc(%rbp)	 RIP: 413580	 Bytes: 7
  %loadMem_413580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413580 = call %struct.Memory* @routine_movl__0x5f5e100__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413580)
  store %struct.Memory* %call_413580, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 413587	 Bytes: 7
  %loadMem_413587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413587 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413587)
  store %struct.Memory* %call_413587, %struct.Memory** %MEMORY

  ; Code: .L_41358e:	 RIP: 41358e	 Bytes: 0
  br label %block_.L_41358e
block_.L_41358e:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 41358e	 Bytes: 3
  %loadMem_41358e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41358e = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41358e)
  store %struct.Memory* %call_41358e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 413591	 Bytes: 4
  %loadMem_413591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413591 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413591)
  store %struct.Memory* %call_413591, %struct.Memory** %MEMORY

  ; Code: movzbl 0x1(%rcx), %edx	 RIP: 413595	 Bytes: 4
  %loadMem_413595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413595 = call %struct.Memory* @routine_movzbl_0x1__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413595)
  store %struct.Memory* %call_413595, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %eax	 RIP: 413599	 Bytes: 2
  %loadMem_413599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413599 = call %struct.Memory* @routine_cmpl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413599)
  store %struct.Memory* %call_413599, %struct.Memory** %MEMORY

  ; Code: jge .L_413613	 RIP: 41359b	 Bytes: 6
  %loadMem_41359b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41359b = call %struct.Memory* @routine_jge_.L_413613(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41359b, i8* %BRANCH_TAKEN, i64 120, i64 6, i64 6)
  store %struct.Memory* %call_41359b, %struct.Memory** %MEMORY

  %loadBr_41359b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41359b = icmp eq i8 %loadBr_41359b, 1
  br i1 %cmpBr_41359b, label %block_.L_413613, label %block_4135a1

block_4135a1:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4135a1	 Bytes: 4
  %loadMem_4135a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135a1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135a1)
  store %struct.Memory* %call_4135a1, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 4135a5	 Bytes: 4
  %loadMem_4135a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135a5 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135a5)
  store %struct.Memory* %call_4135a5, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 4135a9	 Bytes: 4
  %loadMem_4135a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135a9 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135a9)
  store %struct.Memory* %call_4135a9, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4135ad	 Bytes: 4
  %loadMem_4135ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135ad = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135ad)
  store %struct.Memory* %call_4135ad, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %edx	 RIP: 4135b1	 Bytes: 3
  %loadMem_4135b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135b1 = call %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135b1)
  store %struct.Memory* %call_4135b1, %struct.Memory** %MEMORY

  ; Code: addl -0x10(%rbp), %edx	 RIP: 4135b4	 Bytes: 3
  %loadMem_4135b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135b4 = call %struct.Memory* @routine_addl_MINUS0x10__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135b4)
  store %struct.Memory* %call_4135b4, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x10(%rbp)	 RIP: 4135b7	 Bytes: 3
  %loadMem_4135b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135b7 = call %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135b7)
  store %struct.Memory* %call_4135b7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5f5e100, -0x10(%rbp)	 RIP: 4135ba	 Bytes: 7
  %loadMem_4135ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135ba = call %struct.Memory* @routine_cmpl__0x5f5e100__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135ba)
  store %struct.Memory* %call_4135ba, %struct.Memory** %MEMORY

  ; Code: jle .L_4135ce	 RIP: 4135c1	 Bytes: 6
  %loadMem_4135c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135c1 = call %struct.Memory* @routine_jle_.L_4135ce(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135c1, i8* %BRANCH_TAKEN, i64 13, i64 6, i64 6)
  store %struct.Memory* %call_4135c1, %struct.Memory** %MEMORY

  %loadBr_4135c1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4135c1 = icmp eq i8 %loadBr_4135c1, 1
  br i1 %cmpBr_4135c1, label %block_.L_4135ce, label %block_4135c7

block_4135c7:
  ; Code: movl $0x5f5e100, -0x10(%rbp)	 RIP: 4135c7	 Bytes: 7
  %loadMem_4135c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135c7 = call %struct.Memory* @routine_movl__0x5f5e100__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135c7)
  store %struct.Memory* %call_4135c7, %struct.Memory** %MEMORY

  ; Code: .L_4135ce:	 RIP: 4135ce	 Bytes: 0
  br label %block_.L_4135ce
block_.L_4135ce:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4135ce	 Bytes: 4
  %loadMem_4135ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135ce = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135ce)
  store %struct.Memory* %call_4135ce, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 4135d2	 Bytes: 4
  %loadMem_4135d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135d2 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135d2)
  store %struct.Memory* %call_4135d2, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 4135d6	 Bytes: 4
  %loadMem_4135d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135d6 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135d6)
  store %struct.Memory* %call_4135d6, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4135da	 Bytes: 4
  %loadMem_4135da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135da = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135da)
  store %struct.Memory* %call_4135da, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 4135de	 Bytes: 3
  %loadMem_4135de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135de = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135de)
  store %struct.Memory* %call_4135de, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %edx	 RIP: 4135e1	 Bytes: 3
  %loadMem_4135e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135e1 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135e1)
  store %struct.Memory* %call_4135e1, %struct.Memory** %MEMORY

  ; Code: jge .L_413600	 RIP: 4135e4	 Bytes: 6
  %loadMem_4135e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135e4 = call %struct.Memory* @routine_jge_.L_413600(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135e4, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_4135e4, %struct.Memory** %MEMORY

  %loadBr_4135e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4135e4 = icmp eq i8 %loadBr_4135e4, 1
  br i1 %cmpBr_4135e4, label %block_.L_413600, label %block_4135ea

block_4135ea:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4135ea	 Bytes: 4
  %loadMem_4135ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135ea = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135ea)
  store %struct.Memory* %call_4135ea, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 4135ee	 Bytes: 4
  %loadMem_4135ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135ee = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135ee)
  store %struct.Memory* %call_4135ee, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rcx	 RIP: 4135f2	 Bytes: 4
  %loadMem_4135f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135f2 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135f2)
  store %struct.Memory* %call_4135f2, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4135f6	 Bytes: 4
  %loadMem_4135f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135f6 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135f6)
  store %struct.Memory* %call_4135f6, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 4135fa	 Bytes: 3
  %loadMem_4135fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135fa = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135fa)
  store %struct.Memory* %call_4135fa, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0xc(%rbp)	 RIP: 4135fd	 Bytes: 3
  %loadMem_4135fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4135fd = call %struct.Memory* @routine_movl__edx__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4135fd)
  store %struct.Memory* %call_4135fd, %struct.Memory** %MEMORY

  ; Code: .L_413600:	 RIP: 413600	 Bytes: 0
  br label %block_.L_413600
block_.L_413600:

  ; Code: jmpq .L_413605	 RIP: 413600	 Bytes: 5
  %loadMem_413600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413600 = call %struct.Memory* @routine_jmpq_.L_413605(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413600, i64 5, i64 5)
  store %struct.Memory* %call_413600, %struct.Memory** %MEMORY

  br label %block_.L_413605

  ; Code: .L_413605:	 RIP: 413605	 Bytes: 0
block_.L_413605:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 413605	 Bytes: 3
  %loadMem_413605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413605 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413605)
  store %struct.Memory* %call_413605, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 413608	 Bytes: 3
  %loadMem_413608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413608 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413608)
  store %struct.Memory* %call_413608, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 41360b	 Bytes: 3
  %loadMem_41360b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41360b = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41360b)
  store %struct.Memory* %call_41360b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41358e	 RIP: 41360e	 Bytes: 5
  %loadMem_41360e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41360e = call %struct.Memory* @routine_jmpq_.L_41358e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41360e, i64 -128, i64 5)
  store %struct.Memory* %call_41360e, %struct.Memory** %MEMORY

  br label %block_.L_41358e

  ; Code: .L_413613:	 RIP: 413613	 Bytes: 0
block_.L_413613:

  ; Code: cmpl $0x0, -0xc(%rbp)	 RIP: 413613	 Bytes: 4
  %loadMem_413613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413613 = call %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413613)
  store %struct.Memory* %call_413613, %struct.Memory** %MEMORY

  ; Code: je .L_41362a	 RIP: 413617	 Bytes: 6
  %loadMem_413617 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413617 = call %struct.Memory* @routine_je_.L_41362a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413617, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_413617, %struct.Memory** %MEMORY

  %loadBr_413617 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413617 = icmp eq i8 %loadBr_413617, 1
  br i1 %cmpBr_413617, label %block_.L_41362a, label %block_41361d

block_41361d:
  ; Code: cmpl $0x5f5e100, -0x10(%rbp)	 RIP: 41361d	 Bytes: 7
  %loadMem_41361d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41361d = call %struct.Memory* @routine_cmpl__0x5f5e100__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41361d)
  store %struct.Memory* %call_41361d, %struct.Memory** %MEMORY

  ; Code: jne .L_413662	 RIP: 413624	 Bytes: 6
  %loadMem_413624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413624 = call %struct.Memory* @routine_jne_.L_413662(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413624, i8* %BRANCH_TAKEN, i64 62, i64 6, i64 6)
  store %struct.Memory* %call_413624, %struct.Memory** %MEMORY

  %loadBr_413624 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413624 = icmp eq i8 %loadBr_413624, 1
  br i1 %cmpBr_413624, label %block_.L_413662, label %block_.L_41362a

  ; Code: .L_41362a:	 RIP: 41362a	 Bytes: 0
block_.L_41362a:

  ; Code: movl $0xf404c, %edi	 RIP: 41362a	 Bytes: 5
  %loadMem_41362a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41362a = call %struct.Memory* @routine_movl__0xf404c___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41362a)
  store %struct.Memory* %call_41362a, %struct.Memory** %MEMORY

  ; Code: movl $0xf4240, %esi	 RIP: 41362f	 Bytes: 5
  %loadMem_41362f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41362f = call %struct.Memory* @routine_movl__0xf4240___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41362f)
  store %struct.Memory* %call_41362f, %struct.Memory** %MEMORY

  ; Code: movl $0xfff0bdc0, %edx	 RIP: 413634	 Bytes: 5
  %loadMem_413634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413634 = call %struct.Memory* @routine_movl__0xfff0bdc0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413634)
  store %struct.Memory* %call_413634, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %ecx	 RIP: 413639	 Bytes: 5
  %loadMem_413639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413639 = call %struct.Memory* @routine_movl__0xffffffff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413639)
  store %struct.Memory* %call_413639, %struct.Memory** %MEMORY

  ; Code: xorl %r8d, %r8d	 RIP: 41363e	 Bytes: 3
  %loadMem_41363e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41363e = call %struct.Memory* @routine_xorl__r8d___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41363e)
  store %struct.Memory* %call_41363e, %struct.Memory** %MEMORY

  ; Code: movl $0xc8, %r9d	 RIP: 413641	 Bytes: 6
  %loadMem_413641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413641 = call %struct.Memory* @routine_movl__0xc8___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413641)
  store %struct.Memory* %call_413641, %struct.Memory** %MEMORY

  ; Code: movl 0x633b58, %eax	 RIP: 413647	 Bytes: 7
  %loadMem_413647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413647 = call %struct.Memory* @routine_movl_0x633b58___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413647)
  store %struct.Memory* %call_413647, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41364e	 Bytes: 3
  %loadMem_41364e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41364e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41364e)
  store %struct.Memory* %call_41364e, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b58	 RIP: 413651	 Bytes: 7
  %loadMem_413651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413651 = call %struct.Memory* @routine_movl__eax__0x633b58(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413651)
  store %struct.Memory* %call_413651, %struct.Memory** %MEMORY

  ; Code: callq .StoreTT	 RIP: 413658	 Bytes: 5
  %loadMem1_413658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_413658 = call %struct.Memory* @routine_callq_.StoreTT(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_413658, i64 53656, i64 5, i64 5)
  store %struct.Memory* %call1_413658, %struct.Memory** %MEMORY

  %loadMem2_413658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_413658 = load i64, i64* %3
  %call2_413658 = call %struct.Memory* @sub_4207f0.StoreTT(%struct.State* %0, i64  %loadPC_413658, %struct.Memory* %loadMem2_413658)
  store %struct.Memory* %call2_413658, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4136b1	 RIP: 41365d	 Bytes: 5
  %loadMem_41365d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41365d = call %struct.Memory* @routine_jmpq_.L_4136b1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41365d, i64 84, i64 5)
  store %struct.Memory* %call_41365d, %struct.Memory** %MEMORY

  br label %block_.L_4136b1

  ; Code: .L_413662:	 RIP: 413662	 Bytes: 0
block_.L_413662:

  ; Code: cmpl $0x0, -0x10(%rbp)	 RIP: 413662	 Bytes: 4
  %loadMem_413662 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413662 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413662)
  store %struct.Memory* %call_413662, %struct.Memory** %MEMORY

  ; Code: je .L_413679	 RIP: 413666	 Bytes: 6
  %loadMem_413666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413666 = call %struct.Memory* @routine_je_.L_413679(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413666, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_413666, %struct.Memory** %MEMORY

  %loadBr_413666 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413666 = icmp eq i8 %loadBr_413666, 1
  br i1 %cmpBr_413666, label %block_.L_413679, label %block_41366c

block_41366c:
  ; Code: cmpl $0x5f5e100, -0xc(%rbp)	 RIP: 41366c	 Bytes: 7
  %loadMem_41366c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41366c = call %struct.Memory* @routine_cmpl__0x5f5e100__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41366c)
  store %struct.Memory* %call_41366c, %struct.Memory** %MEMORY

  ; Code: jne .L_4136ac	 RIP: 413673	 Bytes: 6
  %loadMem_413673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413673 = call %struct.Memory* @routine_jne_.L_4136ac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413673, i8* %BRANCH_TAKEN, i64 57, i64 6, i64 6)
  store %struct.Memory* %call_413673, %struct.Memory** %MEMORY

  %loadBr_413673 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413673 = icmp eq i8 %loadBr_413673, 1
  br i1 %cmpBr_413673, label %block_.L_4136ac, label %block_.L_413679

  ; Code: .L_413679:	 RIP: 413679	 Bytes: 0
block_.L_413679:

  ; Code: movl $0xfff0bfb4, %edi	 RIP: 413679	 Bytes: 5
  %loadMem_413679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413679 = call %struct.Memory* @routine_movl__0xfff0bfb4___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413679)
  store %struct.Memory* %call_413679, %struct.Memory** %MEMORY

  ; Code: movl $0xf4240, %esi	 RIP: 41367e	 Bytes: 5
  %loadMem_41367e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41367e = call %struct.Memory* @routine_movl__0xf4240___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41367e)
  store %struct.Memory* %call_41367e, %struct.Memory** %MEMORY

  ; Code: movl $0xfff0bdc0, %edx	 RIP: 413683	 Bytes: 5
  %loadMem_413683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413683 = call %struct.Memory* @routine_movl__0xfff0bdc0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413683)
  store %struct.Memory* %call_413683, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %ecx	 RIP: 413688	 Bytes: 5
  %loadMem_413688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413688 = call %struct.Memory* @routine_movl__0xffffffff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413688)
  store %struct.Memory* %call_413688, %struct.Memory** %MEMORY

  ; Code: xorl %r8d, %r8d	 RIP: 41368d	 Bytes: 3
  %loadMem_41368d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41368d = call %struct.Memory* @routine_xorl__r8d___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41368d)
  store %struct.Memory* %call_41368d, %struct.Memory** %MEMORY

  ; Code: movl $0xc8, %r9d	 RIP: 413690	 Bytes: 6
  %loadMem_413690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413690 = call %struct.Memory* @routine_movl__0xc8___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413690)
  store %struct.Memory* %call_413690, %struct.Memory** %MEMORY

  ; Code: movl 0x633b58, %eax	 RIP: 413696	 Bytes: 7
  %loadMem_413696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413696 = call %struct.Memory* @routine_movl_0x633b58___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413696)
  store %struct.Memory* %call_413696, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41369d	 Bytes: 3
  %loadMem_41369d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41369d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41369d)
  store %struct.Memory* %call_41369d, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x633b58	 RIP: 4136a0	 Bytes: 7
  %loadMem_4136a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136a0 = call %struct.Memory* @routine_movl__eax__0x633b58(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136a0)
  store %struct.Memory* %call_4136a0, %struct.Memory** %MEMORY

  ; Code: callq .StoreTT	 RIP: 4136a7	 Bytes: 5
  %loadMem1_4136a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4136a7 = call %struct.Memory* @routine_callq_.StoreTT(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4136a7, i64 53577, i64 5, i64 5)
  store %struct.Memory* %call1_4136a7, %struct.Memory** %MEMORY

  %loadMem2_4136a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4136a7 = load i64, i64* %3
  %call2_4136a7 = call %struct.Memory* @sub_4207f0.StoreTT(%struct.State* %0, i64  %loadPC_4136a7, %struct.Memory* %loadMem2_4136a7)
  store %struct.Memory* %call2_4136a7, %struct.Memory** %MEMORY

  ; Code: .L_4136ac:	 RIP: 4136ac	 Bytes: 0
  br label %block_.L_4136ac
block_.L_4136ac:

  ; Code: jmpq .L_4136b1	 RIP: 4136ac	 Bytes: 5
  %loadMem_4136ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136ac = call %struct.Memory* @routine_jmpq_.L_4136b1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136ac, i64 5, i64 5)
  store %struct.Memory* %call_4136ac, %struct.Memory** %MEMORY

  br label %block_.L_4136b1

  ; Code: .L_4136b1:	 RIP: 4136b1	 Bytes: 0
block_.L_4136b1:

  ; Code: jmpq .L_4136b6	 RIP: 4136b1	 Bytes: 5
  %loadMem_4136b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136b1 = call %struct.Memory* @routine_jmpq_.L_4136b6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136b1, i64 5, i64 5)
  store %struct.Memory* %call_4136b1, %struct.Memory** %MEMORY

  br label %block_.L_4136b6

  ; Code: .L_4136b6:	 RIP: 4136b6	 Bytes: 0
block_.L_4136b6:

  ; Code: movl 0x633b40, %eax	 RIP: 4136b6	 Bytes: 7
  %loadMem_4136b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136b6 = call %struct.Memory* @routine_movl_0x633b40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136b6)
  store %struct.Memory* %call_4136b6, %struct.Memory** %MEMORY

  ; Code: movl 0x62ea38, %ecx	 RIP: 4136bd	 Bytes: 7
  %loadMem_4136bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136bd = call %struct.Memory* @routine_movl_0x62ea38___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136bd)
  store %struct.Memory* %call_4136bd, %struct.Memory** %MEMORY

  ; Code: addl 0x886bc0, %ecx	 RIP: 4136c4	 Bytes: 7
  %loadMem_4136c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136c4 = call %struct.Memory* @routine_addl_0x886bc0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136c4)
  store %struct.Memory* %call_4136c4, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 4136cb	 Bytes: 3
  %loadMem_4136cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136cb = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136cb)
  store %struct.Memory* %call_4136cb, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4136ce	 Bytes: 3
  %loadMem_4136ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136ce = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136ce)
  store %struct.Memory* %call_4136ce, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x84a3d0(,%rdx,4)	 RIP: 4136d1	 Bytes: 7
  %loadMem_4136d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136d1 = call %struct.Memory* @routine_movl__eax__0x84a3d0___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136d1)
  store %struct.Memory* %call_4136d1, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4136d8	 Bytes: 3
  %loadMem_4136d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136d8 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136d8)
  store %struct.Memory* %call_4136d8, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 4136db	 Bytes: 4
  %loadMem_4136db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136db = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136db)
  store %struct.Memory* %call_4136db, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x4(%rdx)	 RIP: 4136df	 Bytes: 3
  %loadMem_4136df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136df = call %struct.Memory* @routine_movl__eax__0x4__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136df)
  store %struct.Memory* %call_4136df, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %eax	 RIP: 4136e2	 Bytes: 3
  %loadMem_4136e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136e2 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136e2)
  store %struct.Memory* %call_4136e2, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdx	 RIP: 4136e5	 Bytes: 4
  %loadMem_4136e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136e5 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136e5)
  store %struct.Memory* %call_4136e5, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8(%rdx)	 RIP: 4136e9	 Bytes: 3
  %loadMem_4136e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136e9 = call %struct.Memory* @routine_movl__eax__0x8__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136e9)
  store %struct.Memory* %call_4136e9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_413d9e	 RIP: 4136ec	 Bytes: 5
  %loadMem_4136ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136ec = call %struct.Memory* @routine_jmpq_.L_413d9e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136ec, i64 1714, i64 5)
  store %struct.Memory* %call_4136ec, %struct.Memory** %MEMORY

  br label %block_.L_413d9e

  ; Code: .L_4136f1:	 RIP: 4136f1	 Bytes: 0
block_.L_4136f1:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4136f1	 Bytes: 4
  %loadMem_4136f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136f1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136f1)
  store %struct.Memory* %call_4136f1, %struct.Memory** %MEMORY

  ; Code: cmpb $0x0, 0x3(%rax)	 RIP: 4136f5	 Bytes: 4
  %loadMem_4136f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136f5 = call %struct.Memory* @routine_cmpb__0x0__0x3__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136f5)
  store %struct.Memory* %call_4136f5, %struct.Memory** %MEMORY

  ; Code: je .L_413d83	 RIP: 4136f9	 Bytes: 6
  %loadMem_4136f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136f9 = call %struct.Memory* @routine_je_.L_413d83(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136f9, i8* %BRANCH_TAKEN, i64 1674, i64 6, i64 6)
  store %struct.Memory* %call_4136f9, %struct.Memory** %MEMORY

  %loadBr_4136f9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4136f9 = icmp eq i8 %loadBr_4136f9, 1
  br i1 %cmpBr_4136f9, label %block_.L_413d83, label %block_4136ff

block_4136ff:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4136ff	 Bytes: 4
  %loadMem_4136ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4136ff = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4136ff)
  store %struct.Memory* %call_4136ff, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %ecx	 RIP: 413703	 Bytes: 3
  %loadMem_413703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413703 = call %struct.Memory* @routine_movzbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413703)
  store %struct.Memory* %call_413703, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %ecx	 RIP: 413706	 Bytes: 3
  %loadMem_413706 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413706 = call %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413706)
  store %struct.Memory* %call_413706, %struct.Memory** %MEMORY

  ; Code: jne .L_413cf3	 RIP: 413709	 Bytes: 6
  %loadMem_413709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413709 = call %struct.Memory* @routine_jne_.L_413cf3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413709, i8* %BRANCH_TAKEN, i64 1514, i64 6, i64 6)
  store %struct.Memory* %call_413709, %struct.Memory** %MEMORY

  %loadBr_413709 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413709 = icmp eq i8 %loadBr_413709, 1
  br i1 %cmpBr_413709, label %block_.L_413cf3, label %block_41370f

block_41370f:
  ; Code: movl 0x633b40, %eax	 RIP: 41370f	 Bytes: 7
  %loadMem_41370f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41370f = call %struct.Memory* @routine_movl_0x633b40___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41370f)
  store %struct.Memory* %call_41370f, %struct.Memory** %MEMORY

  ; Code: movl 0x62ea38, %ecx	 RIP: 413716	 Bytes: 7
  %loadMem_413716 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413716 = call %struct.Memory* @routine_movl_0x62ea38___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413716)
  store %struct.Memory* %call_413716, %struct.Memory** %MEMORY

  ; Code: addl 0x886bc0, %ecx	 RIP: 41371d	 Bytes: 7
  %loadMem_41371d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41371d = call %struct.Memory* @routine_addl_0x886bc0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41371d)
  store %struct.Memory* %call_41371d, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 413724	 Bytes: 3
  %loadMem_413724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413724 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413724)
  store %struct.Memory* %call_413724, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 413727	 Bytes: 3
  %loadMem_413727 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413727 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413727)
  store %struct.Memory* %call_413727, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x84a3d0(,%rdx,4)	 RIP: 41372a	 Bytes: 7
  %loadMem_41372a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41372a = call %struct.Memory* @routine_movl__eax__0x84a3d0___rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41372a)
  store %struct.Memory* %call_41372a, %struct.Memory** %MEMORY

  ; Code: callq .is_draw	 RIP: 413731	 Bytes: 5
  %loadMem1_413731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_413731 = call %struct.Memory* @routine_callq_.is_draw(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_413731, i64 -69137, i64 5, i64 5)
  store %struct.Memory* %call1_413731, %struct.Memory** %MEMORY

  %loadMem2_413731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_413731 = load i64, i64* %3
  %call2_413731 = call %struct.Memory* @sub_402920.is_draw(%struct.State* %0, i64  %loadPC_413731, %struct.Memory* %loadMem2_413731)
  store %struct.Memory* %call2_413731, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 413736	 Bytes: 3
  %loadMem_413736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413736 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413736)
  store %struct.Memory* %call_413736, %struct.Memory** %MEMORY

  ; Code: jne .L_413750	 RIP: 413739	 Bytes: 6
  %loadMem_413739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413739 = call %struct.Memory* @routine_jne_.L_413750(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413739, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_413739, %struct.Memory** %MEMORY

  %loadBr_413739 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413739 = icmp eq i8 %loadBr_413739, 1
  br i1 %cmpBr_413739, label %block_.L_413750, label %block_41373f

block_41373f:
  ; Code: cmpl $0xc8, 0x886bc0	 RIP: 41373f	 Bytes: 11
  %loadMem_41373f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41373f = call %struct.Memory* @routine_cmpl__0xc8__0x886bc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41373f)
  store %struct.Memory* %call_41373f, %struct.Memory** %MEMORY

  ; Code: jle .L_41376b	 RIP: 41374a	 Bytes: 6
  %loadMem_41374a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41374a = call %struct.Memory* @routine_jle_.L_41376b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41374a, i8* %BRANCH_TAKEN, i64 33, i64 6, i64 6)
  store %struct.Memory* %call_41374a, %struct.Memory** %MEMORY

  %loadBr_41374a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41374a = icmp eq i8 %loadBr_41374a, 1
  br i1 %cmpBr_41374a, label %block_.L_41376b, label %block_.L_413750

  ; Code: .L_413750:	 RIP: 413750	 Bytes: 0
block_.L_413750:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 413750	 Bytes: 4
  %loadMem_413750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413750 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413750)
  store %struct.Memory* %call_413750, %struct.Memory** %MEMORY

  ; Code: movl $0xc350, 0x4(%rax)	 RIP: 413754	 Bytes: 7
  %loadMem_413754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413754 = call %struct.Memory* @routine_movl__0xc350__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413754)
  store %struct.Memory* %call_413754, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 41375b	 Bytes: 4
  %loadMem_41375b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41375b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41375b)
  store %struct.Memory* %call_41375b, %struct.Memory** %MEMORY

  ; Code: movl $0xc350, 0x8(%rax)	 RIP: 41375f	 Bytes: 7
  %loadMem_41375f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41375f = call %struct.Memory* @routine_movl__0xc350__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41375f)
  store %struct.Memory* %call_41375f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_413d9e	 RIP: 413766	 Bytes: 5
  %loadMem_413766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413766 = call %struct.Memory* @routine_jmpq_.L_413d9e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413766, i64 1592, i64 5)
  store %struct.Memory* %call_413766, %struct.Memory** %MEMORY

  br label %block_.L_413d9e

  ; Code: .L_41376b:	 RIP: 41376b	 Bytes: 0
block_.L_41376b:

  ; Code: cmpl $0x4, 0x85f154	 RIP: 41376b	 Bytes: 8
  %loadMem_41376b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41376b = call %struct.Memory* @routine_cmpl__0x4__0x85f154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41376b)
  store %struct.Memory* %call_41376b, %struct.Memory** %MEMORY

  ; Code: je .L_413845	 RIP: 413773	 Bytes: 6
  %loadMem_413773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413773 = call %struct.Memory* @routine_je_.L_413845(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413773, i8* %BRANCH_TAKEN, i64 210, i64 6, i64 6)
  store %struct.Memory* %call_413773, %struct.Memory** %MEMORY

  %loadBr_413773 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413773 = icmp eq i8 %loadBr_413773, 1
  br i1 %cmpBr_413773, label %block_.L_413845, label %block_413779

block_413779:
  ; Code: leaq -0x3020(%rbp), %rdi	 RIP: 413779	 Bytes: 7
  %loadMem_413779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413779 = call %struct.Memory* @routine_leaq_MINUS0x3020__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413779)
  store %struct.Memory* %call_413779, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x3028(%rbp)	 RIP: 413780	 Bytes: 10
  %loadMem_413780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413780 = call %struct.Memory* @routine_movl__0x0__MINUS0x3028__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413780)
  store %struct.Memory* %call_413780, %struct.Memory** %MEMORY

  ; Code: callq .gen	 RIP: 41378a	 Bytes: 5
  %loadMem1_41378a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41378a = call %struct.Memory* @routine_callq_.gen(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41378a, i64 -47450, i64 5, i64 5)
  store %struct.Memory* %call1_41378a, %struct.Memory** %MEMORY

  %loadMem2_41378a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41378a = load i64, i64* %3
  %call2_41378a = call %struct.Memory* @sub_407e30.gen(%struct.State* %0, i64  %loadPC_41378a, %struct.Memory* %loadMem2_41378a)
  store %struct.Memory* %call2_41378a, %struct.Memory** %MEMORY

  ; Code: movl 0x85f150, %eax	 RIP: 41378f	 Bytes: 7
  %loadMem_41378f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41378f = call %struct.Memory* @routine_movl_0x85f150___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41378f)
  store %struct.Memory* %call_41378f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3028(%rbp)	 RIP: 413796	 Bytes: 6
  %loadMem_413796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413796 = call %struct.Memory* @routine_movl__eax__MINUS0x3028__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413796)
  store %struct.Memory* %call_413796, %struct.Memory** %MEMORY

  ; Code: callq .in_check	 RIP: 41379c	 Bytes: 5
  %loadMem1_41379c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41379c = call %struct.Memory* @routine_callq_.in_check(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41379c, i64 -40636, i64 5, i64 5)
  store %struct.Memory* %call1_41379c, %struct.Memory** %MEMORY

  %loadMem2_41379c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41379c = load i64, i64* %3
  %call2_41379c = call %struct.Memory* @sub_4098e0.in_check(%struct.State* %0, i64  %loadPC_41379c, %struct.Memory* %loadMem2_41379c)
  store %struct.Memory* %call2_41379c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x302c(%rbp)	 RIP: 4137a1	 Bytes: 6
  %loadMem_4137a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137a1 = call %struct.Memory* @routine_movl__eax__MINUS0x302c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137a1)
  store %struct.Memory* %call_4137a1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, 0x85f154	 RIP: 4137a7	 Bytes: 8
  %loadMem_4137a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137a7 = call %struct.Memory* @routine_cmpl__0x3__0x85f154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137a7)
  store %struct.Memory* %call_4137a7, %struct.Memory** %MEMORY

  ; Code: je .L_413833	 RIP: 4137af	 Bytes: 6
  %loadMem_4137af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137af = call %struct.Memory* @routine_je_.L_413833(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137af, i8* %BRANCH_TAKEN, i64 132, i64 6, i64 6)
  store %struct.Memory* %call_4137af, %struct.Memory** %MEMORY

  %loadBr_4137af = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4137af = icmp eq i8 %loadBr_4137af, 1
  br i1 %cmpBr_4137af, label %block_.L_413833, label %block_4137b5

block_4137b5:
  ; Code: movl $0x0, -0x3024(%rbp)	 RIP: 4137b5	 Bytes: 10
  %loadMem_4137b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137b5 = call %struct.Memory* @routine_movl__0x0__MINUS0x3024__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137b5)
  store %struct.Memory* %call_4137b5, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 4137bf	 Bytes: 7
  %loadMem_4137bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137bf = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137bf)
  store %struct.Memory* %call_4137bf, %struct.Memory** %MEMORY

  ; Code: .L_4137c6:	 RIP: 4137c6	 Bytes: 0
  br label %block_.L_4137c6
block_.L_4137c6:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 4137c6	 Bytes: 3
  %loadMem_4137c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137c6 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137c6)
  store %struct.Memory* %call_4137c6, %struct.Memory** %MEMORY

  ; Code: cmpl -0x3028(%rbp), %eax	 RIP: 4137c9	 Bytes: 6
  %loadMem_4137c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137c9 = call %struct.Memory* @routine_cmpl_MINUS0x3028__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137c9)
  store %struct.Memory* %call_4137c9, %struct.Memory** %MEMORY

  ; Code: jge .L_41382e	 RIP: 4137cf	 Bytes: 6
  %loadMem_4137cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137cf = call %struct.Memory* @routine_jge_.L_41382e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137cf, i8* %BRANCH_TAKEN, i64 95, i64 6, i64 6)
  store %struct.Memory* %call_4137cf, %struct.Memory** %MEMORY

  %loadBr_4137cf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4137cf = icmp eq i8 %loadBr_4137cf, 1
  br i1 %cmpBr_4137cf, label %block_.L_41382e, label %block_4137d5

block_4137d5:
  ; Code: leaq -0x3020(%rbp), %rdi	 RIP: 4137d5	 Bytes: 7
  %loadMem_4137d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137d5 = call %struct.Memory* @routine_leaq_MINUS0x3020__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137d5)
  store %struct.Memory* %call_4137d5, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 4137dc	 Bytes: 3
  %loadMem_4137dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137dc = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137dc)
  store %struct.Memory* %call_4137dc, %struct.Memory** %MEMORY

  ; Code: callq .make	 RIP: 4137df	 Bytes: 5
  %loadMem1_4137df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4137df = call %struct.Memory* @routine_callq_.make(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4137df, i64 -32943, i64 5, i64 5)
  store %struct.Memory* %call1_4137df, %struct.Memory** %MEMORY

  %loadMem2_4137df = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4137df = load i64, i64* %3
  %call2_4137df = call %struct.Memory* @sub_40b730.make(%struct.State* %0, i64  %loadPC_4137df, %struct.Memory* %loadMem2_4137df)
  store %struct.Memory* %call2_4137df, %struct.Memory** %MEMORY

  ; Code: leaq -0x3020(%rbp), %rdi	 RIP: 4137e4	 Bytes: 7
  %loadMem_4137e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137e4 = call %struct.Memory* @routine_leaq_MINUS0x3020__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137e4)
  store %struct.Memory* %call_4137e4, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 4137eb	 Bytes: 3
  %loadMem_4137eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137eb = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137eb)
  store %struct.Memory* %call_4137eb, %struct.Memory** %MEMORY

  ; Code: movl -0x302c(%rbp), %edx	 RIP: 4137ee	 Bytes: 6
  %loadMem_4137ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137ee = call %struct.Memory* @routine_movl_MINUS0x302c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137ee)
  store %struct.Memory* %call_4137ee, %struct.Memory** %MEMORY

  ; Code: callq .check_legal	 RIP: 4137f4	 Bytes: 5
  %loadMem1_4137f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4137f4 = call %struct.Memory* @routine_callq_.check_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4137f4, i64 -53620, i64 5, i64 5)
  store %struct.Memory* %call1_4137f4, %struct.Memory** %MEMORY

  %loadMem2_4137f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4137f4 = load i64, i64* %3
  %call2_4137f4 = call %struct.Memory* @sub_406680.check_legal(%struct.State* %0, i64  %loadPC_4137f4, %struct.Memory* %loadMem2_4137f4)
  store %struct.Memory* %call2_4137f4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4137f9	 Bytes: 3
  %loadMem_4137f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137f9 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137f9)
  store %struct.Memory* %call_4137f9, %struct.Memory** %MEMORY

  ; Code: je .L_413811	 RIP: 4137fc	 Bytes: 6
  %loadMem_4137fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4137fc = call %struct.Memory* @routine_je_.L_413811(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4137fc, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_4137fc, %struct.Memory** %MEMORY

  %loadBr_4137fc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4137fc = icmp eq i8 %loadBr_4137fc, 1
  br i1 %cmpBr_4137fc, label %block_.L_413811, label %block_413802

block_413802:
  ; Code: movl -0x3024(%rbp), %eax	 RIP: 413802	 Bytes: 6
  %loadMem_413802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413802 = call %struct.Memory* @routine_movl_MINUS0x3024__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413802)
  store %struct.Memory* %call_413802, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 413808	 Bytes: 3
  %loadMem_413808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413808 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413808)
  store %struct.Memory* %call_413808, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3024(%rbp)	 RIP: 41380b	 Bytes: 6
  %loadMem_41380b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41380b = call %struct.Memory* @routine_movl__eax__MINUS0x3024__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41380b)
  store %struct.Memory* %call_41380b, %struct.Memory** %MEMORY

  ; Code: .L_413811:	 RIP: 413811	 Bytes: 0
  br label %block_.L_413811
block_.L_413811:

  ; Code: leaq -0x3020(%rbp), %rdi	 RIP: 413811	 Bytes: 7
  %loadMem_413811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413811 = call %struct.Memory* @routine_leaq_MINUS0x3020__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413811)
  store %struct.Memory* %call_413811, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 413818	 Bytes: 3
  %loadMem_413818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413818 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413818)
  store %struct.Memory* %call_413818, %struct.Memory** %MEMORY

  ; Code: callq .unmake	 RIP: 41381b	 Bytes: 5
  %loadMem1_41381b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41381b = call %struct.Memory* @routine_callq_.unmake(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41381b, i64 -28795, i64 5, i64 5)
  store %struct.Memory* %call1_41381b, %struct.Memory** %MEMORY

  %loadMem2_41381b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41381b = load i64, i64* %3
  %call2_41381b = call %struct.Memory* @sub_40c7a0.unmake(%struct.State* %0, i64  %loadPC_41381b, %struct.Memory* %loadMem2_41381b)
  store %struct.Memory* %call2_41381b, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 413820	 Bytes: 3
  %loadMem_413820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413820 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413820)
  store %struct.Memory* %call_413820, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 413823	 Bytes: 3
  %loadMem_413823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413823 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413823)
  store %struct.Memory* %call_413823, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 413826	 Bytes: 3
  %loadMem_413826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413826 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413826)
  store %struct.Memory* %call_413826, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4137c6	 RIP: 413829	 Bytes: 5
  %loadMem_413829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413829 = call %struct.Memory* @routine_jmpq_.L_4137c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413829, i64 -99, i64 5)
  store %struct.Memory* %call_413829, %struct.Memory** %MEMORY

  br label %block_.L_4137c6

  ; Code: .L_41382e:	 RIP: 41382e	 Bytes: 0
block_.L_41382e:

  ; Code: jmpq .L_413840	 RIP: 41382e	 Bytes: 5
  %loadMem_41382e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41382e = call %struct.Memory* @routine_jmpq_.L_413840(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41382e, i64 18, i64 5)
  store %struct.Memory* %call_41382e, %struct.Memory** %MEMORY

  br label %block_.L_413840

  ; Code: .L_413833:	 RIP: 413833	 Bytes: 0
block_.L_413833:

  ; Code: movl 0x85f150, %eax	 RIP: 413833	 Bytes: 7
  %loadMem_413833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413833 = call %struct.Memory* @routine_movl_0x85f150___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413833)
  store %struct.Memory* %call_413833, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3024(%rbp)	 RIP: 41383a	 Bytes: 6
  %loadMem_41383a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41383a = call %struct.Memory* @routine_movl__eax__MINUS0x3024__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41383a)
  store %struct.Memory* %call_41383a, %struct.Memory** %MEMORY

  ; Code: .L_413840:	 RIP: 413840	 Bytes: 0
  br label %block_.L_413840
block_.L_413840:

  ; Code: jmpq .L_4139c8	 RIP: 413840	 Bytes: 5
  %loadMem_413840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413840 = call %struct.Memory* @routine_jmpq_.L_4139c8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413840, i64 392, i64 5)
  store %struct.Memory* %call_413840, %struct.Memory** %MEMORY

  br label %block_.L_4139c8

  ; Code: .L_413845:	 RIP: 413845	 Bytes: 0
block_.L_413845:

  ; Code: leaq -0x3020(%rbp), %rdi	 RIP: 413845	 Bytes: 7
  %loadMem_413845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413845 = call %struct.Memory* @routine_leaq_MINUS0x3020__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413845)
  store %struct.Memory* %call_413845, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x3024(%rbp)	 RIP: 41384c	 Bytes: 10
  %loadMem_41384c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41384c = call %struct.Memory* @routine_movl__0x0__MINUS0x3024__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41384c)
  store %struct.Memory* %call_41384c, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x85f164	 RIP: 413856	 Bytes: 11
  %loadMem_413856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413856 = call %struct.Memory* @routine_movl__0x1__0x85f164(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413856)
  store %struct.Memory* %call_413856, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x3028(%rbp)	 RIP: 413861	 Bytes: 10
  %loadMem_413861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413861 = call %struct.Memory* @routine_movl__0x0__MINUS0x3028__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413861)
  store %struct.Memory* %call_413861, %struct.Memory** %MEMORY

  ; Code: callq .gen	 RIP: 41386b	 Bytes: 5
  %loadMem1_41386b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41386b = call %struct.Memory* @routine_callq_.gen(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41386b, i64 -47675, i64 5, i64 5)
  store %struct.Memory* %call1_41386b, %struct.Memory** %MEMORY

  %loadMem2_41386b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41386b = load i64, i64* %3
  %call2_41386b = call %struct.Memory* @sub_407e30.gen(%struct.State* %0, i64  %loadPC_41386b, %struct.Memory* %loadMem2_41386b)
  store %struct.Memory* %call2_41386b, %struct.Memory** %MEMORY

  ; Code: movl 0x85f150, %eax	 RIP: 413870	 Bytes: 7
  %loadMem_413870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413870 = call %struct.Memory* @routine_movl_0x85f150___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413870)
  store %struct.Memory* %call_413870, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3028(%rbp)	 RIP: 413877	 Bytes: 6
  %loadMem_413877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413877 = call %struct.Memory* @routine_movl__eax__MINUS0x3028__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413877)
  store %struct.Memory* %call_413877, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x85f164	 RIP: 41387d	 Bytes: 11
  %loadMem_41387d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41387d = call %struct.Memory* @routine_movl__0x0__0x85f164(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41387d)
  store %struct.Memory* %call_41387d, %struct.Memory** %MEMORY

  ; Code: callq .in_check	 RIP: 413888	 Bytes: 5
  %loadMem1_413888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_413888 = call %struct.Memory* @routine_callq_.in_check(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_413888, i64 -40872, i64 5, i64 5)
  store %struct.Memory* %call1_413888, %struct.Memory** %MEMORY

  %loadMem2_413888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_413888 = load i64, i64* %3
  %call2_413888 = call %struct.Memory* @sub_4098e0.in_check(%struct.State* %0, i64  %loadPC_413888, %struct.Memory* %loadMem2_413888)
  store %struct.Memory* %call2_413888, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x302c(%rbp)	 RIP: 41388d	 Bytes: 6
  %loadMem_41388d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41388d = call %struct.Memory* @routine_movl__eax__MINUS0x302c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41388d)
  store %struct.Memory* %call_41388d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x3028(%rbp)	 RIP: 413893	 Bytes: 7
  %loadMem_413893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413893 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x3028__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413893)
  store %struct.Memory* %call_413893, %struct.Memory** %MEMORY

  ; Code: je .L_413914	 RIP: 41389a	 Bytes: 6
  %loadMem_41389a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41389a = call %struct.Memory* @routine_je_.L_413914(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41389a, i8* %BRANCH_TAKEN, i64 122, i64 6, i64 6)
  store %struct.Memory* %call_41389a, %struct.Memory** %MEMORY

  %loadBr_41389a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41389a = icmp eq i8 %loadBr_41389a, 1
  br i1 %cmpBr_41389a, label %block_.L_413914, label %block_4138a0

block_4138a0:
  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 4138a0	 Bytes: 7
  %loadMem_4138a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138a0 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138a0)
  store %struct.Memory* %call_4138a0, %struct.Memory** %MEMORY

  ; Code: .L_4138a7:	 RIP: 4138a7	 Bytes: 0
  br label %block_.L_4138a7
block_.L_4138a7:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 4138a7	 Bytes: 3
  %loadMem_4138a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138a7 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138a7)
  store %struct.Memory* %call_4138a7, %struct.Memory** %MEMORY

  ; Code: cmpl -0x3028(%rbp), %eax	 RIP: 4138aa	 Bytes: 6
  %loadMem_4138aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138aa = call %struct.Memory* @routine_cmpl_MINUS0x3028__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138aa)
  store %struct.Memory* %call_4138aa, %struct.Memory** %MEMORY

  ; Code: jge .L_41390f	 RIP: 4138b0	 Bytes: 6
  %loadMem_4138b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138b0 = call %struct.Memory* @routine_jge_.L_41390f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138b0, i8* %BRANCH_TAKEN, i64 95, i64 6, i64 6)
  store %struct.Memory* %call_4138b0, %struct.Memory** %MEMORY

  %loadBr_4138b0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4138b0 = icmp eq i8 %loadBr_4138b0, 1
  br i1 %cmpBr_4138b0, label %block_.L_41390f, label %block_4138b6

block_4138b6:
  ; Code: leaq -0x3020(%rbp), %rdi	 RIP: 4138b6	 Bytes: 7
  %loadMem_4138b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138b6 = call %struct.Memory* @routine_leaq_MINUS0x3020__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138b6)
  store %struct.Memory* %call_4138b6, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 4138bd	 Bytes: 3
  %loadMem_4138bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138bd = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138bd)
  store %struct.Memory* %call_4138bd, %struct.Memory** %MEMORY

  ; Code: callq .make	 RIP: 4138c0	 Bytes: 5
  %loadMem1_4138c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4138c0 = call %struct.Memory* @routine_callq_.make(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4138c0, i64 -33168, i64 5, i64 5)
  store %struct.Memory* %call1_4138c0, %struct.Memory** %MEMORY

  %loadMem2_4138c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4138c0 = load i64, i64* %3
  %call2_4138c0 = call %struct.Memory* @sub_40b730.make(%struct.State* %0, i64  %loadPC_4138c0, %struct.Memory* %loadMem2_4138c0)
  store %struct.Memory* %call2_4138c0, %struct.Memory** %MEMORY

  ; Code: leaq -0x3020(%rbp), %rdi	 RIP: 4138c5	 Bytes: 7
  %loadMem_4138c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138c5 = call %struct.Memory* @routine_leaq_MINUS0x3020__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138c5)
  store %struct.Memory* %call_4138c5, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 4138cc	 Bytes: 3
  %loadMem_4138cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138cc = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138cc)
  store %struct.Memory* %call_4138cc, %struct.Memory** %MEMORY

  ; Code: movl -0x302c(%rbp), %edx	 RIP: 4138cf	 Bytes: 6
  %loadMem_4138cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138cf = call %struct.Memory* @routine_movl_MINUS0x302c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138cf)
  store %struct.Memory* %call_4138cf, %struct.Memory** %MEMORY

  ; Code: callq .check_legal	 RIP: 4138d5	 Bytes: 5
  %loadMem1_4138d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4138d5 = call %struct.Memory* @routine_callq_.check_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4138d5, i64 -53845, i64 5, i64 5)
  store %struct.Memory* %call1_4138d5, %struct.Memory** %MEMORY

  %loadMem2_4138d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4138d5 = load i64, i64* %3
  %call2_4138d5 = call %struct.Memory* @sub_406680.check_legal(%struct.State* %0, i64  %loadPC_4138d5, %struct.Memory* %loadMem2_4138d5)
  store %struct.Memory* %call2_4138d5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4138da	 Bytes: 3
  %loadMem_4138da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138da = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138da)
  store %struct.Memory* %call_4138da, %struct.Memory** %MEMORY

  ; Code: je .L_4138f2	 RIP: 4138dd	 Bytes: 6
  %loadMem_4138dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138dd = call %struct.Memory* @routine_je_.L_4138f2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138dd, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_4138dd, %struct.Memory** %MEMORY

  %loadBr_4138dd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4138dd = icmp eq i8 %loadBr_4138dd, 1
  br i1 %cmpBr_4138dd, label %block_.L_4138f2, label %block_4138e3

block_4138e3:
  ; Code: movl -0x3024(%rbp), %eax	 RIP: 4138e3	 Bytes: 6
  %loadMem_4138e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138e3 = call %struct.Memory* @routine_movl_MINUS0x3024__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138e3)
  store %struct.Memory* %call_4138e3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4138e9	 Bytes: 3
  %loadMem_4138e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138e9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138e9)
  store %struct.Memory* %call_4138e9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3024(%rbp)	 RIP: 4138ec	 Bytes: 6
  %loadMem_4138ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138ec = call %struct.Memory* @routine_movl__eax__MINUS0x3024__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138ec)
  store %struct.Memory* %call_4138ec, %struct.Memory** %MEMORY

  ; Code: .L_4138f2:	 RIP: 4138f2	 Bytes: 0
  br label %block_.L_4138f2
block_.L_4138f2:

  ; Code: leaq -0x3020(%rbp), %rdi	 RIP: 4138f2	 Bytes: 7
  %loadMem_4138f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138f2 = call %struct.Memory* @routine_leaq_MINUS0x3020__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138f2)
  store %struct.Memory* %call_4138f2, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 4138f9	 Bytes: 3
  %loadMem_4138f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4138f9 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4138f9)
  store %struct.Memory* %call_4138f9, %struct.Memory** %MEMORY

  ; Code: callq .unmake	 RIP: 4138fc	 Bytes: 5
  %loadMem1_4138fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4138fc = call %struct.Memory* @routine_callq_.unmake(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4138fc, i64 -29020, i64 5, i64 5)
  store %struct.Memory* %call1_4138fc, %struct.Memory** %MEMORY

  %loadMem2_4138fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4138fc = load i64, i64* %3
  %call2_4138fc = call %struct.Memory* @sub_40c7a0.unmake(%struct.State* %0, i64  %loadPC_4138fc, %struct.Memory* %loadMem2_4138fc)
  store %struct.Memory* %call2_4138fc, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 413901	 Bytes: 3
  %loadMem_413901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413901 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413901)
  store %struct.Memory* %call_413901, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 413904	 Bytes: 3
  %loadMem_413904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413904 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413904)
  store %struct.Memory* %call_413904, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 413907	 Bytes: 3
  %loadMem_413907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413907 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413907)
  store %struct.Memory* %call_413907, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4138a7	 RIP: 41390a	 Bytes: 5
  %loadMem_41390a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41390a = call %struct.Memory* @routine_jmpq_.L_4138a7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41390a, i64 -99, i64 5)
  store %struct.Memory* %call_41390a, %struct.Memory** %MEMORY

  br label %block_.L_4138a7

  ; Code: .L_41390f:	 RIP: 41390f	 Bytes: 0
block_.L_41390f:

  ; Code: jmpq .L_413914	 RIP: 41390f	 Bytes: 5
  %loadMem_41390f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41390f = call %struct.Memory* @routine_jmpq_.L_413914(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41390f, i64 5, i64 5)
  store %struct.Memory* %call_41390f, %struct.Memory** %MEMORY

  br label %block_.L_413914

  ; Code: .L_413914:	 RIP: 413914	 Bytes: 0
block_.L_413914:

  ; Code: cmpl $0x0, -0x3024(%rbp)	 RIP: 413914	 Bytes: 7
  %loadMem_413914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413914 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x3024__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413914)
  store %struct.Memory* %call_413914, %struct.Memory** %MEMORY

  ; Code: jne .L_4139c3	 RIP: 41391b	 Bytes: 6
  %loadMem_41391b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41391b = call %struct.Memory* @routine_jne_.L_4139c3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41391b, i8* %BRANCH_TAKEN, i64 168, i64 6, i64 6)
  store %struct.Memory* %call_41391b, %struct.Memory** %MEMORY

  %loadBr_41391b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41391b = icmp eq i8 %loadBr_41391b, 1
  br i1 %cmpBr_41391b, label %block_.L_4139c3, label %block_413921

block_413921:
  ; Code: leaq -0x3020(%rbp), %rdi	 RIP: 413921	 Bytes: 7
  %loadMem_413921 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413921 = call %struct.Memory* @routine_leaq_MINUS0x3020__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413921)
  store %struct.Memory* %call_413921, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x85f164	 RIP: 413928	 Bytes: 11
  %loadMem_413928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413928 = call %struct.Memory* @routine_movl__0x0__0x85f164(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413928)
  store %struct.Memory* %call_413928, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x3028(%rbp)	 RIP: 413933	 Bytes: 10
  %loadMem_413933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413933 = call %struct.Memory* @routine_movl__0x0__MINUS0x3028__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413933)
  store %struct.Memory* %call_413933, %struct.Memory** %MEMORY

  ; Code: callq .gen	 RIP: 41393d	 Bytes: 5
  %loadMem1_41393d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41393d = call %struct.Memory* @routine_callq_.gen(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41393d, i64 -47885, i64 5, i64 5)
  store %struct.Memory* %call1_41393d, %struct.Memory** %MEMORY

  %loadMem2_41393d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41393d = load i64, i64* %3
  %call2_41393d = call %struct.Memory* @sub_407e30.gen(%struct.State* %0, i64  %loadPC_41393d, %struct.Memory* %loadMem2_41393d)
  store %struct.Memory* %call2_41393d, %struct.Memory** %MEMORY

  ; Code: movl 0x85f150, %eax	 RIP: 413942	 Bytes: 7
  %loadMem_413942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413942 = call %struct.Memory* @routine_movl_0x85f150___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413942)
  store %struct.Memory* %call_413942, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3028(%rbp)	 RIP: 413949	 Bytes: 6
  %loadMem_413949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413949 = call %struct.Memory* @routine_movl__eax__MINUS0x3028__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413949)
  store %struct.Memory* %call_413949, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 41394f	 Bytes: 7
  %loadMem_41394f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41394f = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41394f)
  store %struct.Memory* %call_41394f, %struct.Memory** %MEMORY

  ; Code: .L_413956:	 RIP: 413956	 Bytes: 0
  br label %block_.L_413956
block_.L_413956:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 413956	 Bytes: 3
  %loadMem_413956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413956 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413956)
  store %struct.Memory* %call_413956, %struct.Memory** %MEMORY

  ; Code: cmpl -0x3028(%rbp), %eax	 RIP: 413959	 Bytes: 6
  %loadMem_413959 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413959 = call %struct.Memory* @routine_cmpl_MINUS0x3028__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413959)
  store %struct.Memory* %call_413959, %struct.Memory** %MEMORY

  ; Code: jge .L_4139be	 RIP: 41395f	 Bytes: 6
  %loadMem_41395f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41395f = call %struct.Memory* @routine_jge_.L_4139be(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41395f, i8* %BRANCH_TAKEN, i64 95, i64 6, i64 6)
  store %struct.Memory* %call_41395f, %struct.Memory** %MEMORY

  %loadBr_41395f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41395f = icmp eq i8 %loadBr_41395f, 1
  br i1 %cmpBr_41395f, label %block_.L_4139be, label %block_413965

block_413965:
  ; Code: leaq -0x3020(%rbp), %rdi	 RIP: 413965	 Bytes: 7
  %loadMem_413965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413965 = call %struct.Memory* @routine_leaq_MINUS0x3020__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413965)
  store %struct.Memory* %call_413965, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 41396c	 Bytes: 3
  %loadMem_41396c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41396c = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41396c)
  store %struct.Memory* %call_41396c, %struct.Memory** %MEMORY

  ; Code: callq .make	 RIP: 41396f	 Bytes: 5
  %loadMem1_41396f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41396f = call %struct.Memory* @routine_callq_.make(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41396f, i64 -33343, i64 5, i64 5)
  store %struct.Memory* %call1_41396f, %struct.Memory** %MEMORY

  %loadMem2_41396f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41396f = load i64, i64* %3
  %call2_41396f = call %struct.Memory* @sub_40b730.make(%struct.State* %0, i64  %loadPC_41396f, %struct.Memory* %loadMem2_41396f)
  store %struct.Memory* %call2_41396f, %struct.Memory** %MEMORY

  ; Code: leaq -0x3020(%rbp), %rdi	 RIP: 413974	 Bytes: 7
  %loadMem_413974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413974 = call %struct.Memory* @routine_leaq_MINUS0x3020__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413974)
  store %struct.Memory* %call_413974, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 41397b	 Bytes: 3
  %loadMem_41397b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41397b = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41397b)
  store %struct.Memory* %call_41397b, %struct.Memory** %MEMORY

  ; Code: movl -0x302c(%rbp), %edx	 RIP: 41397e	 Bytes: 6
  %loadMem_41397e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41397e = call %struct.Memory* @routine_movl_MINUS0x302c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41397e)
  store %struct.Memory* %call_41397e, %struct.Memory** %MEMORY

  ; Code: callq .check_legal	 RIP: 413984	 Bytes: 5
  %loadMem1_413984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_413984 = call %struct.Memory* @routine_callq_.check_legal(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_413984, i64 -54020, i64 5, i64 5)
  store %struct.Memory* %call1_413984, %struct.Memory** %MEMORY

  %loadMem2_413984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_413984 = load i64, i64* %3
  %call2_413984 = call %struct.Memory* @sub_406680.check_legal(%struct.State* %0, i64  %loadPC_413984, %struct.Memory* %loadMem2_413984)
  store %struct.Memory* %call2_413984, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 413989	 Bytes: 3
  %loadMem_413989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413989 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413989)
  store %struct.Memory* %call_413989, %struct.Memory** %MEMORY

  ; Code: je .L_4139a1	 RIP: 41398c	 Bytes: 6
  %loadMem_41398c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41398c = call %struct.Memory* @routine_je_.L_4139a1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41398c, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_41398c, %struct.Memory** %MEMORY

  %loadBr_41398c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41398c = icmp eq i8 %loadBr_41398c, 1
  br i1 %cmpBr_41398c, label %block_.L_4139a1, label %block_413992

block_413992:
  ; Code: movl -0x3024(%rbp), %eax	 RIP: 413992	 Bytes: 6
  %loadMem_413992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413992 = call %struct.Memory* @routine_movl_MINUS0x3024__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413992)
  store %struct.Memory* %call_413992, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 413998	 Bytes: 3
  %loadMem_413998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413998 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413998)
  store %struct.Memory* %call_413998, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3024(%rbp)	 RIP: 41399b	 Bytes: 6
  %loadMem_41399b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41399b = call %struct.Memory* @routine_movl__eax__MINUS0x3024__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41399b)
  store %struct.Memory* %call_41399b, %struct.Memory** %MEMORY

  ; Code: .L_4139a1:	 RIP: 4139a1	 Bytes: 0
  br label %block_.L_4139a1
block_.L_4139a1:

  ; Code: leaq -0x3020(%rbp), %rdi	 RIP: 4139a1	 Bytes: 7
  %loadMem_4139a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139a1 = call %struct.Memory* @routine_leaq_MINUS0x3020__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139a1)
  store %struct.Memory* %call_4139a1, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 4139a8	 Bytes: 3
  %loadMem_4139a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139a8 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139a8)
  store %struct.Memory* %call_4139a8, %struct.Memory** %MEMORY

  ; Code: callq .unmake	 RIP: 4139ab	 Bytes: 5
  %loadMem1_4139ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4139ab = call %struct.Memory* @routine_callq_.unmake(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4139ab, i64 -29195, i64 5, i64 5)
  store %struct.Memory* %call1_4139ab, %struct.Memory** %MEMORY

  %loadMem2_4139ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4139ab = load i64, i64* %3
  %call2_4139ab = call %struct.Memory* @sub_40c7a0.unmake(%struct.State* %0, i64  %loadPC_4139ab, %struct.Memory* %loadMem2_4139ab)
  store %struct.Memory* %call2_4139ab, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 4139b0	 Bytes: 3
  %loadMem_4139b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139b0 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139b0)
  store %struct.Memory* %call_4139b0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4139b3	 Bytes: 3
  %loadMem_4139b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139b3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139b3)
  store %struct.Memory* %call_4139b3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 4139b6	 Bytes: 3
  %loadMem_4139b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139b6 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139b6)
  store %struct.Memory* %call_4139b6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_413956	 RIP: 4139b9	 Bytes: 5
  %loadMem_4139b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139b9 = call %struct.Memory* @routine_jmpq_.L_413956(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139b9, i64 -99, i64 5)
  store %struct.Memory* %call_4139b9, %struct.Memory** %MEMORY

  br label %block_.L_413956

  ; Code: .L_4139be:	 RIP: 4139be	 Bytes: 0
block_.L_4139be:

  ; Code: jmpq .L_4139c3	 RIP: 4139be	 Bytes: 5
  %loadMem_4139be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139be = call %struct.Memory* @routine_jmpq_.L_4139c3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139be, i64 5, i64 5)
  store %struct.Memory* %call_4139be, %struct.Memory** %MEMORY

  br label %block_.L_4139c3

  ; Code: .L_4139c3:	 RIP: 4139c3	 Bytes: 0
block_.L_4139c3:

  ; Code: jmpq .L_4139c8	 RIP: 4139c3	 Bytes: 5
  %loadMem_4139c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139c3 = call %struct.Memory* @routine_jmpq_.L_4139c8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139c3, i64 5, i64 5)
  store %struct.Memory* %call_4139c3, %struct.Memory** %MEMORY

  br label %block_.L_4139c8

  ; Code: .L_4139c8:	 RIP: 4139c8	 Bytes: 0
block_.L_4139c8:

  ; Code: cmpl $0x0, -0x3024(%rbp)	 RIP: 4139c8	 Bytes: 7
  %loadMem_4139c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139c8 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x3024__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139c8)
  store %struct.Memory* %call_4139c8, %struct.Memory** %MEMORY

  ; Code: jne .L_4139f0	 RIP: 4139cf	 Bytes: 6
  %loadMem_4139cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139cf = call %struct.Memory* @routine_jne_.L_4139f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139cf, i8* %BRANCH_TAKEN, i64 33, i64 6, i64 6)
  store %struct.Memory* %call_4139cf, %struct.Memory** %MEMORY

  %loadBr_4139cf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4139cf = icmp eq i8 %loadBr_4139cf, 1
  br i1 %cmpBr_4139cf, label %block_.L_4139f0, label %block_4139d5

block_4139d5:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 4139d5	 Bytes: 4
  %loadMem_4139d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139d5 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139d5)
  store %struct.Memory* %call_4139d5, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x4(%rax)	 RIP: 4139d9	 Bytes: 7
  %loadMem_4139d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139d9 = call %struct.Memory* @routine_movl__0x1__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139d9)
  store %struct.Memory* %call_4139d9, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4139e0	 Bytes: 4
  %loadMem_4139e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139e0 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139e0)
  store %struct.Memory* %call_4139e0, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x8(%rax)	 RIP: 4139e4	 Bytes: 7
  %loadMem_4139e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139e4 = call %struct.Memory* @routine_movl__0x1__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139e4)
  store %struct.Memory* %call_4139e4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_413cee	 RIP: 4139eb	 Bytes: 5
  %loadMem_4139eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139eb = call %struct.Memory* @routine_jmpq_.L_413cee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139eb, i64 771, i64 5)
  store %struct.Memory* %call_4139eb, %struct.Memory** %MEMORY

  br label %block_.L_413cee

  ; Code: .L_4139f0:	 RIP: 4139f0	 Bytes: 0
block_.L_4139f0:

  ; Code: movl $0x1, %eax	 RIP: 4139f0	 Bytes: 5
  %loadMem_4139f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139f0 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139f0)
  store %struct.Memory* %call_4139f0, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 4139f5	 Bytes: 2
  %loadMem_4139f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139f5 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139f5)
  store %struct.Memory* %call_4139f5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8661bc	 RIP: 4139f7	 Bytes: 8
  %loadMem_4139f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139f7 = call %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139f7)
  store %struct.Memory* %call_4139f7, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %eax	 RIP: 4139ff	 Bytes: 3
  %loadMem_4139ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4139ff = call %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4139ff)
  store %struct.Memory* %call_4139ff, %struct.Memory** %MEMORY

  ; Code: cmpl 0x633b54, %eax	 RIP: 413a02	 Bytes: 7
  %loadMem_413a02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413a02 = call %struct.Memory* @routine_cmpl_0x633b54___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413a02)
  store %struct.Memory* %call_413a02, %struct.Memory** %MEMORY

  ; Code: jne .L_413b98	 RIP: 413a09	 Bytes: 6
  %loadMem_413a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413a09 = call %struct.Memory* @routine_jne_.L_413b98(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413a09, i8* %BRANCH_TAKEN, i64 399, i64 6, i64 6)
  store %struct.Memory* %call_413a09, %struct.Memory** %MEMORY

  %loadBr_413a09 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413a09 = icmp eq i8 %loadBr_413a09, 1
  br i1 %cmpBr_413a09, label %block_.L_413b98, label %block_413a0f

block_413a0f:
  ; Code: cmpl $0x3, 0x85f154	 RIP: 413a0f	 Bytes: 8
  %loadMem_413a0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413a0f = call %struct.Memory* @routine_cmpl__0x3__0x85f154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413a0f)
  store %struct.Memory* %call_413a0f, %struct.Memory** %MEMORY

  ; Code: je .L_413a7e	 RIP: 413a17	 Bytes: 6
  %loadMem_413a17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413a17 = call %struct.Memory* @routine_je_.L_413a7e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413a17, i8* %BRANCH_TAKEN, i64 103, i64 6, i64 6)
  store %struct.Memory* %call_413a17, %struct.Memory** %MEMORY

  %loadBr_413a17 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413a17 = icmp eq i8 %loadBr_413a17, 1
  br i1 %cmpBr_413a17, label %block_.L_413a7e, label %block_413a1d

block_413a1d:
  ; Code: cmpl $0x4, 0x85f154	 RIP: 413a1d	 Bytes: 8
  %loadMem_413a1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413a1d = call %struct.Memory* @routine_cmpl__0x4__0x85f154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413a1d)
  store %struct.Memory* %call_413a1d, %struct.Memory** %MEMORY

  ; Code: je .L_413a7e	 RIP: 413a25	 Bytes: 6
  %loadMem_413a25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413a25 = call %struct.Memory* @routine_je_.L_413a7e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413a25, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_413a25, %struct.Memory** %MEMORY

  %loadBr_413a25 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413a25 = icmp eq i8 %loadBr_413a25, 1
  br i1 %cmpBr_413a25, label %block_.L_413a7e, label %block_413a2b

block_413a2b:
  ; Code: movl $0x32, %eax	 RIP: 413a2b	 Bytes: 5
  %loadMem_413a2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413a2b = call %struct.Memory* @routine_movl__0x32___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413a2b)
  store %struct.Memory* %call_413a2b, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %ecx	 RIP: 413a30	 Bytes: 7
  %loadMem_413a30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413a30 = call %struct.Memory* @routine_movl_0x886bc0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413a30)
  store %struct.Memory* %call_413a30, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3030(%rbp)	 RIP: 413a37	 Bytes: 6
  %loadMem_413a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413a37 = call %struct.Memory* @routine_movl__eax__MINUS0x3030__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413a37)
  store %struct.Memory* %call_413a37, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 413a3d	 Bytes: 2
  %loadMem_413a3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413a3d = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413a3d)
  store %struct.Memory* %call_413a3d, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 413a3f	 Bytes: 1
  %loadMem_413a3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413a3f = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413a3f)
  store %struct.Memory* %call_413a3f, %struct.Memory** %MEMORY

  ; Code: movl -0x3030(%rbp), %ecx	 RIP: 413a40	 Bytes: 6
  %loadMem_413a40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413a40 = call %struct.Memory* @routine_movl_MINUS0x3030__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413a40)
  store %struct.Memory* %call_413a40, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 413a46	 Bytes: 2
  %loadMem_413a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413a46 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413a46)
  store %struct.Memory* %call_413a46, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 413a48	 Bytes: 3
  %loadMem_413a48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413a48 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413a48)
  store %struct.Memory* %call_413a48, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 413a4b	 Bytes: 4
  %loadMem_413a4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413a4b = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413a4b)
  store %struct.Memory* %call_413a4b, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x4(%rsi)	 RIP: 413a4f	 Bytes: 3
  %loadMem_413a4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413a4f = call %struct.Memory* @routine_movl__eax__0x4__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413a4f)
  store %struct.Memory* %call_413a4f, %struct.Memory** %MEMORY

  ; Code: movl -0x3024(%rbp), %eax	 RIP: 413a52	 Bytes: 6
  %loadMem_413a52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413a52 = call %struct.Memory* @routine_movl_MINUS0x3024__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413a52)
  store %struct.Memory* %call_413a52, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %edi	 RIP: 413a58	 Bytes: 7
  %loadMem_413a58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413a58 = call %struct.Memory* @routine_movl_0x886bc0___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413a58)
  store %struct.Memory* %call_413a58, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3034(%rbp)	 RIP: 413a5f	 Bytes: 6
  %loadMem_413a5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413a5f = call %struct.Memory* @routine_movl__eax__MINUS0x3034__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413a5f)
  store %struct.Memory* %call_413a5f, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 413a65	 Bytes: 2
  %loadMem_413a65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413a65 = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413a65)
  store %struct.Memory* %call_413a65, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 413a67	 Bytes: 1
  %loadMem_413a67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413a67 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413a67)
  store %struct.Memory* %call_413a67, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 413a68	 Bytes: 2
  %loadMem_413a68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413a68 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413a68)
  store %struct.Memory* %call_413a68, %struct.Memory** %MEMORY

  ; Code: movl -0x3034(%rbp), %edi	 RIP: 413a6a	 Bytes: 6
  %loadMem_413a6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413a6a = call %struct.Memory* @routine_movl_MINUS0x3034__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413a6a)
  store %struct.Memory* %call_413a6a, %struct.Memory** %MEMORY

  ; Code: addl %eax, %edi	 RIP: 413a70	 Bytes: 2
  %loadMem_413a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413a70 = call %struct.Memory* @routine_addl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413a70)
  store %struct.Memory* %call_413a70, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 413a72	 Bytes: 4
  %loadMem_413a72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413a72 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413a72)
  store %struct.Memory* %call_413a72, %struct.Memory** %MEMORY

  ; Code: movl %edi, 0x8(%rsi)	 RIP: 413a76	 Bytes: 3
  %loadMem_413a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413a76 = call %struct.Memory* @routine_movl__edi__0x8__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413a76)
  store %struct.Memory* %call_413a76, %struct.Memory** %MEMORY

  ; Code: jmpq .L_413b93	 RIP: 413a79	 Bytes: 5
  %loadMem_413a79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413a79 = call %struct.Memory* @routine_jmpq_.L_413b93(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413a79, i64 282, i64 5)
  store %struct.Memory* %call_413a79, %struct.Memory** %MEMORY

  br label %block_.L_413b93

  ; Code: .L_413a7e:	 RIP: 413a7e	 Bytes: 0
block_.L_413a7e:

  ; Code: cmpl $0x4, 0x85f154	 RIP: 413a7e	 Bytes: 8
  %loadMem_413a7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413a7e = call %struct.Memory* @routine_cmpl__0x4__0x85f154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413a7e)
  store %struct.Memory* %call_413a7e, %struct.Memory** %MEMORY

  ; Code: jne .L_413b40	 RIP: 413a86	 Bytes: 6
  %loadMem_413a86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413a86 = call %struct.Memory* @routine_jne_.L_413b40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413a86, i8* %BRANCH_TAKEN, i64 186, i64 6, i64 6)
  store %struct.Memory* %call_413a86, %struct.Memory** %MEMORY

  %loadBr_413a86 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413a86 = icmp eq i8 %loadBr_413a86, 1
  br i1 %cmpBr_413a86, label %block_.L_413b40, label %block_413a8c

block_413a8c:
  ; Code: cmpl $0x2, 0x886a78	 RIP: 413a8c	 Bytes: 8
  %loadMem_413a8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413a8c = call %struct.Memory* @routine_cmpl__0x2__0x886a78(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413a8c)
  store %struct.Memory* %call_413a8c, %struct.Memory** %MEMORY

  ; Code: jne .L_413aed	 RIP: 413a94	 Bytes: 6
  %loadMem_413a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413a94 = call %struct.Memory* @routine_jne_.L_413aed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413a94, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_413a94, %struct.Memory** %MEMORY

  %loadBr_413a94 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413a94 = icmp eq i8 %loadBr_413a94, 1
  br i1 %cmpBr_413a94, label %block_.L_413aed, label %block_413a9a

block_413a9a:
  ; Code: movl $0x1e, %eax	 RIP: 413a9a	 Bytes: 5
  %loadMem_413a9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413a9a = call %struct.Memory* @routine_movl__0x1e___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413a9a)
  store %struct.Memory* %call_413a9a, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %ecx	 RIP: 413a9f	 Bytes: 7
  %loadMem_413a9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413a9f = call %struct.Memory* @routine_movl_0x886bc0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413a9f)
  store %struct.Memory* %call_413a9f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3038(%rbp)	 RIP: 413aa6	 Bytes: 6
  %loadMem_413aa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413aa6 = call %struct.Memory* @routine_movl__eax__MINUS0x3038__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413aa6)
  store %struct.Memory* %call_413aa6, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 413aac	 Bytes: 2
  %loadMem_413aac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413aac = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413aac)
  store %struct.Memory* %call_413aac, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 413aae	 Bytes: 1
  %loadMem_413aae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413aae = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413aae)
  store %struct.Memory* %call_413aae, %struct.Memory** %MEMORY

  ; Code: movl -0x3038(%rbp), %ecx	 RIP: 413aaf	 Bytes: 6
  %loadMem_413aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413aaf = call %struct.Memory* @routine_movl_MINUS0x3038__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413aaf)
  store %struct.Memory* %call_413aaf, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 413ab5	 Bytes: 2
  %loadMem_413ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413ab5 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413ab5)
  store %struct.Memory* %call_413ab5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 413ab7	 Bytes: 3
  %loadMem_413ab7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413ab7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413ab7)
  store %struct.Memory* %call_413ab7, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 413aba	 Bytes: 4
  %loadMem_413aba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413aba = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413aba)
  store %struct.Memory* %call_413aba, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x4(%rsi)	 RIP: 413abe	 Bytes: 3
  %loadMem_413abe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413abe = call %struct.Memory* @routine_movl__eax__0x4__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413abe)
  store %struct.Memory* %call_413abe, %struct.Memory** %MEMORY

  ; Code: movl -0x3024(%rbp), %eax	 RIP: 413ac1	 Bytes: 6
  %loadMem_413ac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413ac1 = call %struct.Memory* @routine_movl_MINUS0x3024__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413ac1)
  store %struct.Memory* %call_413ac1, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %edi	 RIP: 413ac7	 Bytes: 7
  %loadMem_413ac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413ac7 = call %struct.Memory* @routine_movl_0x886bc0___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413ac7)
  store %struct.Memory* %call_413ac7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x303c(%rbp)	 RIP: 413ace	 Bytes: 6
  %loadMem_413ace = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413ace = call %struct.Memory* @routine_movl__eax__MINUS0x303c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413ace)
  store %struct.Memory* %call_413ace, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 413ad4	 Bytes: 2
  %loadMem_413ad4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413ad4 = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413ad4)
  store %struct.Memory* %call_413ad4, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 413ad6	 Bytes: 1
  %loadMem_413ad6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413ad6 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413ad6)
  store %struct.Memory* %call_413ad6, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 413ad7	 Bytes: 2
  %loadMem_413ad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413ad7 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413ad7)
  store %struct.Memory* %call_413ad7, %struct.Memory** %MEMORY

  ; Code: movl -0x303c(%rbp), %edi	 RIP: 413ad9	 Bytes: 6
  %loadMem_413ad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413ad9 = call %struct.Memory* @routine_movl_MINUS0x303c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413ad9)
  store %struct.Memory* %call_413ad9, %struct.Memory** %MEMORY

  ; Code: addl %eax, %edi	 RIP: 413adf	 Bytes: 2
  %loadMem_413adf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413adf = call %struct.Memory* @routine_addl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413adf)
  store %struct.Memory* %call_413adf, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 413ae1	 Bytes: 4
  %loadMem_413ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413ae1 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413ae1)
  store %struct.Memory* %call_413ae1, %struct.Memory** %MEMORY

  ; Code: movl %edi, 0x8(%rsi)	 RIP: 413ae5	 Bytes: 3
  %loadMem_413ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413ae5 = call %struct.Memory* @routine_movl__edi__0x8__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413ae5)
  store %struct.Memory* %call_413ae5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_413b3b	 RIP: 413ae8	 Bytes: 5
  %loadMem_413ae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413ae8 = call %struct.Memory* @routine_jmpq_.L_413b3b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413ae8, i64 83, i64 5)
  store %struct.Memory* %call_413ae8, %struct.Memory** %MEMORY

  br label %block_.L_413b3b

  ; Code: .L_413aed:	 RIP: 413aed	 Bytes: 0
block_.L_413aed:

  ; Code: movl $0x50, %eax	 RIP: 413aed	 Bytes: 5
  %loadMem_413aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413aed = call %struct.Memory* @routine_movl__0x50___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413aed)
  store %struct.Memory* %call_413aed, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %ecx	 RIP: 413af2	 Bytes: 7
  %loadMem_413af2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413af2 = call %struct.Memory* @routine_movl_0x886bc0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413af2)
  store %struct.Memory* %call_413af2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3040(%rbp)	 RIP: 413af9	 Bytes: 6
  %loadMem_413af9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413af9 = call %struct.Memory* @routine_movl__eax__MINUS0x3040__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413af9)
  store %struct.Memory* %call_413af9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 413aff	 Bytes: 2
  %loadMem_413aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413aff = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413aff)
  store %struct.Memory* %call_413aff, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 413b01	 Bytes: 1
  %loadMem_413b01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b01 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b01)
  store %struct.Memory* %call_413b01, %struct.Memory** %MEMORY

  ; Code: movl -0x3040(%rbp), %ecx	 RIP: 413b02	 Bytes: 6
  %loadMem_413b02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b02 = call %struct.Memory* @routine_movl_MINUS0x3040__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b02)
  store %struct.Memory* %call_413b02, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 413b08	 Bytes: 2
  %loadMem_413b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b08 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b08)
  store %struct.Memory* %call_413b08, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 413b0a	 Bytes: 3
  %loadMem_413b0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b0a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b0a)
  store %struct.Memory* %call_413b0a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 413b0d	 Bytes: 4
  %loadMem_413b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b0d = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b0d)
  store %struct.Memory* %call_413b0d, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x4(%rsi)	 RIP: 413b11	 Bytes: 3
  %loadMem_413b11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b11 = call %struct.Memory* @routine_movl__eax__0x4__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b11)
  store %struct.Memory* %call_413b11, %struct.Memory** %MEMORY

  ; Code: movl -0x3024(%rbp), %eax	 RIP: 413b14	 Bytes: 6
  %loadMem_413b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b14 = call %struct.Memory* @routine_movl_MINUS0x3024__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b14)
  store %struct.Memory* %call_413b14, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %edi	 RIP: 413b1a	 Bytes: 7
  %loadMem_413b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b1a = call %struct.Memory* @routine_movl_0x886bc0___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b1a)
  store %struct.Memory* %call_413b1a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3044(%rbp)	 RIP: 413b21	 Bytes: 6
  %loadMem_413b21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b21 = call %struct.Memory* @routine_movl__eax__MINUS0x3044__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b21)
  store %struct.Memory* %call_413b21, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 413b27	 Bytes: 2
  %loadMem_413b27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b27 = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b27)
  store %struct.Memory* %call_413b27, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 413b29	 Bytes: 1
  %loadMem_413b29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b29 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b29)
  store %struct.Memory* %call_413b29, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 413b2a	 Bytes: 2
  %loadMem_413b2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b2a = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b2a)
  store %struct.Memory* %call_413b2a, %struct.Memory** %MEMORY

  ; Code: movl -0x3044(%rbp), %edi	 RIP: 413b2c	 Bytes: 6
  %loadMem_413b2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b2c = call %struct.Memory* @routine_movl_MINUS0x3044__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b2c)
  store %struct.Memory* %call_413b2c, %struct.Memory** %MEMORY

  ; Code: addl %eax, %edi	 RIP: 413b32	 Bytes: 2
  %loadMem_413b32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b32 = call %struct.Memory* @routine_addl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b32)
  store %struct.Memory* %call_413b32, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 413b34	 Bytes: 4
  %loadMem_413b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b34 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b34)
  store %struct.Memory* %call_413b34, %struct.Memory** %MEMORY

  ; Code: movl %edi, 0x8(%rsi)	 RIP: 413b38	 Bytes: 3
  %loadMem_413b38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b38 = call %struct.Memory* @routine_movl__edi__0x8__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b38)
  store %struct.Memory* %call_413b38, %struct.Memory** %MEMORY

  ; Code: .L_413b3b:	 RIP: 413b3b	 Bytes: 0
  br label %block_.L_413b3b
block_.L_413b3b:

  ; Code: jmpq .L_413b8e	 RIP: 413b3b	 Bytes: 5
  %loadMem_413b3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b3b = call %struct.Memory* @routine_jmpq_.L_413b8e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b3b, i64 83, i64 5)
  store %struct.Memory* %call_413b3b, %struct.Memory** %MEMORY

  br label %block_.L_413b8e

  ; Code: .L_413b40:	 RIP: 413b40	 Bytes: 0
block_.L_413b40:

  ; Code: movl $0x96, %eax	 RIP: 413b40	 Bytes: 5
  %loadMem_413b40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b40 = call %struct.Memory* @routine_movl__0x96___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b40)
  store %struct.Memory* %call_413b40, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %ecx	 RIP: 413b45	 Bytes: 7
  %loadMem_413b45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b45 = call %struct.Memory* @routine_movl_0x886bc0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b45)
  store %struct.Memory* %call_413b45, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3048(%rbp)	 RIP: 413b4c	 Bytes: 6
  %loadMem_413b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b4c = call %struct.Memory* @routine_movl__eax__MINUS0x3048__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b4c)
  store %struct.Memory* %call_413b4c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 413b52	 Bytes: 2
  %loadMem_413b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b52 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b52)
  store %struct.Memory* %call_413b52, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 413b54	 Bytes: 1
  %loadMem_413b54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b54 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b54)
  store %struct.Memory* %call_413b54, %struct.Memory** %MEMORY

  ; Code: movl -0x3048(%rbp), %ecx	 RIP: 413b55	 Bytes: 6
  %loadMem_413b55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b55 = call %struct.Memory* @routine_movl_MINUS0x3048__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b55)
  store %struct.Memory* %call_413b55, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 413b5b	 Bytes: 2
  %loadMem_413b5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b5b = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b5b)
  store %struct.Memory* %call_413b5b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 413b5d	 Bytes: 3
  %loadMem_413b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b5d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b5d)
  store %struct.Memory* %call_413b5d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 413b60	 Bytes: 4
  %loadMem_413b60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b60 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b60)
  store %struct.Memory* %call_413b60, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x4(%rsi)	 RIP: 413b64	 Bytes: 3
  %loadMem_413b64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b64 = call %struct.Memory* @routine_movl__eax__0x4__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b64)
  store %struct.Memory* %call_413b64, %struct.Memory** %MEMORY

  ; Code: movl -0x3024(%rbp), %eax	 RIP: 413b67	 Bytes: 6
  %loadMem_413b67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b67 = call %struct.Memory* @routine_movl_MINUS0x3024__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b67)
  store %struct.Memory* %call_413b67, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %edi	 RIP: 413b6d	 Bytes: 7
  %loadMem_413b6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b6d = call %struct.Memory* @routine_movl_0x886bc0___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b6d)
  store %struct.Memory* %call_413b6d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x304c(%rbp)	 RIP: 413b74	 Bytes: 6
  %loadMem_413b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b74 = call %struct.Memory* @routine_movl__eax__MINUS0x304c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b74)
  store %struct.Memory* %call_413b74, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 413b7a	 Bytes: 2
  %loadMem_413b7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b7a = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b7a)
  store %struct.Memory* %call_413b7a, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 413b7c	 Bytes: 1
  %loadMem_413b7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b7c = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b7c)
  store %struct.Memory* %call_413b7c, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 413b7d	 Bytes: 2
  %loadMem_413b7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b7d = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b7d)
  store %struct.Memory* %call_413b7d, %struct.Memory** %MEMORY

  ; Code: movl -0x304c(%rbp), %edi	 RIP: 413b7f	 Bytes: 6
  %loadMem_413b7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b7f = call %struct.Memory* @routine_movl_MINUS0x304c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b7f)
  store %struct.Memory* %call_413b7f, %struct.Memory** %MEMORY

  ; Code: addl %eax, %edi	 RIP: 413b85	 Bytes: 2
  %loadMem_413b85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b85 = call %struct.Memory* @routine_addl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b85)
  store %struct.Memory* %call_413b85, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rsi	 RIP: 413b87	 Bytes: 4
  %loadMem_413b87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b87 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b87)
  store %struct.Memory* %call_413b87, %struct.Memory** %MEMORY

  ; Code: movl %edi, 0x8(%rsi)	 RIP: 413b8b	 Bytes: 3
  %loadMem_413b8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b8b = call %struct.Memory* @routine_movl__edi__0x8__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b8b)
  store %struct.Memory* %call_413b8b, %struct.Memory** %MEMORY

  ; Code: .L_413b8e:	 RIP: 413b8e	 Bytes: 0
  br label %block_.L_413b8e
block_.L_413b8e:

  ; Code: jmpq .L_413b93	 RIP: 413b8e	 Bytes: 5
  %loadMem_413b8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b8e = call %struct.Memory* @routine_jmpq_.L_413b93(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b8e, i64 5, i64 5)
  store %struct.Memory* %call_413b8e, %struct.Memory** %MEMORY

  br label %block_.L_413b93

  ; Code: .L_413b93:	 RIP: 413b93	 Bytes: 0
block_.L_413b93:

  ; Code: jmpq .L_413ce9	 RIP: 413b93	 Bytes: 5
  %loadMem_413b93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b93 = call %struct.Memory* @routine_jmpq_.L_413ce9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b93, i64 342, i64 5)
  store %struct.Memory* %call_413b93, %struct.Memory** %MEMORY

  br label %block_.L_413ce9

  ; Code: .L_413b98:	 RIP: 413b98	 Bytes: 0
block_.L_413b98:

  ; Code: cmpl $0x3, 0x85f154	 RIP: 413b98	 Bytes: 8
  %loadMem_413b98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413b98 = call %struct.Memory* @routine_cmpl__0x3__0x85f154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413b98)
  store %struct.Memory* %call_413b98, %struct.Memory** %MEMORY

  ; Code: je .L_413bf9	 RIP: 413ba0	 Bytes: 6
  %loadMem_413ba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413ba0 = call %struct.Memory* @routine_je_.L_413bf9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413ba0, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_413ba0, %struct.Memory** %MEMORY

  %loadBr_413ba0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413ba0 = icmp eq i8 %loadBr_413ba0, 1
  br i1 %cmpBr_413ba0, label %block_.L_413bf9, label %block_413ba6

block_413ba6:
  ; Code: cmpl $0x4, 0x85f154	 RIP: 413ba6	 Bytes: 8
  %loadMem_413ba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413ba6 = call %struct.Memory* @routine_cmpl__0x4__0x85f154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413ba6)
  store %struct.Memory* %call_413ba6, %struct.Memory** %MEMORY

  ; Code: je .L_413bf9	 RIP: 413bae	 Bytes: 6
  %loadMem_413bae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413bae = call %struct.Memory* @routine_je_.L_413bf9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413bae, i8* %BRANCH_TAKEN, i64 75, i64 6, i64 6)
  store %struct.Memory* %call_413bae, %struct.Memory** %MEMORY

  %loadBr_413bae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413bae = icmp eq i8 %loadBr_413bae, 1
  br i1 %cmpBr_413bae, label %block_.L_413bf9, label %block_413bb4

block_413bb4:
  ; Code: movl $0x32, %eax	 RIP: 413bb4	 Bytes: 5
  %loadMem_413bb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413bb4 = call %struct.Memory* @routine_movl__0x32___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413bb4)
  store %struct.Memory* %call_413bb4, %struct.Memory** %MEMORY

  ; Code: movl -0x3024(%rbp), %ecx	 RIP: 413bb9	 Bytes: 6
  %loadMem_413bb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413bb9 = call %struct.Memory* @routine_movl_MINUS0x3024__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413bb9)
  store %struct.Memory* %call_413bb9, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %edx	 RIP: 413bbf	 Bytes: 7
  %loadMem_413bbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413bbf = call %struct.Memory* @routine_movl_0x886bc0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413bbf)
  store %struct.Memory* %call_413bbf, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3050(%rbp)	 RIP: 413bc6	 Bytes: 6
  %loadMem_413bc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413bc6 = call %struct.Memory* @routine_movl__eax__MINUS0x3050__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413bc6)
  store %struct.Memory* %call_413bc6, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 413bcc	 Bytes: 2
  %loadMem_413bcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413bcc = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413bcc)
  store %struct.Memory* %call_413bcc, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 413bce	 Bytes: 1
  %loadMem_413bce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413bce = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413bce)
  store %struct.Memory* %call_413bce, %struct.Memory** %MEMORY

  ; Code: movl -0x3050(%rbp), %esi	 RIP: 413bcf	 Bytes: 6
  %loadMem_413bcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413bcf = call %struct.Memory* @routine_movl_MINUS0x3050__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413bcf)
  store %struct.Memory* %call_413bcf, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 413bd5	 Bytes: 2
  %loadMem_413bd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413bd5 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413bd5)
  store %struct.Memory* %call_413bd5, %struct.Memory** %MEMORY

  ; Code: addl %eax, %ecx	 RIP: 413bd7	 Bytes: 2
  %loadMem_413bd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413bd7 = call %struct.Memory* @routine_addl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413bd7)
  store %struct.Memory* %call_413bd7, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 413bd9	 Bytes: 4
  %loadMem_413bd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413bd9 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413bd9)
  store %struct.Memory* %call_413bd9, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rdi)	 RIP: 413bdd	 Bytes: 3
  %loadMem_413bdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413bdd = call %struct.Memory* @routine_movl__ecx__0x4__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413bdd)
  store %struct.Memory* %call_413bdd, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %eax	 RIP: 413be0	 Bytes: 7
  %loadMem_413be0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413be0 = call %struct.Memory* @routine_movl_0x886bc0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413be0)
  store %struct.Memory* %call_413be0, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 413be7	 Bytes: 1
  %loadMem_413be7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413be7 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413be7)
  store %struct.Memory* %call_413be7, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 413be8	 Bytes: 2
  %loadMem_413be8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413be8 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413be8)
  store %struct.Memory* %call_413be8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 413bea	 Bytes: 3
  %loadMem_413bea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413bea = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413bea)
  store %struct.Memory* %call_413bea, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 413bed	 Bytes: 4
  %loadMem_413bed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413bed = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413bed)
  store %struct.Memory* %call_413bed, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8(%rdi)	 RIP: 413bf1	 Bytes: 3
  %loadMem_413bf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413bf1 = call %struct.Memory* @routine_movl__eax__0x8__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413bf1)
  store %struct.Memory* %call_413bf1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_413ce4	 RIP: 413bf4	 Bytes: 5
  %loadMem_413bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413bf4 = call %struct.Memory* @routine_jmpq_.L_413ce4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413bf4, i64 240, i64 5)
  store %struct.Memory* %call_413bf4, %struct.Memory** %MEMORY

  br label %block_.L_413ce4

  ; Code: .L_413bf9:	 RIP: 413bf9	 Bytes: 0
block_.L_413bf9:

  ; Code: cmpl $0x4, 0x85f154	 RIP: 413bf9	 Bytes: 8
  %loadMem_413bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413bf9 = call %struct.Memory* @routine_cmpl__0x4__0x85f154(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413bf9)
  store %struct.Memory* %call_413bf9, %struct.Memory** %MEMORY

  ; Code: jne .L_413c9f	 RIP: 413c01	 Bytes: 6
  %loadMem_413c01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c01 = call %struct.Memory* @routine_jne_.L_413c9f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c01, i8* %BRANCH_TAKEN, i64 158, i64 6, i64 6)
  store %struct.Memory* %call_413c01, %struct.Memory** %MEMORY

  %loadBr_413c01 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413c01 = icmp eq i8 %loadBr_413c01, 1
  br i1 %cmpBr_413c01, label %block_.L_413c9f, label %block_413c07

block_413c07:
  ; Code: cmpl $0x2, 0x886a78	 RIP: 413c07	 Bytes: 8
  %loadMem_413c07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c07 = call %struct.Memory* @routine_cmpl__0x2__0x886a78(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c07)
  store %struct.Memory* %call_413c07, %struct.Memory** %MEMORY

  ; Code: jne .L_413c5a	 RIP: 413c0f	 Bytes: 6
  %loadMem_413c0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c0f = call %struct.Memory* @routine_jne_.L_413c5a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c0f, i8* %BRANCH_TAKEN, i64 75, i64 6, i64 6)
  store %struct.Memory* %call_413c0f, %struct.Memory** %MEMORY

  %loadBr_413c0f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413c0f = icmp eq i8 %loadBr_413c0f, 1
  br i1 %cmpBr_413c0f, label %block_.L_413c5a, label %block_413c15

block_413c15:
  ; Code: movl $0x1e, %eax	 RIP: 413c15	 Bytes: 5
  %loadMem_413c15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c15 = call %struct.Memory* @routine_movl__0x1e___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c15)
  store %struct.Memory* %call_413c15, %struct.Memory** %MEMORY

  ; Code: movl -0x3024(%rbp), %ecx	 RIP: 413c1a	 Bytes: 6
  %loadMem_413c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c1a = call %struct.Memory* @routine_movl_MINUS0x3024__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c1a)
  store %struct.Memory* %call_413c1a, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %edx	 RIP: 413c20	 Bytes: 7
  %loadMem_413c20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c20 = call %struct.Memory* @routine_movl_0x886bc0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c20)
  store %struct.Memory* %call_413c20, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3054(%rbp)	 RIP: 413c27	 Bytes: 6
  %loadMem_413c27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c27 = call %struct.Memory* @routine_movl__eax__MINUS0x3054__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c27)
  store %struct.Memory* %call_413c27, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 413c2d	 Bytes: 2
  %loadMem_413c2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c2d = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c2d)
  store %struct.Memory* %call_413c2d, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 413c2f	 Bytes: 1
  %loadMem_413c2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c2f = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c2f)
  store %struct.Memory* %call_413c2f, %struct.Memory** %MEMORY

  ; Code: movl -0x3054(%rbp), %esi	 RIP: 413c30	 Bytes: 6
  %loadMem_413c30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c30 = call %struct.Memory* @routine_movl_MINUS0x3054__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c30)
  store %struct.Memory* %call_413c30, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 413c36	 Bytes: 2
  %loadMem_413c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c36 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c36)
  store %struct.Memory* %call_413c36, %struct.Memory** %MEMORY

  ; Code: addl %eax, %ecx	 RIP: 413c38	 Bytes: 2
  %loadMem_413c38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c38 = call %struct.Memory* @routine_addl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c38)
  store %struct.Memory* %call_413c38, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 413c3a	 Bytes: 4
  %loadMem_413c3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c3a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c3a)
  store %struct.Memory* %call_413c3a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rdi)	 RIP: 413c3e	 Bytes: 3
  %loadMem_413c3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c3e = call %struct.Memory* @routine_movl__ecx__0x4__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c3e)
  store %struct.Memory* %call_413c3e, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %eax	 RIP: 413c41	 Bytes: 7
  %loadMem_413c41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c41 = call %struct.Memory* @routine_movl_0x886bc0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c41)
  store %struct.Memory* %call_413c41, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 413c48	 Bytes: 1
  %loadMem_413c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c48 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c48)
  store %struct.Memory* %call_413c48, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 413c49	 Bytes: 2
  %loadMem_413c49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c49 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c49)
  store %struct.Memory* %call_413c49, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 413c4b	 Bytes: 3
  %loadMem_413c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c4b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c4b)
  store %struct.Memory* %call_413c4b, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 413c4e	 Bytes: 4
  %loadMem_413c4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c4e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c4e)
  store %struct.Memory* %call_413c4e, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8(%rdi)	 RIP: 413c52	 Bytes: 3
  %loadMem_413c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c52 = call %struct.Memory* @routine_movl__eax__0x8__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c52)
  store %struct.Memory* %call_413c52, %struct.Memory** %MEMORY

  ; Code: jmpq .L_413c9a	 RIP: 413c55	 Bytes: 5
  %loadMem_413c55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c55 = call %struct.Memory* @routine_jmpq_.L_413c9a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c55, i64 69, i64 5)
  store %struct.Memory* %call_413c55, %struct.Memory** %MEMORY

  br label %block_.L_413c9a

  ; Code: .L_413c5a:	 RIP: 413c5a	 Bytes: 0
block_.L_413c5a:

  ; Code: movl $0x50, %eax	 RIP: 413c5a	 Bytes: 5
  %loadMem_413c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c5a = call %struct.Memory* @routine_movl__0x50___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c5a)
  store %struct.Memory* %call_413c5a, %struct.Memory** %MEMORY

  ; Code: movl -0x3024(%rbp), %ecx	 RIP: 413c5f	 Bytes: 6
  %loadMem_413c5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c5f = call %struct.Memory* @routine_movl_MINUS0x3024__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c5f)
  store %struct.Memory* %call_413c5f, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %edx	 RIP: 413c65	 Bytes: 7
  %loadMem_413c65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c65 = call %struct.Memory* @routine_movl_0x886bc0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c65)
  store %struct.Memory* %call_413c65, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3058(%rbp)	 RIP: 413c6c	 Bytes: 6
  %loadMem_413c6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c6c = call %struct.Memory* @routine_movl__eax__MINUS0x3058__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c6c)
  store %struct.Memory* %call_413c6c, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 413c72	 Bytes: 2
  %loadMem_413c72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c72 = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c72)
  store %struct.Memory* %call_413c72, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 413c74	 Bytes: 1
  %loadMem_413c74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c74 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c74)
  store %struct.Memory* %call_413c74, %struct.Memory** %MEMORY

  ; Code: movl -0x3058(%rbp), %esi	 RIP: 413c75	 Bytes: 6
  %loadMem_413c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c75 = call %struct.Memory* @routine_movl_MINUS0x3058__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c75)
  store %struct.Memory* %call_413c75, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 413c7b	 Bytes: 2
  %loadMem_413c7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c7b = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c7b)
  store %struct.Memory* %call_413c7b, %struct.Memory** %MEMORY

  ; Code: addl %eax, %ecx	 RIP: 413c7d	 Bytes: 2
  %loadMem_413c7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c7d = call %struct.Memory* @routine_addl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c7d)
  store %struct.Memory* %call_413c7d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 413c7f	 Bytes: 4
  %loadMem_413c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c7f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c7f)
  store %struct.Memory* %call_413c7f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rdi)	 RIP: 413c83	 Bytes: 3
  %loadMem_413c83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c83 = call %struct.Memory* @routine_movl__ecx__0x4__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c83)
  store %struct.Memory* %call_413c83, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %eax	 RIP: 413c86	 Bytes: 7
  %loadMem_413c86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c86 = call %struct.Memory* @routine_movl_0x886bc0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c86)
  store %struct.Memory* %call_413c86, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 413c8d	 Bytes: 1
  %loadMem_413c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c8d = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c8d)
  store %struct.Memory* %call_413c8d, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 413c8e	 Bytes: 2
  %loadMem_413c8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c8e = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c8e)
  store %struct.Memory* %call_413c8e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 413c90	 Bytes: 3
  %loadMem_413c90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c90 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c90)
  store %struct.Memory* %call_413c90, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 413c93	 Bytes: 4
  %loadMem_413c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c93 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c93)
  store %struct.Memory* %call_413c93, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8(%rdi)	 RIP: 413c97	 Bytes: 3
  %loadMem_413c97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c97 = call %struct.Memory* @routine_movl__eax__0x8__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c97)
  store %struct.Memory* %call_413c97, %struct.Memory** %MEMORY

  ; Code: .L_413c9a:	 RIP: 413c9a	 Bytes: 0
  br label %block_.L_413c9a
block_.L_413c9a:

  ; Code: jmpq .L_413cdf	 RIP: 413c9a	 Bytes: 5
  %loadMem_413c9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c9a = call %struct.Memory* @routine_jmpq_.L_413cdf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c9a, i64 69, i64 5)
  store %struct.Memory* %call_413c9a, %struct.Memory** %MEMORY

  br label %block_.L_413cdf

  ; Code: .L_413c9f:	 RIP: 413c9f	 Bytes: 0
block_.L_413c9f:

  ; Code: movl $0x96, %eax	 RIP: 413c9f	 Bytes: 5
  %loadMem_413c9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413c9f = call %struct.Memory* @routine_movl__0x96___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413c9f)
  store %struct.Memory* %call_413c9f, %struct.Memory** %MEMORY

  ; Code: movl -0x3024(%rbp), %ecx	 RIP: 413ca4	 Bytes: 6
  %loadMem_413ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413ca4 = call %struct.Memory* @routine_movl_MINUS0x3024__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413ca4)
  store %struct.Memory* %call_413ca4, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %edx	 RIP: 413caa	 Bytes: 7
  %loadMem_413caa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413caa = call %struct.Memory* @routine_movl_0x886bc0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413caa)
  store %struct.Memory* %call_413caa, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x305c(%rbp)	 RIP: 413cb1	 Bytes: 6
  %loadMem_413cb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413cb1 = call %struct.Memory* @routine_movl__eax__MINUS0x305c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413cb1)
  store %struct.Memory* %call_413cb1, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 413cb7	 Bytes: 2
  %loadMem_413cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413cb7 = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413cb7)
  store %struct.Memory* %call_413cb7, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 413cb9	 Bytes: 1
  %loadMem_413cb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413cb9 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413cb9)
  store %struct.Memory* %call_413cb9, %struct.Memory** %MEMORY

  ; Code: movl -0x305c(%rbp), %esi	 RIP: 413cba	 Bytes: 6
  %loadMem_413cba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413cba = call %struct.Memory* @routine_movl_MINUS0x305c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413cba)
  store %struct.Memory* %call_413cba, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 413cc0	 Bytes: 2
  %loadMem_413cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413cc0 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413cc0)
  store %struct.Memory* %call_413cc0, %struct.Memory** %MEMORY

  ; Code: addl %eax, %ecx	 RIP: 413cc2	 Bytes: 2
  %loadMem_413cc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413cc2 = call %struct.Memory* @routine_addl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413cc2)
  store %struct.Memory* %call_413cc2, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 413cc4	 Bytes: 4
  %loadMem_413cc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413cc4 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413cc4)
  store %struct.Memory* %call_413cc4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rdi)	 RIP: 413cc8	 Bytes: 3
  %loadMem_413cc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413cc8 = call %struct.Memory* @routine_movl__ecx__0x4__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413cc8)
  store %struct.Memory* %call_413cc8, %struct.Memory** %MEMORY

  ; Code: movl 0x886bc0, %eax	 RIP: 413ccb	 Bytes: 7
  %loadMem_413ccb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413ccb = call %struct.Memory* @routine_movl_0x886bc0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413ccb)
  store %struct.Memory* %call_413ccb, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 413cd2	 Bytes: 1
  %loadMem_413cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413cd2 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413cd2)
  store %struct.Memory* %call_413cd2, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 413cd3	 Bytes: 2
  %loadMem_413cd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413cd3 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413cd3)
  store %struct.Memory* %call_413cd3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 413cd5	 Bytes: 3
  %loadMem_413cd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413cd5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413cd5)
  store %struct.Memory* %call_413cd5, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 413cd8	 Bytes: 4
  %loadMem_413cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413cd8 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413cd8)
  store %struct.Memory* %call_413cd8, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8(%rdi)	 RIP: 413cdc	 Bytes: 3
  %loadMem_413cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413cdc = call %struct.Memory* @routine_movl__eax__0x8__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413cdc)
  store %struct.Memory* %call_413cdc, %struct.Memory** %MEMORY

  ; Code: .L_413cdf:	 RIP: 413cdf	 Bytes: 0
  br label %block_.L_413cdf
block_.L_413cdf:

  ; Code: jmpq .L_413ce4	 RIP: 413cdf	 Bytes: 5
  %loadMem_413cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413cdf = call %struct.Memory* @routine_jmpq_.L_413ce4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413cdf, i64 5, i64 5)
  store %struct.Memory* %call_413cdf, %struct.Memory** %MEMORY

  br label %block_.L_413ce4

  ; Code: .L_413ce4:	 RIP: 413ce4	 Bytes: 0
block_.L_413ce4:

  ; Code: jmpq .L_413ce9	 RIP: 413ce4	 Bytes: 5
  %loadMem_413ce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413ce4 = call %struct.Memory* @routine_jmpq_.L_413ce9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413ce4, i64 5, i64 5)
  store %struct.Memory* %call_413ce4, %struct.Memory** %MEMORY

  br label %block_.L_413ce9

  ; Code: .L_413ce9:	 RIP: 413ce9	 Bytes: 0
block_.L_413ce9:

  ; Code: jmpq .L_413cee	 RIP: 413ce9	 Bytes: 5
  %loadMem_413ce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413ce9 = call %struct.Memory* @routine_jmpq_.L_413cee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413ce9, i64 5, i64 5)
  store %struct.Memory* %call_413ce9, %struct.Memory** %MEMORY

  br label %block_.L_413cee

  ; Code: .L_413cee:	 RIP: 413cee	 Bytes: 0
block_.L_413cee:

  ; Code: jmpq .L_413d7e	 RIP: 413cee	 Bytes: 5
  %loadMem_413cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413cee = call %struct.Memory* @routine_jmpq_.L_413d7e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413cee, i64 144, i64 5)
  store %struct.Memory* %call_413cee, %struct.Memory** %MEMORY

  br label %block_.L_413d7e

  ; Code: .L_413cf3:	 RIP: 413cf3	 Bytes: 0
block_.L_413cf3:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 413cf3	 Bytes: 4
  %loadMem_413cf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413cf3 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413cf3)
  store %struct.Memory* %call_413cf3, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %ecx	 RIP: 413cf7	 Bytes: 3
  %loadMem_413cf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413cf7 = call %struct.Memory* @routine_movzbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413cf7)
  store %struct.Memory* %call_413cf7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 413cfa	 Bytes: 3
  %loadMem_413cfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413cfa = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413cfa)
  store %struct.Memory* %call_413cfa, %struct.Memory** %MEMORY

  ; Code: jne .L_413d1e	 RIP: 413cfd	 Bytes: 6
  %loadMem_413cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413cfd = call %struct.Memory* @routine_jne_.L_413d1e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413cfd, i8* %BRANCH_TAKEN, i64 33, i64 6, i64 6)
  store %struct.Memory* %call_413cfd, %struct.Memory** %MEMORY

  %loadBr_413cfd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413cfd = icmp eq i8 %loadBr_413cfd, 1
  br i1 %cmpBr_413cfd, label %block_.L_413d1e, label %block_413d03

block_413d03:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 413d03	 Bytes: 4
  %loadMem_413d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413d03 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413d03)
  store %struct.Memory* %call_413d03, %struct.Memory** %MEMORY

  ; Code: movl $0x5f5e100, 0x4(%rax)	 RIP: 413d07	 Bytes: 7
  %loadMem_413d07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413d07 = call %struct.Memory* @routine_movl__0x5f5e100__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413d07)
  store %struct.Memory* %call_413d07, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 413d0e	 Bytes: 4
  %loadMem_413d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413d0e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413d0e)
  store %struct.Memory* %call_413d0e, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8(%rax)	 RIP: 413d12	 Bytes: 7
  %loadMem_413d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413d12 = call %struct.Memory* @routine_movl__0x0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413d12)
  store %struct.Memory* %call_413d12, %struct.Memory** %MEMORY

  ; Code: jmpq .L_413d79	 RIP: 413d19	 Bytes: 5
  %loadMem_413d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413d19 = call %struct.Memory* @routine_jmpq_.L_413d79(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413d19, i64 96, i64 5)
  store %struct.Memory* %call_413d19, %struct.Memory** %MEMORY

  br label %block_.L_413d79

  ; Code: .L_413d1e:	 RIP: 413d1e	 Bytes: 0
block_.L_413d1e:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 413d1e	 Bytes: 4
  %loadMem_413d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413d1e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413d1e)
  store %struct.Memory* %call_413d1e, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %ecx	 RIP: 413d22	 Bytes: 3
  %loadMem_413d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413d22 = call %struct.Memory* @routine_movzbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413d22)
  store %struct.Memory* %call_413d22, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %ecx	 RIP: 413d25	 Bytes: 3
  %loadMem_413d25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413d25 = call %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413d25)
  store %struct.Memory* %call_413d25, %struct.Memory** %MEMORY

  ; Code: jne .L_413d49	 RIP: 413d28	 Bytes: 6
  %loadMem_413d28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413d28 = call %struct.Memory* @routine_jne_.L_413d49(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413d28, i8* %BRANCH_TAKEN, i64 33, i64 6, i64 6)
  store %struct.Memory* %call_413d28, %struct.Memory** %MEMORY

  %loadBr_413d28 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413d28 = icmp eq i8 %loadBr_413d28, 1
  br i1 %cmpBr_413d28, label %block_.L_413d49, label %block_413d2e

block_413d2e:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 413d2e	 Bytes: 4
  %loadMem_413d2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413d2e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413d2e)
  store %struct.Memory* %call_413d2e, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x4(%rax)	 RIP: 413d32	 Bytes: 7
  %loadMem_413d32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413d32 = call %struct.Memory* @routine_movl__0x0__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413d32)
  store %struct.Memory* %call_413d32, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 413d39	 Bytes: 4
  %loadMem_413d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413d39 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413d39)
  store %struct.Memory* %call_413d39, %struct.Memory** %MEMORY

  ; Code: movl $0x5f5e100, 0x8(%rax)	 RIP: 413d3d	 Bytes: 7
  %loadMem_413d3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413d3d = call %struct.Memory* @routine_movl__0x5f5e100__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413d3d)
  store %struct.Memory* %call_413d3d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_413d74	 RIP: 413d44	 Bytes: 5
  %loadMem_413d44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413d44 = call %struct.Memory* @routine_jmpq_.L_413d74(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413d44, i64 48, i64 5)
  store %struct.Memory* %call_413d44, %struct.Memory** %MEMORY

  br label %block_.L_413d74

  ; Code: .L_413d49:	 RIP: 413d49	 Bytes: 0
block_.L_413d49:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 413d49	 Bytes: 4
  %loadMem_413d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413d49 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413d49)
  store %struct.Memory* %call_413d49, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax), %ecx	 RIP: 413d4d	 Bytes: 3
  %loadMem_413d4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413d4d = call %struct.Memory* @routine_movzbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413d4d)
  store %struct.Memory* %call_413d4d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 413d50	 Bytes: 3
  %loadMem_413d50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413d50 = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413d50)
  store %struct.Memory* %call_413d50, %struct.Memory** %MEMORY

  ; Code: jne .L_413d6f	 RIP: 413d53	 Bytes: 6
  %loadMem_413d53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413d53 = call %struct.Memory* @routine_jne_.L_413d6f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413d53, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_413d53, %struct.Memory** %MEMORY

  %loadBr_413d53 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_413d53 = icmp eq i8 %loadBr_413d53, 1
  br i1 %cmpBr_413d53, label %block_.L_413d6f, label %block_413d59

block_413d59:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 413d59	 Bytes: 4
  %loadMem_413d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413d59 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413d59)
  store %struct.Memory* %call_413d59, %struct.Memory** %MEMORY

  ; Code: movl $0xc350, 0x4(%rax)	 RIP: 413d5d	 Bytes: 7
  %loadMem_413d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413d5d = call %struct.Memory* @routine_movl__0xc350__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413d5d)
  store %struct.Memory* %call_413d5d, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 413d64	 Bytes: 4
  %loadMem_413d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413d64 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413d64)
  store %struct.Memory* %call_413d64, %struct.Memory** %MEMORY

  ; Code: movl $0xc350, 0x8(%rax)	 RIP: 413d68	 Bytes: 7
  %loadMem_413d68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413d68 = call %struct.Memory* @routine_movl__0xc350__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413d68)
  store %struct.Memory* %call_413d68, %struct.Memory** %MEMORY

  ; Code: .L_413d6f:	 RIP: 413d6f	 Bytes: 0
  br label %block_.L_413d6f
block_.L_413d6f:

  ; Code: jmpq .L_413d74	 RIP: 413d6f	 Bytes: 5
  %loadMem_413d6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413d6f = call %struct.Memory* @routine_jmpq_.L_413d74(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413d6f, i64 5, i64 5)
  store %struct.Memory* %call_413d6f, %struct.Memory** %MEMORY

  br label %block_.L_413d74

  ; Code: .L_413d74:	 RIP: 413d74	 Bytes: 0
block_.L_413d74:

  ; Code: jmpq .L_413d79	 RIP: 413d74	 Bytes: 5
  %loadMem_413d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413d74 = call %struct.Memory* @routine_jmpq_.L_413d79(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413d74, i64 5, i64 5)
  store %struct.Memory* %call_413d74, %struct.Memory** %MEMORY

  br label %block_.L_413d79

  ; Code: .L_413d79:	 RIP: 413d79	 Bytes: 0
block_.L_413d79:

  ; Code: jmpq .L_413d7e	 RIP: 413d79	 Bytes: 5
  %loadMem_413d79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413d79 = call %struct.Memory* @routine_jmpq_.L_413d7e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413d79, i64 5, i64 5)
  store %struct.Memory* %call_413d79, %struct.Memory** %MEMORY

  br label %block_.L_413d7e

  ; Code: .L_413d7e:	 RIP: 413d7e	 Bytes: 0
block_.L_413d7e:

  ; Code: jmpq .L_413d99	 RIP: 413d7e	 Bytes: 5
  %loadMem_413d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413d7e = call %struct.Memory* @routine_jmpq_.L_413d99(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413d7e, i64 27, i64 5)
  store %struct.Memory* %call_413d7e, %struct.Memory** %MEMORY

  br label %block_.L_413d99

  ; Code: .L_413d83:	 RIP: 413d83	 Bytes: 0
block_.L_413d83:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 413d83	 Bytes: 4
  %loadMem_413d83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413d83 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413d83)
  store %struct.Memory* %call_413d83, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x8(%rax)	 RIP: 413d87	 Bytes: 7
  %loadMem_413d87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413d87 = call %struct.Memory* @routine_movl__0x1__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413d87)
  store %struct.Memory* %call_413d87, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 413d8e	 Bytes: 4
  %loadMem_413d8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413d8e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413d8e)
  store %struct.Memory* %call_413d8e, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x4(%rax)	 RIP: 413d92	 Bytes: 7
  %loadMem_413d92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413d92 = call %struct.Memory* @routine_movl__0x1__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413d92)
  store %struct.Memory* %call_413d92, %struct.Memory** %MEMORY

  ; Code: .L_413d99:	 RIP: 413d99	 Bytes: 0
  br label %block_.L_413d99
block_.L_413d99:

  ; Code: jmpq .L_413d9e	 RIP: 413d99	 Bytes: 5
  %loadMem_413d99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413d99 = call %struct.Memory* @routine_jmpq_.L_413d9e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413d99, i64 5, i64 5)
  store %struct.Memory* %call_413d99, %struct.Memory** %MEMORY

  br label %block_.L_413d9e

  ; Code: .L_413d9e:	 RIP: 413d9e	 Bytes: 0
block_.L_413d9e:

  ; Code: addq $0x3060, %rsp	 RIP: 413d9e	 Bytes: 7
  %loadMem_413d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413d9e = call %struct.Memory* @routine_addq__0x3060___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413d9e)
  store %struct.Memory* %call_413d9e, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 413da5	 Bytes: 1
  %loadMem_413da5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413da5 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413da5)
  store %struct.Memory* %call_413da5, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 413da6	 Bytes: 1
  %loadMem_413da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_413da6 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_413da6)
  store %struct.Memory* %call_413da6, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_413da6
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

define %struct.Memory* @routine_subq__0x3060___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 12384)
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

define %struct.Memory* @routine_cmpb__0x0__0x2__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 2
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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

define %struct.Memory* @routine_je_.L_4136f1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl_0x633b54___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x633b54_type* @G_0x633b54 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_413579(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x5f5e100__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 100000000)
  ret %struct.Memory* %13
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = zext i8 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzbl_0x1__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 1
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_jge_.L_4134d6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
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

define %struct.Memory* @routine_addl_MINUS0xc__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edx__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x5f5e100__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 100000000)
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

define %struct.Memory* @routine_jle_.L_413491(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x5f5e100__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 100000000)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 16
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_4134c3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %EDX
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

define %struct.Memory* @routine_jmpq_.L_4134c8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_413451(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4134ed(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x5f5e100__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 100000000)
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

define %struct.Memory* @routine_jne_.L_413525(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0xf404c___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 999500)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0xf4240___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 1000000)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0xfff0bdc0___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 4293967296)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0xffffffff___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 4294967295)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_xorl__r8d___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R8D to i64*
  %10 = load i32, i32* %R8D
  %11 = zext i32 %10 to i64
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0xc8___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R9D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 200)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl_0x633b58___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x633b58_type* @G_0x633b58 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__0x633b58(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x633b58_type* @G_0x633b58 to i64), i64 %10)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_callq_.StoreTT(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_413574(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_je_.L_41353c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_41356f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0xfff0bfb4___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 4293967796)
  ret %struct.Memory* %11
}






















define %struct.Memory* @routine_jmpq_.L_4136b6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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














define %struct.Memory* @routine_jge_.L_413613(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_addl_MINUS0x10__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_jle_.L_4135ce(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_413600(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jmpq_.L_413605(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_41358e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_je_.L_41362a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_413662(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_jmpq_.L_4136b1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_je_.L_413679(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_4136ac(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


























define %struct.Memory* @routine_movl_0x633b40___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x633b40_type* @G_0x633b40 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0x62ea38___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x62ea38_type* @G_0x62ea38 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_addl_0x886bc0___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64))
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

define %struct.Memory* @routine_subl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__0x84a3d0___rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8692688
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__0x4__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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




define %struct.Memory* @routine_movl__eax__0x8__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_413d9e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpb__0x0__0x3__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 3
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_413d83(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movzbl___rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
  ret %struct.Memory* %15
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


define %struct.Memory* @routine_jne_.L_413cf3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_callq_.is_draw(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_413750(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0xc8__0x886bc0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64), i64 200)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jle_.L_41376b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0xc350__0x4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 50000)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__0xc350__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 50000)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_cmpl__0x4__0x85f154(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x85f154_type* @G_0x85f154 to i64), i64 4)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_413845(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_leaq_MINUS0x3020__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12320
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x0__MINUS0x3028__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 12328
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_callq_.gen(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x85f150___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x85f150_type* @G_0x85f150 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x3028__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12328
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_.in_check(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x302c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12332
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x3__0x85f154(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x85f154_type* @G_0x85f154 to i64), i64 3)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_413833(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x3024__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 12324
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_cmpl_MINUS0x3028__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 12328
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_41382e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.make(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x302c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12332
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.check_legal(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_413811(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x3024__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12324
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x3024__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12324
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_callq_.unmake(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_4137c6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_413840(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jmpq_.L_4139c8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_movl__0x1__0x85f164(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x85f164_type* @G_0x85f164 to i64), i64 1)
  ret %struct.Memory* %8
}










define %struct.Memory* @routine_movl__0x0__0x85f164(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x85f164_type* @G_0x85f164 to i64), i64 0)
  ret %struct.Memory* %8
}






define %struct.Memory* @routine_cmpl__0x0__MINUS0x3028__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 12328
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_413914(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_41390f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_je_.L_4138f2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_jmpq_.L_4138a7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_413914(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x3024__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 12324
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4139c3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_jge_.L_4139be(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_je_.L_4139a1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_jmpq_.L_413956(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4139c3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jne_.L_4139f0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0x1__0x4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__0x1__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_413cee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_jne_.L_413b98(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_413a7e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__0x32___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 50)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0x886bc0___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x3030__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12336
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl_MINUS0x3030__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12336
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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




define %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__0x4__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x886bc0___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x3034__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12340
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






define %struct.Memory* @routine_movl_MINUS0x3034__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12340
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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

define %struct.Memory* @routine_addl__eax___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__edi__0x8__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 8
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_413b93(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_413b40(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x2__0x886a78(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x886a78_type* @G_0x886a78 to i64), i64 2)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_413aed(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1e___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 30)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__MINUS0x3038__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12344
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_MINUS0x3038__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12344
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_movl__eax__MINUS0x303c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12348
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movl_MINUS0x303c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12348
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jmpq_.L_413b3b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x50___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 80)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__MINUS0x3040__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12352
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_MINUS0x3040__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12352
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_movl__eax__MINUS0x3044__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12356
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movl_MINUS0x3044__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12356
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jmpq_.L_413b8e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl__0x96___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 150)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__MINUS0x3048__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12360
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_MINUS0x3048__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12360
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_movl__eax__MINUS0x304c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12364
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movl_MINUS0x304c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12364
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_jmpq_.L_413ce9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_je_.L_413bf9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl_MINUS0x3024__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12324
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__eax__MINUS0x3050__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12368
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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




define %struct.Memory* @routine_movl_MINUS0x3050__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12368
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_addl__eax___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__ecx__0x4__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 4
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_0x886bc0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x886bc0_type* @G_0x886bc0 to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movl__eax__0x8__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_413ce4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_jne_.L_413c9f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_413c5a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl__eax__MINUS0x3054__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12372
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_MINUS0x3054__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12372
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






















define %struct.Memory* @routine_jmpq_.L_413c9a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl__eax__MINUS0x3058__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12376
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_MINUS0x3058__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12376
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






















define %struct.Memory* @routine_jmpq_.L_413cdf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl__eax__MINUS0x305c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12380
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_MINUS0x305c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12380
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




























define %struct.Memory* @routine_jmpq_.L_413d7e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jne_.L_413d1e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0x5f5e100__0x4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 100000000)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__0x0__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_413d79(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jne_.L_413d49(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0x0__0x4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__0x5f5e100__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 100000000)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_413d74(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jne_.L_413d6f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jmpq_.L_413d99(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x3060___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 12384)
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

