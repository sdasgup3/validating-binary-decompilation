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
%G_0x6d4520_type = type <{ [2 x i8] }>
@G_0x6d4520= global %G_0x6d4520_type <{ [2 x i8] c"\00\00" }>
%G_0x6d4522_type = type <{ [2 x i8] }>
@G_0x6d4522= global %G_0x6d4522_type <{ [2 x i8] c"\00\00" }>
%G_0x6d4524_type = type <{ [2 x i8] }>
@G_0x6d4524= global %G_0x6d4524_type <{ [2 x i8] c"\00\00" }>
%G_0x6d4526_type = type <{ [2 x i8] }>
@G_0x6d4526= global %G_0x6d4526_type <{ [2 x i8] c"\00\00" }>
%G_0x6d4528_type = type <{ [2 x i8] }>
@G_0x6d4528= global %G_0x6d4528_type <{ [2 x i8] c"\00\00" }>
%G_0x6d452a_type = type <{ [2 x i8] }>
@G_0x6d452a= global %G_0x6d452a_type <{ [2 x i8] c"\00\00" }>
%G_0x6d4690_type = type <{ [8 x i8] }>
@G_0x6d4690= global %G_0x6d4690_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x722cb0_type = type <{ [8 x i8] }>
@G_0x722cb0= global %G_0x722cb0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b2750_type = type <{ [8 x i8] }>
@G__0x4b2750= global %G__0x4b2750_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b28d0_type = type <{ [8 x i8] }>
@G__0x4b28d0= global %G__0x4b28d0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x6d09f0_type = type <{ [8 x i8] }>
@G__0x6d09f0= global %G__0x6d09f0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x6f73a0_type = type <{ [8 x i8] }>
@G__0x6f73a0= global %G__0x6f73a0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x70d010_type = type <{ [8 x i8] }>
@G__0x70d010= global %G__0x70d010_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x70d1b0_type = type <{ [8 x i8] }>
@G__0x70d1b0= global %G__0x70d1b0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x70e8f0_type = type <{ [8 x i8] }>
@G__0x70e8f0= global %G__0x70e8f0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x70fe80_type = type <{ [8 x i8] }>
@G__0x70fe80= global %G__0x70fe80_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x722cd0_type = type <{ [8 x i8] }>
@G__0x722cd0= global %G__0x722cd0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x723b20_type = type <{ [8 x i8] }>
@G__0x723b20= global %G__0x723b20_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @CalculateQuantParam(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .CalculateQuantParam:	 RIP: 4797b0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 4797b0	 Bytes: 1
  %loadMem_4797b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4797b0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4797b0)
  store %struct.Memory* %call_4797b0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 4797b1	 Bytes: 3
  %loadMem_4797b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4797b1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4797b1)
  store %struct.Memory* %call_4797b1, %struct.Memory** %MEMORY

  ; Code: pushq %r15	 RIP: 4797b4	 Bytes: 2
  %loadMem_4797b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4797b4 = call %struct.Memory* @routine_pushq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4797b4)
  store %struct.Memory* %call_4797b4, %struct.Memory** %MEMORY

  ; Code: pushq %r14	 RIP: 4797b6	 Bytes: 2
  %loadMem_4797b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4797b6 = call %struct.Memory* @routine_pushq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4797b6)
  store %struct.Memory* %call_4797b6, %struct.Memory** %MEMORY

  ; Code: pushq %r13	 RIP: 4797b8	 Bytes: 2
  %loadMem_4797b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4797b8 = call %struct.Memory* @routine_pushq__r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4797b8)
  store %struct.Memory* %call_4797b8, %struct.Memory** %MEMORY

  ; Code: pushq %r12	 RIP: 4797ba	 Bytes: 2
  %loadMem_4797ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4797ba = call %struct.Memory* @routine_pushq__r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4797ba)
  store %struct.Memory* %call_4797ba, %struct.Memory** %MEMORY

  ; Code: pushq %rbx	 RIP: 4797bc	 Bytes: 1
  %loadMem_4797bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4797bc = call %struct.Memory* @routine_pushq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4797bc)
  store %struct.Memory* %call_4797bc, %struct.Memory** %MEMORY

  ; Code: subq $0x108, %rsp	 RIP: 4797bd	 Bytes: 7
  %loadMem_4797bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4797bd = call %struct.Memory* @routine_subq__0x108___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4797bd)
  store %struct.Memory* %call_4797bd, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x54(%rbp)	 RIP: 4797c4	 Bytes: 7
  %loadMem_4797c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4797c4 = call %struct.Memory* @routine_movl__0x0__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4797c4)
  store %struct.Memory* %call_4797c4, %struct.Memory** %MEMORY

  ; Code: movq 0x722cb0, %rax	 RIP: 4797cb	 Bytes: 8
  %loadMem_4797cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4797cb = call %struct.Memory* @routine_movq_0x722cb0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4797cb)
  store %struct.Memory* %call_4797cb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x24(%rax)	 RIP: 4797d3	 Bytes: 4
  %loadMem_4797d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4797d3 = call %struct.Memory* @routine_cmpl__0x0__0x24__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4797d3)
  store %struct.Memory* %call_4797d3, %struct.Memory** %MEMORY

  ; Code: jne .L_4797fb	 RIP: 4797d7	 Bytes: 6
  %loadMem_4797d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4797d7 = call %struct.Memory* @routine_jne_.L_4797fb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4797d7, i8* %BRANCH_TAKEN, i64 36, i64 6, i64 6)
  store %struct.Memory* %call_4797d7, %struct.Memory** %MEMORY

  %loadBr_4797d7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4797d7 = icmp eq i8 %loadBr_4797d7, 1
  br i1 %cmpBr_4797d7, label %block_.L_4797fb, label %block_4797dd

block_4797dd:
  ; Code: movq 0x6d4690, %rax	 RIP: 4797dd	 Bytes: 8
  %loadMem_4797dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4797dd = call %struct.Memory* @routine_movq_0x6d4690___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4797dd)
  store %struct.Memory* %call_4797dd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x14(%rax)	 RIP: 4797e5	 Bytes: 4
  %loadMem_4797e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4797e5 = call %struct.Memory* @routine_cmpl__0x0__0x14__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4797e5)
  store %struct.Memory* %call_4797e5, %struct.Memory** %MEMORY

  ; Code: jne .L_4797fb	 RIP: 4797e9	 Bytes: 6
  %loadMem_4797e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4797e9 = call %struct.Memory* @routine_jne_.L_4797fb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4797e9, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4797e9, %struct.Memory** %MEMORY

  %loadBr_4797e9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4797e9 = icmp eq i8 %loadBr_4797e9, 1
  br i1 %cmpBr_4797e9, label %block_.L_4797fb, label %block_4797ef

block_4797ef:
  ; Code: movl $0x1, -0x54(%rbp)	 RIP: 4797ef	 Bytes: 7
  %loadMem_4797ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4797ef = call %struct.Memory* @routine_movl__0x1__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4797ef)
  store %struct.Memory* %call_4797ef, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4798eb	 RIP: 4797f6	 Bytes: 5
  %loadMem_4797f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4797f6 = call %struct.Memory* @routine_jmpq_.L_4798eb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4797f6, i64 245, i64 5)
  store %struct.Memory* %call_4797f6, %struct.Memory** %MEMORY

  br label %block_.L_4798eb

  ; Code: .L_4797fb:	 RIP: 4797fb	 Bytes: 0
block_.L_4797fb:

  ; Code: xorl %esi, %esi	 RIP: 4797fb	 Bytes: 2
  %loadMem_4797fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4797fb = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4797fb)
  store %struct.Memory* %call_4797fb, %struct.Memory** %MEMORY

  ; Code: movl $0x18, %eax	 RIP: 4797fd	 Bytes: 5
  %loadMem_4797fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4797fd = call %struct.Memory* @routine_movl__0x18___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4797fd)
  store %struct.Memory* %call_4797fd, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 479802	 Bytes: 2
  %loadMem_479802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479802 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479802)
  store %struct.Memory* %call_479802, %struct.Memory** %MEMORY

  ; Code: leaq -0x50(%rbp), %rcx	 RIP: 479804	 Bytes: 4
  %loadMem_479804 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479804 = call %struct.Memory* @routine_leaq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479804)
  store %struct.Memory* %call_479804, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 479808	 Bytes: 3
  %loadMem_479808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479808 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479808)
  store %struct.Memory* %call_479808, %struct.Memory** %MEMORY

  ; Code: callq .memset_plt	 RIP: 47980b	 Bytes: 5
  %loadMem1_47980b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47980b = call %struct.Memory* @routine_callq_.memset_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47980b, i64 -493467, i64 5, i64 5)
  store %struct.Memory* %call1_47980b, %struct.Memory** %MEMORY

  %loadMem2_47980b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47980b = load i64, i64* %3
  %call2_47980b = call %struct.Memory* @ext_memset(%struct.State* %0, i64  %loadPC_47980b, %struct.Memory* %loadMem2_47980b)
  store %struct.Memory* %call2_47980b, %struct.Memory** %MEMORY

  ; Code: movq 0x722cb0, %rcx	 RIP: 479810	 Bytes: 8
  %loadMem_479810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479810 = call %struct.Memory* @routine_movq_0x722cb0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479810)
  store %struct.Memory* %call_479810, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x24(%rcx)	 RIP: 479818	 Bytes: 4
  %loadMem_479818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479818 = call %struct.Memory* @routine_cmpl__0x0__0x24__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479818)
  store %struct.Memory* %call_479818, %struct.Memory** %MEMORY

  ; Code: je .L_47985e	 RIP: 47981c	 Bytes: 6
  %loadMem_47981c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47981c = call %struct.Memory* @routine_je_.L_47985e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47981c, i8* %BRANCH_TAKEN, i64 66, i64 6, i64 6)
  store %struct.Memory* %call_47981c, %struct.Memory** %MEMORY

  %loadBr_47981c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47981c = icmp eq i8 %loadBr_47981c, 1
  br i1 %cmpBr_47981c, label %block_.L_47985e, label %block_479822

block_479822:
  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 479822	 Bytes: 7
  %loadMem_479822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479822 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479822)
  store %struct.Memory* %call_479822, %struct.Memory** %MEMORY

  ; Code: .L_479829:	 RIP: 479829	 Bytes: 0
  br label %block_.L_479829
block_.L_479829:

  ; Code: cmpl $0x6, -0x2c(%rbp)	 RIP: 479829	 Bytes: 4
  %loadMem_479829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479829 = call %struct.Memory* @routine_cmpl__0x6__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479829)
  store %struct.Memory* %call_479829, %struct.Memory** %MEMORY

  ; Code: jge .L_479859	 RIP: 47982d	 Bytes: 6
  %loadMem_47982d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47982d = call %struct.Memory* @routine_jge_.L_479859(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47982d, i8* %BRANCH_TAKEN, i64 44, i64 6, i64 6)
  store %struct.Memory* %call_47982d, %struct.Memory** %MEMORY

  %loadBr_47982d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47982d = icmp eq i8 %loadBr_47982d, 1
  br i1 %cmpBr_47982d, label %block_.L_479859, label %block_479833

block_479833:
  ; Code: movq 0x722cb0, %rax	 RIP: 479833	 Bytes: 8
  %loadMem_479833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479833 = call %struct.Memory* @routine_movq_0x722cb0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479833)
  store %struct.Memory* %call_479833, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 47983b	 Bytes: 4
  %loadMem_47983b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47983b = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47983b)
  store %struct.Memory* %call_47983b, %struct.Memory** %MEMORY

  ; Code: movl 0x28(%rax,%rcx,4), %edx	 RIP: 47983f	 Bytes: 4
  %loadMem_47983f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47983f = call %struct.Memory* @routine_movl_0x28__rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47983f)
  store %struct.Memory* %call_47983f, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rax	 RIP: 479843	 Bytes: 4
  %loadMem_479843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479843 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479843)
  store %struct.Memory* %call_479843, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x50(%rbp,%rax,4)	 RIP: 479847	 Bytes: 4
  %loadMem_479847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479847 = call %struct.Memory* @routine_movl__edx__MINUS0x50__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479847)
  store %struct.Memory* %call_479847, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 47984b	 Bytes: 3
  %loadMem_47984b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47984b = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47984b)
  store %struct.Memory* %call_47984b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47984e	 Bytes: 3
  %loadMem_47984e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47984e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47984e)
  store %struct.Memory* %call_47984e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 479851	 Bytes: 3
  %loadMem_479851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479851 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479851)
  store %struct.Memory* %call_479851, %struct.Memory** %MEMORY

  ; Code: jmpq .L_479829	 RIP: 479854	 Bytes: 5
  %loadMem_479854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479854 = call %struct.Memory* @routine_jmpq_.L_479829(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479854, i64 -43, i64 5)
  store %struct.Memory* %call_479854, %struct.Memory** %MEMORY

  br label %block_.L_479829

  ; Code: .L_479859:	 RIP: 479859	 Bytes: 0
block_.L_479859:

  ; Code: jmpq .L_47985e	 RIP: 479859	 Bytes: 5
  %loadMem_479859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479859 = call %struct.Memory* @routine_jmpq_.L_47985e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479859, i64 5, i64 5)
  store %struct.Memory* %call_479859, %struct.Memory** %MEMORY

  br label %block_.L_47985e

  ; Code: .L_47985e:	 RIP: 47985e	 Bytes: 0
block_.L_47985e:

  ; Code: movq 0x6d4690, %rax	 RIP: 47985e	 Bytes: 8
  %loadMem_47985e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47985e = call %struct.Memory* @routine_movq_0x6d4690___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47985e)
  store %struct.Memory* %call_47985e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x14(%rax)	 RIP: 479866	 Bytes: 4
  %loadMem_479866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479866 = call %struct.Memory* @routine_cmpl__0x0__0x14__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479866)
  store %struct.Memory* %call_479866, %struct.Memory** %MEMORY

  ; Code: je .L_4798e6	 RIP: 47986a	 Bytes: 6
  %loadMem_47986a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47986a = call %struct.Memory* @routine_je_.L_4798e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47986a, i8* %BRANCH_TAKEN, i64 124, i64 6, i64 6)
  store %struct.Memory* %call_47986a, %struct.Memory** %MEMORY

  %loadBr_47986a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47986a = icmp eq i8 %loadBr_47986a, 1
  br i1 %cmpBr_47986a, label %block_.L_4798e6, label %block_479870

block_479870:
  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 479870	 Bytes: 7
  %loadMem_479870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479870 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479870)
  store %struct.Memory* %call_479870, %struct.Memory** %MEMORY

  ; Code: .L_479877:	 RIP: 479877	 Bytes: 0
  br label %block_.L_479877
block_.L_479877:

  ; Code: cmpl $0x6, -0x2c(%rbp)	 RIP: 479877	 Bytes: 4
  %loadMem_479877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479877 = call %struct.Memory* @routine_cmpl__0x6__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479877)
  store %struct.Memory* %call_479877, %struct.Memory** %MEMORY

  ; Code: jge .L_4798e1	 RIP: 47987b	 Bytes: 6
  %loadMem_47987b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47987b = call %struct.Memory* @routine_jge_.L_4798e1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47987b, i8* %BRANCH_TAKEN, i64 102, i64 6, i64 6)
  store %struct.Memory* %call_47987b, %struct.Memory** %MEMORY

  %loadBr_47987b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47987b = icmp eq i8 %loadBr_47987b, 1
  br i1 %cmpBr_47987b, label %block_.L_4798e1, label %block_479881

block_479881:
  ; Code: cmpl $0x0, -0x2c(%rbp)	 RIP: 479881	 Bytes: 4
  %loadMem_479881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479881 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479881)
  store %struct.Memory* %call_479881, %struct.Memory** %MEMORY

  ; Code: je .L_479895	 RIP: 479885	 Bytes: 6
  %loadMem_479885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479885 = call %struct.Memory* @routine_je_.L_479895(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479885, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_479885, %struct.Memory** %MEMORY

  %loadBr_479885 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_479885 = icmp eq i8 %loadBr_479885, 1
  br i1 %cmpBr_479885, label %block_.L_479895, label %block_47988b

block_47988b:
  ; Code: cmpl $0x3, -0x2c(%rbp)	 RIP: 47988b	 Bytes: 4
  %loadMem_47988b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47988b = call %struct.Memory* @routine_cmpl__0x3__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47988b)
  store %struct.Memory* %call_47988b, %struct.Memory** %MEMORY

  ; Code: jne .L_4798b6	 RIP: 47988f	 Bytes: 6
  %loadMem_47988f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47988f = call %struct.Memory* @routine_jne_.L_4798b6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47988f, i8* %BRANCH_TAKEN, i64 39, i64 6, i64 6)
  store %struct.Memory* %call_47988f, %struct.Memory** %MEMORY

  %loadBr_47988f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47988f = icmp eq i8 %loadBr_47988f, 1
  br i1 %cmpBr_47988f, label %block_.L_4798b6, label %block_.L_479895

  ; Code: .L_479895:	 RIP: 479895	 Bytes: 0
block_.L_479895:

  ; Code: movq 0x6d4690, %rax	 RIP: 479895	 Bytes: 8
  %loadMem_479895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479895 = call %struct.Memory* @routine_movq_0x6d4690___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479895)
  store %struct.Memory* %call_479895, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 47989d	 Bytes: 4
  %loadMem_47989d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47989d = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47989d)
  store %struct.Memory* %call_47989d, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rax,%rcx,4), %edx	 RIP: 4798a1	 Bytes: 4
  %loadMem_4798a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4798a1 = call %struct.Memory* @routine_movl_0x18__rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4798a1)
  store %struct.Memory* %call_4798a1, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rax	 RIP: 4798a5	 Bytes: 4
  %loadMem_4798a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4798a5 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4798a5)
  store %struct.Memory* %call_4798a5, %struct.Memory** %MEMORY

  ; Code: orl -0x50(%rbp,%rax,4), %edx	 RIP: 4798a9	 Bytes: 4
  %loadMem_4798a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4798a9 = call %struct.Memory* @routine_orl_MINUS0x50__rbp__rax_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4798a9)
  store %struct.Memory* %call_4798a9, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x50(%rbp,%rax,4)	 RIP: 4798ad	 Bytes: 4
  %loadMem_4798ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4798ad = call %struct.Memory* @routine_movl__edx__MINUS0x50__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4798ad)
  store %struct.Memory* %call_4798ad, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4798ce	 RIP: 4798b1	 Bytes: 5
  %loadMem_4798b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4798b1 = call %struct.Memory* @routine_jmpq_.L_4798ce(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4798b1, i64 29, i64 5)
  store %struct.Memory* %call_4798b1, %struct.Memory** %MEMORY

  br label %block_.L_4798ce

  ; Code: .L_4798b6:	 RIP: 4798b6	 Bytes: 0
block_.L_4798b6:

  ; Code: movq 0x6d4690, %rax	 RIP: 4798b6	 Bytes: 8
  %loadMem_4798b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4798b6 = call %struct.Memory* @routine_movq_0x6d4690___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4798b6)
  store %struct.Memory* %call_4798b6, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 4798be	 Bytes: 4
  %loadMem_4798be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4798be = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4798be)
  store %struct.Memory* %call_4798be, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rax,%rcx,4), %edx	 RIP: 4798c2	 Bytes: 4
  %loadMem_4798c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4798c2 = call %struct.Memory* @routine_movl_0x18__rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4798c2)
  store %struct.Memory* %call_4798c2, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rax	 RIP: 4798c6	 Bytes: 4
  %loadMem_4798c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4798c6 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4798c6)
  store %struct.Memory* %call_4798c6, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x50(%rbp,%rax,4)	 RIP: 4798ca	 Bytes: 4
  %loadMem_4798ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4798ca = call %struct.Memory* @routine_movl__edx__MINUS0x50__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4798ca)
  store %struct.Memory* %call_4798ca, %struct.Memory** %MEMORY

  ; Code: .L_4798ce:	 RIP: 4798ce	 Bytes: 0
  br label %block_.L_4798ce
block_.L_4798ce:

  ; Code: jmpq .L_4798d3	 RIP: 4798ce	 Bytes: 5
  %loadMem_4798ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4798ce = call %struct.Memory* @routine_jmpq_.L_4798d3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4798ce, i64 5, i64 5)
  store %struct.Memory* %call_4798ce, %struct.Memory** %MEMORY

  br label %block_.L_4798d3

  ; Code: .L_4798d3:	 RIP: 4798d3	 Bytes: 0
block_.L_4798d3:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 4798d3	 Bytes: 3
  %loadMem_4798d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4798d3 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4798d3)
  store %struct.Memory* %call_4798d3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4798d6	 Bytes: 3
  %loadMem_4798d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4798d6 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4798d6)
  store %struct.Memory* %call_4798d6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 4798d9	 Bytes: 3
  %loadMem_4798d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4798d9 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4798d9)
  store %struct.Memory* %call_4798d9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_479877	 RIP: 4798dc	 Bytes: 5
  %loadMem_4798dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4798dc = call %struct.Memory* @routine_jmpq_.L_479877(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4798dc, i64 -101, i64 5)
  store %struct.Memory* %call_4798dc, %struct.Memory** %MEMORY

  br label %block_.L_479877

  ; Code: .L_4798e1:	 RIP: 4798e1	 Bytes: 0
block_.L_4798e1:

  ; Code: jmpq .L_4798e6	 RIP: 4798e1	 Bytes: 5
  %loadMem_4798e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4798e1 = call %struct.Memory* @routine_jmpq_.L_4798e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4798e1, i64 5, i64 5)
  store %struct.Memory* %call_4798e1, %struct.Memory** %MEMORY

  br label %block_.L_4798e6

  ; Code: .L_4798e6:	 RIP: 4798e6	 Bytes: 0
block_.L_4798e6:

  ; Code: jmpq .L_4798eb	 RIP: 4798e6	 Bytes: 5
  %loadMem_4798e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4798e6 = call %struct.Memory* @routine_jmpq_.L_4798eb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4798e6, i64 5, i64 5)
  store %struct.Memory* %call_4798e6, %struct.Memory** %MEMORY

  br label %block_.L_4798eb

  ; Code: .L_4798eb:	 RIP: 4798eb	 Bytes: 0
block_.L_4798eb:

  ; Code: cmpl $0x1, -0x54(%rbp)	 RIP: 4798eb	 Bytes: 4
  %loadMem_4798eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4798eb = call %struct.Memory* @routine_cmpl__0x1__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4798eb)
  store %struct.Memory* %call_4798eb, %struct.Memory** %MEMORY

  ; Code: jne .L_479cff	 RIP: 4798ef	 Bytes: 6
  %loadMem_4798ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4798ef = call %struct.Memory* @routine_jne_.L_479cff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4798ef, i8* %BRANCH_TAKEN, i64 1040, i64 6, i64 6)
  store %struct.Memory* %call_4798ef, %struct.Memory** %MEMORY

  %loadBr_4798ef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4798ef = icmp eq i8 %loadBr_4798ef, 1
  br i1 %cmpBr_4798ef, label %block_.L_479cff, label %block_4798f5

block_4798f5:
  ; Code: movl $0x0, -0x34(%rbp)	 RIP: 4798f5	 Bytes: 7
  %loadMem_4798f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4798f5 = call %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4798f5)
  store %struct.Memory* %call_4798f5, %struct.Memory** %MEMORY

  ; Code: .L_4798fc:	 RIP: 4798fc	 Bytes: 0
  br label %block_.L_4798fc
block_.L_4798fc:

  ; Code: cmpl $0x6, -0x34(%rbp)	 RIP: 4798fc	 Bytes: 4
  %loadMem_4798fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4798fc = call %struct.Memory* @routine_cmpl__0x6__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4798fc)
  store %struct.Memory* %call_4798fc, %struct.Memory** %MEMORY

  ; Code: jge .L_479cfa	 RIP: 479900	 Bytes: 6
  %loadMem_479900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479900 = call %struct.Memory* @routine_jge_.L_479cfa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479900, i8* %BRANCH_TAKEN, i64 1018, i64 6, i64 6)
  store %struct.Memory* %call_479900, %struct.Memory** %MEMORY

  %loadBr_479900 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_479900 = icmp eq i8 %loadBr_479900, 1
  br i1 %cmpBr_479900, label %block_.L_479cfa, label %block_479906

block_479906:
  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 479906	 Bytes: 7
  %loadMem_479906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479906 = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479906)
  store %struct.Memory* %call_479906, %struct.Memory** %MEMORY

  ; Code: .L_47990d:	 RIP: 47990d	 Bytes: 0
  br label %block_.L_47990d
block_.L_47990d:

  ; Code: cmpl $0x4, -0x30(%rbp)	 RIP: 47990d	 Bytes: 4
  %loadMem_47990d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47990d = call %struct.Memory* @routine_cmpl__0x4__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47990d)
  store %struct.Memory* %call_47990d, %struct.Memory** %MEMORY

  ; Code: jge .L_479ce7	 RIP: 479911	 Bytes: 6
  %loadMem_479911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479911 = call %struct.Memory* @routine_jge_.L_479ce7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479911, i8* %BRANCH_TAKEN, i64 982, i64 6, i64 6)
  store %struct.Memory* %call_479911, %struct.Memory** %MEMORY

  %loadBr_479911 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_479911 = icmp eq i8 %loadBr_479911, 1
  br i1 %cmpBr_479911, label %block_.L_479ce7, label %block_479917

block_479917:
  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 479917	 Bytes: 7
  %loadMem_479917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479917 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479917)
  store %struct.Memory* %call_479917, %struct.Memory** %MEMORY

  ; Code: .L_47991e:	 RIP: 47991e	 Bytes: 0
  br label %block_.L_47991e
block_.L_47991e:

  ; Code: cmpl $0x4, -0x2c(%rbp)	 RIP: 47991e	 Bytes: 4
  %loadMem_47991e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47991e = call %struct.Memory* @routine_cmpl__0x4__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47991e)
  store %struct.Memory* %call_47991e, %struct.Memory** %MEMORY

  ; Code: jge .L_479cd4	 RIP: 479922	 Bytes: 6
  %loadMem_479922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479922 = call %struct.Memory* @routine_jge_.L_479cd4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479922, i8* %BRANCH_TAKEN, i64 946, i64 6, i64 6)
  store %struct.Memory* %call_479922, %struct.Memory** %MEMORY

  %loadBr_479922 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_479922 = icmp eq i8 %loadBr_479922, 1
  br i1 %cmpBr_479922, label %block_.L_479cd4, label %block_479928

block_479928:
  ; Code: movq $0x723b20, %rax	 RIP: 479928	 Bytes: 10
  %loadMem_479928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479928 = call %struct.Memory* @routine_movq__0x723b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479928)
  store %struct.Memory* %call_479928, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 479932	 Bytes: 3
  %loadMem_479932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479932 = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479932)
  store %struct.Memory* %call_479932, %struct.Memory** %MEMORY

  ; Code: addq $0x180, %rcx	 RIP: 479935	 Bytes: 7
  %loadMem_479935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479935 = call %struct.Memory* @routine_addq__0x180___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479935)
  store %struct.Memory* %call_479935, %struct.Memory** %MEMORY

  ; Code: movq $0x4b28d0, %rdx	 RIP: 47993c	 Bytes: 10
  %loadMem_47993c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47993c = call %struct.Memory* @routine_movq__0x4b28d0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47993c)
  store %struct.Memory* %call_47993c, %struct.Memory** %MEMORY

  ; Code: movq $0x722cd0, %rsi	 RIP: 479946	 Bytes: 10
  %loadMem_479946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479946 = call %struct.Memory* @routine_movq__0x722cd0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479946)
  store %struct.Memory* %call_479946, %struct.Memory** %MEMORY

  ; Code: movq %rsi, %rdi	 RIP: 479950	 Bytes: 3
  %loadMem_479950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479950 = call %struct.Memory* @routine_movq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479950)
  store %struct.Memory* %call_479950, %struct.Memory** %MEMORY

  ; Code: addq $0x180, %rdi	 RIP: 479953	 Bytes: 7
  %loadMem_479953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479953 = call %struct.Memory* @routine_addq__0x180___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479953)
  store %struct.Memory* %call_479953, %struct.Memory** %MEMORY

  ; Code: movq $0x4b2750, %r8	 RIP: 47995a	 Bytes: 10
  %loadMem_47995a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47995a = call %struct.Memory* @routine_movq__0x4b2750___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47995a)
  store %struct.Memory* %call_47995a, %struct.Memory** %MEMORY

  ; Code: movq $0x6d09f0, %r9	 RIP: 479964	 Bytes: 10
  %loadMem_479964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479964 = call %struct.Memory* @routine_movq__0x6d09f0___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479964)
  store %struct.Memory* %call_479964, %struct.Memory** %MEMORY

  ; Code: movq $0x70fe80, %r10	 RIP: 47996e	 Bytes: 10
  %loadMem_47996e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47996e = call %struct.Memory* @routine_movq__0x70fe80___r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47996e)
  store %struct.Memory* %call_47996e, %struct.Memory** %MEMORY

  ; Code: movq $0x70d1b0, %r11	 RIP: 479978	 Bytes: 10
  %loadMem_479978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479978 = call %struct.Memory* @routine_movq__0x70d1b0___r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479978)
  store %struct.Memory* %call_479978, %struct.Memory** %MEMORY

  ; Code: movq %r11, %rbx	 RIP: 479982	 Bytes: 3
  %loadMem_479982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479982 = call %struct.Memory* @routine_movq__r11___rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479982)
  store %struct.Memory* %call_479982, %struct.Memory** %MEMORY

  ; Code: addq $0x180, %rbx	 RIP: 479985	 Bytes: 7
  %loadMem_479985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479985 = call %struct.Memory* @routine_addq__0x180___rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479985)
  store %struct.Memory* %call_479985, %struct.Memory** %MEMORY

  ; Code: movq $0x6f73a0, %r14	 RIP: 47998c	 Bytes: 10
  %loadMem_47998c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47998c = call %struct.Memory* @routine_movq__0x6f73a0___r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47998c)
  store %struct.Memory* %call_47998c, %struct.Memory** %MEMORY

  ; Code: movq %r14, %r15	 RIP: 479996	 Bytes: 3
  %loadMem_479996 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479996 = call %struct.Memory* @routine_movq__r14___r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479996)
  store %struct.Memory* %call_479996, %struct.Memory** %MEMORY

  ; Code: addq $0x180, %r15	 RIP: 479999	 Bytes: 7
  %loadMem_479999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479999 = call %struct.Memory* @routine_addq__0x180___r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479999)
  store %struct.Memory* %call_479999, %struct.Memory** %MEMORY

  ; Code: movq $0x70d010, %r12	 RIP: 4799a0	 Bytes: 10
  %loadMem_4799a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4799a0 = call %struct.Memory* @routine_movq__0x70d010___r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4799a0)
  store %struct.Memory* %call_4799a0, %struct.Memory** %MEMORY

  ; Code: movq $0x70e8f0, %r13	 RIP: 4799aa	 Bytes: 10
  %loadMem_4799aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4799aa = call %struct.Memory* @routine_movq__0x70e8f0___r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4799aa)
  store %struct.Memory* %call_4799aa, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x60(%rbp)	 RIP: 4799b4	 Bytes: 4
  %loadMem_4799b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4799b4 = call %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4799b4)
  store %struct.Memory* %call_4799b4, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rax	 RIP: 4799b8	 Bytes: 4
  %loadMem_4799b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4799b8 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4799b8)
  store %struct.Memory* %call_4799b8, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rax	 RIP: 4799bc	 Bytes: 4
  %loadMem_4799bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4799bc = call %struct.Memory* @routine_shlq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4799bc)
  store %struct.Memory* %call_4799bc, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x68(%rbp)	 RIP: 4799c0	 Bytes: 4
  %loadMem_4799c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4799c0 = call %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4799c0)
  store %struct.Memory* %call_4799c0, %struct.Memory** %MEMORY

  ; Code: movq %r8, %rax	 RIP: 4799c4	 Bytes: 3
  %loadMem_4799c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4799c4 = call %struct.Memory* @routine_movq__r8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4799c4)
  store %struct.Memory* %call_4799c4, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x70(%rbp)	 RIP: 4799c7	 Bytes: 4
  %loadMem_4799c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4799c7 = call %struct.Memory* @routine_movq__rcx__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4799c7)
  store %struct.Memory* %call_4799c7, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rcx	 RIP: 4799cb	 Bytes: 4
  %loadMem_4799cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4799cb = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4799cb)
  store %struct.Memory* %call_4799cb, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4799cf	 Bytes: 3
  %loadMem_4799cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4799cf = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4799cf)
  store %struct.Memory* %call_4799cf, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4799d2	 Bytes: 4
  %loadMem_4799d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4799d2 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4799d2)
  store %struct.Memory* %call_4799d2, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 4799d6	 Bytes: 4
  %loadMem_4799d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4799d6 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4799d6)
  store %struct.Memory* %call_4799d6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4799da	 Bytes: 3
  %loadMem_4799da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4799da = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4799da)
  store %struct.Memory* %call_4799da, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 4799dd	 Bytes: 4
  %loadMem_4799dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4799dd = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4799dd)
  store %struct.Memory* %call_4799dd, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %eax	 RIP: 4799e1	 Bytes: 3
  %loadMem_4799e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4799e1 = call %struct.Memory* @routine_movl___rax__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4799e1)
  store %struct.Memory* %call_4799e1, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 4799e4	 Bytes: 4
  %loadMem_4799e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4799e4 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4799e4)
  store %struct.Memory* %call_4799e4, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 4799e8	 Bytes: 4
  %loadMem_4799e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4799e8 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4799e8)
  store %struct.Memory* %call_4799e8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %r13	 RIP: 4799ec	 Bytes: 3
  %loadMem_4799ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4799ec = call %struct.Memory* @routine_addq__rcx___r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4799ec)
  store %struct.Memory* %call_4799ec, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 4799ef	 Bytes: 4
  %loadMem_4799ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4799ef = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4799ef)
  store %struct.Memory* %call_4799ef, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 4799f3	 Bytes: 4
  %loadMem_4799f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4799f3 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4799f3)
  store %struct.Memory* %call_4799f3, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %r13	 RIP: 4799f7	 Bytes: 3
  %loadMem_4799f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4799f7 = call %struct.Memory* @routine_addq__rcx___r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4799f7)
  store %struct.Memory* %call_4799f7, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 4799fa	 Bytes: 4
  %loadMem_4799fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4799fa = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4799fa)
  store %struct.Memory* %call_4799fa, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%r13,%rcx,4)	 RIP: 4799fe	 Bytes: 5
  %loadMem_4799fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4799fe = call %struct.Memory* @routine_movl__eax____r13__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4799fe)
  store %struct.Memory* %call_4799fe, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 479a03	 Bytes: 4
  %loadMem_479a03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a03 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a03)
  store %struct.Memory* %call_479a03, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 479a07	 Bytes: 4
  %loadMem_479a07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a07 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a07)
  store %struct.Memory* %call_479a07, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %r13	 RIP: 479a0b	 Bytes: 3
  %loadMem_479a0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a0b = call %struct.Memory* @routine_movq__rdx___r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a0b)
  store %struct.Memory* %call_479a0b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %r13	 RIP: 479a0e	 Bytes: 3
  %loadMem_479a0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a0e = call %struct.Memory* @routine_addq__rcx___r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a0e)
  store %struct.Memory* %call_479a0e, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 479a11	 Bytes: 4
  %loadMem_479a11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a11 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a11)
  store %struct.Memory* %call_479a11, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 479a15	 Bytes: 4
  %loadMem_479a15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a15 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a15)
  store %struct.Memory* %call_479a15, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %r13	 RIP: 479a19	 Bytes: 3
  %loadMem_479a19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a19 = call %struct.Memory* @routine_addq__rcx___r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a19)
  store %struct.Memory* %call_479a19, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 479a1c	 Bytes: 4
  %loadMem_479a1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a1c = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a1c)
  store %struct.Memory* %call_479a1c, %struct.Memory** %MEMORY

  ; Code: movl (%r13,%rcx,4), %eax	 RIP: 479a20	 Bytes: 5
  %loadMem_479a20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a20 = call %struct.Memory* @routine_movl___r13__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a20)
  store %struct.Memory* %call_479a20, %struct.Memory** %MEMORY

  ; Code: shll $0x4, %eax	 RIP: 479a25	 Bytes: 3
  %loadMem_479a25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a25 = call %struct.Memory* @routine_shll__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a25)
  store %struct.Memory* %call_479a25, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 479a28	 Bytes: 4
  %loadMem_479a28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a28 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a28)
  store %struct.Memory* %call_479a28, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 479a2c	 Bytes: 4
  %loadMem_479a2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a2c = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a2c)
  store %struct.Memory* %call_479a2c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %r12	 RIP: 479a30	 Bytes: 3
  %loadMem_479a30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a30 = call %struct.Memory* @routine_addq__rcx___r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a30)
  store %struct.Memory* %call_479a30, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 479a33	 Bytes: 4
  %loadMem_479a33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a33 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a33)
  store %struct.Memory* %call_479a33, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 479a37	 Bytes: 4
  %loadMem_479a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a37 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a37)
  store %struct.Memory* %call_479a37, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %r12	 RIP: 479a3b	 Bytes: 3
  %loadMem_479a3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a3b = call %struct.Memory* @routine_addq__rcx___r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a3b)
  store %struct.Memory* %call_479a3b, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 479a3e	 Bytes: 4
  %loadMem_479a3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a3e = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a3e)
  store %struct.Memory* %call_479a3e, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%r12,%rcx,4)	 RIP: 479a42	 Bytes: 4
  %loadMem_479a42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a42 = call %struct.Memory* @routine_movl__eax____r12__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a42)
  store %struct.Memory* %call_479a42, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 479a46	 Bytes: 4
  %loadMem_479a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a46 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a46)
  store %struct.Memory* %call_479a46, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 479a4a	 Bytes: 4
  %loadMem_479a4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a4a = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a4a)
  store %struct.Memory* %call_479a4a, %struct.Memory** %MEMORY

  ; Code: movq %r8, %r12	 RIP: 479a4e	 Bytes: 3
  %loadMem_479a4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a4e = call %struct.Memory* @routine_movq__r8___r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a4e)
  store %struct.Memory* %call_479a4e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %r12	 RIP: 479a51	 Bytes: 3
  %loadMem_479a51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a51 = call %struct.Memory* @routine_addq__rcx___r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a51)
  store %struct.Memory* %call_479a51, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 479a54	 Bytes: 4
  %loadMem_479a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a54 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a54)
  store %struct.Memory* %call_479a54, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 479a58	 Bytes: 4
  %loadMem_479a58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a58 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a58)
  store %struct.Memory* %call_479a58, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %r12	 RIP: 479a5c	 Bytes: 3
  %loadMem_479a5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a5c = call %struct.Memory* @routine_addq__rcx___r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a5c)
  store %struct.Memory* %call_479a5c, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 479a5f	 Bytes: 4
  %loadMem_479a5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a5f = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a5f)
  store %struct.Memory* %call_479a5f, %struct.Memory** %MEMORY

  ; Code: movl (%r12,%rcx,4), %eax	 RIP: 479a63	 Bytes: 4
  %loadMem_479a63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a63 = call %struct.Memory* @routine_movl___r12__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a63)
  store %struct.Memory* %call_479a63, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 479a67	 Bytes: 4
  %loadMem_479a67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a67 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a67)
  store %struct.Memory* %call_479a67, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 479a6b	 Bytes: 4
  %loadMem_479a6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a6b = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a6b)
  store %struct.Memory* %call_479a6b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %r14	 RIP: 479a6f	 Bytes: 3
  %loadMem_479a6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a6f = call %struct.Memory* @routine_addq__rcx___r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a6f)
  store %struct.Memory* %call_479a6f, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 479a72	 Bytes: 4
  %loadMem_479a72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a72 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a72)
  store %struct.Memory* %call_479a72, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 479a76	 Bytes: 4
  %loadMem_479a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a76 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a76)
  store %struct.Memory* %call_479a76, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %r14	 RIP: 479a7a	 Bytes: 3
  %loadMem_479a7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a7a = call %struct.Memory* @routine_addq__rcx___r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a7a)
  store %struct.Memory* %call_479a7a, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 479a7d	 Bytes: 4
  %loadMem_479a7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a7d = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a7d)
  store %struct.Memory* %call_479a7d, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%r14,%rcx,4)	 RIP: 479a81	 Bytes: 4
  %loadMem_479a81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a81 = call %struct.Memory* @routine_movl__eax____r14__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a81)
  store %struct.Memory* %call_479a81, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 479a85	 Bytes: 4
  %loadMem_479a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a85 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a85)
  store %struct.Memory* %call_479a85, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 479a89	 Bytes: 4
  %loadMem_479a89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a89 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a89)
  store %struct.Memory* %call_479a89, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %r14	 RIP: 479a8d	 Bytes: 3
  %loadMem_479a8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a8d = call %struct.Memory* @routine_movq__rdx___r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a8d)
  store %struct.Memory* %call_479a8d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %r14	 RIP: 479a90	 Bytes: 3
  %loadMem_479a90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a90 = call %struct.Memory* @routine_addq__rcx___r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a90)
  store %struct.Memory* %call_479a90, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 479a93	 Bytes: 4
  %loadMem_479a93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a93 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a93)
  store %struct.Memory* %call_479a93, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 479a97	 Bytes: 4
  %loadMem_479a97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a97 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a97)
  store %struct.Memory* %call_479a97, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %r14	 RIP: 479a9b	 Bytes: 3
  %loadMem_479a9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a9b = call %struct.Memory* @routine_addq__rcx___r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a9b)
  store %struct.Memory* %call_479a9b, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 479a9e	 Bytes: 4
  %loadMem_479a9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479a9e = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479a9e)
  store %struct.Memory* %call_479a9e, %struct.Memory** %MEMORY

  ; Code: movl (%r14,%rcx,4), %eax	 RIP: 479aa2	 Bytes: 4
  %loadMem_479aa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479aa2 = call %struct.Memory* @routine_movl___r14__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479aa2)
  store %struct.Memory* %call_479aa2, %struct.Memory** %MEMORY

  ; Code: shll $0x4, %eax	 RIP: 479aa6	 Bytes: 3
  %loadMem_479aa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479aa6 = call %struct.Memory* @routine_shll__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479aa6)
  store %struct.Memory* %call_479aa6, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 479aa9	 Bytes: 4
  %loadMem_479aa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479aa9 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479aa9)
  store %struct.Memory* %call_479aa9, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 479aad	 Bytes: 4
  %loadMem_479aad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479aad = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479aad)
  store %struct.Memory* %call_479aad, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %r11	 RIP: 479ab1	 Bytes: 3
  %loadMem_479ab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ab1 = call %struct.Memory* @routine_addq__rcx___r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ab1)
  store %struct.Memory* %call_479ab1, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 479ab4	 Bytes: 4
  %loadMem_479ab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ab4 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ab4)
  store %struct.Memory* %call_479ab4, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 479ab8	 Bytes: 4
  %loadMem_479ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ab8 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ab8)
  store %struct.Memory* %call_479ab8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %r11	 RIP: 479abc	 Bytes: 3
  %loadMem_479abc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479abc = call %struct.Memory* @routine_addq__rcx___r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479abc)
  store %struct.Memory* %call_479abc, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 479abf	 Bytes: 4
  %loadMem_479abf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479abf = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479abf)
  store %struct.Memory* %call_479abf, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%r11,%rcx,4)	 RIP: 479ac3	 Bytes: 4
  %loadMem_479ac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ac3 = call %struct.Memory* @routine_movl__eax____r11__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ac3)
  store %struct.Memory* %call_479ac3, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 479ac7	 Bytes: 4
  %loadMem_479ac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ac7 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ac7)
  store %struct.Memory* %call_479ac7, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 479acb	 Bytes: 4
  %loadMem_479acb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479acb = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479acb)
  store %struct.Memory* %call_479acb, %struct.Memory** %MEMORY

  ; Code: movq %r8, %r11	 RIP: 479acf	 Bytes: 3
  %loadMem_479acf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479acf = call %struct.Memory* @routine_movq__r8___r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479acf)
  store %struct.Memory* %call_479acf, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %r11	 RIP: 479ad2	 Bytes: 3
  %loadMem_479ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ad2 = call %struct.Memory* @routine_addq__rcx___r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ad2)
  store %struct.Memory* %call_479ad2, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 479ad5	 Bytes: 4
  %loadMem_479ad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ad5 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ad5)
  store %struct.Memory* %call_479ad5, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 479ad9	 Bytes: 4
  %loadMem_479ad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ad9 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ad9)
  store %struct.Memory* %call_479ad9, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %r11	 RIP: 479add	 Bytes: 3
  %loadMem_479add = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479add = call %struct.Memory* @routine_addq__rcx___r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479add)
  store %struct.Memory* %call_479add, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 479ae0	 Bytes: 4
  %loadMem_479ae0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ae0 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ae0)
  store %struct.Memory* %call_479ae0, %struct.Memory** %MEMORY

  ; Code: movl (%r11,%rcx,4), %eax	 RIP: 479ae4	 Bytes: 4
  %loadMem_479ae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ae4 = call %struct.Memory* @routine_movl___r11__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ae4)
  store %struct.Memory* %call_479ae4, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 479ae8	 Bytes: 4
  %loadMem_479ae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ae8 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ae8)
  store %struct.Memory* %call_479ae8, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 479aec	 Bytes: 4
  %loadMem_479aec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479aec = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479aec)
  store %struct.Memory* %call_479aec, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %r15	 RIP: 479af0	 Bytes: 3
  %loadMem_479af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479af0 = call %struct.Memory* @routine_addq__rcx___r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479af0)
  store %struct.Memory* %call_479af0, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 479af3	 Bytes: 4
  %loadMem_479af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479af3 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479af3)
  store %struct.Memory* %call_479af3, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 479af7	 Bytes: 4
  %loadMem_479af7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479af7 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479af7)
  store %struct.Memory* %call_479af7, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %r15	 RIP: 479afb	 Bytes: 3
  %loadMem_479afb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479afb = call %struct.Memory* @routine_addq__rcx___r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479afb)
  store %struct.Memory* %call_479afb, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 479afe	 Bytes: 4
  %loadMem_479afe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479afe = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479afe)
  store %struct.Memory* %call_479afe, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%r15,%rcx,4)	 RIP: 479b02	 Bytes: 4
  %loadMem_479b02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b02 = call %struct.Memory* @routine_movl__eax____r15__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b02)
  store %struct.Memory* %call_479b02, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 479b06	 Bytes: 4
  %loadMem_479b06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b06 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b06)
  store %struct.Memory* %call_479b06, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 479b0a	 Bytes: 4
  %loadMem_479b0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b0a = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b0a)
  store %struct.Memory* %call_479b0a, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %r11	 RIP: 479b0e	 Bytes: 3
  %loadMem_479b0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b0e = call %struct.Memory* @routine_movq__rdx___r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b0e)
  store %struct.Memory* %call_479b0e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %r11	 RIP: 479b11	 Bytes: 3
  %loadMem_479b11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b11 = call %struct.Memory* @routine_addq__rcx___r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b11)
  store %struct.Memory* %call_479b11, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 479b14	 Bytes: 4
  %loadMem_479b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b14 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b14)
  store %struct.Memory* %call_479b14, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 479b18	 Bytes: 4
  %loadMem_479b18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b18 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b18)
  store %struct.Memory* %call_479b18, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %r11	 RIP: 479b1c	 Bytes: 3
  %loadMem_479b1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b1c = call %struct.Memory* @routine_addq__rcx___r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b1c)
  store %struct.Memory* %call_479b1c, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 479b1f	 Bytes: 4
  %loadMem_479b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b1f = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b1f)
  store %struct.Memory* %call_479b1f, %struct.Memory** %MEMORY

  ; Code: movl (%r11,%rcx,4), %eax	 RIP: 479b23	 Bytes: 4
  %loadMem_479b23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b23 = call %struct.Memory* @routine_movl___r11__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b23)
  store %struct.Memory* %call_479b23, %struct.Memory** %MEMORY

  ; Code: shll $0x4, %eax	 RIP: 479b27	 Bytes: 3
  %loadMem_479b27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b27 = call %struct.Memory* @routine_shll__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b27)
  store %struct.Memory* %call_479b27, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 479b2a	 Bytes: 4
  %loadMem_479b2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b2a = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b2a)
  store %struct.Memory* %call_479b2a, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 479b2e	 Bytes: 4
  %loadMem_479b2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b2e = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b2e)
  store %struct.Memory* %call_479b2e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rbx	 RIP: 479b32	 Bytes: 3
  %loadMem_479b32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b32 = call %struct.Memory* @routine_addq__rcx___rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b32)
  store %struct.Memory* %call_479b32, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 479b35	 Bytes: 4
  %loadMem_479b35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b35 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b35)
  store %struct.Memory* %call_479b35, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 479b39	 Bytes: 4
  %loadMem_479b39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b39 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b39)
  store %struct.Memory* %call_479b39, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rbx	 RIP: 479b3d	 Bytes: 3
  %loadMem_479b3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b3d = call %struct.Memory* @routine_addq__rcx___rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b3d)
  store %struct.Memory* %call_479b3d, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 479b40	 Bytes: 4
  %loadMem_479b40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b40 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b40)
  store %struct.Memory* %call_479b40, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rbx,%rcx,4)	 RIP: 479b44	 Bytes: 3
  %loadMem_479b44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b44 = call %struct.Memory* @routine_movl__eax____rbx__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b44)
  store %struct.Memory* %call_479b44, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 479b47	 Bytes: 4
  %loadMem_479b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b47 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b47)
  store %struct.Memory* %call_479b47, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 479b4b	 Bytes: 4
  %loadMem_479b4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b4b = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b4b)
  store %struct.Memory* %call_479b4b, %struct.Memory** %MEMORY

  ; Code: movq %r8, %r11	 RIP: 479b4f	 Bytes: 3
  %loadMem_479b4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b4f = call %struct.Memory* @routine_movq__r8___r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b4f)
  store %struct.Memory* %call_479b4f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %r11	 RIP: 479b52	 Bytes: 3
  %loadMem_479b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b52 = call %struct.Memory* @routine_addq__rcx___r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b52)
  store %struct.Memory* %call_479b52, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 479b55	 Bytes: 4
  %loadMem_479b55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b55 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b55)
  store %struct.Memory* %call_479b55, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 479b59	 Bytes: 4
  %loadMem_479b59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b59 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b59)
  store %struct.Memory* %call_479b59, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %r11	 RIP: 479b5d	 Bytes: 3
  %loadMem_479b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b5d = call %struct.Memory* @routine_addq__rcx___r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b5d)
  store %struct.Memory* %call_479b5d, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 479b60	 Bytes: 4
  %loadMem_479b60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b60 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b60)
  store %struct.Memory* %call_479b60, %struct.Memory** %MEMORY

  ; Code: movl (%r11,%rcx,4), %eax	 RIP: 479b64	 Bytes: 4
  %loadMem_479b64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b64 = call %struct.Memory* @routine_movl___r11__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b64)
  store %struct.Memory* %call_479b64, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 479b68	 Bytes: 4
  %loadMem_479b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b68 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b68)
  store %struct.Memory* %call_479b68, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 479b6c	 Bytes: 4
  %loadMem_479b6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b6c = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b6c)
  store %struct.Memory* %call_479b6c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %r10	 RIP: 479b70	 Bytes: 3
  %loadMem_479b70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b70 = call %struct.Memory* @routine_addq__rcx___r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b70)
  store %struct.Memory* %call_479b70, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 479b73	 Bytes: 4
  %loadMem_479b73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b73 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b73)
  store %struct.Memory* %call_479b73, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 479b77	 Bytes: 4
  %loadMem_479b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b77 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b77)
  store %struct.Memory* %call_479b77, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %r10	 RIP: 479b7b	 Bytes: 3
  %loadMem_479b7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b7b = call %struct.Memory* @routine_addq__rcx___r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b7b)
  store %struct.Memory* %call_479b7b, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 479b7e	 Bytes: 4
  %loadMem_479b7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b7e = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b7e)
  store %struct.Memory* %call_479b7e, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%r10,%rcx,4)	 RIP: 479b82	 Bytes: 4
  %loadMem_479b82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b82 = call %struct.Memory* @routine_movl__eax____r10__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b82)
  store %struct.Memory* %call_479b82, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 479b86	 Bytes: 4
  %loadMem_479b86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b86 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b86)
  store %struct.Memory* %call_479b86, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 479b8a	 Bytes: 4
  %loadMem_479b8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b8a = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b8a)
  store %struct.Memory* %call_479b8a, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %r10	 RIP: 479b8e	 Bytes: 3
  %loadMem_479b8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b8e = call %struct.Memory* @routine_movq__rdx___r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b8e)
  store %struct.Memory* %call_479b8e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %r10	 RIP: 479b91	 Bytes: 3
  %loadMem_479b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b91 = call %struct.Memory* @routine_addq__rcx___r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b91)
  store %struct.Memory* %call_479b91, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 479b94	 Bytes: 4
  %loadMem_479b94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b94 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b94)
  store %struct.Memory* %call_479b94, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 479b98	 Bytes: 4
  %loadMem_479b98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b98 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b98)
  store %struct.Memory* %call_479b98, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %r10	 RIP: 479b9c	 Bytes: 3
  %loadMem_479b9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b9c = call %struct.Memory* @routine_addq__rcx___r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b9c)
  store %struct.Memory* %call_479b9c, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 479b9f	 Bytes: 4
  %loadMem_479b9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479b9f = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479b9f)
  store %struct.Memory* %call_479b9f, %struct.Memory** %MEMORY

  ; Code: movl (%r10,%rcx,4), %eax	 RIP: 479ba3	 Bytes: 4
  %loadMem_479ba3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ba3 = call %struct.Memory* @routine_movl___r10__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ba3)
  store %struct.Memory* %call_479ba3, %struct.Memory** %MEMORY

  ; Code: shll $0x4, %eax	 RIP: 479ba7	 Bytes: 3
  %loadMem_479ba7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ba7 = call %struct.Memory* @routine_shll__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ba7)
  store %struct.Memory* %call_479ba7, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 479baa	 Bytes: 4
  %loadMem_479baa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479baa = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479baa)
  store %struct.Memory* %call_479baa, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 479bae	 Bytes: 4
  %loadMem_479bae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479bae = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479bae)
  store %struct.Memory* %call_479bae, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %r9	 RIP: 479bb2	 Bytes: 3
  %loadMem_479bb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479bb2 = call %struct.Memory* @routine_addq__rcx___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479bb2)
  store %struct.Memory* %call_479bb2, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 479bb5	 Bytes: 4
  %loadMem_479bb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479bb5 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479bb5)
  store %struct.Memory* %call_479bb5, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 479bb9	 Bytes: 4
  %loadMem_479bb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479bb9 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479bb9)
  store %struct.Memory* %call_479bb9, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %r9	 RIP: 479bbd	 Bytes: 3
  %loadMem_479bbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479bbd = call %struct.Memory* @routine_addq__rcx___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479bbd)
  store %struct.Memory* %call_479bbd, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 479bc0	 Bytes: 4
  %loadMem_479bc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479bc0 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479bc0)
  store %struct.Memory* %call_479bc0, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%r9,%rcx,4)	 RIP: 479bc4	 Bytes: 4
  %loadMem_479bc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479bc4 = call %struct.Memory* @routine_movl__eax____r9__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479bc4)
  store %struct.Memory* %call_479bc4, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 479bc8	 Bytes: 4
  %loadMem_479bc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479bc8 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479bc8)
  store %struct.Memory* %call_479bc8, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 479bcc	 Bytes: 4
  %loadMem_479bcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479bcc = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479bcc)
  store %struct.Memory* %call_479bcc, %struct.Memory** %MEMORY

  ; Code: movq %r8, %r9	 RIP: 479bd0	 Bytes: 3
  %loadMem_479bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479bd0 = call %struct.Memory* @routine_movq__r8___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479bd0)
  store %struct.Memory* %call_479bd0, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %r9	 RIP: 479bd3	 Bytes: 3
  %loadMem_479bd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479bd3 = call %struct.Memory* @routine_addq__rcx___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479bd3)
  store %struct.Memory* %call_479bd3, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 479bd6	 Bytes: 4
  %loadMem_479bd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479bd6 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479bd6)
  store %struct.Memory* %call_479bd6, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 479bda	 Bytes: 4
  %loadMem_479bda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479bda = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479bda)
  store %struct.Memory* %call_479bda, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %r9	 RIP: 479bde	 Bytes: 3
  %loadMem_479bde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479bde = call %struct.Memory* @routine_addq__rcx___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479bde)
  store %struct.Memory* %call_479bde, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 479be1	 Bytes: 4
  %loadMem_479be1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479be1 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479be1)
  store %struct.Memory* %call_479be1, %struct.Memory** %MEMORY

  ; Code: movl (%r9,%rcx,4), %eax	 RIP: 479be5	 Bytes: 4
  %loadMem_479be5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479be5 = call %struct.Memory* @routine_movl___r9__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479be5)
  store %struct.Memory* %call_479be5, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 479be9	 Bytes: 4
  %loadMem_479be9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479be9 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479be9)
  store %struct.Memory* %call_479be9, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 479bed	 Bytes: 4
  %loadMem_479bed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479bed = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479bed)
  store %struct.Memory* %call_479bed, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 479bf1	 Bytes: 3
  %loadMem_479bf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479bf1 = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479bf1)
  store %struct.Memory* %call_479bf1, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 479bf4	 Bytes: 4
  %loadMem_479bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479bf4 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479bf4)
  store %struct.Memory* %call_479bf4, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 479bf8	 Bytes: 4
  %loadMem_479bf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479bf8 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479bf8)
  store %struct.Memory* %call_479bf8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 479bfc	 Bytes: 3
  %loadMem_479bfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479bfc = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479bfc)
  store %struct.Memory* %call_479bfc, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 479bff	 Bytes: 4
  %loadMem_479bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479bff = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479bff)
  store %struct.Memory* %call_479bff, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rsi,%rcx,4)	 RIP: 479c03	 Bytes: 3
  %loadMem_479c03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c03 = call %struct.Memory* @routine_movl__eax____rsi__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c03)
  store %struct.Memory* %call_479c03, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 479c06	 Bytes: 4
  %loadMem_479c06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c06 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c06)
  store %struct.Memory* %call_479c06, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 479c0a	 Bytes: 4
  %loadMem_479c0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c0a = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c0a)
  store %struct.Memory* %call_479c0a, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 479c0e	 Bytes: 3
  %loadMem_479c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c0e = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c0e)
  store %struct.Memory* %call_479c0e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 479c11	 Bytes: 3
  %loadMem_479c11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c11 = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c11)
  store %struct.Memory* %call_479c11, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 479c14	 Bytes: 4
  %loadMem_479c14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c14 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c14)
  store %struct.Memory* %call_479c14, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 479c18	 Bytes: 4
  %loadMem_479c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c18 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c18)
  store %struct.Memory* %call_479c18, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 479c1c	 Bytes: 3
  %loadMem_479c1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c1c = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c1c)
  store %struct.Memory* %call_479c1c, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 479c1f	 Bytes: 4
  %loadMem_479c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c1f = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c1f)
  store %struct.Memory* %call_479c1f, %struct.Memory** %MEMORY

  ; Code: movl (%rsi,%rcx,4), %eax	 RIP: 479c23	 Bytes: 3
  %loadMem_479c23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c23 = call %struct.Memory* @routine_movl___rsi__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c23)
  store %struct.Memory* %call_479c23, %struct.Memory** %MEMORY

  ; Code: shll $0x4, %eax	 RIP: 479c26	 Bytes: 3
  %loadMem_479c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c26 = call %struct.Memory* @routine_shll__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c26)
  store %struct.Memory* %call_479c26, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 479c29	 Bytes: 4
  %loadMem_479c29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c29 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c29)
  store %struct.Memory* %call_479c29, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 479c2d	 Bytes: 4
  %loadMem_479c2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c2d = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c2d)
  store %struct.Memory* %call_479c2d, %struct.Memory** %MEMORY

  ; Code: movq -0x60(%rbp), %rsi	 RIP: 479c31	 Bytes: 4
  %loadMem_479c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c31 = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c31)
  store %struct.Memory* %call_479c31, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 479c35	 Bytes: 3
  %loadMem_479c35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c35 = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c35)
  store %struct.Memory* %call_479c35, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 479c38	 Bytes: 4
  %loadMem_479c38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c38 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c38)
  store %struct.Memory* %call_479c38, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 479c3c	 Bytes: 4
  %loadMem_479c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c3c = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c3c)
  store %struct.Memory* %call_479c3c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 479c40	 Bytes: 3
  %loadMem_479c40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c40 = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c40)
  store %struct.Memory* %call_479c40, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 479c43	 Bytes: 4
  %loadMem_479c43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c43 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c43)
  store %struct.Memory* %call_479c43, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rsi,%rcx,4)	 RIP: 479c47	 Bytes: 3
  %loadMem_479c47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c47 = call %struct.Memory* @routine_movl__eax____rsi__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c47)
  store %struct.Memory* %call_479c47, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 479c4a	 Bytes: 4
  %loadMem_479c4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c4a = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c4a)
  store %struct.Memory* %call_479c4a, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 479c4e	 Bytes: 4
  %loadMem_479c4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c4e = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c4e)
  store %struct.Memory* %call_479c4e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %r8	 RIP: 479c52	 Bytes: 3
  %loadMem_479c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c52 = call %struct.Memory* @routine_addq__rcx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c52)
  store %struct.Memory* %call_479c52, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 479c55	 Bytes: 4
  %loadMem_479c55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c55 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c55)
  store %struct.Memory* %call_479c55, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 479c59	 Bytes: 4
  %loadMem_479c59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c59 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c59)
  store %struct.Memory* %call_479c59, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %r8	 RIP: 479c5d	 Bytes: 3
  %loadMem_479c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c5d = call %struct.Memory* @routine_addq__rcx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c5d)
  store %struct.Memory* %call_479c5d, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 479c60	 Bytes: 4
  %loadMem_479c60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c60 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c60)
  store %struct.Memory* %call_479c60, %struct.Memory** %MEMORY

  ; Code: movl (%r8,%rcx,4), %eax	 RIP: 479c64	 Bytes: 4
  %loadMem_479c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c64 = call %struct.Memory* @routine_movl___r8__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c64)
  store %struct.Memory* %call_479c64, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 479c68	 Bytes: 4
  %loadMem_479c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c68 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c68)
  store %struct.Memory* %call_479c68, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 479c6c	 Bytes: 4
  %loadMem_479c6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c6c = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c6c)
  store %struct.Memory* %call_479c6c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdi	 RIP: 479c70	 Bytes: 3
  %loadMem_479c70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c70 = call %struct.Memory* @routine_addq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c70)
  store %struct.Memory* %call_479c70, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 479c73	 Bytes: 4
  %loadMem_479c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c73 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c73)
  store %struct.Memory* %call_479c73, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 479c77	 Bytes: 4
  %loadMem_479c77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c77 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c77)
  store %struct.Memory* %call_479c77, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdi	 RIP: 479c7b	 Bytes: 3
  %loadMem_479c7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c7b = call %struct.Memory* @routine_addq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c7b)
  store %struct.Memory* %call_479c7b, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 479c7e	 Bytes: 4
  %loadMem_479c7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c7e = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c7e)
  store %struct.Memory* %call_479c7e, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rdi,%rcx,4)	 RIP: 479c82	 Bytes: 3
  %loadMem_479c82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c82 = call %struct.Memory* @routine_movl__eax____rdi__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c82)
  store %struct.Memory* %call_479c82, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 479c85	 Bytes: 4
  %loadMem_479c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c85 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c85)
  store %struct.Memory* %call_479c85, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 479c89	 Bytes: 4
  %loadMem_479c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c89 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c89)
  store %struct.Memory* %call_479c89, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 479c8d	 Bytes: 3
  %loadMem_479c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c8d = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c8d)
  store %struct.Memory* %call_479c8d, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 479c90	 Bytes: 4
  %loadMem_479c90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c90 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c90)
  store %struct.Memory* %call_479c90, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 479c94	 Bytes: 4
  %loadMem_479c94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c94 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c94)
  store %struct.Memory* %call_479c94, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 479c98	 Bytes: 3
  %loadMem_479c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c98 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c98)
  store %struct.Memory* %call_479c98, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 479c9b	 Bytes: 4
  %loadMem_479c9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c9b = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c9b)
  store %struct.Memory* %call_479c9b, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%rcx,4), %eax	 RIP: 479c9f	 Bytes: 3
  %loadMem_479c9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479c9f = call %struct.Memory* @routine_movl___rdx__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479c9f)
  store %struct.Memory* %call_479c9f, %struct.Memory** %MEMORY

  ; Code: shll $0x4, %eax	 RIP: 479ca2	 Bytes: 3
  %loadMem_479ca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ca2 = call %struct.Memory* @routine_shll__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ca2)
  store %struct.Memory* %call_479ca2, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 479ca5	 Bytes: 4
  %loadMem_479ca5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ca5 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ca5)
  store %struct.Memory* %call_479ca5, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 479ca9	 Bytes: 4
  %loadMem_479ca9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ca9 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ca9)
  store %struct.Memory* %call_479ca9, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rdx	 RIP: 479cad	 Bytes: 4
  %loadMem_479cad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479cad = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479cad)
  store %struct.Memory* %call_479cad, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 479cb1	 Bytes: 3
  %loadMem_479cb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479cb1 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479cb1)
  store %struct.Memory* %call_479cb1, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 479cb4	 Bytes: 4
  %loadMem_479cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479cb4 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479cb4)
  store %struct.Memory* %call_479cb4, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 479cb8	 Bytes: 4
  %loadMem_479cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479cb8 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479cb8)
  store %struct.Memory* %call_479cb8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 479cbc	 Bytes: 3
  %loadMem_479cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479cbc = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479cbc)
  store %struct.Memory* %call_479cbc, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 479cbf	 Bytes: 4
  %loadMem_479cbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479cbf = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479cbf)
  store %struct.Memory* %call_479cbf, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rdx,%rcx,4)	 RIP: 479cc3	 Bytes: 3
  %loadMem_479cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479cc3 = call %struct.Memory* @routine_movl__eax____rdx__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479cc3)
  store %struct.Memory* %call_479cc3, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 479cc6	 Bytes: 3
  %loadMem_479cc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479cc6 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479cc6)
  store %struct.Memory* %call_479cc6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 479cc9	 Bytes: 3
  %loadMem_479cc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479cc9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479cc9)
  store %struct.Memory* %call_479cc9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 479ccc	 Bytes: 3
  %loadMem_479ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ccc = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ccc)
  store %struct.Memory* %call_479ccc, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47991e	 RIP: 479ccf	 Bytes: 5
  %loadMem_479ccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ccf = call %struct.Memory* @routine_jmpq_.L_47991e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ccf, i64 -945, i64 5)
  store %struct.Memory* %call_479ccf, %struct.Memory** %MEMORY

  br label %block_.L_47991e

  ; Code: .L_479cd4:	 RIP: 479cd4	 Bytes: 0
block_.L_479cd4:

  ; Code: jmpq .L_479cd9	 RIP: 479cd4	 Bytes: 5
  %loadMem_479cd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479cd4 = call %struct.Memory* @routine_jmpq_.L_479cd9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479cd4, i64 5, i64 5)
  store %struct.Memory* %call_479cd4, %struct.Memory** %MEMORY

  br label %block_.L_479cd9

  ; Code: .L_479cd9:	 RIP: 479cd9	 Bytes: 0
block_.L_479cd9:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 479cd9	 Bytes: 3
  %loadMem_479cd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479cd9 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479cd9)
  store %struct.Memory* %call_479cd9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 479cdc	 Bytes: 3
  %loadMem_479cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479cdc = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479cdc)
  store %struct.Memory* %call_479cdc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 479cdf	 Bytes: 3
  %loadMem_479cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479cdf = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479cdf)
  store %struct.Memory* %call_479cdf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47990d	 RIP: 479ce2	 Bytes: 5
  %loadMem_479ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ce2 = call %struct.Memory* @routine_jmpq_.L_47990d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ce2, i64 -981, i64 5)
  store %struct.Memory* %call_479ce2, %struct.Memory** %MEMORY

  br label %block_.L_47990d

  ; Code: .L_479ce7:	 RIP: 479ce7	 Bytes: 0
block_.L_479ce7:

  ; Code: jmpq .L_479cec	 RIP: 479ce7	 Bytes: 5
  %loadMem_479ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ce7 = call %struct.Memory* @routine_jmpq_.L_479cec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ce7, i64 5, i64 5)
  store %struct.Memory* %call_479ce7, %struct.Memory** %MEMORY

  br label %block_.L_479cec

  ; Code: .L_479cec:	 RIP: 479cec	 Bytes: 0
block_.L_479cec:

  ; Code: movl -0x34(%rbp), %eax	 RIP: 479cec	 Bytes: 3
  %loadMem_479cec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479cec = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479cec)
  store %struct.Memory* %call_479cec, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 479cef	 Bytes: 3
  %loadMem_479cef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479cef = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479cef)
  store %struct.Memory* %call_479cef, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 479cf2	 Bytes: 3
  %loadMem_479cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479cf2 = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479cf2)
  store %struct.Memory* %call_479cf2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4798fc	 RIP: 479cf5	 Bytes: 5
  %loadMem_479cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479cf5 = call %struct.Memory* @routine_jmpq_.L_4798fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479cf5, i64 -1017, i64 5)
  store %struct.Memory* %call_479cf5, %struct.Memory** %MEMORY

  br label %block_.L_4798fc

  ; Code: .L_479cfa:	 RIP: 479cfa	 Bytes: 0
block_.L_479cfa:

  ; Code: jmpq .L_47a984	 RIP: 479cfa	 Bytes: 5
  %loadMem_479cfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479cfa = call %struct.Memory* @routine_jmpq_.L_47a984(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479cfa, i64 3210, i64 5)
  store %struct.Memory* %call_479cfa, %struct.Memory** %MEMORY

  br label %block_.L_47a984

  ; Code: .L_479cff:	 RIP: 479cff	 Bytes: 0
block_.L_479cff:

  ; Code: movl $0x0, -0x34(%rbp)	 RIP: 479cff	 Bytes: 7
  %loadMem_479cff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479cff = call %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479cff)
  store %struct.Memory* %call_479cff, %struct.Memory** %MEMORY

  ; Code: .L_479d06:	 RIP: 479d06	 Bytes: 0
  br label %block_.L_479d06
block_.L_479d06:

  ; Code: cmpl $0x6, -0x34(%rbp)	 RIP: 479d06	 Bytes: 4
  %loadMem_479d06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479d06 = call %struct.Memory* @routine_cmpl__0x6__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479d06)
  store %struct.Memory* %call_479d06, %struct.Memory** %MEMORY

  ; Code: jge .L_47a97f	 RIP: 479d0a	 Bytes: 6
  %loadMem_479d0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479d0a = call %struct.Memory* @routine_jge_.L_47a97f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479d0a, i8* %BRANCH_TAKEN, i64 3189, i64 6, i64 6)
  store %struct.Memory* %call_479d0a, %struct.Memory** %MEMORY

  %loadBr_479d0a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_479d0a = icmp eq i8 %loadBr_479d0a, 1
  br i1 %cmpBr_479d0a, label %block_.L_47a97f, label %block_479d10

block_479d10:
  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 479d10	 Bytes: 7
  %loadMem_479d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479d10 = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479d10)
  store %struct.Memory* %call_479d10, %struct.Memory** %MEMORY

  ; Code: .L_479d17:	 RIP: 479d17	 Bytes: 0
  br label %block_.L_479d17
block_.L_479d17:

  ; Code: cmpl $0x4, -0x30(%rbp)	 RIP: 479d17	 Bytes: 4
  %loadMem_479d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479d17 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479d17)
  store %struct.Memory* %call_479d17, %struct.Memory** %MEMORY

  ; Code: jge .L_47a96c	 RIP: 479d1b	 Bytes: 6
  %loadMem_479d1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479d1b = call %struct.Memory* @routine_jge_.L_47a96c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479d1b, i8* %BRANCH_TAKEN, i64 3153, i64 6, i64 6)
  store %struct.Memory* %call_479d1b, %struct.Memory** %MEMORY

  %loadBr_479d1b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_479d1b = icmp eq i8 %loadBr_479d1b, 1
  br i1 %cmpBr_479d1b, label %block_.L_47a96c, label %block_479d21

block_479d21:
  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 479d21	 Bytes: 7
  %loadMem_479d21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479d21 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479d21)
  store %struct.Memory* %call_479d21, %struct.Memory** %MEMORY

  ; Code: .L_479d28:	 RIP: 479d28	 Bytes: 0
  br label %block_.L_479d28
block_.L_479d28:

  ; Code: cmpl $0x4, -0x2c(%rbp)	 RIP: 479d28	 Bytes: 4
  %loadMem_479d28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479d28 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479d28)
  store %struct.Memory* %call_479d28, %struct.Memory** %MEMORY

  ; Code: jge .L_47a959	 RIP: 479d2c	 Bytes: 6
  %loadMem_479d2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479d2c = call %struct.Memory* @routine_jge_.L_47a959(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479d2c, i8* %BRANCH_TAKEN, i64 3117, i64 6, i64 6)
  store %struct.Memory* %call_479d2c, %struct.Memory** %MEMORY

  %loadBr_479d2c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_479d2c = icmp eq i8 %loadBr_479d2c, 1
  br i1 %cmpBr_479d2c, label %block_.L_47a959, label %block_479d32

block_479d32:
  ; Code: movl -0x2c(%rbp), %eax	 RIP: 479d32	 Bytes: 3
  %loadMem_479d32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479d32 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479d32)
  store %struct.Memory* %call_479d32, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %eax	 RIP: 479d35	 Bytes: 3
  %loadMem_479d35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479d35 = call %struct.Memory* @routine_shll__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479d35)
  store %struct.Memory* %call_479d35, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %eax	 RIP: 479d38	 Bytes: 3
  %loadMem_479d38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479d38 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479d38)
  store %struct.Memory* %call_479d38, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 479d3b	 Bytes: 3
  %loadMem_479d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479d3b = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479d3b)
  store %struct.Memory* %call_479d3b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x50(%rbp)	 RIP: 479d3e	 Bytes: 4
  %loadMem_479d3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479d3e = call %struct.Memory* @routine_cmpl__0x0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479d3e)
  store %struct.Memory* %call_479d3e, %struct.Memory** %MEMORY

  ; Code: je .L_479d59	 RIP: 479d42	 Bytes: 6
  %loadMem_479d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479d42 = call %struct.Memory* @routine_je_.L_479d59(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479d42, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_479d42, %struct.Memory** %MEMORY

  %loadBr_479d42 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_479d42 = icmp eq i8 %loadBr_479d42, 1
  br i1 %cmpBr_479d42, label %block_.L_479d59, label %block_479d48

block_479d48:
  ; Code: movswl 0x6d4520, %eax	 RIP: 479d48	 Bytes: 8
  %loadMem_479d48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479d48 = call %struct.Memory* @routine_movswl_0x6d4520___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479d48)
  store %struct.Memory* %call_479d48, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 479d50	 Bytes: 3
  %loadMem_479d50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479d50 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479d50)
  store %struct.Memory* %call_479d50, %struct.Memory** %MEMORY

  ; Code: je .L_479e34	 RIP: 479d53	 Bytes: 6
  %loadMem_479d53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479d53 = call %struct.Memory* @routine_je_.L_479e34(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479d53, i8* %BRANCH_TAKEN, i64 225, i64 6, i64 6)
  store %struct.Memory* %call_479d53, %struct.Memory** %MEMORY

  %loadBr_479d53 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_479d53 = icmp eq i8 %loadBr_479d53, 1
  br i1 %cmpBr_479d53, label %block_.L_479e34, label %block_.L_479d59

  ; Code: .L_479d59:	 RIP: 479d59	 Bytes: 0
block_.L_479d59:

  ; Code: movq $0x70d010, %rax	 RIP: 479d59	 Bytes: 10
  %loadMem_479d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479d59 = call %struct.Memory* @routine_movq__0x70d010___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479d59)
  store %struct.Memory* %call_479d59, %struct.Memory** %MEMORY

  ; Code: movq $0x4b28d0, %rcx	 RIP: 479d63	 Bytes: 10
  %loadMem_479d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479d63 = call %struct.Memory* @routine_movq__0x4b28d0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479d63)
  store %struct.Memory* %call_479d63, %struct.Memory** %MEMORY

  ; Code: movq $0x70e8f0, %rdx	 RIP: 479d6d	 Bytes: 10
  %loadMem_479d6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479d6d = call %struct.Memory* @routine_movq__0x70e8f0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479d6d)
  store %struct.Memory* %call_479d6d, %struct.Memory** %MEMORY

  ; Code: movq $0x4b2750, %rsi	 RIP: 479d77	 Bytes: 10
  %loadMem_479d77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479d77 = call %struct.Memory* @routine_movq__0x4b2750___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479d77)
  store %struct.Memory* %call_479d77, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rdi	 RIP: 479d81	 Bytes: 4
  %loadMem_479d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479d81 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479d81)
  store %struct.Memory* %call_479d81, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdi	 RIP: 479d85	 Bytes: 4
  %loadMem_479d85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479d85 = call %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479d85)
  store %struct.Memory* %call_479d85, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 479d89	 Bytes: 3
  %loadMem_479d89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479d89 = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479d89)
  store %struct.Memory* %call_479d89, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdi	 RIP: 479d8c	 Bytes: 4
  %loadMem_479d8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479d8c = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479d8c)
  store %struct.Memory* %call_479d8c, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdi	 RIP: 479d90	 Bytes: 4
  %loadMem_479d90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479d90 = call %struct.Memory* @routine_shlq__0x4___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479d90)
  store %struct.Memory* %call_479d90, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 479d94	 Bytes: 3
  %loadMem_479d94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479d94 = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479d94)
  store %struct.Memory* %call_479d94, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdi	 RIP: 479d97	 Bytes: 4
  %loadMem_479d97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479d97 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479d97)
  store %struct.Memory* %call_479d97, %struct.Memory** %MEMORY

  ; Code: movl (%rsi,%rdi,4), %r8d	 RIP: 479d9b	 Bytes: 4
  %loadMem_479d9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479d9b = call %struct.Memory* @routine_movl___rsi__rdi_4____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479d9b)
  store %struct.Memory* %call_479d9b, %struct.Memory** %MEMORY

  ; Code: shll $0x4, %r8d	 RIP: 479d9f	 Bytes: 4
  %loadMem_479d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479d9f = call %struct.Memory* @routine_shll__0x4___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479d9f)
  store %struct.Memory* %call_479d9f, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rsi	 RIP: 479da3	 Bytes: 4
  %loadMem_479da3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479da3 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479da3)
  store %struct.Memory* %call_479da3, %struct.Memory** %MEMORY

  ; Code: movswl 0x4b9260(,%rsi,2), %r9d	 RIP: 479da7	 Bytes: 9
  %loadMem_479da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479da7 = call %struct.Memory* @routine_movswl_0x4b9260___rsi_2____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479da7)
  store %struct.Memory* %call_479da7, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x78(%rbp)	 RIP: 479db0	 Bytes: 4
  %loadMem_479db0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479db0 = call %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479db0)
  store %struct.Memory* %call_479db0, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %eax	 RIP: 479db4	 Bytes: 3
  %loadMem_479db4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479db4 = call %struct.Memory* @routine_movl__r8d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479db4)
  store %struct.Memory* %call_479db4, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x80(%rbp)	 RIP: 479db7	 Bytes: 4
  %loadMem_479db7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479db7 = call %struct.Memory* @routine_movq__rdx__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479db7)
  store %struct.Memory* %call_479db7, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 479dbb	 Bytes: 1
  %loadMem_479dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479dbb = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479dbb)
  store %struct.Memory* %call_479dbb, %struct.Memory** %MEMORY

  ; Code: idivl %r9d	 RIP: 479dbc	 Bytes: 3
  %loadMem_479dbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479dbc = call %struct.Memory* @routine_idivl__r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479dbc)
  store %struct.Memory* %call_479dbc, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rsi	 RIP: 479dbf	 Bytes: 4
  %loadMem_479dbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479dbf = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479dbf)
  store %struct.Memory* %call_479dbf, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 479dc3	 Bytes: 4
  %loadMem_479dc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479dc3 = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479dc3)
  store %struct.Memory* %call_479dc3, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rdi	 RIP: 479dc7	 Bytes: 4
  %loadMem_479dc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479dc7 = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479dc7)
  store %struct.Memory* %call_479dc7, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 479dcb	 Bytes: 3
  %loadMem_479dcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479dcb = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479dcb)
  store %struct.Memory* %call_479dcb, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rsi	 RIP: 479dce	 Bytes: 4
  %loadMem_479dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479dce = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479dce)
  store %struct.Memory* %call_479dce, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rsi	 RIP: 479dd2	 Bytes: 4
  %loadMem_479dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479dd2 = call %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479dd2)
  store %struct.Memory* %call_479dd2, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 479dd6	 Bytes: 3
  %loadMem_479dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479dd6 = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479dd6)
  store %struct.Memory* %call_479dd6, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rsi	 RIP: 479dd9	 Bytes: 4
  %loadMem_479dd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479dd9 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479dd9)
  store %struct.Memory* %call_479dd9, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rdi,%rsi,4)	 RIP: 479ddd	 Bytes: 3
  %loadMem_479ddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ddd = call %struct.Memory* @routine_movl__eax____rdi__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ddd)
  store %struct.Memory* %call_479ddd, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rsi	 RIP: 479de0	 Bytes: 4
  %loadMem_479de0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479de0 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479de0)
  store %struct.Memory* %call_479de0, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 479de4	 Bytes: 4
  %loadMem_479de4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479de4 = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479de4)
  store %struct.Memory* %call_479de4, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 479de8	 Bytes: 3
  %loadMem_479de8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479de8 = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479de8)
  store %struct.Memory* %call_479de8, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rsi	 RIP: 479deb	 Bytes: 4
  %loadMem_479deb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479deb = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479deb)
  store %struct.Memory* %call_479deb, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rsi	 RIP: 479def	 Bytes: 4
  %loadMem_479def = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479def = call %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479def)
  store %struct.Memory* %call_479def, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 479df3	 Bytes: 3
  %loadMem_479df3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479df3 = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479df3)
  store %struct.Memory* %call_479df3, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rsi	 RIP: 479df6	 Bytes: 4
  %loadMem_479df6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479df6 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479df6)
  store %struct.Memory* %call_479df6, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rsi,4), %eax	 RIP: 479dfa	 Bytes: 3
  %loadMem_479dfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479dfa = call %struct.Memory* @routine_movl___rcx__rsi_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479dfa)
  store %struct.Memory* %call_479dfa, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 479dfd	 Bytes: 4
  %loadMem_479dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479dfd = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479dfd)
  store %struct.Memory* %call_479dfd, %struct.Memory** %MEMORY

  ; Code: movswl 0x4b9260(,%rcx,2), %r8d	 RIP: 479e01	 Bytes: 9
  %loadMem_479e01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479e01 = call %struct.Memory* @routine_movswl_0x4b9260___rcx_2____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479e01)
  store %struct.Memory* %call_479e01, %struct.Memory** %MEMORY

  ; Code: imull %r8d, %eax	 RIP: 479e0a	 Bytes: 4
  %loadMem_479e0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479e0a = call %struct.Memory* @routine_imull__r8d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479e0a)
  store %struct.Memory* %call_479e0a, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 479e0e	 Bytes: 4
  %loadMem_479e0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479e0e = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479e0e)
  store %struct.Memory* %call_479e0e, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 479e12	 Bytes: 4
  %loadMem_479e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479e12 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479e12)
  store %struct.Memory* %call_479e12, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %rsi	 RIP: 479e16	 Bytes: 4
  %loadMem_479e16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479e16 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479e16)
  store %struct.Memory* %call_479e16, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 479e1a	 Bytes: 3
  %loadMem_479e1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479e1a = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479e1a)
  store %struct.Memory* %call_479e1a, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 479e1d	 Bytes: 4
  %loadMem_479e1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479e1d = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479e1d)
  store %struct.Memory* %call_479e1d, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 479e21	 Bytes: 4
  %loadMem_479e21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479e21 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479e21)
  store %struct.Memory* %call_479e21, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 479e25	 Bytes: 3
  %loadMem_479e25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479e25 = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479e25)
  store %struct.Memory* %call_479e25, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 479e28	 Bytes: 4
  %loadMem_479e28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479e28 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479e28)
  store %struct.Memory* %call_479e28, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rsi,%rcx,4)	 RIP: 479e2c	 Bytes: 3
  %loadMem_479e2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479e2c = call %struct.Memory* @routine_movl__eax____rsi__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479e2c)
  store %struct.Memory* %call_479e2c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_479f16	 RIP: 479e2f	 Bytes: 5
  %loadMem_479e2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479e2f = call %struct.Memory* @routine_jmpq_.L_479f16(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479e2f, i64 231, i64 5)
  store %struct.Memory* %call_479e2f, %struct.Memory** %MEMORY

  br label %block_.L_479f16

  ; Code: .L_479e34:	 RIP: 479e34	 Bytes: 0
block_.L_479e34:

  ; Code: movq $0x70d010, %rax	 RIP: 479e34	 Bytes: 10
  %loadMem_479e34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479e34 = call %struct.Memory* @routine_movq__0x70d010___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479e34)
  store %struct.Memory* %call_479e34, %struct.Memory** %MEMORY

  ; Code: movq $0x4b28d0, %rcx	 RIP: 479e3e	 Bytes: 10
  %loadMem_479e3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479e3e = call %struct.Memory* @routine_movq__0x4b28d0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479e3e)
  store %struct.Memory* %call_479e3e, %struct.Memory** %MEMORY

  ; Code: movq $0x70e8f0, %rdx	 RIP: 479e48	 Bytes: 10
  %loadMem_479e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479e48 = call %struct.Memory* @routine_movq__0x70e8f0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479e48)
  store %struct.Memory* %call_479e48, %struct.Memory** %MEMORY

  ; Code: movq $0x4b2750, %rsi	 RIP: 479e52	 Bytes: 10
  %loadMem_479e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479e52 = call %struct.Memory* @routine_movq__0x4b2750___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479e52)
  store %struct.Memory* %call_479e52, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rdi	 RIP: 479e5c	 Bytes: 4
  %loadMem_479e5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479e5c = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479e5c)
  store %struct.Memory* %call_479e5c, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdi	 RIP: 479e60	 Bytes: 4
  %loadMem_479e60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479e60 = call %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479e60)
  store %struct.Memory* %call_479e60, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 479e64	 Bytes: 3
  %loadMem_479e64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479e64 = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479e64)
  store %struct.Memory* %call_479e64, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdi	 RIP: 479e67	 Bytes: 4
  %loadMem_479e67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479e67 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479e67)
  store %struct.Memory* %call_479e67, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdi	 RIP: 479e6b	 Bytes: 4
  %loadMem_479e6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479e6b = call %struct.Memory* @routine_shlq__0x4___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479e6b)
  store %struct.Memory* %call_479e6b, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 479e6f	 Bytes: 3
  %loadMem_479e6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479e6f = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479e6f)
  store %struct.Memory* %call_479e6f, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdi	 RIP: 479e72	 Bytes: 4
  %loadMem_479e72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479e72 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479e72)
  store %struct.Memory* %call_479e72, %struct.Memory** %MEMORY

  ; Code: movl (%rsi,%rdi,4), %r8d	 RIP: 479e76	 Bytes: 4
  %loadMem_479e76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479e76 = call %struct.Memory* @routine_movl___rsi__rdi_4____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479e76)
  store %struct.Memory* %call_479e76, %struct.Memory** %MEMORY

  ; Code: shll $0x4, %r8d	 RIP: 479e7a	 Bytes: 4
  %loadMem_479e7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479e7a = call %struct.Memory* @routine_shll__0x4___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479e7a)
  store %struct.Memory* %call_479e7a, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rsi	 RIP: 479e7e	 Bytes: 4
  %loadMem_479e7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479e7e = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479e7e)
  store %struct.Memory* %call_479e7e, %struct.Memory** %MEMORY

  ; Code: movswl 0x6d1fc0(,%rsi,2), %r9d	 RIP: 479e82	 Bytes: 9
  %loadMem_479e82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479e82 = call %struct.Memory* @routine_movswl_0x6d1fc0___rsi_2____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479e82)
  store %struct.Memory* %call_479e82, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x88(%rbp)	 RIP: 479e8b	 Bytes: 7
  %loadMem_479e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479e8b = call %struct.Memory* @routine_movq__rax__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479e8b)
  store %struct.Memory* %call_479e8b, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %eax	 RIP: 479e92	 Bytes: 3
  %loadMem_479e92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479e92 = call %struct.Memory* @routine_movl__r8d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479e92)
  store %struct.Memory* %call_479e92, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x90(%rbp)	 RIP: 479e95	 Bytes: 7
  %loadMem_479e95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479e95 = call %struct.Memory* @routine_movq__rdx__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479e95)
  store %struct.Memory* %call_479e95, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 479e9c	 Bytes: 1
  %loadMem_479e9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479e9c = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479e9c)
  store %struct.Memory* %call_479e9c, %struct.Memory** %MEMORY

  ; Code: idivl %r9d	 RIP: 479e9d	 Bytes: 3
  %loadMem_479e9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479e9d = call %struct.Memory* @routine_idivl__r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479e9d)
  store %struct.Memory* %call_479e9d, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rsi	 RIP: 479ea0	 Bytes: 4
  %loadMem_479ea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ea0 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ea0)
  store %struct.Memory* %call_479ea0, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 479ea4	 Bytes: 4
  %loadMem_479ea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ea4 = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ea4)
  store %struct.Memory* %call_479ea4, %struct.Memory** %MEMORY

  ; Code: movq -0x90(%rbp), %rdi	 RIP: 479ea8	 Bytes: 7
  %loadMem_479ea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ea8 = call %struct.Memory* @routine_movq_MINUS0x90__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ea8)
  store %struct.Memory* %call_479ea8, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 479eaf	 Bytes: 3
  %loadMem_479eaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479eaf = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479eaf)
  store %struct.Memory* %call_479eaf, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rsi	 RIP: 479eb2	 Bytes: 4
  %loadMem_479eb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479eb2 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479eb2)
  store %struct.Memory* %call_479eb2, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rsi	 RIP: 479eb6	 Bytes: 4
  %loadMem_479eb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479eb6 = call %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479eb6)
  store %struct.Memory* %call_479eb6, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 479eba	 Bytes: 3
  %loadMem_479eba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479eba = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479eba)
  store %struct.Memory* %call_479eba, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rsi	 RIP: 479ebd	 Bytes: 4
  %loadMem_479ebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ebd = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ebd)
  store %struct.Memory* %call_479ebd, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rdi,%rsi,4)	 RIP: 479ec1	 Bytes: 3
  %loadMem_479ec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ec1 = call %struct.Memory* @routine_movl__eax____rdi__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ec1)
  store %struct.Memory* %call_479ec1, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rsi	 RIP: 479ec4	 Bytes: 4
  %loadMem_479ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ec4 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ec4)
  store %struct.Memory* %call_479ec4, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 479ec8	 Bytes: 4
  %loadMem_479ec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ec8 = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ec8)
  store %struct.Memory* %call_479ec8, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 479ecc	 Bytes: 3
  %loadMem_479ecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ecc = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ecc)
  store %struct.Memory* %call_479ecc, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rsi	 RIP: 479ecf	 Bytes: 4
  %loadMem_479ecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ecf = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ecf)
  store %struct.Memory* %call_479ecf, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rsi	 RIP: 479ed3	 Bytes: 4
  %loadMem_479ed3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ed3 = call %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ed3)
  store %struct.Memory* %call_479ed3, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 479ed7	 Bytes: 3
  %loadMem_479ed7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ed7 = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ed7)
  store %struct.Memory* %call_479ed7, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rsi	 RIP: 479eda	 Bytes: 4
  %loadMem_479eda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479eda = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479eda)
  store %struct.Memory* %call_479eda, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rsi,4), %eax	 RIP: 479ede	 Bytes: 3
  %loadMem_479ede = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ede = call %struct.Memory* @routine_movl___rcx__rsi_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ede)
  store %struct.Memory* %call_479ede, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 479ee1	 Bytes: 4
  %loadMem_479ee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ee1 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ee1)
  store %struct.Memory* %call_479ee1, %struct.Memory** %MEMORY

  ; Code: movswl 0x6d1fc0(,%rcx,2), %r8d	 RIP: 479ee5	 Bytes: 9
  %loadMem_479ee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ee5 = call %struct.Memory* @routine_movswl_0x6d1fc0___rcx_2____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ee5)
  store %struct.Memory* %call_479ee5, %struct.Memory** %MEMORY

  ; Code: imull %r8d, %eax	 RIP: 479eee	 Bytes: 4
  %loadMem_479eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479eee = call %struct.Memory* @routine_imull__r8d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479eee)
  store %struct.Memory* %call_479eee, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 479ef2	 Bytes: 4
  %loadMem_479ef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ef2 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ef2)
  store %struct.Memory* %call_479ef2, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 479ef6	 Bytes: 4
  %loadMem_479ef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ef6 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ef6)
  store %struct.Memory* %call_479ef6, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rsi	 RIP: 479efa	 Bytes: 7
  %loadMem_479efa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479efa = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479efa)
  store %struct.Memory* %call_479efa, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 479f01	 Bytes: 3
  %loadMem_479f01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f01 = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f01)
  store %struct.Memory* %call_479f01, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 479f04	 Bytes: 4
  %loadMem_479f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f04 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f04)
  store %struct.Memory* %call_479f04, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 479f08	 Bytes: 4
  %loadMem_479f08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f08 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f08)
  store %struct.Memory* %call_479f08, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 479f0c	 Bytes: 3
  %loadMem_479f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f0c = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f0c)
  store %struct.Memory* %call_479f0c, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 479f0f	 Bytes: 4
  %loadMem_479f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f0f = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f0f)
  store %struct.Memory* %call_479f0f, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rsi,%rcx,4)	 RIP: 479f13	 Bytes: 3
  %loadMem_479f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f13 = call %struct.Memory* @routine_movl__eax____rsi__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f13)
  store %struct.Memory* %call_479f13, %struct.Memory** %MEMORY

  ; Code: .L_479f16:	 RIP: 479f16	 Bytes: 0
  br label %block_.L_479f16
block_.L_479f16:

  ; Code: cmpl $0x0, -0x4c(%rbp)	 RIP: 479f16	 Bytes: 4
  %loadMem_479f16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f16 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f16)
  store %struct.Memory* %call_479f16, %struct.Memory** %MEMORY

  ; Code: jne .L_479fc5	 RIP: 479f1a	 Bytes: 6
  %loadMem_479f1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f1a = call %struct.Memory* @routine_jne_.L_479fc5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f1a, i8* %BRANCH_TAKEN, i64 171, i64 6, i64 6)
  store %struct.Memory* %call_479f1a, %struct.Memory** %MEMORY

  %loadBr_479f1a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_479f1a = icmp eq i8 %loadBr_479f1a, 1
  br i1 %cmpBr_479f1a, label %block_.L_479fc5, label %block_479f20

block_479f20:
  ; Code: movq $0x70d1b0, %rax	 RIP: 479f20	 Bytes: 10
  %loadMem_479f20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f20 = call %struct.Memory* @routine_movq__0x70d1b0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f20)
  store %struct.Memory* %call_479f20, %struct.Memory** %MEMORY

  ; Code: movq $0x70d010, %rcx	 RIP: 479f2a	 Bytes: 10
  %loadMem_479f2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f2a = call %struct.Memory* @routine_movq__0x70d010___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f2a)
  store %struct.Memory* %call_479f2a, %struct.Memory** %MEMORY

  ; Code: movq $0x6f73a0, %rdx	 RIP: 479f34	 Bytes: 10
  %loadMem_479f34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f34 = call %struct.Memory* @routine_movq__0x6f73a0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f34)
  store %struct.Memory* %call_479f34, %struct.Memory** %MEMORY

  ; Code: movq $0x70e8f0, %rsi	 RIP: 479f3e	 Bytes: 10
  %loadMem_479f3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f3e = call %struct.Memory* @routine_movq__0x70e8f0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f3e)
  store %struct.Memory* %call_479f3e, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rdi	 RIP: 479f48	 Bytes: 4
  %loadMem_479f48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f48 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f48)
  store %struct.Memory* %call_479f48, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdi	 RIP: 479f4c	 Bytes: 4
  %loadMem_479f4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f4c = call %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f4c)
  store %struct.Memory* %call_479f4c, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 479f50	 Bytes: 3
  %loadMem_479f50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f50 = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f50)
  store %struct.Memory* %call_479f50, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdi	 RIP: 479f53	 Bytes: 4
  %loadMem_479f53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f53 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f53)
  store %struct.Memory* %call_479f53, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdi	 RIP: 479f57	 Bytes: 4
  %loadMem_479f57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f57 = call %struct.Memory* @routine_shlq__0x4___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f57)
  store %struct.Memory* %call_479f57, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 479f5b	 Bytes: 3
  %loadMem_479f5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f5b = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f5b)
  store %struct.Memory* %call_479f5b, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdi	 RIP: 479f5e	 Bytes: 4
  %loadMem_479f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f5e = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f5e)
  store %struct.Memory* %call_479f5e, %struct.Memory** %MEMORY

  ; Code: movl (%rsi,%rdi,4), %r8d	 RIP: 479f62	 Bytes: 4
  %loadMem_479f62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f62 = call %struct.Memory* @routine_movl___rsi__rdi_4____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f62)
  store %struct.Memory* %call_479f62, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rsi	 RIP: 479f66	 Bytes: 4
  %loadMem_479f66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f66 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f66)
  store %struct.Memory* %call_479f66, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 479f6a	 Bytes: 4
  %loadMem_479f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f6a = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f6a)
  store %struct.Memory* %call_479f6a, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 479f6e	 Bytes: 3
  %loadMem_479f6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f6e = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f6e)
  store %struct.Memory* %call_479f6e, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rsi	 RIP: 479f71	 Bytes: 4
  %loadMem_479f71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f71 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f71)
  store %struct.Memory* %call_479f71, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rsi	 RIP: 479f75	 Bytes: 4
  %loadMem_479f75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f75 = call %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f75)
  store %struct.Memory* %call_479f75, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 479f79	 Bytes: 3
  %loadMem_479f79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f79 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f79)
  store %struct.Memory* %call_479f79, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rsi	 RIP: 479f7c	 Bytes: 4
  %loadMem_479f7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f7c = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f7c)
  store %struct.Memory* %call_479f7c, %struct.Memory** %MEMORY

  ; Code: movl %r8d, (%rdx,%rsi,4)	 RIP: 479f80	 Bytes: 4
  %loadMem_479f80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f80 = call %struct.Memory* @routine_movl__r8d____rdx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f80)
  store %struct.Memory* %call_479f80, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rdx	 RIP: 479f84	 Bytes: 4
  %loadMem_479f84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f84 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f84)
  store %struct.Memory* %call_479f84, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 479f88	 Bytes: 4
  %loadMem_479f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f88 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f88)
  store %struct.Memory* %call_479f88, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 479f8c	 Bytes: 3
  %loadMem_479f8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f8c = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f8c)
  store %struct.Memory* %call_479f8c, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdx	 RIP: 479f8f	 Bytes: 4
  %loadMem_479f8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f8f = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f8f)
  store %struct.Memory* %call_479f8f, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 479f93	 Bytes: 4
  %loadMem_479f93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f93 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f93)
  store %struct.Memory* %call_479f93, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 479f97	 Bytes: 3
  %loadMem_479f97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f97 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f97)
  store %struct.Memory* %call_479f97, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 479f9a	 Bytes: 4
  %loadMem_479f9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f9a = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f9a)
  store %struct.Memory* %call_479f9a, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %r8d	 RIP: 479f9e	 Bytes: 4
  %loadMem_479f9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479f9e = call %struct.Memory* @routine_movl___rcx__rdx_4____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479f9e)
  store %struct.Memory* %call_479f9e, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 479fa2	 Bytes: 4
  %loadMem_479fa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479fa2 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479fa2)
  store %struct.Memory* %call_479fa2, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 479fa6	 Bytes: 4
  %loadMem_479fa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479fa6 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479fa6)
  store %struct.Memory* %call_479fa6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 479faa	 Bytes: 3
  %loadMem_479faa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479faa = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479faa)
  store %struct.Memory* %call_479faa, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 479fad	 Bytes: 4
  %loadMem_479fad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479fad = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479fad)
  store %struct.Memory* %call_479fad, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 479fb1	 Bytes: 4
  %loadMem_479fb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479fb1 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479fb1)
  store %struct.Memory* %call_479fb1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 479fb5	 Bytes: 3
  %loadMem_479fb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479fb5 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479fb5)
  store %struct.Memory* %call_479fb5, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 479fb8	 Bytes: 4
  %loadMem_479fb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479fb8 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479fb8)
  store %struct.Memory* %call_479fb8, %struct.Memory** %MEMORY

  ; Code: movl %r8d, (%rax,%rcx,4)	 RIP: 479fbc	 Bytes: 4
  %loadMem_479fbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479fbc = call %struct.Memory* @routine_movl__r8d____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479fbc)
  store %struct.Memory* %call_479fbc, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47a122	 RIP: 479fc0	 Bytes: 5
  %loadMem_479fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479fc0 = call %struct.Memory* @routine_jmpq_.L_47a122(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479fc0, i64 354, i64 5)
  store %struct.Memory* %call_479fc0, %struct.Memory** %MEMORY

  br label %block_.L_47a122

  ; Code: .L_479fc5:	 RIP: 479fc5	 Bytes: 0
block_.L_479fc5:

  ; Code: movq $0x4b2750, %rax	 RIP: 479fc5	 Bytes: 10
  %loadMem_479fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479fc5 = call %struct.Memory* @routine_movq__0x4b2750___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479fc5)
  store %struct.Memory* %call_479fc5, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 479fcf	 Bytes: 4
  %loadMem_479fcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479fcf = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479fcf)
  store %struct.Memory* %call_479fcf, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 479fd3	 Bytes: 4
  %loadMem_479fd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479fd3 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479fd3)
  store %struct.Memory* %call_479fd3, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 479fd7	 Bytes: 3
  %loadMem_479fd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479fd7 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479fd7)
  store %struct.Memory* %call_479fd7, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 479fda	 Bytes: 4
  %loadMem_479fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479fda = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479fda)
  store %struct.Memory* %call_479fda, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 479fde	 Bytes: 4
  %loadMem_479fde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479fde = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479fde)
  store %struct.Memory* %call_479fde, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 479fe2	 Bytes: 3
  %loadMem_479fe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479fe2 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479fe2)
  store %struct.Memory* %call_479fe2, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 479fe5	 Bytes: 4
  %loadMem_479fe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479fe5 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479fe5)
  store %struct.Memory* %call_479fe5, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 479fe9	 Bytes: 3
  %loadMem_479fe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479fe9 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479fe9)
  store %struct.Memory* %call_479fe9, %struct.Memory** %MEMORY

  ; Code: shll $0x4, %edx	 RIP: 479fec	 Bytes: 3
  %loadMem_479fec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479fec = call %struct.Memory* @routine_shll__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479fec)
  store %struct.Memory* %call_479fec, %struct.Memory** %MEMORY

  ; Code: movswl 0x6d4522, %esi	 RIP: 479fef	 Bytes: 8
  %loadMem_479fef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479fef = call %struct.Memory* @routine_movswl_0x6d4522___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479fef)
  store %struct.Memory* %call_479fef, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %esi	 RIP: 479ff7	 Bytes: 3
  %loadMem_479ff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ff7 = call %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ff7)
  store %struct.Memory* %call_479ff7, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x94(%rbp)	 RIP: 479ffa	 Bytes: 6
  %loadMem_479ffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_479ffa = call %struct.Memory* @routine_movl__edx__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_479ffa)
  store %struct.Memory* %call_479ffa, %struct.Memory** %MEMORY

  ; Code: je .L_47a01d	 RIP: 47a000	 Bytes: 6
  %loadMem_47a000 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a000 = call %struct.Memory* @routine_je_.L_47a01d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a000, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_47a000, %struct.Memory** %MEMORY

  %loadBr_47a000 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a000 = icmp eq i8 %loadBr_47a000, 1
  br i1 %cmpBr_47a000, label %block_.L_47a01d, label %block_47a006

block_47a006:
  ; Code: movslq -0x38(%rbp), %rax	 RIP: 47a006	 Bytes: 4
  %loadMem_47a006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a006 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a006)
  store %struct.Memory* %call_47a006, %struct.Memory** %MEMORY

  ; Code: movswl 0x4b9260(,%rax,2), %ecx	 RIP: 47a00a	 Bytes: 8
  %loadMem_47a00a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a00a = call %struct.Memory* @routine_movswl_0x4b9260___rax_2____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a00a)
  store %struct.Memory* %call_47a00a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x98(%rbp)	 RIP: 47a012	 Bytes: 6
  %loadMem_47a012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a012 = call %struct.Memory* @routine_movl__ecx__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a012)
  store %struct.Memory* %call_47a012, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47a02f	 RIP: 47a018	 Bytes: 5
  %loadMem_47a018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a018 = call %struct.Memory* @routine_jmpq_.L_47a02f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a018, i64 23, i64 5)
  store %struct.Memory* %call_47a018, %struct.Memory** %MEMORY

  br label %block_.L_47a02f

  ; Code: .L_47a01d:	 RIP: 47a01d	 Bytes: 0
block_.L_47a01d:

  ; Code: movslq -0x38(%rbp), %rax	 RIP: 47a01d	 Bytes: 4
  %loadMem_47a01d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a01d = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a01d)
  store %struct.Memory* %call_47a01d, %struct.Memory** %MEMORY

  ; Code: movswl 0x6d1fe0(,%rax,2), %ecx	 RIP: 47a021	 Bytes: 8
  %loadMem_47a021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a021 = call %struct.Memory* @routine_movswl_0x6d1fe0___rax_2____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a021)
  store %struct.Memory* %call_47a021, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x98(%rbp)	 RIP: 47a029	 Bytes: 6
  %loadMem_47a029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a029 = call %struct.Memory* @routine_movl__ecx__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a029)
  store %struct.Memory* %call_47a029, %struct.Memory** %MEMORY

  ; Code: .L_47a02f:	 RIP: 47a02f	 Bytes: 0
  br label %block_.L_47a02f
block_.L_47a02f:

  ; Code: movl -0x98(%rbp), %eax	 RIP: 47a02f	 Bytes: 6
  %loadMem_47a02f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a02f = call %struct.Memory* @routine_movl_MINUS0x98__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a02f)
  store %struct.Memory* %call_47a02f, %struct.Memory** %MEMORY

  ; Code: movq $0x4b28d0, %rcx	 RIP: 47a035	 Bytes: 10
  %loadMem_47a035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a035 = call %struct.Memory* @routine_movq__0x4b28d0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a035)
  store %struct.Memory* %call_47a035, %struct.Memory** %MEMORY

  ; Code: movq $0x6f73a0, %rdx	 RIP: 47a03f	 Bytes: 10
  %loadMem_47a03f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a03f = call %struct.Memory* @routine_movq__0x6f73a0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a03f)
  store %struct.Memory* %call_47a03f, %struct.Memory** %MEMORY

  ; Code: movl -0x94(%rbp), %esi	 RIP: 47a049	 Bytes: 6
  %loadMem_47a049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a049 = call %struct.Memory* @routine_movl_MINUS0x94__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a049)
  store %struct.Memory* %call_47a049, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x9c(%rbp)	 RIP: 47a04f	 Bytes: 6
  %loadMem_47a04f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a04f = call %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a04f)
  store %struct.Memory* %call_47a04f, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 47a055	 Bytes: 2
  %loadMem_47a055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a055 = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a055)
  store %struct.Memory* %call_47a055, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0xa8(%rbp)	 RIP: 47a057	 Bytes: 7
  %loadMem_47a057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a057 = call %struct.Memory* @routine_movq__rdx__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a057)
  store %struct.Memory* %call_47a057, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 47a05e	 Bytes: 1
  %loadMem_47a05e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a05e = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a05e)
  store %struct.Memory* %call_47a05e, %struct.Memory** %MEMORY

  ; Code: movl -0x9c(%rbp), %edi	 RIP: 47a05f	 Bytes: 6
  %loadMem_47a05f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a05f = call %struct.Memory* @routine_movl_MINUS0x9c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a05f)
  store %struct.Memory* %call_47a05f, %struct.Memory** %MEMORY

  ; Code: idivl %edi	 RIP: 47a065	 Bytes: 2
  %loadMem_47a065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a065 = call %struct.Memory* @routine_idivl__edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a065)
  store %struct.Memory* %call_47a065, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %r8	 RIP: 47a067	 Bytes: 4
  %loadMem_47a067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a067 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a067)
  store %struct.Memory* %call_47a067, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %r8	 RIP: 47a06b	 Bytes: 4
  %loadMem_47a06b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a06b = call %struct.Memory* @routine_shlq__0x6___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a06b)
  store %struct.Memory* %call_47a06b, %struct.Memory** %MEMORY

  ; Code: movq -0xa8(%rbp), %r9	 RIP: 47a06f	 Bytes: 7
  %loadMem_47a06f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a06f = call %struct.Memory* @routine_movq_MINUS0xa8__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a06f)
  store %struct.Memory* %call_47a06f, %struct.Memory** %MEMORY

  ; Code: addq %r8, %r9	 RIP: 47a076	 Bytes: 3
  %loadMem_47a076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a076 = call %struct.Memory* @routine_addq__r8___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a076)
  store %struct.Memory* %call_47a076, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %r8	 RIP: 47a079	 Bytes: 4
  %loadMem_47a079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a079 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a079)
  store %struct.Memory* %call_47a079, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %r8	 RIP: 47a07d	 Bytes: 4
  %loadMem_47a07d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a07d = call %struct.Memory* @routine_shlq__0x4___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a07d)
  store %struct.Memory* %call_47a07d, %struct.Memory** %MEMORY

  ; Code: addq %r8, %r9	 RIP: 47a081	 Bytes: 3
  %loadMem_47a081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a081 = call %struct.Memory* @routine_addq__r8___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a081)
  store %struct.Memory* %call_47a081, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %r8	 RIP: 47a084	 Bytes: 4
  %loadMem_47a084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a084 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a084)
  store %struct.Memory* %call_47a084, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%r9,%r8,4)	 RIP: 47a088	 Bytes: 4
  %loadMem_47a088 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a088 = call %struct.Memory* @routine_movl__eax____r9__r8_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a088)
  store %struct.Memory* %call_47a088, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %r8	 RIP: 47a08c	 Bytes: 4
  %loadMem_47a08c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a08c = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a08c)
  store %struct.Memory* %call_47a08c, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %r8	 RIP: 47a090	 Bytes: 4
  %loadMem_47a090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a090 = call %struct.Memory* @routine_shlq__0x6___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a090)
  store %struct.Memory* %call_47a090, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rcx	 RIP: 47a094	 Bytes: 3
  %loadMem_47a094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a094 = call %struct.Memory* @routine_addq__r8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a094)
  store %struct.Memory* %call_47a094, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %r8	 RIP: 47a097	 Bytes: 4
  %loadMem_47a097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a097 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a097)
  store %struct.Memory* %call_47a097, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %r8	 RIP: 47a09b	 Bytes: 4
  %loadMem_47a09b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a09b = call %struct.Memory* @routine_shlq__0x4___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a09b)
  store %struct.Memory* %call_47a09b, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rcx	 RIP: 47a09f	 Bytes: 3
  %loadMem_47a09f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a09f = call %struct.Memory* @routine_addq__r8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a09f)
  store %struct.Memory* %call_47a09f, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %r8	 RIP: 47a0a2	 Bytes: 4
  %loadMem_47a0a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a0a2 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a0a2)
  store %struct.Memory* %call_47a0a2, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%r8,4), %eax	 RIP: 47a0a6	 Bytes: 4
  %loadMem_47a0a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a0a6 = call %struct.Memory* @routine_movl___rcx__r8_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a0a6)
  store %struct.Memory* %call_47a0a6, %struct.Memory** %MEMORY

  ; Code: movswl 0x6d4522, %r10d	 RIP: 47a0aa	 Bytes: 9
  %loadMem_47a0aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a0aa = call %struct.Memory* @routine_movswl_0x6d4522___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a0aa)
  store %struct.Memory* %call_47a0aa, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %r10d	 RIP: 47a0b3	 Bytes: 4
  %loadMem_47a0b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a0b3 = call %struct.Memory* @routine_cmpl__0x0___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a0b3)
  store %struct.Memory* %call_47a0b3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xac(%rbp)	 RIP: 47a0b7	 Bytes: 6
  %loadMem_47a0b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a0b7 = call %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a0b7)
  store %struct.Memory* %call_47a0b7, %struct.Memory** %MEMORY

  ; Code: je .L_47a0da	 RIP: 47a0bd	 Bytes: 6
  %loadMem_47a0bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a0bd = call %struct.Memory* @routine_je_.L_47a0da(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a0bd, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_47a0bd, %struct.Memory** %MEMORY

  %loadBr_47a0bd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a0bd = icmp eq i8 %loadBr_47a0bd, 1
  br i1 %cmpBr_47a0bd, label %block_.L_47a0da, label %block_47a0c3

block_47a0c3:
  ; Code: movslq -0x38(%rbp), %rax	 RIP: 47a0c3	 Bytes: 4
  %loadMem_47a0c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a0c3 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a0c3)
  store %struct.Memory* %call_47a0c3, %struct.Memory** %MEMORY

  ; Code: movswl 0x4b9260(,%rax,2), %ecx	 RIP: 47a0c7	 Bytes: 8
  %loadMem_47a0c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a0c7 = call %struct.Memory* @routine_movswl_0x4b9260___rax_2____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a0c7)
  store %struct.Memory* %call_47a0c7, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xb0(%rbp)	 RIP: 47a0cf	 Bytes: 6
  %loadMem_47a0cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a0cf = call %struct.Memory* @routine_movl__ecx__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a0cf)
  store %struct.Memory* %call_47a0cf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47a0ec	 RIP: 47a0d5	 Bytes: 5
  %loadMem_47a0d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a0d5 = call %struct.Memory* @routine_jmpq_.L_47a0ec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a0d5, i64 23, i64 5)
  store %struct.Memory* %call_47a0d5, %struct.Memory** %MEMORY

  br label %block_.L_47a0ec

  ; Code: .L_47a0da:	 RIP: 47a0da	 Bytes: 0
block_.L_47a0da:

  ; Code: movslq -0x38(%rbp), %rax	 RIP: 47a0da	 Bytes: 4
  %loadMem_47a0da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a0da = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a0da)
  store %struct.Memory* %call_47a0da, %struct.Memory** %MEMORY

  ; Code: movswl 0x6d1fe0(,%rax,2), %ecx	 RIP: 47a0de	 Bytes: 8
  %loadMem_47a0de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a0de = call %struct.Memory* @routine_movswl_0x6d1fe0___rax_2____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a0de)
  store %struct.Memory* %call_47a0de, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xb0(%rbp)	 RIP: 47a0e6	 Bytes: 6
  %loadMem_47a0e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a0e6 = call %struct.Memory* @routine_movl__ecx__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a0e6)
  store %struct.Memory* %call_47a0e6, %struct.Memory** %MEMORY

  ; Code: .L_47a0ec:	 RIP: 47a0ec	 Bytes: 0
  br label %block_.L_47a0ec
block_.L_47a0ec:

  ; Code: movl -0xb0(%rbp), %eax	 RIP: 47a0ec	 Bytes: 6
  %loadMem_47a0ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a0ec = call %struct.Memory* @routine_movl_MINUS0xb0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a0ec)
  store %struct.Memory* %call_47a0ec, %struct.Memory** %MEMORY

  ; Code: movq $0x70d1b0, %rcx	 RIP: 47a0f2	 Bytes: 10
  %loadMem_47a0f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a0f2 = call %struct.Memory* @routine_movq__0x70d1b0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a0f2)
  store %struct.Memory* %call_47a0f2, %struct.Memory** %MEMORY

  ; Code: movl -0xac(%rbp), %edx	 RIP: 47a0fc	 Bytes: 6
  %loadMem_47a0fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a0fc = call %struct.Memory* @routine_movl_MINUS0xac__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a0fc)
  store %struct.Memory* %call_47a0fc, %struct.Memory** %MEMORY

  ; Code: imull %eax, %edx	 RIP: 47a102	 Bytes: 3
  %loadMem_47a102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a102 = call %struct.Memory* @routine_imull__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a102)
  store %struct.Memory* %call_47a102, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rsi	 RIP: 47a105	 Bytes: 4
  %loadMem_47a105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a105 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a105)
  store %struct.Memory* %call_47a105, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 47a109	 Bytes: 4
  %loadMem_47a109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a109 = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a109)
  store %struct.Memory* %call_47a109, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 47a10d	 Bytes: 3
  %loadMem_47a10d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a10d = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a10d)
  store %struct.Memory* %call_47a10d, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rsi	 RIP: 47a110	 Bytes: 4
  %loadMem_47a110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a110 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a110)
  store %struct.Memory* %call_47a110, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rsi	 RIP: 47a114	 Bytes: 4
  %loadMem_47a114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a114 = call %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a114)
  store %struct.Memory* %call_47a114, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 47a118	 Bytes: 3
  %loadMem_47a118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a118 = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a118)
  store %struct.Memory* %call_47a118, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rsi	 RIP: 47a11b	 Bytes: 4
  %loadMem_47a11b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a11b = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a11b)
  store %struct.Memory* %call_47a11b, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rcx,%rsi,4)	 RIP: 47a11f	 Bytes: 3
  %loadMem_47a11f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a11f = call %struct.Memory* @routine_movl__edx____rcx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a11f)
  store %struct.Memory* %call_47a11f, %struct.Memory** %MEMORY

  ; Code: .L_47a122:	 RIP: 47a122	 Bytes: 0
  br label %block_.L_47a122
block_.L_47a122:

  ; Code: cmpl $0x0, -0x48(%rbp)	 RIP: 47a122	 Bytes: 4
  %loadMem_47a122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a122 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a122)
  store %struct.Memory* %call_47a122, %struct.Memory** %MEMORY

  ; Code: jne .L_47a1d1	 RIP: 47a126	 Bytes: 6
  %loadMem_47a126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a126 = call %struct.Memory* @routine_jne_.L_47a1d1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a126, i8* %BRANCH_TAKEN, i64 171, i64 6, i64 6)
  store %struct.Memory* %call_47a126, %struct.Memory** %MEMORY

  %loadBr_47a126 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a126 = icmp eq i8 %loadBr_47a126, 1
  br i1 %cmpBr_47a126, label %block_.L_47a1d1, label %block_47a12c

block_47a12c:
  ; Code: movq $0x70d1b0, %rax	 RIP: 47a12c	 Bytes: 10
  %loadMem_47a12c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a12c = call %struct.Memory* @routine_movq__0x70d1b0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a12c)
  store %struct.Memory* %call_47a12c, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 47a136	 Bytes: 3
  %loadMem_47a136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a136 = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a136)
  store %struct.Memory* %call_47a136, %struct.Memory** %MEMORY

  ; Code: addq $0x180, %rcx	 RIP: 47a139	 Bytes: 7
  %loadMem_47a139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a139 = call %struct.Memory* @routine_addq__0x180___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a139)
  store %struct.Memory* %call_47a139, %struct.Memory** %MEMORY

  ; Code: movq $0x6f73a0, %rdx	 RIP: 47a140	 Bytes: 10
  %loadMem_47a140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a140 = call %struct.Memory* @routine_movq__0x6f73a0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a140)
  store %struct.Memory* %call_47a140, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 47a14a	 Bytes: 3
  %loadMem_47a14a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a14a = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a14a)
  store %struct.Memory* %call_47a14a, %struct.Memory** %MEMORY

  ; Code: addq $0x180, %rsi	 RIP: 47a14d	 Bytes: 7
  %loadMem_47a14d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a14d = call %struct.Memory* @routine_addq__0x180___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a14d)
  store %struct.Memory* %call_47a14d, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rdi	 RIP: 47a154	 Bytes: 4
  %loadMem_47a154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a154 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a154)
  store %struct.Memory* %call_47a154, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdi	 RIP: 47a158	 Bytes: 4
  %loadMem_47a158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a158 = call %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a158)
  store %struct.Memory* %call_47a158, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rdx	 RIP: 47a15c	 Bytes: 3
  %loadMem_47a15c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a15c = call %struct.Memory* @routine_addq__rdi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a15c)
  store %struct.Memory* %call_47a15c, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdi	 RIP: 47a15f	 Bytes: 4
  %loadMem_47a15f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a15f = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a15f)
  store %struct.Memory* %call_47a15f, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdi	 RIP: 47a163	 Bytes: 4
  %loadMem_47a163 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a163 = call %struct.Memory* @routine_shlq__0x4___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a163)
  store %struct.Memory* %call_47a163, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rdx	 RIP: 47a167	 Bytes: 3
  %loadMem_47a167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a167 = call %struct.Memory* @routine_addq__rdi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a167)
  store %struct.Memory* %call_47a167, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdi	 RIP: 47a16a	 Bytes: 4
  %loadMem_47a16a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a16a = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a16a)
  store %struct.Memory* %call_47a16a, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%rdi,4), %r8d	 RIP: 47a16e	 Bytes: 4
  %loadMem_47a16e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a16e = call %struct.Memory* @routine_movl___rdx__rdi_4____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a16e)
  store %struct.Memory* %call_47a16e, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rdx	 RIP: 47a172	 Bytes: 4
  %loadMem_47a172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a172 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a172)
  store %struct.Memory* %call_47a172, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 47a176	 Bytes: 4
  %loadMem_47a176 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a176 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a176)
  store %struct.Memory* %call_47a176, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 47a17a	 Bytes: 3
  %loadMem_47a17a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a17a = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a17a)
  store %struct.Memory* %call_47a17a, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdx	 RIP: 47a17d	 Bytes: 4
  %loadMem_47a17d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a17d = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a17d)
  store %struct.Memory* %call_47a17d, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 47a181	 Bytes: 4
  %loadMem_47a181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a181 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a181)
  store %struct.Memory* %call_47a181, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 47a185	 Bytes: 3
  %loadMem_47a185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a185 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a185)
  store %struct.Memory* %call_47a185, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 47a188	 Bytes: 4
  %loadMem_47a188 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a188 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a188)
  store %struct.Memory* %call_47a188, %struct.Memory** %MEMORY

  ; Code: movl %r8d, (%rsi,%rdx,4)	 RIP: 47a18c	 Bytes: 4
  %loadMem_47a18c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a18c = call %struct.Memory* @routine_movl__r8d____rsi__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a18c)
  store %struct.Memory* %call_47a18c, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rdx	 RIP: 47a190	 Bytes: 4
  %loadMem_47a190 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a190 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a190)
  store %struct.Memory* %call_47a190, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 47a194	 Bytes: 4
  %loadMem_47a194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a194 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a194)
  store %struct.Memory* %call_47a194, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 47a198	 Bytes: 3
  %loadMem_47a198 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a198 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a198)
  store %struct.Memory* %call_47a198, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdx	 RIP: 47a19b	 Bytes: 4
  %loadMem_47a19b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a19b = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a19b)
  store %struct.Memory* %call_47a19b, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 47a19f	 Bytes: 4
  %loadMem_47a19f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a19f = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a19f)
  store %struct.Memory* %call_47a19f, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 47a1a3	 Bytes: 3
  %loadMem_47a1a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a1a3 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a1a3)
  store %struct.Memory* %call_47a1a3, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 47a1a6	 Bytes: 4
  %loadMem_47a1a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a1a6 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a1a6)
  store %struct.Memory* %call_47a1a6, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %r8d	 RIP: 47a1aa	 Bytes: 4
  %loadMem_47a1aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a1aa = call %struct.Memory* @routine_movl___rax__rdx_4____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a1aa)
  store %struct.Memory* %call_47a1aa, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rax	 RIP: 47a1ae	 Bytes: 4
  %loadMem_47a1ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a1ae = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a1ae)
  store %struct.Memory* %call_47a1ae, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rax	 RIP: 47a1b2	 Bytes: 4
  %loadMem_47a1b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a1b2 = call %struct.Memory* @routine_shlq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a1b2)
  store %struct.Memory* %call_47a1b2, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rcx	 RIP: 47a1b6	 Bytes: 3
  %loadMem_47a1b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a1b6 = call %struct.Memory* @routine_addq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a1b6)
  store %struct.Memory* %call_47a1b6, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rax	 RIP: 47a1b9	 Bytes: 4
  %loadMem_47a1b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a1b9 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a1b9)
  store %struct.Memory* %call_47a1b9, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rax	 RIP: 47a1bd	 Bytes: 4
  %loadMem_47a1bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a1bd = call %struct.Memory* @routine_shlq__0x4___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a1bd)
  store %struct.Memory* %call_47a1bd, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rcx	 RIP: 47a1c1	 Bytes: 3
  %loadMem_47a1c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a1c1 = call %struct.Memory* @routine_addq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a1c1)
  store %struct.Memory* %call_47a1c1, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rax	 RIP: 47a1c4	 Bytes: 4
  %loadMem_47a1c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a1c4 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a1c4)
  store %struct.Memory* %call_47a1c4, %struct.Memory** %MEMORY

  ; Code: movl %r8d, (%rcx,%rax,4)	 RIP: 47a1c8	 Bytes: 4
  %loadMem_47a1c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a1c8 = call %struct.Memory* @routine_movl__r8d____rcx__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a1c8)
  store %struct.Memory* %call_47a1c8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47a33c	 RIP: 47a1cc	 Bytes: 5
  %loadMem_47a1cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a1cc = call %struct.Memory* @routine_jmpq_.L_47a33c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a1cc, i64 368, i64 5)
  store %struct.Memory* %call_47a1cc, %struct.Memory** %MEMORY

  br label %block_.L_47a33c

  ; Code: .L_47a1d1:	 RIP: 47a1d1	 Bytes: 0
block_.L_47a1d1:

  ; Code: movq $0x4b2750, %rax	 RIP: 47a1d1	 Bytes: 10
  %loadMem_47a1d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a1d1 = call %struct.Memory* @routine_movq__0x4b2750___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a1d1)
  store %struct.Memory* %call_47a1d1, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 47a1db	 Bytes: 4
  %loadMem_47a1db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a1db = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a1db)
  store %struct.Memory* %call_47a1db, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 47a1df	 Bytes: 4
  %loadMem_47a1df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a1df = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a1df)
  store %struct.Memory* %call_47a1df, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47a1e3	 Bytes: 3
  %loadMem_47a1e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a1e3 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a1e3)
  store %struct.Memory* %call_47a1e3, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 47a1e6	 Bytes: 4
  %loadMem_47a1e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a1e6 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a1e6)
  store %struct.Memory* %call_47a1e6, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 47a1ea	 Bytes: 4
  %loadMem_47a1ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a1ea = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a1ea)
  store %struct.Memory* %call_47a1ea, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47a1ee	 Bytes: 3
  %loadMem_47a1ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a1ee = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a1ee)
  store %struct.Memory* %call_47a1ee, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 47a1f1	 Bytes: 4
  %loadMem_47a1f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a1f1 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a1f1)
  store %struct.Memory* %call_47a1f1, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 47a1f5	 Bytes: 3
  %loadMem_47a1f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a1f5 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a1f5)
  store %struct.Memory* %call_47a1f5, %struct.Memory** %MEMORY

  ; Code: shll $0x4, %edx	 RIP: 47a1f8	 Bytes: 3
  %loadMem_47a1f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a1f8 = call %struct.Memory* @routine_shll__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a1f8)
  store %struct.Memory* %call_47a1f8, %struct.Memory** %MEMORY

  ; Code: movswl 0x6d4524, %esi	 RIP: 47a1fb	 Bytes: 8
  %loadMem_47a1fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a1fb = call %struct.Memory* @routine_movswl_0x6d4524___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a1fb)
  store %struct.Memory* %call_47a1fb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %esi	 RIP: 47a203	 Bytes: 3
  %loadMem_47a203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a203 = call %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a203)
  store %struct.Memory* %call_47a203, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0xb4(%rbp)	 RIP: 47a206	 Bytes: 6
  %loadMem_47a206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a206 = call %struct.Memory* @routine_movl__edx__MINUS0xb4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a206)
  store %struct.Memory* %call_47a206, %struct.Memory** %MEMORY

  ; Code: je .L_47a229	 RIP: 47a20c	 Bytes: 6
  %loadMem_47a20c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a20c = call %struct.Memory* @routine_je_.L_47a229(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a20c, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_47a20c, %struct.Memory** %MEMORY

  %loadBr_47a20c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a20c = icmp eq i8 %loadBr_47a20c, 1
  br i1 %cmpBr_47a20c, label %block_.L_47a229, label %block_47a212

block_47a212:
  ; Code: movslq -0x38(%rbp), %rax	 RIP: 47a212	 Bytes: 4
  %loadMem_47a212 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a212 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a212)
  store %struct.Memory* %call_47a212, %struct.Memory** %MEMORY

  ; Code: movswl 0x4b9260(,%rax,2), %ecx	 RIP: 47a216	 Bytes: 8
  %loadMem_47a216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a216 = call %struct.Memory* @routine_movswl_0x4b9260___rax_2____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a216)
  store %struct.Memory* %call_47a216, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xb8(%rbp)	 RIP: 47a21e	 Bytes: 6
  %loadMem_47a21e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a21e = call %struct.Memory* @routine_movl__ecx__MINUS0xb8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a21e)
  store %struct.Memory* %call_47a21e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47a23b	 RIP: 47a224	 Bytes: 5
  %loadMem_47a224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a224 = call %struct.Memory* @routine_jmpq_.L_47a23b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a224, i64 23, i64 5)
  store %struct.Memory* %call_47a224, %struct.Memory** %MEMORY

  br label %block_.L_47a23b

  ; Code: .L_47a229:	 RIP: 47a229	 Bytes: 0
block_.L_47a229:

  ; Code: movslq -0x38(%rbp), %rax	 RIP: 47a229	 Bytes: 4
  %loadMem_47a229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a229 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a229)
  store %struct.Memory* %call_47a229, %struct.Memory** %MEMORY

  ; Code: movswl 0x6d2000(,%rax,2), %ecx	 RIP: 47a22d	 Bytes: 8
  %loadMem_47a22d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a22d = call %struct.Memory* @routine_movswl_0x6d2000___rax_2____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a22d)
  store %struct.Memory* %call_47a22d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xb8(%rbp)	 RIP: 47a235	 Bytes: 6
  %loadMem_47a235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a235 = call %struct.Memory* @routine_movl__ecx__MINUS0xb8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a235)
  store %struct.Memory* %call_47a235, %struct.Memory** %MEMORY

  ; Code: .L_47a23b:	 RIP: 47a23b	 Bytes: 0
  br label %block_.L_47a23b
block_.L_47a23b:

  ; Code: movl -0xb8(%rbp), %eax	 RIP: 47a23b	 Bytes: 6
  %loadMem_47a23b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a23b = call %struct.Memory* @routine_movl_MINUS0xb8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a23b)
  store %struct.Memory* %call_47a23b, %struct.Memory** %MEMORY

  ; Code: movq $0x4b28d0, %rcx	 RIP: 47a241	 Bytes: 10
  %loadMem_47a241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a241 = call %struct.Memory* @routine_movq__0x4b28d0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a241)
  store %struct.Memory* %call_47a241, %struct.Memory** %MEMORY

  ; Code: movq $0x6f73a0, %rdx	 RIP: 47a24b	 Bytes: 10
  %loadMem_47a24b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a24b = call %struct.Memory* @routine_movq__0x6f73a0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a24b)
  store %struct.Memory* %call_47a24b, %struct.Memory** %MEMORY

  ; Code: addq $0x180, %rdx	 RIP: 47a255	 Bytes: 7
  %loadMem_47a255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a255 = call %struct.Memory* @routine_addq__0x180___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a255)
  store %struct.Memory* %call_47a255, %struct.Memory** %MEMORY

  ; Code: movl -0xb4(%rbp), %esi	 RIP: 47a25c	 Bytes: 6
  %loadMem_47a25c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a25c = call %struct.Memory* @routine_movl_MINUS0xb4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a25c)
  store %struct.Memory* %call_47a25c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xbc(%rbp)	 RIP: 47a262	 Bytes: 6
  %loadMem_47a262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a262 = call %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a262)
  store %struct.Memory* %call_47a262, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 47a268	 Bytes: 2
  %loadMem_47a268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a268 = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a268)
  store %struct.Memory* %call_47a268, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0xc8(%rbp)	 RIP: 47a26a	 Bytes: 7
  %loadMem_47a26a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a26a = call %struct.Memory* @routine_movq__rdx__MINUS0xc8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a26a)
  store %struct.Memory* %call_47a26a, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 47a271	 Bytes: 1
  %loadMem_47a271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a271 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a271)
  store %struct.Memory* %call_47a271, %struct.Memory** %MEMORY

  ; Code: movl -0xbc(%rbp), %edi	 RIP: 47a272	 Bytes: 6
  %loadMem_47a272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a272 = call %struct.Memory* @routine_movl_MINUS0xbc__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a272)
  store %struct.Memory* %call_47a272, %struct.Memory** %MEMORY

  ; Code: idivl %edi	 RIP: 47a278	 Bytes: 2
  %loadMem_47a278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a278 = call %struct.Memory* @routine_idivl__edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a278)
  store %struct.Memory* %call_47a278, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %r8	 RIP: 47a27a	 Bytes: 4
  %loadMem_47a27a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a27a = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a27a)
  store %struct.Memory* %call_47a27a, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %r8	 RIP: 47a27e	 Bytes: 4
  %loadMem_47a27e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a27e = call %struct.Memory* @routine_shlq__0x6___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a27e)
  store %struct.Memory* %call_47a27e, %struct.Memory** %MEMORY

  ; Code: movq -0xc8(%rbp), %r9	 RIP: 47a282	 Bytes: 7
  %loadMem_47a282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a282 = call %struct.Memory* @routine_movq_MINUS0xc8__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a282)
  store %struct.Memory* %call_47a282, %struct.Memory** %MEMORY

  ; Code: addq %r8, %r9	 RIP: 47a289	 Bytes: 3
  %loadMem_47a289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a289 = call %struct.Memory* @routine_addq__r8___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a289)
  store %struct.Memory* %call_47a289, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %r8	 RIP: 47a28c	 Bytes: 4
  %loadMem_47a28c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a28c = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a28c)
  store %struct.Memory* %call_47a28c, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %r8	 RIP: 47a290	 Bytes: 4
  %loadMem_47a290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a290 = call %struct.Memory* @routine_shlq__0x4___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a290)
  store %struct.Memory* %call_47a290, %struct.Memory** %MEMORY

  ; Code: addq %r8, %r9	 RIP: 47a294	 Bytes: 3
  %loadMem_47a294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a294 = call %struct.Memory* @routine_addq__r8___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a294)
  store %struct.Memory* %call_47a294, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %r8	 RIP: 47a297	 Bytes: 4
  %loadMem_47a297 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a297 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a297)
  store %struct.Memory* %call_47a297, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%r9,%r8,4)	 RIP: 47a29b	 Bytes: 4
  %loadMem_47a29b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a29b = call %struct.Memory* @routine_movl__eax____r9__r8_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a29b)
  store %struct.Memory* %call_47a29b, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %r8	 RIP: 47a29f	 Bytes: 4
  %loadMem_47a29f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a29f = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a29f)
  store %struct.Memory* %call_47a29f, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %r8	 RIP: 47a2a3	 Bytes: 4
  %loadMem_47a2a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a2a3 = call %struct.Memory* @routine_shlq__0x6___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a2a3)
  store %struct.Memory* %call_47a2a3, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rcx	 RIP: 47a2a7	 Bytes: 3
  %loadMem_47a2a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a2a7 = call %struct.Memory* @routine_addq__r8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a2a7)
  store %struct.Memory* %call_47a2a7, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %r8	 RIP: 47a2aa	 Bytes: 4
  %loadMem_47a2aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a2aa = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a2aa)
  store %struct.Memory* %call_47a2aa, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %r8	 RIP: 47a2ae	 Bytes: 4
  %loadMem_47a2ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a2ae = call %struct.Memory* @routine_shlq__0x4___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a2ae)
  store %struct.Memory* %call_47a2ae, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rcx	 RIP: 47a2b2	 Bytes: 3
  %loadMem_47a2b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a2b2 = call %struct.Memory* @routine_addq__r8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a2b2)
  store %struct.Memory* %call_47a2b2, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %r8	 RIP: 47a2b5	 Bytes: 4
  %loadMem_47a2b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a2b5 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a2b5)
  store %struct.Memory* %call_47a2b5, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%r8,4), %eax	 RIP: 47a2b9	 Bytes: 4
  %loadMem_47a2b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a2b9 = call %struct.Memory* @routine_movl___rcx__r8_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a2b9)
  store %struct.Memory* %call_47a2b9, %struct.Memory** %MEMORY

  ; Code: movswl 0x6d4524, %r10d	 RIP: 47a2bd	 Bytes: 9
  %loadMem_47a2bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a2bd = call %struct.Memory* @routine_movswl_0x6d4524___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a2bd)
  store %struct.Memory* %call_47a2bd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %r10d	 RIP: 47a2c6	 Bytes: 4
  %loadMem_47a2c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a2c6 = call %struct.Memory* @routine_cmpl__0x0___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a2c6)
  store %struct.Memory* %call_47a2c6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xcc(%rbp)	 RIP: 47a2ca	 Bytes: 6
  %loadMem_47a2ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a2ca = call %struct.Memory* @routine_movl__eax__MINUS0xcc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a2ca)
  store %struct.Memory* %call_47a2ca, %struct.Memory** %MEMORY

  ; Code: je .L_47a2ed	 RIP: 47a2d0	 Bytes: 6
  %loadMem_47a2d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a2d0 = call %struct.Memory* @routine_je_.L_47a2ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a2d0, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_47a2d0, %struct.Memory** %MEMORY

  %loadBr_47a2d0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a2d0 = icmp eq i8 %loadBr_47a2d0, 1
  br i1 %cmpBr_47a2d0, label %block_.L_47a2ed, label %block_47a2d6

block_47a2d6:
  ; Code: movslq -0x38(%rbp), %rax	 RIP: 47a2d6	 Bytes: 4
  %loadMem_47a2d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a2d6 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a2d6)
  store %struct.Memory* %call_47a2d6, %struct.Memory** %MEMORY

  ; Code: movswl 0x4b9260(,%rax,2), %ecx	 RIP: 47a2da	 Bytes: 8
  %loadMem_47a2da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a2da = call %struct.Memory* @routine_movswl_0x4b9260___rax_2____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a2da)
  store %struct.Memory* %call_47a2da, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xd0(%rbp)	 RIP: 47a2e2	 Bytes: 6
  %loadMem_47a2e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a2e2 = call %struct.Memory* @routine_movl__ecx__MINUS0xd0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a2e2)
  store %struct.Memory* %call_47a2e2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47a2ff	 RIP: 47a2e8	 Bytes: 5
  %loadMem_47a2e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a2e8 = call %struct.Memory* @routine_jmpq_.L_47a2ff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a2e8, i64 23, i64 5)
  store %struct.Memory* %call_47a2e8, %struct.Memory** %MEMORY

  br label %block_.L_47a2ff

  ; Code: .L_47a2ed:	 RIP: 47a2ed	 Bytes: 0
block_.L_47a2ed:

  ; Code: movslq -0x38(%rbp), %rax	 RIP: 47a2ed	 Bytes: 4
  %loadMem_47a2ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a2ed = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a2ed)
  store %struct.Memory* %call_47a2ed, %struct.Memory** %MEMORY

  ; Code: movswl 0x6d2000(,%rax,2), %ecx	 RIP: 47a2f1	 Bytes: 8
  %loadMem_47a2f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a2f1 = call %struct.Memory* @routine_movswl_0x6d2000___rax_2____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a2f1)
  store %struct.Memory* %call_47a2f1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xd0(%rbp)	 RIP: 47a2f9	 Bytes: 6
  %loadMem_47a2f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a2f9 = call %struct.Memory* @routine_movl__ecx__MINUS0xd0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a2f9)
  store %struct.Memory* %call_47a2f9, %struct.Memory** %MEMORY

  ; Code: .L_47a2ff:	 RIP: 47a2ff	 Bytes: 0
  br label %block_.L_47a2ff
block_.L_47a2ff:

  ; Code: movl -0xd0(%rbp), %eax	 RIP: 47a2ff	 Bytes: 6
  %loadMem_47a2ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a2ff = call %struct.Memory* @routine_movl_MINUS0xd0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a2ff)
  store %struct.Memory* %call_47a2ff, %struct.Memory** %MEMORY

  ; Code: movq $0x70d1b0, %rcx	 RIP: 47a305	 Bytes: 10
  %loadMem_47a305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a305 = call %struct.Memory* @routine_movq__0x70d1b0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a305)
  store %struct.Memory* %call_47a305, %struct.Memory** %MEMORY

  ; Code: addq $0x180, %rcx	 RIP: 47a30f	 Bytes: 7
  %loadMem_47a30f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a30f = call %struct.Memory* @routine_addq__0x180___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a30f)
  store %struct.Memory* %call_47a30f, %struct.Memory** %MEMORY

  ; Code: movl -0xcc(%rbp), %edx	 RIP: 47a316	 Bytes: 6
  %loadMem_47a316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a316 = call %struct.Memory* @routine_movl_MINUS0xcc__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a316)
  store %struct.Memory* %call_47a316, %struct.Memory** %MEMORY

  ; Code: imull %eax, %edx	 RIP: 47a31c	 Bytes: 3
  %loadMem_47a31c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a31c = call %struct.Memory* @routine_imull__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a31c)
  store %struct.Memory* %call_47a31c, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rsi	 RIP: 47a31f	 Bytes: 4
  %loadMem_47a31f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a31f = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a31f)
  store %struct.Memory* %call_47a31f, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 47a323	 Bytes: 4
  %loadMem_47a323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a323 = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a323)
  store %struct.Memory* %call_47a323, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 47a327	 Bytes: 3
  %loadMem_47a327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a327 = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a327)
  store %struct.Memory* %call_47a327, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rsi	 RIP: 47a32a	 Bytes: 4
  %loadMem_47a32a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a32a = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a32a)
  store %struct.Memory* %call_47a32a, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rsi	 RIP: 47a32e	 Bytes: 4
  %loadMem_47a32e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a32e = call %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a32e)
  store %struct.Memory* %call_47a32e, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 47a332	 Bytes: 3
  %loadMem_47a332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a332 = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a332)
  store %struct.Memory* %call_47a332, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rsi	 RIP: 47a335	 Bytes: 4
  %loadMem_47a335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a335 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a335)
  store %struct.Memory* %call_47a335, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rcx,%rsi,4)	 RIP: 47a339	 Bytes: 3
  %loadMem_47a339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a339 = call %struct.Memory* @routine_movl__edx____rcx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a339)
  store %struct.Memory* %call_47a339, %struct.Memory** %MEMORY

  ; Code: .L_47a33c:	 RIP: 47a33c	 Bytes: 0
  br label %block_.L_47a33c
block_.L_47a33c:

  ; Code: cmpl $0x0, -0x44(%rbp)	 RIP: 47a33c	 Bytes: 4
  %loadMem_47a33c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a33c = call %struct.Memory* @routine_cmpl__0x0__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a33c)
  store %struct.Memory* %call_47a33c, %struct.Memory** %MEMORY

  ; Code: je .L_47a357	 RIP: 47a340	 Bytes: 6
  %loadMem_47a340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a340 = call %struct.Memory* @routine_je_.L_47a357(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a340, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_47a340, %struct.Memory** %MEMORY

  %loadBr_47a340 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a340 = icmp eq i8 %loadBr_47a340, 1
  br i1 %cmpBr_47a340, label %block_.L_47a357, label %block_47a346

block_47a346:
  ; Code: movswl 0x6d4526, %eax	 RIP: 47a346	 Bytes: 8
  %loadMem_47a346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a346 = call %struct.Memory* @routine_movswl_0x6d4526___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a346)
  store %struct.Memory* %call_47a346, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 47a34e	 Bytes: 3
  %loadMem_47a34e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a34e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a34e)
  store %struct.Memory* %call_47a34e, %struct.Memory** %MEMORY

  ; Code: je .L_47a43e	 RIP: 47a351	 Bytes: 6
  %loadMem_47a351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a351 = call %struct.Memory* @routine_je_.L_47a43e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a351, i8* %BRANCH_TAKEN, i64 237, i64 6, i64 6)
  store %struct.Memory* %call_47a351, %struct.Memory** %MEMORY

  %loadBr_47a351 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a351 = icmp eq i8 %loadBr_47a351, 1
  br i1 %cmpBr_47a351, label %block_.L_47a43e, label %block_.L_47a357

  ; Code: .L_47a357:	 RIP: 47a357	 Bytes: 0
block_.L_47a357:

  ; Code: movq $0x6d09f0, %rax	 RIP: 47a357	 Bytes: 10
  %loadMem_47a357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a357 = call %struct.Memory* @routine_movq__0x6d09f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a357)
  store %struct.Memory* %call_47a357, %struct.Memory** %MEMORY

  ; Code: movq $0x4b28d0, %rcx	 RIP: 47a361	 Bytes: 10
  %loadMem_47a361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a361 = call %struct.Memory* @routine_movq__0x4b28d0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a361)
  store %struct.Memory* %call_47a361, %struct.Memory** %MEMORY

  ; Code: movq $0x70fe80, %rdx	 RIP: 47a36b	 Bytes: 10
  %loadMem_47a36b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a36b = call %struct.Memory* @routine_movq__0x70fe80___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a36b)
  store %struct.Memory* %call_47a36b, %struct.Memory** %MEMORY

  ; Code: movq $0x4b2750, %rsi	 RIP: 47a375	 Bytes: 10
  %loadMem_47a375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a375 = call %struct.Memory* @routine_movq__0x4b2750___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a375)
  store %struct.Memory* %call_47a375, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rdi	 RIP: 47a37f	 Bytes: 4
  %loadMem_47a37f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a37f = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a37f)
  store %struct.Memory* %call_47a37f, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdi	 RIP: 47a383	 Bytes: 4
  %loadMem_47a383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a383 = call %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a383)
  store %struct.Memory* %call_47a383, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 47a387	 Bytes: 3
  %loadMem_47a387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a387 = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a387)
  store %struct.Memory* %call_47a387, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdi	 RIP: 47a38a	 Bytes: 4
  %loadMem_47a38a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a38a = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a38a)
  store %struct.Memory* %call_47a38a, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdi	 RIP: 47a38e	 Bytes: 4
  %loadMem_47a38e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a38e = call %struct.Memory* @routine_shlq__0x4___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a38e)
  store %struct.Memory* %call_47a38e, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 47a392	 Bytes: 3
  %loadMem_47a392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a392 = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a392)
  store %struct.Memory* %call_47a392, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdi	 RIP: 47a395	 Bytes: 4
  %loadMem_47a395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a395 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a395)
  store %struct.Memory* %call_47a395, %struct.Memory** %MEMORY

  ; Code: movl (%rsi,%rdi,4), %r8d	 RIP: 47a399	 Bytes: 4
  %loadMem_47a399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a399 = call %struct.Memory* @routine_movl___rsi__rdi_4____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a399)
  store %struct.Memory* %call_47a399, %struct.Memory** %MEMORY

  ; Code: shll $0x4, %r8d	 RIP: 47a39d	 Bytes: 4
  %loadMem_47a39d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a39d = call %struct.Memory* @routine_shll__0x4___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a39d)
  store %struct.Memory* %call_47a39d, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rsi	 RIP: 47a3a1	 Bytes: 4
  %loadMem_47a3a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a3a1 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a3a1)
  store %struct.Memory* %call_47a3a1, %struct.Memory** %MEMORY

  ; Code: movswl 0x4b9240(,%rsi,2), %r9d	 RIP: 47a3a5	 Bytes: 9
  %loadMem_47a3a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a3a5 = call %struct.Memory* @routine_movswl_0x4b9240___rsi_2____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a3a5)
  store %struct.Memory* %call_47a3a5, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xd8(%rbp)	 RIP: 47a3ae	 Bytes: 7
  %loadMem_47a3ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a3ae = call %struct.Memory* @routine_movq__rax__MINUS0xd8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a3ae)
  store %struct.Memory* %call_47a3ae, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %eax	 RIP: 47a3b5	 Bytes: 3
  %loadMem_47a3b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a3b5 = call %struct.Memory* @routine_movl__r8d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a3b5)
  store %struct.Memory* %call_47a3b5, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0xe0(%rbp)	 RIP: 47a3b8	 Bytes: 7
  %loadMem_47a3b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a3b8 = call %struct.Memory* @routine_movq__rdx__MINUS0xe0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a3b8)
  store %struct.Memory* %call_47a3b8, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 47a3bf	 Bytes: 1
  %loadMem_47a3bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a3bf = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a3bf)
  store %struct.Memory* %call_47a3bf, %struct.Memory** %MEMORY

  ; Code: idivl %r9d	 RIP: 47a3c0	 Bytes: 3
  %loadMem_47a3c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a3c0 = call %struct.Memory* @routine_idivl__r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a3c0)
  store %struct.Memory* %call_47a3c0, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rsi	 RIP: 47a3c3	 Bytes: 4
  %loadMem_47a3c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a3c3 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a3c3)
  store %struct.Memory* %call_47a3c3, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 47a3c7	 Bytes: 4
  %loadMem_47a3c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a3c7 = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a3c7)
  store %struct.Memory* %call_47a3c7, %struct.Memory** %MEMORY

  ; Code: movq -0xe0(%rbp), %rdi	 RIP: 47a3cb	 Bytes: 7
  %loadMem_47a3cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a3cb = call %struct.Memory* @routine_movq_MINUS0xe0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a3cb)
  store %struct.Memory* %call_47a3cb, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 47a3d2	 Bytes: 3
  %loadMem_47a3d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a3d2 = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a3d2)
  store %struct.Memory* %call_47a3d2, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rsi	 RIP: 47a3d5	 Bytes: 4
  %loadMem_47a3d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a3d5 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a3d5)
  store %struct.Memory* %call_47a3d5, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rsi	 RIP: 47a3d9	 Bytes: 4
  %loadMem_47a3d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a3d9 = call %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a3d9)
  store %struct.Memory* %call_47a3d9, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 47a3dd	 Bytes: 3
  %loadMem_47a3dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a3dd = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a3dd)
  store %struct.Memory* %call_47a3dd, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rsi	 RIP: 47a3e0	 Bytes: 4
  %loadMem_47a3e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a3e0 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a3e0)
  store %struct.Memory* %call_47a3e0, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rdi,%rsi,4)	 RIP: 47a3e4	 Bytes: 3
  %loadMem_47a3e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a3e4 = call %struct.Memory* @routine_movl__eax____rdi__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a3e4)
  store %struct.Memory* %call_47a3e4, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rsi	 RIP: 47a3e7	 Bytes: 4
  %loadMem_47a3e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a3e7 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a3e7)
  store %struct.Memory* %call_47a3e7, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 47a3eb	 Bytes: 4
  %loadMem_47a3eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a3eb = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a3eb)
  store %struct.Memory* %call_47a3eb, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 47a3ef	 Bytes: 3
  %loadMem_47a3ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a3ef = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a3ef)
  store %struct.Memory* %call_47a3ef, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rsi	 RIP: 47a3f2	 Bytes: 4
  %loadMem_47a3f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a3f2 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a3f2)
  store %struct.Memory* %call_47a3f2, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rsi	 RIP: 47a3f6	 Bytes: 4
  %loadMem_47a3f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a3f6 = call %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a3f6)
  store %struct.Memory* %call_47a3f6, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 47a3fa	 Bytes: 3
  %loadMem_47a3fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a3fa = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a3fa)
  store %struct.Memory* %call_47a3fa, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rsi	 RIP: 47a3fd	 Bytes: 4
  %loadMem_47a3fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a3fd = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a3fd)
  store %struct.Memory* %call_47a3fd, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rsi,4), %eax	 RIP: 47a401	 Bytes: 3
  %loadMem_47a401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a401 = call %struct.Memory* @routine_movl___rcx__rsi_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a401)
  store %struct.Memory* %call_47a401, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 47a404	 Bytes: 4
  %loadMem_47a404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a404 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a404)
  store %struct.Memory* %call_47a404, %struct.Memory** %MEMORY

  ; Code: movswl 0x4b9240(,%rcx,2), %r8d	 RIP: 47a408	 Bytes: 9
  %loadMem_47a408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a408 = call %struct.Memory* @routine_movswl_0x4b9240___rcx_2____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a408)
  store %struct.Memory* %call_47a408, %struct.Memory** %MEMORY

  ; Code: imull %r8d, %eax	 RIP: 47a411	 Bytes: 4
  %loadMem_47a411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a411 = call %struct.Memory* @routine_imull__r8d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a411)
  store %struct.Memory* %call_47a411, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 47a415	 Bytes: 4
  %loadMem_47a415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a415 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a415)
  store %struct.Memory* %call_47a415, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 47a419	 Bytes: 4
  %loadMem_47a419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a419 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a419)
  store %struct.Memory* %call_47a419, %struct.Memory** %MEMORY

  ; Code: movq -0xd8(%rbp), %rsi	 RIP: 47a41d	 Bytes: 7
  %loadMem_47a41d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a41d = call %struct.Memory* @routine_movq_MINUS0xd8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a41d)
  store %struct.Memory* %call_47a41d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 47a424	 Bytes: 3
  %loadMem_47a424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a424 = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a424)
  store %struct.Memory* %call_47a424, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 47a427	 Bytes: 4
  %loadMem_47a427 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a427 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a427)
  store %struct.Memory* %call_47a427, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 47a42b	 Bytes: 4
  %loadMem_47a42b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a42b = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a42b)
  store %struct.Memory* %call_47a42b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 47a42f	 Bytes: 3
  %loadMem_47a42f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a42f = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a42f)
  store %struct.Memory* %call_47a42f, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 47a432	 Bytes: 4
  %loadMem_47a432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a432 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a432)
  store %struct.Memory* %call_47a432, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rsi,%rcx,4)	 RIP: 47a436	 Bytes: 3
  %loadMem_47a436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a436 = call %struct.Memory* @routine_movl__eax____rsi__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a436)
  store %struct.Memory* %call_47a436, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47a520	 RIP: 47a439	 Bytes: 5
  %loadMem_47a439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a439 = call %struct.Memory* @routine_jmpq_.L_47a520(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a439, i64 231, i64 5)
  store %struct.Memory* %call_47a439, %struct.Memory** %MEMORY

  br label %block_.L_47a520

  ; Code: .L_47a43e:	 RIP: 47a43e	 Bytes: 0
block_.L_47a43e:

  ; Code: movq $0x6d09f0, %rax	 RIP: 47a43e	 Bytes: 10
  %loadMem_47a43e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a43e = call %struct.Memory* @routine_movq__0x6d09f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a43e)
  store %struct.Memory* %call_47a43e, %struct.Memory** %MEMORY

  ; Code: movq $0x4b28d0, %rcx	 RIP: 47a448	 Bytes: 10
  %loadMem_47a448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a448 = call %struct.Memory* @routine_movq__0x4b28d0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a448)
  store %struct.Memory* %call_47a448, %struct.Memory** %MEMORY

  ; Code: movq $0x70fe80, %rdx	 RIP: 47a452	 Bytes: 10
  %loadMem_47a452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a452 = call %struct.Memory* @routine_movq__0x70fe80___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a452)
  store %struct.Memory* %call_47a452, %struct.Memory** %MEMORY

  ; Code: movq $0x4b2750, %rsi	 RIP: 47a45c	 Bytes: 10
  %loadMem_47a45c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a45c = call %struct.Memory* @routine_movq__0x4b2750___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a45c)
  store %struct.Memory* %call_47a45c, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rdi	 RIP: 47a466	 Bytes: 4
  %loadMem_47a466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a466 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a466)
  store %struct.Memory* %call_47a466, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdi	 RIP: 47a46a	 Bytes: 4
  %loadMem_47a46a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a46a = call %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a46a)
  store %struct.Memory* %call_47a46a, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 47a46e	 Bytes: 3
  %loadMem_47a46e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a46e = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a46e)
  store %struct.Memory* %call_47a46e, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdi	 RIP: 47a471	 Bytes: 4
  %loadMem_47a471 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a471 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a471)
  store %struct.Memory* %call_47a471, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdi	 RIP: 47a475	 Bytes: 4
  %loadMem_47a475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a475 = call %struct.Memory* @routine_shlq__0x4___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a475)
  store %struct.Memory* %call_47a475, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 47a479	 Bytes: 3
  %loadMem_47a479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a479 = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a479)
  store %struct.Memory* %call_47a479, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdi	 RIP: 47a47c	 Bytes: 4
  %loadMem_47a47c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a47c = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a47c)
  store %struct.Memory* %call_47a47c, %struct.Memory** %MEMORY

  ; Code: movl (%rsi,%rdi,4), %r8d	 RIP: 47a480	 Bytes: 4
  %loadMem_47a480 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a480 = call %struct.Memory* @routine_movl___rsi__rdi_4____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a480)
  store %struct.Memory* %call_47a480, %struct.Memory** %MEMORY

  ; Code: shll $0x4, %r8d	 RIP: 47a484	 Bytes: 4
  %loadMem_47a484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a484 = call %struct.Memory* @routine_shll__0x4___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a484)
  store %struct.Memory* %call_47a484, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rsi	 RIP: 47a488	 Bytes: 4
  %loadMem_47a488 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a488 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a488)
  store %struct.Memory* %call_47a488, %struct.Memory** %MEMORY

  ; Code: movswl 0x6d2020(,%rsi,2), %r9d	 RIP: 47a48c	 Bytes: 9
  %loadMem_47a48c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a48c = call %struct.Memory* @routine_movswl_0x6d2020___rsi_2____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a48c)
  store %struct.Memory* %call_47a48c, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xe8(%rbp)	 RIP: 47a495	 Bytes: 7
  %loadMem_47a495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a495 = call %struct.Memory* @routine_movq__rax__MINUS0xe8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a495)
  store %struct.Memory* %call_47a495, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %eax	 RIP: 47a49c	 Bytes: 3
  %loadMem_47a49c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a49c = call %struct.Memory* @routine_movl__r8d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a49c)
  store %struct.Memory* %call_47a49c, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0xf0(%rbp)	 RIP: 47a49f	 Bytes: 7
  %loadMem_47a49f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a49f = call %struct.Memory* @routine_movq__rdx__MINUS0xf0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a49f)
  store %struct.Memory* %call_47a49f, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 47a4a6	 Bytes: 1
  %loadMem_47a4a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a4a6 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a4a6)
  store %struct.Memory* %call_47a4a6, %struct.Memory** %MEMORY

  ; Code: idivl %r9d	 RIP: 47a4a7	 Bytes: 3
  %loadMem_47a4a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a4a7 = call %struct.Memory* @routine_idivl__r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a4a7)
  store %struct.Memory* %call_47a4a7, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rsi	 RIP: 47a4aa	 Bytes: 4
  %loadMem_47a4aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a4aa = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a4aa)
  store %struct.Memory* %call_47a4aa, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 47a4ae	 Bytes: 4
  %loadMem_47a4ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a4ae = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a4ae)
  store %struct.Memory* %call_47a4ae, %struct.Memory** %MEMORY

  ; Code: movq -0xf0(%rbp), %rdi	 RIP: 47a4b2	 Bytes: 7
  %loadMem_47a4b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a4b2 = call %struct.Memory* @routine_movq_MINUS0xf0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a4b2)
  store %struct.Memory* %call_47a4b2, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 47a4b9	 Bytes: 3
  %loadMem_47a4b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a4b9 = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a4b9)
  store %struct.Memory* %call_47a4b9, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rsi	 RIP: 47a4bc	 Bytes: 4
  %loadMem_47a4bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a4bc = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a4bc)
  store %struct.Memory* %call_47a4bc, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rsi	 RIP: 47a4c0	 Bytes: 4
  %loadMem_47a4c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a4c0 = call %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a4c0)
  store %struct.Memory* %call_47a4c0, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 47a4c4	 Bytes: 3
  %loadMem_47a4c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a4c4 = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a4c4)
  store %struct.Memory* %call_47a4c4, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rsi	 RIP: 47a4c7	 Bytes: 4
  %loadMem_47a4c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a4c7 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a4c7)
  store %struct.Memory* %call_47a4c7, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rdi,%rsi,4)	 RIP: 47a4cb	 Bytes: 3
  %loadMem_47a4cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a4cb = call %struct.Memory* @routine_movl__eax____rdi__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a4cb)
  store %struct.Memory* %call_47a4cb, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rsi	 RIP: 47a4ce	 Bytes: 4
  %loadMem_47a4ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a4ce = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a4ce)
  store %struct.Memory* %call_47a4ce, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 47a4d2	 Bytes: 4
  %loadMem_47a4d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a4d2 = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a4d2)
  store %struct.Memory* %call_47a4d2, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 47a4d6	 Bytes: 3
  %loadMem_47a4d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a4d6 = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a4d6)
  store %struct.Memory* %call_47a4d6, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rsi	 RIP: 47a4d9	 Bytes: 4
  %loadMem_47a4d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a4d9 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a4d9)
  store %struct.Memory* %call_47a4d9, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rsi	 RIP: 47a4dd	 Bytes: 4
  %loadMem_47a4dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a4dd = call %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a4dd)
  store %struct.Memory* %call_47a4dd, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 47a4e1	 Bytes: 3
  %loadMem_47a4e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a4e1 = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a4e1)
  store %struct.Memory* %call_47a4e1, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rsi	 RIP: 47a4e4	 Bytes: 4
  %loadMem_47a4e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a4e4 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a4e4)
  store %struct.Memory* %call_47a4e4, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rsi,4), %eax	 RIP: 47a4e8	 Bytes: 3
  %loadMem_47a4e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a4e8 = call %struct.Memory* @routine_movl___rcx__rsi_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a4e8)
  store %struct.Memory* %call_47a4e8, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 47a4eb	 Bytes: 4
  %loadMem_47a4eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a4eb = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a4eb)
  store %struct.Memory* %call_47a4eb, %struct.Memory** %MEMORY

  ; Code: movswl 0x6d2020(,%rcx,2), %r8d	 RIP: 47a4ef	 Bytes: 9
  %loadMem_47a4ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a4ef = call %struct.Memory* @routine_movswl_0x6d2020___rcx_2____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a4ef)
  store %struct.Memory* %call_47a4ef, %struct.Memory** %MEMORY

  ; Code: imull %r8d, %eax	 RIP: 47a4f8	 Bytes: 4
  %loadMem_47a4f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a4f8 = call %struct.Memory* @routine_imull__r8d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a4f8)
  store %struct.Memory* %call_47a4f8, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 47a4fc	 Bytes: 4
  %loadMem_47a4fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a4fc = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a4fc)
  store %struct.Memory* %call_47a4fc, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 47a500	 Bytes: 4
  %loadMem_47a500 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a500 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a500)
  store %struct.Memory* %call_47a500, %struct.Memory** %MEMORY

  ; Code: movq -0xe8(%rbp), %rsi	 RIP: 47a504	 Bytes: 7
  %loadMem_47a504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a504 = call %struct.Memory* @routine_movq_MINUS0xe8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a504)
  store %struct.Memory* %call_47a504, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 47a50b	 Bytes: 3
  %loadMem_47a50b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a50b = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a50b)
  store %struct.Memory* %call_47a50b, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 47a50e	 Bytes: 4
  %loadMem_47a50e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a50e = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a50e)
  store %struct.Memory* %call_47a50e, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 47a512	 Bytes: 4
  %loadMem_47a512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a512 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a512)
  store %struct.Memory* %call_47a512, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 47a516	 Bytes: 3
  %loadMem_47a516 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a516 = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a516)
  store %struct.Memory* %call_47a516, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 47a519	 Bytes: 4
  %loadMem_47a519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a519 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a519)
  store %struct.Memory* %call_47a519, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rsi,%rcx,4)	 RIP: 47a51d	 Bytes: 3
  %loadMem_47a51d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a51d = call %struct.Memory* @routine_movl__eax____rsi__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a51d)
  store %struct.Memory* %call_47a51d, %struct.Memory** %MEMORY

  ; Code: .L_47a520:	 RIP: 47a520	 Bytes: 0
  br label %block_.L_47a520
block_.L_47a520:

  ; Code: cmpl $0x0, -0x40(%rbp)	 RIP: 47a520	 Bytes: 4
  %loadMem_47a520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a520 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a520)
  store %struct.Memory* %call_47a520, %struct.Memory** %MEMORY

  ; Code: jne .L_47a5cf	 RIP: 47a524	 Bytes: 6
  %loadMem_47a524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a524 = call %struct.Memory* @routine_jne_.L_47a5cf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a524, i8* %BRANCH_TAKEN, i64 171, i64 6, i64 6)
  store %struct.Memory* %call_47a524, %struct.Memory** %MEMORY

  %loadBr_47a524 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a524 = icmp eq i8 %loadBr_47a524, 1
  br i1 %cmpBr_47a524, label %block_.L_47a5cf, label %block_47a52a

block_47a52a:
  ; Code: movq $0x723b20, %rax	 RIP: 47a52a	 Bytes: 10
  %loadMem_47a52a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a52a = call %struct.Memory* @routine_movq__0x723b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a52a)
  store %struct.Memory* %call_47a52a, %struct.Memory** %MEMORY

  ; Code: movq $0x6d09f0, %rcx	 RIP: 47a534	 Bytes: 10
  %loadMem_47a534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a534 = call %struct.Memory* @routine_movq__0x6d09f0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a534)
  store %struct.Memory* %call_47a534, %struct.Memory** %MEMORY

  ; Code: movq $0x722cd0, %rdx	 RIP: 47a53e	 Bytes: 10
  %loadMem_47a53e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a53e = call %struct.Memory* @routine_movq__0x722cd0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a53e)
  store %struct.Memory* %call_47a53e, %struct.Memory** %MEMORY

  ; Code: movq $0x70fe80, %rsi	 RIP: 47a548	 Bytes: 10
  %loadMem_47a548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a548 = call %struct.Memory* @routine_movq__0x70fe80___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a548)
  store %struct.Memory* %call_47a548, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rdi	 RIP: 47a552	 Bytes: 4
  %loadMem_47a552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a552 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a552)
  store %struct.Memory* %call_47a552, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdi	 RIP: 47a556	 Bytes: 4
  %loadMem_47a556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a556 = call %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a556)
  store %struct.Memory* %call_47a556, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 47a55a	 Bytes: 3
  %loadMem_47a55a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a55a = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a55a)
  store %struct.Memory* %call_47a55a, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdi	 RIP: 47a55d	 Bytes: 4
  %loadMem_47a55d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a55d = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a55d)
  store %struct.Memory* %call_47a55d, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdi	 RIP: 47a561	 Bytes: 4
  %loadMem_47a561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a561 = call %struct.Memory* @routine_shlq__0x4___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a561)
  store %struct.Memory* %call_47a561, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 47a565	 Bytes: 3
  %loadMem_47a565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a565 = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a565)
  store %struct.Memory* %call_47a565, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdi	 RIP: 47a568	 Bytes: 4
  %loadMem_47a568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a568 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a568)
  store %struct.Memory* %call_47a568, %struct.Memory** %MEMORY

  ; Code: movl (%rsi,%rdi,4), %r8d	 RIP: 47a56c	 Bytes: 4
  %loadMem_47a56c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a56c = call %struct.Memory* @routine_movl___rsi__rdi_4____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a56c)
  store %struct.Memory* %call_47a56c, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rsi	 RIP: 47a570	 Bytes: 4
  %loadMem_47a570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a570 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a570)
  store %struct.Memory* %call_47a570, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 47a574	 Bytes: 4
  %loadMem_47a574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a574 = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a574)
  store %struct.Memory* %call_47a574, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 47a578	 Bytes: 3
  %loadMem_47a578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a578 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a578)
  store %struct.Memory* %call_47a578, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rsi	 RIP: 47a57b	 Bytes: 4
  %loadMem_47a57b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a57b = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a57b)
  store %struct.Memory* %call_47a57b, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rsi	 RIP: 47a57f	 Bytes: 4
  %loadMem_47a57f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a57f = call %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a57f)
  store %struct.Memory* %call_47a57f, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 47a583	 Bytes: 3
  %loadMem_47a583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a583 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a583)
  store %struct.Memory* %call_47a583, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rsi	 RIP: 47a586	 Bytes: 4
  %loadMem_47a586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a586 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a586)
  store %struct.Memory* %call_47a586, %struct.Memory** %MEMORY

  ; Code: movl %r8d, (%rdx,%rsi,4)	 RIP: 47a58a	 Bytes: 4
  %loadMem_47a58a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a58a = call %struct.Memory* @routine_movl__r8d____rdx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a58a)
  store %struct.Memory* %call_47a58a, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rdx	 RIP: 47a58e	 Bytes: 4
  %loadMem_47a58e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a58e = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a58e)
  store %struct.Memory* %call_47a58e, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 47a592	 Bytes: 4
  %loadMem_47a592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a592 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a592)
  store %struct.Memory* %call_47a592, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 47a596	 Bytes: 3
  %loadMem_47a596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a596 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a596)
  store %struct.Memory* %call_47a596, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdx	 RIP: 47a599	 Bytes: 4
  %loadMem_47a599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a599 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a599)
  store %struct.Memory* %call_47a599, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 47a59d	 Bytes: 4
  %loadMem_47a59d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a59d = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a59d)
  store %struct.Memory* %call_47a59d, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 47a5a1	 Bytes: 3
  %loadMem_47a5a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a5a1 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a5a1)
  store %struct.Memory* %call_47a5a1, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 47a5a4	 Bytes: 4
  %loadMem_47a5a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a5a4 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a5a4)
  store %struct.Memory* %call_47a5a4, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %r8d	 RIP: 47a5a8	 Bytes: 4
  %loadMem_47a5a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a5a8 = call %struct.Memory* @routine_movl___rcx__rdx_4____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a5a8)
  store %struct.Memory* %call_47a5a8, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 47a5ac	 Bytes: 4
  %loadMem_47a5ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a5ac = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a5ac)
  store %struct.Memory* %call_47a5ac, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 47a5b0	 Bytes: 4
  %loadMem_47a5b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a5b0 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a5b0)
  store %struct.Memory* %call_47a5b0, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47a5b4	 Bytes: 3
  %loadMem_47a5b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a5b4 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a5b4)
  store %struct.Memory* %call_47a5b4, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 47a5b7	 Bytes: 4
  %loadMem_47a5b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a5b7 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a5b7)
  store %struct.Memory* %call_47a5b7, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 47a5bb	 Bytes: 4
  %loadMem_47a5bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a5bb = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a5bb)
  store %struct.Memory* %call_47a5bb, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47a5bf	 Bytes: 3
  %loadMem_47a5bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a5bf = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a5bf)
  store %struct.Memory* %call_47a5bf, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 47a5c2	 Bytes: 4
  %loadMem_47a5c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a5c2 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a5c2)
  store %struct.Memory* %call_47a5c2, %struct.Memory** %MEMORY

  ; Code: movl %r8d, (%rax,%rcx,4)	 RIP: 47a5c6	 Bytes: 4
  %loadMem_47a5c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a5c6 = call %struct.Memory* @routine_movl__r8d____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a5c6)
  store %struct.Memory* %call_47a5c6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47a72c	 RIP: 47a5ca	 Bytes: 5
  %loadMem_47a5ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a5ca = call %struct.Memory* @routine_jmpq_.L_47a72c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a5ca, i64 354, i64 5)
  store %struct.Memory* %call_47a5ca, %struct.Memory** %MEMORY

  br label %block_.L_47a72c

  ; Code: .L_47a5cf:	 RIP: 47a5cf	 Bytes: 0
block_.L_47a5cf:

  ; Code: movq $0x4b2750, %rax	 RIP: 47a5cf	 Bytes: 10
  %loadMem_47a5cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a5cf = call %struct.Memory* @routine_movq__0x4b2750___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a5cf)
  store %struct.Memory* %call_47a5cf, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 47a5d9	 Bytes: 4
  %loadMem_47a5d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a5d9 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a5d9)
  store %struct.Memory* %call_47a5d9, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 47a5dd	 Bytes: 4
  %loadMem_47a5dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a5dd = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a5dd)
  store %struct.Memory* %call_47a5dd, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47a5e1	 Bytes: 3
  %loadMem_47a5e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a5e1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a5e1)
  store %struct.Memory* %call_47a5e1, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 47a5e4	 Bytes: 4
  %loadMem_47a5e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a5e4 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a5e4)
  store %struct.Memory* %call_47a5e4, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 47a5e8	 Bytes: 4
  %loadMem_47a5e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a5e8 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a5e8)
  store %struct.Memory* %call_47a5e8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47a5ec	 Bytes: 3
  %loadMem_47a5ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a5ec = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a5ec)
  store %struct.Memory* %call_47a5ec, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 47a5ef	 Bytes: 4
  %loadMem_47a5ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a5ef = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a5ef)
  store %struct.Memory* %call_47a5ef, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 47a5f3	 Bytes: 3
  %loadMem_47a5f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a5f3 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a5f3)
  store %struct.Memory* %call_47a5f3, %struct.Memory** %MEMORY

  ; Code: shll $0x4, %edx	 RIP: 47a5f6	 Bytes: 3
  %loadMem_47a5f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a5f6 = call %struct.Memory* @routine_shll__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a5f6)
  store %struct.Memory* %call_47a5f6, %struct.Memory** %MEMORY

  ; Code: movswl 0x6d4528, %esi	 RIP: 47a5f9	 Bytes: 8
  %loadMem_47a5f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a5f9 = call %struct.Memory* @routine_movswl_0x6d4528___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a5f9)
  store %struct.Memory* %call_47a5f9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %esi	 RIP: 47a601	 Bytes: 3
  %loadMem_47a601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a601 = call %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a601)
  store %struct.Memory* %call_47a601, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0xf4(%rbp)	 RIP: 47a604	 Bytes: 6
  %loadMem_47a604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a604 = call %struct.Memory* @routine_movl__edx__MINUS0xf4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a604)
  store %struct.Memory* %call_47a604, %struct.Memory** %MEMORY

  ; Code: je .L_47a627	 RIP: 47a60a	 Bytes: 6
  %loadMem_47a60a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a60a = call %struct.Memory* @routine_je_.L_47a627(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a60a, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_47a60a, %struct.Memory** %MEMORY

  %loadBr_47a60a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a60a = icmp eq i8 %loadBr_47a60a, 1
  br i1 %cmpBr_47a60a, label %block_.L_47a627, label %block_47a610

block_47a610:
  ; Code: movslq -0x38(%rbp), %rax	 RIP: 47a610	 Bytes: 4
  %loadMem_47a610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a610 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a610)
  store %struct.Memory* %call_47a610, %struct.Memory** %MEMORY

  ; Code: movswl 0x4b9240(,%rax,2), %ecx	 RIP: 47a614	 Bytes: 8
  %loadMem_47a614 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a614 = call %struct.Memory* @routine_movswl_0x4b9240___rax_2____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a614)
  store %struct.Memory* %call_47a614, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xf8(%rbp)	 RIP: 47a61c	 Bytes: 6
  %loadMem_47a61c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a61c = call %struct.Memory* @routine_movl__ecx__MINUS0xf8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a61c)
  store %struct.Memory* %call_47a61c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47a639	 RIP: 47a622	 Bytes: 5
  %loadMem_47a622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a622 = call %struct.Memory* @routine_jmpq_.L_47a639(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a622, i64 23, i64 5)
  store %struct.Memory* %call_47a622, %struct.Memory** %MEMORY

  br label %block_.L_47a639

  ; Code: .L_47a627:	 RIP: 47a627	 Bytes: 0
block_.L_47a627:

  ; Code: movslq -0x38(%rbp), %rax	 RIP: 47a627	 Bytes: 4
  %loadMem_47a627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a627 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a627)
  store %struct.Memory* %call_47a627, %struct.Memory** %MEMORY

  ; Code: movswl 0x6d2040(,%rax,2), %ecx	 RIP: 47a62b	 Bytes: 8
  %loadMem_47a62b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a62b = call %struct.Memory* @routine_movswl_0x6d2040___rax_2____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a62b)
  store %struct.Memory* %call_47a62b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xf8(%rbp)	 RIP: 47a633	 Bytes: 6
  %loadMem_47a633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a633 = call %struct.Memory* @routine_movl__ecx__MINUS0xf8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a633)
  store %struct.Memory* %call_47a633, %struct.Memory** %MEMORY

  ; Code: .L_47a639:	 RIP: 47a639	 Bytes: 0
  br label %block_.L_47a639
block_.L_47a639:

  ; Code: movl -0xf8(%rbp), %eax	 RIP: 47a639	 Bytes: 6
  %loadMem_47a639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a639 = call %struct.Memory* @routine_movl_MINUS0xf8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a639)
  store %struct.Memory* %call_47a639, %struct.Memory** %MEMORY

  ; Code: movq $0x4b28d0, %rcx	 RIP: 47a63f	 Bytes: 10
  %loadMem_47a63f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a63f = call %struct.Memory* @routine_movq__0x4b28d0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a63f)
  store %struct.Memory* %call_47a63f, %struct.Memory** %MEMORY

  ; Code: movq $0x722cd0, %rdx	 RIP: 47a649	 Bytes: 10
  %loadMem_47a649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a649 = call %struct.Memory* @routine_movq__0x722cd0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a649)
  store %struct.Memory* %call_47a649, %struct.Memory** %MEMORY

  ; Code: movl -0xf4(%rbp), %esi	 RIP: 47a653	 Bytes: 6
  %loadMem_47a653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a653 = call %struct.Memory* @routine_movl_MINUS0xf4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a653)
  store %struct.Memory* %call_47a653, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xfc(%rbp)	 RIP: 47a659	 Bytes: 6
  %loadMem_47a659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a659 = call %struct.Memory* @routine_movl__eax__MINUS0xfc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a659)
  store %struct.Memory* %call_47a659, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 47a65f	 Bytes: 2
  %loadMem_47a65f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a65f = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a65f)
  store %struct.Memory* %call_47a65f, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x108(%rbp)	 RIP: 47a661	 Bytes: 7
  %loadMem_47a661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a661 = call %struct.Memory* @routine_movq__rdx__MINUS0x108__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a661)
  store %struct.Memory* %call_47a661, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 47a668	 Bytes: 1
  %loadMem_47a668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a668 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a668)
  store %struct.Memory* %call_47a668, %struct.Memory** %MEMORY

  ; Code: movl -0xfc(%rbp), %edi	 RIP: 47a669	 Bytes: 6
  %loadMem_47a669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a669 = call %struct.Memory* @routine_movl_MINUS0xfc__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a669)
  store %struct.Memory* %call_47a669, %struct.Memory** %MEMORY

  ; Code: idivl %edi	 RIP: 47a66f	 Bytes: 2
  %loadMem_47a66f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a66f = call %struct.Memory* @routine_idivl__edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a66f)
  store %struct.Memory* %call_47a66f, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %r8	 RIP: 47a671	 Bytes: 4
  %loadMem_47a671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a671 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a671)
  store %struct.Memory* %call_47a671, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %r8	 RIP: 47a675	 Bytes: 4
  %loadMem_47a675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a675 = call %struct.Memory* @routine_shlq__0x6___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a675)
  store %struct.Memory* %call_47a675, %struct.Memory** %MEMORY

  ; Code: movq -0x108(%rbp), %r9	 RIP: 47a679	 Bytes: 7
  %loadMem_47a679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a679 = call %struct.Memory* @routine_movq_MINUS0x108__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a679)
  store %struct.Memory* %call_47a679, %struct.Memory** %MEMORY

  ; Code: addq %r8, %r9	 RIP: 47a680	 Bytes: 3
  %loadMem_47a680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a680 = call %struct.Memory* @routine_addq__r8___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a680)
  store %struct.Memory* %call_47a680, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %r8	 RIP: 47a683	 Bytes: 4
  %loadMem_47a683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a683 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a683)
  store %struct.Memory* %call_47a683, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %r8	 RIP: 47a687	 Bytes: 4
  %loadMem_47a687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a687 = call %struct.Memory* @routine_shlq__0x4___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a687)
  store %struct.Memory* %call_47a687, %struct.Memory** %MEMORY

  ; Code: addq %r8, %r9	 RIP: 47a68b	 Bytes: 3
  %loadMem_47a68b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a68b = call %struct.Memory* @routine_addq__r8___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a68b)
  store %struct.Memory* %call_47a68b, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %r8	 RIP: 47a68e	 Bytes: 4
  %loadMem_47a68e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a68e = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a68e)
  store %struct.Memory* %call_47a68e, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%r9,%r8,4)	 RIP: 47a692	 Bytes: 4
  %loadMem_47a692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a692 = call %struct.Memory* @routine_movl__eax____r9__r8_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a692)
  store %struct.Memory* %call_47a692, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %r8	 RIP: 47a696	 Bytes: 4
  %loadMem_47a696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a696 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a696)
  store %struct.Memory* %call_47a696, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %r8	 RIP: 47a69a	 Bytes: 4
  %loadMem_47a69a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a69a = call %struct.Memory* @routine_shlq__0x6___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a69a)
  store %struct.Memory* %call_47a69a, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rcx	 RIP: 47a69e	 Bytes: 3
  %loadMem_47a69e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a69e = call %struct.Memory* @routine_addq__r8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a69e)
  store %struct.Memory* %call_47a69e, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %r8	 RIP: 47a6a1	 Bytes: 4
  %loadMem_47a6a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6a1 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6a1)
  store %struct.Memory* %call_47a6a1, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %r8	 RIP: 47a6a5	 Bytes: 4
  %loadMem_47a6a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6a5 = call %struct.Memory* @routine_shlq__0x4___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6a5)
  store %struct.Memory* %call_47a6a5, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rcx	 RIP: 47a6a9	 Bytes: 3
  %loadMem_47a6a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6a9 = call %struct.Memory* @routine_addq__r8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6a9)
  store %struct.Memory* %call_47a6a9, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %r8	 RIP: 47a6ac	 Bytes: 4
  %loadMem_47a6ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6ac = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6ac)
  store %struct.Memory* %call_47a6ac, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%r8,4), %eax	 RIP: 47a6b0	 Bytes: 4
  %loadMem_47a6b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6b0 = call %struct.Memory* @routine_movl___rcx__r8_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6b0)
  store %struct.Memory* %call_47a6b0, %struct.Memory** %MEMORY

  ; Code: movswl 0x6d4528, %r10d	 RIP: 47a6b4	 Bytes: 9
  %loadMem_47a6b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6b4 = call %struct.Memory* @routine_movswl_0x6d4528___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6b4)
  store %struct.Memory* %call_47a6b4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %r10d	 RIP: 47a6bd	 Bytes: 4
  %loadMem_47a6bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6bd = call %struct.Memory* @routine_cmpl__0x0___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6bd)
  store %struct.Memory* %call_47a6bd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10c(%rbp)	 RIP: 47a6c1	 Bytes: 6
  %loadMem_47a6c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6c1 = call %struct.Memory* @routine_movl__eax__MINUS0x10c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6c1)
  store %struct.Memory* %call_47a6c1, %struct.Memory** %MEMORY

  ; Code: je .L_47a6e4	 RIP: 47a6c7	 Bytes: 6
  %loadMem_47a6c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6c7 = call %struct.Memory* @routine_je_.L_47a6e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6c7, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_47a6c7, %struct.Memory** %MEMORY

  %loadBr_47a6c7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a6c7 = icmp eq i8 %loadBr_47a6c7, 1
  br i1 %cmpBr_47a6c7, label %block_.L_47a6e4, label %block_47a6cd

block_47a6cd:
  ; Code: movslq -0x38(%rbp), %rax	 RIP: 47a6cd	 Bytes: 4
  %loadMem_47a6cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6cd = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6cd)
  store %struct.Memory* %call_47a6cd, %struct.Memory** %MEMORY

  ; Code: movswl 0x4b9240(,%rax,2), %ecx	 RIP: 47a6d1	 Bytes: 8
  %loadMem_47a6d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6d1 = call %struct.Memory* @routine_movswl_0x4b9240___rax_2____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6d1)
  store %struct.Memory* %call_47a6d1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x110(%rbp)	 RIP: 47a6d9	 Bytes: 6
  %loadMem_47a6d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6d9 = call %struct.Memory* @routine_movl__ecx__MINUS0x110__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6d9)
  store %struct.Memory* %call_47a6d9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47a6f6	 RIP: 47a6df	 Bytes: 5
  %loadMem_47a6df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6df = call %struct.Memory* @routine_jmpq_.L_47a6f6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6df, i64 23, i64 5)
  store %struct.Memory* %call_47a6df, %struct.Memory** %MEMORY

  br label %block_.L_47a6f6

  ; Code: .L_47a6e4:	 RIP: 47a6e4	 Bytes: 0
block_.L_47a6e4:

  ; Code: movslq -0x38(%rbp), %rax	 RIP: 47a6e4	 Bytes: 4
  %loadMem_47a6e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6e4 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6e4)
  store %struct.Memory* %call_47a6e4, %struct.Memory** %MEMORY

  ; Code: movswl 0x6d2040(,%rax,2), %ecx	 RIP: 47a6e8	 Bytes: 8
  %loadMem_47a6e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6e8 = call %struct.Memory* @routine_movswl_0x6d2040___rax_2____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6e8)
  store %struct.Memory* %call_47a6e8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x110(%rbp)	 RIP: 47a6f0	 Bytes: 6
  %loadMem_47a6f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6f0 = call %struct.Memory* @routine_movl__ecx__MINUS0x110__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6f0)
  store %struct.Memory* %call_47a6f0, %struct.Memory** %MEMORY

  ; Code: .L_47a6f6:	 RIP: 47a6f6	 Bytes: 0
  br label %block_.L_47a6f6
block_.L_47a6f6:

  ; Code: movl -0x110(%rbp), %eax	 RIP: 47a6f6	 Bytes: 6
  %loadMem_47a6f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6f6 = call %struct.Memory* @routine_movl_MINUS0x110__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6f6)
  store %struct.Memory* %call_47a6f6, %struct.Memory** %MEMORY

  ; Code: movq $0x723b20, %rcx	 RIP: 47a6fc	 Bytes: 10
  %loadMem_47a6fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a6fc = call %struct.Memory* @routine_movq__0x723b20___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a6fc)
  store %struct.Memory* %call_47a6fc, %struct.Memory** %MEMORY

  ; Code: movl -0x10c(%rbp), %edx	 RIP: 47a706	 Bytes: 6
  %loadMem_47a706 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a706 = call %struct.Memory* @routine_movl_MINUS0x10c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a706)
  store %struct.Memory* %call_47a706, %struct.Memory** %MEMORY

  ; Code: imull %eax, %edx	 RIP: 47a70c	 Bytes: 3
  %loadMem_47a70c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a70c = call %struct.Memory* @routine_imull__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a70c)
  store %struct.Memory* %call_47a70c, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rsi	 RIP: 47a70f	 Bytes: 4
  %loadMem_47a70f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a70f = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a70f)
  store %struct.Memory* %call_47a70f, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 47a713	 Bytes: 4
  %loadMem_47a713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a713 = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a713)
  store %struct.Memory* %call_47a713, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 47a717	 Bytes: 3
  %loadMem_47a717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a717 = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a717)
  store %struct.Memory* %call_47a717, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rsi	 RIP: 47a71a	 Bytes: 4
  %loadMem_47a71a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a71a = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a71a)
  store %struct.Memory* %call_47a71a, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rsi	 RIP: 47a71e	 Bytes: 4
  %loadMem_47a71e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a71e = call %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a71e)
  store %struct.Memory* %call_47a71e, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 47a722	 Bytes: 3
  %loadMem_47a722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a722 = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a722)
  store %struct.Memory* %call_47a722, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rsi	 RIP: 47a725	 Bytes: 4
  %loadMem_47a725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a725 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a725)
  store %struct.Memory* %call_47a725, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rcx,%rsi,4)	 RIP: 47a729	 Bytes: 3
  %loadMem_47a729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a729 = call %struct.Memory* @routine_movl__edx____rcx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a729)
  store %struct.Memory* %call_47a729, %struct.Memory** %MEMORY

  ; Code: .L_47a72c:	 RIP: 47a72c	 Bytes: 0
  br label %block_.L_47a72c
block_.L_47a72c:

  ; Code: cmpl $0x0, -0x3c(%rbp)	 RIP: 47a72c	 Bytes: 4
  %loadMem_47a72c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a72c = call %struct.Memory* @routine_cmpl__0x0__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a72c)
  store %struct.Memory* %call_47a72c, %struct.Memory** %MEMORY

  ; Code: jne .L_47a7db	 RIP: 47a730	 Bytes: 6
  %loadMem_47a730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a730 = call %struct.Memory* @routine_jne_.L_47a7db(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a730, i8* %BRANCH_TAKEN, i64 171, i64 6, i64 6)
  store %struct.Memory* %call_47a730, %struct.Memory** %MEMORY

  %loadBr_47a730 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a730 = icmp eq i8 %loadBr_47a730, 1
  br i1 %cmpBr_47a730, label %block_.L_47a7db, label %block_47a736

block_47a736:
  ; Code: movq $0x723b20, %rax	 RIP: 47a736	 Bytes: 10
  %loadMem_47a736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a736 = call %struct.Memory* @routine_movq__0x723b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a736)
  store %struct.Memory* %call_47a736, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 47a740	 Bytes: 3
  %loadMem_47a740 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a740 = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a740)
  store %struct.Memory* %call_47a740, %struct.Memory** %MEMORY

  ; Code: addq $0x180, %rcx	 RIP: 47a743	 Bytes: 7
  %loadMem_47a743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a743 = call %struct.Memory* @routine_addq__0x180___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a743)
  store %struct.Memory* %call_47a743, %struct.Memory** %MEMORY

  ; Code: movq $0x722cd0, %rdx	 RIP: 47a74a	 Bytes: 10
  %loadMem_47a74a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a74a = call %struct.Memory* @routine_movq__0x722cd0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a74a)
  store %struct.Memory* %call_47a74a, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rsi	 RIP: 47a754	 Bytes: 3
  %loadMem_47a754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a754 = call %struct.Memory* @routine_movq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a754)
  store %struct.Memory* %call_47a754, %struct.Memory** %MEMORY

  ; Code: addq $0x180, %rsi	 RIP: 47a757	 Bytes: 7
  %loadMem_47a757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a757 = call %struct.Memory* @routine_addq__0x180___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a757)
  store %struct.Memory* %call_47a757, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rdi	 RIP: 47a75e	 Bytes: 4
  %loadMem_47a75e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a75e = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a75e)
  store %struct.Memory* %call_47a75e, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdi	 RIP: 47a762	 Bytes: 4
  %loadMem_47a762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a762 = call %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a762)
  store %struct.Memory* %call_47a762, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rdx	 RIP: 47a766	 Bytes: 3
  %loadMem_47a766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a766 = call %struct.Memory* @routine_addq__rdi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a766)
  store %struct.Memory* %call_47a766, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdi	 RIP: 47a769	 Bytes: 4
  %loadMem_47a769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a769 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a769)
  store %struct.Memory* %call_47a769, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdi	 RIP: 47a76d	 Bytes: 4
  %loadMem_47a76d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a76d = call %struct.Memory* @routine_shlq__0x4___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a76d)
  store %struct.Memory* %call_47a76d, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rdx	 RIP: 47a771	 Bytes: 3
  %loadMem_47a771 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a771 = call %struct.Memory* @routine_addq__rdi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a771)
  store %struct.Memory* %call_47a771, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdi	 RIP: 47a774	 Bytes: 4
  %loadMem_47a774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a774 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a774)
  store %struct.Memory* %call_47a774, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%rdi,4), %r8d	 RIP: 47a778	 Bytes: 4
  %loadMem_47a778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a778 = call %struct.Memory* @routine_movl___rdx__rdi_4____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a778)
  store %struct.Memory* %call_47a778, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rdx	 RIP: 47a77c	 Bytes: 4
  %loadMem_47a77c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a77c = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a77c)
  store %struct.Memory* %call_47a77c, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 47a780	 Bytes: 4
  %loadMem_47a780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a780 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a780)
  store %struct.Memory* %call_47a780, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 47a784	 Bytes: 3
  %loadMem_47a784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a784 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a784)
  store %struct.Memory* %call_47a784, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdx	 RIP: 47a787	 Bytes: 4
  %loadMem_47a787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a787 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a787)
  store %struct.Memory* %call_47a787, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 47a78b	 Bytes: 4
  %loadMem_47a78b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a78b = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a78b)
  store %struct.Memory* %call_47a78b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 47a78f	 Bytes: 3
  %loadMem_47a78f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a78f = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a78f)
  store %struct.Memory* %call_47a78f, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 47a792	 Bytes: 4
  %loadMem_47a792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a792 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a792)
  store %struct.Memory* %call_47a792, %struct.Memory** %MEMORY

  ; Code: movl %r8d, (%rsi,%rdx,4)	 RIP: 47a796	 Bytes: 4
  %loadMem_47a796 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a796 = call %struct.Memory* @routine_movl__r8d____rsi__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a796)
  store %struct.Memory* %call_47a796, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rdx	 RIP: 47a79a	 Bytes: 4
  %loadMem_47a79a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a79a = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a79a)
  store %struct.Memory* %call_47a79a, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 47a79e	 Bytes: 4
  %loadMem_47a79e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a79e = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a79e)
  store %struct.Memory* %call_47a79e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 47a7a2	 Bytes: 3
  %loadMem_47a7a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7a2 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7a2)
  store %struct.Memory* %call_47a7a2, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdx	 RIP: 47a7a5	 Bytes: 4
  %loadMem_47a7a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7a5 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7a5)
  store %struct.Memory* %call_47a7a5, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 47a7a9	 Bytes: 4
  %loadMem_47a7a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7a9 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7a9)
  store %struct.Memory* %call_47a7a9, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 47a7ad	 Bytes: 3
  %loadMem_47a7ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7ad = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7ad)
  store %struct.Memory* %call_47a7ad, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 47a7b0	 Bytes: 4
  %loadMem_47a7b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7b0 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7b0)
  store %struct.Memory* %call_47a7b0, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %r8d	 RIP: 47a7b4	 Bytes: 4
  %loadMem_47a7b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7b4 = call %struct.Memory* @routine_movl___rax__rdx_4____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7b4)
  store %struct.Memory* %call_47a7b4, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rax	 RIP: 47a7b8	 Bytes: 4
  %loadMem_47a7b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7b8 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7b8)
  store %struct.Memory* %call_47a7b8, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rax	 RIP: 47a7bc	 Bytes: 4
  %loadMem_47a7bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7bc = call %struct.Memory* @routine_shlq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7bc)
  store %struct.Memory* %call_47a7bc, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rcx	 RIP: 47a7c0	 Bytes: 3
  %loadMem_47a7c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7c0 = call %struct.Memory* @routine_addq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7c0)
  store %struct.Memory* %call_47a7c0, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rax	 RIP: 47a7c3	 Bytes: 4
  %loadMem_47a7c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7c3 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7c3)
  store %struct.Memory* %call_47a7c3, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rax	 RIP: 47a7c7	 Bytes: 4
  %loadMem_47a7c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7c7 = call %struct.Memory* @routine_shlq__0x4___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7c7)
  store %struct.Memory* %call_47a7c7, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rcx	 RIP: 47a7cb	 Bytes: 3
  %loadMem_47a7cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7cb = call %struct.Memory* @routine_addq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7cb)
  store %struct.Memory* %call_47a7cb, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rax	 RIP: 47a7ce	 Bytes: 4
  %loadMem_47a7ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7ce = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7ce)
  store %struct.Memory* %call_47a7ce, %struct.Memory** %MEMORY

  ; Code: movl %r8d, (%rcx,%rax,4)	 RIP: 47a7d2	 Bytes: 4
  %loadMem_47a7d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7d2 = call %struct.Memory* @routine_movl__r8d____rcx__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7d2)
  store %struct.Memory* %call_47a7d2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47a946	 RIP: 47a7d6	 Bytes: 5
  %loadMem_47a7d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7d6 = call %struct.Memory* @routine_jmpq_.L_47a946(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7d6, i64 368, i64 5)
  store %struct.Memory* %call_47a7d6, %struct.Memory** %MEMORY

  br label %block_.L_47a946

  ; Code: .L_47a7db:	 RIP: 47a7db	 Bytes: 0
block_.L_47a7db:

  ; Code: movq $0x4b2750, %rax	 RIP: 47a7db	 Bytes: 10
  %loadMem_47a7db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7db = call %struct.Memory* @routine_movq__0x4b2750___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7db)
  store %struct.Memory* %call_47a7db, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 47a7e5	 Bytes: 4
  %loadMem_47a7e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7e5 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7e5)
  store %struct.Memory* %call_47a7e5, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 47a7e9	 Bytes: 4
  %loadMem_47a7e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7e9 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7e9)
  store %struct.Memory* %call_47a7e9, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47a7ed	 Bytes: 3
  %loadMem_47a7ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7ed = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7ed)
  store %struct.Memory* %call_47a7ed, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 47a7f0	 Bytes: 4
  %loadMem_47a7f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7f0 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7f0)
  store %struct.Memory* %call_47a7f0, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 47a7f4	 Bytes: 4
  %loadMem_47a7f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7f4 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7f4)
  store %struct.Memory* %call_47a7f4, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 47a7f8	 Bytes: 3
  %loadMem_47a7f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7f8 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7f8)
  store %struct.Memory* %call_47a7f8, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 47a7fb	 Bytes: 4
  %loadMem_47a7fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7fb = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7fb)
  store %struct.Memory* %call_47a7fb, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 47a7ff	 Bytes: 3
  %loadMem_47a7ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a7ff = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a7ff)
  store %struct.Memory* %call_47a7ff, %struct.Memory** %MEMORY

  ; Code: shll $0x4, %edx	 RIP: 47a802	 Bytes: 3
  %loadMem_47a802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a802 = call %struct.Memory* @routine_shll__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a802)
  store %struct.Memory* %call_47a802, %struct.Memory** %MEMORY

  ; Code: movswl 0x6d452a, %esi	 RIP: 47a805	 Bytes: 8
  %loadMem_47a805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a805 = call %struct.Memory* @routine_movswl_0x6d452a___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a805)
  store %struct.Memory* %call_47a805, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %esi	 RIP: 47a80d	 Bytes: 3
  %loadMem_47a80d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a80d = call %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a80d)
  store %struct.Memory* %call_47a80d, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x114(%rbp)	 RIP: 47a810	 Bytes: 6
  %loadMem_47a810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a810 = call %struct.Memory* @routine_movl__edx__MINUS0x114__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a810)
  store %struct.Memory* %call_47a810, %struct.Memory** %MEMORY

  ; Code: je .L_47a833	 RIP: 47a816	 Bytes: 6
  %loadMem_47a816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a816 = call %struct.Memory* @routine_je_.L_47a833(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a816, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_47a816, %struct.Memory** %MEMORY

  %loadBr_47a816 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a816 = icmp eq i8 %loadBr_47a816, 1
  br i1 %cmpBr_47a816, label %block_.L_47a833, label %block_47a81c

block_47a81c:
  ; Code: movslq -0x38(%rbp), %rax	 RIP: 47a81c	 Bytes: 4
  %loadMem_47a81c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a81c = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a81c)
  store %struct.Memory* %call_47a81c, %struct.Memory** %MEMORY

  ; Code: movswl 0x4b9240(,%rax,2), %ecx	 RIP: 47a820	 Bytes: 8
  %loadMem_47a820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a820 = call %struct.Memory* @routine_movswl_0x4b9240___rax_2____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a820)
  store %struct.Memory* %call_47a820, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x118(%rbp)	 RIP: 47a828	 Bytes: 6
  %loadMem_47a828 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a828 = call %struct.Memory* @routine_movl__ecx__MINUS0x118__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a828)
  store %struct.Memory* %call_47a828, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47a845	 RIP: 47a82e	 Bytes: 5
  %loadMem_47a82e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a82e = call %struct.Memory* @routine_jmpq_.L_47a845(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a82e, i64 23, i64 5)
  store %struct.Memory* %call_47a82e, %struct.Memory** %MEMORY

  br label %block_.L_47a845

  ; Code: .L_47a833:	 RIP: 47a833	 Bytes: 0
block_.L_47a833:

  ; Code: movslq -0x38(%rbp), %rax	 RIP: 47a833	 Bytes: 4
  %loadMem_47a833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a833 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a833)
  store %struct.Memory* %call_47a833, %struct.Memory** %MEMORY

  ; Code: movswl 0x6d2060(,%rax,2), %ecx	 RIP: 47a837	 Bytes: 8
  %loadMem_47a837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a837 = call %struct.Memory* @routine_movswl_0x6d2060___rax_2____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a837)
  store %struct.Memory* %call_47a837, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x118(%rbp)	 RIP: 47a83f	 Bytes: 6
  %loadMem_47a83f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a83f = call %struct.Memory* @routine_movl__ecx__MINUS0x118__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a83f)
  store %struct.Memory* %call_47a83f, %struct.Memory** %MEMORY

  ; Code: .L_47a845:	 RIP: 47a845	 Bytes: 0
  br label %block_.L_47a845
block_.L_47a845:

  ; Code: movl -0x118(%rbp), %eax	 RIP: 47a845	 Bytes: 6
  %loadMem_47a845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a845 = call %struct.Memory* @routine_movl_MINUS0x118__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a845)
  store %struct.Memory* %call_47a845, %struct.Memory** %MEMORY

  ; Code: movq $0x4b28d0, %rcx	 RIP: 47a84b	 Bytes: 10
  %loadMem_47a84b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a84b = call %struct.Memory* @routine_movq__0x4b28d0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a84b)
  store %struct.Memory* %call_47a84b, %struct.Memory** %MEMORY

  ; Code: movq $0x722cd0, %rdx	 RIP: 47a855	 Bytes: 10
  %loadMem_47a855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a855 = call %struct.Memory* @routine_movq__0x722cd0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a855)
  store %struct.Memory* %call_47a855, %struct.Memory** %MEMORY

  ; Code: addq $0x180, %rdx	 RIP: 47a85f	 Bytes: 7
  %loadMem_47a85f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a85f = call %struct.Memory* @routine_addq__0x180___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a85f)
  store %struct.Memory* %call_47a85f, %struct.Memory** %MEMORY

  ; Code: movl -0x114(%rbp), %esi	 RIP: 47a866	 Bytes: 6
  %loadMem_47a866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a866 = call %struct.Memory* @routine_movl_MINUS0x114__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a866)
  store %struct.Memory* %call_47a866, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x11c(%rbp)	 RIP: 47a86c	 Bytes: 6
  %loadMem_47a86c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a86c = call %struct.Memory* @routine_movl__eax__MINUS0x11c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a86c)
  store %struct.Memory* %call_47a86c, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 47a872	 Bytes: 2
  %loadMem_47a872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a872 = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a872)
  store %struct.Memory* %call_47a872, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x128(%rbp)	 RIP: 47a874	 Bytes: 7
  %loadMem_47a874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a874 = call %struct.Memory* @routine_movq__rdx__MINUS0x128__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a874)
  store %struct.Memory* %call_47a874, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 47a87b	 Bytes: 1
  %loadMem_47a87b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a87b = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a87b)
  store %struct.Memory* %call_47a87b, %struct.Memory** %MEMORY

  ; Code: movl -0x11c(%rbp), %edi	 RIP: 47a87c	 Bytes: 6
  %loadMem_47a87c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a87c = call %struct.Memory* @routine_movl_MINUS0x11c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a87c)
  store %struct.Memory* %call_47a87c, %struct.Memory** %MEMORY

  ; Code: idivl %edi	 RIP: 47a882	 Bytes: 2
  %loadMem_47a882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a882 = call %struct.Memory* @routine_idivl__edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a882)
  store %struct.Memory* %call_47a882, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %r8	 RIP: 47a884	 Bytes: 4
  %loadMem_47a884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a884 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a884)
  store %struct.Memory* %call_47a884, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %r8	 RIP: 47a888	 Bytes: 4
  %loadMem_47a888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a888 = call %struct.Memory* @routine_shlq__0x6___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a888)
  store %struct.Memory* %call_47a888, %struct.Memory** %MEMORY

  ; Code: movq -0x128(%rbp), %r9	 RIP: 47a88c	 Bytes: 7
  %loadMem_47a88c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a88c = call %struct.Memory* @routine_movq_MINUS0x128__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a88c)
  store %struct.Memory* %call_47a88c, %struct.Memory** %MEMORY

  ; Code: addq %r8, %r9	 RIP: 47a893	 Bytes: 3
  %loadMem_47a893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a893 = call %struct.Memory* @routine_addq__r8___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a893)
  store %struct.Memory* %call_47a893, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %r8	 RIP: 47a896	 Bytes: 4
  %loadMem_47a896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a896 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a896)
  store %struct.Memory* %call_47a896, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %r8	 RIP: 47a89a	 Bytes: 4
  %loadMem_47a89a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a89a = call %struct.Memory* @routine_shlq__0x4___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a89a)
  store %struct.Memory* %call_47a89a, %struct.Memory** %MEMORY

  ; Code: addq %r8, %r9	 RIP: 47a89e	 Bytes: 3
  %loadMem_47a89e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a89e = call %struct.Memory* @routine_addq__r8___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a89e)
  store %struct.Memory* %call_47a89e, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %r8	 RIP: 47a8a1	 Bytes: 4
  %loadMem_47a8a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8a1 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8a1)
  store %struct.Memory* %call_47a8a1, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%r9,%r8,4)	 RIP: 47a8a5	 Bytes: 4
  %loadMem_47a8a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8a5 = call %struct.Memory* @routine_movl__eax____r9__r8_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8a5)
  store %struct.Memory* %call_47a8a5, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %r8	 RIP: 47a8a9	 Bytes: 4
  %loadMem_47a8a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8a9 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8a9)
  store %struct.Memory* %call_47a8a9, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %r8	 RIP: 47a8ad	 Bytes: 4
  %loadMem_47a8ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8ad = call %struct.Memory* @routine_shlq__0x6___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8ad)
  store %struct.Memory* %call_47a8ad, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rcx	 RIP: 47a8b1	 Bytes: 3
  %loadMem_47a8b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8b1 = call %struct.Memory* @routine_addq__r8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8b1)
  store %struct.Memory* %call_47a8b1, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %r8	 RIP: 47a8b4	 Bytes: 4
  %loadMem_47a8b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8b4 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8b4)
  store %struct.Memory* %call_47a8b4, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %r8	 RIP: 47a8b8	 Bytes: 4
  %loadMem_47a8b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8b8 = call %struct.Memory* @routine_shlq__0x4___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8b8)
  store %struct.Memory* %call_47a8b8, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rcx	 RIP: 47a8bc	 Bytes: 3
  %loadMem_47a8bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8bc = call %struct.Memory* @routine_addq__r8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8bc)
  store %struct.Memory* %call_47a8bc, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %r8	 RIP: 47a8bf	 Bytes: 4
  %loadMem_47a8bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8bf = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8bf)
  store %struct.Memory* %call_47a8bf, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%r8,4), %eax	 RIP: 47a8c3	 Bytes: 4
  %loadMem_47a8c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8c3 = call %struct.Memory* @routine_movl___rcx__r8_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8c3)
  store %struct.Memory* %call_47a8c3, %struct.Memory** %MEMORY

  ; Code: movswl 0x6d452a, %r10d	 RIP: 47a8c7	 Bytes: 9
  %loadMem_47a8c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8c7 = call %struct.Memory* @routine_movswl_0x6d452a___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8c7)
  store %struct.Memory* %call_47a8c7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %r10d	 RIP: 47a8d0	 Bytes: 4
  %loadMem_47a8d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8d0 = call %struct.Memory* @routine_cmpl__0x0___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8d0)
  store %struct.Memory* %call_47a8d0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x12c(%rbp)	 RIP: 47a8d4	 Bytes: 6
  %loadMem_47a8d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8d4 = call %struct.Memory* @routine_movl__eax__MINUS0x12c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8d4)
  store %struct.Memory* %call_47a8d4, %struct.Memory** %MEMORY

  ; Code: je .L_47a8f7	 RIP: 47a8da	 Bytes: 6
  %loadMem_47a8da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8da = call %struct.Memory* @routine_je_.L_47a8f7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8da, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_47a8da, %struct.Memory** %MEMORY

  %loadBr_47a8da = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47a8da = icmp eq i8 %loadBr_47a8da, 1
  br i1 %cmpBr_47a8da, label %block_.L_47a8f7, label %block_47a8e0

block_47a8e0:
  ; Code: movslq -0x38(%rbp), %rax	 RIP: 47a8e0	 Bytes: 4
  %loadMem_47a8e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8e0 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8e0)
  store %struct.Memory* %call_47a8e0, %struct.Memory** %MEMORY

  ; Code: movswl 0x4b9240(,%rax,2), %ecx	 RIP: 47a8e4	 Bytes: 8
  %loadMem_47a8e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8e4 = call %struct.Memory* @routine_movswl_0x4b9240___rax_2____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8e4)
  store %struct.Memory* %call_47a8e4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x130(%rbp)	 RIP: 47a8ec	 Bytes: 6
  %loadMem_47a8ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8ec = call %struct.Memory* @routine_movl__ecx__MINUS0x130__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8ec)
  store %struct.Memory* %call_47a8ec, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47a909	 RIP: 47a8f2	 Bytes: 5
  %loadMem_47a8f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8f2 = call %struct.Memory* @routine_jmpq_.L_47a909(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8f2, i64 23, i64 5)
  store %struct.Memory* %call_47a8f2, %struct.Memory** %MEMORY

  br label %block_.L_47a909

  ; Code: .L_47a8f7:	 RIP: 47a8f7	 Bytes: 0
block_.L_47a8f7:

  ; Code: movslq -0x38(%rbp), %rax	 RIP: 47a8f7	 Bytes: 4
  %loadMem_47a8f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8f7 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8f7)
  store %struct.Memory* %call_47a8f7, %struct.Memory** %MEMORY

  ; Code: movswl 0x6d2060(,%rax,2), %ecx	 RIP: 47a8fb	 Bytes: 8
  %loadMem_47a8fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a8fb = call %struct.Memory* @routine_movswl_0x6d2060___rax_2____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a8fb)
  store %struct.Memory* %call_47a8fb, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x130(%rbp)	 RIP: 47a903	 Bytes: 6
  %loadMem_47a903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a903 = call %struct.Memory* @routine_movl__ecx__MINUS0x130__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a903)
  store %struct.Memory* %call_47a903, %struct.Memory** %MEMORY

  ; Code: .L_47a909:	 RIP: 47a909	 Bytes: 0
  br label %block_.L_47a909
block_.L_47a909:

  ; Code: movl -0x130(%rbp), %eax	 RIP: 47a909	 Bytes: 6
  %loadMem_47a909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a909 = call %struct.Memory* @routine_movl_MINUS0x130__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a909)
  store %struct.Memory* %call_47a909, %struct.Memory** %MEMORY

  ; Code: movq $0x723b20, %rcx	 RIP: 47a90f	 Bytes: 10
  %loadMem_47a90f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a90f = call %struct.Memory* @routine_movq__0x723b20___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a90f)
  store %struct.Memory* %call_47a90f, %struct.Memory** %MEMORY

  ; Code: addq $0x180, %rcx	 RIP: 47a919	 Bytes: 7
  %loadMem_47a919 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a919 = call %struct.Memory* @routine_addq__0x180___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a919)
  store %struct.Memory* %call_47a919, %struct.Memory** %MEMORY

  ; Code: movl -0x12c(%rbp), %edx	 RIP: 47a920	 Bytes: 6
  %loadMem_47a920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a920 = call %struct.Memory* @routine_movl_MINUS0x12c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a920)
  store %struct.Memory* %call_47a920, %struct.Memory** %MEMORY

  ; Code: imull %eax, %edx	 RIP: 47a926	 Bytes: 3
  %loadMem_47a926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a926 = call %struct.Memory* @routine_imull__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a926)
  store %struct.Memory* %call_47a926, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rsi	 RIP: 47a929	 Bytes: 4
  %loadMem_47a929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a929 = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a929)
  store %struct.Memory* %call_47a929, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 47a92d	 Bytes: 4
  %loadMem_47a92d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a92d = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a92d)
  store %struct.Memory* %call_47a92d, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 47a931	 Bytes: 3
  %loadMem_47a931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a931 = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a931)
  store %struct.Memory* %call_47a931, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rsi	 RIP: 47a934	 Bytes: 4
  %loadMem_47a934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a934 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a934)
  store %struct.Memory* %call_47a934, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rsi	 RIP: 47a938	 Bytes: 4
  %loadMem_47a938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a938 = call %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a938)
  store %struct.Memory* %call_47a938, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 47a93c	 Bytes: 3
  %loadMem_47a93c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a93c = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a93c)
  store %struct.Memory* %call_47a93c, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rsi	 RIP: 47a93f	 Bytes: 4
  %loadMem_47a93f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a93f = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a93f)
  store %struct.Memory* %call_47a93f, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rcx,%rsi,4)	 RIP: 47a943	 Bytes: 3
  %loadMem_47a943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a943 = call %struct.Memory* @routine_movl__edx____rcx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a943)
  store %struct.Memory* %call_47a943, %struct.Memory** %MEMORY

  ; Code: .L_47a946:	 RIP: 47a946	 Bytes: 0
  br label %block_.L_47a946
block_.L_47a946:

  ; Code: jmpq .L_47a94b	 RIP: 47a946	 Bytes: 5
  %loadMem_47a946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a946 = call %struct.Memory* @routine_jmpq_.L_47a94b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a946, i64 5, i64 5)
  store %struct.Memory* %call_47a946, %struct.Memory** %MEMORY

  br label %block_.L_47a94b

  ; Code: .L_47a94b:	 RIP: 47a94b	 Bytes: 0
block_.L_47a94b:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 47a94b	 Bytes: 3
  %loadMem_47a94b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a94b = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a94b)
  store %struct.Memory* %call_47a94b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47a94e	 Bytes: 3
  %loadMem_47a94e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a94e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a94e)
  store %struct.Memory* %call_47a94e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 47a951	 Bytes: 3
  %loadMem_47a951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a951 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a951)
  store %struct.Memory* %call_47a951, %struct.Memory** %MEMORY

  ; Code: jmpq .L_479d28	 RIP: 47a954	 Bytes: 5
  %loadMem_47a954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a954 = call %struct.Memory* @routine_jmpq_.L_479d28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a954, i64 -3116, i64 5)
  store %struct.Memory* %call_47a954, %struct.Memory** %MEMORY

  br label %block_.L_479d28

  ; Code: .L_47a959:	 RIP: 47a959	 Bytes: 0
block_.L_47a959:

  ; Code: jmpq .L_47a95e	 RIP: 47a959	 Bytes: 5
  %loadMem_47a959 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a959 = call %struct.Memory* @routine_jmpq_.L_47a95e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a959, i64 5, i64 5)
  store %struct.Memory* %call_47a959, %struct.Memory** %MEMORY

  br label %block_.L_47a95e

  ; Code: .L_47a95e:	 RIP: 47a95e	 Bytes: 0
block_.L_47a95e:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 47a95e	 Bytes: 3
  %loadMem_47a95e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a95e = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a95e)
  store %struct.Memory* %call_47a95e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47a961	 Bytes: 3
  %loadMem_47a961 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a961 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a961)
  store %struct.Memory* %call_47a961, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 47a964	 Bytes: 3
  %loadMem_47a964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a964 = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a964)
  store %struct.Memory* %call_47a964, %struct.Memory** %MEMORY

  ; Code: jmpq .L_479d17	 RIP: 47a967	 Bytes: 5
  %loadMem_47a967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a967 = call %struct.Memory* @routine_jmpq_.L_479d17(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a967, i64 -3152, i64 5)
  store %struct.Memory* %call_47a967, %struct.Memory** %MEMORY

  br label %block_.L_479d17

  ; Code: .L_47a96c:	 RIP: 47a96c	 Bytes: 0
block_.L_47a96c:

  ; Code: jmpq .L_47a971	 RIP: 47a96c	 Bytes: 5
  %loadMem_47a96c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a96c = call %struct.Memory* @routine_jmpq_.L_47a971(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a96c, i64 5, i64 5)
  store %struct.Memory* %call_47a96c, %struct.Memory** %MEMORY

  br label %block_.L_47a971

  ; Code: .L_47a971:	 RIP: 47a971	 Bytes: 0
block_.L_47a971:

  ; Code: movl -0x34(%rbp), %eax	 RIP: 47a971	 Bytes: 3
  %loadMem_47a971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a971 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a971)
  store %struct.Memory* %call_47a971, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47a974	 Bytes: 3
  %loadMem_47a974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a974 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a974)
  store %struct.Memory* %call_47a974, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 47a977	 Bytes: 3
  %loadMem_47a977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a977 = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a977)
  store %struct.Memory* %call_47a977, %struct.Memory** %MEMORY

  ; Code: jmpq .L_479d06	 RIP: 47a97a	 Bytes: 5
  %loadMem_47a97a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a97a = call %struct.Memory* @routine_jmpq_.L_479d06(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a97a, i64 -3188, i64 5)
  store %struct.Memory* %call_47a97a, %struct.Memory** %MEMORY

  br label %block_.L_479d06

  ; Code: .L_47a97f:	 RIP: 47a97f	 Bytes: 0
block_.L_47a97f:

  ; Code: jmpq .L_47a984	 RIP: 47a97f	 Bytes: 5
  %loadMem_47a97f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a97f = call %struct.Memory* @routine_jmpq_.L_47a984(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a97f, i64 5, i64 5)
  store %struct.Memory* %call_47a97f, %struct.Memory** %MEMORY

  br label %block_.L_47a984

  ; Code: .L_47a984:	 RIP: 47a984	 Bytes: 0
block_.L_47a984:

  ; Code: addq $0x108, %rsp	 RIP: 47a984	 Bytes: 7
  %loadMem_47a984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a984 = call %struct.Memory* @routine_addq__0x108___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a984)
  store %struct.Memory* %call_47a984, %struct.Memory** %MEMORY

  ; Code: popq %rbx	 RIP: 47a98b	 Bytes: 1
  %loadMem_47a98b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a98b = call %struct.Memory* @routine_popq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a98b)
  store %struct.Memory* %call_47a98b, %struct.Memory** %MEMORY

  ; Code: popq %r12	 RIP: 47a98c	 Bytes: 2
  %loadMem_47a98c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a98c = call %struct.Memory* @routine_popq__r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a98c)
  store %struct.Memory* %call_47a98c, %struct.Memory** %MEMORY

  ; Code: popq %r13	 RIP: 47a98e	 Bytes: 2
  %loadMem_47a98e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a98e = call %struct.Memory* @routine_popq__r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a98e)
  store %struct.Memory* %call_47a98e, %struct.Memory** %MEMORY

  ; Code: popq %r14	 RIP: 47a990	 Bytes: 2
  %loadMem_47a990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a990 = call %struct.Memory* @routine_popq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a990)
  store %struct.Memory* %call_47a990, %struct.Memory** %MEMORY

  ; Code: popq %r15	 RIP: 47a992	 Bytes: 2
  %loadMem_47a992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a992 = call %struct.Memory* @routine_popq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a992)
  store %struct.Memory* %call_47a992, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 47a994	 Bytes: 1
  %loadMem_47a994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a994 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a994)
  store %struct.Memory* %call_47a994, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 47a995	 Bytes: 1
  %loadMem_47a995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47a995 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47a995)
  store %struct.Memory* %call_47a995, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_47a995
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


define %struct.Memory* @routine_pushq__r13(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 27
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R13 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R13
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_pushq__r12(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 25
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R12 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R12
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

define %struct.Memory* @routine_subq__0x108___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 264)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 84
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_0x722cb0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x722cb0_type* @G_0x722cb0 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_cmpl__0x0__0x24__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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

define %struct.Memory* @routine_jne_.L_4797fb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x6d4690___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6d4690_type* @G_0x6d4690 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_cmpl__0x0__0x14__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 20
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__0x1__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 84
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_4798eb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x18___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 24)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x50__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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


define %struct.Memory* @routine_movq_0x722cb0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x722cb0_type* @G_0x722cb0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_cmpl__0x0__0x24__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 36
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

define %struct.Memory* @routine_je_.L_47985e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x6__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 6)
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

define %struct.Memory* @routine_jge_.L_479859(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x28__rax__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, 40
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edx__MINUS0x50__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -80
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EDX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
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


define %struct.Memory* @routine_jmpq_.L_479829(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_47985e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_je_.L_4798e6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_4798e1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_479895(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x3__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4798b6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_0x18__rax__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, 24
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %19)
  ret %struct.Memory* %22
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %3 to i32
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7
  %9 = or i32 %8, %6
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %2, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = and i32 %9, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12) #22
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = icmp eq i32 %9, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i32 %9, 31
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_orl_MINUS0x50__rbp__rax_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -80
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_jmpq_.L_4798ce(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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












define %struct.Memory* @routine_jmpq_.L_4798d3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_479877(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_4798e6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_cmpl__0x1__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 84
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_479cff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x6__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 6)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_479cfa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x4__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_479ce7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x4__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_479cd4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x723b20___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x723b20_type* @G__0x723b20 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_addq__0x180___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 384)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__0x4b28d0___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x4b28d0_type* @G__0x4b28d0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x722cd0___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x722cd0_type* @G__0x722cd0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rsi___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_addq__0x180___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 384)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__0x4b2750___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G__0x4b2750_type* @G__0x4b2750 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x6d09f0___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 ptrtoint( %G__0x6d09f0_type* @G__0x6d09f0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x70fe80___r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 ptrtoint( %G__0x70fe80_type* @G__0x70fe80 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x70d1b0___r11(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R11, i64 ptrtoint( %G__0x70d1b0_type* @G__0x70d1b0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__r11___rbx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R11
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_addq__0x180___rbx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %9, i64 384)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__0x6f73a0___r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R14, i64 ptrtoint( %G__0x6f73a0_type* @G__0x6f73a0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__r14___r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 31
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R15 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R14
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R15, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_addq__0x180___r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R15, i64 %9, i64 384)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__0x70d010___r12(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 25
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R12 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R12, i64 ptrtoint( %G__0x70d010_type* @G__0x70d010 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x70e8f0___r13(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 27
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R13 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R13, i64 ptrtoint( %G__0x70e8f0_type* @G__0x70e8f0 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_shlq__0x6___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 6)
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


define %struct.Memory* @routine_movq__r8___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq__rcx__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
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


define %struct.Memory* @routine_shlq__0x4___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 4)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movl___rax__rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x6___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 6)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__rcx___r13(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 27
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R13 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R13
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R13, i64 %12, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl__eax____r13__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 27
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R13 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %R13
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EAX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 5
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}






define %struct.Memory* @routine_movq__rdx___r13(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 27
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R13 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R13, i64 %12)
  ret %struct.Memory* %15
}












define %struct.Memory* @routine_movl___r13__rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 27
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R13 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %R13
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %18)
  ret %struct.Memory* %21
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %4 to i5
  switch i5 %6, label %13 [
    i5 0, label %45
    i5 1, label %7
  ]

; <label>:7:                                      ; preds = %5
  %8 = trunc i64 %3 to i32
  %9 = shl i32 %8, 1
  %10 = icmp slt i32 %8, 0
  %11 = icmp slt i32 %9, 0
  %12 = xor i1 %10, %11
  br label %23

; <label>:13:                                     ; preds = %5
  %14 = and i64 %4, 31
  %15 = add   i64 %14, 4294967295
  %16 = and i64 %3, 4294967295
  %17 = and i64 %15, 4294967295
  %18 = shl i64 %16, %17
  %19 = trunc i64 %18 to i32
  %20 = icmp slt i32 %19, 0
  %21 = icmp ne i8 0, 0
  %22 = shl i32 %19, 1
  br label %23

; <label>:23:                                     ; preds = %13, %7
  %24 = phi i1 [ %10, %7 ], [ %20, %13 ]
  %25 = phi i1 [ %12, %7 ], [ %21, %13 ]
  %26 = phi i32 [ %9, %7 ], [ %22, %13 ]
  %27 = zext i32 %26 to i64
  store i64 %27, i64* %2, align 8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %29 = zext i1 %24 to i8
  store i8 %29, i8* %28, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  %31 = and i32 %26, 254
  %32 = tail call i32 @llvm.ctpop.i32(i32 %31) #22
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = xor i8 %34, 1
  store i8 %35, i8* %30, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %38 = icmp eq i32 %26, 0
  %39 = zext i1 %38 to i8
  store i8 %39, i8* %37, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %41 = lshr i32 %26, 31
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %40, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %44 = zext i1 %25 to i8
  store i8 %44, i8* %43, align 1
  br label %45

; <label>:45:                                     ; preds = %23, %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_shll__0x4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 4)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_addq__rcx___r12(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 25
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R12 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R12
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R12, i64 %12, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl__eax____r12__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 25
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R12 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %R12
  %16 = load i64, i64* %RCX
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






define %struct.Memory* @routine_movq__r8___r12(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 25
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R12 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R12, i64 %12)
  ret %struct.Memory* %15
}












define %struct.Memory* @routine_movl___r12__rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 25
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R12 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %R12
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %18)
  ret %struct.Memory* %21
}






define %struct.Memory* @routine_addq__rcx___r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R14
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R14, i64 %12, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl__eax____r14__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 29
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R14 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %R14
  %16 = load i64, i64* %RCX
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






define %struct.Memory* @routine_movq__rdx___r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R14, i64 %12)
  ret %struct.Memory* %15
}












define %struct.Memory* @routine_movl___r14__rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 29
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R14 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %R14
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %18)
  ret %struct.Memory* %21
}








define %struct.Memory* @routine_addq__rcx___r11(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R11
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R11, i64 %12, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl__eax____r11__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 23
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R11 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %R11
  %16 = load i64, i64* %RCX
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






define %struct.Memory* @routine_movq__r8___r11(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R11, i64 %12)
  ret %struct.Memory* %15
}












define %struct.Memory* @routine_movl___r11__rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 23
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R11 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %R11
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %18)
  ret %struct.Memory* %21
}






define %struct.Memory* @routine_addq__rcx___r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 31
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R15 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R15
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R15, i64 %12, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl__eax____r15__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 31
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R15 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %R15
  %16 = load i64, i64* %RCX
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






define %struct.Memory* @routine_movq__rdx___r11(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R11, i64 %12)
  ret %struct.Memory* %15
}




















define %struct.Memory* @routine_addq__rcx___rbx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBX
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl__eax____rbx__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBX
  %16 = load i64, i64* %RCX
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
























define %struct.Memory* @routine_addq__rcx___r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R10
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %12, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl__eax____r10__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 21
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R10 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %R10
  %16 = load i64, i64* %RCX
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






define %struct.Memory* @routine_movq__rdx___r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %12)
  ret %struct.Memory* %15
}












define %struct.Memory* @routine_movl___r10__rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 21
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R10 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %R10
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %18)
  ret %struct.Memory* %21
}








define %struct.Memory* @routine_addq__rcx___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %12, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl__eax____r9__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 19
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R9 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %R9
  %16 = load i64, i64* %RCX
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






define %struct.Memory* @routine_movq__r8___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %12)
  ret %struct.Memory* %15
}












define %struct.Memory* @routine_movl___r9__rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 19
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R9 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %R9
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %18)
  ret %struct.Memory* %21
}






define %struct.Memory* @routine_addq__rcx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl__eax____rsi__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RCX
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












define %struct.Memory* @routine_movl___rsi__rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %18)
  ret %struct.Memory* %21
}








define %struct.Memory* @routine_movq_MINUS0x60__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


















define %struct.Memory* @routine_addq__rcx___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %12, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl___r8__rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %R8
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %18)
  ret %struct.Memory* %21
}






define %struct.Memory* @routine_addq__rcx___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl__eax____rdi__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RDI
  %16 = load i64, i64* %RCX
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






define %struct.Memory* @routine_addq__rcx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl___rdx__rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %18)
  ret %struct.Memory* %21
}








define %struct.Memory* @routine_movq_MINUS0x70__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movl__eax____rdx__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RCX
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








define %struct.Memory* @routine_jmpq_.L_47991e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_479cd9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_47990d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_479cec(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4798fc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_47a984(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






define %struct.Memory* @routine_jge_.L_47a97f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_47a96c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_47a959(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_shll__0x2___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 2)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_addl_MINUS0x30__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_479d59(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i16*
  %6 = load i16, i16* %5
  %7 = sext i16 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movswl_0x6d4520___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6d4520_type* @G_0x6d4520 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_je_.L_479e34(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x70d010___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x70d010_type* @G__0x70d010 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x4b28d0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x4b28d0_type* @G__0x4b28d0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x70e8f0___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x70e8f0_type* @G__0x70e8f0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x4b2750___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4b2750_type* @G__0x4b2750 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x6___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 6)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__rdi___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RDI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x4___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 4)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movl___rsi__rdi_4____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R8D to i64*
  %16 = load i64, i64* %RSI
  %17 = load i64, i64* %RDI
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_shll__0x4___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 4)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movswl_0x4b9260___rsi_2____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RSI
  %14 = mul i64 %13, 2
  %15 = add i64 %14, 4952672
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 9
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__r8d___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rdx__MINUS0x80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_idivl__r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %R9D
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x6___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 6)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq_MINUS0x80__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addq__rsi___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RSI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x4___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 4)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax____rdi__rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDI
  %16 = load i64, i64* %RSI
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






define %struct.Memory* @routine_addq__rsi___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RSI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl___rcx__rsi_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movswl_0x4b9260___rcx_2____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 2
  %15 = add i64 %14, 4952672
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 9
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = shl i64 %3, 32
  %7 = ashr exact i64 %6, 32
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = mul  i64 %9, %7
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %2, align 8
  %13 = shl i64 %10, 32
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #22
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_imull__r8d___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i32, i32* %R8D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movq_MINUS0x78__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_jmpq_.L_479f16(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






























define %struct.Memory* @routine_movswl_0x6d1fc0___rsi_2____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RSI
  %14 = mul i64 %13, 2
  %15 = add i64 %14, 7151552
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 9
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__rax__MINUS0x88__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__rdx__MINUS0x90__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_movq_MINUS0x90__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}
































define %struct.Memory* @routine_movswl_0x6d1fc0___rcx_2____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 2
  %15 = add i64 %14, 7151552
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 9
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movq_MINUS0x88__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_cmpl__0x0__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 76
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_479fc5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x70d1b0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x70d1b0_type* @G__0x70d1b0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x70d010___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x70d010_type* @G__0x70d010 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x6f73a0___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x6f73a0_type* @G__0x6f73a0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x70e8f0___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x70e8f0_type* @G__0x70e8f0 to i64))
  ret %struct.Memory* %11
}






















define %struct.Memory* @routine_addq__rsi___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RSI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl__r8d____rdx__rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %R8D
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
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


define %struct.Memory* @routine_shlq__0x6___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 6)
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


define %struct.Memory* @routine_shlq__0x4___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 4)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movl___rcx__rdx_4____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R8D to i64*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %19)
  ret %struct.Memory* %22
}
















define %struct.Memory* @routine_movl__r8d____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %19 = load i32, i32* %R8D
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_jmpq_.L_47a122(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_movq__0x4b2750___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b2750_type* @G__0x4b2750 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_shll__0x4___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 4)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movswl_0x6d4522___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x6d4522_type* @G_0x6d4522 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__edx__MINUS0x94__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 148
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_47a01d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movswl_0x4b9260___rax_2____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 4952672
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__MINUS0x98__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_47a02f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movswl_0x6d1fe0___rax_2____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 7151584
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x98__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl_MINUS0x94__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 156
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__esi___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rdx__MINUS0xa8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x9c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 156
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_idivl__edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDI = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EDI
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 2
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0x34__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x6___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R8
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %9, i64 6)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq_MINUS0xa8__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addq__r8___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x30__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x4___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R8
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %9, i64 4)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax____r9__r8_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %R9
  %16 = load i64, i64* %R8
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






define %struct.Memory* @routine_addq__r8___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl___rcx__r8_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movswl_0x6d4522___r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R10D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 ptrtoint( %G_0x6d4522_type* @G_0x6d4522 to i64))
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_cmpl__0x0___r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %R10D
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 172
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_47a0da(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__ecx__MINUS0xb0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 176
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_47a0ec(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl_MINUS0xb0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__0x70d1b0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x70d1b0_type* @G__0x70d1b0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0xac__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imull__eax___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}
















define %struct.Memory* @routine_movl__edx____rcx__rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RSI
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


define %struct.Memory* @routine_jne_.L_47a1d1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_addq__0x180___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 384)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_addq__rdi___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RDI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl___rdx__rdi_4____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R8D to i64*
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %RDI
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %19)
  ret %struct.Memory* %22
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










define %struct.Memory* @routine_movl__r8d____rsi__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %R8D
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
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










define %struct.Memory* @routine_movl___rax__rdx_4____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R8D to i64*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %19)
  ret %struct.Memory* %22
}






define %struct.Memory* @routine_addq__rax___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_shlq__0x4___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 4)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movl__r8d____rcx__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %R8D
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_jmpq_.L_47a33c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






















define %struct.Memory* @routine_movswl_0x6d4524___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x6d4524_type* @G_0x6d4524 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__edx__MINUS0xb4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 180
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_47a229(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__ecx__MINUS0xb8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 184
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_47a23b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movswl_0x6d2000___rax_2____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 7151616
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0xb8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_addq__0x180___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 384)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl_MINUS0xb4__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 180
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 188
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movq__rdx__MINUS0xc8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 200
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0xbc__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 188
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movq_MINUS0xc8__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}






























define %struct.Memory* @routine_movswl_0x6d4524___r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R10D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 ptrtoint( %G_0x6d4524_type* @G_0x6d4524 to i64))
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movl__eax__MINUS0xcc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 204
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_47a2ed(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__ecx__MINUS0xd0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 208
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_47a2ff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl_MINUS0xd0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 208
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl_MINUS0xcc__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 204
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




















define %struct.Memory* @routine_cmpl__0x0__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 68
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_47a357(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movswl_0x6d4526___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6d4526_type* @G_0x6d4526 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_je_.L_47a43e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x6d09f0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x6d09f0_type* @G__0x6d09f0 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq__0x70fe80___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x70fe80_type* @G__0x70fe80 to i64))
  ret %struct.Memory* %11
}
























define %struct.Memory* @routine_movswl_0x4b9240___rsi_2____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RSI
  %14 = mul i64 %13, 2
  %15 = add i64 %14, 4952640
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 9
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__rax__MINUS0xd8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 216
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__rdx__MINUS0xe0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 224
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_movq_MINUS0xe0__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}
































define %struct.Memory* @routine_movswl_0x4b9240___rcx_2____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 2
  %15 = add i64 %14, 4952640
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 9
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movq_MINUS0xd8__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 216
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_jmpq_.L_47a520(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






























define %struct.Memory* @routine_movswl_0x6d2020___rsi_2____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RSI
  %14 = mul i64 %13, 2
  %15 = add i64 %14, 7151648
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 9
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__rax__MINUS0xe8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 232
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__rdx__MINUS0xf0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 240
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_movq_MINUS0xf0__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}
































define %struct.Memory* @routine_movswl_0x6d2020___rcx_2____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 2
  %15 = add i64 %14, 7151648
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 9
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movq_MINUS0xe8__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 232
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_cmpl__0x0__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_47a5cf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__0x6d09f0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x6d09f0_type* @G__0x6d09f0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x722cd0___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x722cd0_type* @G__0x722cd0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x70fe80___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x70fe80_type* @G__0x70fe80 to i64))
  ret %struct.Memory* %11
}


































































define %struct.Memory* @routine_jmpq_.L_47a72c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






















define %struct.Memory* @routine_movswl_0x6d4528___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x6d4528_type* @G_0x6d4528 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__edx__MINUS0xf4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 244
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_47a627(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movswl_0x4b9240___rax_2____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 4952640
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__MINUS0xf8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 248
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_47a639(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movswl_0x6d2040___rax_2____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 7151680
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0xf8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 248
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl_MINUS0xf4__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 244
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_movq__rdx__MINUS0x108__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 264
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0xfc__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 252
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movq_MINUS0x108__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 264
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}






























define %struct.Memory* @routine_movswl_0x6d4528___r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R10D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 ptrtoint( %G_0x6d4528_type* @G_0x6d4528 to i64))
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movl__eax__MINUS0x10c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 268
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_47a6e4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__ecx__MINUS0x110__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 272
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_47a6f6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl_MINUS0x110__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 272
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__0x723b20___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x723b20_type* @G__0x723b20 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0x10c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 268
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




















define %struct.Memory* @routine_cmpl__0x0__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 60
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_47a7db(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














































































define %struct.Memory* @routine_jmpq_.L_47a946(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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






















define %struct.Memory* @routine_movswl_0x6d452a___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x6d452a_type* @G_0x6d452a to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__edx__MINUS0x114__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 276
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_47a833(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__ecx__MINUS0x118__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 280
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_47a845(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_movswl_0x6d2060___rax_2____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 7151712
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x118__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 280
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl_MINUS0x114__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 276
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x11c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 284
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movq__rdx__MINUS0x128__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 296
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x11c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 284
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movq_MINUS0x128__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 296
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}






























define %struct.Memory* @routine_movswl_0x6d452a___r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R10D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 ptrtoint( %G_0x6d452a_type* @G_0x6d452a to i64))
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movl__eax__MINUS0x12c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 300
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_47a8f7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__ecx__MINUS0x130__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 304
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_47a909(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_movl_MINUS0x130__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 304
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl_MINUS0x12c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 300
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




















define %struct.Memory* @routine_jmpq_.L_47a94b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_479d28(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_47a95e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_479d17(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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


define %struct.Memory* @routine_jmpq_.L_47a971(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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








define %struct.Memory* @routine_jmpq_.L_479d06(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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




define %struct.Memory* @routine_addq__0x108___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 264)
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


define %struct.Memory* @routine_popq__r12(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 25
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R12 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %R12)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_popq__r13(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 27
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R13 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %R13)
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

